; ModuleID = './gsptype1.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gs_color_space_type_s = type { i32, i32, i32, %struct.gs_memory_struct_type_s*, i32 (%struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*)*, %struct.gs_color_space_s* (%struct.gs_color_space_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i16*, %struct.gs_imager_state_s*, %struct.gx_device_s*)*, i32 (i16*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)*, i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)*, void (%struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i32)*, i32 (%struct.gs_color_space_s*, %struct.stream_s*)*, i32 (%struct.gs_color_space_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, float, %struct.gsicc_link_s*)*, i32 (%struct.gs_color_space_s*)* }
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
%struct.gx_io_device_s = type opaque
%struct.gs_font_dir_s = type opaque
%struct.gs_fapi_server_s = type opaque
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
%struct.gs_param_list_s = type { %struct.gs_param_list_procs_s*, %struct.gs_memory_s*, i32 }
%struct.gs_param_list_procs_s = type { i32 (%struct.gs_param_list_s*, i8*, %struct.gs_param_typed_value_s*)*, i32 (%struct.gs_param_list_s*, i8*, %struct.gs_param_collection_s*, i32)*, i32 (%struct.gs_param_list_s*, i8*, %struct.gs_param_collection_s*)*, i32 (%struct.gs_param_list_s*, %union.gs_param_enumerator_s*, %struct.gs_param_string_s*)*, i32 (%struct.gs_param_list_s*, i8*)*, i32 (%struct.gs_param_list_s*, i8*)*, i32 (%struct.gs_param_list_s*, i8*)*, i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*)* }
%struct.gs_param_typed_value_s = type { %union.gs_param_value_s, i32 }
%union.gs_param_value_s = type { %struct.gs_param_string_s }
%struct.gs_param_string_s = type { i8*, i32, i32 }
%struct.gs_param_collection_s = type { %struct.gs_param_list_s*, i32 }
%union.gs_param_enumerator_s = type { i64 }
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
%struct.gx_clist_state_s = type opaque
%struct.cmd_list_s = type { %struct.cmd_prefix_s*, %struct.cmd_prefix_s* }
%struct.cmd_prefix_s = type { %struct.cmd_prefix_s*, i32, i64 }
%struct.clist_color_space_s = type { i8, i64, %struct.clist_icc_color_s, %struct.gs_color_space_s* }
%struct.clist_icc_color_s = type { i64, i8, i32, i32, i32 }
%struct.gs_pattern1_instance_s = type { %struct.rc_header_s, %struct.gs_pattern_type_s*, %struct.gs_state_s*, i64, %struct.gs_pattern1_template_s, %struct.gs_matrix_s, %struct.gs_rect_s, i32, i32, i32, i32, i32, %struct.gs_int_point_s, i64 }
%struct.gs_pattern1_template_s = type { %struct.gs_pattern_type_s*, i32, %struct.gs_uid_s, i8*, i32, i32, i32, %struct.gs_rect_s, float, float, i32 (%struct.gs_client_color_s*, %struct.gs_state_s*)* }
%struct.clist_writer_cropping_buffer_s = type { i32, i32, i32, i32, %struct.clist_writer_cropping_buffer_s* }
%struct.gx_device_color_info_s = type { i32, i32, i32, i16, i8, i32, i32, i32, i32, %struct.gx_device_anti_alias_info_s, i32, [64 x i8], [64 x i8], [64 x i64], i8*, i32, i64, i32 }
%struct.gx_device_anti_alias_info_s = type { i32, i32 }
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
%struct.gs_device_filter_stack_s = type { %struct.gs_device_filter_stack_s*, %struct.gs_device_filter_s*, %struct.gx_device_s*, %struct.rc_header_s }
%struct.gs_device_filter_s = type opaque
%struct.gs_state_client_procs_s = type { i8* (%struct.gs_memory_s*)*, i32 (i8*, i8*)*, void (i8*, %struct.gs_memory_s*)*, i32 (i8*, i8*, i32)* }
%struct.gs_paint_color_s = type { [64 x float] }
%struct.gs_color_space_s = type { %struct.gs_color_space_type_s*, %struct.rc_header_s, i64, %struct.gs_color_space_s*, %struct.gs_color_space_s*, %struct.client_color_space_data_s*, %struct.cmm_profile_s*, %union.anon }
%struct.client_color_space_data_s = type { void (%struct.gs_color_space_s*, i32)* }
%union.anon = type { %struct.gs_device_n_params_s }
%struct.gs_device_n_params_s = type { i64*, i32, %struct.gs_device_n_map_s*, %struct.gs_device_n_attributes_s*, i32, i32 (%struct.gs_memory_s*, i64, i8**, i32*)* }
%struct.gs_device_n_map_s = type opaque
%struct.gs_device_n_attributes_s = type opaque
%struct.stream_s = type opaque
%struct.gc_struct_data_s = type { i16, i16, %struct.gs_memory_struct_type_s*, %struct.gc_ptr_element_s* }
%struct.gc_ptr_element_s = type { i16, i16 }
%struct.gs_pattern_params_s = type { i32 }
%struct._pat = type { %struct.gx_color_tile_s* }
%struct.gx_device_clist_common_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, %struct.gx_device_s*, %struct.gx_device_buf_procs_s, %struct.gs_memory_s*, i8*, i32, %struct.gx_band_params_s, i32, i32, %struct.gx_bits_cache_chunk_s, %struct.gx_bits_cache_s, i32, i32, %struct.tile_hash*, i32, i32, %struct.gx_band_page_info_s, i32, i64, %struct.clist_icctable_s*, %struct.gsicc_link_cache_s*, i32, %struct.gsicc_link_cache_s** }
%struct.pixmap_info_s = type { %struct.gs_depth_bitmap_s, %struct.gs_color_space_s*, i32, void (%struct.gs_memory_s*, i8*, i8*)* }
%struct.gs_depth_bitmap_s = type { i8*, i32, %struct.gs_int_point_s, i64, i8, i8 }
%struct.gs_image_enum_s = type opaque
%union.anon.2 = type { %struct.gs_image4_s }
%struct.gs_image4_s = type { %struct.gx_image_type_s*, %struct.gs_matrix_s, i32, i32, i32, [130 x float], i32, i32, i32, %struct.gs_color_space_s*, i32, [130 x i32], i32 }
%struct.gs_data_image_s = type { %struct.gx_image_type_s*, %struct.gs_matrix_s, i32, i32, i32, [130 x float], i32 }
%struct._pattern = type { i64, %struct.gs_int_point_s }
%struct.gx_dc_serialized_tile_s = type { i64, i32, i32, %struct.gs_int_point_s, %struct.gs_matrix_s, %struct.gs_rect_s, i32 }
%struct.tile_trans_clist_info_s = type { %struct.gs_int_rect_s, i32, i32, i32, i32, i32, i32 }
%struct.gx_device_forward_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, %struct.gx_device_s* }
%struct._bin = type { %struct.gx_device_halftone_s*, [2 x i64], i32, i32, %struct.gx_ht_tile_s* }
%struct.gx_ht_tile_s = type { %struct.gx_strip_bitmap_s, i32, i32 }
%struct.gs_overprint_params_s = type { i32, i32, i32, i64, i16, i32 }
%struct.gc_procs_common_s = type { i8* (i8*, %struct.gc_state_s*)*, void (%struct.gs_string_s*, %struct.gc_state_s*)*, void (%struct.gs_const_string_s*, %struct.gc_state_s*)*, void (%struct.gs_param_string_s*, %struct.gc_state_s*)* }
%struct.gs_string_s = type { i8*, i32 }
%struct.gs_const_string_s = type { i8*, i32 }

@gs_color_space_type_Pattern = external constant %struct.gs_color_space_type_s, align 8
@gs_pattern1_type = internal constant %struct.gs_pattern_type_s { i32 1, %struct.pp_ { i32 (%struct.gs_pattern_template_s*)* @gs_pattern1_uses_base_space, i32 (%struct.gs_client_color_s*, %struct.gs_pattern_template_s*, %struct.gs_matrix_s*, %struct.gs_state_s*, %struct.gs_memory_s*)* @gs_pattern1_make_pattern, %struct.gs_pattern_template_s* (%struct.gs_pattern_instance_s*)* @gs_pattern1_get_pattern, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)* @gs_pattern1_remap_color, i32 (%struct.gs_client_color_s*, %struct.gs_state_s*)* @gs_pattern1_set_color } }, align 8
@.str = private unnamed_addr constant [14 x i8] c"client bitmap\00", align 1
@bitmap_reloc_ptrs = internal constant %struct.gc_struct_data_s { i16 1, i16 0, %struct.gs_memory_struct_type_s* null, %struct.gc_ptr_element_s* getelementptr inbounds ([1 x %struct.gc_ptr_element_s], [1 x %struct.gc_ptr_element_s]* @bitmap_enum_ptrs, i32 0, i32 0) }, align 8
@st_gs_bitmap = constant %struct.gs_memory_struct_type_s { i32 32, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* bitcast (%struct.gc_struct_data_s* @bitmap_reloc_ptrs to i8*) }, align 8
@.str.1 = private unnamed_addr constant [19 x i8] c"client tile bitmap\00", align 1
@st_gs_tile_bitmap = constant %struct.gs_memory_struct_type_s { i32 40, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* bitcast (%struct.gc_struct_data_s* @bitmap_reloc_ptrs to i8*) }, align 8
@.str.2 = private unnamed_addr constant [20 x i8] c"client depth bitmap\00", align 1
@st_gs_depth_bitmap = constant %struct.gs_memory_struct_type_s { i32 40, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* bitcast (%struct.gc_struct_data_s* @bitmap_reloc_ptrs to i8*) }, align 8
@.str.3 = private unnamed_addr constant [25 x i8] c"client tile_depth bitmap\00", align 1
@st_gs_tile_depth_bitmap = constant %struct.gs_memory_struct_type_s { i32 40, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* bitcast (%struct.gc_struct_data_s* @bitmap_reloc_ptrs to i8*) }, align 8
@.str.4 = private unnamed_addr constant [16 x i8] c"gx_strip_bitmap\00", align 1
@st_gx_strip_bitmap = constant %struct.gs_memory_struct_type_s { i32 48, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* bitcast (%struct.gc_struct_data_s* @bitmap_reloc_ptrs to i8*) }, align 8
@st_pixmap_info = internal constant %struct.gs_memory_struct_type_s { i32 64, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* bitcast (%struct.gc_struct_data_s* @pixmap_reloc_ptr to i8*) }, align 8
@.str.5 = private unnamed_addr constant [18 x i8] c"makepximappattern\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"makebitmappattern_xform\00", align 1
@st_dc_pattern = internal constant %struct.gs_memory_struct_type_s { i32 656, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @dc_pattern_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @dc_pattern_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* null }, align 8
@gx_dc_pattern = constant %struct.gx_device_color_type_s { %struct.gs_memory_struct_type_s* @st_dc_pattern, void (%struct.gx_device_color_s*, %struct.gx_device_color_saved_s*)* @gx_dc_pattern_save_dc, %struct.gx_device_halftone_s* (%struct.gx_device_color_s*)* @gx_dc_pattern_get_dev_halftone, i32 (%struct.gx_device_color_s*, %struct.gs_int_point_s*)* @gx_dc_ht_get_phase, i32 (%struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)* @gx_dc_pattern_load, i32 (%struct.gx_device_color_s*, i32, i32, i32, i32, %struct.gx_device_s*, i32, %struct.gx_rop_source_s*)* @gx_dc_pattern_fill_rectangle, i32 (%struct.gx_device_color_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_s*, i32, i32)* @gx_dc_default_fill_masked, i32 (%struct.gx_device_color_s*, %struct.gx_device_color_s*)* @gx_dc_pattern_equal, i32 (%struct.gx_device_color_s*, %struct.gx_device_color_saved_s*, %struct.gx_device_s*, i64, i8*, i32*)* @gx_dc_pattern_write, i32 (%struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_device_s*, i64, i8*, i32, %struct.gs_memory_s*)* @gx_dc_pattern_read, i32 (%struct.gx_device_color_s*, %struct.gx_device_s*, i64*)* @gx_dc_pattern_get_nonzero_comps }, align 8
@gx_dc_pattern_trans = constant %struct.gx_device_color_type_s { %struct.gs_memory_struct_type_s* @st_dc_pattern, void (%struct.gx_device_color_s*, %struct.gx_device_color_saved_s*)* @gx_dc_pattern_save_dc, %struct.gx_device_halftone_s* (%struct.gx_device_color_s*)* @gx_dc_pattern_get_dev_halftone, i32 (%struct.gx_device_color_s*, %struct.gs_int_point_s*)* @gx_dc_ht_get_phase, i32 (%struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)* @gx_dc_pattern_load, i32 (%struct.gx_device_color_s*, i32, i32, i32, i32, %struct.gx_device_s*, i32, %struct.gx_rop_source_s*)* @gx_dc_pat_trans_fill_rectangle, i32 (%struct.gx_device_color_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_s*, i32, i32)* @gx_dc_default_fill_masked, i32 (%struct.gx_device_color_s*, %struct.gx_device_color_s*)* @gx_dc_pattern_equal, i32 (%struct.gx_device_color_s*, %struct.gx_device_color_saved_s*, %struct.gx_device_s*, i64, i8*, i32*)* @gx_dc_pattern_write, i32 (%struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_device_s*, i64, i8*, i32, %struct.gs_memory_s*)* @gx_dc_pattern_read, i32 (%struct.gx_device_color_s*, %struct.gx_device_s*, i64*)* @gx_dc_pattern_get_nonzero_comps }, align 8
@st_dc_pure_masked = internal constant %struct.gs_memory_struct_type_s { i32 656, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @dc_masked_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @dc_masked_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* null }, align 8
@gx_dc_pure_masked = constant %struct.gx_device_color_type_s { %struct.gs_memory_struct_type_s* @st_dc_pure_masked, void (%struct.gx_device_color_s*, %struct.gx_device_color_saved_s*)* @gx_dc_pattern_save_dc, %struct.gx_device_halftone_s* (%struct.gx_device_color_s*)* @gx_dc_pure_masked_get_dev_halftone, i32 (%struct.gx_device_color_s*, %struct.gs_int_point_s*)* @gx_dc_no_get_phase, i32 (%struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)* @gx_dc_pure_masked_load, i32 (%struct.gx_device_color_s*, i32, i32, i32, i32, %struct.gx_device_s*, i32, %struct.gx_rop_source_s*)* @gx_dc_pure_masked_fill_rect, i32 (%struct.gx_device_color_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_s*, i32, i32)* @gx_dc_default_fill_masked, i32 (%struct.gx_device_color_s*, %struct.gx_device_color_s*)* @gx_dc_pure_masked_equal, i32 (%struct.gx_device_color_s*, %struct.gx_device_color_saved_s*, %struct.gx_device_s*, i64, i8*, i32*)* @gx_dc_cannot_write, i32 (%struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_device_s*, i64, i8*, i32, %struct.gs_memory_s*)* @gx_dc_cannot_read, i32 (%struct.gx_device_color_s*, %struct.gx_device_s*, i64*)* @gx_dc_pure_get_nonzero_comps }, align 8
@st_dc_binary_masked = internal constant %struct.gs_memory_struct_type_s { i32 656, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.16, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @dc_binary_masked_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @dc_binary_masked_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* null }, align 8
@gx_dc_binary_masked = constant %struct.gx_device_color_type_s { %struct.gs_memory_struct_type_s* @st_dc_binary_masked, void (%struct.gx_device_color_s*, %struct.gx_device_color_saved_s*)* @gx_dc_pattern_save_dc, %struct.gx_device_halftone_s* (%struct.gx_device_color_s*)* @gx_dc_binary_masked_get_dev_halftone, i32 (%struct.gx_device_color_s*, %struct.gs_int_point_s*)* @gx_dc_ht_get_phase, i32 (%struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)* @gx_dc_binary_masked_load, i32 (%struct.gx_device_color_s*, i32, i32, i32, i32, %struct.gx_device_s*, i32, %struct.gx_rop_source_s*)* @gx_dc_binary_masked_fill_rect, i32 (%struct.gx_device_color_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_s*, i32, i32)* @gx_dc_default_fill_masked, i32 (%struct.gx_device_color_s*, %struct.gx_device_color_s*)* @gx_dc_binary_masked_equal, i32 (%struct.gx_device_color_s*, %struct.gx_device_color_saved_s*, %struct.gx_device_s*, i64, i8*, i32*)* @gx_dc_cannot_write, i32 (%struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_device_s*, i64, i8*, i32, %struct.gs_memory_s*)* @gx_dc_cannot_read, i32 (%struct.gx_device_color_s*, %struct.gx_device_s*, i64*)* @gx_dc_ht_binary_get_nonzero_comps }, align 8
@st_dc_colored_masked = internal constant %struct.gs_memory_struct_type_s { i32 656, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.17, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @dc_colored_masked_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @dc_colored_masked_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* null }, align 8
@gx_dc_colored_masked = constant %struct.gx_device_color_type_s { %struct.gs_memory_struct_type_s* @st_dc_colored_masked, void (%struct.gx_device_color_s*, %struct.gx_device_color_saved_s*)* @gx_dc_pattern_save_dc, %struct.gx_device_halftone_s* (%struct.gx_device_color_s*)* @gx_dc_colored_masked_get_dev_halftone, i32 (%struct.gx_device_color_s*, %struct.gs_int_point_s*)* @gx_dc_ht_get_phase, i32 (%struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)* @gx_dc_colored_masked_load, i32 (%struct.gx_device_color_s*, i32, i32, i32, i32, %struct.gx_device_s*, i32, %struct.gx_rop_source_s*)* @gx_dc_colored_masked_fill_rect, i32 (%struct.gx_device_color_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_s*, i32, i32)* @gx_dc_default_fill_masked, i32 (%struct.gx_device_color_s*, %struct.gx_device_color_s*)* @gx_dc_colored_masked_equal, i32 (%struct.gx_device_color_s*, %struct.gx_device_color_saved_s*, %struct.gx_device_s*, i64, i8*, i32*)* @gx_dc_cannot_write, i32 (%struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_device_s*, i64, i8*, i32, %struct.gs_memory_s*)* @gx_dc_cannot_read, i32 (%struct.gx_device_color_s*, %struct.gx_device_s*, i64*)* @gx_dc_ht_colored_get_nonzero_comps }, align 8
@st_dc_devn_masked = internal constant %struct.gs_memory_struct_type_s { i32 656, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @dc_devn_masked_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @dc_devn_masked_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* null }, align 8
@gx_dc_devn_masked = constant %struct.gx_device_color_type_s { %struct.gs_memory_struct_type_s* @st_dc_devn_masked, void (%struct.gx_device_color_s*, %struct.gx_device_color_saved_s*)* @gx_dc_pattern_save_dc, %struct.gx_device_halftone_s* (%struct.gx_device_color_s*)* @gx_dc_pure_masked_get_dev_halftone, i32 (%struct.gx_device_color_s*, %struct.gs_int_point_s*)* @gx_dc_no_get_phase, i32 (%struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)* @gx_dc_devn_masked_load, i32 (%struct.gx_device_color_s*, i32, i32, i32, i32, %struct.gx_device_s*, i32, %struct.gx_rop_source_s*)* @gx_dc_devn_masked_fill_rect, i32 (%struct.gx_device_color_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_s*, i32, i32)* @gx_dc_devn_fill_masked, i32 (%struct.gx_device_color_s*, %struct.gx_device_color_s*)* @gx_dc_devn_masked_equal, i32 (%struct.gx_device_color_s*, %struct.gx_device_color_saved_s*, %struct.gx_device_s*, i64, i8*, i32*)* @gx_dc_cannot_write, i32 (%struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_device_s*, i64, i8*, i32, %struct.gs_memory_s*)* @gx_dc_cannot_read, i32 (%struct.gx_device_color_s*, %struct.gx_device_s*, i64*)* @gx_dc_devn_get_nonzero_comps }, align 8
@gx_dc_type_pattern = constant %struct.gx_device_color_type_s* @gx_dc_pattern, align 8
@.str.7 = private unnamed_addr constant [19 x i8] c"gx_dc_pattern_read\00", align 1
@st_pattern1_instance = internal constant %struct.gs_memory_struct_type_s { i32 248, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @pattern1_instance_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @pattern1_instance_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* null }, align 8
@.str.8 = private unnamed_addr constant [15 x i8] c"gs_makepattern\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"gs_pattern1_instance_t\00", align 1
@st_pattern1_template = internal constant %struct.gs_memory_struct_type_s { i32 104, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* bitcast (%struct.gc_struct_data_s* @pattern1_template_reloc_ptrs to i8*) }, align 8
@ptr_struct_procs = external constant %struct.gs_ptr_procs_s, align 8
@st_pattern_instance = external constant %struct.gs_memory_struct_type_s, align 8
@.str.10 = private unnamed_addr constant [23 x i8] c"gs_pattern1_template_t\00", align 1
@pattern1_template_reloc_ptrs = internal constant %struct.gc_struct_data_s { i16 0, i16 0, %struct.gs_memory_struct_type_s* @st_pattern_template, %struct.gc_ptr_element_s* null }, align 8
@st_pattern_template = external constant %struct.gs_memory_struct_type_s, align 8
@bitmap_enum_ptrs = internal constant [1 x %struct.gc_ptr_element_s] zeroinitializer, align 2
@.str.11 = private unnamed_addr constant [16 x i8] c"image_PaintProc\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"mask_PaintProc\00", align 1
@.str.13 = private unnamed_addr constant [20 x i8] c"pixmap info. struct\00", align 1
@pixmap_reloc_ptr = internal constant %struct.gc_struct_data_s { i16 1, i16 0, %struct.gs_memory_struct_type_s* @st_gs_depth_bitmap, %struct.gc_ptr_element_s* getelementptr inbounds ([1 x %struct.gc_ptr_element_s], [1 x %struct.gc_ptr_element_s]* @pixmap_enum_ptr, i32 0, i32 0) }, align 8
@pixmap_enum_ptr = internal constant [1 x %struct.gc_ptr_element_s] [%struct.gc_ptr_element_s { i16 0, i16 40 }], align 2
@.str.14 = private unnamed_addr constant [11 x i8] c"dc_pattern\00", align 1
@.str.15 = private unnamed_addr constant [15 x i8] c"dc_pure_masked\00", align 1
@st_client_color = external constant %struct.gs_memory_struct_type_s, align 8
@.str.16 = private unnamed_addr constant [17 x i8] c"dc_binary_masked\00", align 1
@st_dc_ht_binary = external constant %struct.gs_memory_struct_type_s, align 8
@.str.17 = private unnamed_addr constant [18 x i8] c"dc_colored_masked\00", align 1
@.str.18 = private unnamed_addr constant [15 x i8] c"dc_devn_masked\00", align 1
@gx_dc_type_data_pure = external constant %struct.gx_device_color_type_s, align 8
@gx_dc_type_data_devn = external constant %struct.gx_device_color_type_s, align 8
@gx_dc_type_data_ht_binary = external constant %struct.gx_device_color_type_s, align 8
@gx_dc_type_data_ht_colored = external constant %struct.gx_device_color_type_s, align 8
@.str.19 = private unnamed_addr constant [26 x i8] c"gx_dc_pattern_read_raster\00", align 1

; Function Attrs: nounwind uwtable
define i32 @gs_cspace_build_Pattern1(%struct.gs_color_space_s** %ppcspace, %struct.gs_color_space_s* %pbase_cspace, %struct.gs_memory_s* %pmem) #0 {
entry:
  %retval = alloca i32, align 4
  %ppcspace.addr = alloca %struct.gs_color_space_s**, align 8
  %pbase_cspace.addr = alloca %struct.gs_color_space_s*, align 8
  %pmem.addr = alloca %struct.gs_memory_s*, align 8
  %pcspace = alloca %struct.gs_color_space_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_color_space_s** %ppcspace, %struct.gs_color_space_s*** %ppcspace.addr, align 8, !tbaa !1
  store %struct.gs_color_space_s* %pbase_cspace, %struct.gs_color_space_s** %pbase_cspace.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %pmem, %struct.gs_memory_s** %pmem.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_color_space_s** %pcspace to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  store %struct.gs_color_space_s* null, %struct.gs_color_space_s** %pcspace, align 8, !tbaa !1
  %1 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pbase_cspace.addr, align 8, !tbaa !1
  %cmp = icmp ne %struct.gs_color_space_s* %1, null
  br i1 %cmp, label %if.then, label %if.end.3

if.then:                                          ; preds = %entry
  %2 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pbase_cspace.addr, align 8, !tbaa !1
  %call = call i32 @gs_color_space_num_components(%struct.gs_color_space_s* %2) #5
  %cmp1 = icmp slt i32 %call, 0
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  br label %if.end.3

if.end.3:                                         ; preds = %if.end, %entry
  %3 = load %struct.gs_memory_s*, %struct.gs_memory_s** %pmem.addr, align 8, !tbaa !1
  %call4 = call %struct.gs_color_space_s* @gs_cspace_alloc(%struct.gs_memory_s* %3, %struct.gs_color_space_type_s* @gs_color_space_type_Pattern) #5
  store %struct.gs_color_space_s* %call4, %struct.gs_color_space_s** %pcspace, align 8, !tbaa !1
  %4 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcspace, align 8, !tbaa !1
  %cmp5 = icmp eq %struct.gs_color_space_s* %4, null
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end.3
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.7:                                         ; preds = %if.end.3
  %5 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pbase_cspace.addr, align 8, !tbaa !1
  %cmp8 = icmp ne %struct.gs_color_space_s* %5, null
  br i1 %cmp8, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %if.end.7
  %6 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcspace, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %6, i32 0, i32 7
  %pattern = bitcast %union.anon* %params to %struct.gs_pattern_params_s*
  %has_base_space = getelementptr inbounds %struct.gs_pattern_params_s, %struct.gs_pattern_params_s* %pattern, i32 0, i32 0
  store i32 1, i32* %has_base_space, align 4, !tbaa !5
  %7 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pbase_cspace.addr, align 8, !tbaa !1
  %8 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcspace, align 8, !tbaa !1
  %base_space = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %8, i32 0, i32 3
  store %struct.gs_color_space_s* %7, %struct.gs_color_space_s** %base_space, align 8, !tbaa !8
  br label %if.end.13

if.else:                                          ; preds = %if.end.7
  %9 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcspace, align 8, !tbaa !1
  %params10 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %9, i32 0, i32 7
  %pattern11 = bitcast %union.anon* %params10 to %struct.gs_pattern_params_s*
  %has_base_space12 = getelementptr inbounds %struct.gs_pattern_params_s, %struct.gs_pattern_params_s* %pattern11, i32 0, i32 0
  store i32 0, i32* %has_base_space12, align 4, !tbaa !5
  br label %if.end.13

if.end.13:                                        ; preds = %if.else, %if.then.9
  %10 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcspace, align 8, !tbaa !1
  %11 = load %struct.gs_color_space_s**, %struct.gs_color_space_s*** %ppcspace.addr, align 8, !tbaa !1
  store %struct.gs_color_space_s* %10, %struct.gs_color_space_s** %11, align 8, !tbaa !1
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.13, %if.then.6, %if.then.2
  %12 = bitcast %struct.gs_color_space_s** %pcspace to i8*
  call void @llvm.lifetime.end(i64 8, i8* %12) #1
  %13 = load i32, i32* %retval
  ret i32 %13
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

declare i32 @gs_color_space_num_components(%struct.gs_color_space_s*) #2

declare %struct.gs_color_space_s* @gs_cspace_alloc(%struct.gs_memory_s*, %struct.gs_color_space_type_s*) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define void @gs_pattern1_init(%struct.gs_pattern1_template_s* %ppat) #0 {
entry:
  %ppat.addr = alloca %struct.gs_pattern1_template_s*, align 8
  store %struct.gs_pattern1_template_s* %ppat, %struct.gs_pattern1_template_s** %ppat.addr, align 8, !tbaa !1
  %0 = load %struct.gs_pattern1_template_s*, %struct.gs_pattern1_template_s** %ppat.addr, align 8, !tbaa !1
  %1 = bitcast %struct.gs_pattern1_template_s* %0 to %struct.gs_pattern_template_s*
  call void @gs_pattern_common_init(%struct.gs_pattern_template_s* %1, %struct.gs_pattern_type_s* @gs_pattern1_type) #5
  %2 = load %struct.gs_pattern1_template_s*, %struct.gs_pattern1_template_s** %ppat.addr, align 8, !tbaa !1
  %uses_transparency = getelementptr inbounds %struct.gs_pattern1_template_s, %struct.gs_pattern1_template_s* %2, i32 0, i32 6
  store i32 0, i32* %uses_transparency, align 4, !tbaa !12
  ret void
}

declare void @gs_pattern_common_init(%struct.gs_pattern_template_s*, %struct.gs_pattern_type_s*) #2

; Function Attrs: nounwind uwtable
define i32 @gs_makepattern(%struct.gs_client_color_s* %pcc, %struct.gs_pattern1_template_s* %pcp, %struct.gs_matrix_s* %pmat, %struct.gs_state_s* %pgs, %struct.gs_memory_s* %mem) #0 {
entry:
  %pcc.addr = alloca %struct.gs_client_color_s*, align 8
  %pcp.addr = alloca %struct.gs_pattern1_template_s*, align 8
  %pmat.addr = alloca %struct.gs_matrix_s*, align 8
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  store %struct.gs_client_color_s* %pcc, %struct.gs_client_color_s** %pcc.addr, align 8, !tbaa !1
  store %struct.gs_pattern1_template_s* %pcp, %struct.gs_pattern1_template_s** %pcp.addr, align 8, !tbaa !1
  store %struct.gs_matrix_s* %pmat, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pcc.addr, align 8, !tbaa !1
  %1 = load %struct.gs_pattern1_template_s*, %struct.gs_pattern1_template_s** %pcp.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_pattern1_template_s* %1 to %struct.gs_pattern_template_s*
  %3 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %4 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %5 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call = call i32 @gs_pattern1_make_pattern(%struct.gs_client_color_s* %0, %struct.gs_pattern_template_s* %2, %struct.gs_matrix_s* %3, %struct.gs_state_s* %4, %struct.gs_memory_s* %5) #5
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @gs_pattern1_make_pattern(%struct.gs_client_color_s* %pcc, %struct.gs_pattern_template_s* %ptemp, %struct.gs_matrix_s* %pmat, %struct.gs_state_s* %pgs, %struct.gs_memory_s* %mem) #0 {
entry:
  %retval = alloca i32, align 4
  %pcc.addr = alloca %struct.gs_client_color_s*, align 8
  %ptemp.addr = alloca %struct.gs_pattern_template_s*, align 8
  %pmat.addr = alloca %struct.gs_matrix_s*, align 8
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %pcp = alloca %struct.gs_pattern1_template_s*, align 8
  %inst = alloca %struct.gs_pattern1_instance_s, align 8
  %pinst = alloca %struct.gs_pattern1_instance_s*, align 8
  %saved = alloca %struct.gs_state_s*, align 8
  %bbox = alloca %struct.gs_rect_s, align 8
  %cbox = alloca %struct.gs_fixed_rect_s, align 4
  %pdev = alloca %struct.gx_device_s*, align 8
  %dev_width = alloca i32, align 4
  %dev_height = alloca i32, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %width16 = alloca float, align 4
  %height21 = alloca float, align 4
  %bbw = alloca float, align 4
  %bbh = alloca float, align 4
  %shiftx = alloca float, align 4
  %shifty = alloca float, align 4
  store %struct.gs_client_color_s* %pcc, %struct.gs_client_color_s** %pcc.addr, align 8, !tbaa !1
  store %struct.gs_pattern_template_s* %ptemp, %struct.gs_pattern_template_s** %ptemp.addr, align 8, !tbaa !1
  store %struct.gs_matrix_s* %pmat, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_pattern1_template_s** %pcp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_pattern_template_s*, %struct.gs_pattern_template_s** %ptemp.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_pattern_template_s* %1 to %struct.gs_pattern1_template_s*
  store %struct.gs_pattern1_template_s* %2, %struct.gs_pattern1_template_s** %pcp, align 8, !tbaa !1
  %3 = bitcast %struct.gs_pattern1_instance_s* %inst to i8*
  call void @llvm.lifetime.start(i64 248, i8* %3) #1
  %4 = bitcast %struct.gs_pattern1_instance_s** %pinst to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = bitcast %struct.gs_state_s** %saved to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = bitcast %struct.gs_rect_s* %bbox to i8*
  call void @llvm.lifetime.start(i64 32, i8* %6) #1
  %7 = bitcast %struct.gs_fixed_rect_s* %cbox to i8*
  call void @llvm.lifetime.start(i64 16, i8* %7) #1
  %8 = bitcast %struct.gx_device_s** %pdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  %9 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %device = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %9, i32 0, i32 78
  %10 = load %struct.gx_device_s*, %struct.gx_device_s** %device, align 8, !tbaa !19
  store %struct.gx_device_s* %10, %struct.gx_device_s** %pdev, align 8, !tbaa !1
  %11 = bitcast i32* %dev_width to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  %12 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %12, i32 0, i32 13
  %13 = load i32, i32* %width, align 4, !tbaa !32
  store i32 %13, i32* %dev_width, align 4, !tbaa !42
  %14 = bitcast i32* %dev_height to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  %15 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %15, i32 0, i32 14
  %16 = load i32, i32* %height, align 4, !tbaa !43
  store i32 %16, i32* %dev_height, align 4, !tbaa !42
  %17 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #1
  %18 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pcc.addr, align 8, !tbaa !1
  %19 = load %struct.gs_pattern1_template_s*, %struct.gs_pattern1_template_s** %pcp, align 8, !tbaa !1
  %20 = bitcast %struct.gs_pattern1_template_s* %19 to %struct.gs_pattern_template_s*
  %21 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %22 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %23 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call = call i32 @gs_make_pattern_common(%struct.gs_client_color_s* %18, %struct.gs_pattern_template_s* %20, %struct.gs_matrix_s* %21, %struct.gs_state_s* %22, %struct.gs_memory_s* %23, %struct.gs_memory_struct_type_s* @st_pattern1_instance) #5
  store i32 %call, i32* %code, align 4, !tbaa !42
  %24 = load i32, i32* %code, align 4, !tbaa !42
  %cmp = icmp slt i32 %24, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %25 = load i32, i32* %code, align 4, !tbaa !42
  store i32 %25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.475

if.end:                                           ; preds = %entry
  %26 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %cmp1 = icmp eq %struct.gs_memory_s* %26, null
  br i1 %cmp1, label %if.then.2, label %if.end.4

if.then.2:                                        ; preds = %if.end
  %27 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %call3 = call %struct.gs_memory_s* @gs_state_memory(%struct.gs_state_s* %27) #5
  store %struct.gs_memory_s* %call3, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.2, %if.end
  %28 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pcc.addr, align 8, !tbaa !1
  %pattern = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %28, i32 0, i32 0
  %29 = load %struct.gs_pattern_instance_s*, %struct.gs_pattern_instance_s** %pattern, align 8, !tbaa !44
  %30 = bitcast %struct.gs_pattern_instance_s* %29 to %struct.gs_pattern1_instance_s*
  store %struct.gs_pattern1_instance_s* %30, %struct.gs_pattern1_instance_s** %pinst, align 8, !tbaa !1
  %31 = bitcast %struct.gs_pattern1_instance_s* %inst to %struct.gs_pattern_instance_s*
  %32 = load %struct.gs_pattern1_instance_s*, %struct.gs_pattern1_instance_s** %pinst, align 8, !tbaa !1
  %33 = bitcast %struct.gs_pattern1_instance_s* %32 to %struct.gs_pattern_instance_s*
  %34 = bitcast %struct.gs_pattern_instance_s* %31 to i8*
  %35 = bitcast %struct.gs_pattern_instance_s* %33 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* %35, i64 48, i32 8, i1 false), !tbaa.struct !47
  %saved5 = getelementptr inbounds %struct.gs_pattern1_instance_s, %struct.gs_pattern1_instance_s* %inst, i32 0, i32 2
  %36 = load %struct.gs_state_s*, %struct.gs_state_s** %saved5, align 8, !tbaa !49
  store %struct.gs_state_s* %36, %struct.gs_state_s** %saved, align 8, !tbaa !1
  %37 = load %struct.gs_pattern1_template_s*, %struct.gs_pattern1_template_s** %pcp, align 8, !tbaa !1
  %PaintType = getelementptr inbounds %struct.gs_pattern1_template_s, %struct.gs_pattern1_template_s* %37, i32 0, i32 4
  %38 = load i32, i32* %PaintType, align 4, !tbaa !52
  switch i32 %38, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.7
  ]

sw.bb:                                            ; preds = %if.end.4
  %39 = load %struct.gs_state_s*, %struct.gs_state_s** %saved, align 8, !tbaa !1
  %call6 = call i32 @gs_set_logical_op(%struct.gs_state_s* %39, i32 252) #5
  br label %sw.epilog

sw.bb.7:                                          ; preds = %if.end.4
  %40 = load %struct.gs_state_s*, %struct.gs_state_s** %saved, align 8, !tbaa !1
  %call8 = call i32 @gx_set_device_color_1(%struct.gs_state_s* %40) #5
  store i32 %call8, i32* %code, align 4, !tbaa !42
  %41 = load i32, i32* %code, align 4, !tbaa !42
  %cmp9 = icmp slt i32 %41, 0
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %sw.bb.7
  br label %fsaved

if.end.11:                                        ; preds = %sw.bb.7
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.4
  store i32 -15, i32* %code, align 4, !tbaa !42
  br label %fsaved

sw.epilog:                                        ; preds = %if.end.11, %sw.bb
  %templat = getelementptr inbounds %struct.gs_pattern1_instance_s, %struct.gs_pattern1_instance_s* %inst, i32 0, i32 4
  %42 = load %struct.gs_pattern1_template_s*, %struct.gs_pattern1_template_s** %pcp, align 8, !tbaa !1
  %43 = bitcast %struct.gs_pattern1_template_s* %templat to i8*
  %44 = bitcast %struct.gs_pattern1_template_s* %42 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %43, i8* %44, i64 104, i32 8, i1 false), !tbaa.struct !53
  %45 = load %struct.gs_state_s*, %struct.gs_state_s** %saved, align 8, !tbaa !1
  %46 = load i32, i32* %dev_width, align 4, !tbaa !42
  %47 = load i32, i32* %dev_height, align 4, !tbaa !42
  %call12 = call i32 @compute_inst_matrix(%struct.gs_pattern1_instance_s* %inst, %struct.gs_state_s* %45, %struct.gs_rect_s* %bbox, i32 %46, i32 %47) #5
  store i32 %call12, i32* %code, align 4, !tbaa !42
  %48 = load i32, i32* %code, align 4, !tbaa !42
  %cmp13 = icmp slt i32 %48, 0
  br i1 %cmp13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %sw.epilog
  br label %fsaved

if.end.15:                                        ; preds = %sw.epilog
  %49 = bitcast float* %width16 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %49) #1
  %templat17 = getelementptr inbounds %struct.gs_pattern1_instance_s, %struct.gs_pattern1_instance_s* %inst, i32 0, i32 4
  %BBox = getelementptr inbounds %struct.gs_pattern1_template_s, %struct.gs_pattern1_template_s* %templat17, i32 0, i32 7
  %q = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %BBox, i32 0, i32 1
  %x = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q, i32 0, i32 0
  %50 = load double, double* %x, align 8, !tbaa !56
  %templat18 = getelementptr inbounds %struct.gs_pattern1_instance_s, %struct.gs_pattern1_instance_s* %inst, i32 0, i32 4
  %BBox19 = getelementptr inbounds %struct.gs_pattern1_template_s, %struct.gs_pattern1_template_s* %templat18, i32 0, i32 7
  %p = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %BBox19, i32 0, i32 0
  %x20 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p, i32 0, i32 0
  %51 = load double, double* %x20, align 8, !tbaa !57
  %sub = fsub double %50, %51
  %conv = fptrunc double %sub to float
  store float %conv, float* %width16, align 4, !tbaa !55
  %52 = bitcast float* %height21 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %52) #1
  %templat22 = getelementptr inbounds %struct.gs_pattern1_instance_s, %struct.gs_pattern1_instance_s* %inst, i32 0, i32 4
  %BBox23 = getelementptr inbounds %struct.gs_pattern1_template_s, %struct.gs_pattern1_template_s* %templat22, i32 0, i32 7
  %q24 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %BBox23, i32 0, i32 1
  %y = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q24, i32 0, i32 1
  %53 = load double, double* %y, align 8, !tbaa !58
  %templat25 = getelementptr inbounds %struct.gs_pattern1_instance_s, %struct.gs_pattern1_instance_s* %inst, i32 0, i32 4
  %BBox26 = getelementptr inbounds %struct.gs_pattern1_template_s, %struct.gs_pattern1_template_s* %templat25, i32 0, i32 7
  %p27 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %BBox26, i32 0, i32 0
  %y28 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p27, i32 0, i32 1
  %54 = load double, double* %y28, align 8, !tbaa !59
  %sub29 = fsub double %53, %54
  %conv30 = fptrunc double %sub29 to float
  store float %conv30, float* %height21, align 4, !tbaa !55
  %templat31 = getelementptr inbounds %struct.gs_pattern1_instance_s, %struct.gs_pattern1_instance_s* %inst, i32 0, i32 4
  %XStep = getelementptr inbounds %struct.gs_pattern1_template_s, %struct.gs_pattern1_template_s* %templat31, i32 0, i32 8
  %55 = load float, float* %XStep, align 4, !tbaa !60
  %56 = load float, float* %width16, align 4, !tbaa !55
  %cmp32 = fcmp olt float %55, %56
  br i1 %cmp32, label %if.then.44, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.15
  %templat34 = getelementptr inbounds %struct.gs_pattern1_instance_s, %struct.gs_pattern1_instance_s* %inst, i32 0, i32 4
  %YStep = getelementptr inbounds %struct.gs_pattern1_template_s, %struct.gs_pattern1_template_s* %templat34, i32 0, i32 9
  %57 = load float, float* %YStep, align 4, !tbaa !61
  %58 = load float, float* %height21, align 4, !tbaa !55
  %cmp35 = fcmp olt float %57, %58
  br i1 %cmp35, label %if.then.44, label %lor.lhs.false.37

lor.lhs.false.37:                                 ; preds = %lor.lhs.false
  %59 = load %struct.gs_state_s*, %struct.gs_state_s** %saved, align 8, !tbaa !1
  %ctm = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %59, i32 0, i32 5
  %60 = bitcast %struct.gs_matrix_fixed_s* %ctm to %struct.gs_matrix_s*
  %xy = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %60, i32 0, i32 1
  %61 = load float, float* %xy, align 4, !tbaa !62
  %cmp38 = fcmp une float %61, 0.000000e+00
  br i1 %cmp38, label %if.then.44, label %lor.lhs.false.40

lor.lhs.false.40:                                 ; preds = %lor.lhs.false.37
  %62 = load %struct.gs_state_s*, %struct.gs_state_s** %saved, align 8, !tbaa !1
  %ctm41 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %62, i32 0, i32 5
  %63 = bitcast %struct.gs_matrix_fixed_s* %ctm41 to %struct.gs_matrix_s*
  %yx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %63, i32 0, i32 2
  %64 = load float, float* %yx, align 4, !tbaa !63
  %cmp42 = fcmp une float %64, 0.000000e+00
  br i1 %cmp42, label %if.then.44, label %if.else

if.then.44:                                       ; preds = %lor.lhs.false.40, %lor.lhs.false.37, %lor.lhs.false, %if.end.15
  %has_overlap = getelementptr inbounds %struct.gs_pattern1_instance_s, %struct.gs_pattern1_instance_s* %inst, i32 0, i32 8
  store i32 1, i32* %has_overlap, align 4, !tbaa !64
  br label %if.end.46

if.else:                                          ; preds = %lor.lhs.false.40
  %has_overlap45 = getelementptr inbounds %struct.gs_pattern1_instance_s, %struct.gs_pattern1_instance_s* %inst, i32 0, i32 8
  store i32 0, i32* %has_overlap45, align 4, !tbaa !64
  br label %if.end.46

if.end.46:                                        ; preds = %if.else, %if.then.44
  %65 = bitcast float* %height21 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %65) #1
  %66 = bitcast float* %width16 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %66) #1
  br label %do.body

do.body:                                          ; preds = %if.end.46
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.body.47

do.body.47:                                       ; preds = %do.end
  br label %do.cond.48

do.cond.48:                                       ; preds = %do.body.47
  br label %do.end.49

do.end.49:                                        ; preds = %do.cond.48
  %67 = bitcast float* %bbw to i8*
  call void @llvm.lifetime.start(i64 4, i8* %67) #1
  %q50 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %bbox, i32 0, i32 1
  %x51 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q50, i32 0, i32 0
  %68 = load double, double* %x51, align 8, !tbaa !65
  %p52 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %bbox, i32 0, i32 0
  %x53 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p52, i32 0, i32 0
  %69 = load double, double* %x53, align 8, !tbaa !66
  %sub54 = fsub double %68, %69
  %conv55 = fptrunc double %sub54 to float
  store float %conv55, float* %bbw, align 4, !tbaa !55
  %70 = bitcast float* %bbh to i8*
  call void @llvm.lifetime.start(i64 4, i8* %70) #1
  %q56 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %bbox, i32 0, i32 1
  %y57 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q56, i32 0, i32 1
  %71 = load double, double* %y57, align 8, !tbaa !67
  %p58 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %bbox, i32 0, i32 0
  %y59 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p58, i32 0, i32 1
  %72 = load double, double* %y59, align 8, !tbaa !68
  %sub60 = fsub double %71, %72
  %conv61 = fptrunc double %sub60 to float
  store float %conv61, float* %bbh, align 4, !tbaa !55
  %73 = load float, float* %bbw, align 4, !tbaa !55
  %conv62 = fpext float %73 to double
  %call63 = call double @ceil(double %conv62) #6
  %conv64 = fptosi double %call63 to i32
  %size = getelementptr inbounds %struct.gs_pattern1_instance_s, %struct.gs_pattern1_instance_s* %inst, i32 0, i32 12
  %x65 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %size, i32 0, i32 0
  store i32 %conv64, i32* %x65, align 4, !tbaa !69
  %74 = load float, float* %bbh, align 4, !tbaa !55
  %conv66 = fpext float %74 to double
  %call67 = call double @ceil(double %conv66) #6
  %conv68 = fptosi double %call67 to i32
  %size69 = getelementptr inbounds %struct.gs_pattern1_instance_s, %struct.gs_pattern1_instance_s* %inst, i32 0, i32 12
  %y70 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %size69, i32 0, i32 1
  store i32 %conv68, i32* %y70, align 4, !tbaa !70
  %size71 = getelementptr inbounds %struct.gs_pattern1_instance_s, %struct.gs_pattern1_instance_s* %inst, i32 0, i32 12
  %x72 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %size71, i32 0, i32 0
  %75 = load i32, i32* %x72, align 4, !tbaa !69
  %cmp73 = icmp eq i32 %75, 0
  br i1 %cmp73, label %if.then.80, label %lor.lhs.false.75

lor.lhs.false.75:                                 ; preds = %do.end.49
  %size76 = getelementptr inbounds %struct.gs_pattern1_instance_s, %struct.gs_pattern1_instance_s* %inst, i32 0, i32 12
  %y77 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %size76, i32 0, i32 1
  %76 = load i32, i32* %y77, align 4, !tbaa !70
  %cmp78 = icmp eq i32 %76, 0
  br i1 %cmp78, label %if.then.80, label %if.else.89

if.then.80:                                       ; preds = %lor.lhs.false.75, %do.end.49
  %step_matrix = getelementptr inbounds %struct.gs_pattern1_instance_s, %struct.gs_pattern1_instance_s* %inst, i32 0, i32 5
  call void @gs_make_identity(%struct.gs_matrix_s* %step_matrix) #5
  %q81 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %bbox, i32 0, i32 1
  %y82 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q81, i32 0, i32 1
  store double 0.000000e+00, double* %y82, align 8, !tbaa !67
  %q83 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %bbox, i32 0, i32 1
  %x84 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q83, i32 0, i32 0
  store double 0.000000e+00, double* %x84, align 8, !tbaa !65
  %p85 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %bbox, i32 0, i32 0
  %y86 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p85, i32 0, i32 1
  store double 0.000000e+00, double* %y86, align 8, !tbaa !68
  %p87 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %bbox, i32 0, i32 0
  %x88 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p87, i32 0, i32 0
  store double 0.000000e+00, double* %x88, align 8, !tbaa !66
  br label %if.end.310

if.else.89:                                       ; preds = %lor.lhs.false.75
  %step_matrix90 = getelementptr inbounds %struct.gs_pattern1_instance_s, %struct.gs_pattern1_instance_s* %inst, i32 0, i32 5
  %xx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %step_matrix90, i32 0, i32 0
  %77 = load float, float* %xx, align 4, !tbaa !71
  %step_matrix91 = getelementptr inbounds %struct.gs_pattern1_instance_s, %struct.gs_pattern1_instance_s* %inst, i32 0, i32 5
  %yy = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %step_matrix91, i32 0, i32 3
  %78 = load float, float* %yy, align 4, !tbaa !72
  %mul = fmul float %77, %78
  %step_matrix92 = getelementptr inbounds %struct.gs_pattern1_instance_s, %struct.gs_pattern1_instance_s* %inst, i32 0, i32 5
  %xy93 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %step_matrix92, i32 0, i32 1
  %79 = load float, float* %xy93, align 4, !tbaa !73
  %step_matrix94 = getelementptr inbounds %struct.gs_pattern1_instance_s, %struct.gs_pattern1_instance_s* %inst, i32 0, i32 5
  %yx95 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %step_matrix94, i32 0, i32 2
  %80 = load float, float* %yx95, align 4, !tbaa !74
  %mul96 = fmul float %79, %80
  %sub97 = fsub float %mul, %mul96
  %conv98 = fpext float %sub97 to double
  %call99 = call double @fabs(double %conv98) #6
  %cmp100 = fcmp olt double %call99, 1.000000e-06
  br i1 %cmp100, label %if.then.102, label %if.end.103

if.then.102:                                      ; preds = %if.else.89
  store i32 -15, i32* %code, align 4, !tbaa !42
  store i32 3, i32* %cleanup.dest.slot
  br label %cleanup.311

if.end.103:                                       ; preds = %if.else.89
  %templat104 = getelementptr inbounds %struct.gs_pattern1_instance_s, %struct.gs_pattern1_instance_s* %inst, i32 0, i32 4
  %TilingType = getelementptr inbounds %struct.gs_pattern1_template_s, %struct.gs_pattern1_template_s* %templat104, i32 0, i32 5
  %81 = load i32, i32* %TilingType, align 4, !tbaa !75
  %cmp105 = icmp ne i32 %81, 2
  br i1 %cmp105, label %if.then.107, label %if.else.242

if.then.107:                                      ; preds = %if.end.103
  %step_matrix108 = getelementptr inbounds %struct.gs_pattern1_instance_s, %struct.gs_pattern1_instance_s* %inst, i32 0, i32 5
  %xy109 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %step_matrix108, i32 0, i32 1
  %82 = load float, float* %xy109, align 4, !tbaa !73
  %cmp110 = fcmp oeq float %82, 0.000000e+00
  br i1 %cmp110, label %land.lhs.true, label %if.end.241

land.lhs.true:                                    ; preds = %if.then.107
  %step_matrix112 = getelementptr inbounds %struct.gs_pattern1_instance_s, %struct.gs_pattern1_instance_s* %inst, i32 0, i32 5
  %yx113 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %step_matrix112, i32 0, i32 2
  %83 = load float, float* %yx113, align 4, !tbaa !74
  %cmp114 = fcmp oeq float %83, 0.000000e+00
  br i1 %cmp114, label %land.lhs.true.116, label %if.end.241

land.lhs.true.116:                                ; preds = %land.lhs.true
  %step_matrix117 = getelementptr inbounds %struct.gs_pattern1_instance_s, %struct.gs_pattern1_instance_s* %inst, i32 0, i32 5
  %xx118 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %step_matrix117, i32 0, i32 0
  %84 = load float, float* %xx118, align 4, !tbaa !71
  %conv119 = fpext float %84 to double
  %call120 = call double @fabs(double %conv119) #6
  %85 = load float, float* %bbw, align 4, !tbaa !55
  %conv121 = fpext float %85 to double
  %sub122 = fsub double %call120, %conv121
  %call123 = call double @fabs(double %sub122) #6
  %cmp124 = fcmp olt double %call123, 5.000000e-01
  br i1 %cmp124, label %land.lhs.true.126, label %if.end.241

land.lhs.true.126:                                ; preds = %land.lhs.true.116
  %step_matrix127 = getelementptr inbounds %struct.gs_pattern1_instance_s, %struct.gs_pattern1_instance_s* %inst, i32 0, i32 5
  %yy128 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %step_matrix127, i32 0, i32 3
  %86 = load float, float* %yy128, align 4, !tbaa !72
  %conv129 = fpext float %86 to double
  %call130 = call double @fabs(double %conv129) #6
  %87 = load float, float* %bbh, align 4, !tbaa !55
  %conv131 = fpext float %87 to double
  %sub132 = fsub double %call130, %conv131
  %call133 = call double @fabs(double %sub132) #6
  %cmp134 = fcmp olt double %call133, 5.000000e-01
  br i1 %cmp134, label %if.then.136, label %if.end.241

if.then.136:                                      ; preds = %land.lhs.true.126
  %step_matrix137 = getelementptr inbounds %struct.gs_pattern1_instance_s, %struct.gs_pattern1_instance_s* %inst, i32 0, i32 5
  %xx138 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %step_matrix137, i32 0, i32 0
  %88 = load float, float* %xx138, align 4, !tbaa !71
  %cmp139 = fcmp ole float %88, 2.000000e+00
  br i1 %cmp139, label %if.then.141, label %if.else.155

if.then.141:                                      ; preds = %if.then.136
  %89 = load %struct.gs_state_s*, %struct.gs_state_s** %saved, align 8, !tbaa !1
  %size142 = getelementptr inbounds %struct.gs_pattern1_instance_s, %struct.gs_pattern1_instance_s* %inst, i32 0, i32 12
  %x143 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %size142, i32 0, i32 0
  %90 = load i32, i32* %x143, align 4, !tbaa !69
  %conv144 = sitofp i32 %90 to float
  %step_matrix145 = getelementptr inbounds %struct.gs_pattern1_instance_s, %struct.gs_pattern1_instance_s* %inst, i32 0, i32 5
  %xx146 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %step_matrix145, i32 0, i32 0
  %91 = load float, float* %xx146, align 4, !tbaa !71
  %div = fdiv float %conv144, %91
  %conv147 = fpext float %div to double
  %call148 = call double @fabs(double %conv147) #6
  %call149 = call i32 @gs_scale(%struct.gs_state_s* %89, double %call148, double 1.000000e+00) #5
  %size150 = getelementptr inbounds %struct.gs_pattern1_instance_s, %struct.gs_pattern1_instance_s* %inst, i32 0, i32 12
  %x151 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %size150, i32 0, i32 0
  %92 = load i32, i32* %x151, align 4, !tbaa !69
  %conv152 = sitofp i32 %92 to float
  %step_matrix153 = getelementptr inbounds %struct.gs_pattern1_instance_s, %struct.gs_pattern1_instance_s* %inst, i32 0, i32 5
  %xx154 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %step_matrix153, i32 0, i32 0
  store float %conv152, float* %xx154, align 4, !tbaa !71
  br label %if.end.183

if.else.155:                                      ; preds = %if.then.136
  %step_matrix156 = getelementptr inbounds %struct.gs_pattern1_instance_s, %struct.gs_pattern1_instance_s* %inst, i32 0, i32 5
  %xx157 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %step_matrix156, i32 0, i32 0
  %93 = load float, float* %xx157, align 4, !tbaa !71
  %conv158 = fpext float %93 to double
  %add = fadd double %conv158, 5.000000e-01
  %call159 = call double @floor(double %add) #6
  %conv160 = fptrunc double %call159 to float
  %step_matrix161 = getelementptr inbounds %struct.gs_pattern1_instance_s, %struct.gs_pattern1_instance_s* %inst, i32 0, i32 5
  %xx162 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %step_matrix161, i32 0, i32 0
  store float %conv160, float* %xx162, align 4, !tbaa !71
  %94 = load float, float* %bbw, align 4, !tbaa !55
  %conv163 = fpext float %94 to double
  %size164 = getelementptr inbounds %struct.gs_pattern1_instance_s, %struct.gs_pattern1_instance_s* %inst, i32 0, i32 12
  %x165 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %size164, i32 0, i32 0
  %95 = load i32, i32* %x165, align 4, !tbaa !69
  %conv166 = sitofp i32 %95 to double
  %sub167 = fsub double %conv166, 3.906250e-03
  %cmp168 = fcmp oge double %conv163, %sub167
  br i1 %cmp168, label %if.then.170, label %if.end.182

if.then.170:                                      ; preds = %if.else.155
  %96 = load %struct.gs_state_s*, %struct.gs_state_s** %saved, align 8, !tbaa !1
  %size171 = getelementptr inbounds %struct.gs_pattern1_instance_s, %struct.gs_pattern1_instance_s* %inst, i32 0, i32 12
  %x172 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %size171, i32 0, i32 0
  %97 = load i32, i32* %x172, align 4, !tbaa !69
  %conv173 = sitofp i32 %97 to double
  %call174 = call double @fabs(double %conv173) #6
  %sub175 = fsub double %call174, 3.906250e-03
  %size176 = getelementptr inbounds %struct.gs_pattern1_instance_s, %struct.gs_pattern1_instance_s* %inst, i32 0, i32 12
  %x177 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %size176, i32 0, i32 0
  %98 = load i32, i32* %x177, align 4, !tbaa !69
  %conv178 = sitofp i32 %98 to double
  %call179 = call double @fabs(double %conv178) #6
  %div180 = fdiv double %sub175, %call179
  %call181 = call i32 @gs_scale(%struct.gs_state_s* %96, double %div180, double 1.000000e+00) #5
  br label %if.end.182

if.end.182:                                       ; preds = %if.then.170, %if.else.155
  br label %if.end.183

if.end.183:                                       ; preds = %if.end.182, %if.then.141
  %step_matrix184 = getelementptr inbounds %struct.gs_pattern1_instance_s, %struct.gs_pattern1_instance_s* %inst, i32 0, i32 5
  %yy185 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %step_matrix184, i32 0, i32 3
  %99 = load float, float* %yy185, align 4, !tbaa !72
  %cmp186 = fcmp ole float %99, 2.000000e+00
  br i1 %cmp186, label %if.then.188, label %if.else.203

if.then.188:                                      ; preds = %if.end.183
  %100 = load %struct.gs_state_s*, %struct.gs_state_s** %saved, align 8, !tbaa !1
  %size189 = getelementptr inbounds %struct.gs_pattern1_instance_s, %struct.gs_pattern1_instance_s* %inst, i32 0, i32 12
  %y190 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %size189, i32 0, i32 1
  %101 = load i32, i32* %y190, align 4, !tbaa !70
  %conv191 = sitofp i32 %101 to float
  %step_matrix192 = getelementptr inbounds %struct.gs_pattern1_instance_s, %struct.gs_pattern1_instance_s* %inst, i32 0, i32 5
  %yy193 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %step_matrix192, i32 0, i32 3
  %102 = load float, float* %yy193, align 4, !tbaa !72
  %div194 = fdiv float %conv191, %102
  %conv195 = fpext float %div194 to double
  %call196 = call double @fabs(double %conv195) #6
  %call197 = call i32 @gs_scale(%struct.gs_state_s* %100, double 1.000000e+00, double %call196) #5
  %size198 = getelementptr inbounds %struct.gs_pattern1_instance_s, %struct.gs_pattern1_instance_s* %inst, i32 0, i32 12
  %y199 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %size198, i32 0, i32 1
  %103 = load i32, i32* %y199, align 4, !tbaa !70
  %conv200 = sitofp i32 %103 to float
  %step_matrix201 = getelementptr inbounds %struct.gs_pattern1_instance_s, %struct.gs_pattern1_instance_s* %inst, i32 0, i32 5
  %yy202 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %step_matrix201, i32 0, i32 3
  store float %conv200, float* %yy202, align 4, !tbaa !72
  br label %if.end.232

if.else.203:                                      ; preds = %if.end.183
  %step_matrix204 = getelementptr inbounds %struct.gs_pattern1_instance_s, %struct.gs_pattern1_instance_s* %inst, i32 0, i32 5
  %yy205 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %step_matrix204, i32 0, i32 3
  %104 = load float, float* %yy205, align 4, !tbaa !72
  %conv206 = fpext float %104 to double
  %add207 = fadd double %conv206, 5.000000e-01
  %call208 = call double @floor(double %add207) #6
  %conv209 = fptrunc double %call208 to float
  %step_matrix210 = getelementptr inbounds %struct.gs_pattern1_instance_s, %struct.gs_pattern1_instance_s* %inst, i32 0, i32 5
  %yy211 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %step_matrix210, i32 0, i32 3
  store float %conv209, float* %yy211, align 4, !tbaa !72
  %105 = load float, float* %bbh, align 4, !tbaa !55
  %conv212 = fpext float %105 to double
  %size213 = getelementptr inbounds %struct.gs_pattern1_instance_s, %struct.gs_pattern1_instance_s* %inst, i32 0, i32 12
  %y214 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %size213, i32 0, i32 1
  %106 = load i32, i32* %y214, align 4, !tbaa !70
  %conv215 = sitofp i32 %106 to double
  %sub216 = fsub double %conv215, 3.906250e-03
  %cmp217 = fcmp oge double %conv212, %sub216
  br i1 %cmp217, label %if.then.219, label %if.end.231

if.then.219:                                      ; preds = %if.else.203
  %107 = load %struct.gs_state_s*, %struct.gs_state_s** %saved, align 8, !tbaa !1
  %size220 = getelementptr inbounds %struct.gs_pattern1_instance_s, %struct.gs_pattern1_instance_s* %inst, i32 0, i32 12
  %y221 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %size220, i32 0, i32 1
  %108 = load i32, i32* %y221, align 4, !tbaa !70
  %conv222 = sitofp i32 %108 to double
  %call223 = call double @fabs(double %conv222) #6
  %sub224 = fsub double %call223, 3.906250e-03
  %size225 = getelementptr inbounds %struct.gs_pattern1_instance_s, %struct.gs_pattern1_instance_s* %inst, i32 0, i32 12
  %y226 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %size225, i32 0, i32 1
  %109 = load i32, i32* %y226, align 4, !tbaa !70
  %conv227 = sitofp i32 %109 to double
  %call228 = call double @fabs(double %conv227) #6
  %div229 = fdiv double %sub224, %call228
  %call230 = call i32 @gs_scale(%struct.gs_state_s* %107, double 1.000000e+00, double %div229) #5
  br label %if.end.231

if.end.231:                                       ; preds = %if.then.219, %if.else.203
  br label %if.end.232

if.end.232:                                       ; preds = %if.end.231, %if.then.188
  %templat233 = getelementptr inbounds %struct.gs_pattern1_instance_s, %struct.gs_pattern1_instance_s* %inst, i32 0, i32 4
  %BBox234 = getelementptr inbounds %struct.gs_pattern1_template_s, %struct.gs_pattern1_template_s* %templat233, i32 0, i32 7
  %110 = load %struct.gs_state_s*, %struct.gs_state_s** %saved, align 8, !tbaa !1
  %ctm235 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %110, i32 0, i32 5
  %111 = bitcast %struct.gs_matrix_fixed_s* %ctm235 to %struct.gs_matrix_s*
  %call236 = call i32 @gs_bbox_transform(%struct.gs_rect_s* %BBox234, %struct.gs_matrix_s* %111, %struct.gs_rect_s* %bbox) #5
  store i32 %call236, i32* %code, align 4, !tbaa !42
  %112 = load i32, i32* %code, align 4, !tbaa !42
  %cmp237 = icmp slt i32 %112, 0
  br i1 %cmp237, label %if.then.239, label %if.end.240

if.then.239:                                      ; preds = %if.end.232
  store i32 3, i32* %cleanup.dest.slot
  br label %cleanup.311

if.end.240:                                       ; preds = %if.end.232
  br label %if.end.241

if.end.241:                                       ; preds = %if.end.240, %land.lhs.true.126, %land.lhs.true.116, %land.lhs.true, %if.then.107
  br label %if.end.309

if.else.242:                                      ; preds = %if.end.103
  %templat243 = getelementptr inbounds %struct.gs_pattern1_instance_s, %struct.gs_pattern1_instance_s* %inst, i32 0, i32 4
  %TilingType244 = getelementptr inbounds %struct.gs_pattern1_template_s, %struct.gs_pattern1_template_s* %templat243, i32 0, i32 5
  %113 = load i32, i32* %TilingType244, align 4, !tbaa !75
  %cmp245 = icmp eq i32 %113, 2
  br i1 %cmp245, label %land.lhs.true.247, label %if.end.308

land.lhs.true.247:                                ; preds = %if.else.242
  %114 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %fill_adjust = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %114, i32 0, i32 28
  %x248 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %fill_adjust, i32 0, i32 0
  %115 = load i32, i32* %x248, align 4, !tbaa !76
  %116 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %fill_adjust249 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %116, i32 0, i32 28
  %y250 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %fill_adjust249, i32 0, i32 1
  %117 = load i32, i32* %y250, align 4, !tbaa !77
  %or = or i32 %115, %117
  %cmp251 = icmp eq i32 %or, 0
  br i1 %cmp251, label %if.then.253, label %if.end.308

if.then.253:                                      ; preds = %land.lhs.true.247
  %118 = bitcast float* %shiftx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %118) #1
  %step_matrix254 = getelementptr inbounds %struct.gs_pattern1_instance_s, %struct.gs_pattern1_instance_s* %inst, i32 0, i32 5
  %yx255 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %step_matrix254, i32 0, i32 2
  %119 = load float, float* %yx255, align 4, !tbaa !74
  %cmp256 = fcmp oeq float %119, 0.000000e+00
  br i1 %cmp256, label %land.lhs.true.258, label %cond.false

land.lhs.true.258:                                ; preds = %if.then.253
  %step_matrix259 = getelementptr inbounds %struct.gs_pattern1_instance_s, %struct.gs_pattern1_instance_s* %inst, i32 0, i32 5
  %xx260 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %step_matrix259, i32 0, i32 0
  %120 = load float, float* %xx260, align 4, !tbaa !71
  %conv261 = fpext float %120 to double
  %call262 = call double @fabs(double %conv261) #6
  %121 = load float, float* %bbw, align 4, !tbaa !55
  %conv263 = fpext float %121 to double
  %sub264 = fsub double %call262, %conv263
  %call265 = call double @fabs(double %sub264) #6
  %cmp266 = fcmp ole double %call265, 5.000000e-01
  br i1 %cmp266, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true.258
  %122 = load float, float* %bbw, align 4, !tbaa !55
  %size268 = getelementptr inbounds %struct.gs_pattern1_instance_s, %struct.gs_pattern1_instance_s* %inst, i32 0, i32 12
  %x269 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %size268, i32 0, i32 0
  %123 = load i32, i32* %x269, align 4, !tbaa !69
  %conv270 = sitofp i32 %123 to float
  %sub271 = fsub float %122, %conv270
  %div272 = fdiv float %sub271, 2.000000e+00
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true.258, %if.then.253
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi float [ %div272, %cond.true ], [ 0.000000e+00, %cond.false ]
  store float %cond, float* %shiftx, align 4, !tbaa !55
  %124 = bitcast float* %shifty to i8*
  call void @llvm.lifetime.start(i64 4, i8* %124) #1
  %step_matrix273 = getelementptr inbounds %struct.gs_pattern1_instance_s, %struct.gs_pattern1_instance_s* %inst, i32 0, i32 5
  %xy274 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %step_matrix273, i32 0, i32 1
  %125 = load float, float* %xy274, align 4, !tbaa !73
  %cmp275 = fcmp oeq float %125, 0.000000e+00
  br i1 %cmp275, label %land.lhs.true.277, label %cond.false.293

land.lhs.true.277:                                ; preds = %cond.end
  %step_matrix278 = getelementptr inbounds %struct.gs_pattern1_instance_s, %struct.gs_pattern1_instance_s* %inst, i32 0, i32 5
  %yy279 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %step_matrix278, i32 0, i32 3
  %126 = load float, float* %yy279, align 4, !tbaa !72
  %conv280 = fpext float %126 to double
  %call281 = call double @fabs(double %conv280) #6
  %127 = load float, float* %bbh, align 4, !tbaa !55
  %conv282 = fpext float %127 to double
  %sub283 = fsub double %call281, %conv282
  %call284 = call double @fabs(double %sub283) #6
  %cmp285 = fcmp ole double %call284, 5.000000e-01
  br i1 %cmp285, label %cond.true.287, label %cond.false.293

cond.true.287:                                    ; preds = %land.lhs.true.277
  %128 = load float, float* %bbh, align 4, !tbaa !55
  %size288 = getelementptr inbounds %struct.gs_pattern1_instance_s, %struct.gs_pattern1_instance_s* %inst, i32 0, i32 12
  %y289 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %size288, i32 0, i32 1
  %129 = load i32, i32* %y289, align 4, !tbaa !70
  %conv290 = sitofp i32 %129 to float
  %sub291 = fsub float %128, %conv290
  %div292 = fdiv float %sub291, 2.000000e+00
  br label %cond.end.294

cond.false.293:                                   ; preds = %land.lhs.true.277, %cond.end
  br label %cond.end.294

cond.end.294:                                     ; preds = %cond.false.293, %cond.true.287
  %cond295 = phi float [ %div292, %cond.true.287 ], [ 0.000000e+00, %cond.false.293 ]
  store float %cond295, float* %shifty, align 4, !tbaa !55
  %130 = load %struct.gs_state_s*, %struct.gs_state_s** %saved, align 8, !tbaa !1
  %131 = load float, float* %shiftx, align 4, !tbaa !55
  %conv296 = fpext float %131 to double
  %132 = load float, float* %shifty, align 4, !tbaa !55
  %conv297 = fpext float %132 to double
  %call298 = call i32 @gs_translate_untransformed(%struct.gs_state_s* %130, double %conv296, double %conv297) #5
  %templat299 = getelementptr inbounds %struct.gs_pattern1_instance_s, %struct.gs_pattern1_instance_s* %inst, i32 0, i32 4
  %BBox300 = getelementptr inbounds %struct.gs_pattern1_template_s, %struct.gs_pattern1_template_s* %templat299, i32 0, i32 7
  %133 = load %struct.gs_state_s*, %struct.gs_state_s** %saved, align 8, !tbaa !1
  %ctm301 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %133, i32 0, i32 5
  %134 = bitcast %struct.gs_matrix_fixed_s* %ctm301 to %struct.gs_matrix_s*
  %call302 = call i32 @gs_bbox_transform(%struct.gs_rect_s* %BBox300, %struct.gs_matrix_s* %134, %struct.gs_rect_s* %bbox) #5
  store i32 %call302, i32* %code, align 4, !tbaa !42
  %135 = load i32, i32* %code, align 4, !tbaa !42
  %cmp303 = icmp slt i32 %135, 0
  br i1 %cmp303, label %if.then.305, label %if.end.306

if.then.305:                                      ; preds = %cond.end.294
  store i32 3, i32* %cleanup.dest.slot
  br label %cleanup

if.end.306:                                       ; preds = %cond.end.294
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.then.305, %if.end.306
  %136 = bitcast float* %shifty to i8*
  call void @llvm.lifetime.end(i64 4, i8* %136) #1
  %137 = bitcast float* %shiftx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %137) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.311 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.308

if.end.308:                                       ; preds = %cleanup.cont, %land.lhs.true.247, %if.else.242
  br label %if.end.309

if.end.309:                                       ; preds = %if.end.308, %if.end.241
  br label %if.end.310

if.end.310:                                       ; preds = %if.end.309, %if.then.80
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.311

cleanup.311:                                      ; preds = %if.then.239, %if.then.102, %if.end.310, %cleanup
  %138 = bitcast float* %bbh to i8*
  call void @llvm.lifetime.end(i64 4, i8* %138) #1
  %139 = bitcast float* %bbw to i8*
  call void @llvm.lifetime.end(i64 4, i8* %139) #1
  %cleanup.dest.313 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.313, label %cleanup.475 [
    i32 0, label %cleanup.cont.314
    i32 3, label %fsaved
  ]

cleanup.cont.314:                                 ; preds = %cleanup.311
  %step_matrix315 = getelementptr inbounds %struct.gs_pattern1_instance_s, %struct.gs_pattern1_instance_s* %inst, i32 0, i32 5
  %bbox316 = getelementptr inbounds %struct.gs_pattern1_instance_s, %struct.gs_pattern1_instance_s* %inst, i32 0, i32 6
  %call317 = call i32 @gs_bbox_transform_inverse(%struct.gs_rect_s* %bbox, %struct.gs_matrix_s* %step_matrix315, %struct.gs_rect_s* %bbox316) #5
  store i32 %call317, i32* %code, align 4, !tbaa !42
  %cmp318 = icmp slt i32 %call317, 0
  br i1 %cmp318, label %if.then.320, label %if.end.321

if.then.320:                                      ; preds = %cleanup.cont.314
  br label %fsaved

if.end.321:                                       ; preds = %cleanup.cont.314
  br label %do.body.322

do.body.322:                                      ; preds = %if.end.321
  br label %do.cond.323

do.cond.323:                                      ; preds = %do.body.322
  br label %do.end.324

do.end.324:                                       ; preds = %do.cond.323
  %step_matrix325 = getelementptr inbounds %struct.gs_pattern1_instance_s, %struct.gs_pattern1_instance_s* %inst, i32 0, i32 5
  %xx326 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %step_matrix325, i32 0, i32 0
  %140 = load float, float* %xx326, align 4, !tbaa !71
  %conv327 = fpext float %140 to double
  %call328 = call double @fabs(double %conv327) #6
  %size329 = getelementptr inbounds %struct.gs_pattern1_instance_s, %struct.gs_pattern1_instance_s* %inst, i32 0, i32 12
  %x330 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %size329, i32 0, i32 0
  %141 = load i32, i32* %x330, align 4, !tbaa !69
  %conv331 = sitofp i32 %141 to double
  %cmp332 = fcmp oeq double %call328, %conv331
  br i1 %cmp332, label %land.lhs.true.334, label %land.end

land.lhs.true.334:                                ; preds = %do.end.324
  %step_matrix335 = getelementptr inbounds %struct.gs_pattern1_instance_s, %struct.gs_pattern1_instance_s* %inst, i32 0, i32 5
  %xy336 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %step_matrix335, i32 0, i32 1
  %142 = load float, float* %xy336, align 4, !tbaa !73
  %cmp337 = fcmp oeq float %142, 0.000000e+00
  br i1 %cmp337, label %land.lhs.true.339, label %land.end

land.lhs.true.339:                                ; preds = %land.lhs.true.334
  %step_matrix340 = getelementptr inbounds %struct.gs_pattern1_instance_s, %struct.gs_pattern1_instance_s* %inst, i32 0, i32 5
  %yx341 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %step_matrix340, i32 0, i32 2
  %143 = load float, float* %yx341, align 4, !tbaa !74
  %cmp342 = fcmp oeq float %143, 0.000000e+00
  br i1 %cmp342, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true.339
  %step_matrix344 = getelementptr inbounds %struct.gs_pattern1_instance_s, %struct.gs_pattern1_instance_s* %inst, i32 0, i32 5
  %yy345 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %step_matrix344, i32 0, i32 3
  %144 = load float, float* %yy345, align 4, !tbaa !72
  %conv346 = fpext float %144 to double
  %call347 = call double @fabs(double %conv346) #6
  %size348 = getelementptr inbounds %struct.gs_pattern1_instance_s, %struct.gs_pattern1_instance_s* %inst, i32 0, i32 12
  %y349 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %size348, i32 0, i32 1
  %145 = load i32, i32* %y349, align 4, !tbaa !70
  %conv350 = sitofp i32 %145 to double
  %cmp351 = fcmp oeq double %call347, %conv350
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.339, %land.lhs.true.334, %do.end.324
  %146 = phi i1 [ false, %land.lhs.true.339 ], [ false, %land.lhs.true.334 ], [ false, %do.end.324 ], [ %cmp351, %land.rhs ]
  %land.ext = zext i1 %146 to i32
  %is_simple = getelementptr inbounds %struct.gs_pattern1_instance_s, %struct.gs_pattern1_instance_s* %inst, i32 0, i32 7
  store i32 %land.ext, i32* %is_simple, align 4, !tbaa !78
  br label %do.body.353

do.body.353:                                      ; preds = %land.end
  br label %do.cond.354

do.cond.354:                                      ; preds = %do.body.353
  br label %do.end.355

do.end.355:                                       ; preds = %do.cond.354
  %uses_mask = getelementptr inbounds %struct.gs_pattern1_instance_s, %struct.gs_pattern1_instance_s* %inst, i32 0, i32 10
  store i32 1, i32* %uses_mask, align 4, !tbaa !79
  %is_clist = getelementptr inbounds %struct.gs_pattern1_instance_s, %struct.gs_pattern1_instance_s* %inst, i32 0, i32 11
  store i32 0, i32* %is_clist, align 4, !tbaa !80
  %147 = load %struct.gs_state_s*, %struct.gs_state_s** %saved, align 8, !tbaa !1
  %step_matrix356 = getelementptr inbounds %struct.gs_pattern1_instance_s, %struct.gs_pattern1_instance_s* %inst, i32 0, i32 5
  %tx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %step_matrix356, i32 0, i32 4
  %148 = load float, float* %tx, align 4, !tbaa !81
  %conv357 = fpext float %148 to double
  %p358 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %bbox, i32 0, i32 0
  %x359 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p358, i32 0, i32 0
  %149 = load double, double* %x359, align 8, !tbaa !66
  %sub360 = fsub double %conv357, %149
  %mul361 = fmul double %sub360, 2.560000e+02
  %add362 = fadd double %mul361, 5.000000e-01
  %call363 = call double @floor(double %add362) #6
  %conv364 = fptosi double %call363 to i32
  %step_matrix365 = getelementptr inbounds %struct.gs_pattern1_instance_s, %struct.gs_pattern1_instance_s* %inst, i32 0, i32 5
  %ty = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %step_matrix365, i32 0, i32 5
  %150 = load float, float* %ty, align 4, !tbaa !82
  %conv366 = fpext float %150 to double
  %p367 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %bbox, i32 0, i32 0
  %y368 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p367, i32 0, i32 1
  %151 = load double, double* %y368, align 8, !tbaa !68
  %sub369 = fsub double %conv366, %151
  %mul370 = fmul double %sub369, 2.560000e+02
  %add371 = fadd double %mul370, 5.000000e-01
  %call372 = call double @floor(double %add371) #6
  %conv373 = fptosi double %call372 to i32
  %call374 = call i32 @gx_translate_to_fixed(%struct.gs_state_s* %147, i32 %conv364, i32 %conv373) #5
  %p375 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %bbox, i32 0, i32 0
  %x376 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p375, i32 0, i32 0
  %152 = load double, double* %x376, align 8, !tbaa !66
  %conv377 = fptrunc double %152 to float
  %step_matrix378 = getelementptr inbounds %struct.gs_pattern1_instance_s, %struct.gs_pattern1_instance_s* %inst, i32 0, i32 5
  %tx379 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %step_matrix378, i32 0, i32 4
  store float %conv377, float* %tx379, align 4, !tbaa !81
  %p380 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %bbox, i32 0, i32 0
  %y381 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p380, i32 0, i32 1
  %153 = load double, double* %y381, align 8, !tbaa !68
  %conv382 = fptrunc double %153 to float
  %step_matrix383 = getelementptr inbounds %struct.gs_pattern1_instance_s, %struct.gs_pattern1_instance_s* %inst, i32 0, i32 5
  %ty384 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %step_matrix383, i32 0, i32 5
  store float %conv382, float* %ty384, align 4, !tbaa !82
  %p385 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %cbox, i32 0, i32 0
  %x386 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p385, i32 0, i32 0
  store i32 0, i32* %x386, align 4, !tbaa !83
  %p387 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %cbox, i32 0, i32 0
  %y388 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p387, i32 0, i32 1
  store i32 0, i32* %y388, align 4, !tbaa !85
  %size389 = getelementptr inbounds %struct.gs_pattern1_instance_s, %struct.gs_pattern1_instance_s* %inst, i32 0, i32 12
  %x390 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %size389, i32 0, i32 0
  %154 = load i32, i32* %x390, align 4, !tbaa !69
  %shl = shl i32 %154, 8
  %q391 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %cbox, i32 0, i32 1
  %x392 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q391, i32 0, i32 0
  store i32 %shl, i32* %x392, align 4, !tbaa !86
  %size393 = getelementptr inbounds %struct.gs_pattern1_instance_s, %struct.gs_pattern1_instance_s* %inst, i32 0, i32 12
  %y394 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %size393, i32 0, i32 1
  %155 = load i32, i32* %y394, align 4, !tbaa !70
  %shl395 = shl i32 %155, 8
  %q396 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %cbox, i32 0, i32 1
  %y397 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q396, i32 0, i32 1
  store i32 %shl395, i32* %y397, align 4, !tbaa !87
  %156 = load %struct.gs_state_s*, %struct.gs_state_s** %saved, align 8, !tbaa !1
  %call398 = call i32 @gx_clip_to_rectangle(%struct.gs_state_s* %156, %struct.gs_fixed_rect_s* %cbox) #5
  store i32 %call398, i32* %code, align 4, !tbaa !42
  %157 = load i32, i32* %code, align 4, !tbaa !42
  %cmp399 = icmp slt i32 %157, 0
  br i1 %cmp399, label %if.then.401, label %if.end.402

if.then.401:                                      ; preds = %do.end.355
  br label %fsaved

if.end.402:                                       ; preds = %do.end.355
  %is_simple403 = getelementptr inbounds %struct.gs_pattern1_instance_s, %struct.gs_pattern1_instance_s* %inst, i32 0, i32 7
  %158 = load i32, i32* %is_simple403, align 4, !tbaa !78
  %tobool = icmp ne i32 %158, 0
  br i1 %tobool, label %if.end.467, label %if.then.404

if.then.404:                                      ; preds = %if.end.402
  %159 = load %struct.gs_state_s*, %struct.gs_state_s** %saved, align 8, !tbaa !1
  %call405 = call i32 @gs_newpath(%struct.gs_state_s* %159) #5
  store i32 %call405, i32* %code, align 4, !tbaa !42
  %160 = load i32, i32* %code, align 4, !tbaa !42
  %cmp406 = icmp sge i32 %160, 0
  br i1 %cmp406, label %if.then.408, label %if.end.418

if.then.408:                                      ; preds = %if.then.404
  %161 = load %struct.gs_state_s*, %struct.gs_state_s** %saved, align 8, !tbaa !1
  %templat409 = getelementptr inbounds %struct.gs_pattern1_instance_s, %struct.gs_pattern1_instance_s* %inst, i32 0, i32 4
  %BBox410 = getelementptr inbounds %struct.gs_pattern1_template_s, %struct.gs_pattern1_template_s* %templat409, i32 0, i32 7
  %p411 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %BBox410, i32 0, i32 0
  %x412 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p411, i32 0, i32 0
  %162 = load double, double* %x412, align 8, !tbaa !57
  %templat413 = getelementptr inbounds %struct.gs_pattern1_instance_s, %struct.gs_pattern1_instance_s* %inst, i32 0, i32 4
  %BBox414 = getelementptr inbounds %struct.gs_pattern1_template_s, %struct.gs_pattern1_template_s* %templat413, i32 0, i32 7
  %p415 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %BBox414, i32 0, i32 0
  %y416 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p415, i32 0, i32 1
  %163 = load double, double* %y416, align 8, !tbaa !59
  %call417 = call i32 @gs_moveto(%struct.gs_state_s* %161, double %162, double %163) #5
  store i32 %call417, i32* %code, align 4, !tbaa !42
  br label %if.end.418

if.end.418:                                       ; preds = %if.then.408, %if.then.404
  %164 = load i32, i32* %code, align 4, !tbaa !42
  %cmp419 = icmp sge i32 %164, 0
  br i1 %cmp419, label %if.then.421, label %if.end.431

if.then.421:                                      ; preds = %if.end.418
  %165 = load %struct.gs_state_s*, %struct.gs_state_s** %saved, align 8, !tbaa !1
  %templat422 = getelementptr inbounds %struct.gs_pattern1_instance_s, %struct.gs_pattern1_instance_s* %inst, i32 0, i32 4
  %BBox423 = getelementptr inbounds %struct.gs_pattern1_template_s, %struct.gs_pattern1_template_s* %templat422, i32 0, i32 7
  %q424 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %BBox423, i32 0, i32 1
  %x425 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q424, i32 0, i32 0
  %166 = load double, double* %x425, align 8, !tbaa !56
  %templat426 = getelementptr inbounds %struct.gs_pattern1_instance_s, %struct.gs_pattern1_instance_s* %inst, i32 0, i32 4
  %BBox427 = getelementptr inbounds %struct.gs_pattern1_template_s, %struct.gs_pattern1_template_s* %templat426, i32 0, i32 7
  %p428 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %BBox427, i32 0, i32 0
  %y429 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p428, i32 0, i32 1
  %167 = load double, double* %y429, align 8, !tbaa !59
  %call430 = call i32 @gs_lineto(%struct.gs_state_s* %165, double %166, double %167) #5
  store i32 %call430, i32* %code, align 4, !tbaa !42
  br label %if.end.431

if.end.431:                                       ; preds = %if.then.421, %if.end.418
  %168 = load i32, i32* %code, align 4, !tbaa !42
  %cmp432 = icmp sge i32 %168, 0
  br i1 %cmp432, label %if.then.434, label %if.end.444

if.then.434:                                      ; preds = %if.end.431
  %169 = load %struct.gs_state_s*, %struct.gs_state_s** %saved, align 8, !tbaa !1
  %templat435 = getelementptr inbounds %struct.gs_pattern1_instance_s, %struct.gs_pattern1_instance_s* %inst, i32 0, i32 4
  %BBox436 = getelementptr inbounds %struct.gs_pattern1_template_s, %struct.gs_pattern1_template_s* %templat435, i32 0, i32 7
  %q437 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %BBox436, i32 0, i32 1
  %x438 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q437, i32 0, i32 0
  %170 = load double, double* %x438, align 8, !tbaa !56
  %templat439 = getelementptr inbounds %struct.gs_pattern1_instance_s, %struct.gs_pattern1_instance_s* %inst, i32 0, i32 4
  %BBox440 = getelementptr inbounds %struct.gs_pattern1_template_s, %struct.gs_pattern1_template_s* %templat439, i32 0, i32 7
  %q441 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %BBox440, i32 0, i32 1
  %y442 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q441, i32 0, i32 1
  %171 = load double, double* %y442, align 8, !tbaa !58
  %call443 = call i32 @gs_lineto(%struct.gs_state_s* %169, double %170, double %171) #5
  store i32 %call443, i32* %code, align 4, !tbaa !42
  br label %if.end.444

if.end.444:                                       ; preds = %if.then.434, %if.end.431
  %172 = load i32, i32* %code, align 4, !tbaa !42
  %cmp445 = icmp sge i32 %172, 0
  br i1 %cmp445, label %if.then.447, label %if.end.457

if.then.447:                                      ; preds = %if.end.444
  %173 = load %struct.gs_state_s*, %struct.gs_state_s** %saved, align 8, !tbaa !1
  %templat448 = getelementptr inbounds %struct.gs_pattern1_instance_s, %struct.gs_pattern1_instance_s* %inst, i32 0, i32 4
  %BBox449 = getelementptr inbounds %struct.gs_pattern1_template_s, %struct.gs_pattern1_template_s* %templat448, i32 0, i32 7
  %p450 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %BBox449, i32 0, i32 0
  %x451 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p450, i32 0, i32 0
  %174 = load double, double* %x451, align 8, !tbaa !57
  %templat452 = getelementptr inbounds %struct.gs_pattern1_instance_s, %struct.gs_pattern1_instance_s* %inst, i32 0, i32 4
  %BBox453 = getelementptr inbounds %struct.gs_pattern1_template_s, %struct.gs_pattern1_template_s* %templat452, i32 0, i32 7
  %q454 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %BBox453, i32 0, i32 1
  %y455 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q454, i32 0, i32 1
  %175 = load double, double* %y455, align 8, !tbaa !58
  %call456 = call i32 @gs_lineto(%struct.gs_state_s* %173, double %174, double %175) #5
  store i32 %call456, i32* %code, align 4, !tbaa !42
  br label %if.end.457

if.end.457:                                       ; preds = %if.then.447, %if.end.444
  %176 = load i32, i32* %code, align 4, !tbaa !42
  %cmp458 = icmp sge i32 %176, 0
  br i1 %cmp458, label %if.then.460, label %if.end.462

if.then.460:                                      ; preds = %if.end.457
  %177 = load %struct.gs_state_s*, %struct.gs_state_s** %saved, align 8, !tbaa !1
  %call461 = call i32 @gs_clip(%struct.gs_state_s* %177) #5
  store i32 %call461, i32* %code, align 4, !tbaa !42
  br label %if.end.462

if.end.462:                                       ; preds = %if.then.460, %if.end.457
  %178 = load i32, i32* %code, align 4, !tbaa !42
  %cmp463 = icmp slt i32 %178, 0
  br i1 %cmp463, label %if.then.465, label %if.end.466

if.then.465:                                      ; preds = %if.end.462
  br label %fsaved

if.end.466:                                       ; preds = %if.end.462
  br label %if.end.467

if.end.467:                                       ; preds = %if.end.466, %if.end.402
  %179 = load %struct.gs_state_s*, %struct.gs_state_s** %saved, align 8, !tbaa !1
  %call468 = call i32 @gs_newpath(%struct.gs_state_s* %179) #5
  store i32 %call468, i32* %code, align 4, !tbaa !42
  %180 = load i32, i32* %code, align 4, !tbaa !42
  %cmp469 = icmp slt i32 %180, 0
  br i1 %cmp469, label %if.then.471, label %if.end.472

if.then.471:                                      ; preds = %if.end.467
  br label %fsaved

if.end.472:                                       ; preds = %if.end.467
  %181 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call473 = call i64 @gs_next_ids(%struct.gs_memory_s* %181, i32 1) #5
  %id = getelementptr inbounds %struct.gs_pattern1_instance_s, %struct.gs_pattern1_instance_s* %inst, i32 0, i32 13
  store i64 %call473, i64* %id, align 8, !tbaa !88
  %182 = load %struct.gs_pattern1_instance_s*, %struct.gs_pattern1_instance_s** %pinst, align 8, !tbaa !1
  %183 = bitcast %struct.gs_pattern1_instance_s* %182 to i8*
  %184 = bitcast %struct.gs_pattern1_instance_s* %inst to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %183, i8* %184, i64 248, i32 8, i1 false), !tbaa.struct !89
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.475

fsaved:                                           ; preds = %cleanup.311, %if.then.471, %if.then.465, %if.then.401, %if.then.320, %if.then.14, %sw.default, %if.then.10
  %185 = load %struct.gs_state_s*, %struct.gs_state_s** %saved, align 8, !tbaa !1
  %call474 = call i32 @gs_state_free(%struct.gs_state_s* %185) #5
  %186 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %186, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %187 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !90
  %188 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %189 = load %struct.gs_pattern1_instance_s*, %struct.gs_pattern1_instance_s** %pinst, align 8, !tbaa !1
  %190 = bitcast %struct.gs_pattern1_instance_s* %189 to i8*
  call void %187(%struct.gs_memory_s* %188, i8* %190, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i32 0, i32 0)) #5
  %191 = load i32, i32* %code, align 4, !tbaa !42
  store i32 %191, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.475

cleanup.475:                                      ; preds = %fsaved, %if.end.472, %cleanup.311, %if.then
  %192 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %192) #1
  %193 = bitcast i32* %dev_height to i8*
  call void @llvm.lifetime.end(i64 4, i8* %193) #1
  %194 = bitcast i32* %dev_width to i8*
  call void @llvm.lifetime.end(i64 4, i8* %194) #1
  %195 = bitcast %struct.gx_device_s** %pdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %195) #1
  %196 = bitcast %struct.gs_fixed_rect_s* %cbox to i8*
  call void @llvm.lifetime.end(i64 16, i8* %196) #1
  %197 = bitcast %struct.gs_rect_s* %bbox to i8*
  call void @llvm.lifetime.end(i64 32, i8* %197) #1
  %198 = bitcast %struct.gs_state_s** %saved to i8*
  call void @llvm.lifetime.end(i64 8, i8* %198) #1
  %199 = bitcast %struct.gs_pattern1_instance_s** %pinst to i8*
  call void @llvm.lifetime.end(i64 8, i8* %199) #1
  %200 = bitcast %struct.gs_pattern1_instance_s* %inst to i8*
  call void @llvm.lifetime.end(i64 248, i8* %200) #1
  %201 = bitcast %struct.gs_pattern1_template_s** %pcp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %201) #1
  %202 = load i32, i32* %retval
  ret i32 %202
}

; Function Attrs: nounwind uwtable
define i8* @gx_pattern1_get_transptr(%struct.gx_device_color_s* %pdevc) #0 {
entry:
  %pdevc.addr = alloca %struct.gx_device_color_s*, align 8
  store %struct.gx_device_color_s* %pdevc, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %0 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %colors = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %0, i32 0, i32 1
  %pattern = bitcast %union._c* %colors to %struct._pat*
  %p_tile = getelementptr inbounds %struct._pat, %struct._pat* %pattern, i32 0, i32 0
  %1 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %p_tile, align 8, !tbaa !93
  %ttrans = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %1, i32 0, i32 9
  %2 = load %struct.gx_pattern_trans_s*, %struct.gx_pattern_trans_s** %ttrans, align 8, !tbaa !95
  %3 = bitcast %struct.gx_pattern_trans_s* %2 to i8*
  ret i8* %3
}

; Function Attrs: nounwind uwtable
define i32 @gx_pattern1_clist_has_trans(%struct.gx_device_color_s* %pdevc) #0 {
entry:
  %retval = alloca i32, align 4
  %pdevc.addr = alloca %struct.gx_device_color_s*, align 8
  store %struct.gx_device_color_s* %pdevc, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %0 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %colors = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %0, i32 0, i32 1
  %pattern = bitcast %union._c* %colors to %struct._pat*
  %p_tile = getelementptr inbounds %struct._pat, %struct._pat* %pattern, i32 0, i32 0
  %1 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %p_tile, align 8, !tbaa !93
  %cdev = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %1, i32 0, i32 10
  %2 = load %union.gx_device_clist_s*, %union.gx_device_clist_s** %cdev, align 8, !tbaa !98
  %cmp = icmp ne %union.gx_device_clist_s* %2, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %colors1 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %3, i32 0, i32 1
  %pattern2 = bitcast %union._c* %colors1 to %struct._pat*
  %p_tile3 = getelementptr inbounds %struct._pat, %struct._pat* %pattern2, i32 0, i32 0
  %4 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %p_tile3, align 8, !tbaa !93
  %cdev4 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %4, i32 0, i32 10
  %5 = load %union.gx_device_clist_s*, %union.gx_device_clist_s** %cdev4, align 8, !tbaa !98
  %common = bitcast %union.gx_device_clist_s* %5 to %struct.gx_device_clist_common_s*
  %page_uses_transparency = getelementptr inbounds %struct.gx_device_clist_common_s, %struct.gx_device_clist_common_s* %common, i32 0, i32 37
  %6 = load i32, i32* %page_uses_transparency, align 4, !tbaa !99
  store i32 %6, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %7 = load i32, i32* %retval
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define i32 @gx_dc_is_pattern1_color_clist_based(%struct.gx_device_color_s* %pdevc) #0 {
entry:
  %retval = alloca i32, align 4
  %pdevc.addr = alloca %struct.gx_device_color_s*, align 8
  store %struct.gx_device_color_s* %pdevc, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %0 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %call = call i32 @gx_dc_is_pattern1_color(%struct.gx_device_color_s* %0) #5
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %colors = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %1, i32 0, i32 1
  %pattern = bitcast %union._c* %colors to %struct._pat*
  %p_tile = getelementptr inbounds %struct._pat, %struct._pat* %pattern, i32 0, i32 0
  %2 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %p_tile, align 8, !tbaa !93
  %call1 = call i32 @gx_pattern_tile_is_clist(%struct.gx_color_tile_s* %2) #5
  store i32 %call1, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load i32, i32* %retval
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define i32 @gx_dc_is_pattern1_color(%struct.gx_device_color_s* %pdevc) #0 {
entry:
  %pdevc.addr = alloca %struct.gx_device_color_s*, align 8
  store %struct.gx_device_color_s* %pdevc, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %0 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %0, i32 0, i32 0
  %1 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type, align 8, !tbaa !105
  %cmp = icmp eq %struct.gx_device_color_type_s* %1, @gx_dc_pattern
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %2 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %type1 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %2, i32 0, i32 0
  %3 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type1, align 8, !tbaa !105
  %cmp2 = icmp eq %struct.gx_device_color_type_s* %3, @gx_dc_pattern_trans
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %4 = phi i1 [ true, %entry ], [ %cmp2, %lor.rhs ]
  %lor.ext = zext i1 %4 to i32
  ret i32 %lor.ext
}

declare i32 @gx_pattern_tile_is_clist(%struct.gx_color_tile_s*) #2

; Function Attrs: nounwind uwtable
define i64 @gs_dc_get_pattern_id(%struct.gx_device_color_s* %pdevc) #0 {
entry:
  %retval = alloca i64, align 8
  %pdevc.addr = alloca %struct.gx_device_color_s*, align 8
  store %struct.gx_device_color_s* %pdevc, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %0 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %call = call i32 @gx_dc_is_pattern1_color(%struct.gx_device_color_s* %0) #5
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i64 0, i64* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %colors = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %1, i32 0, i32 1
  %pattern = bitcast %union._c* %colors to %struct._pat*
  %p_tile = getelementptr inbounds %struct._pat, %struct._pat* %pattern, i32 0, i32 0
  %2 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %p_tile, align 8, !tbaa !93
  %cmp = icmp eq %struct.gx_color_tile_s* %2, null
  br i1 %cmp, label %if.then.1, label %if.end.2

if.then.1:                                        ; preds = %if.end
  store i64 0, i64* %retval
  br label %return

if.end.2:                                         ; preds = %if.end
  %3 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %colors3 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %3, i32 0, i32 1
  %pattern4 = bitcast %union._c* %colors3 to %struct._pat*
  %p_tile5 = getelementptr inbounds %struct._pat, %struct._pat* %pattern4, i32 0, i32 0
  %4 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %p_tile5, align 8, !tbaa !93
  %id = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %4, i32 0, i32 0
  %5 = load i64, i64* %id, align 8, !tbaa !109
  store i64 %5, i64* %retval
  br label %return

return:                                           ; preds = %if.end.2, %if.then.1, %if.then
  %6 = load i64, i64* %retval
  ret i64 %6
}

; Function Attrs: nounwind uwtable
define %struct.gs_pattern1_template_s* @gs_getpattern(%struct.gs_client_color_s* %pcc) #0 {
entry:
  %pcc.addr = alloca %struct.gs_client_color_s*, align 8
  %pinst = alloca %struct.gs_pattern_instance_s*, align 8
  store %struct.gs_client_color_s* %pcc, %struct.gs_client_color_s** %pcc.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_pattern_instance_s** %pinst to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pcc.addr, align 8, !tbaa !1
  %pattern = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %1, i32 0, i32 0
  %2 = load %struct.gs_pattern_instance_s*, %struct.gs_pattern_instance_s** %pattern, align 8, !tbaa !44
  store %struct.gs_pattern_instance_s* %2, %struct.gs_pattern_instance_s** %pinst, align 8, !tbaa !1
  %3 = load %struct.gs_pattern_instance_s*, %struct.gs_pattern_instance_s** %pinst, align 8, !tbaa !1
  %cmp = icmp eq %struct.gs_pattern_instance_s* %3, null
  br i1 %cmp, label %cond.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %4 = load %struct.gs_pattern_instance_s*, %struct.gs_pattern_instance_s** %pinst, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gs_pattern_instance_s, %struct.gs_pattern_instance_s* %4, i32 0, i32 1
  %5 = load %struct.gs_pattern_type_s*, %struct.gs_pattern_type_s** %type, align 8, !tbaa !110
  %cmp1 = icmp ne %struct.gs_pattern_type_s* %5, @gs_pattern1_type
  br i1 %cmp1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false, %entry
  br label %cond.end

cond.false:                                       ; preds = %lor.lhs.false
  %6 = load %struct.gs_pattern_instance_s*, %struct.gs_pattern_instance_s** %pinst, align 8, !tbaa !1
  %7 = bitcast %struct.gs_pattern_instance_s* %6 to %struct.gs_pattern1_instance_s*
  %templat = getelementptr inbounds %struct.gs_pattern1_instance_s, %struct.gs_pattern1_instance_s* %7, i32 0, i32 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.gs_pattern1_template_s* [ null, %cond.true ], [ %templat, %cond.false ]
  %8 = bitcast %struct.gs_pattern_instance_s** %pinst to i8*
  call void @llvm.lifetime.end(i64 8, i8* %8) #1
  ret %struct.gs_pattern1_template_s* %cond
}

declare %struct.gs_ptr_procs_s* @basic_enum_ptrs(%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #2

declare void @basic_reloc_ptrs(i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #2

; Function Attrs: nounwind uwtable
define i32 @pixmap_high_level_pattern(%struct.gs_state_s* %pgs) #0 {
entry:
  %retval = alloca i32, align 4
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %m = alloca %struct.gs_matrix_s, align 4
  %bbox = alloca %struct.gs_rect_s, align 8
  %clip_box = alloca %struct.gs_fixed_rect_s, align 4
  %code = alloca i32, align 4
  %pdc = alloca %struct.gx_device_color_s*, align 8
  %ppat = alloca %struct.gs_pattern1_template_s*, align 8
  %pcs = alloca %struct.gs_color_space_s*, align 8
  %pinst = alloca %struct.gs_pattern1_instance_s*, align 8
  %ppmap = alloca %struct.pixmap_info_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_matrix_s* %m to i8*
  call void @llvm.lifetime.start(i64 24, i8* %0) #1
  %1 = bitcast %struct.gs_rect_s* %bbox to i8*
  call void @llvm.lifetime.start(i64 32, i8* %1) #1
  %2 = bitcast %struct.gs_fixed_rect_s* %clip_box to i8*
  call void @llvm.lifetime.start(i64 16, i8* %2) #1
  %3 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast %struct.gx_device_color_s** %pdc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %color = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %5, i32 0, i32 69
  %arrayidx = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* %color, i32 0, i64 0
  %dev_color = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx, i32 0, i32 2
  %6 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %dev_color, align 8, !tbaa !112
  store %struct.gx_device_color_s* %6, %struct.gx_device_color_s** %pdc, align 8, !tbaa !1
  %7 = bitcast %struct.gs_pattern1_template_s** %ppat to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc, align 8, !tbaa !1
  %ccolor = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %8, i32 0, i32 4
  %call = call %struct.gs_pattern1_template_s* @gs_getpattern(%struct.gs_client_color_s* %ccolor) #5
  store %struct.gs_pattern1_template_s* %call, %struct.gs_pattern1_template_s** %ppat, align 8, !tbaa !1
  %9 = bitcast %struct.gs_color_space_s** %pcs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = bitcast %struct.gs_pattern1_instance_s** %pinst to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  %11 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %call1 = call %struct.gs_client_color_s* @gs_currentcolor(%struct.gs_state_s* %11) #5
  %pattern = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %call1, i32 0, i32 0
  %12 = load %struct.gs_pattern_instance_s*, %struct.gs_pattern_instance_s** %pattern, align 8, !tbaa !44
  %13 = bitcast %struct.gs_pattern_instance_s* %12 to %struct.gs_pattern1_instance_s*
  store %struct.gs_pattern1_instance_s* %13, %struct.gs_pattern1_instance_s** %pinst, align 8, !tbaa !1
  %14 = bitcast %struct.pixmap_info_s** %ppmap to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #1
  %15 = load %struct.gs_pattern1_template_s*, %struct.gs_pattern1_template_s** %ppat, align 8, !tbaa !1
  %client_data = getelementptr inbounds %struct.gs_pattern1_template_s, %struct.gs_pattern1_template_s* %15, i32 0, i32 3
  %16 = load i8*, i8** %client_data, align 8, !tbaa !114
  %17 = bitcast i8* %16 to %struct.pixmap_info_s*
  store %struct.pixmap_info_s* %17, %struct.pixmap_info_s** %ppmap, align 8, !tbaa !1
  %18 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %19 = bitcast %struct.gs_state_s* %18 to %struct.gs_imager_state_s*
  %20 = load %struct.gs_pattern1_instance_s*, %struct.gs_pattern1_instance_s** %pinst, align 8, !tbaa !1
  %21 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %device = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %21, i32 0, i32 78
  %22 = load %struct.gx_device_s*, %struct.gx_device_s** %device, align 8, !tbaa !19
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %22, i32 0, i32 11
  %depth = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 3
  %23 = load i16, i16* %depth, align 2, !tbaa !115
  %conv = zext i16 %23 to i32
  %call2 = call i32 @gx_pattern_cache_add_dummy_entry(%struct.gs_imager_state_s* %19, %struct.gs_pattern1_instance_s* %20, i32 %conv) #5
  store i32 %call2, i32* %code, align 4, !tbaa !42
  %24 = load i32, i32* %code, align 4, !tbaa !42
  %cmp = icmp slt i32 %24, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %25 = load i32, i32* %code, align 4, !tbaa !42
  store i32 %25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %26 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %call4 = call i32 @gs_gsave(%struct.gs_state_s* %26) #5
  store i32 %call4, i32* %code, align 4, !tbaa !42
  %27 = load i32, i32* %code, align 4, !tbaa !42
  %cmp5 = icmp slt i32 %27, 0
  br i1 %cmp5, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end
  %28 = load i32, i32* %code, align 4, !tbaa !42
  store i32 %28, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.8:                                         ; preds = %if.end
  %29 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %device9 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %29, i32 0, i32 78
  %30 = load %struct.gx_device_s*, %struct.gx_device_s** %device9, align 8, !tbaa !19
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %30, i32 0, i32 42
  %get_initial_matrix = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 1
  %31 = load void (%struct.gx_device_s*, %struct.gs_matrix_s*)*, void (%struct.gx_device_s*, %struct.gs_matrix_s*)** %get_initial_matrix, align 8, !tbaa !116
  %32 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %device10 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %32, i32 0, i32 78
  %33 = load %struct.gx_device_s*, %struct.gx_device_s** %device10, align 8, !tbaa !19
  call void %31(%struct.gx_device_s* %33, %struct.gs_matrix_s* %m) #5
  %34 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %call11 = call i32 @gs_setmatrix(%struct.gs_state_s* %34, %struct.gs_matrix_s* %m) #5
  %35 = load %struct.gs_pattern1_template_s*, %struct.gs_pattern1_template_s** %ppat, align 8, !tbaa !1
  %BBox = getelementptr inbounds %struct.gs_pattern1_template_s, %struct.gs_pattern1_template_s* %35, i32 0, i32 7
  %36 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %ctm = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %36, i32 0, i32 5
  %37 = bitcast %struct.gs_matrix_fixed_s* %ctm to %struct.gs_matrix_s*
  %call12 = call i32 @gs_bbox_transform(%struct.gs_rect_s* %BBox, %struct.gs_matrix_s* %37, %struct.gs_rect_s* %bbox) #5
  store i32 %call12, i32* %code, align 4, !tbaa !42
  %38 = load i32, i32* %code, align 4, !tbaa !42
  %cmp13 = icmp slt i32 %38, 0
  br i1 %cmp13, label %if.then.15, label %if.end.17

if.then.15:                                       ; preds = %if.end.8
  %39 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %call16 = call i32 @gs_grestore(%struct.gs_state_s* %39) #5
  %40 = load i32, i32* %code, align 4, !tbaa !42
  store i32 %40, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.17:                                        ; preds = %if.end.8
  %p = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %bbox, i32 0, i32 0
  %x = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p, i32 0, i32 0
  %41 = load double, double* %x, align 8, !tbaa !66
  %mul = fmul double %41, 2.560000e+02
  %conv18 = fptosi double %mul to i32
  %p19 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %clip_box, i32 0, i32 0
  %x20 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p19, i32 0, i32 0
  store i32 %conv18, i32* %x20, align 4, !tbaa !83
  %p21 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %bbox, i32 0, i32 0
  %y = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p21, i32 0, i32 1
  %42 = load double, double* %y, align 8, !tbaa !68
  %mul22 = fmul double %42, 2.560000e+02
  %conv23 = fptosi double %mul22 to i32
  %p24 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %clip_box, i32 0, i32 0
  %y25 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p24, i32 0, i32 1
  store i32 %conv23, i32* %y25, align 4, !tbaa !85
  %q = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %bbox, i32 0, i32 1
  %x26 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q, i32 0, i32 0
  %43 = load double, double* %x26, align 8, !tbaa !65
  %mul27 = fmul double %43, 2.560000e+02
  %conv28 = fptosi double %mul27 to i32
  %q29 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %clip_box, i32 0, i32 1
  %x30 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q29, i32 0, i32 0
  store i32 %conv28, i32* %x30, align 4, !tbaa !86
  %q31 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %bbox, i32 0, i32 1
  %y32 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q31, i32 0, i32 1
  %44 = load double, double* %y32, align 8, !tbaa !67
  %mul33 = fmul double %44, 2.560000e+02
  %conv34 = fptosi double %mul33 to i32
  %q35 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %clip_box, i32 0, i32 1
  %y36 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q35, i32 0, i32 1
  store i32 %conv34, i32* %y36, align 4, !tbaa !87
  %45 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %call37 = call i32 @gx_clip_to_rectangle(%struct.gs_state_s* %45, %struct.gs_fixed_rect_s* %clip_box) #5
  store i32 %call37, i32* %code, align 4, !tbaa !42
  %46 = load i32, i32* %code, align 4, !tbaa !42
  %cmp38 = icmp slt i32 %46, 0
  br i1 %cmp38, label %if.then.40, label %if.end.42

if.then.40:                                       ; preds = %if.end.17
  %47 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %call41 = call i32 @gs_grestore(%struct.gs_state_s* %47) #5
  %48 = load i32, i32* %code, align 4, !tbaa !42
  store i32 %48, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.42:                                        ; preds = %if.end.17
  %49 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %device43 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %49, i32 0, i32 78
  %50 = load %struct.gx_device_s*, %struct.gx_device_s** %device43, align 8, !tbaa !19
  %procs44 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %50, i32 0, i32 42
  %dev_spec_op = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs44, i32 0, i32 65
  %51 = load i32 (%struct.gx_device_s*, i32, i8*, i32)*, i32 (%struct.gx_device_s*, i32, i8*, i32)** %dev_spec_op, align 8, !tbaa !117
  %52 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %device45 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %52, i32 0, i32 78
  %53 = load %struct.gx_device_s*, %struct.gx_device_s** %device45, align 8, !tbaa !19
  %54 = load %struct.gs_pattern1_instance_s*, %struct.gs_pattern1_instance_s** %pinst, align 8, !tbaa !1
  %55 = bitcast %struct.gs_pattern1_instance_s* %54 to i8*
  %56 = load %struct.gs_pattern1_instance_s*, %struct.gs_pattern1_instance_s** %pinst, align 8, !tbaa !1
  %id = getelementptr inbounds %struct.gs_pattern1_instance_s, %struct.gs_pattern1_instance_s* %56, i32 0, i32 13
  %57 = load i64, i64* %id, align 8, !tbaa !88
  %conv46 = trunc i64 %57 to i32
  %call47 = call i32 %51(%struct.gx_device_s* %53, i32 1, i8* %55, i32 %conv46) #5
  store i32 %call47, i32* %code, align 4, !tbaa !42
  %58 = load i32, i32* %code, align 4, !tbaa !42
  %cmp48 = icmp slt i32 %58, 0
  br i1 %cmp48, label %if.then.50, label %if.end.52

if.then.50:                                       ; preds = %if.end.42
  %59 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %call51 = call i32 @gs_grestore(%struct.gs_state_s* %59) #5
  %60 = load i32, i32* %code, align 4, !tbaa !42
  store i32 %60, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.52:                                        ; preds = %if.end.42
  %61 = load %struct.pixmap_info_s*, %struct.pixmap_info_s** %ppmap, align 8, !tbaa !1
  %pcspace = getelementptr inbounds %struct.pixmap_info_s, %struct.pixmap_info_s* %61, i32 0, i32 1
  %62 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcspace, align 8, !tbaa !118
  %cmp53 = icmp ne %struct.gs_color_space_s* %62, null
  br i1 %cmp53, label %if.then.55, label %if.else

if.then.55:                                       ; preds = %if.end.52
  %63 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc, align 8, !tbaa !1
  %ccolor56 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %63, i32 0, i32 4
  %64 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %call57 = call i32 @image_PaintProc(%struct.gs_client_color_s* %ccolor56, %struct.gs_state_s* %64) #5
  store i32 %call57, i32* %code, align 4, !tbaa !42
  br label %if.end.62

if.else:                                          ; preds = %if.end.52
  %65 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %65, i32 0, i32 1
  %66 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !121
  %call58 = call %struct.gs_color_space_s* @gs_cspace_new_DeviceGray(%struct.gs_memory_s* %66) #5
  store %struct.gs_color_space_s* %call58, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %67 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %68 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %call59 = call i32 @gs_setcolorspace(%struct.gs_state_s* %67, %struct.gs_color_space_s* %68) #5
  %69 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc, align 8, !tbaa !1
  %ccolor60 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %69, i32 0, i32 4
  %70 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %call61 = call i32 @mask_PaintProc(%struct.gs_client_color_s* %ccolor60, %struct.gs_state_s* %70) #5
  store i32 %call61, i32* %code, align 4, !tbaa !42
  br label %if.end.62

if.end.62:                                        ; preds = %if.else, %if.then.55
  %71 = load i32, i32* %code, align 4, !tbaa !42
  %cmp63 = icmp slt i32 %71, 0
  br i1 %cmp63, label %if.then.65, label %if.end.66

if.then.65:                                       ; preds = %if.end.62
  %72 = load i32, i32* %code, align 4, !tbaa !42
  store i32 %72, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.66:                                        ; preds = %if.end.62
  %73 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %call67 = call i32 @gs_grestore(%struct.gs_state_s* %73) #5
  store i32 %call67, i32* %code, align 4, !tbaa !42
  %74 = load i32, i32* %code, align 4, !tbaa !42
  %cmp68 = icmp slt i32 %74, 0
  br i1 %cmp68, label %if.then.70, label %if.end.71

if.then.70:                                       ; preds = %if.end.66
  %75 = load i32, i32* %code, align 4, !tbaa !42
  store i32 %75, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.71:                                        ; preds = %if.end.66
  %76 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %device72 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %76, i32 0, i32 78
  %77 = load %struct.gx_device_s*, %struct.gx_device_s** %device72, align 8, !tbaa !19
  %procs73 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %77, i32 0, i32 42
  %dev_spec_op74 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs73, i32 0, i32 65
  %78 = load i32 (%struct.gx_device_s*, i32, i8*, i32)*, i32 (%struct.gx_device_s*, i32, i8*, i32)** %dev_spec_op74, align 8, !tbaa !117
  %79 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %device75 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %79, i32 0, i32 78
  %80 = load %struct.gx_device_s*, %struct.gx_device_s** %device75, align 8, !tbaa !19
  %call76 = call i32 %78(%struct.gx_device_s* %80, i32 2, i8* null, i32 0) #5
  store i32 %call76, i32* %code, align 4, !tbaa !42
  %81 = load i32, i32* %code, align 4, !tbaa !42
  store i32 %81, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.71, %if.then.70, %if.then.65, %if.then.50, %if.then.40, %if.then.15, %if.then.7, %if.then
  %82 = bitcast %struct.pixmap_info_s** %ppmap to i8*
  call void @llvm.lifetime.end(i64 8, i8* %82) #1
  %83 = bitcast %struct.gs_pattern1_instance_s** %pinst to i8*
  call void @llvm.lifetime.end(i64 8, i8* %83) #1
  %84 = bitcast %struct.gs_color_space_s** %pcs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %84) #1
  %85 = bitcast %struct.gs_pattern1_template_s** %ppat to i8*
  call void @llvm.lifetime.end(i64 8, i8* %85) #1
  %86 = bitcast %struct.gx_device_color_s** %pdc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %86) #1
  %87 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %87) #1
  %88 = bitcast %struct.gs_fixed_rect_s* %clip_box to i8*
  call void @llvm.lifetime.end(i64 16, i8* %88) #1
  %89 = bitcast %struct.gs_rect_s* %bbox to i8*
  call void @llvm.lifetime.end(i64 32, i8* %89) #1
  %90 = bitcast %struct.gs_matrix_s* %m to i8*
  call void @llvm.lifetime.end(i64 24, i8* %90) #1
  %91 = load i32, i32* %retval
  ret i32 %91
}

declare %struct.gs_client_color_s* @gs_currentcolor(%struct.gs_state_s*) #2

declare i32 @gx_pattern_cache_add_dummy_entry(%struct.gs_imager_state_s*, %struct.gs_pattern1_instance_s*, i32) #2

declare i32 @gs_gsave(%struct.gs_state_s*) #2

declare i32 @gs_setmatrix(%struct.gs_state_s*, %struct.gs_matrix_s*) #2

declare i32 @gs_bbox_transform(%struct.gs_rect_s*, %struct.gs_matrix_s*, %struct.gs_rect_s*) #2

declare i32 @gs_grestore(%struct.gs_state_s*) #2

declare i32 @gx_clip_to_rectangle(%struct.gs_state_s*, %struct.gs_fixed_rect_s*) #2

; Function Attrs: nounwind uwtable
define internal i32 @image_PaintProc(%struct.gs_client_color_s* %pcolor, %struct.gs_state_s* %pgs) #0 {
entry:
  %retval = alloca i32, align 4
  %pcolor.addr = alloca %struct.gs_client_color_s*, align 8
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %ppmap = alloca %struct.pixmap_info_s*, align 8
  %pbitmap = alloca %struct.gs_depth_bitmap_s*, align 8
  %pen = alloca %struct.gs_image_enum_s*, align 8
  %pcspace = alloca %struct.gs_color_space_s*, align 8
  %pie = alloca %struct.gx_image_enum_common_s*, align 8
  %transparent = alloca i32, align 4
  %image = alloca %union.anon.2, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_client_color_s* %pcolor, %struct.gs_client_color_s** %pcolor.addr, align 8, !tbaa !1
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %0 = bitcast %struct.pixmap_info_s** %ppmap to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pcolor.addr, align 8, !tbaa !1
  %call = call %struct.gs_pattern1_template_s* @gs_getpattern(%struct.gs_client_color_s* %1) #5
  %client_data = getelementptr inbounds %struct.gs_pattern1_template_s, %struct.gs_pattern1_template_s* %call, i32 0, i32 3
  %2 = load i8*, i8** %client_data, align 8, !tbaa !114
  %3 = bitcast i8* %2 to %struct.pixmap_info_s*
  store %struct.pixmap_info_s* %3, %struct.pixmap_info_s** %ppmap, align 8, !tbaa !1
  %4 = bitcast %struct.gs_depth_bitmap_s** %pbitmap to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load %struct.pixmap_info_s*, %struct.pixmap_info_s** %ppmap, align 8, !tbaa !1
  %bitmap = getelementptr inbounds %struct.pixmap_info_s, %struct.pixmap_info_s* %5, i32 0, i32 0
  store %struct.gs_depth_bitmap_s* %bitmap, %struct.gs_depth_bitmap_s** %pbitmap, align 8, !tbaa !1
  %6 = bitcast %struct.gs_image_enum_s** %pen to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %call1 = call %struct.gs_memory_s* @gs_state_memory(%struct.gs_state_s* %7) #5
  %call2 = call %struct.gs_image_enum_s* @gs_image_enum_alloc(%struct.gs_memory_s* %call1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i32 0, i32 0)) #5
  store %struct.gs_image_enum_s* %call2, %struct.gs_image_enum_s** %pen, align 8, !tbaa !1
  %8 = bitcast %struct.gs_color_space_s** %pcspace to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  %9 = bitcast %struct.gx_image_enum_common_s** %pie to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = bitcast i32* %transparent to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = load %struct.pixmap_info_s*, %struct.pixmap_info_s** %ppmap, align 8, !tbaa !1
  %white_index = getelementptr inbounds %struct.pixmap_info_s, %struct.pixmap_info_s* %11, i32 0, i32 2
  %12 = load i32, i32* %white_index, align 4, !tbaa !122
  %13 = load %struct.gs_depth_bitmap_s*, %struct.gs_depth_bitmap_s** %pbitmap, align 8, !tbaa !1
  %num_comps = getelementptr inbounds %struct.gs_depth_bitmap_s, %struct.gs_depth_bitmap_s* %13, i32 0, i32 5
  %14 = load i8, i8* %num_comps, align 1, !tbaa !123
  %conv = zext i8 %14 to i32
  %15 = load %struct.gs_depth_bitmap_s*, %struct.gs_depth_bitmap_s** %pbitmap, align 8, !tbaa !1
  %pix_depth = getelementptr inbounds %struct.gs_depth_bitmap_s, %struct.gs_depth_bitmap_s* %15, i32 0, i32 4
  %16 = load i8, i8* %pix_depth, align 1, !tbaa !124
  %conv3 = zext i8 %16 to i32
  %mul = mul nsw i32 %conv, %conv3
  %shl = shl i32 1, %mul
  %cmp = icmp ult i32 %12, %shl
  %conv4 = zext i1 %cmp to i32
  store i32 %conv4, i32* %transparent, align 4, !tbaa !42
  %17 = bitcast %union.anon.2* %image to i8*
  call void @llvm.lifetime.start(i64 1112, i8* %17) #1
  %18 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #1
  %19 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %pen, align 8, !tbaa !1
  %cmp5 = icmp eq %struct.gs_image_enum_s* %19, null
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %20 = load %struct.pixmap_info_s*, %struct.pixmap_info_s** %ppmap, align 8, !tbaa !1
  %pcspace7 = getelementptr inbounds %struct.pixmap_info_s, %struct.pixmap_info_s* %20, i32 0, i32 1
  %21 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcspace7, align 8, !tbaa !118
  %cmp8 = icmp eq %struct.gs_color_space_s* %21, null
  br i1 %cmp8, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %if.end
  %22 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %22, i32 0, i32 1
  %23 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !121
  %call11 = call %struct.gs_color_space_s* @gs_cspace_new_DeviceGray(%struct.gs_memory_s* %23) #5
  store %struct.gs_color_space_s* %call11, %struct.gs_color_space_s** %pcspace, align 8, !tbaa !1
  br label %if.end.13

if.else:                                          ; preds = %if.end
  %24 = load %struct.pixmap_info_s*, %struct.pixmap_info_s** %ppmap, align 8, !tbaa !1
  %pcspace12 = getelementptr inbounds %struct.pixmap_info_s, %struct.pixmap_info_s* %24, i32 0, i32 1
  %25 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcspace12, align 8, !tbaa !118
  store %struct.gs_color_space_s* %25, %struct.gs_color_space_s** %pcspace, align 8, !tbaa !1
  br label %if.end.13

if.end.13:                                        ; preds = %if.else, %if.then.10
  %26 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %call14 = call i32 @gs_gsave(%struct.gs_state_s* %26) #5
  store i32 %call14, i32* %code, align 4, !tbaa !42
  %27 = load i32, i32* %code, align 4, !tbaa !42
  %cmp15 = icmp slt i32 %27, 0
  br i1 %cmp15, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.end.13
  %28 = load i32, i32* %code, align 4, !tbaa !42
  store i32 %28, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.18:                                        ; preds = %if.end.13
  %29 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %30 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcspace, align 8, !tbaa !1
  %call19 = call i32 @gs_setcolorspace(%struct.gs_state_s* %29, %struct.gs_color_space_s* %30) #5
  store i32 %call19, i32* %code, align 4, !tbaa !42
  %31 = load i32, i32* %code, align 4, !tbaa !42
  %cmp20 = icmp slt i32 %31, 0
  br i1 %cmp20, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %if.end.18
  %32 = load i32, i32* %code, align 4, !tbaa !42
  store i32 %32, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.23:                                        ; preds = %if.end.18
  %33 = load i32, i32* %transparent, align 4, !tbaa !42
  %tobool = icmp ne i32 %33, 0
  br i1 %tobool, label %if.then.24, label %if.else.25

if.then.24:                                       ; preds = %if.end.23
  %34 = bitcast %union.anon.2* %image to %struct.gs_image4_s*
  %35 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcspace, align 8, !tbaa !1
  call void @gs_image4_t_init(%struct.gs_image4_s* %34, %struct.gs_color_space_s* %35) #5
  br label %if.end.26

if.else.25:                                       ; preds = %if.end.23
  %36 = bitcast %union.anon.2* %image to %struct.gs_image1_s*
  %37 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcspace, align 8, !tbaa !1
  call void @gs_image_t_init_adjust(%struct.gs_image1_s* %36, %struct.gs_color_space_s* %37, i32 0) #5
  br label %if.end.26

if.end.26:                                        ; preds = %if.else.25, %if.then.24
  %38 = load %struct.gs_depth_bitmap_s*, %struct.gs_depth_bitmap_s** %pbitmap, align 8, !tbaa !1
  %size = getelementptr inbounds %struct.gs_depth_bitmap_s, %struct.gs_depth_bitmap_s* %38, i32 0, i32 2
  %x = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %size, i32 0, i32 0
  %39 = load i32, i32* %x, align 4, !tbaa !125
  %i1 = bitcast %union.anon.2* %image to %struct.gs_image1_s*
  %Width = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %i1, i32 0, i32 2
  store i32 %39, i32* %Width, align 4, !tbaa !126
  %40 = load %struct.gs_depth_bitmap_s*, %struct.gs_depth_bitmap_s** %pbitmap, align 8, !tbaa !1
  %size27 = getelementptr inbounds %struct.gs_depth_bitmap_s, %struct.gs_depth_bitmap_s* %40, i32 0, i32 2
  %y = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %size27, i32 0, i32 1
  %41 = load i32, i32* %y, align 4, !tbaa !128
  %i128 = bitcast %union.anon.2* %image to %struct.gs_image1_s*
  %Height = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %i128, i32 0, i32 3
  store i32 %41, i32* %Height, align 4, !tbaa !129
  %42 = load i32, i32* %transparent, align 4, !tbaa !42
  %tobool29 = icmp ne i32 %42, 0
  br i1 %tobool29, label %if.then.30, label %if.end.33

if.then.30:                                       ; preds = %if.end.26
  %i4 = bitcast %union.anon.2* %image to %struct.gs_image4_s*
  %MaskColor_is_range = getelementptr inbounds %struct.gs_image4_s, %struct.gs_image4_s* %i4, i32 0, i32 10
  store i32 0, i32* %MaskColor_is_range, align 4, !tbaa !130
  %43 = load %struct.pixmap_info_s*, %struct.pixmap_info_s** %ppmap, align 8, !tbaa !1
  %white_index31 = getelementptr inbounds %struct.pixmap_info_s, %struct.pixmap_info_s* %43, i32 0, i32 2
  %44 = load i32, i32* %white_index31, align 4, !tbaa !122
  %i432 = bitcast %union.anon.2* %image to %struct.gs_image4_s*
  %MaskColor = getelementptr inbounds %struct.gs_image4_s, %struct.gs_image4_s* %i432, i32 0, i32 11
  %arrayidx = getelementptr inbounds [130 x i32], [130 x i32]* %MaskColor, i32 0, i64 0
  store i32 %44, i32* %arrayidx, align 4, !tbaa !42
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.30, %if.end.26
  %i134 = bitcast %union.anon.2* %image to %struct.gs_image1_s*
  %Decode = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %i134, i32 0, i32 5
  %arrayidx35 = getelementptr inbounds [130 x float], [130 x float]* %Decode, i32 0, i64 0
  store float 0.000000e+00, float* %arrayidx35, align 4, !tbaa !55
  %45 = load %struct.gs_depth_bitmap_s*, %struct.gs_depth_bitmap_s** %pbitmap, align 8, !tbaa !1
  %pix_depth36 = getelementptr inbounds %struct.gs_depth_bitmap_s, %struct.gs_depth_bitmap_s* %45, i32 0, i32 4
  %46 = load i8, i8* %pix_depth36, align 1, !tbaa !124
  %conv37 = zext i8 %46 to i32
  %shl38 = shl i32 1, %conv37
  %sub = sub nsw i32 %shl38, 1
  %conv39 = sitofp i32 %sub to float
  %i140 = bitcast %union.anon.2* %image to %struct.gs_image1_s*
  %Decode41 = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %i140, i32 0, i32 5
  %arrayidx42 = getelementptr inbounds [130 x float], [130 x float]* %Decode41, i32 0, i64 1
  store float %conv39, float* %arrayidx42, align 4, !tbaa !55
  %47 = load %struct.gs_depth_bitmap_s*, %struct.gs_depth_bitmap_s** %pbitmap, align 8, !tbaa !1
  %pix_depth43 = getelementptr inbounds %struct.gs_depth_bitmap_s, %struct.gs_depth_bitmap_s* %47, i32 0, i32 4
  %48 = load i8, i8* %pix_depth43, align 1, !tbaa !124
  %conv44 = zext i8 %48 to i32
  %i145 = bitcast %union.anon.2* %image to %struct.gs_image1_s*
  %BitsPerComponent = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %i145, i32 0, i32 4
  store i32 %conv44, i32* %BitsPerComponent, align 4, !tbaa !132
  %49 = load %struct.pixmap_info_s*, %struct.pixmap_info_s** %ppmap, align 8, !tbaa !1
  %pcspace46 = getelementptr inbounds %struct.pixmap_info_s, %struct.pixmap_info_s* %49, i32 0, i32 1
  %50 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcspace46, align 8, !tbaa !118
  %cmp47 = icmp eq %struct.gs_color_space_s* %50, null
  br i1 %cmp47, label %if.then.49, label %if.end.56

if.then.49:                                       ; preds = %if.end.33
  %i150 = bitcast %union.anon.2* %image to %struct.gs_image1_s*
  %Decode51 = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %i150, i32 0, i32 5
  %arrayidx52 = getelementptr inbounds [130 x float], [130 x float]* %Decode51, i32 0, i64 0
  store float 1.000000e+00, float* %arrayidx52, align 4, !tbaa !55
  %i153 = bitcast %union.anon.2* %image to %struct.gs_image1_s*
  %Decode54 = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %i153, i32 0, i32 5
  %arrayidx55 = getelementptr inbounds [130 x float], [130 x float]* %Decode54, i32 0, i64 1
  store float 0.000000e+00, float* %arrayidx55, align 4, !tbaa !55
  br label %if.end.56

if.end.56:                                        ; preds = %if.then.49, %if.end.33
  %51 = bitcast %union.anon.2* %image to %struct.gs_image_common_s*
  %52 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %call57 = call i32 @gs_image_begin_typed(%struct.gs_image_common_s* %51, %struct.gs_state_s* %52, i32 0, %struct.gx_image_enum_common_s** %pie) #5
  store i32 %call57, i32* %code, align 4, !tbaa !42
  %cmp58 = icmp sge i32 %call57, 0
  br i1 %cmp58, label %land.lhs.true, label %if.end.65

land.lhs.true:                                    ; preds = %if.end.56
  %53 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %pen, align 8, !tbaa !1
  %54 = load %struct.gx_image_enum_common_s*, %struct.gx_image_enum_common_s** %pie, align 8, !tbaa !1
  %55 = bitcast %union.anon.2* %image to %struct.gs_data_image_s*
  %56 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %call60 = call i32 @gs_image_enum_init(%struct.gs_image_enum_s* %53, %struct.gx_image_enum_common_s* %54, %struct.gs_data_image_s* %55, %struct.gs_state_s* %56) #5
  store i32 %call60, i32* %code, align 4, !tbaa !42
  %cmp61 = icmp sge i32 %call60, 0
  br i1 %cmp61, label %if.then.63, label %if.end.65

if.then.63:                                       ; preds = %land.lhs.true
  %57 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %pen, align 8, !tbaa !1
  %58 = bitcast %union.anon.2* %image to %struct.gs_data_image_s*
  %59 = load %struct.gs_depth_bitmap_s*, %struct.gs_depth_bitmap_s** %pbitmap, align 8, !tbaa !1
  %60 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %call64 = call i32 @bitmap_paint(%struct.gs_image_enum_s* %57, %struct.gs_data_image_s* %58, %struct.gs_depth_bitmap_s* %59, %struct.gs_state_s* %60) #5
  store i32 %call64, i32* %code, align 4, !tbaa !42
  br label %if.end.65

if.end.65:                                        ; preds = %if.then.63, %land.lhs.true, %if.end.56
  %61 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %call66 = call i32 @gs_grestore(%struct.gs_state_s* %61) #5
  %62 = load i32, i32* %code, align 4, !tbaa !42
  store i32 %62, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.65, %if.then.22, %if.then.17, %if.then
  %63 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %63) #1
  %64 = bitcast %union.anon.2* %image to i8*
  call void @llvm.lifetime.end(i64 1112, i8* %64) #1
  %65 = bitcast i32* %transparent to i8*
  call void @llvm.lifetime.end(i64 4, i8* %65) #1
  %66 = bitcast %struct.gx_image_enum_common_s** %pie to i8*
  call void @llvm.lifetime.end(i64 8, i8* %66) #1
  %67 = bitcast %struct.gs_color_space_s** %pcspace to i8*
  call void @llvm.lifetime.end(i64 8, i8* %67) #1
  %68 = bitcast %struct.gs_image_enum_s** %pen to i8*
  call void @llvm.lifetime.end(i64 8, i8* %68) #1
  %69 = bitcast %struct.gs_depth_bitmap_s** %pbitmap to i8*
  call void @llvm.lifetime.end(i64 8, i8* %69) #1
  %70 = bitcast %struct.pixmap_info_s** %ppmap to i8*
  call void @llvm.lifetime.end(i64 8, i8* %70) #1
  %71 = load i32, i32* %retval
  ret i32 %71
}

declare %struct.gs_color_space_s* @gs_cspace_new_DeviceGray(%struct.gs_memory_s*) #2

declare i32 @gs_setcolorspace(%struct.gs_state_s*, %struct.gs_color_space_s*) #2

; Function Attrs: nounwind uwtable
define internal i32 @mask_PaintProc(%struct.gs_client_color_s* %pcolor, %struct.gs_state_s* %pgs) #0 {
entry:
  %retval = alloca i32, align 4
  %pcolor.addr = alloca %struct.gs_client_color_s*, align 8
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %ppmap = alloca %struct.pixmap_info_s*, align 8
  %pbitmap = alloca %struct.gs_depth_bitmap_s*, align 8
  %pen = alloca %struct.gs_image_enum_s*, align 8
  %mask = alloca %struct.gs_image1_s, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_client_color_s* %pcolor, %struct.gs_client_color_s** %pcolor.addr, align 8, !tbaa !1
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %0 = bitcast %struct.pixmap_info_s** %ppmap to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pcolor.addr, align 8, !tbaa !1
  %call = call %struct.gs_pattern1_template_s* @gs_getpattern(%struct.gs_client_color_s* %1) #5
  %client_data = getelementptr inbounds %struct.gs_pattern1_template_s, %struct.gs_pattern1_template_s* %call, i32 0, i32 3
  %2 = load i8*, i8** %client_data, align 8, !tbaa !114
  %3 = bitcast i8* %2 to %struct.pixmap_info_s*
  store %struct.pixmap_info_s* %3, %struct.pixmap_info_s** %ppmap, align 8, !tbaa !1
  %4 = bitcast %struct.gs_depth_bitmap_s** %pbitmap to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load %struct.pixmap_info_s*, %struct.pixmap_info_s** %ppmap, align 8, !tbaa !1
  %bitmap = getelementptr inbounds %struct.pixmap_info_s, %struct.pixmap_info_s* %5, i32 0, i32 0
  store %struct.gs_depth_bitmap_s* %bitmap, %struct.gs_depth_bitmap_s** %pbitmap, align 8, !tbaa !1
  %6 = bitcast %struct.gs_image_enum_s** %pen to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %call1 = call %struct.gs_memory_s* @gs_state_memory(%struct.gs_state_s* %7) #5
  %call2 = call %struct.gs_image_enum_s* @gs_image_enum_alloc(%struct.gs_memory_s* %call1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i32 0, i32 0)) #5
  store %struct.gs_image_enum_s* %call2, %struct.gs_image_enum_s** %pen, align 8, !tbaa !1
  %8 = bitcast %struct.gs_image1_s* %mask to i8*
  call void @llvm.lifetime.start(i64 600, i8* %8) #1
  %9 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %pen, align 8, !tbaa !1
  %cmp = icmp eq %struct.gs_image_enum_s* %9, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @gs_image_t_init_mask_adjust(%struct.gs_image1_s* %mask, i32 1, i32 1) #5
  %10 = load %struct.gs_depth_bitmap_s*, %struct.gs_depth_bitmap_s** %pbitmap, align 8, !tbaa !1
  %size = getelementptr inbounds %struct.gs_depth_bitmap_s, %struct.gs_depth_bitmap_s* %10, i32 0, i32 2
  %x = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %size, i32 0, i32 0
  %11 = load i32, i32* %x, align 4, !tbaa !125
  %Width = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %mask, i32 0, i32 2
  store i32 %11, i32* %Width, align 4, !tbaa !126
  %12 = load %struct.gs_depth_bitmap_s*, %struct.gs_depth_bitmap_s** %pbitmap, align 8, !tbaa !1
  %size3 = getelementptr inbounds %struct.gs_depth_bitmap_s, %struct.gs_depth_bitmap_s* %12, i32 0, i32 2
  %y = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %size3, i32 0, i32 1
  %13 = load i32, i32* %y, align 4, !tbaa !128
  %Height = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %mask, i32 0, i32 3
  store i32 %13, i32* %Height, align 4, !tbaa !129
  %14 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %pen, align 8, !tbaa !1
  %15 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %call4 = call i32 @gs_image_init(%struct.gs_image_enum_s* %14, %struct.gs_image1_s* %mask, i32 0, %struct.gs_state_s* %15) #5
  %16 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %pen, align 8, !tbaa !1
  %17 = bitcast %struct.gs_image1_s* %mask to %struct.gs_data_image_s*
  %18 = load %struct.gs_depth_bitmap_s*, %struct.gs_depth_bitmap_s** %pbitmap, align 8, !tbaa !1
  %19 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %call5 = call i32 @bitmap_paint(%struct.gs_image_enum_s* %16, %struct.gs_data_image_s* %17, %struct.gs_depth_bitmap_s* %18, %struct.gs_state_s* %19) #5
  store i32 %call5, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %20 = bitcast %struct.gs_image1_s* %mask to i8*
  call void @llvm.lifetime.end(i64 600, i8* %20) #1
  %21 = bitcast %struct.gs_image_enum_s** %pen to i8*
  call void @llvm.lifetime.end(i64 8, i8* %21) #1
  %22 = bitcast %struct.gs_depth_bitmap_s** %pbitmap to i8*
  call void @llvm.lifetime.end(i64 8, i8* %22) #1
  %23 = bitcast %struct.pixmap_info_s** %ppmap to i8*
  call void @llvm.lifetime.end(i64 8, i8* %23) #1
  %24 = load i32, i32* %retval
  ret i32 %24
}

; Function Attrs: nounwind uwtable
define i32 @gs_makepixmappattern(%struct.gs_client_color_s* %pcc, %struct.gs_depth_bitmap_s* %pbitmap, i32 %mask, %struct.gs_matrix_s* %pmat, i64 %id, %struct.gs_color_space_s* %pcspace, i32 %white_index, %struct.gs_state_s* %pgs, %struct.gs_memory_s* %mem) #0 {
entry:
  %retval = alloca i32, align 4
  %pcc.addr = alloca %struct.gs_client_color_s*, align 8
  %pbitmap.addr = alloca %struct.gs_depth_bitmap_s*, align 8
  %mask.addr = alloca i32, align 4
  %pmat.addr = alloca %struct.gs_matrix_s*, align 8
  %id.addr = alloca i64, align 8
  %pcspace.addr = alloca %struct.gs_color_space_s*, align 8
  %white_index.addr = alloca i32, align 4
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %pat = alloca %struct.gs_pattern1_template_s, align 8
  %ppmap = alloca %struct.pixmap_info_s*, align 8
  %mat = alloca %struct.gs_matrix_s, align 4
  %smat = alloca %struct.gs_matrix_s, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %pinst = alloca %struct.gs_pattern1_instance_s*, align 8
  store %struct.gs_client_color_s* %pcc, %struct.gs_client_color_s** %pcc.addr, align 8, !tbaa !1
  store %struct.gs_depth_bitmap_s* %pbitmap, %struct.gs_depth_bitmap_s** %pbitmap.addr, align 8, !tbaa !1
  store i32 %mask, i32* %mask.addr, align 4, !tbaa !42
  store %struct.gs_matrix_s* %pmat, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  store i64 %id, i64* %id.addr, align 8, !tbaa !48
  store %struct.gs_color_space_s* %pcspace, %struct.gs_color_space_s** %pcspace.addr, align 8, !tbaa !1
  store i32 %white_index, i32* %white_index.addr, align 4, !tbaa !42
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_pattern1_template_s* %pat to i8*
  call void @llvm.lifetime.start(i64 104, i8* %0) #1
  %1 = bitcast %struct.pixmap_info_s** %ppmap to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast %struct.gs_matrix_s* %mat to i8*
  call void @llvm.lifetime.start(i64 24, i8* %2) #1
  %3 = bitcast %struct.gs_matrix_s* %smat to i8*
  call void @llvm.lifetime.start(i64 24, i8* %3) #1
  %4 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load i32, i32* %mask.addr, align 4, !tbaa !42
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %6 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcspace.addr, align 8, !tbaa !1
  %cmp = icmp eq %struct.gs_color_space_s* %6, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  %7 = load %struct.gs_depth_bitmap_s*, %struct.gs_depth_bitmap_s** %pbitmap.addr, align 8, !tbaa !1
  %pix_depth = getelementptr inbounds %struct.gs_depth_bitmap_s, %struct.gs_depth_bitmap_s* %7, i32 0, i32 4
  %8 = load i8, i8* %pix_depth, align 1, !tbaa !124
  %conv = zext i8 %8 to i32
  %cmp1 = icmp ne i32 %conv, 1
  br i1 %cmp1, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  store %struct.gs_color_space_s* null, %struct.gs_color_space_s** %pcspace.addr, align 8, !tbaa !1
  br label %if.end.8

if.else:                                          ; preds = %lor.lhs.false
  %9 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcspace.addr, align 8, !tbaa !1
  %call = call i32 @gs_color_space_get_index(%struct.gs_color_space_s* %9) #5
  %cmp4 = icmp ne i32 %call, 10
  br i1 %cmp4, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.else
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.7:                                         ; preds = %if.else
  br label %if.end.8

if.end.8:                                         ; preds = %if.end.7, %if.end
  %10 = load %struct.gs_depth_bitmap_s*, %struct.gs_depth_bitmap_s** %pbitmap.addr, align 8, !tbaa !1
  %num_comps = getelementptr inbounds %struct.gs_depth_bitmap_s, %struct.gs_depth_bitmap_s* %10, i32 0, i32 5
  %11 = load i8, i8* %num_comps, align 1, !tbaa !123
  %conv9 = zext i8 %11 to i32
  %cmp10 = icmp ne i32 %conv9, 1
  br i1 %cmp10, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.end.8
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.13:                                        ; preds = %if.end.8
  %12 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %cmp14 = icmp eq %struct.gs_memory_s* %12, null
  br i1 %cmp14, label %if.then.16, label %if.end.18

if.then.16:                                       ; preds = %if.end.13
  %13 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %call17 = call %struct.gs_memory_s* @gs_state_memory(%struct.gs_state_s* %13) #5
  store %struct.gs_memory_s* %call17, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.16, %if.end.13
  %14 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %14, i32 0, i32 1
  %alloc_struct = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 8
  %15 = load i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct, align 8, !tbaa !133
  %16 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call19 = call i8* %15(%struct.gs_memory_s* %16, %struct.gs_memory_struct_type_s* @st_pixmap_info, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i32 0, i32 0)) #5
  %17 = bitcast i8* %call19 to %struct.pixmap_info_s*
  store %struct.pixmap_info_s* %17, %struct.pixmap_info_s** %ppmap, align 8, !tbaa !1
  %18 = load %struct.pixmap_info_s*, %struct.pixmap_info_s** %ppmap, align 8, !tbaa !1
  %cmp20 = icmp eq %struct.pixmap_info_s* %18, null
  br i1 %cmp20, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %if.end.18
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.23:                                        ; preds = %if.end.18
  %19 = load %struct.pixmap_info_s*, %struct.pixmap_info_s** %ppmap, align 8, !tbaa !1
  %bitmap = getelementptr inbounds %struct.pixmap_info_s, %struct.pixmap_info_s* %19, i32 0, i32 0
  %20 = load %struct.gs_depth_bitmap_s*, %struct.gs_depth_bitmap_s** %pbitmap.addr, align 8, !tbaa !1
  %21 = bitcast %struct.gs_depth_bitmap_s* %bitmap to i8*
  %22 = bitcast %struct.gs_depth_bitmap_s* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %21, i8* %22, i64 40, i32 8, i1 false), !tbaa.struct !134
  %23 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcspace.addr, align 8, !tbaa !1
  %24 = load %struct.pixmap_info_s*, %struct.pixmap_info_s** %ppmap, align 8, !tbaa !1
  %pcspace24 = getelementptr inbounds %struct.pixmap_info_s, %struct.pixmap_info_s* %24, i32 0, i32 1
  store %struct.gs_color_space_s* %23, %struct.gs_color_space_s** %pcspace24, align 8, !tbaa !118
  %25 = load i32, i32* %white_index.addr, align 4, !tbaa !42
  %26 = load %struct.pixmap_info_s*, %struct.pixmap_info_s** %ppmap, align 8, !tbaa !1
  %white_index25 = getelementptr inbounds %struct.pixmap_info_s, %struct.pixmap_info_s* %26, i32 0, i32 2
  store i32 %25, i32* %white_index25, align 4, !tbaa !122
  call void @gs_pattern1_init(%struct.gs_pattern1_template_s* %pat) #5
  %27 = load i64, i64* %id.addr, align 8, !tbaa !48
  %cmp26 = icmp eq i64 %27, 9223372036854775807
  br i1 %cmp26, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.23
  %28 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call28 = call i64 @gs_next_ids(%struct.gs_memory_s* %28, i32 1) #5
  br label %cond.end

cond.false:                                       ; preds = %if.end.23
  %29 = load i64, i64* %id.addr, align 8, !tbaa !48
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %call28, %cond.true ], [ %29, %cond.false ]
  %uid = getelementptr inbounds %struct.gs_pattern1_template_s, %struct.gs_pattern1_template_s* %pat, i32 0, i32 2
  %id29 = getelementptr inbounds %struct.gs_uid_s, %struct.gs_uid_s* %uid, i32 0, i32 0
  store i64 %cond, i64* %id29, align 8, !tbaa !136
  %uid30 = getelementptr inbounds %struct.gs_pattern1_template_s, %struct.gs_pattern1_template_s* %pat, i32 0, i32 2
  %xvalues = getelementptr inbounds %struct.gs_uid_s, %struct.gs_uid_s* %uid30, i32 0, i32 1
  store i64* null, i64** %xvalues, align 8, !tbaa !137
  %30 = load i32, i32* %mask.addr, align 4, !tbaa !42
  %tobool31 = icmp ne i32 %30, 0
  %cond32 = select i1 %tobool31, i32 2, i32 1
  %PaintType = getelementptr inbounds %struct.gs_pattern1_template_s, %struct.gs_pattern1_template_s* %pat, i32 0, i32 4
  store i32 %cond32, i32* %PaintType, align 4, !tbaa !52
  %TilingType = getelementptr inbounds %struct.gs_pattern1_template_s, %struct.gs_pattern1_template_s* %pat, i32 0, i32 5
  store i32 1, i32* %TilingType, align 4, !tbaa !138
  %BBox = getelementptr inbounds %struct.gs_pattern1_template_s, %struct.gs_pattern1_template_s* %pat, i32 0, i32 7
  %p = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %BBox, i32 0, i32 0
  %x = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p, i32 0, i32 0
  store double 0.000000e+00, double* %x, align 8, !tbaa !139
  %BBox33 = getelementptr inbounds %struct.gs_pattern1_template_s, %struct.gs_pattern1_template_s* %pat, i32 0, i32 7
  %p34 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %BBox33, i32 0, i32 0
  %y = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p34, i32 0, i32 1
  store double 0.000000e+00, double* %y, align 8, !tbaa !140
  %31 = load %struct.gs_depth_bitmap_s*, %struct.gs_depth_bitmap_s** %pbitmap.addr, align 8, !tbaa !1
  %size = getelementptr inbounds %struct.gs_depth_bitmap_s, %struct.gs_depth_bitmap_s* %31, i32 0, i32 2
  %x35 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %size, i32 0, i32 0
  %32 = load i32, i32* %x35, align 4, !tbaa !125
  %conv36 = sitofp i32 %32 to double
  %BBox37 = getelementptr inbounds %struct.gs_pattern1_template_s, %struct.gs_pattern1_template_s* %pat, i32 0, i32 7
  %q = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %BBox37, i32 0, i32 1
  %x38 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q, i32 0, i32 0
  store double %conv36, double* %x38, align 8, !tbaa !141
  %33 = load %struct.gs_depth_bitmap_s*, %struct.gs_depth_bitmap_s** %pbitmap.addr, align 8, !tbaa !1
  %size39 = getelementptr inbounds %struct.gs_depth_bitmap_s, %struct.gs_depth_bitmap_s* %33, i32 0, i32 2
  %y40 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %size39, i32 0, i32 1
  %34 = load i32, i32* %y40, align 4, !tbaa !128
  %conv41 = sitofp i32 %34 to double
  %BBox42 = getelementptr inbounds %struct.gs_pattern1_template_s, %struct.gs_pattern1_template_s* %pat, i32 0, i32 7
  %q43 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %BBox42, i32 0, i32 1
  %y44 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q43, i32 0, i32 1
  store double %conv41, double* %y44, align 8, !tbaa !142
  %35 = load %struct.gs_depth_bitmap_s*, %struct.gs_depth_bitmap_s** %pbitmap.addr, align 8, !tbaa !1
  %size45 = getelementptr inbounds %struct.gs_depth_bitmap_s, %struct.gs_depth_bitmap_s* %35, i32 0, i32 2
  %x46 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %size45, i32 0, i32 0
  %36 = load i32, i32* %x46, align 4, !tbaa !125
  %conv47 = sitofp i32 %36 to float
  %XStep = getelementptr inbounds %struct.gs_pattern1_template_s, %struct.gs_pattern1_template_s* %pat, i32 0, i32 8
  store float %conv47, float* %XStep, align 4, !tbaa !143
  %37 = load %struct.gs_depth_bitmap_s*, %struct.gs_depth_bitmap_s** %pbitmap.addr, align 8, !tbaa !1
  %size48 = getelementptr inbounds %struct.gs_depth_bitmap_s, %struct.gs_depth_bitmap_s* %37, i32 0, i32 2
  %y49 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %size48, i32 0, i32 1
  %38 = load i32, i32* %y49, align 4, !tbaa !128
  %conv50 = sitofp i32 %38 to float
  %YStep = getelementptr inbounds %struct.gs_pattern1_template_s, %struct.gs_pattern1_template_s* %pat, i32 0, i32 9
  store float %conv50, float* %YStep, align 4, !tbaa !144
  %39 = load i32, i32* %mask.addr, align 4, !tbaa !42
  %tobool51 = icmp ne i32 %39, 0
  %cond52 = select i1 %tobool51, i32 (%struct.gs_client_color_s*, %struct.gs_state_s*)* @pixmap_remap_mask_pattern, i32 (%struct.gs_client_color_s*, %struct.gs_state_s*)* @pixmap_remap_image_pattern
  %PaintProc = getelementptr inbounds %struct.gs_pattern1_template_s, %struct.gs_pattern1_template_s* %pat, i32 0, i32 10
  store i32 (%struct.gs_client_color_s*, %struct.gs_state_s*)* %cond52, i32 (%struct.gs_client_color_s*, %struct.gs_state_s*)** %PaintProc, align 8, !tbaa !145
  %40 = load %struct.pixmap_info_s*, %struct.pixmap_info_s** %ppmap, align 8, !tbaa !1
  %41 = bitcast %struct.pixmap_info_s* %40 to i8*
  %client_data = getelementptr inbounds %struct.gs_pattern1_template_s, %struct.gs_pattern1_template_s* %pat, i32 0, i32 3
  store i8* %41, i8** %client_data, align 8, !tbaa !114
  %42 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %call53 = call i32 @gs_currentmatrix(%struct.gs_state_s* %42, %struct.gs_matrix_s* %smat) #5
  call void @gs_make_identity(%struct.gs_matrix_s* %mat) #5
  %43 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %call54 = call i32 @gs_setmatrix(%struct.gs_state_s* %43, %struct.gs_matrix_s* %mat) #5
  %44 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %cmp55 = icmp eq %struct.gs_matrix_s* %44, null
  br i1 %cmp55, label %if.then.57, label %if.end.58

if.then.57:                                       ; preds = %cond.end
  store %struct.gs_matrix_s* %mat, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  br label %if.end.58

if.end.58:                                        ; preds = %if.then.57, %cond.end
  %45 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pcc.addr, align 8, !tbaa !1
  %46 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %47 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %48 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call59 = call i32 @gs_makepattern(%struct.gs_client_color_s* %45, %struct.gs_pattern1_template_s* %pat, %struct.gs_matrix_s* %46, %struct.gs_state_s* %47, %struct.gs_memory_s* %48) #5
  store i32 %call59, i32* %code, align 4, !tbaa !42
  %cmp60 = icmp ne i32 %call59, 0
  br i1 %cmp60, label %if.then.62, label %if.else.64

if.then.62:                                       ; preds = %if.end.58
  %49 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs63 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %49, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs63, i32 0, i32 2
  %50 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !90
  %51 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %52 = load %struct.pixmap_info_s*, %struct.pixmap_info_s** %ppmap, align 8, !tbaa !1
  %53 = bitcast %struct.pixmap_info_s* %52 to i8*
  call void %50(%struct.gs_memory_s* %51, i8* %53, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i32 0, i32 0)) #5
  br label %if.end.75

if.else.64:                                       ; preds = %if.end.58
  %54 = bitcast %struct.gs_pattern1_instance_s** %pinst to i8*
  call void @llvm.lifetime.start(i64 8, i8* %54) #1
  %55 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pcc.addr, align 8, !tbaa !1
  %pattern = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %55, i32 0, i32 0
  %56 = load %struct.gs_pattern_instance_s*, %struct.gs_pattern_instance_s** %pattern, align 8, !tbaa !44
  %57 = bitcast %struct.gs_pattern_instance_s* %56 to %struct.gs_pattern1_instance_s*
  store %struct.gs_pattern1_instance_s* %57, %struct.gs_pattern1_instance_s** %pinst, align 8, !tbaa !1
  %58 = load i32, i32* %mask.addr, align 4, !tbaa !42
  %tobool65 = icmp ne i32 %58, 0
  br i1 %tobool65, label %if.end.71, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.else.64
  %59 = load i32, i32* %white_index.addr, align 4, !tbaa !42
  %60 = load %struct.gs_depth_bitmap_s*, %struct.gs_depth_bitmap_s** %pbitmap.addr, align 8, !tbaa !1
  %pix_depth66 = getelementptr inbounds %struct.gs_depth_bitmap_s, %struct.gs_depth_bitmap_s* %60, i32 0, i32 4
  %61 = load i8, i8* %pix_depth66, align 1, !tbaa !124
  %conv67 = zext i8 %61 to i32
  %shl = shl i32 1, %conv67
  %cmp68 = icmp uge i32 %59, %shl
  br i1 %cmp68, label %if.then.70, label %if.end.71

if.then.70:                                       ; preds = %land.lhs.true
  %62 = load %struct.gs_pattern1_instance_s*, %struct.gs_pattern1_instance_s** %pinst, align 8, !tbaa !1
  %uses_mask = getelementptr inbounds %struct.gs_pattern1_instance_s, %struct.gs_pattern1_instance_s* %62, i32 0, i32 10
  store i32 0, i32* %uses_mask, align 4, !tbaa !79
  br label %if.end.71

if.end.71:                                        ; preds = %if.then.70, %land.lhs.true, %if.else.64
  %63 = load %struct.gs_pattern1_instance_s*, %struct.gs_pattern1_instance_s** %pinst, align 8, !tbaa !1
  %rc = getelementptr inbounds %struct.gs_pattern1_instance_s, %struct.gs_pattern1_instance_s* %63, i32 0, i32 0
  %free = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc, i32 0, i32 2
  %64 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free, align 8, !tbaa !146
  %65 = load %struct.pixmap_info_s*, %struct.pixmap_info_s** %ppmap, align 8, !tbaa !1
  %free_proc = getelementptr inbounds %struct.pixmap_info_s, %struct.pixmap_info_s* %65, i32 0, i32 3
  store void (%struct.gs_memory_s*, i8*, i8*)* %64, void (%struct.gs_memory_s*, i8*, i8*)** %free_proc, align 8, !tbaa !147
  %66 = load %struct.gs_pattern1_instance_s*, %struct.gs_pattern1_instance_s** %pinst, align 8, !tbaa !1
  %rc72 = getelementptr inbounds %struct.gs_pattern1_instance_s, %struct.gs_pattern1_instance_s* %66, i32 0, i32 0
  %free73 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc72, i32 0, i32 2
  store void (%struct.gs_memory_s*, i8*, i8*)* @free_pixmap_pattern, void (%struct.gs_memory_s*, i8*, i8*)** %free73, align 8, !tbaa !146
  %67 = load %struct.gs_pattern1_instance_s*, %struct.gs_pattern1_instance_s** %pinst, align 8, !tbaa !1
  %saved = getelementptr inbounds %struct.gs_pattern1_instance_s, %struct.gs_pattern1_instance_s* %67, i32 0, i32 2
  %68 = load %struct.gs_state_s*, %struct.gs_state_s** %saved, align 8, !tbaa !49
  %call74 = call i32 @gs_setgray(%struct.gs_state_s* %68, double 0.000000e+00) #5
  %69 = bitcast %struct.gs_pattern1_instance_s** %pinst to i8*
  call void @llvm.lifetime.end(i64 8, i8* %69) #1
  br label %if.end.75

if.end.75:                                        ; preds = %if.end.71, %if.then.62
  %70 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %call76 = call i32 @gs_setmatrix(%struct.gs_state_s* %70, %struct.gs_matrix_s* %smat) #5
  %71 = load i32, i32* %code, align 4, !tbaa !42
  store i32 %71, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.75, %if.then.22, %if.then.12, %if.then.6, %if.then.3
  %72 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %72) #1
  %73 = bitcast %struct.gs_matrix_s* %smat to i8*
  call void @llvm.lifetime.end(i64 24, i8* %73) #1
  %74 = bitcast %struct.gs_matrix_s* %mat to i8*
  call void @llvm.lifetime.end(i64 24, i8* %74) #1
  %75 = bitcast %struct.pixmap_info_s** %ppmap to i8*
  call void @llvm.lifetime.end(i64 8, i8* %75) #1
  %76 = bitcast %struct.gs_pattern1_template_s* %pat to i8*
  call void @llvm.lifetime.end(i64 104, i8* %76) #1
  %77 = load i32, i32* %retval
  ret i32 %77
}

declare i32 @gs_color_space_get_index(%struct.gs_color_space_s*) #2

declare %struct.gs_memory_s* @gs_state_memory(%struct.gs_state_s*) #2

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

declare i64 @gs_next_ids(%struct.gs_memory_s*, i32) #2

; Function Attrs: nounwind uwtable
define internal i32 @pixmap_remap_mask_pattern(%struct.gs_client_color_s* %pcc, %struct.gs_state_s* %pgs) #0 {
entry:
  %retval = alloca i32, align 4
  %pcc.addr = alloca %struct.gs_client_color_s*, align 8
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %ppat = alloca %struct.gs_pattern1_template_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_client_color_s* %pcc, %struct.gs_client_color_s** %pcc.addr, align 8, !tbaa !1
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_pattern1_template_s** %ppat to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pcc.addr, align 8, !tbaa !1
  %call = call %struct.gs_pattern1_template_s* @gs_getpattern(%struct.gs_client_color_s* %1) #5
  store %struct.gs_pattern1_template_s* %call, %struct.gs_pattern1_template_s** %ppat, align 8, !tbaa !1
  %2 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  store i32 0, i32* %code, align 4, !tbaa !42
  %3 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %have_pattern_streams = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %3, i32 0, i32 31
  %4 = load i32, i32* %have_pattern_streams, align 4, !tbaa !148
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pcc.addr, align 8, !tbaa !1
  %pattern = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %5, i32 0, i32 0
  %6 = load %struct.gs_pattern_instance_s*, %struct.gs_pattern_instance_s** %pattern, align 8, !tbaa !44
  %saved = getelementptr inbounds %struct.gs_pattern_instance_s, %struct.gs_pattern_instance_s* %6, i32 0, i32 2
  %7 = load %struct.gs_state_s*, %struct.gs_state_s** %saved, align 8, !tbaa !149
  %device = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %7, i32 0, i32 78
  %8 = load %struct.gx_device_s*, %struct.gx_device_s** %device, align 8, !tbaa !19
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %8, i32 0, i32 42
  %dev_spec_op = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 65
  %9 = load i32 (%struct.gx_device_s*, i32, i8*, i32)*, i32 (%struct.gx_device_s*, i32, i8*, i32)** %dev_spec_op, align 8, !tbaa !117
  %10 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pcc.addr, align 8, !tbaa !1
  %pattern1 = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %10, i32 0, i32 0
  %11 = load %struct.gs_pattern_instance_s*, %struct.gs_pattern_instance_s** %pattern1, align 8, !tbaa !44
  %saved2 = getelementptr inbounds %struct.gs_pattern_instance_s, %struct.gs_pattern_instance_s* %11, i32 0, i32 2
  %12 = load %struct.gs_state_s*, %struct.gs_state_s** %saved2, align 8, !tbaa !149
  %device3 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %12, i32 0, i32 78
  %13 = load %struct.gx_device_s*, %struct.gx_device_s** %device3, align 8, !tbaa !19
  %14 = load %struct.gs_pattern1_template_s*, %struct.gs_pattern1_template_s** %ppat, align 8, !tbaa !1
  %15 = bitcast %struct.gs_pattern1_template_s* %14 to i8*
  %16 = load %struct.gs_pattern1_template_s*, %struct.gs_pattern1_template_s** %ppat, align 8, !tbaa !1
  %uid = getelementptr inbounds %struct.gs_pattern1_template_s, %struct.gs_pattern1_template_s* %16, i32 0, i32 2
  %id = getelementptr inbounds %struct.gs_uid_s, %struct.gs_uid_s* %uid, i32 0, i32 0
  %17 = load i64, i64* %id, align 8, !tbaa !150
  %conv = trunc i64 %17 to i32
  %call4 = call i32 %9(%struct.gx_device_s* %13, i32 0, i8* %15, i32 %conv) #5
  store i32 %call4, i32* %code, align 4, !tbaa !42
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %18 = load i32, i32* %code, align 4, !tbaa !42
  %cmp = icmp eq i32 %18, 1
  br i1 %cmp, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %if.end
  store i32 -103, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %if.end
  %19 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pcc.addr, align 8, !tbaa !1
  %20 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %call7 = call i32 @mask_PaintProc(%struct.gs_client_color_s* %19, %struct.gs_state_s* %20) #5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then.6
  %21 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %21) #1
  %22 = bitcast %struct.gs_pattern1_template_s** %ppat to i8*
  call void @llvm.lifetime.end(i64 8, i8* %22) #1
  %23 = load i32, i32* %retval
  ret i32 %23
}

; Function Attrs: nounwind uwtable
define internal i32 @pixmap_remap_image_pattern(%struct.gs_client_color_s* %pcc, %struct.gs_state_s* %pgs) #0 {
entry:
  %retval = alloca i32, align 4
  %pcc.addr = alloca %struct.gs_client_color_s*, align 8
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %ppat = alloca %struct.gs_pattern1_template_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_client_color_s* %pcc, %struct.gs_client_color_s** %pcc.addr, align 8, !tbaa !1
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_pattern1_template_s** %ppat to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pcc.addr, align 8, !tbaa !1
  %call = call %struct.gs_pattern1_template_s* @gs_getpattern(%struct.gs_client_color_s* %1) #5
  store %struct.gs_pattern1_template_s* %call, %struct.gs_pattern1_template_s** %ppat, align 8, !tbaa !1
  %2 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  store i32 0, i32* %code, align 4, !tbaa !42
  %3 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %have_pattern_streams = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %3, i32 0, i32 31
  %4 = load i32, i32* %have_pattern_streams, align 4, !tbaa !148
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pcc.addr, align 8, !tbaa !1
  %pattern = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %5, i32 0, i32 0
  %6 = load %struct.gs_pattern_instance_s*, %struct.gs_pattern_instance_s** %pattern, align 8, !tbaa !44
  %saved = getelementptr inbounds %struct.gs_pattern_instance_s, %struct.gs_pattern_instance_s* %6, i32 0, i32 2
  %7 = load %struct.gs_state_s*, %struct.gs_state_s** %saved, align 8, !tbaa !149
  %device = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %7, i32 0, i32 78
  %8 = load %struct.gx_device_s*, %struct.gx_device_s** %device, align 8, !tbaa !19
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %8, i32 0, i32 42
  %dev_spec_op = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 65
  %9 = load i32 (%struct.gx_device_s*, i32, i8*, i32)*, i32 (%struct.gx_device_s*, i32, i8*, i32)** %dev_spec_op, align 8, !tbaa !117
  %10 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pcc.addr, align 8, !tbaa !1
  %pattern1 = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %10, i32 0, i32 0
  %11 = load %struct.gs_pattern_instance_s*, %struct.gs_pattern_instance_s** %pattern1, align 8, !tbaa !44
  %saved2 = getelementptr inbounds %struct.gs_pattern_instance_s, %struct.gs_pattern_instance_s* %11, i32 0, i32 2
  %12 = load %struct.gs_state_s*, %struct.gs_state_s** %saved2, align 8, !tbaa !149
  %device3 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %12, i32 0, i32 78
  %13 = load %struct.gx_device_s*, %struct.gx_device_s** %device3, align 8, !tbaa !19
  %14 = load %struct.gs_pattern1_template_s*, %struct.gs_pattern1_template_s** %ppat, align 8, !tbaa !1
  %15 = bitcast %struct.gs_pattern1_template_s* %14 to i8*
  %16 = load %struct.gs_pattern1_template_s*, %struct.gs_pattern1_template_s** %ppat, align 8, !tbaa !1
  %uid = getelementptr inbounds %struct.gs_pattern1_template_s, %struct.gs_pattern1_template_s* %16, i32 0, i32 2
  %id = getelementptr inbounds %struct.gs_uid_s, %struct.gs_uid_s* %uid, i32 0, i32 0
  %17 = load i64, i64* %id, align 8, !tbaa !150
  %conv = trunc i64 %17 to i32
  %call4 = call i32 %9(%struct.gx_device_s* %13, i32 0, i8* %15, i32 %conv) #5
  store i32 %call4, i32* %code, align 4, !tbaa !42
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %18 = load i32, i32* %code, align 4, !tbaa !42
  %cmp = icmp eq i32 %18, 1
  br i1 %cmp, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %if.end
  store i32 -103, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %if.end
  %19 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pcc.addr, align 8, !tbaa !1
  %20 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %call7 = call i32 @image_PaintProc(%struct.gs_client_color_s* %19, %struct.gs_state_s* %20) #5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then.6
  %21 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %21) #1
  %22 = bitcast %struct.gs_pattern1_template_s** %ppat to i8*
  call void @llvm.lifetime.end(i64 8, i8* %22) #1
  %23 = load i32, i32* %retval
  ret i32 %23
}

declare i32 @gs_currentmatrix(%struct.gs_state_s*, %struct.gs_matrix_s*) #2

declare void @gs_make_identity(%struct.gs_matrix_s*) #2

; Function Attrs: nounwind uwtable
define internal void @free_pixmap_pattern(%struct.gs_memory_s* %pmem, i8* %pvpinst, i8* %cname) #0 {
entry:
  %pmem.addr = alloca %struct.gs_memory_s*, align 8
  %pvpinst.addr = alloca i8*, align 8
  %cname.addr = alloca i8*, align 8
  %pinst = alloca %struct.gs_pattern1_instance_s*, align 8
  %ppmap = alloca %struct.pixmap_info_s*, align 8
  store %struct.gs_memory_s* %pmem, %struct.gs_memory_s** %pmem.addr, align 8, !tbaa !1
  store i8* %pvpinst, i8** %pvpinst.addr, align 8, !tbaa !1
  store i8* %cname, i8** %cname.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_pattern1_instance_s** %pinst to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %pvpinst.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.gs_pattern1_instance_s*
  store %struct.gs_pattern1_instance_s* %2, %struct.gs_pattern1_instance_s** %pinst, align 8, !tbaa !1
  %3 = bitcast %struct.pixmap_info_s** %ppmap to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gs_pattern1_instance_s*, %struct.gs_pattern1_instance_s** %pinst, align 8, !tbaa !1
  %templat = getelementptr inbounds %struct.gs_pattern1_instance_s, %struct.gs_pattern1_instance_s* %4, i32 0, i32 4
  %client_data = getelementptr inbounds %struct.gs_pattern1_template_s, %struct.gs_pattern1_template_s* %templat, i32 0, i32 3
  %5 = load i8*, i8** %client_data, align 8, !tbaa !151
  %6 = bitcast i8* %5 to %struct.pixmap_info_s*
  store %struct.pixmap_info_s* %6, %struct.pixmap_info_s** %ppmap, align 8, !tbaa !1
  %7 = load %struct.pixmap_info_s*, %struct.pixmap_info_s** %ppmap, align 8, !tbaa !1
  %free_proc = getelementptr inbounds %struct.pixmap_info_s, %struct.pixmap_info_s* %7, i32 0, i32 3
  %8 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_proc, align 8, !tbaa !147
  %9 = load %struct.gs_memory_s*, %struct.gs_memory_s** %pmem.addr, align 8, !tbaa !1
  %10 = load i8*, i8** %pvpinst.addr, align 8, !tbaa !1
  %11 = load i8*, i8** %cname.addr, align 8, !tbaa !1
  call void %8(%struct.gs_memory_s* %9, i8* %10, i8* %11) #5
  %12 = load %struct.gs_memory_s*, %struct.gs_memory_s** %pmem.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %12, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %13 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !90
  %14 = load %struct.gs_memory_s*, %struct.gs_memory_s** %pmem.addr, align 8, !tbaa !1
  %15 = load %struct.pixmap_info_s*, %struct.pixmap_info_s** %ppmap, align 8, !tbaa !1
  %16 = bitcast %struct.pixmap_info_s* %15 to i8*
  %17 = load i8*, i8** %cname.addr, align 8, !tbaa !1
  call void %13(%struct.gs_memory_s* %14, i8* %16, i8* %17) #5
  %18 = bitcast %struct.pixmap_info_s** %ppmap to i8*
  call void @llvm.lifetime.end(i64 8, i8* %18) #1
  %19 = bitcast %struct.gs_pattern1_instance_s** %pinst to i8*
  call void @llvm.lifetime.end(i64 8, i8* %19) #1
  ret void
}

declare i32 @gs_setgray(%struct.gs_state_s*, double) #2

; Function Attrs: nounwind uwtable
define i32 @gs_makebitmappattern_xform(%struct.gs_client_color_s* %pcc, %struct.gx_tile_bitmap_s* %ptile, i32 %mask, %struct.gs_matrix_s* %pmat, i64 %id, %struct.gs_state_s* %pgs, %struct.gs_memory_s* %mem) #0 {
entry:
  %pcc.addr = alloca %struct.gs_client_color_s*, align 8
  %ptile.addr = alloca %struct.gx_tile_bitmap_s*, align 8
  %mask.addr = alloca i32, align 4
  %pmat.addr = alloca %struct.gs_matrix_s*, align 8
  %id.addr = alloca i64, align 8
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %bitmap = alloca %struct.gs_depth_bitmap_s, align 8
  store %struct.gs_client_color_s* %pcc, %struct.gs_client_color_s** %pcc.addr, align 8, !tbaa !1
  store %struct.gx_tile_bitmap_s* %ptile, %struct.gx_tile_bitmap_s** %ptile.addr, align 8, !tbaa !1
  store i32 %mask, i32* %mask.addr, align 4, !tbaa !42
  store %struct.gs_matrix_s* %pmat, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  store i64 %id, i64* %id.addr, align 8, !tbaa !48
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_depth_bitmap_s* %bitmap to i8*
  call void @llvm.lifetime.start(i64 40, i8* %0) #1
  %1 = load %struct.gx_tile_bitmap_s*, %struct.gx_tile_bitmap_s** %ptile.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gx_tile_bitmap_s, %struct.gx_tile_bitmap_s* %1, i32 0, i32 0
  %2 = load i8*, i8** %data, align 8, !tbaa !152
  %data1 = getelementptr inbounds %struct.gs_depth_bitmap_s, %struct.gs_depth_bitmap_s* %bitmap, i32 0, i32 0
  store i8* %2, i8** %data1, align 8, !tbaa !154
  %3 = load %struct.gx_tile_bitmap_s*, %struct.gx_tile_bitmap_s** %ptile.addr, align 8, !tbaa !1
  %raster = getelementptr inbounds %struct.gx_tile_bitmap_s, %struct.gx_tile_bitmap_s* %3, i32 0, i32 1
  %4 = load i32, i32* %raster, align 4, !tbaa !155
  %raster2 = getelementptr inbounds %struct.gs_depth_bitmap_s, %struct.gs_depth_bitmap_s* %bitmap, i32 0, i32 1
  store i32 %4, i32* %raster2, align 4, !tbaa !156
  %5 = load %struct.gx_tile_bitmap_s*, %struct.gx_tile_bitmap_s** %ptile.addr, align 8, !tbaa !1
  %rep_width = getelementptr inbounds %struct.gx_tile_bitmap_s, %struct.gx_tile_bitmap_s* %5, i32 0, i32 4
  %6 = load i16, i16* %rep_width, align 2, !tbaa !157
  %conv = zext i16 %6 to i32
  %size = getelementptr inbounds %struct.gs_depth_bitmap_s, %struct.gs_depth_bitmap_s* %bitmap, i32 0, i32 2
  %x = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %size, i32 0, i32 0
  store i32 %conv, i32* %x, align 4, !tbaa !125
  %7 = load %struct.gx_tile_bitmap_s*, %struct.gx_tile_bitmap_s** %ptile.addr, align 8, !tbaa !1
  %rep_height = getelementptr inbounds %struct.gx_tile_bitmap_s, %struct.gx_tile_bitmap_s* %7, i32 0, i32 5
  %8 = load i16, i16* %rep_height, align 2, !tbaa !158
  %conv3 = zext i16 %8 to i32
  %size4 = getelementptr inbounds %struct.gs_depth_bitmap_s, %struct.gs_depth_bitmap_s* %bitmap, i32 0, i32 2
  %y = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %size4, i32 0, i32 1
  store i32 %conv3, i32* %y, align 4, !tbaa !128
  %9 = load %struct.gx_tile_bitmap_s*, %struct.gx_tile_bitmap_s** %ptile.addr, align 8, !tbaa !1
  %id5 = getelementptr inbounds %struct.gx_tile_bitmap_s, %struct.gx_tile_bitmap_s* %9, i32 0, i32 3
  %10 = load i64, i64* %id5, align 8, !tbaa !159
  %id6 = getelementptr inbounds %struct.gs_depth_bitmap_s, %struct.gs_depth_bitmap_s* %bitmap, i32 0, i32 3
  store i64 %10, i64* %id6, align 8, !tbaa !160
  %pix_depth = getelementptr inbounds %struct.gs_depth_bitmap_s, %struct.gs_depth_bitmap_s* %bitmap, i32 0, i32 4
  store i8 1, i8* %pix_depth, align 1, !tbaa !124
  %num_comps = getelementptr inbounds %struct.gs_depth_bitmap_s, %struct.gs_depth_bitmap_s* %bitmap, i32 0, i32 5
  store i8 1, i8* %num_comps, align 1, !tbaa !123
  %11 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pcc.addr, align 8, !tbaa !1
  %12 = load i32, i32* %mask.addr, align 4, !tbaa !42
  %13 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %14 = load i64, i64* %id.addr, align 8, !tbaa !48
  %15 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %16 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call = call i32 @gs_makepixmappattern(%struct.gs_client_color_s* %11, %struct.gs_depth_bitmap_s* %bitmap, i32 %12, %struct.gs_matrix_s* %13, i64 %14, %struct.gs_color_space_s* null, i32 0, %struct.gs_state_s* %15, %struct.gs_memory_s* %16) #5
  %17 = bitcast %struct.gs_depth_bitmap_s* %bitmap to i8*
  call void @llvm.lifetime.end(i64 40, i8* %17) #1
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define void @gx_dc_pattern_save_dc(%struct.gx_device_color_s* %pdevc, %struct.gx_device_color_saved_s* %psdc) #0 {
entry:
  %pdevc.addr = alloca %struct.gx_device_color_s*, align 8
  %psdc.addr = alloca %struct.gx_device_color_saved_s*, align 8
  store %struct.gx_device_color_s* %pdevc, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  store %struct.gx_device_color_saved_s* %psdc, %struct.gx_device_color_saved_s** %psdc.addr, align 8, !tbaa !1
  %0 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %0, i32 0, i32 0
  %1 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type, align 8, !tbaa !105
  %2 = load %struct.gx_device_color_saved_s*, %struct.gx_device_color_saved_s** %psdc.addr, align 8, !tbaa !1
  %type1 = getelementptr inbounds %struct.gx_device_color_saved_s, %struct.gx_device_color_saved_s* %2, i32 0, i32 0
  store %struct.gx_device_color_type_s* %1, %struct.gx_device_color_type_s** %type1, align 8, !tbaa !161
  %3 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %ccolor_valid = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %3, i32 0, i32 3
  %4 = load i32, i32* %ccolor_valid, align 4, !tbaa !163
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %5 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %ccolor = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %5, i32 0, i32 4
  %pattern = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %ccolor, i32 0, i32 0
  %6 = load %struct.gs_pattern_instance_s*, %struct.gs_pattern_instance_s** %pattern, align 8, !tbaa !164
  %pattern_id = getelementptr inbounds %struct.gs_pattern_instance_s, %struct.gs_pattern_instance_s* %6, i32 0, i32 3
  %7 = load i64, i64* %pattern_id, align 8, !tbaa !165
  %8 = load %struct.gx_device_color_saved_s*, %struct.gx_device_color_saved_s** %psdc.addr, align 8, !tbaa !1
  %colors = getelementptr inbounds %struct.gx_device_color_saved_s, %struct.gx_device_color_saved_s* %8, i32 0, i32 1
  %pattern2 = bitcast %union._svc* %colors to %struct._pattern*
  %id = getelementptr inbounds %struct._pattern, %struct._pattern* %pattern2, i32 0, i32 0
  store i64 %7, i64* %id, align 8, !tbaa !166
  %9 = load %struct.gx_device_color_saved_s*, %struct.gx_device_color_saved_s** %psdc.addr, align 8, !tbaa !1
  %colors3 = getelementptr inbounds %struct.gx_device_color_saved_s, %struct.gx_device_color_saved_s* %9, i32 0, i32 1
  %pattern4 = bitcast %union._svc* %colors3 to %struct._pattern*
  %phase = getelementptr inbounds %struct._pattern, %struct._pattern* %pattern4, i32 0, i32 1
  %10 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %phase5 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %10, i32 0, i32 2
  %11 = bitcast %struct.gs_int_point_s* %phase to i8*
  %12 = bitcast %struct.gs_int_point_s* %phase5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %11, i8* %12, i64 8, i32 4, i1 false), !tbaa.struct !168
  br label %if.end

if.else:                                          ; preds = %entry
  %13 = load %struct.gx_device_color_saved_s*, %struct.gx_device_color_saved_s** %psdc.addr, align 8, !tbaa !1
  %colors6 = getelementptr inbounds %struct.gx_device_color_saved_s, %struct.gx_device_color_saved_s* %13, i32 0, i32 1
  %pattern7 = bitcast %union._svc* %colors6 to %struct._pattern*
  %id8 = getelementptr inbounds %struct._pattern, %struct._pattern* %pattern7, i32 0, i32 0
  store i64 0, i64* %id8, align 8, !tbaa !166
  %14 = load %struct.gx_device_color_saved_s*, %struct.gx_device_color_saved_s** %psdc.addr, align 8, !tbaa !1
  %colors9 = getelementptr inbounds %struct.gx_device_color_saved_s, %struct.gx_device_color_saved_s* %14, i32 0, i32 1
  %pattern10 = bitcast %union._svc* %colors9 to %struct._pattern*
  %phase11 = getelementptr inbounds %struct._pattern, %struct._pattern* %pattern10, i32 0, i32 1
  %y = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %phase11, i32 0, i32 1
  store i32 0, i32* %y, align 4, !tbaa !169
  %15 = load %struct.gx_device_color_saved_s*, %struct.gx_device_color_saved_s** %psdc.addr, align 8, !tbaa !1
  %colors12 = getelementptr inbounds %struct.gx_device_color_saved_s, %struct.gx_device_color_saved_s* %15, i32 0, i32 1
  %pattern13 = bitcast %union._svc* %colors12 to %struct._pattern*
  %phase14 = getelementptr inbounds %struct._pattern, %struct._pattern* %pattern13, i32 0, i32 1
  %x = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %phase14, i32 0, i32 0
  store i32 0, i32* %x, align 4, !tbaa !170
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct.gx_device_halftone_s* @gx_dc_pattern_get_dev_halftone(%struct.gx_device_color_s* %pdevc) #0 {
entry:
  %pdevc.addr = alloca %struct.gx_device_color_s*, align 8
  store %struct.gx_device_color_s* %pdevc, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  ret %struct.gx_device_halftone_s* null
}

declare i32 @gx_dc_ht_get_phase(%struct.gx_device_color_s*, %struct.gs_int_point_s*) #2

; Function Attrs: nounwind uwtable
define internal i32 @gx_dc_pattern_load(%struct.gx_device_color_s* %pdevc, %struct.gs_imager_state_s* %pis, %struct.gx_device_s* %dev, i32 %select) #0 {
entry:
  %pdevc.addr = alloca %struct.gx_device_color_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %select.addr = alloca i32, align 4
  %code = alloca i32, align 4
  store %struct.gx_device_color_s* %pdevc, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i32 %select, i32* %select.addr, align 4, !tbaa !135
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 0, i32* %code, align 4, !tbaa !42
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %1 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %2 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %3 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %4 = load i32, i32* %select.addr, align 4, !tbaa !135
  %call = call i32 @gx_pattern_cache_lookup(%struct.gx_device_color_s* %1, %struct.gs_imager_state_s* %2, %struct.gx_device_s* %3, i32 %4) #5
  %tobool = icmp ne i32 %call, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %6 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %7 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %8 = load i32, i32* %select.addr, align 4, !tbaa !135
  %call1 = call i32 @gx_pattern_load(%struct.gx_device_color_s* %5, %struct.gs_imager_state_s* %6, %struct.gx_device_s* %7, i32 %8) #5
  store i32 %call1, i32* %code, align 4, !tbaa !42
  %9 = load i32, i32* %code, align 4, !tbaa !42
  %cmp = icmp slt i32 %9, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  br label %while.end

if.end:                                           ; preds = %while.body
  br label %while.cond

while.end:                                        ; preds = %if.then, %while.cond
  %10 = load i32, i32* %code, align 4, !tbaa !42
  %11 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %11) #1
  ret i32 %10
}

declare i32 @gx_dc_pattern_fill_rectangle(%struct.gx_device_color_s*, i32, i32, i32, i32, %struct.gx_device_s*, i32, %struct.gx_rop_source_s*) #2

declare i32 @gx_dc_default_fill_masked(%struct.gx_device_color_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_s*, i32, i32) #2

; Function Attrs: nounwind uwtable
define internal i32 @gx_dc_pattern_equal(%struct.gx_device_color_s* %pdevc1, %struct.gx_device_color_s* %pdevc2) #0 {
entry:
  %pdevc1.addr = alloca %struct.gx_device_color_s*, align 8
  %pdevc2.addr = alloca %struct.gx_device_color_s*, align 8
  store %struct.gx_device_color_s* %pdevc1, %struct.gx_device_color_s** %pdevc1.addr, align 8, !tbaa !1
  store %struct.gx_device_color_s* %pdevc2, %struct.gx_device_color_s** %pdevc2.addr, align 8, !tbaa !1
  %0 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc2.addr, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %0, i32 0, i32 0
  %1 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type, align 8, !tbaa !105
  %2 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc1.addr, align 8, !tbaa !1
  %type1 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %2, i32 0, i32 0
  %3 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type1, align 8, !tbaa !105
  %cmp = icmp eq %struct.gx_device_color_type_s* %1, %3
  br i1 %cmp, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %entry
  %4 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc1.addr, align 8, !tbaa !1
  %phase = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %4, i32 0, i32 2
  %x = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %phase, i32 0, i32 0
  %5 = load i32, i32* %x, align 4, !tbaa !171
  %6 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc2.addr, align 8, !tbaa !1
  %phase2 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %6, i32 0, i32 2
  %x3 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %phase2, i32 0, i32 0
  %7 = load i32, i32* %x3, align 4, !tbaa !171
  %cmp4 = icmp eq i32 %5, %7
  br i1 %cmp4, label %land.lhs.true.5, label %land.end

land.lhs.true.5:                                  ; preds = %land.lhs.true
  %8 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc1.addr, align 8, !tbaa !1
  %phase6 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %8, i32 0, i32 2
  %y = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %phase6, i32 0, i32 1
  %9 = load i32, i32* %y, align 4, !tbaa !172
  %10 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc2.addr, align 8, !tbaa !1
  %phase7 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %10, i32 0, i32 2
  %y8 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %phase7, i32 0, i32 1
  %11 = load i32, i32* %y8, align 4, !tbaa !172
  %cmp9 = icmp eq i32 %9, %11
  br i1 %cmp9, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true.5
  %12 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc1.addr, align 8, !tbaa !1
  %mask = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %12, i32 0, i32 5
  %id = getelementptr inbounds %struct._mask, %struct._mask* %mask, i32 0, i32 1
  %13 = load i64, i64* %id, align 8, !tbaa !173
  %14 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc2.addr, align 8, !tbaa !1
  %mask10 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %14, i32 0, i32 5
  %id11 = getelementptr inbounds %struct._mask, %struct._mask* %mask10, i32 0, i32 1
  %15 = load i64, i64* %id11, align 8, !tbaa !173
  %cmp12 = icmp eq i64 %13, %15
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.5, %land.lhs.true, %entry
  %16 = phi i1 [ false, %land.lhs.true.5 ], [ false, %land.lhs.true ], [ false, %entry ], [ %cmp12, %land.rhs ]
  %land.ext = zext i1 %16 to i32
  ret i32 %land.ext
}

; Function Attrs: nounwind uwtable
define i32 @gx_dc_pattern_write(%struct.gx_device_color_s* %pdevc, %struct.gx_device_color_saved_s* %psdc, %struct.gx_device_s* %dev, i64 %offset, i8* %data, i32* %psize) #0 {
entry:
  %retval = alloca i32, align 4
  %pdevc.addr = alloca %struct.gx_device_color_s*, align 8
  %psdc.addr = alloca %struct.gx_device_color_saved_s*, align 8
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %offset.addr = alloca i64, align 8
  %data.addr = alloca i8*, align 8
  %psize.addr = alloca i32*, align 8
  %ptile = alloca %struct.gx_color_tile_s*, align 8
  %size_b = alloca i32, align 4
  %size_c = alloca i32, align 4
  %dp = alloca i8*, align 8
  %left = alloca i32, align 4
  %offset1 = alloca i64, align 8
  %code = alloca i32, align 4
  %l = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %id15 = alloca i64, align 8
  %buf = alloca %struct.gx_dc_serialized_tile_s, align 8
  store %struct.gx_device_color_s* %pdevc, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  store %struct.gx_device_color_saved_s* %psdc, %struct.gx_device_color_saved_s** %psdc.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i64 %offset, i64* %offset.addr, align 8, !tbaa !48
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i32* %psize, i32** %psize.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_color_tile_s** %ptile to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %colors = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %1, i32 0, i32 1
  %pattern = bitcast %union._c* %colors to %struct._pat*
  %p_tile = getelementptr inbounds %struct._pat, %struct._pat* %pattern, i32 0, i32 0
  %2 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %p_tile, align 8, !tbaa !93
  store %struct.gx_color_tile_s* %2, %struct.gx_color_tile_s** %ptile, align 8, !tbaa !1
  %3 = bitcast i32* %size_b to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i32* %size_c to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast i8** %dp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = load i8*, i8** %data.addr, align 8, !tbaa !1
  store i8* %6, i8** %dp, align 8, !tbaa !1
  %7 = bitcast i32* %left to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = load i32*, i32** %psize.addr, align 8, !tbaa !1
  %9 = load i32, i32* %8, align 4, !tbaa !42
  store i32 %9, i32* %left, align 4, !tbaa !42
  %10 = bitcast i64* %offset1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  %11 = load i64, i64* %offset.addr, align 8, !tbaa !48
  store i64 %11, i64* %offset1, align 8, !tbaa !48
  %12 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  %13 = bitcast i32* %l to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  %14 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ptile, align 8, !tbaa !1
  %cmp = icmp eq %struct.gx_color_tile_s* %14, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.148

if.end:                                           ; preds = %entry
  %15 = load %struct.gx_device_color_saved_s*, %struct.gx_device_color_saved_s** %psdc.addr, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gx_device_color_saved_s, %struct.gx_device_color_saved_s* %15, i32 0, i32 0
  %16 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type, align 8, !tbaa !161
  %17 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %type1 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %17, i32 0, i32 0
  %18 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type1, align 8, !tbaa !105
  %cmp2 = icmp eq %struct.gx_device_color_type_s* %16, %18
  br i1 %cmp2, label %if.then.3, label %if.end.10

if.then.3:                                        ; preds = %if.end
  %19 = load %struct.gx_device_color_saved_s*, %struct.gx_device_color_saved_s** %psdc.addr, align 8, !tbaa !1
  %colors4 = getelementptr inbounds %struct.gx_device_color_saved_s, %struct.gx_device_color_saved_s* %19, i32 0, i32 1
  %pattern5 = bitcast %union._svc* %colors4 to %struct._pattern*
  %id = getelementptr inbounds %struct._pattern, %struct._pattern* %pattern5, i32 0, i32 0
  %20 = load i64, i64* %id, align 8, !tbaa !166
  %21 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ptile, align 8, !tbaa !1
  %id6 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %21, i32 0, i32 0
  %22 = load i64, i64* %id6, align 8, !tbaa !109
  %cmp7 = icmp eq i64 %20, %22
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.then.3
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.148

if.end.9:                                         ; preds = %if.then.3
  br label %if.end.10

if.end.10:                                        ; preds = %if.end.9, %if.end
  %23 = load i64, i64* %offset1, align 8, !tbaa !48
  %cmp11 = icmp eq i64 %23, 0
  br i1 %cmp11, label %land.lhs.true, label %if.end.18

land.lhs.true:                                    ; preds = %if.end.10
  %24 = load i32, i32* %left, align 4, !tbaa !42
  %conv = sext i32 %24 to i64
  %cmp12 = icmp eq i64 %conv, 8
  br i1 %cmp12, label %if.then.14, label %if.end.18

if.then.14:                                       ; preds = %land.lhs.true
  %25 = bitcast i64* %id15 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %25) #1
  %26 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ptile, align 8, !tbaa !1
  %id16 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %26, i32 0, i32 0
  %27 = load i64, i64* %id16, align 8, !tbaa !109
  store i64 %27, i64* %id15, align 8, !tbaa !48
  br label %do.body

do.body:                                          ; preds = %if.then.14
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %28 = load i8*, i8** %dp, align 8, !tbaa !1
  %29 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ptile, align 8, !tbaa !1
  %id17 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %29, i32 0, i32 0
  %30 = bitcast i64* %id17 to i8*
  %call = call i8* @memcpy(i8* %28, i8* %30, i64 8) #7
  %31 = load i32*, i32** %psize.addr, align 8, !tbaa !1
  store i32 8, i32* %31, align 4, !tbaa !42
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  %32 = bitcast i64* %id15 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %32) #1
  br label %cleanup.148

if.end.18:                                        ; preds = %land.lhs.true, %if.end.10
  %33 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ptile, align 8, !tbaa !1
  %ttrans = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %33, i32 0, i32 9
  %34 = load %struct.gx_pattern_trans_s*, %struct.gx_pattern_trans_s** %ttrans, align 8, !tbaa !95
  %cmp19 = icmp ne %struct.gx_pattern_trans_s* %34, null
  br i1 %cmp19, label %if.then.21, label %if.end.26

if.then.21:                                       ; preds = %if.end.18
  br label %do.body.22

do.body.22:                                       ; preds = %if.then.21
  br label %do.cond.23

do.cond.23:                                       ; preds = %do.body.22
  br label %do.end.24

do.end.24:                                        ; preds = %do.cond.23
  %35 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ptile, align 8, !tbaa !1
  %36 = load i64, i64* %offset.addr, align 8, !tbaa !48
  %37 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %38 = load i32*, i32** %psize.addr, align 8, !tbaa !1
  %call25 = call i32 @gx_dc_pattern_trans_write_raster(%struct.gx_color_tile_s* %35, i64 %36, i8* %37, i32* %38) #5
  store i32 %call25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.148

if.end.26:                                        ; preds = %if.end.18
  %39 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ptile, align 8, !tbaa !1
  %cdev = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %39, i32 0, i32 10
  %40 = load %union.gx_device_clist_s*, %union.gx_device_clist_s** %cdev, align 8, !tbaa !98
  %cmp27 = icmp eq %union.gx_device_clist_s* %40, null
  br i1 %cmp27, label %if.then.29, label %if.end.31

if.then.29:                                       ; preds = %if.end.26
  %41 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ptile, align 8, !tbaa !1
  %42 = load i64, i64* %offset.addr, align 8, !tbaa !48
  %43 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %44 = load i32*, i32** %psize.addr, align 8, !tbaa !1
  %45 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call30 = call i32 @gx_dc_pattern_write_raster(%struct.gx_color_tile_s* %41, i64 %42, i8* %43, i32* %44, %struct.gx_device_s* %45) #5
  store i32 %call30, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.148

if.end.31:                                        ; preds = %if.end.26
  %46 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ptile, align 8, !tbaa !1
  %cdev32 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %46, i32 0, i32 10
  %47 = load %union.gx_device_clist_s*, %union.gx_device_clist_s** %cdev32, align 8, !tbaa !98
  %call33 = call i32 @clist_data_size(%union.gx_device_clist_s* %47, i32 0) #5
  store i32 %call33, i32* %size_b, align 4, !tbaa !42
  %48 = load i32, i32* %size_b, align 4, !tbaa !42
  %cmp34 = icmp slt i32 %48, 0
  br i1 %cmp34, label %if.then.36, label %if.end.37

if.then.36:                                       ; preds = %if.end.31
  store i32 -28, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.148

if.end.37:                                        ; preds = %if.end.31
  %49 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ptile, align 8, !tbaa !1
  %cdev38 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %49, i32 0, i32 10
  %50 = load %union.gx_device_clist_s*, %union.gx_device_clist_s** %cdev38, align 8, !tbaa !98
  %call39 = call i32 @clist_data_size(%union.gx_device_clist_s* %50, i32 1) #5
  store i32 %call39, i32* %size_c, align 4, !tbaa !42
  %51 = load i32, i32* %size_c, align 4, !tbaa !42
  %cmp40 = icmp slt i32 %51, 0
  br i1 %cmp40, label %if.then.42, label %if.end.43

if.then.42:                                       ; preds = %if.end.37
  store i32 -28, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.148

if.end.43:                                        ; preds = %if.end.37
  %52 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %cmp44 = icmp eq i8* %52, null
  br i1 %cmp44, label %if.then.46, label %if.end.51

if.then.46:                                       ; preds = %if.end.43
  %53 = load i32, i32* %size_b, align 4, !tbaa !42
  %conv47 = sext i32 %53 to i64
  %add = add i64 88, %conv47
  %54 = load i32, i32* %size_c, align 4, !tbaa !42
  %conv48 = sext i32 %54 to i64
  %add49 = add i64 %add, %conv48
  %conv50 = trunc i64 %add49 to i32
  %55 = load i32*, i32** %psize.addr, align 8, !tbaa !1
  store i32 %conv50, i32* %55, align 4, !tbaa !42
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.148

if.end.51:                                        ; preds = %if.end.43
  %56 = load i64, i64* %offset1, align 8, !tbaa !48
  %cmp52 = icmp eq i64 %56, 0
  br i1 %cmp52, label %if.then.54, label %if.end.86

if.then.54:                                       ; preds = %if.end.51
  %57 = bitcast %struct.gx_dc_serialized_tile_s* %buf to i8*
  call void @llvm.lifetime.start(i64 88, i8* %57) #1
  %58 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ptile, align 8, !tbaa !1
  %id55 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %58, i32 0, i32 0
  %59 = load i64, i64* %id55, align 8, !tbaa !109
  %id56 = getelementptr inbounds %struct.gx_dc_serialized_tile_s, %struct.gx_dc_serialized_tile_s* %buf, i32 0, i32 0
  store i64 %59, i64* %id56, align 8, !tbaa !174
  %60 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ptile, align 8, !tbaa !1
  %cdev57 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %60, i32 0, i32 10
  %61 = load %union.gx_device_clist_s*, %union.gx_device_clist_s** %cdev57, align 8, !tbaa !98
  %common = bitcast %union.gx_device_clist_s* %61 to %struct.gx_device_clist_common_s*
  %width = getelementptr inbounds %struct.gx_device_clist_common_s, %struct.gx_device_clist_common_s* %common, i32 0, i32 13
  %62 = load i32, i32* %width, align 4, !tbaa !176
  %size = getelementptr inbounds %struct.gx_dc_serialized_tile_s, %struct.gx_dc_serialized_tile_s* %buf, i32 0, i32 3
  %x = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %size, i32 0, i32 0
  store i32 %62, i32* %x, align 4, !tbaa !177
  %63 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ptile, align 8, !tbaa !1
  %cdev58 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %63, i32 0, i32 10
  %64 = load %union.gx_device_clist_s*, %union.gx_device_clist_s** %cdev58, align 8, !tbaa !98
  %common59 = bitcast %union.gx_device_clist_s* %64 to %struct.gx_device_clist_common_s*
  %height = getelementptr inbounds %struct.gx_device_clist_common_s, %struct.gx_device_clist_common_s* %common59, i32 0, i32 14
  %65 = load i32, i32* %height, align 4, !tbaa !178
  %size60 = getelementptr inbounds %struct.gx_dc_serialized_tile_s, %struct.gx_dc_serialized_tile_s* %buf, i32 0, i32 3
  %y = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %size60, i32 0, i32 1
  store i32 %65, i32* %y, align 4, !tbaa !179
  %66 = load i32, i32* %size_b, align 4, !tbaa !42
  %size_b61 = getelementptr inbounds %struct.gx_dc_serialized_tile_s, %struct.gx_dc_serialized_tile_s* %buf, i32 0, i32 1
  store i32 %66, i32* %size_b61, align 4, !tbaa !180
  %67 = load i32, i32* %size_c, align 4, !tbaa !42
  %size_c62 = getelementptr inbounds %struct.gx_dc_serialized_tile_s, %struct.gx_dc_serialized_tile_s* %buf, i32 0, i32 2
  store i32 %67, i32* %size_c62, align 4, !tbaa !181
  %step_matrix = getelementptr inbounds %struct.gx_dc_serialized_tile_s, %struct.gx_dc_serialized_tile_s* %buf, i32 0, i32 4
  %68 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ptile, align 8, !tbaa !1
  %step_matrix63 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %68, i32 0, i32 5
  %69 = bitcast %struct.gs_matrix_s* %step_matrix to i8*
  %70 = bitcast %struct.gs_matrix_s* %step_matrix63 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %69, i8* %70, i64 24, i32 4, i1 false), !tbaa.struct !182
  %bbox = getelementptr inbounds %struct.gx_dc_serialized_tile_s, %struct.gx_dc_serialized_tile_s* %buf, i32 0, i32 5
  %71 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ptile, align 8, !tbaa !1
  %bbox64 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %71, i32 0, i32 6
  %72 = bitcast %struct.gs_rect_s* %bbox to i8*
  %73 = bitcast %struct.gs_rect_s* %bbox64 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %72, i8* %73, i64 32, i32 8, i1 false), !tbaa.struct !183
  %74 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ptile, align 8, !tbaa !1
  %depth = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %74, i32 0, i32 1
  %75 = load i32, i32* %depth, align 4, !tbaa !184
  %or = or i32 %75, 134217728
  %76 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ptile, align 8, !tbaa !1
  %tiling_type = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %76, i32 0, i32 4
  %77 = load i32, i32* %tiling_type, align 4, !tbaa !185
  %shl = shl i32 %77, 24
  %or65 = or i32 %or, %shl
  %78 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ptile, align 8, !tbaa !1
  %is_simple = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %78, i32 0, i32 11
  %79 = load i8, i8* %is_simple, align 1, !tbaa !186
  %conv66 = zext i8 %79 to i32
  %tobool = icmp ne i32 %conv66, 0
  %cond = select i1 %tobool, i32 536870912, i32 0
  %or67 = or i32 %or65, %cond
  %80 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ptile, align 8, !tbaa !1
  %has_overlap = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %80, i32 0, i32 12
  %81 = load i8, i8* %has_overlap, align 1, !tbaa !187
  %conv68 = zext i8 %81 to i32
  %tobool69 = icmp ne i32 %conv68, 0
  %cond70 = select i1 %tobool69, i32 1073741824, i32 0
  %or71 = or i32 %or67, %cond70
  %82 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ptile, align 8, !tbaa !1
  %cdev72 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %82, i32 0, i32 10
  %83 = load %union.gx_device_clist_s*, %union.gx_device_clist_s** %cdev72, align 8, !tbaa !98
  %common73 = bitcast %union.gx_device_clist_s* %83 to %struct.gx_device_clist_common_s*
  %page_uses_transparency = getelementptr inbounds %struct.gx_device_clist_common_s, %struct.gx_device_clist_common_s* %common73, i32 0, i32 37
  %84 = load i32, i32* %page_uses_transparency, align 4, !tbaa !99
  %tobool74 = icmp ne i32 %84, 0
  %cond75 = select i1 %tobool74, i32 268435456, i32 0
  %or76 = or i32 %or71, %cond75
  %flags = getelementptr inbounds %struct.gx_dc_serialized_tile_s, %struct.gx_dc_serialized_tile_s* %buf, i32 0, i32 6
  store i32 %or76, i32* %flags, align 4, !tbaa !188
  %85 = load i32, i32* %left, align 4, !tbaa !42
  %conv77 = sext i32 %85 to i64
  %cmp78 = icmp ugt i64 88, %conv77
  br i1 %cmp78, label %if.then.80, label %if.end.81

if.then.80:                                       ; preds = %if.then.54
  store i32 -28, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.81:                                        ; preds = %if.then.54
  %86 = load i8*, i8** %dp, align 8, !tbaa !1
  %87 = bitcast %struct.gx_dc_serialized_tile_s* %buf to i8*
  %call82 = call i8* @memcpy(i8* %86, i8* %87, i64 88) #7
  %88 = load i32, i32* %left, align 4, !tbaa !42
  %conv83 = sext i32 %88 to i64
  %sub = sub i64 %conv83, 88
  %conv84 = trunc i64 %sub to i32
  store i32 %conv84, i32* %left, align 4, !tbaa !42
  %89 = load i8*, i8** %dp, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %89, i64 88
  store i8* %add.ptr, i8** %dp, align 8, !tbaa !1
  %90 = load i64, i64* %offset1, align 8, !tbaa !48
  %add85 = add i64 %90, 88
  store i64 %add85, i64* %offset1, align 8, !tbaa !48
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.81, %if.then.80
  %91 = bitcast %struct.gx_dc_serialized_tile_s* %buf to i8*
  call void @llvm.lifetime.end(i64 88, i8* %91) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.148 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.86

if.end.86:                                        ; preds = %cleanup.cont, %if.end.51
  %92 = load i64, i64* %offset1, align 8, !tbaa !48
  %93 = load i32, i32* %size_b, align 4, !tbaa !42
  %conv87 = sext i32 %93 to i64
  %add88 = add i64 88, %conv87
  %cmp89 = icmp ule i64 %92, %add88
  br i1 %cmp89, label %if.then.91, label %if.end.115

if.then.91:                                       ; preds = %if.end.86
  %94 = load i32, i32* %left, align 4, !tbaa !42
  %conv92 = sext i32 %94 to i64
  %95 = load i32, i32* %size_b, align 4, !tbaa !42
  %conv93 = sext i32 %95 to i64
  %96 = load i64, i64* %offset1, align 8, !tbaa !48
  %sub94 = sub i64 %96, 88
  %sub95 = sub i64 %conv93, %sub94
  %cmp96 = icmp ult i64 %conv92, %sub95
  br i1 %cmp96, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.91
  %97 = load i32, i32* %left, align 4, !tbaa !42
  %conv98 = sext i32 %97 to i64
  br label %cond.end

cond.false:                                       ; preds = %if.then.91
  %98 = load i32, i32* %size_b, align 4, !tbaa !42
  %conv99 = sext i32 %98 to i64
  %99 = load i64, i64* %offset1, align 8, !tbaa !48
  %sub100 = sub i64 %99, 88
  %sub101 = sub i64 %conv99, %sub100
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond102 = phi i64 [ %conv98, %cond.true ], [ %sub101, %cond.false ]
  %conv103 = trunc i64 %cond102 to i32
  store i32 %conv103, i32* %l, align 4, !tbaa !42
  %100 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ptile, align 8, !tbaa !1
  %cdev104 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %100, i32 0, i32 10
  %101 = load %union.gx_device_clist_s*, %union.gx_device_clist_s** %cdev104, align 8, !tbaa !98
  %102 = load i64, i64* %offset1, align 8, !tbaa !48
  %sub105 = sub i64 %102, 88
  %103 = load i8*, i8** %dp, align 8, !tbaa !1
  %104 = load i32, i32* %l, align 4, !tbaa !42
  %call106 = call i32 @clist_get_data(%union.gx_device_clist_s* %101, i32 0, i64 %sub105, i8* %103, i32 %104) #5
  store i32 %call106, i32* %code, align 4, !tbaa !42
  %105 = load i32, i32* %code, align 4, !tbaa !42
  %cmp107 = icmp slt i32 %105, 0
  br i1 %cmp107, label %if.then.109, label %if.end.110

if.then.109:                                      ; preds = %cond.end
  %106 = load i32, i32* %code, align 4, !tbaa !42
  store i32 %106, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.148

if.end.110:                                       ; preds = %cond.end
  %107 = load i32, i32* %l, align 4, !tbaa !42
  %108 = load i32, i32* %left, align 4, !tbaa !42
  %sub111 = sub nsw i32 %108, %107
  store i32 %sub111, i32* %left, align 4, !tbaa !42
  %109 = load i32, i32* %l, align 4, !tbaa !42
  %conv112 = sext i32 %109 to i64
  %110 = load i64, i64* %offset1, align 8, !tbaa !48
  %add113 = add nsw i64 %110, %conv112
  store i64 %add113, i64* %offset1, align 8, !tbaa !48
  %111 = load i32, i32* %l, align 4, !tbaa !42
  %112 = load i8*, i8** %dp, align 8, !tbaa !1
  %idx.ext = sext i32 %111 to i64
  %add.ptr114 = getelementptr inbounds i8, i8* %112, i64 %idx.ext
  store i8* %add.ptr114, i8** %dp, align 8, !tbaa !1
  br label %if.end.115

if.end.115:                                       ; preds = %if.end.110, %if.end.86
  %113 = load i32, i32* %left, align 4, !tbaa !42
  %cmp116 = icmp sgt i32 %113, 0
  br i1 %cmp116, label %if.then.118, label %if.end.147

if.then.118:                                      ; preds = %if.end.115
  %114 = load i32, i32* %left, align 4, !tbaa !42
  %conv119 = sext i32 %114 to i64
  %115 = load i32, i32* %size_c, align 4, !tbaa !42
  %conv120 = sext i32 %115 to i64
  %116 = load i64, i64* %offset1, align 8, !tbaa !48
  %sub121 = sub i64 %116, 88
  %117 = load i32, i32* %size_b, align 4, !tbaa !42
  %conv122 = sext i32 %117 to i64
  %sub123 = sub i64 %sub121, %conv122
  %sub124 = sub i64 %conv120, %sub123
  %cmp125 = icmp ult i64 %conv119, %sub124
  br i1 %cmp125, label %cond.true.127, label %cond.false.129

cond.true.127:                                    ; preds = %if.then.118
  %118 = load i32, i32* %left, align 4, !tbaa !42
  %conv128 = sext i32 %118 to i64
  br label %cond.end.135

cond.false.129:                                   ; preds = %if.then.118
  %119 = load i32, i32* %size_c, align 4, !tbaa !42
  %conv130 = sext i32 %119 to i64
  %120 = load i64, i64* %offset1, align 8, !tbaa !48
  %sub131 = sub i64 %120, 88
  %121 = load i32, i32* %size_b, align 4, !tbaa !42
  %conv132 = sext i32 %121 to i64
  %sub133 = sub i64 %sub131, %conv132
  %sub134 = sub i64 %conv130, %sub133
  br label %cond.end.135

cond.end.135:                                     ; preds = %cond.false.129, %cond.true.127
  %cond136 = phi i64 [ %conv128, %cond.true.127 ], [ %sub134, %cond.false.129 ]
  %conv137 = trunc i64 %cond136 to i32
  store i32 %conv137, i32* %l, align 4, !tbaa !42
  %122 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ptile, align 8, !tbaa !1
  %cdev138 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %122, i32 0, i32 10
  %123 = load %union.gx_device_clist_s*, %union.gx_device_clist_s** %cdev138, align 8, !tbaa !98
  %124 = load i64, i64* %offset1, align 8, !tbaa !48
  %sub139 = sub i64 %124, 88
  %125 = load i32, i32* %size_b, align 4, !tbaa !42
  %conv140 = sext i32 %125 to i64
  %sub141 = sub i64 %sub139, %conv140
  %126 = load i8*, i8** %dp, align 8, !tbaa !1
  %127 = load i32, i32* %l, align 4, !tbaa !42
  %call142 = call i32 @clist_get_data(%union.gx_device_clist_s* %123, i32 1, i64 %sub141, i8* %126, i32 %127) #5
  store i32 %call142, i32* %code, align 4, !tbaa !42
  %128 = load i32, i32* %code, align 4, !tbaa !42
  %cmp143 = icmp slt i32 %128, 0
  br i1 %cmp143, label %if.then.145, label %if.end.146

if.then.145:                                      ; preds = %cond.end.135
  %129 = load i32, i32* %code, align 4, !tbaa !42
  store i32 %129, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.148

if.end.146:                                       ; preds = %cond.end.135
  br label %if.end.147

if.end.147:                                       ; preds = %if.end.146, %if.end.115
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.148

cleanup.148:                                      ; preds = %if.end.147, %if.then.145, %if.then.109, %cleanup, %if.then.46, %if.then.42, %if.then.36, %if.then.29, %do.end.24, %do.end, %if.then.8, %if.then
  %130 = bitcast i32* %l to i8*
  call void @llvm.lifetime.end(i64 4, i8* %130) #1
  %131 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %131) #1
  %132 = bitcast i64* %offset1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %132) #1
  %133 = bitcast i32* %left to i8*
  call void @llvm.lifetime.end(i64 4, i8* %133) #1
  %134 = bitcast i8** %dp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %134) #1
  %135 = bitcast i32* %size_c to i8*
  call void @llvm.lifetime.end(i64 4, i8* %135) #1
  %136 = bitcast i32* %size_b to i8*
  call void @llvm.lifetime.end(i64 4, i8* %136) #1
  %137 = bitcast %struct.gx_color_tile_s** %ptile to i8*
  call void @llvm.lifetime.end(i64 8, i8* %137) #1
  %138 = load i32, i32* %retval
  ret i32 %138
}

; Function Attrs: nounwind uwtable
define i32 @gx_dc_pattern_read(%struct.gx_device_color_s* %pdevc, %struct.gs_imager_state_s* %pis, %struct.gx_device_color_s* %prior_devc, %struct.gx_device_s* %dev, i64 %offset, i8* %data, i32 %size, %struct.gs_memory_s* %mem) #0 {
entry:
  %retval = alloca i32, align 4
  %pdevc.addr = alloca %struct.gx_device_color_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %prior_devc.addr = alloca %struct.gx_device_color_s*, align 8
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %offset.addr = alloca i64, align 8
  %data.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %buf = alloca %struct.gx_dc_serialized_tile_s, align 8
  %size_b = alloca i32, align 4
  %size_c = alloca i32, align 4
  %dp = alloca i8*, align 8
  %left = alloca i32, align 4
  %offset1 = alloca i64, align 8
  %ptile = alloca %struct.gx_color_tile_s*, align 8
  %code = alloca i32, align 4
  %l = alloca i32, align 4
  %trans_info = alloca %struct.tile_trans_clist_info_s, align 4
  %cache_space_needed = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %id9 = alloca i64, align 8
  %state = alloca %struct.gs_state_s, align 8
  %inst = alloca %struct.gs_pattern1_instance_s, align 8
  store %struct.gx_device_color_s* %pdevc, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gx_device_color_s* %prior_devc, %struct.gx_device_color_s** %prior_devc.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i64 %offset, i64* %offset.addr, align 8, !tbaa !48
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !42
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_dc_serialized_tile_s* %buf to i8*
  call void @llvm.lifetime.start(i64 88, i8* %0) #1
  %1 = bitcast i32* %size_b to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %size_c to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  store i32 -1, i32* %size_c, align 4, !tbaa !42
  %3 = bitcast i8** %dp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load i8*, i8** %data.addr, align 8, !tbaa !1
  store i8* %4, i8** %dp, align 8, !tbaa !1
  %5 = bitcast i32* %left to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = load i32, i32* %size.addr, align 4, !tbaa !42
  store i32 %6, i32* %left, align 4, !tbaa !42
  %7 = bitcast i64* %offset1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = load i64, i64* %offset.addr, align 8, !tbaa !48
  store i64 %8, i64* %offset1, align 8, !tbaa !48
  %9 = bitcast %struct.gx_color_tile_s** %ptile to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = bitcast i32* %l to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  %12 = bitcast %struct.tile_trans_clist_info_s* %trans_info to i8*
  call void @llvm.lifetime.start(i64 40, i8* %12) #1
  %13 = bitcast i32* %cache_space_needed to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  %14 = load i64, i64* %offset.addr, align 8, !tbaa !48
  %cmp = icmp eq i64 %14, 0
  br i1 %cmp, label %if.then, label %if.else.192

if.then:                                          ; preds = %entry
  %15 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %mask = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %15, i32 0, i32 5
  %id = getelementptr inbounds %struct._mask, %struct._mask* %mask, i32 0, i32 1
  store i64 0, i64* %id, align 8, !tbaa !173
  %16 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %mask1 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %16, i32 0, i32 5
  %m_tile = getelementptr inbounds %struct._mask, %struct._mask* %mask1, i32 0, i32 2
  store %struct.gx_color_tile_s* null, %struct.gx_color_tile_s** %m_tile, align 8, !tbaa !189
  %17 = load i32, i32* %size.addr, align 4, !tbaa !42
  %cmp2 = icmp eq i32 %17, 0
  br i1 %cmp2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  %18 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %18, i32 0, i32 0
  store %struct.gx_device_color_type_s* @gx_dc_pattern, %struct.gx_device_color_type_s** %type, align 8, !tbaa !105
  %19 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %colors = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %19, i32 0, i32 1
  %pattern = bitcast %union._c* %colors to %struct._pat*
  %p_tile = getelementptr inbounds %struct._pat, %struct._pat* %pattern, i32 0, i32 0
  store %struct.gx_color_tile_s* null, %struct.gx_color_tile_s** %p_tile, align 8, !tbaa !93
  %20 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %mask4 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %20, i32 0, i32 5
  %id5 = getelementptr inbounds %struct._mask, %struct._mask* %mask4, i32 0, i32 1
  store i64 0, i64* %id5, align 8, !tbaa !173
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.267

if.end:                                           ; preds = %if.then
  %21 = load i32, i32* %size.addr, align 4, !tbaa !42
  %conv = zext i32 %21 to i64
  %cmp6 = icmp eq i64 %conv, 8
  br i1 %cmp6, label %if.then.8, label %if.end.13

if.then.8:                                        ; preds = %if.end
  %22 = bitcast i64* %id9 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %22) #1
  %23 = bitcast i64* %id9 to i8*
  %24 = load i8*, i8** %dp, align 8, !tbaa !1
  %call = call i8* @memcpy(i8* %23, i8* %24, i64 8) #7
  %25 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %type10 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %25, i32 0, i32 0
  store %struct.gx_device_color_type_s* @gx_dc_pattern, %struct.gx_device_color_type_s** %type10, align 8, !tbaa !105
  %26 = load i64, i64* %id9, align 8, !tbaa !48
  %27 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %mask11 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %27, i32 0, i32 5
  %id12 = getelementptr inbounds %struct._mask, %struct._mask* %mask11, i32 0, i32 1
  store i64 %26, i64* %id12, align 8, !tbaa !173
  %28 = load i32, i32* %size.addr, align 4, !tbaa !42
  store i32 %28, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  %29 = bitcast i64* %id9 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %29) #1
  br label %cleanup.267

if.end.13:                                        ; preds = %if.end
  %30 = load i32, i32* %size.addr, align 4, !tbaa !42
  %conv14 = zext i32 %30 to i64
  %cmp15 = icmp ugt i64 88, %conv14
  br i1 %cmp15, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.end.13
  store i32 -28, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.267

if.end.18:                                        ; preds = %if.end.13
  %31 = bitcast %struct.gx_dc_serialized_tile_s* %buf to i8*
  %32 = load i8*, i8** %dp, align 8, !tbaa !1
  %call19 = call i8* @memcpy(i8* %31, i8* %32, i64 88) #7
  %33 = load i8*, i8** %dp, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %33, i64 88
  store i8* %add.ptr, i8** %dp, align 8, !tbaa !1
  %34 = load i32, i32* %left, align 4, !tbaa !42
  %conv20 = sext i32 %34 to i64
  %sub = sub i64 %conv20, 88
  %conv21 = trunc i64 %sub to i32
  store i32 %conv21, i32* %left, align 4, !tbaa !42
  %35 = load i64, i64* %offset1, align 8, !tbaa !48
  %add = add i64 %35, 88
  store i64 %add, i64* %offset1, align 8, !tbaa !48
  %flags = getelementptr inbounds %struct.gx_dc_serialized_tile_s, %struct.gx_dc_serialized_tile_s* %buf, i32 0, i32 6
  %36 = load i32, i32* %flags, align 4, !tbaa !188
  %and = and i32 %36, 268435456
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end.18
  %flags22 = getelementptr inbounds %struct.gx_dc_serialized_tile_s, %struct.gx_dc_serialized_tile_s* %buf, i32 0, i32 6
  %37 = load i32, i32* %flags22, align 4, !tbaa !188
  %and23 = and i32 %37, 134217728
  %tobool24 = icmp ne i32 %and23, 0
  br i1 %tobool24, label %if.else, label %if.then.25

if.then.25:                                       ; preds = %land.lhs.true
  %38 = load i32, i32* %size.addr, align 4, !tbaa !42
  %conv26 = zext i32 %38 to i64
  %cmp27 = icmp ugt i64 128, %conv26
  br i1 %cmp27, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %if.then.25
  store i32 -28, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.267

if.end.30:                                        ; preds = %if.then.25
  %39 = bitcast %struct.tile_trans_clist_info_s* %trans_info to i8*
  %40 = load i8*, i8** %dp, align 8, !tbaa !1
  %call31 = call i8* @memcpy(i8* %39, i8* %40, i64 40) #7
  %41 = load i8*, i8** %dp, align 8, !tbaa !1
  %add.ptr32 = getelementptr inbounds i8, i8* %41, i64 40
  store i8* %add.ptr32, i8** %dp, align 8, !tbaa !1
  %42 = load i32, i32* %left, align 4, !tbaa !42
  %conv33 = sext i32 %42 to i64
  %sub34 = sub i64 %conv33, 40
  %conv35 = trunc i64 %sub34 to i32
  store i32 %conv35, i32* %left, align 4, !tbaa !42
  %43 = load i64, i64* %offset1, align 8, !tbaa !48
  %add36 = add i64 %43, 40
  store i64 %add36, i64* %offset1, align 8, !tbaa !48
  %planestride = getelementptr inbounds %struct.tile_trans_clist_info_s, %struct.tile_trans_clist_info_s* %trans_info, i32 0, i32 2
  %44 = load i32, i32* %planestride, align 4, !tbaa !190
  %cmp37 = icmp sgt i32 %44, 357913941
  br i1 %cmp37, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.30
  br label %cond.end

cond.false:                                       ; preds = %if.end.30
  %planestride39 = getelementptr inbounds %struct.tile_trans_clist_info_s, %struct.tile_trans_clist_info_s* %trans_info, i32 0, i32 2
  %45 = load i32, i32* %planestride39, align 4, !tbaa !190
  %n_chan = getelementptr inbounds %struct.tile_trans_clist_info_s, %struct.tile_trans_clist_info_s* %trans_info, i32 0, i32 3
  %46 = load i32, i32* %n_chan, align 4, !tbaa !193
  %mul = mul nsw i32 %45, %46
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 2147418112, %cond.true ], [ %mul, %cond.false ]
  store i32 %cond, i32* %cache_space_needed, align 4, !tbaa !42
  br label %if.end.43

if.else:                                          ; preds = %land.lhs.true, %if.end.18
  %size_b40 = getelementptr inbounds %struct.gx_dc_serialized_tile_s, %struct.gx_dc_serialized_tile_s* %buf, i32 0, i32 1
  %47 = load i32, i32* %size_b40, align 4, !tbaa !180
  %size_c41 = getelementptr inbounds %struct.gx_dc_serialized_tile_s, %struct.gx_dc_serialized_tile_s* %buf, i32 0, i32 2
  %48 = load i32, i32* %size_c41, align 4, !tbaa !181
  %add42 = add nsw i32 %47, %48
  store i32 %add42, i32* %cache_space_needed, align 4, !tbaa !42
  br label %if.end.43

if.end.43:                                        ; preds = %if.else, %cond.end
  %49 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %50 = load i32, i32* %cache_space_needed, align 4, !tbaa !42
  call void @gx_pattern_cache_ensure_space(%struct.gs_imager_state_s* %49, i32 %50) #5
  %51 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %id44 = getelementptr inbounds %struct.gx_dc_serialized_tile_s, %struct.gx_dc_serialized_tile_s* %buf, i32 0, i32 0
  %52 = load i64, i64* %id44, align 8, !tbaa !174
  %call45 = call i32 @gx_pattern_cache_get_entry(%struct.gs_imager_state_s* %51, i64 %52, %struct.gx_color_tile_s** %ptile) #5
  store i32 %call45, i32* %code, align 4, !tbaa !42
  %53 = load i32, i32* %code, align 4, !tbaa !42
  %cmp46 = icmp slt i32 %53, 0
  br i1 %cmp46, label %if.then.48, label %if.end.49

if.then.48:                                       ; preds = %if.end.43
  %54 = load i32, i32* %code, align 4, !tbaa !42
  store i32 %54, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.267

if.end.49:                                        ; preds = %if.end.43
  %55 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %56 = load i32, i32* %cache_space_needed, align 4, !tbaa !42
  %conv50 = sext i32 %56 to i64
  call void @gx_pattern_cache_update_used(%struct.gs_imager_state_s* %55, i64 %conv50) #5
  %57 = load i32, i32* %cache_space_needed, align 4, !tbaa !42
  %58 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ptile, align 8, !tbaa !1
  %bits_used = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %58, i32 0, i32 3
  store i32 %57, i32* %bits_used, align 4, !tbaa !194
  %59 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %type51 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %59, i32 0, i32 0
  store %struct.gx_device_color_type_s* @gx_dc_pattern, %struct.gx_device_color_type_s** %type51, align 8, !tbaa !105
  %60 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ptile, align 8, !tbaa !1
  %61 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %colors52 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %61, i32 0, i32 1
  %pattern53 = bitcast %union._c* %colors52 to %struct._pat*
  %p_tile54 = getelementptr inbounds %struct._pat, %struct._pat* %pattern53, i32 0, i32 0
  store %struct.gx_color_tile_s* %60, %struct.gx_color_tile_s** %p_tile54, align 8, !tbaa !93
  %id55 = getelementptr inbounds %struct.gx_dc_serialized_tile_s, %struct.gx_dc_serialized_tile_s* %buf, i32 0, i32 0
  %62 = load i64, i64* %id55, align 8, !tbaa !174
  %63 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ptile, align 8, !tbaa !1
  %id56 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %63, i32 0, i32 0
  store i64 %62, i64* %id56, align 8, !tbaa !109
  %id57 = getelementptr inbounds %struct.gx_dc_serialized_tile_s, %struct.gx_dc_serialized_tile_s* %buf, i32 0, i32 0
  %64 = load i64, i64* %id57, align 8, !tbaa !174
  %65 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %mask58 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %65, i32 0, i32 5
  %id59 = getelementptr inbounds %struct._mask, %struct._mask* %mask58, i32 0, i32 1
  store i64 %64, i64* %id59, align 8, !tbaa !173
  %66 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ptile, align 8, !tbaa !1
  %step_matrix = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %66, i32 0, i32 5
  %step_matrix60 = getelementptr inbounds %struct.gx_dc_serialized_tile_s, %struct.gx_dc_serialized_tile_s* %buf, i32 0, i32 4
  %67 = bitcast %struct.gs_matrix_s* %step_matrix to i8*
  %68 = bitcast %struct.gs_matrix_s* %step_matrix60 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %67, i8* %68, i64 24, i32 4, i1 false), !tbaa.struct !182
  %69 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ptile, align 8, !tbaa !1
  %bbox = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %69, i32 0, i32 6
  %bbox61 = getelementptr inbounds %struct.gx_dc_serialized_tile_s, %struct.gx_dc_serialized_tile_s* %buf, i32 0, i32 5
  %70 = bitcast %struct.gs_rect_s* %bbox to i8*
  %71 = bitcast %struct.gs_rect_s* %bbox61 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %70, i8* %71, i64 32, i32 8, i1 false), !tbaa.struct !183
  %flags62 = getelementptr inbounds %struct.gx_dc_serialized_tile_s, %struct.gx_dc_serialized_tile_s* %buf, i32 0, i32 6
  %72 = load i32, i32* %flags62, align 4, !tbaa !188
  %and63 = and i32 %72, 16777215
  %73 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ptile, align 8, !tbaa !1
  %depth = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %73, i32 0, i32 1
  store i32 %and63, i32* %depth, align 4, !tbaa !184
  %flags64 = getelementptr inbounds %struct.gx_dc_serialized_tile_s, %struct.gx_dc_serialized_tile_s* %buf, i32 0, i32 6
  %74 = load i32, i32* %flags64, align 4, !tbaa !188
  %and65 = and i32 %74, 117440512
  %shr = ashr i32 %and65, 24
  %75 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ptile, align 8, !tbaa !1
  %tiling_type = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %75, i32 0, i32 4
  store i32 %shr, i32* %tiling_type, align 4, !tbaa !185
  %flags66 = getelementptr inbounds %struct.gx_dc_serialized_tile_s, %struct.gx_dc_serialized_tile_s* %buf, i32 0, i32 6
  %76 = load i32, i32* %flags66, align 4, !tbaa !188
  %and67 = and i32 %76, 536870912
  %tobool68 = icmp ne i32 %and67, 0
  %lnot = xor i1 %tobool68, true
  %lnot69 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot69 to i32
  %conv70 = trunc i32 %lnot.ext to i8
  %77 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ptile, align 8, !tbaa !1
  %is_simple = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %77, i32 0, i32 11
  store i8 %conv70, i8* %is_simple, align 1, !tbaa !186
  %flags71 = getelementptr inbounds %struct.gx_dc_serialized_tile_s, %struct.gx_dc_serialized_tile_s* %buf, i32 0, i32 6
  %78 = load i32, i32* %flags71, align 4, !tbaa !188
  %and72 = and i32 %78, 1073741824
  %tobool73 = icmp ne i32 %and72, 0
  %lnot74 = xor i1 %tobool73, true
  %lnot76 = xor i1 %lnot74, true
  %lnot.ext77 = zext i1 %lnot76 to i32
  %conv78 = trunc i32 %lnot.ext77 to i8
  %79 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ptile, align 8, !tbaa !1
  %has_overlap = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %79, i32 0, i32 12
  store i8 %conv78, i8* %has_overlap, align 1, !tbaa !187
  %80 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ptile, align 8, !tbaa !1
  %is_dummy = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %80, i32 0, i32 13
  store i8 0, i8* %is_dummy, align 1, !tbaa !195
  %flags79 = getelementptr inbounds %struct.gx_dc_serialized_tile_s, %struct.gx_dc_serialized_tile_s* %buf, i32 0, i32 6
  %81 = load i32, i32* %flags79, align 4, !tbaa !188
  %and80 = and i32 %81, 134217728
  %tobool81 = icmp ne i32 %and80, 0
  br i1 %tobool81, label %if.end.144, label %if.then.82

if.then.82:                                       ; preds = %if.end.49
  %flags83 = getelementptr inbounds %struct.gx_dc_serialized_tile_s, %struct.gx_dc_serialized_tile_s* %buf, i32 0, i32 6
  %82 = load i32, i32* %flags83, align 4, !tbaa !188
  %and84 = and i32 %82, 268435456
  %tobool85 = icmp ne i32 %and84, 0
  br i1 %tobool85, label %if.then.86, label %if.else.135

if.then.86:                                       ; preds = %if.then.82
  %83 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call87 = call %struct.gx_pattern_trans_s* @new_pattern_trans_buff(%struct.gs_memory_s* %83) #5
  %84 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ptile, align 8, !tbaa !1
  %ttrans = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %84, i32 0, i32 9
  store %struct.gx_pattern_trans_s* %call87, %struct.gx_pattern_trans_s** %ttrans, align 8, !tbaa !95
  %blend_mode = getelementptr inbounds %struct.tile_trans_clist_info_s, %struct.tile_trans_clist_info_s* %trans_info, i32 0, i32 6
  %85 = load i32, i32* %blend_mode, align 4, !tbaa !196
  %86 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ptile, align 8, !tbaa !1
  %ttrans88 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %86, i32 0, i32 9
  %87 = load %struct.gx_pattern_trans_s*, %struct.gx_pattern_trans_s** %ttrans88, align 8, !tbaa !95
  %blending_mode = getelementptr inbounds %struct.gx_pattern_trans_s, %struct.gx_pattern_trans_s* %87, i32 0, i32 13
  store i32 %85, i32* %blending_mode, align 4, !tbaa !197
  %height = getelementptr inbounds %struct.tile_trans_clist_info_s, %struct.tile_trans_clist_info_s* %trans_info, i32 0, i32 5
  %88 = load i32, i32* %height, align 4, !tbaa !199
  %89 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ptile, align 8, !tbaa !1
  %ttrans89 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %89, i32 0, i32 9
  %90 = load %struct.gx_pattern_trans_s*, %struct.gx_pattern_trans_s** %ttrans89, align 8, !tbaa !95
  %height90 = getelementptr inbounds %struct.gx_pattern_trans_s, %struct.gx_pattern_trans_s* %90, i32 0, i32 10
  store i32 %88, i32* %height90, align 4, !tbaa !200
  %n_chan91 = getelementptr inbounds %struct.tile_trans_clist_info_s, %struct.tile_trans_clist_info_s* %trans_info, i32 0, i32 3
  %91 = load i32, i32* %n_chan91, align 4, !tbaa !193
  %92 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ptile, align 8, !tbaa !1
  %ttrans92 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %92, i32 0, i32 9
  %93 = load %struct.gx_pattern_trans_s*, %struct.gx_pattern_trans_s** %ttrans92, align 8, !tbaa !95
  %n_chan93 = getelementptr inbounds %struct.gx_pattern_trans_s, %struct.gx_pattern_trans_s* %93, i32 0, i32 7
  store i32 %91, i32* %n_chan93, align 4, !tbaa !201
  %94 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ptile, align 8, !tbaa !1
  %ttrans94 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %94, i32 0, i32 9
  %95 = load %struct.gx_pattern_trans_s*, %struct.gx_pattern_trans_s** %ttrans94, align 8, !tbaa !95
  %pdev14 = getelementptr inbounds %struct.gx_pattern_trans_s, %struct.gx_pattern_trans_s* %95, i32 0, i32 0
  store %struct.gx_device_s* null, %struct.gx_device_s** %pdev14, align 8, !tbaa !202
  %planestride95 = getelementptr inbounds %struct.tile_trans_clist_info_s, %struct.tile_trans_clist_info_s* %trans_info, i32 0, i32 2
  %96 = load i32, i32* %planestride95, align 4, !tbaa !190
  %97 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ptile, align 8, !tbaa !1
  %ttrans96 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %97, i32 0, i32 9
  %98 = load %struct.gx_pattern_trans_s*, %struct.gx_pattern_trans_s** %ttrans96, align 8, !tbaa !95
  %planestride97 = getelementptr inbounds %struct.gx_pattern_trans_s, %struct.gx_pattern_trans_s* %98, i32 0, i32 6
  store i32 %96, i32* %planestride97, align 4, !tbaa !203
  %rect = getelementptr inbounds %struct.tile_trans_clist_info_s, %struct.tile_trans_clist_info_s* %trans_info, i32 0, i32 0
  %p = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect, i32 0, i32 0
  %x = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p, i32 0, i32 0
  %99 = load i32, i32* %x, align 4, !tbaa !204
  %100 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ptile, align 8, !tbaa !1
  %ttrans98 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %100, i32 0, i32 9
  %101 = load %struct.gx_pattern_trans_s*, %struct.gx_pattern_trans_s** %ttrans98, align 8, !tbaa !95
  %rect99 = getelementptr inbounds %struct.gx_pattern_trans_s, %struct.gx_pattern_trans_s* %101, i32 0, i32 4
  %p100 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect99, i32 0, i32 0
  %x101 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p100, i32 0, i32 0
  store i32 %99, i32* %x101, align 4, !tbaa !205
  %rect102 = getelementptr inbounds %struct.tile_trans_clist_info_s, %struct.tile_trans_clist_info_s* %trans_info, i32 0, i32 0
  %p103 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect102, i32 0, i32 0
  %y = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p103, i32 0, i32 1
  %102 = load i32, i32* %y, align 4, !tbaa !206
  %103 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ptile, align 8, !tbaa !1
  %ttrans104 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %103, i32 0, i32 9
  %104 = load %struct.gx_pattern_trans_s*, %struct.gx_pattern_trans_s** %ttrans104, align 8, !tbaa !95
  %rect105 = getelementptr inbounds %struct.gx_pattern_trans_s, %struct.gx_pattern_trans_s* %104, i32 0, i32 4
  %p106 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect105, i32 0, i32 0
  %y107 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p106, i32 0, i32 1
  store i32 %102, i32* %y107, align 4, !tbaa !207
  %rect108 = getelementptr inbounds %struct.tile_trans_clist_info_s, %struct.tile_trans_clist_info_s* %trans_info, i32 0, i32 0
  %q = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect108, i32 0, i32 1
  %x109 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q, i32 0, i32 0
  %105 = load i32, i32* %x109, align 4, !tbaa !208
  %106 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ptile, align 8, !tbaa !1
  %ttrans110 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %106, i32 0, i32 9
  %107 = load %struct.gx_pattern_trans_s*, %struct.gx_pattern_trans_s** %ttrans110, align 8, !tbaa !95
  %rect111 = getelementptr inbounds %struct.gx_pattern_trans_s, %struct.gx_pattern_trans_s* %107, i32 0, i32 4
  %q112 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect111, i32 0, i32 1
  %x113 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q112, i32 0, i32 0
  store i32 %105, i32* %x113, align 4, !tbaa !209
  %rect114 = getelementptr inbounds %struct.tile_trans_clist_info_s, %struct.tile_trans_clist_info_s* %trans_info, i32 0, i32 0
  %q115 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect114, i32 0, i32 1
  %y116 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q115, i32 0, i32 1
  %108 = load i32, i32* %y116, align 4, !tbaa !210
  %109 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ptile, align 8, !tbaa !1
  %ttrans117 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %109, i32 0, i32 9
  %110 = load %struct.gx_pattern_trans_s*, %struct.gx_pattern_trans_s** %ttrans117, align 8, !tbaa !95
  %rect118 = getelementptr inbounds %struct.gx_pattern_trans_s, %struct.gx_pattern_trans_s* %110, i32 0, i32 4
  %q119 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect118, i32 0, i32 1
  %y120 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q119, i32 0, i32 1
  store i32 %108, i32* %y120, align 4, !tbaa !211
  %rowstride = getelementptr inbounds %struct.tile_trans_clist_info_s, %struct.tile_trans_clist_info_s* %trans_info, i32 0, i32 1
  %111 = load i32, i32* %rowstride, align 4, !tbaa !212
  %112 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ptile, align 8, !tbaa !1
  %ttrans121 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %112, i32 0, i32 9
  %113 = load %struct.gx_pattern_trans_s*, %struct.gx_pattern_trans_s** %ttrans121, align 8, !tbaa !95
  %rowstride122 = getelementptr inbounds %struct.gx_pattern_trans_s, %struct.gx_pattern_trans_s* %113, i32 0, i32 5
  store i32 %111, i32* %rowstride122, align 4, !tbaa !213
  %width = getelementptr inbounds %struct.tile_trans_clist_info_s, %struct.tile_trans_clist_info_s* %trans_info, i32 0, i32 4
  %114 = load i32, i32* %width, align 4, !tbaa !214
  %115 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ptile, align 8, !tbaa !1
  %ttrans123 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %115, i32 0, i32 9
  %116 = load %struct.gx_pattern_trans_s*, %struct.gx_pattern_trans_s** %ttrans123, align 8, !tbaa !95
  %width124 = getelementptr inbounds %struct.gx_pattern_trans_s, %struct.gx_pattern_trans_s* %116, i32 0, i32 9
  store i32 %114, i32* %width124, align 4, !tbaa !215
  %117 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %type125 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %117, i32 0, i32 0
  store %struct.gx_device_color_type_s* @gx_dc_pattern_trans, %struct.gx_device_color_type_s** %type125, align 8, !tbaa !105
  br label %do.body

do.body:                                          ; preds = %if.then.86
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %118 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ptile, align 8, !tbaa !1
  %119 = load i64, i64* %offset1, align 8, !tbaa !48
  %120 = load i8*, i8** %dp, align 8, !tbaa !1
  %121 = load i32, i32* %left, align 4, !tbaa !42
  %122 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call126 = call i32 @gx_dc_pattern_read_trans_buff(%struct.gx_color_tile_s* %118, i64 %119, i8* %120, i32 %121, %struct.gs_memory_s* %122) #5
  store i32 %call126, i32* %code, align 4, !tbaa !42
  %123 = load i32, i32* %code, align 4, !tbaa !42
  %cmp127 = icmp slt i32 %123, 0
  br i1 %cmp127, label %if.then.129, label %if.end.130

if.then.129:                                      ; preds = %do.end
  %124 = load i32, i32* %code, align 4, !tbaa !42
  store i32 %124, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.267

if.end.130:                                       ; preds = %do.end
  %125 = load i32, i32* %code, align 4, !tbaa !42
  %conv131 = sext i32 %125 to i64
  %add132 = add i64 %conv131, 88
  %add133 = add i64 %add132, 40
  %conv134 = trunc i64 %add133 to i32
  store i32 %conv134, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.267

if.else.135:                                      ; preds = %if.then.82
  %126 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ptile, align 8, !tbaa !1
  %127 = load i64, i64* %offset1, align 8, !tbaa !48
  %128 = load i8*, i8** %dp, align 8, !tbaa !1
  %129 = load i32, i32* %left, align 4, !tbaa !42
  %130 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call136 = call i32 @gx_dc_pattern_read_raster(%struct.gx_color_tile_s* %126, %struct.gx_dc_serialized_tile_s* %buf, i64 %127, i8* %128, i32 %129, %struct.gs_memory_s* %130) #5
  store i32 %call136, i32* %code, align 4, !tbaa !42
  %131 = load i32, i32* %code, align 4, !tbaa !42
  %cmp137 = icmp slt i32 %131, 0
  br i1 %cmp137, label %if.then.139, label %if.end.140

if.then.139:                                      ; preds = %if.else.135
  %132 = load i32, i32* %code, align 4, !tbaa !42
  store i32 %132, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.267

if.end.140:                                       ; preds = %if.else.135
  %133 = load i32, i32* %code, align 4, !tbaa !42
  %conv141 = sext i32 %133 to i64
  %add142 = add i64 %conv141, 88
  %conv143 = trunc i64 %add142 to i32
  store i32 %conv143, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.267

if.end.144:                                       ; preds = %if.end.49
  %size_b145 = getelementptr inbounds %struct.gx_dc_serialized_tile_s, %struct.gx_dc_serialized_tile_s* %buf, i32 0, i32 1
  %134 = load i32, i32* %size_b145, align 4, !tbaa !180
  store i32 %134, i32* %size_b, align 4, !tbaa !42
  %size_c146 = getelementptr inbounds %struct.gx_dc_serialized_tile_s, %struct.gx_dc_serialized_tile_s* %buf, i32 0, i32 2
  %135 = load i32, i32* %size_c146, align 4, !tbaa !181
  store i32 %135, i32* %size_c, align 4, !tbaa !42
  %136 = load i32, i32* %size_b, align 4, !tbaa !42
  %137 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ptile, align 8, !tbaa !1
  %tbits = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %137, i32 0, i32 7
  %size147 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tbits, i32 0, i32 2
  %x148 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %size147, i32 0, i32 0
  store i32 %136, i32* %x148, align 4, !tbaa !216
  %138 = load i32, i32* %size_c, align 4, !tbaa !42
  %139 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ptile, align 8, !tbaa !1
  %tbits149 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %139, i32 0, i32 7
  %size150 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tbits149, i32 0, i32 2
  %y151 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %size150, i32 0, i32 1
  store i32 %138, i32* %y151, align 4, !tbaa !217
  %140 = bitcast %struct.gs_state_s* %state to i8*
  call void @llvm.lifetime.start(i64 1920, i8* %140) #1
  %141 = bitcast %struct.gs_pattern1_instance_s* %inst to i8*
  call void @llvm.lifetime.start(i64 248, i8* %141) #1
  %142 = bitcast %struct.gs_state_s* %state to i8*
  %call152 = call i8* @memset(i8* %142, i32 0, i64 1920) #7
  %143 = bitcast %struct.gs_pattern1_instance_s* %inst to i8*
  %call153 = call i8* @memset(i8* %143, i32 0, i64 248) #7
  %144 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %device = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %state, i32 0, i32 78
  store %struct.gx_device_s* %144, %struct.gx_device_s** %device, align 8, !tbaa !19
  %templat = getelementptr inbounds %struct.gs_pattern1_instance_s, %struct.gs_pattern1_instance_s* %inst, i32 0, i32 4
  %PaintType = getelementptr inbounds %struct.gs_pattern1_template_s, %struct.gs_pattern1_template_s* %templat, i32 0, i32 4
  store i32 1, i32* %PaintType, align 4, !tbaa !218
  %size154 = getelementptr inbounds %struct.gx_dc_serialized_tile_s, %struct.gx_dc_serialized_tile_s* %buf, i32 0, i32 3
  %x155 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %size154, i32 0, i32 0
  %145 = load i32, i32* %x155, align 4, !tbaa !177
  %size156 = getelementptr inbounds %struct.gs_pattern1_instance_s, %struct.gs_pattern1_instance_s* %inst, i32 0, i32 12
  %x157 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %size156, i32 0, i32 0
  store i32 %145, i32* %x157, align 4, !tbaa !69
  %size158 = getelementptr inbounds %struct.gx_dc_serialized_tile_s, %struct.gx_dc_serialized_tile_s* %buf, i32 0, i32 3
  %y159 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %size158, i32 0, i32 1
  %146 = load i32, i32* %y159, align 4, !tbaa !179
  %size160 = getelementptr inbounds %struct.gs_pattern1_instance_s, %struct.gs_pattern1_instance_s* %inst, i32 0, i32 12
  %y161 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %size160, i32 0, i32 1
  store i32 %146, i32* %y161, align 4, !tbaa !70
  %saved = getelementptr inbounds %struct.gs_pattern1_instance_s, %struct.gs_pattern1_instance_s* %inst, i32 0, i32 2
  store %struct.gs_state_s* %state, %struct.gs_state_s** %saved, align 8, !tbaa !49
  %flags162 = getelementptr inbounds %struct.gx_dc_serialized_tile_s, %struct.gx_dc_serialized_tile_s* %buf, i32 0, i32 6
  %147 = load i32, i32* %flags162, align 4, !tbaa !188
  %and163 = and i32 %147, 134217728
  %tobool164 = icmp ne i32 %and163, 0
  %lnot165 = xor i1 %tobool164, true
  %lnot167 = xor i1 %lnot165, true
  %lnot.ext168 = zext i1 %lnot167 to i32
  %is_clist = getelementptr inbounds %struct.gs_pattern1_instance_s, %struct.gs_pattern1_instance_s* %inst, i32 0, i32 11
  store i32 %lnot.ext168, i32* %is_clist, align 4, !tbaa !80
  %148 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %149 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call169 = call %struct.gx_device_forward_s* @gx_pattern_accum_alloc(%struct.gs_memory_s* %148, %struct.gs_memory_s* %149, %struct.gs_pattern1_instance_s* %inst, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i32 0, i32 0)) #5
  %150 = bitcast %struct.gx_device_forward_s* %call169 to %union.gx_device_clist_s*
  %151 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ptile, align 8, !tbaa !1
  %cdev = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %151, i32 0, i32 10
  store %union.gx_device_clist_s* %150, %union.gx_device_clist_s** %cdev, align 8, !tbaa !98
  %152 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ptile, align 8, !tbaa !1
  %cdev170 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %152, i32 0, i32 10
  %153 = load %union.gx_device_clist_s*, %union.gx_device_clist_s** %cdev170, align 8, !tbaa !98
  %cmp171 = icmp eq %union.gx_device_clist_s* %153, null
  br i1 %cmp171, label %if.then.173, label %if.end.174

if.then.173:                                      ; preds = %if.end.144
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.174:                                       ; preds = %if.end.144
  %flags175 = getelementptr inbounds %struct.gx_dc_serialized_tile_s, %struct.gx_dc_serialized_tile_s* %buf, i32 0, i32 6
  %154 = load i32, i32* %flags175, align 4, !tbaa !188
  %and176 = and i32 %154, 268435456
  %tobool177 = icmp ne i32 %and176, 0
  %lnot178 = xor i1 %tobool177, true
  %lnot180 = xor i1 %lnot178, true
  %lnot.ext181 = zext i1 %lnot180 to i32
  %155 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ptile, align 8, !tbaa !1
  %cdev182 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %155, i32 0, i32 10
  %156 = load %union.gx_device_clist_s*, %union.gx_device_clist_s** %cdev182, align 8, !tbaa !98
  %common = bitcast %union.gx_device_clist_s* %156 to %struct.gx_device_clist_common_s*
  %page_uses_transparency = getelementptr inbounds %struct.gx_device_clist_common_s, %struct.gx_device_clist_common_s* %common, i32 0, i32 37
  store i32 %lnot.ext181, i32* %page_uses_transparency, align 4, !tbaa !99
  %157 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ptile, align 8, !tbaa !1
  %cdev183 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %157, i32 0, i32 10
  %158 = load %union.gx_device_clist_s*, %union.gx_device_clist_s** %cdev183, align 8, !tbaa !98
  %writer = bitcast %union.gx_device_clist_s* %158 to %struct.gx_device_clist_writer_s*
  %procs = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %writer, i32 0, i32 42
  %open_device = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 0
  %159 = load i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*)** %open_device, align 8, !tbaa !219
  %160 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ptile, align 8, !tbaa !1
  %cdev184 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %160, i32 0, i32 10
  %161 = load %union.gx_device_clist_s*, %union.gx_device_clist_s** %cdev184, align 8, !tbaa !98
  %writer185 = bitcast %union.gx_device_clist_s* %161 to %struct.gx_device_clist_writer_s*
  %162 = bitcast %struct.gx_device_clist_writer_s* %writer185 to %struct.gx_device_s*
  %call186 = call i32 %159(%struct.gx_device_s* %162) #5
  store i32 %call186, i32* %code, align 4, !tbaa !42
  %163 = load i32, i32* %code, align 4, !tbaa !42
  %cmp187 = icmp slt i32 %163, 0
  br i1 %cmp187, label %if.then.189, label %if.end.190

if.then.189:                                      ; preds = %if.end.174
  %164 = load i32, i32* %code, align 4, !tbaa !42
  store i32 %164, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.190:                                       ; preds = %if.end.174
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.190, %if.then.189, %if.then.173
  %165 = bitcast %struct.gs_pattern1_instance_s* %inst to i8*
  call void @llvm.lifetime.end(i64 248, i8* %165) #1
  %166 = bitcast %struct.gs_state_s* %state to i8*
  call void @llvm.lifetime.end(i64 1920, i8* %166) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.267 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.214

if.else.192:                                      ; preds = %entry
  %167 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %colors193 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %167, i32 0, i32 1
  %pattern194 = bitcast %union._c* %colors193 to %struct._pat*
  %p_tile195 = getelementptr inbounds %struct._pat, %struct._pat* %pattern194, i32 0, i32 0
  %168 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %p_tile195, align 8, !tbaa !93
  store %struct.gx_color_tile_s* %168, %struct.gx_color_tile_s** %ptile, align 8, !tbaa !1
  %169 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ptile, align 8, !tbaa !1
  %ttrans196 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %169, i32 0, i32 9
  %170 = load %struct.gx_pattern_trans_s*, %struct.gx_pattern_trans_s** %ttrans196, align 8, !tbaa !95
  %cmp197 = icmp ne %struct.gx_pattern_trans_s* %170, null
  br i1 %cmp197, label %if.then.199, label %if.end.201

if.then.199:                                      ; preds = %if.else.192
  %171 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ptile, align 8, !tbaa !1
  %172 = load i64, i64* %offset1, align 8, !tbaa !48
  %173 = load i8*, i8** %dp, align 8, !tbaa !1
  %174 = load i32, i32* %left, align 4, !tbaa !42
  %175 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call200 = call i32 @gx_dc_pattern_read_trans_buff(%struct.gx_color_tile_s* %171, i64 %172, i8* %173, i32 %174, %struct.gs_memory_s* %175) #5
  store i32 %call200, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.267

if.end.201:                                       ; preds = %if.else.192
  %176 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ptile, align 8, !tbaa !1
  %cdev202 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %176, i32 0, i32 10
  %177 = load %union.gx_device_clist_s*, %union.gx_device_clist_s** %cdev202, align 8, !tbaa !98
  %cmp203 = icmp eq %union.gx_device_clist_s* %177, null
  br i1 %cmp203, label %if.then.205, label %if.end.207

if.then.205:                                      ; preds = %if.end.201
  %178 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ptile, align 8, !tbaa !1
  %179 = load i64, i64* %offset1, align 8, !tbaa !48
  %180 = load i8*, i8** %dp, align 8, !tbaa !1
  %181 = load i32, i32* %left, align 4, !tbaa !42
  %182 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call206 = call i32 @gx_dc_pattern_read_raster(%struct.gx_color_tile_s* %178, %struct.gx_dc_serialized_tile_s* null, i64 %179, i8* %180, i32 %181, %struct.gs_memory_s* %182) #5
  store i32 %call206, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.267

if.end.207:                                       ; preds = %if.end.201
  %183 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ptile, align 8, !tbaa !1
  %tbits208 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %183, i32 0, i32 7
  %size209 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tbits208, i32 0, i32 2
  %x210 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %size209, i32 0, i32 0
  %184 = load i32, i32* %x210, align 4, !tbaa !216
  store i32 %184, i32* %size_b, align 4, !tbaa !42
  %185 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ptile, align 8, !tbaa !1
  %tbits211 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %185, i32 0, i32 7
  %size212 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tbits211, i32 0, i32 2
  %y213 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %size212, i32 0, i32 1
  %186 = load i32, i32* %y213, align 4, !tbaa !217
  store i32 %186, i32* %size_c, align 4, !tbaa !42
  br label %if.end.214

if.end.214:                                       ; preds = %if.end.207, %cleanup.cont
  %187 = load i64, i64* %offset1, align 8, !tbaa !48
  %188 = load i32, i32* %size_b, align 4, !tbaa !42
  %conv215 = sext i32 %188 to i64
  %add216 = add i64 88, %conv215
  %cmp217 = icmp ule i64 %187, %add216
  br i1 %cmp217, label %if.then.219, label %if.end.249

if.then.219:                                      ; preds = %if.end.214
  %189 = load i32, i32* %left, align 4, !tbaa !42
  %conv220 = sext i32 %189 to i64
  %190 = load i32, i32* %size_b, align 4, !tbaa !42
  %conv221 = sext i32 %190 to i64
  %191 = load i64, i64* %offset1, align 8, !tbaa !48
  %sub222 = sub i64 %191, 88
  %sub223 = sub i64 %conv221, %sub222
  %cmp224 = icmp ult i64 %conv220, %sub223
  br i1 %cmp224, label %cond.true.226, label %cond.false.228

cond.true.226:                                    ; preds = %if.then.219
  %192 = load i32, i32* %left, align 4, !tbaa !42
  %conv227 = sext i32 %192 to i64
  br label %cond.end.232

cond.false.228:                                   ; preds = %if.then.219
  %193 = load i32, i32* %size_b, align 4, !tbaa !42
  %conv229 = sext i32 %193 to i64
  %194 = load i64, i64* %offset1, align 8, !tbaa !48
  %sub230 = sub i64 %194, 88
  %sub231 = sub i64 %conv229, %sub230
  br label %cond.end.232

cond.end.232:                                     ; preds = %cond.false.228, %cond.true.226
  %cond233 = phi i64 [ %conv227, %cond.true.226 ], [ %sub231, %cond.false.228 ]
  %conv234 = trunc i64 %cond233 to i32
  store i32 %conv234, i32* %l, align 4, !tbaa !42
  %195 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ptile, align 8, !tbaa !1
  %cdev235 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %195, i32 0, i32 10
  %196 = load %union.gx_device_clist_s*, %union.gx_device_clist_s** %cdev235, align 8, !tbaa !98
  %197 = load i64, i64* %offset1, align 8, !tbaa !48
  %sub236 = sub i64 %197, 88
  %198 = load i8*, i8** %dp, align 8, !tbaa !1
  %199 = load i32, i32* %l, align 4, !tbaa !42
  %call237 = call i32 @clist_put_data(%union.gx_device_clist_s* %196, i32 0, i64 %sub236, i8* %198, i32 %199) #5
  store i32 %call237, i32* %code, align 4, !tbaa !42
  %200 = load i32, i32* %code, align 4, !tbaa !42
  %cmp238 = icmp slt i32 %200, 0
  br i1 %cmp238, label %if.then.240, label %if.end.241

if.then.240:                                      ; preds = %cond.end.232
  %201 = load i32, i32* %code, align 4, !tbaa !42
  store i32 %201, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.267

if.end.241:                                       ; preds = %cond.end.232
  %202 = load i32, i32* %code, align 4, !tbaa !42
  store i32 %202, i32* %l, align 4, !tbaa !42
  %203 = load i32, i32* %l, align 4, !tbaa !42
  %204 = load i32, i32* %left, align 4, !tbaa !42
  %sub242 = sub nsw i32 %204, %203
  store i32 %sub242, i32* %left, align 4, !tbaa !42
  %205 = load i32, i32* %l, align 4, !tbaa !42
  %conv243 = sext i32 %205 to i64
  %206 = load i64, i64* %offset1, align 8, !tbaa !48
  %add244 = add nsw i64 %206, %conv243
  store i64 %add244, i64* %offset1, align 8, !tbaa !48
  %207 = load i32, i32* %l, align 4, !tbaa !42
  %208 = load i8*, i8** %dp, align 8, !tbaa !1
  %idx.ext = sext i32 %207 to i64
  %add.ptr245 = getelementptr inbounds i8, i8* %208, i64 %idx.ext
  store i8* %add.ptr245, i8** %dp, align 8, !tbaa !1
  %209 = load i64, i64* %offset1, align 8, !tbaa !48
  %sub246 = sub i64 %209, 88
  %210 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ptile, align 8, !tbaa !1
  %cdev247 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %210, i32 0, i32 10
  %211 = load %union.gx_device_clist_s*, %union.gx_device_clist_s** %cdev247, align 8, !tbaa !98
  %common248 = bitcast %union.gx_device_clist_s* %211 to %struct.gx_device_clist_common_s*
  %page_info = getelementptr inbounds %struct.gx_device_clist_common_s, %struct.gx_device_clist_common_s* %common248, i32 0, i32 58
  %bfile_end_pos = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info, i32 0, i32 7
  store i64 %sub246, i64* %bfile_end_pos, align 8, !tbaa !225
  br label %if.end.249

if.end.249:                                       ; preds = %if.end.241, %if.end.214
  %212 = load i32, i32* %left, align 4, !tbaa !42
  %cmp250 = icmp sgt i32 %212, 0
  br i1 %cmp250, label %if.then.252, label %if.end.265

if.then.252:                                      ; preds = %if.end.249
  %213 = load i32, i32* %left, align 4, !tbaa !42
  store i32 %213, i32* %l, align 4, !tbaa !42
  %214 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ptile, align 8, !tbaa !1
  %cdev253 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %214, i32 0, i32 10
  %215 = load %union.gx_device_clist_s*, %union.gx_device_clist_s** %cdev253, align 8, !tbaa !98
  %216 = load i64, i64* %offset1, align 8, !tbaa !48
  %sub254 = sub i64 %216, 88
  %217 = load i32, i32* %size_b, align 4, !tbaa !42
  %conv255 = sext i32 %217 to i64
  %sub256 = sub i64 %sub254, %conv255
  %218 = load i8*, i8** %dp, align 8, !tbaa !1
  %219 = load i32, i32* %l, align 4, !tbaa !42
  %call257 = call i32 @clist_put_data(%union.gx_device_clist_s* %215, i32 1, i64 %sub256, i8* %218, i32 %219) #5
  store i32 %call257, i32* %code, align 4, !tbaa !42
  %220 = load i32, i32* %code, align 4, !tbaa !42
  %cmp258 = icmp slt i32 %220, 0
  br i1 %cmp258, label %if.then.260, label %if.end.261

if.then.260:                                      ; preds = %if.then.252
  %221 = load i32, i32* %code, align 4, !tbaa !42
  store i32 %221, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.267

if.end.261:                                       ; preds = %if.then.252
  %222 = load i32, i32* %code, align 4, !tbaa !42
  store i32 %222, i32* %l, align 4, !tbaa !42
  %223 = load i32, i32* %l, align 4, !tbaa !42
  %224 = load i32, i32* %left, align 4, !tbaa !42
  %sub262 = sub nsw i32 %224, %223
  store i32 %sub262, i32* %left, align 4, !tbaa !42
  %225 = load i32, i32* %l, align 4, !tbaa !42
  %conv263 = sext i32 %225 to i64
  %226 = load i64, i64* %offset1, align 8, !tbaa !48
  %add264 = add nsw i64 %226, %conv263
  store i64 %add264, i64* %offset1, align 8, !tbaa !48
  br label %if.end.265

if.end.265:                                       ; preds = %if.end.261, %if.end.249
  %227 = load i32, i32* %size.addr, align 4, !tbaa !42
  %228 = load i32, i32* %left, align 4, !tbaa !42
  %sub266 = sub i32 %227, %228
  store i32 %sub266, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.267

cleanup.267:                                      ; preds = %if.end.265, %if.then.260, %if.then.240, %if.then.205, %if.then.199, %cleanup, %if.end.140, %if.then.139, %if.end.130, %if.then.129, %if.then.48, %if.then.29, %if.then.17, %if.then.8, %if.then.3
  %229 = bitcast i32* %cache_space_needed to i8*
  call void @llvm.lifetime.end(i64 4, i8* %229) #1
  %230 = bitcast %struct.tile_trans_clist_info_s* %trans_info to i8*
  call void @llvm.lifetime.end(i64 40, i8* %230) #1
  %231 = bitcast i32* %l to i8*
  call void @llvm.lifetime.end(i64 4, i8* %231) #1
  %232 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %232) #1
  %233 = bitcast %struct.gx_color_tile_s** %ptile to i8*
  call void @llvm.lifetime.end(i64 8, i8* %233) #1
  %234 = bitcast i64* %offset1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %234) #1
  %235 = bitcast i32* %left to i8*
  call void @llvm.lifetime.end(i64 4, i8* %235) #1
  %236 = bitcast i8** %dp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %236) #1
  %237 = bitcast i32* %size_c to i8*
  call void @llvm.lifetime.end(i64 4, i8* %237) #1
  %238 = bitcast i32* %size_b to i8*
  call void @llvm.lifetime.end(i64 4, i8* %238) #1
  %239 = bitcast %struct.gx_dc_serialized_tile_s* %buf to i8*
  call void @llvm.lifetime.end(i64 88, i8* %239) #1
  %240 = load i32, i32* %retval
  ret i32 %240
}

; Function Attrs: nounwind uwtable
define i32 @gx_dc_pattern_get_nonzero_comps(%struct.gx_device_color_s* %pdevc_ignored, %struct.gx_device_s* %dev_ignored, i64* %pcomp_bits_ignored) #0 {
entry:
  %pdevc_ignored.addr = alloca %struct.gx_device_color_s*, align 8
  %dev_ignored.addr = alloca %struct.gx_device_s*, align 8
  %pcomp_bits_ignored.addr = alloca i64*, align 8
  store %struct.gx_device_color_s* %pdevc_ignored, %struct.gx_device_color_s** %pdevc_ignored.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %dev_ignored, %struct.gx_device_s** %dev_ignored.addr, align 8, !tbaa !1
  store i64* %pcomp_bits_ignored, i64** %pcomp_bits_ignored.addr, align 8, !tbaa !1
  ret i32 1
}

declare i32 @gx_dc_pat_trans_fill_rectangle(%struct.gx_device_color_s*, i32, i32, i32, i32, %struct.gx_device_s*, i32, %struct.gx_rop_source_s*) #2

; Function Attrs: nounwind uwtable
define internal %struct.gx_device_halftone_s* @gx_dc_pure_masked_get_dev_halftone(%struct.gx_device_color_s* %pdevc) #0 {
entry:
  %pdevc.addr = alloca %struct.gx_device_color_s*, align 8
  store %struct.gx_device_color_s* %pdevc, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  ret %struct.gx_device_halftone_s* null
}

declare i32 @gx_dc_no_get_phase(%struct.gx_device_color_s*, %struct.gs_int_point_s*) #2

; Function Attrs: nounwind uwtable
define internal i32 @gx_dc_pure_masked_load(%struct.gx_device_color_s* %pdevc, %struct.gs_imager_state_s* %pis, %struct.gx_device_s* %dev, i32 %select) #0 {
entry:
  %retval = alloca i32, align 4
  %pdevc.addr = alloca %struct.gx_device_color_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %select.addr = alloca i32, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_color_s* %pdevc, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i32 %select, i32* %select.addr, align 4, !tbaa !135
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load i32 (%struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)** getelementptr inbounds (%struct.gx_device_color_type_s, %struct.gx_device_color_type_s* @gx_dc_type_data_pure, i32 0, i32 4), align 8, !tbaa !226
  %2 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %3 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %4 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %5 = load i32, i32* %select.addr, align 4, !tbaa !135
  %call = call i32 %1(%struct.gx_device_color_s* %2, %struct.gs_imager_state_s* %3, %struct.gx_device_s* %4, i32 %5) #5
  store i32 %call, i32* %code, align 4, !tbaa !42
  %6 = load i32, i32* %code, align 4, !tbaa !42
  %cmp = icmp slt i32 %6, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load i32, i32* %code, align 4, !tbaa !42
  store i32 %7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %if.end.5, %if.end
  %8 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %9 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %10 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %11 = load i32, i32* %select.addr, align 4, !tbaa !135
  %call1 = call i32 @gx_pattern_cache_lookup(%struct.gx_device_color_s* %8, %struct.gs_imager_state_s* %9, %struct.gx_device_s* %10, i32 %11) #5
  %tobool = icmp ne i32 %call1, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %12 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %13 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %14 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %15 = load i32, i32* %select.addr, align 4, !tbaa !135
  %call2 = call i32 @gx_pattern_load(%struct.gx_device_color_s* %12, %struct.gs_imager_state_s* %13, %struct.gx_device_s* %14, i32 %15) #5
  store i32 %call2, i32* %code, align 4, !tbaa !42
  %16 = load i32, i32* %code, align 4, !tbaa !42
  %cmp3 = icmp slt i32 %16, 0
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %while.body
  br label %while.end

if.end.5:                                         ; preds = %while.body
  br label %while.cond

while.end:                                        ; preds = %if.then.4, %while.cond
  %17 = load i32, i32* %code, align 4, !tbaa !42
  store i32 %17, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.then
  %18 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %18) #1
  %19 = load i32, i32* %retval
  ret i32 %19
}

declare i32 @gx_dc_pure_masked_fill_rect(%struct.gx_device_color_s*, i32, i32, i32, i32, %struct.gx_device_s*, i32, %struct.gx_rop_source_s*) #2

; Function Attrs: nounwind uwtable
define internal i32 @gx_dc_pure_masked_equal(%struct.gx_device_color_s* %pdevc1, %struct.gx_device_color_s* %pdevc2) #0 {
entry:
  %pdevc1.addr = alloca %struct.gx_device_color_s*, align 8
  %pdevc2.addr = alloca %struct.gx_device_color_s*, align 8
  store %struct.gx_device_color_s* %pdevc1, %struct.gx_device_color_s** %pdevc1.addr, align 8, !tbaa !1
  store %struct.gx_device_color_s* %pdevc2, %struct.gx_device_color_s** %pdevc2.addr, align 8, !tbaa !1
  %0 = load i32 (%struct.gx_device_color_s*, %struct.gx_device_color_s*)*, i32 (%struct.gx_device_color_s*, %struct.gx_device_color_s*)** getelementptr inbounds (%struct.gx_device_color_type_s, %struct.gx_device_color_type_s* @gx_dc_type_data_pure, i32 0, i32 7), align 8, !tbaa !228
  %1 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc1.addr, align 8, !tbaa !1
  %2 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc2.addr, align 8, !tbaa !1
  %call = call i32 %0(%struct.gx_device_color_s* %1, %struct.gx_device_color_s* %2) #5
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %3 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc1.addr, align 8, !tbaa !1
  %mask = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %3, i32 0, i32 5
  %id = getelementptr inbounds %struct._mask, %struct._mask* %mask, i32 0, i32 1
  %4 = load i64, i64* %id, align 8, !tbaa !173
  %5 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc2.addr, align 8, !tbaa !1
  %mask1 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %5, i32 0, i32 5
  %id2 = getelementptr inbounds %struct._mask, %struct._mask* %mask1, i32 0, i32 1
  %6 = load i64, i64* %id2, align 8, !tbaa !173
  %cmp = icmp eq i64 %4, %6
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %7 = phi i1 [ false, %entry ], [ %cmp, %land.rhs ]
  %land.ext = zext i1 %7 to i32
  ret i32 %land.ext
}

declare i32 @gx_dc_cannot_write(%struct.gx_device_color_s*, %struct.gx_device_color_saved_s*, %struct.gx_device_s*, i64, i8*, i32*) #2

declare i32 @gx_dc_cannot_read(%struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_device_s*, i64, i8*, i32, %struct.gs_memory_s*) #2

declare i32 @gx_dc_pure_get_nonzero_comps(%struct.gx_device_color_s*, %struct.gx_device_s*, i64*) #2

; Function Attrs: nounwind uwtable
define internal %struct.gx_device_halftone_s* @gx_dc_binary_masked_get_dev_halftone(%struct.gx_device_color_s* %pdevc) #0 {
entry:
  %pdevc.addr = alloca %struct.gx_device_color_s*, align 8
  store %struct.gx_device_color_s* %pdevc, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %0 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %colors = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %0, i32 0, i32 1
  %binary = bitcast %union._c* %colors to %struct._bin*
  %b_ht = getelementptr inbounds %struct._bin, %struct._bin* %binary, i32 0, i32 0
  %1 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %b_ht, align 8, !tbaa !229
  ret %struct.gx_device_halftone_s* %1
}

; Function Attrs: nounwind uwtable
define internal i32 @gx_dc_binary_masked_load(%struct.gx_device_color_s* %pdevc, %struct.gs_imager_state_s* %pis, %struct.gx_device_s* %dev, i32 %select) #0 {
entry:
  %retval = alloca i32, align 4
  %pdevc.addr = alloca %struct.gx_device_color_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %select.addr = alloca i32, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_color_s* %pdevc, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i32 %select, i32* %select.addr, align 4, !tbaa !135
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load i32 (%struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)** getelementptr inbounds (%struct.gx_device_color_type_s, %struct.gx_device_color_type_s* @gx_dc_type_data_ht_binary, i32 0, i32 4), align 8, !tbaa !226
  %2 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %3 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %4 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %5 = load i32, i32* %select.addr, align 4, !tbaa !135
  %call = call i32 %1(%struct.gx_device_color_s* %2, %struct.gs_imager_state_s* %3, %struct.gx_device_s* %4, i32 %5) #5
  store i32 %call, i32* %code, align 4, !tbaa !42
  %6 = load i32, i32* %code, align 4, !tbaa !42
  %cmp = icmp slt i32 %6, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load i32, i32* %code, align 4, !tbaa !42
  store i32 %7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %if.end.5, %if.end
  %8 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %9 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %10 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %11 = load i32, i32* %select.addr, align 4, !tbaa !135
  %call1 = call i32 @gx_pattern_cache_lookup(%struct.gx_device_color_s* %8, %struct.gs_imager_state_s* %9, %struct.gx_device_s* %10, i32 %11) #5
  %tobool = icmp ne i32 %call1, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %12 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %13 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %14 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %15 = load i32, i32* %select.addr, align 4, !tbaa !135
  %call2 = call i32 @gx_pattern_load(%struct.gx_device_color_s* %12, %struct.gs_imager_state_s* %13, %struct.gx_device_s* %14, i32 %15) #5
  store i32 %call2, i32* %code, align 4, !tbaa !42
  %16 = load i32, i32* %code, align 4, !tbaa !42
  %cmp3 = icmp slt i32 %16, 0
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %while.body
  br label %while.end

if.end.5:                                         ; preds = %while.body
  br label %while.cond

while.end:                                        ; preds = %if.then.4, %while.cond
  %17 = load i32, i32* %code, align 4, !tbaa !42
  store i32 %17, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.then
  %18 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %18) #1
  %19 = load i32, i32* %retval
  ret i32 %19
}

declare i32 @gx_dc_binary_masked_fill_rect(%struct.gx_device_color_s*, i32, i32, i32, i32, %struct.gx_device_s*, i32, %struct.gx_rop_source_s*) #2

; Function Attrs: nounwind uwtable
define internal i32 @gx_dc_binary_masked_equal(%struct.gx_device_color_s* %pdevc1, %struct.gx_device_color_s* %pdevc2) #0 {
entry:
  %pdevc1.addr = alloca %struct.gx_device_color_s*, align 8
  %pdevc2.addr = alloca %struct.gx_device_color_s*, align 8
  store %struct.gx_device_color_s* %pdevc1, %struct.gx_device_color_s** %pdevc1.addr, align 8, !tbaa !1
  store %struct.gx_device_color_s* %pdevc2, %struct.gx_device_color_s** %pdevc2.addr, align 8, !tbaa !1
  %0 = load i32 (%struct.gx_device_color_s*, %struct.gx_device_color_s*)*, i32 (%struct.gx_device_color_s*, %struct.gx_device_color_s*)** getelementptr inbounds (%struct.gx_device_color_type_s, %struct.gx_device_color_type_s* @gx_dc_type_data_ht_binary, i32 0, i32 7), align 8, !tbaa !228
  %1 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc1.addr, align 8, !tbaa !1
  %2 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc2.addr, align 8, !tbaa !1
  %call = call i32 %0(%struct.gx_device_color_s* %1, %struct.gx_device_color_s* %2) #5
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %3 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc1.addr, align 8, !tbaa !1
  %mask = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %3, i32 0, i32 5
  %id = getelementptr inbounds %struct._mask, %struct._mask* %mask, i32 0, i32 1
  %4 = load i64, i64* %id, align 8, !tbaa !173
  %5 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc2.addr, align 8, !tbaa !1
  %mask1 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %5, i32 0, i32 5
  %id2 = getelementptr inbounds %struct._mask, %struct._mask* %mask1, i32 0, i32 1
  %6 = load i64, i64* %id2, align 8, !tbaa !173
  %cmp = icmp eq i64 %4, %6
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %7 = phi i1 [ false, %entry ], [ %cmp, %land.rhs ]
  %land.ext = zext i1 %7 to i32
  ret i32 %land.ext
}

declare i32 @gx_dc_ht_binary_get_nonzero_comps(%struct.gx_device_color_s*, %struct.gx_device_s*, i64*) #2

; Function Attrs: nounwind uwtable
define internal %struct.gx_device_halftone_s* @gx_dc_colored_masked_get_dev_halftone(%struct.gx_device_color_s* %pdevc) #0 {
entry:
  %pdevc.addr = alloca %struct.gx_device_color_s*, align 8
  store %struct.gx_device_color_s* %pdevc, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %0 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %colors = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %0, i32 0, i32 1
  %colored = bitcast %union._c* %colors to %struct._col*
  %c_ht = getelementptr inbounds %struct._col, %struct._col* %colored, i32 0, i32 0
  %1 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %c_ht, align 8, !tbaa !231
  ret %struct.gx_device_halftone_s* %1
}

; Function Attrs: nounwind uwtable
define internal i32 @gx_dc_colored_masked_load(%struct.gx_device_color_s* %pdevc, %struct.gs_imager_state_s* %pis, %struct.gx_device_s* %dev, i32 %select) #0 {
entry:
  %retval = alloca i32, align 4
  %pdevc.addr = alloca %struct.gx_device_color_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %select.addr = alloca i32, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_color_s* %pdevc, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i32 %select, i32* %select.addr, align 4, !tbaa !135
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load i32 (%struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)** getelementptr inbounds (%struct.gx_device_color_type_s, %struct.gx_device_color_type_s* @gx_dc_type_data_ht_colored, i32 0, i32 4), align 8, !tbaa !226
  %2 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %3 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %4 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %5 = load i32, i32* %select.addr, align 4, !tbaa !135
  %call = call i32 %1(%struct.gx_device_color_s* %2, %struct.gs_imager_state_s* %3, %struct.gx_device_s* %4, i32 %5) #5
  store i32 %call, i32* %code, align 4, !tbaa !42
  %6 = load i32, i32* %code, align 4, !tbaa !42
  %cmp = icmp slt i32 %6, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load i32, i32* %code, align 4, !tbaa !42
  store i32 %7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %if.end.5, %if.end
  %8 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %9 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %10 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %11 = load i32, i32* %select.addr, align 4, !tbaa !135
  %call1 = call i32 @gx_pattern_cache_lookup(%struct.gx_device_color_s* %8, %struct.gs_imager_state_s* %9, %struct.gx_device_s* %10, i32 %11) #5
  %tobool = icmp ne i32 %call1, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %12 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %13 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %14 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %15 = load i32, i32* %select.addr, align 4, !tbaa !135
  %call2 = call i32 @gx_pattern_load(%struct.gx_device_color_s* %12, %struct.gs_imager_state_s* %13, %struct.gx_device_s* %14, i32 %15) #5
  store i32 %call2, i32* %code, align 4, !tbaa !42
  %16 = load i32, i32* %code, align 4, !tbaa !42
  %cmp3 = icmp slt i32 %16, 0
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %while.body
  br label %while.end

if.end.5:                                         ; preds = %while.body
  br label %while.cond

while.end:                                        ; preds = %if.then.4, %while.cond
  %17 = load i32, i32* %code, align 4, !tbaa !42
  store i32 %17, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.then
  %18 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %18) #1
  %19 = load i32, i32* %retval
  ret i32 %19
}

declare i32 @gx_dc_colored_masked_fill_rect(%struct.gx_device_color_s*, i32, i32, i32, i32, %struct.gx_device_s*, i32, %struct.gx_rop_source_s*) #2

; Function Attrs: nounwind uwtable
define internal i32 @gx_dc_colored_masked_equal(%struct.gx_device_color_s* %pdevc1, %struct.gx_device_color_s* %pdevc2) #0 {
entry:
  %pdevc1.addr = alloca %struct.gx_device_color_s*, align 8
  %pdevc2.addr = alloca %struct.gx_device_color_s*, align 8
  store %struct.gx_device_color_s* %pdevc1, %struct.gx_device_color_s** %pdevc1.addr, align 8, !tbaa !1
  store %struct.gx_device_color_s* %pdevc2, %struct.gx_device_color_s** %pdevc2.addr, align 8, !tbaa !1
  %0 = load i32 (%struct.gx_device_color_s*, %struct.gx_device_color_s*)*, i32 (%struct.gx_device_color_s*, %struct.gx_device_color_s*)** getelementptr inbounds (%struct.gx_device_color_type_s, %struct.gx_device_color_type_s* @gx_dc_type_data_ht_colored, i32 0, i32 7), align 8, !tbaa !228
  %1 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc1.addr, align 8, !tbaa !1
  %2 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc2.addr, align 8, !tbaa !1
  %call = call i32 %0(%struct.gx_device_color_s* %1, %struct.gx_device_color_s* %2) #5
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %3 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc1.addr, align 8, !tbaa !1
  %mask = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %3, i32 0, i32 5
  %id = getelementptr inbounds %struct._mask, %struct._mask* %mask, i32 0, i32 1
  %4 = load i64, i64* %id, align 8, !tbaa !173
  %5 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc2.addr, align 8, !tbaa !1
  %mask1 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %5, i32 0, i32 5
  %id2 = getelementptr inbounds %struct._mask, %struct._mask* %mask1, i32 0, i32 1
  %6 = load i64, i64* %id2, align 8, !tbaa !173
  %cmp = icmp eq i64 %4, %6
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %7 = phi i1 [ false, %entry ], [ %cmp, %land.rhs ]
  %land.ext = zext i1 %7 to i32
  ret i32 %land.ext
}

declare i32 @gx_dc_ht_colored_get_nonzero_comps(%struct.gx_device_color_s*, %struct.gx_device_s*, i64*) #2

; Function Attrs: nounwind uwtable
define internal i32 @gx_dc_devn_masked_load(%struct.gx_device_color_s* %pdevc, %struct.gs_imager_state_s* %pis, %struct.gx_device_s* %dev, i32 %select) #0 {
entry:
  %retval = alloca i32, align 4
  %pdevc.addr = alloca %struct.gx_device_color_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %select.addr = alloca i32, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_color_s* %pdevc, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i32 %select, i32* %select.addr, align 4, !tbaa !135
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load i32 (%struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)** getelementptr inbounds (%struct.gx_device_color_type_s, %struct.gx_device_color_type_s* @gx_dc_type_data_devn, i32 0, i32 4), align 8, !tbaa !226
  %2 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %3 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %4 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %5 = load i32, i32* %select.addr, align 4, !tbaa !135
  %call = call i32 %1(%struct.gx_device_color_s* %2, %struct.gs_imager_state_s* %3, %struct.gx_device_s* %4, i32 %5) #5
  store i32 %call, i32* %code, align 4, !tbaa !42
  %6 = load i32, i32* %code, align 4, !tbaa !42
  %cmp = icmp slt i32 %6, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load i32, i32* %code, align 4, !tbaa !42
  store i32 %7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %if.end.5, %if.end
  %8 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %9 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %10 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %11 = load i32, i32* %select.addr, align 4, !tbaa !135
  %call1 = call i32 @gx_pattern_cache_lookup(%struct.gx_device_color_s* %8, %struct.gs_imager_state_s* %9, %struct.gx_device_s* %10, i32 %11) #5
  %tobool = icmp ne i32 %call1, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %12 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %13 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %14 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %15 = load i32, i32* %select.addr, align 4, !tbaa !135
  %call2 = call i32 @gx_pattern_load(%struct.gx_device_color_s* %12, %struct.gs_imager_state_s* %13, %struct.gx_device_s* %14, i32 %15) #5
  store i32 %call2, i32* %code, align 4, !tbaa !42
  %16 = load i32, i32* %code, align 4, !tbaa !42
  %cmp3 = icmp slt i32 %16, 0
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %while.body
  br label %while.end

if.end.5:                                         ; preds = %while.body
  br label %while.cond

while.end:                                        ; preds = %if.then.4, %while.cond
  %17 = load i32, i32* %code, align 4, !tbaa !42
  store i32 %17, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.then
  %18 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %18) #1
  %19 = load i32, i32* %retval
  ret i32 %19
}

declare i32 @gx_dc_devn_masked_fill_rect(%struct.gx_device_color_s*, i32, i32, i32, i32, %struct.gx_device_s*, i32, %struct.gx_rop_source_s*) #2

declare i32 @gx_dc_devn_fill_masked(%struct.gx_device_color_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_s*, i32, i32) #2

; Function Attrs: nounwind uwtable
define internal i32 @gx_dc_devn_masked_equal(%struct.gx_device_color_s* %pdevc1, %struct.gx_device_color_s* %pdevc2) #0 {
entry:
  %pdevc1.addr = alloca %struct.gx_device_color_s*, align 8
  %pdevc2.addr = alloca %struct.gx_device_color_s*, align 8
  store %struct.gx_device_color_s* %pdevc1, %struct.gx_device_color_s** %pdevc1.addr, align 8, !tbaa !1
  store %struct.gx_device_color_s* %pdevc2, %struct.gx_device_color_s** %pdevc2.addr, align 8, !tbaa !1
  %0 = load i32 (%struct.gx_device_color_s*, %struct.gx_device_color_s*)*, i32 (%struct.gx_device_color_s*, %struct.gx_device_color_s*)** getelementptr inbounds (%struct.gx_device_color_type_s, %struct.gx_device_color_type_s* @gx_dc_type_data_devn, i32 0, i32 7), align 8, !tbaa !228
  %1 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc1.addr, align 8, !tbaa !1
  %2 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc2.addr, align 8, !tbaa !1
  %call = call i32 %0(%struct.gx_device_color_s* %1, %struct.gx_device_color_s* %2) #5
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %3 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc1.addr, align 8, !tbaa !1
  %mask = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %3, i32 0, i32 5
  %id = getelementptr inbounds %struct._mask, %struct._mask* %mask, i32 0, i32 1
  %4 = load i64, i64* %id, align 8, !tbaa !173
  %5 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc2.addr, align 8, !tbaa !1
  %mask1 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %5, i32 0, i32 5
  %id2 = getelementptr inbounds %struct._mask, %struct._mask* %mask1, i32 0, i32 1
  %6 = load i64, i64* %id2, align 8, !tbaa !173
  %cmp = icmp eq i64 %4, %6
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %7 = phi i1 [ false, %entry ], [ %cmp, %land.rhs ]
  %land.ext = zext i1 %7 to i32
  ret i32 %land.ext
}

declare i32 @gx_dc_devn_get_nonzero_comps(%struct.gx_device_color_s*, %struct.gx_device_s*, i64*) #2

; Function Attrs: nounwind uwtable
define i32 @gx_pattern_cache_lookup(%struct.gx_device_color_s* %pdevc, %struct.gs_imager_state_s* %pis, %struct.gx_device_s* %dev, i32 %select) #0 {
entry:
  %retval = alloca i32, align 4
  %pdevc.addr = alloca %struct.gx_device_color_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %select.addr = alloca i32, align 4
  %pcache = alloca %struct.gx_pattern_cache_s*, align 8
  %id = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  %ctile = alloca %struct.gx_color_tile_s*, align 8
  %internal_accum = alloca i32, align 4
  %code = alloca i32, align 4
  %px = alloca i32, align 4
  %py = alloca i32, align 4
  store %struct.gx_device_color_s* %pdevc, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i32 %select, i32* %select.addr, align 4, !tbaa !135
  %0 = bitcast %struct.gx_pattern_cache_s** %pcache to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %pattern_cache = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %1, i32 0, i32 51
  %2 = load %struct.gx_pattern_cache_s*, %struct.gx_pattern_cache_s** %pattern_cache, align 8, !tbaa !233
  store %struct.gx_pattern_cache_s* %2, %struct.gx_pattern_cache_s** %pcache, align 8, !tbaa !1
  %3 = bitcast i64* %id to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %mask = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %4, i32 0, i32 5
  %id1 = getelementptr inbounds %struct._mask, %struct._mask* %mask, i32 0, i32 1
  %5 = load i64, i64* %id1, align 8, !tbaa !173
  store i64 %5, i64* %id, align 8, !tbaa !48
  %6 = load i64, i64* %id, align 8, !tbaa !48
  %cmp = icmp eq i64 %6, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %mask2 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %7, i32 0, i32 5
  %id3 = getelementptr inbounds %struct._mask, %struct._mask* %mask2, i32 0, i32 1
  store i64 0, i64* %id3, align 8, !tbaa !173
  %8 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %mask4 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %8, i32 0, i32 5
  %m_tile = getelementptr inbounds %struct._mask, %struct._mask* %mask4, i32 0, i32 2
  store %struct.gx_color_tile_s* null, %struct.gx_color_tile_s** %m_tile, align 8, !tbaa !189
  %9 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %colors = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %9, i32 0, i32 1
  %pattern = bitcast %union._c* %colors to %struct._pat*
  %p_tile = getelementptr inbounds %struct._pat, %struct._pat* %pattern, i32 0, i32 0
  store %struct.gx_color_tile_s* null, %struct.gx_color_tile_s** %p_tile, align 8, !tbaa !93
  %10 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %10, i32 0, i32 0
  store %struct.gx_device_color_type_s* @gx_dc_pattern, %struct.gx_device_color_type_s** %type, align 8, !tbaa !105
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.58

if.end:                                           ; preds = %entry
  %11 = load %struct.gx_pattern_cache_s*, %struct.gx_pattern_cache_s** %pcache, align 8, !tbaa !1
  %cmp5 = icmp ne %struct.gx_pattern_cache_s* %11, null
  br i1 %cmp5, label %if.then.6, label %if.end.57

if.then.6:                                        ; preds = %if.end
  %12 = bitcast %struct.gx_color_tile_s** %ctile to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  %13 = load i64, i64* %id, align 8, !tbaa !48
  %14 = load %struct.gx_pattern_cache_s*, %struct.gx_pattern_cache_s** %pcache, align 8, !tbaa !1
  %num_tiles = getelementptr inbounds %struct.gx_pattern_cache_s, %struct.gx_pattern_cache_s* %14, i32 0, i32 2
  %15 = load i32, i32* %num_tiles, align 4, !tbaa !234
  %conv = zext i32 %15 to i64
  %rem = urem i64 %13, %conv
  %16 = load %struct.gx_pattern_cache_s*, %struct.gx_pattern_cache_s** %pcache, align 8, !tbaa !1
  %tiles = getelementptr inbounds %struct.gx_pattern_cache_s, %struct.gx_pattern_cache_s* %16, i32 0, i32 1
  %17 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %tiles, align 8, !tbaa !236
  %arrayidx = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %17, i64 %rem
  store %struct.gx_color_tile_s* %arrayidx, %struct.gx_color_tile_s** %ctile, align 8, !tbaa !1
  %18 = bitcast i32* %internal_accum to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #1
  store i32 1, i32* %internal_accum, align 4, !tbaa !42
  %19 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %have_pattern_streams = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %19, i32 0, i32 31
  %20 = load i32, i32* %have_pattern_streams, align 4, !tbaa !237
  %tobool = icmp ne i32 %20, 0
  br i1 %tobool, label %if.then.7, label %if.end.15

if.then.7:                                        ; preds = %if.then.6
  %21 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %21) #1
  %22 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %22, i32 0, i32 42
  %dev_spec_op = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 65
  %23 = load i32 (%struct.gx_device_s*, i32, i8*, i32)*, i32 (%struct.gx_device_s*, i32, i8*, i32)** %dev_spec_op, align 8, !tbaa !117
  %24 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %25 = load i64, i64* %id, align 8, !tbaa !48
  %conv8 = trunc i64 %25 to i32
  %call = call i32 %23(%struct.gx_device_s* %24, i32 3, i8* null, i32 %conv8) #5
  store i32 %call, i32* %code, align 4, !tbaa !42
  %26 = load i32, i32* %code, align 4, !tbaa !42
  %cmp9 = icmp eq i32 %26, 0
  %conv10 = zext i1 %cmp9 to i32
  store i32 %conv10, i32* %internal_accum, align 4, !tbaa !42
  %27 = load i32, i32* %code, align 4, !tbaa !42
  %cmp11 = icmp slt i32 %27, 0
  br i1 %cmp11, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.then.7
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.14:                                        ; preds = %if.then.7
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.14, %if.then.13
  %28 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %28) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.53 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.15

if.end.15:                                        ; preds = %cleanup.cont, %if.then.6
  %29 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ctile, align 8, !tbaa !1
  %id16 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %29, i32 0, i32 0
  %30 = load i64, i64* %id16, align 8, !tbaa !109
  %31 = load i64, i64* %id, align 8, !tbaa !48
  %cmp17 = icmp eq i64 %30, %31
  br i1 %cmp17, label %land.lhs.true, label %if.end.52

land.lhs.true:                                    ; preds = %if.end.15
  %32 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ctile, align 8, !tbaa !1
  %is_dummy = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %32, i32 0, i32 13
  %33 = load i8, i8* %is_dummy, align 1, !tbaa !195
  %conv19 = zext i8 %33 to i32
  %34 = load i32, i32* %internal_accum, align 4, !tbaa !42
  %tobool20 = icmp ne i32 %34, 0
  %lnot = xor i1 %tobool20, true
  %lnot.ext = zext i1 %lnot to i32
  %cmp21 = icmp eq i32 %conv19, %lnot.ext
  br i1 %cmp21, label %if.then.23, label %if.end.52

if.then.23:                                       ; preds = %land.lhs.true
  %35 = bitcast i32* %px to i8*
  call void @llvm.lifetime.start(i64 4, i8* %35) #1
  %36 = load i32, i32* %select.addr, align 4, !tbaa !135
  %idxprom = sext i32 %36 to i64
  %37 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %screen_phase = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %37, i32 0, i32 40
  %arrayidx24 = getelementptr inbounds [2 x %struct.gs_int_point_s], [2 x %struct.gs_int_point_s]* %screen_phase, i32 0, i64 %idxprom
  %x = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %arrayidx24, i32 0, i32 0
  %38 = load i32, i32* %x, align 4, !tbaa !238
  store i32 %38, i32* %px, align 4, !tbaa !42
  %39 = bitcast i32* %py to i8*
  call void @llvm.lifetime.start(i64 4, i8* %39) #1
  %40 = load i32, i32* %select.addr, align 4, !tbaa !135
  %idxprom25 = sext i32 %40 to i64
  %41 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %screen_phase26 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %41, i32 0, i32 40
  %arrayidx27 = getelementptr inbounds [2 x %struct.gs_int_point_s], [2 x %struct.gs_int_point_s]* %screen_phase26, i32 0, i64 %idxprom25
  %y = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %arrayidx27, i32 0, i32 1
  %42 = load i32, i32* %y, align 4, !tbaa !239
  store i32 %42, i32* %py, align 4, !tbaa !42
  %43 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %call28 = call i32 @gx_dc_is_pattern1_color(%struct.gx_device_color_s* %43) #5
  %tobool29 = icmp ne i32 %call28, 0
  br i1 %tobool29, label %if.then.30, label %if.end.38

if.then.30:                                       ; preds = %if.then.23
  %44 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ctile, align 8, !tbaa !1
  %45 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %colors31 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %45, i32 0, i32 1
  %pattern32 = bitcast %union._c* %colors31 to %struct._pat*
  %p_tile33 = getelementptr inbounds %struct._pat, %struct._pat* %pattern32, i32 0, i32 0
  store %struct.gx_color_tile_s* %44, %struct.gx_color_tile_s** %p_tile33, align 8, !tbaa !93
  %46 = load i32, i32* %px, align 4, !tbaa !42
  %sub = sub nsw i32 0, %46
  %47 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %phase = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %47, i32 0, i32 2
  %x34 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %phase, i32 0, i32 0
  store i32 %sub, i32* %x34, align 4, !tbaa !171
  %48 = load i32, i32* %py, align 4, !tbaa !42
  %sub35 = sub nsw i32 0, %48
  %49 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %phase36 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %49, i32 0, i32 2
  %y37 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %phase36, i32 0, i32 1
  store i32 %sub35, i32* %y37, align 4, !tbaa !172
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.30, %if.then.23
  %50 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ctile, align 8, !tbaa !1
  %tmask = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %50, i32 0, i32 8
  %data = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tmask, i32 0, i32 0
  %51 = load i8*, i8** %data, align 8, !tbaa !240
  %cmp39 = icmp eq i8* %51, null
  br i1 %cmp39, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.38
  br label %cond.end

cond.false:                                       ; preds = %if.end.38
  %52 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ctile, align 8, !tbaa !1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.gx_color_tile_s* [ null, %cond.true ], [ %52, %cond.false ]
  %53 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %mask41 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %53, i32 0, i32 5
  %m_tile42 = getelementptr inbounds %struct._mask, %struct._mask* %mask41, i32 0, i32 2
  store %struct.gx_color_tile_s* %cond, %struct.gx_color_tile_s** %m_tile42, align 8, !tbaa !189
  %54 = load i32, i32* %px, align 4, !tbaa !42
  %sub43 = sub nsw i32 0, %54
  %55 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %mask44 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %55, i32 0, i32 5
  %m_phase = getelementptr inbounds %struct._mask, %struct._mask* %mask44, i32 0, i32 0
  %x45 = getelementptr inbounds %struct.mp_, %struct.mp_* %m_phase, i32 0, i32 0
  store i32 %sub43, i32* %x45, align 4, !tbaa !241
  %56 = load i32, i32* %py, align 4, !tbaa !42
  %sub46 = sub nsw i32 0, %56
  %57 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %mask47 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %57, i32 0, i32 5
  %m_phase48 = getelementptr inbounds %struct._mask, %struct._mask* %mask47, i32 0, i32 0
  %y49 = getelementptr inbounds %struct.mp_, %struct.mp_* %m_phase48, i32 0, i32 1
  store i32 %sub46, i32* %y49, align 4, !tbaa !242
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  %58 = bitcast i32* %py to i8*
  call void @llvm.lifetime.end(i64 4, i8* %58) #1
  %59 = bitcast i32* %px to i8*
  call void @llvm.lifetime.end(i64 4, i8* %59) #1
  br label %cleanup.53

if.end.52:                                        ; preds = %land.lhs.true, %if.end.15
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.53

cleanup.53:                                       ; preds = %if.end.52, %cond.end, %cleanup
  %60 = bitcast i32* %internal_accum to i8*
  call void @llvm.lifetime.end(i64 4, i8* %60) #1
  %61 = bitcast %struct.gx_color_tile_s** %ctile to i8*
  call void @llvm.lifetime.end(i64 8, i8* %61) #1
  %cleanup.dest.55 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.55, label %cleanup.58 [
    i32 0, label %cleanup.cont.56
  ]

cleanup.cont.56:                                  ; preds = %cleanup.53
  br label %if.end.57

if.end.57:                                        ; preds = %cleanup.cont.56, %if.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.58

cleanup.58:                                       ; preds = %if.end.57, %cleanup.53, %if.then
  %62 = bitcast i64* %id to i8*
  call void @llvm.lifetime.end(i64 8, i8* %62) #1
  %63 = bitcast %struct.gx_pattern_cache_s** %pcache to i8*
  call void @llvm.lifetime.end(i64 8, i8* %63) #1
  %64 = load i32, i32* %retval
  ret i32 %64
}

; Function Attrs: nounwind
declare i8* @memcpy(i8*, i8*, i64) #3

; Function Attrs: nounwind uwtable
define internal i32 @gx_dc_pattern_trans_write_raster(%struct.gx_color_tile_s* %ptile, i64 %offset, i8* %data, i32* %psize) #0 {
entry:
  %retval = alloca i32, align 4
  %ptile.addr = alloca %struct.gx_color_tile_s*, align 8
  %offset.addr = alloca i64, align 8
  %data.addr = alloca i8*, align 8
  %psize.addr = alloca i32*, align 8
  %size = alloca i32, align 4
  %size_h = alloca i32, align 4
  %dp = alloca i8*, align 8
  %left = alloca i32, align 4
  %offset1 = alloca i64, align 8
  %ptr = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  %buf = alloca %struct.gx_dc_serialized_tile_s, align 8
  %trans_info = alloca %struct.tile_trans_clist_info_s, align 4
  %u = alloca i32, align 4
  store %struct.gx_color_tile_s* %ptile, %struct.gx_color_tile_s** %ptile.addr, align 8, !tbaa !1
  store i64 %offset, i64* %offset.addr, align 8, !tbaa !48
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i32* %psize, i32** %psize.addr, align 8, !tbaa !1
  %0 = bitcast i32* %size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %size_h to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i8** %dp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load i8*, i8** %data.addr, align 8, !tbaa !1
  store i8* %3, i8** %dp, align 8, !tbaa !1
  %4 = bitcast i32* %left to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load i32*, i32** %psize.addr, align 8, !tbaa !1
  %6 = load i32, i32* %5, align 4, !tbaa !42
  store i32 %6, i32* %left, align 4, !tbaa !42
  %7 = bitcast i64* %offset1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = load i64, i64* %offset.addr, align 8, !tbaa !48
  store i64 %8, i64* %offset1, align 8, !tbaa !48
  %9 = bitcast i8** %ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  store i32 128, i32* %size_h, align 4, !tbaa !42
  %10 = load i32, i32* %size_h, align 4, !tbaa !42
  %11 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ptile.addr, align 8, !tbaa !1
  %ttrans = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %11, i32 0, i32 9
  %12 = load %struct.gx_pattern_trans_s*, %struct.gx_pattern_trans_s** %ttrans, align 8, !tbaa !95
  %n_chan = getelementptr inbounds %struct.gx_pattern_trans_s, %struct.gx_pattern_trans_s* %12, i32 0, i32 7
  %13 = load i32, i32* %n_chan, align 4, !tbaa !201
  %14 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ptile.addr, align 8, !tbaa !1
  %ttrans1 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %14, i32 0, i32 9
  %15 = load %struct.gx_pattern_trans_s*, %struct.gx_pattern_trans_s** %ttrans1, align 8, !tbaa !95
  %planestride = getelementptr inbounds %struct.gx_pattern_trans_s, %struct.gx_pattern_trans_s* %15, i32 0, i32 6
  %16 = load i32, i32* %planestride, align 4, !tbaa !203
  %mul = mul nsw i32 %13, %16
  %add = add nsw i32 %10, %mul
  store i32 %add, i32* %size, align 4, !tbaa !42
  %17 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %cmp = icmp eq i8* %17, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %18 = load i32, i32* %size, align 4, !tbaa !42
  %19 = load i32*, i32** %psize.addr, align 8, !tbaa !1
  store i32 %18, i32* %19, align 4, !tbaa !42
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.93

if.end:                                           ; preds = %entry
  %20 = load i64, i64* %offset1, align 8, !tbaa !48
  %cmp2 = icmp eq i64 %20, 0
  br i1 %cmp2, label %if.then.3, label %if.end.74

if.then.3:                                        ; preds = %if.end
  %21 = bitcast %struct.gx_dc_serialized_tile_s* %buf to i8*
  call void @llvm.lifetime.start(i64 88, i8* %21) #1
  %22 = bitcast %struct.tile_trans_clist_info_s* %trans_info to i8*
  call void @llvm.lifetime.start(i64 40, i8* %22) #1
  %23 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ptile.addr, align 8, !tbaa !1
  %id = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %23, i32 0, i32 0
  %24 = load i64, i64* %id, align 8, !tbaa !109
  %id4 = getelementptr inbounds %struct.gx_dc_serialized_tile_s, %struct.gx_dc_serialized_tile_s* %buf, i32 0, i32 0
  store i64 %24, i64* %id4, align 8, !tbaa !174
  %size5 = getelementptr inbounds %struct.gx_dc_serialized_tile_s, %struct.gx_dc_serialized_tile_s* %buf, i32 0, i32 3
  %x = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %size5, i32 0, i32 0
  store i32 0, i32* %x, align 4, !tbaa !177
  %size6 = getelementptr inbounds %struct.gx_dc_serialized_tile_s, %struct.gx_dc_serialized_tile_s* %buf, i32 0, i32 3
  %y = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %size6, i32 0, i32 1
  store i32 0, i32* %y, align 4, !tbaa !179
  %25 = load i32, i32* %size, align 4, !tbaa !42
  %26 = load i32, i32* %size_h, align 4, !tbaa !42
  %sub = sub nsw i32 %25, %26
  %size_b = getelementptr inbounds %struct.gx_dc_serialized_tile_s, %struct.gx_dc_serialized_tile_s* %buf, i32 0, i32 1
  store i32 %sub, i32* %size_b, align 4, !tbaa !180
  %size_c = getelementptr inbounds %struct.gx_dc_serialized_tile_s, %struct.gx_dc_serialized_tile_s* %buf, i32 0, i32 2
  store i32 0, i32* %size_c, align 4, !tbaa !181
  %27 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ptile.addr, align 8, !tbaa !1
  %depth = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %27, i32 0, i32 1
  %28 = load i32, i32* %depth, align 4, !tbaa !184
  %or = or i32 %28, 268435456
  %29 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ptile.addr, align 8, !tbaa !1
  %tiling_type = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %29, i32 0, i32 4
  %30 = load i32, i32* %tiling_type, align 4, !tbaa !185
  %shl = shl i32 %30, 24
  %or7 = or i32 %or, %shl
  %31 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ptile.addr, align 8, !tbaa !1
  %is_simple = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %31, i32 0, i32 11
  %32 = load i8, i8* %is_simple, align 1, !tbaa !186
  %conv = zext i8 %32 to i32
  %tobool = icmp ne i32 %conv, 0
  %cond = select i1 %tobool, i32 536870912, i32 0
  %or8 = or i32 %or7, %cond
  %33 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ptile.addr, align 8, !tbaa !1
  %has_overlap = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %33, i32 0, i32 12
  %34 = load i8, i8* %has_overlap, align 1, !tbaa !187
  %conv9 = zext i8 %34 to i32
  %tobool10 = icmp ne i32 %conv9, 0
  %cond11 = select i1 %tobool10, i32 1073741824, i32 0
  %or12 = or i32 %or8, %cond11
  %flags = getelementptr inbounds %struct.gx_dc_serialized_tile_s, %struct.gx_dc_serialized_tile_s* %buf, i32 0, i32 6
  store i32 %or12, i32* %flags, align 4, !tbaa !188
  %step_matrix = getelementptr inbounds %struct.gx_dc_serialized_tile_s, %struct.gx_dc_serialized_tile_s* %buf, i32 0, i32 4
  %35 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ptile.addr, align 8, !tbaa !1
  %step_matrix13 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %35, i32 0, i32 5
  %36 = bitcast %struct.gs_matrix_s* %step_matrix to i8*
  %37 = bitcast %struct.gs_matrix_s* %step_matrix13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* %37, i64 24, i32 4, i1 false), !tbaa.struct !182
  %bbox = getelementptr inbounds %struct.gx_dc_serialized_tile_s, %struct.gx_dc_serialized_tile_s* %buf, i32 0, i32 5
  %38 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ptile.addr, align 8, !tbaa !1
  %bbox14 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %38, i32 0, i32 6
  %39 = bitcast %struct.gs_rect_s* %bbox to i8*
  %40 = bitcast %struct.gs_rect_s* %bbox14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %39, i8* %40, i64 32, i32 8, i1 false), !tbaa.struct !183
  %41 = load i32, i32* %left, align 4, !tbaa !42
  %conv15 = sext i32 %41 to i64
  %cmp16 = icmp ugt i64 88, %conv15
  br i1 %cmp16, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %if.then.3
  store i32 -28, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.19:                                        ; preds = %if.then.3
  %42 = load i8*, i8** %dp, align 8, !tbaa !1
  %43 = bitcast %struct.gx_dc_serialized_tile_s* %buf to i8*
  %call = call i8* @memcpy(i8* %42, i8* %43, i64 88) #7
  %44 = load i32, i32* %left, align 4, !tbaa !42
  %conv20 = sext i32 %44 to i64
  %sub21 = sub i64 %conv20, 88
  %conv22 = trunc i64 %sub21 to i32
  store i32 %conv22, i32* %left, align 4, !tbaa !42
  %45 = load i8*, i8** %dp, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %45, i64 88
  store i8* %add.ptr, i8** %dp, align 8, !tbaa !1
  %46 = load i64, i64* %offset1, align 8, !tbaa !48
  %add23 = add i64 %46, 88
  store i64 %add23, i64* %offset1, align 8, !tbaa !48
  %47 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ptile.addr, align 8, !tbaa !1
  %ttrans24 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %47, i32 0, i32 9
  %48 = load %struct.gx_pattern_trans_s*, %struct.gx_pattern_trans_s** %ttrans24, align 8, !tbaa !95
  %blending_mode = getelementptr inbounds %struct.gx_pattern_trans_s, %struct.gx_pattern_trans_s* %48, i32 0, i32 13
  %49 = load i32, i32* %blending_mode, align 4, !tbaa !197
  %blend_mode = getelementptr inbounds %struct.tile_trans_clist_info_s, %struct.tile_trans_clist_info_s* %trans_info, i32 0, i32 6
  store i32 %49, i32* %blend_mode, align 4, !tbaa !196
  %50 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ptile.addr, align 8, !tbaa !1
  %ttrans25 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %50, i32 0, i32 9
  %51 = load %struct.gx_pattern_trans_s*, %struct.gx_pattern_trans_s** %ttrans25, align 8, !tbaa !95
  %height = getelementptr inbounds %struct.gx_pattern_trans_s, %struct.gx_pattern_trans_s* %51, i32 0, i32 10
  %52 = load i32, i32* %height, align 4, !tbaa !200
  %height26 = getelementptr inbounds %struct.tile_trans_clist_info_s, %struct.tile_trans_clist_info_s* %trans_info, i32 0, i32 5
  store i32 %52, i32* %height26, align 4, !tbaa !199
  %53 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ptile.addr, align 8, !tbaa !1
  %ttrans27 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %53, i32 0, i32 9
  %54 = load %struct.gx_pattern_trans_s*, %struct.gx_pattern_trans_s** %ttrans27, align 8, !tbaa !95
  %n_chan28 = getelementptr inbounds %struct.gx_pattern_trans_s, %struct.gx_pattern_trans_s* %54, i32 0, i32 7
  %55 = load i32, i32* %n_chan28, align 4, !tbaa !201
  %n_chan29 = getelementptr inbounds %struct.tile_trans_clist_info_s, %struct.tile_trans_clist_info_s* %trans_info, i32 0, i32 3
  store i32 %55, i32* %n_chan29, align 4, !tbaa !193
  %56 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ptile.addr, align 8, !tbaa !1
  %ttrans30 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %56, i32 0, i32 9
  %57 = load %struct.gx_pattern_trans_s*, %struct.gx_pattern_trans_s** %ttrans30, align 8, !tbaa !95
  %planestride31 = getelementptr inbounds %struct.gx_pattern_trans_s, %struct.gx_pattern_trans_s* %57, i32 0, i32 6
  %58 = load i32, i32* %planestride31, align 4, !tbaa !203
  %planestride32 = getelementptr inbounds %struct.tile_trans_clist_info_s, %struct.tile_trans_clist_info_s* %trans_info, i32 0, i32 2
  store i32 %58, i32* %planestride32, align 4, !tbaa !190
  %59 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ptile.addr, align 8, !tbaa !1
  %ttrans33 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %59, i32 0, i32 9
  %60 = load %struct.gx_pattern_trans_s*, %struct.gx_pattern_trans_s** %ttrans33, align 8, !tbaa !95
  %rect = getelementptr inbounds %struct.gx_pattern_trans_s, %struct.gx_pattern_trans_s* %60, i32 0, i32 4
  %p = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect, i32 0, i32 0
  %x34 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p, i32 0, i32 0
  %61 = load i32, i32* %x34, align 4, !tbaa !205
  %rect35 = getelementptr inbounds %struct.tile_trans_clist_info_s, %struct.tile_trans_clist_info_s* %trans_info, i32 0, i32 0
  %p36 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect35, i32 0, i32 0
  %x37 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p36, i32 0, i32 0
  store i32 %61, i32* %x37, align 4, !tbaa !204
  %62 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ptile.addr, align 8, !tbaa !1
  %ttrans38 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %62, i32 0, i32 9
  %63 = load %struct.gx_pattern_trans_s*, %struct.gx_pattern_trans_s** %ttrans38, align 8, !tbaa !95
  %rect39 = getelementptr inbounds %struct.gx_pattern_trans_s, %struct.gx_pattern_trans_s* %63, i32 0, i32 4
  %p40 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect39, i32 0, i32 0
  %y41 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p40, i32 0, i32 1
  %64 = load i32, i32* %y41, align 4, !tbaa !207
  %rect42 = getelementptr inbounds %struct.tile_trans_clist_info_s, %struct.tile_trans_clist_info_s* %trans_info, i32 0, i32 0
  %p43 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect42, i32 0, i32 0
  %y44 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p43, i32 0, i32 1
  store i32 %64, i32* %y44, align 4, !tbaa !206
  %65 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ptile.addr, align 8, !tbaa !1
  %ttrans45 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %65, i32 0, i32 9
  %66 = load %struct.gx_pattern_trans_s*, %struct.gx_pattern_trans_s** %ttrans45, align 8, !tbaa !95
  %rect46 = getelementptr inbounds %struct.gx_pattern_trans_s, %struct.gx_pattern_trans_s* %66, i32 0, i32 4
  %q = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect46, i32 0, i32 1
  %x47 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q, i32 0, i32 0
  %67 = load i32, i32* %x47, align 4, !tbaa !209
  %rect48 = getelementptr inbounds %struct.tile_trans_clist_info_s, %struct.tile_trans_clist_info_s* %trans_info, i32 0, i32 0
  %q49 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect48, i32 0, i32 1
  %x50 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q49, i32 0, i32 0
  store i32 %67, i32* %x50, align 4, !tbaa !208
  %68 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ptile.addr, align 8, !tbaa !1
  %ttrans51 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %68, i32 0, i32 9
  %69 = load %struct.gx_pattern_trans_s*, %struct.gx_pattern_trans_s** %ttrans51, align 8, !tbaa !95
  %rect52 = getelementptr inbounds %struct.gx_pattern_trans_s, %struct.gx_pattern_trans_s* %69, i32 0, i32 4
  %q53 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect52, i32 0, i32 1
  %y54 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q53, i32 0, i32 1
  %70 = load i32, i32* %y54, align 4, !tbaa !211
  %rect55 = getelementptr inbounds %struct.tile_trans_clist_info_s, %struct.tile_trans_clist_info_s* %trans_info, i32 0, i32 0
  %q56 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect55, i32 0, i32 1
  %y57 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q56, i32 0, i32 1
  store i32 %70, i32* %y57, align 4, !tbaa !210
  %71 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ptile.addr, align 8, !tbaa !1
  %ttrans58 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %71, i32 0, i32 9
  %72 = load %struct.gx_pattern_trans_s*, %struct.gx_pattern_trans_s** %ttrans58, align 8, !tbaa !95
  %rowstride = getelementptr inbounds %struct.gx_pattern_trans_s, %struct.gx_pattern_trans_s* %72, i32 0, i32 5
  %73 = load i32, i32* %rowstride, align 4, !tbaa !213
  %rowstride59 = getelementptr inbounds %struct.tile_trans_clist_info_s, %struct.tile_trans_clist_info_s* %trans_info, i32 0, i32 1
  store i32 %73, i32* %rowstride59, align 4, !tbaa !212
  %74 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ptile.addr, align 8, !tbaa !1
  %ttrans60 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %74, i32 0, i32 9
  %75 = load %struct.gx_pattern_trans_s*, %struct.gx_pattern_trans_s** %ttrans60, align 8, !tbaa !95
  %width = getelementptr inbounds %struct.gx_pattern_trans_s, %struct.gx_pattern_trans_s* %75, i32 0, i32 9
  %76 = load i32, i32* %width, align 4, !tbaa !215
  %width61 = getelementptr inbounds %struct.tile_trans_clist_info_s, %struct.tile_trans_clist_info_s* %trans_info, i32 0, i32 4
  store i32 %76, i32* %width61, align 4, !tbaa !214
  %77 = load i32, i32* %left, align 4, !tbaa !42
  %conv62 = sext i32 %77 to i64
  %cmp63 = icmp ugt i64 40, %conv62
  br i1 %cmp63, label %if.then.65, label %if.end.66

if.then.65:                                       ; preds = %if.end.19
  store i32 -28, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.66:                                        ; preds = %if.end.19
  %78 = load i8*, i8** %dp, align 8, !tbaa !1
  %79 = bitcast %struct.tile_trans_clist_info_s* %trans_info to i8*
  %call67 = call i8* @memcpy(i8* %78, i8* %79, i64 40) #7
  %80 = load i32, i32* %left, align 4, !tbaa !42
  %conv68 = sext i32 %80 to i64
  %sub69 = sub i64 %conv68, 40
  %conv70 = trunc i64 %sub69 to i32
  store i32 %conv70, i32* %left, align 4, !tbaa !42
  %81 = load i8*, i8** %dp, align 8, !tbaa !1
  %add.ptr71 = getelementptr inbounds i8, i8* %81, i64 40
  store i8* %add.ptr71, i8** %dp, align 8, !tbaa !1
  %82 = load i64, i64* %offset1, align 8, !tbaa !48
  %add72 = add i64 %82, 40
  store i64 %add72, i64* %offset1, align 8, !tbaa !48
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.66, %if.then.65, %if.then.18
  %83 = bitcast %struct.tile_trans_clist_info_s* %trans_info to i8*
  call void @llvm.lifetime.end(i64 40, i8* %83) #1
  %84 = bitcast %struct.gx_dc_serialized_tile_s* %buf to i8*
  call void @llvm.lifetime.end(i64 88, i8* %84) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.93 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.74

if.end.74:                                        ; preds = %cleanup.cont, %if.end
  %85 = load i64, i64* %offset1, align 8, !tbaa !48
  %86 = load i32, i32* %size, align 4, !tbaa !42
  %conv75 = sext i32 %86 to i64
  %cmp76 = icmp sle i64 %85, %conv75
  br i1 %cmp76, label %if.then.78, label %if.end.92

if.then.78:                                       ; preds = %if.end.74
  %87 = bitcast i32* %u to i8*
  call void @llvm.lifetime.start(i64 4, i8* %87) #1
  %88 = load i32, i32* %size, align 4, !tbaa !42
  %89 = load i32, i32* %left, align 4, !tbaa !42
  %cmp79 = icmp slt i32 %88, %89
  br i1 %cmp79, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.78
  %90 = load i32, i32* %size, align 4, !tbaa !42
  br label %cond.end

cond.false:                                       ; preds = %if.then.78
  %91 = load i32, i32* %left, align 4, !tbaa !42
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond81 = phi i32 [ %90, %cond.true ], [ %91, %cond.false ]
  store i32 %cond81, i32* %u, align 4, !tbaa !42
  %92 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ptile.addr, align 8, !tbaa !1
  %ttrans82 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %92, i32 0, i32 9
  %93 = load %struct.gx_pattern_trans_s*, %struct.gx_pattern_trans_s** %ttrans82, align 8, !tbaa !95
  %transbytes = getelementptr inbounds %struct.gx_pattern_trans_s, %struct.gx_pattern_trans_s* %93, i32 0, i32 1
  %94 = load i8*, i8** %transbytes, align 8, !tbaa !243
  store i8* %94, i8** %ptr, align 8, !tbaa !1
  %95 = load i8*, i8** %dp, align 8, !tbaa !1
  %96 = load i8*, i8** %ptr, align 8, !tbaa !1
  %97 = load i64, i64* %offset1, align 8, !tbaa !48
  %98 = load i32, i32* %size_h, align 4, !tbaa !42
  %conv83 = sext i32 %98 to i64
  %sub84 = sub nsw i64 %97, %conv83
  %add.ptr85 = getelementptr inbounds i8, i8* %96, i64 %sub84
  %99 = load i32, i32* %u, align 4, !tbaa !42
  %conv86 = sext i32 %99 to i64
  %call87 = call i8* @memcpy(i8* %95, i8* %add.ptr85, i64 %conv86) #7
  %100 = load i32, i32* %u, align 4, !tbaa !42
  %101 = load i32, i32* %left, align 4, !tbaa !42
  %sub88 = sub nsw i32 %101, %100
  store i32 %sub88, i32* %left, align 4, !tbaa !42
  %102 = load i32, i32* %u, align 4, !tbaa !42
  %103 = load i8*, i8** %dp, align 8, !tbaa !1
  %idx.ext = sext i32 %102 to i64
  %add.ptr89 = getelementptr inbounds i8, i8* %103, i64 %idx.ext
  store i8* %add.ptr89, i8** %dp, align 8, !tbaa !1
  %104 = load i32, i32* %u, align 4, !tbaa !42
  %conv90 = sext i32 %104 to i64
  %105 = load i64, i64* %offset1, align 8, !tbaa !48
  %add91 = add nsw i64 %105, %conv90
  store i64 %add91, i64* %offset1, align 8, !tbaa !48
  %106 = bitcast i32* %u to i8*
  call void @llvm.lifetime.end(i64 4, i8* %106) #1
  br label %if.end.92

if.end.92:                                        ; preds = %cond.end, %if.end.74
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.93

cleanup.93:                                       ; preds = %if.end.92, %cleanup, %if.then
  %107 = bitcast i8** %ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %107) #1
  %108 = bitcast i64* %offset1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %108) #1
  %109 = bitcast i32* %left to i8*
  call void @llvm.lifetime.end(i64 4, i8* %109) #1
  %110 = bitcast i8** %dp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %110) #1
  %111 = bitcast i32* %size_h to i8*
  call void @llvm.lifetime.end(i64 4, i8* %111) #1
  %112 = bitcast i32* %size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %112) #1
  %113 = load i32, i32* %retval
  ret i32 %113
}

; Function Attrs: nounwind uwtable
define internal i32 @gx_dc_pattern_write_raster(%struct.gx_color_tile_s* %ptile, i64 %offset, i8* %data, i32* %psize, %struct.gx_device_s* %dev) #0 {
entry:
  %retval = alloca i32, align 4
  %ptile.addr = alloca %struct.gx_color_tile_s*, align 8
  %offset.addr = alloca i64, align 8
  %data.addr = alloca i8*, align 8
  %psize.addr = alloca i32*, align 8
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %size_b = alloca i32, align 4
  %size_c = alloca i32, align 4
  %dp = alloca i8*, align 8
  %left = alloca i32, align 4
  %offset1 = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  %buf = alloca %struct.gx_dc_serialized_tile_s, align 8
  %buf1 = alloca %struct.gx_strip_bitmap_s, align 8
  %l = alloca i32, align 4
  %buf113 = alloca %struct.gx_strip_bitmap_s, align 8
  %l138 = alloca i32, align 4
  store %struct.gx_color_tile_s* %ptile, %struct.gx_color_tile_s** %ptile.addr, align 8, !tbaa !1
  store i64 %offset, i64* %offset.addr, align 8, !tbaa !48
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i32* %psize, i32** %psize.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %0 = bitcast i32* %size_b to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %size_c to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i8** %dp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load i8*, i8** %data.addr, align 8, !tbaa !1
  store i8* %3, i8** %dp, align 8, !tbaa !1
  %4 = bitcast i32* %left to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load i32*, i32** %psize.addr, align 8, !tbaa !1
  %6 = load i32, i32* %5, align 4, !tbaa !42
  store i32 %6, i32* %left, align 4, !tbaa !42
  %7 = bitcast i64* %offset1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = load i64, i64* %offset.addr, align 8, !tbaa !48
  store i64 %8, i64* %offset1, align 8, !tbaa !48
  %9 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ptile.addr, align 8, !tbaa !1
  %tbits = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %9, i32 0, i32 7
  %size = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tbits, i32 0, i32 2
  %y = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %size, i32 0, i32 1
  %10 = load i32, i32* %y, align 4, !tbaa !217
  %11 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ptile.addr, align 8, !tbaa !1
  %tbits1 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %11, i32 0, i32 7
  %raster = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tbits1, i32 0, i32 1
  %12 = load i32, i32* %raster, align 4, !tbaa !244
  %mul = mul nsw i32 %10, %12
  %13 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ptile.addr, align 8, !tbaa !1
  %tbits2 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %13, i32 0, i32 7
  %num_planes = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tbits2, i32 0, i32 8
  %14 = load i32, i32* %num_planes, align 4, !tbaa !245
  %mul3 = mul nsw i32 %mul, %14
  %conv = sext i32 %mul3 to i64
  %add = add i64 48, %conv
  %conv4 = trunc i64 %add to i32
  store i32 %conv4, i32* %size_b, align 4, !tbaa !42
  %15 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ptile.addr, align 8, !tbaa !1
  %tmask = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %15, i32 0, i32 8
  %data5 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tmask, i32 0, i32 0
  %16 = load i8*, i8** %data5, align 8, !tbaa !240
  %tobool = icmp ne i8* %16, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %17 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ptile.addr, align 8, !tbaa !1
  %tmask6 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %17, i32 0, i32 8
  %size7 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tmask6, i32 0, i32 2
  %y8 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %size7, i32 0, i32 1
  %18 = load i32, i32* %y8, align 4, !tbaa !246
  %19 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ptile.addr, align 8, !tbaa !1
  %tmask9 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %19, i32 0, i32 8
  %raster10 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tmask9, i32 0, i32 1
  %20 = load i32, i32* %raster10, align 4, !tbaa !247
  %mul11 = mul nsw i32 %18, %20
  %conv12 = sext i32 %mul11 to i64
  %add13 = add i64 48, %conv12
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %add13, %cond.true ], [ 0, %cond.false ]
  %conv14 = trunc i64 %cond to i32
  store i32 %conv14, i32* %size_c, align 4, !tbaa !42
  %21 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %cmp = icmp eq i8* %21, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %22 = load i32, i32* %size_b, align 4, !tbaa !42
  %conv16 = sext i32 %22 to i64
  %add17 = add i64 88, %conv16
  %23 = load i32, i32* %size_c, align 4, !tbaa !42
  %conv18 = sext i32 %23 to i64
  %add19 = add i64 %add17, %conv18
  %conv20 = trunc i64 %add19 to i32
  %24 = load i32*, i32** %psize.addr, align 8, !tbaa !1
  store i32 %conv20, i32* %24, align 4, !tbaa !42
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.162

if.end:                                           ; preds = %cond.end
  %25 = load i64, i64* %offset1, align 8, !tbaa !48
  %cmp21 = icmp eq i64 %25, 0
  br i1 %cmp21, label %if.then.23, label %if.end.62

if.then.23:                                       ; preds = %if.end
  %26 = bitcast %struct.gx_dc_serialized_tile_s* %buf to i8*
  call void @llvm.lifetime.start(i64 88, i8* %26) #1
  %27 = bitcast %struct.gx_strip_bitmap_s* %buf1 to i8*
  call void @llvm.lifetime.start(i64 48, i8* %27) #1
  %28 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ptile.addr, align 8, !tbaa !1
  %id = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %28, i32 0, i32 0
  %29 = load i64, i64* %id, align 8, !tbaa !109
  %id24 = getelementptr inbounds %struct.gx_dc_serialized_tile_s, %struct.gx_dc_serialized_tile_s* %buf, i32 0, i32 0
  store i64 %29, i64* %id24, align 8, !tbaa !174
  %size25 = getelementptr inbounds %struct.gx_dc_serialized_tile_s, %struct.gx_dc_serialized_tile_s* %buf, i32 0, i32 3
  %x = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %size25, i32 0, i32 0
  store i32 0, i32* %x, align 4, !tbaa !177
  %size26 = getelementptr inbounds %struct.gx_dc_serialized_tile_s, %struct.gx_dc_serialized_tile_s* %buf, i32 0, i32 3
  %y27 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %size26, i32 0, i32 1
  store i32 0, i32* %y27, align 4, !tbaa !179
  %30 = load i32, i32* %size_b, align 4, !tbaa !42
  %size_b28 = getelementptr inbounds %struct.gx_dc_serialized_tile_s, %struct.gx_dc_serialized_tile_s* %buf, i32 0, i32 1
  store i32 %30, i32* %size_b28, align 4, !tbaa !180
  %31 = load i32, i32* %size_c, align 4, !tbaa !42
  %size_c29 = getelementptr inbounds %struct.gx_dc_serialized_tile_s, %struct.gx_dc_serialized_tile_s* %buf, i32 0, i32 2
  store i32 %31, i32* %size_c29, align 4, !tbaa !181
  %step_matrix = getelementptr inbounds %struct.gx_dc_serialized_tile_s, %struct.gx_dc_serialized_tile_s* %buf, i32 0, i32 4
  %32 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ptile.addr, align 8, !tbaa !1
  %step_matrix30 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %32, i32 0, i32 5
  %33 = bitcast %struct.gs_matrix_s* %step_matrix to i8*
  %34 = bitcast %struct.gs_matrix_s* %step_matrix30 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %33, i8* %34, i64 24, i32 4, i1 false), !tbaa.struct !182
  %bbox = getelementptr inbounds %struct.gx_dc_serialized_tile_s, %struct.gx_dc_serialized_tile_s* %buf, i32 0, i32 5
  %35 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ptile.addr, align 8, !tbaa !1
  %bbox31 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %35, i32 0, i32 6
  %36 = bitcast %struct.gs_rect_s* %bbox to i8*
  %37 = bitcast %struct.gs_rect_s* %bbox31 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* %37, i64 32, i32 8, i1 false), !tbaa.struct !183
  %38 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ptile.addr, align 8, !tbaa !1
  %depth = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %38, i32 0, i32 1
  %39 = load i32, i32* %depth, align 4, !tbaa !184
  %40 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ptile.addr, align 8, !tbaa !1
  %tiling_type = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %40, i32 0, i32 4
  %41 = load i32, i32* %tiling_type, align 4, !tbaa !185
  %shl = shl i32 %41, 24
  %or = or i32 %39, %shl
  %42 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ptile.addr, align 8, !tbaa !1
  %is_simple = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %42, i32 0, i32 11
  %43 = load i8, i8* %is_simple, align 1, !tbaa !186
  %conv32 = zext i8 %43 to i32
  %tobool33 = icmp ne i32 %conv32, 0
  %cond34 = select i1 %tobool33, i32 536870912, i32 0
  %or35 = or i32 %or, %cond34
  %44 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ptile.addr, align 8, !tbaa !1
  %has_overlap = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %44, i32 0, i32 12
  %45 = load i8, i8* %has_overlap, align 1, !tbaa !187
  %conv36 = zext i8 %45 to i32
  %tobool37 = icmp ne i32 %conv36, 0
  %cond38 = select i1 %tobool37, i32 1073741824, i32 0
  %or39 = or i32 %or35, %cond38
  %flags = getelementptr inbounds %struct.gx_dc_serialized_tile_s, %struct.gx_dc_serialized_tile_s* %buf, i32 0, i32 6
  store i32 %or39, i32* %flags, align 4, !tbaa !188
  %46 = load i32, i32* %left, align 4, !tbaa !42
  %conv40 = sext i32 %46 to i64
  %cmp41 = icmp ugt i64 88, %conv40
  br i1 %cmp41, label %if.then.43, label %if.end.44

if.then.43:                                       ; preds = %if.then.23
  store i32 -28, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.44:                                        ; preds = %if.then.23
  %47 = load i8*, i8** %dp, align 8, !tbaa !1
  %48 = bitcast %struct.gx_dc_serialized_tile_s* %buf to i8*
  %call = call i8* @memcpy(i8* %47, i8* %48, i64 88) #7
  %49 = load i32, i32* %left, align 4, !tbaa !42
  %conv45 = sext i32 %49 to i64
  %sub = sub i64 %conv45, 88
  %conv46 = trunc i64 %sub to i32
  store i32 %conv46, i32* %left, align 4, !tbaa !42
  %50 = load i8*, i8** %dp, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %50, i64 88
  store i8* %add.ptr, i8** %dp, align 8, !tbaa !1
  %51 = load i64, i64* %offset1, align 8, !tbaa !48
  %add47 = add i64 %51, 88
  store i64 %add47, i64* %offset1, align 8, !tbaa !48
  %52 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ptile.addr, align 8, !tbaa !1
  %tbits48 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %52, i32 0, i32 7
  %53 = bitcast %struct.gx_strip_bitmap_s* %buf1 to i8*
  %54 = bitcast %struct.gx_strip_bitmap_s* %tbits48 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %53, i8* %54, i64 48, i32 8, i1 false), !tbaa.struct !248
  %data49 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %buf1, i32 0, i32 0
  store i8* null, i8** %data49, align 8, !tbaa !250
  %55 = load i32, i32* %left, align 4, !tbaa !42
  %conv50 = sext i32 %55 to i64
  %cmp51 = icmp ugt i64 48, %conv50
  br i1 %cmp51, label %if.then.53, label %if.end.54

if.then.53:                                       ; preds = %if.end.44
  store i32 -28, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.54:                                        ; preds = %if.end.44
  %56 = load i8*, i8** %dp, align 8, !tbaa !1
  %57 = bitcast %struct.gx_strip_bitmap_s* %buf1 to i8*
  %call55 = call i8* @memcpy(i8* %56, i8* %57, i64 48) #7
  %58 = load i32, i32* %left, align 4, !tbaa !42
  %conv56 = sext i32 %58 to i64
  %sub57 = sub i64 %conv56, 48
  %conv58 = trunc i64 %sub57 to i32
  store i32 %conv58, i32* %left, align 4, !tbaa !42
  %59 = load i8*, i8** %dp, align 8, !tbaa !1
  %add.ptr59 = getelementptr inbounds i8, i8* %59, i64 48
  store i8* %add.ptr59, i8** %dp, align 8, !tbaa !1
  %60 = load i64, i64* %offset1, align 8, !tbaa !48
  %add60 = add i64 %60, 48
  store i64 %add60, i64* %offset1, align 8, !tbaa !48
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.54, %if.then.53, %if.then.43
  %61 = bitcast %struct.gx_strip_bitmap_s* %buf1 to i8*
  call void @llvm.lifetime.end(i64 48, i8* %61) #1
  %62 = bitcast %struct.gx_dc_serialized_tile_s* %buf to i8*
  call void @llvm.lifetime.end(i64 88, i8* %62) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.162 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.62

if.end.62:                                        ; preds = %cleanup.cont, %if.end
  %63 = load i64, i64* %offset1, align 8, !tbaa !48
  %64 = load i32, i32* %size_b, align 4, !tbaa !42
  %conv63 = sext i32 %64 to i64
  %add64 = add i64 88, %conv63
  %cmp65 = icmp ule i64 %63, %add64
  br i1 %cmp65, label %if.then.67, label %if.end.98

if.then.67:                                       ; preds = %if.end.62
  %65 = bitcast i32* %l to i8*
  call void @llvm.lifetime.start(i64 4, i8* %65) #1
  %66 = load i32, i32* %size_b, align 4, !tbaa !42
  %conv68 = sext i32 %66 to i64
  %sub69 = sub i64 %conv68, 48
  %67 = load i64, i64* %offset1, align 8, !tbaa !48
  %sub70 = sub i64 %67, 88
  %sub71 = sub i64 %sub70, 48
  %sub72 = sub i64 %sub69, %sub71
  %68 = load i32, i32* %left, align 4, !tbaa !42
  %conv73 = sext i32 %68 to i64
  %cmp74 = icmp ult i64 %sub72, %conv73
  br i1 %cmp74, label %cond.true.76, label %cond.false.82

cond.true.76:                                     ; preds = %if.then.67
  %69 = load i32, i32* %size_b, align 4, !tbaa !42
  %conv77 = sext i32 %69 to i64
  %sub78 = sub i64 %conv77, 48
  %70 = load i64, i64* %offset1, align 8, !tbaa !48
  %sub79 = sub i64 %70, 88
  %sub80 = sub i64 %sub79, 48
  %sub81 = sub i64 %sub78, %sub80
  br label %cond.end.84

cond.false.82:                                    ; preds = %if.then.67
  %71 = load i32, i32* %left, align 4, !tbaa !42
  %conv83 = sext i32 %71 to i64
  br label %cond.end.84

cond.end.84:                                      ; preds = %cond.false.82, %cond.true.76
  %cond85 = phi i64 [ %sub81, %cond.true.76 ], [ %conv83, %cond.false.82 ]
  %conv86 = trunc i64 %cond85 to i32
  store i32 %conv86, i32* %l, align 4, !tbaa !42
  %72 = load i8*, i8** %dp, align 8, !tbaa !1
  %73 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ptile.addr, align 8, !tbaa !1
  %tbits87 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %73, i32 0, i32 7
  %data88 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tbits87, i32 0, i32 0
  %74 = load i8*, i8** %data88, align 8, !tbaa !251
  %75 = load i64, i64* %offset1, align 8, !tbaa !48
  %sub89 = sub i64 %75, 88
  %sub90 = sub i64 %sub89, 48
  %add.ptr91 = getelementptr inbounds i8, i8* %74, i64 %sub90
  %76 = load i32, i32* %l, align 4, !tbaa !42
  %conv92 = sext i32 %76 to i64
  %call93 = call i8* @memcpy(i8* %72, i8* %add.ptr91, i64 %conv92) #7
  %77 = load i32, i32* %l, align 4, !tbaa !42
  %78 = load i32, i32* %left, align 4, !tbaa !42
  %sub94 = sub nsw i32 %78, %77
  store i32 %sub94, i32* %left, align 4, !tbaa !42
  %79 = load i32, i32* %l, align 4, !tbaa !42
  %80 = load i8*, i8** %dp, align 8, !tbaa !1
  %idx.ext = sext i32 %79 to i64
  %add.ptr95 = getelementptr inbounds i8, i8* %80, i64 %idx.ext
  store i8* %add.ptr95, i8** %dp, align 8, !tbaa !1
  %81 = load i32, i32* %l, align 4, !tbaa !42
  %conv96 = sext i32 %81 to i64
  %82 = load i64, i64* %offset1, align 8, !tbaa !48
  %add97 = add nsw i64 %82, %conv96
  store i64 %add97, i64* %offset1, align 8, !tbaa !48
  %83 = bitcast i32* %l to i8*
  call void @llvm.lifetime.end(i64 4, i8* %83) #1
  br label %if.end.98

if.end.98:                                        ; preds = %cond.end.84, %if.end.62
  %84 = load i32, i32* %left, align 4, !tbaa !42
  %cmp99 = icmp eq i32 %84, 0
  br i1 %cmp99, label %if.then.101, label %if.end.102

if.then.101:                                      ; preds = %if.end.98
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.162

if.end.102:                                       ; preds = %if.end.98
  %85 = load i32, i32* %size_c, align 4, !tbaa !42
  %cmp103 = icmp eq i32 %85, 0
  br i1 %cmp103, label %if.then.105, label %if.end.106

if.then.105:                                      ; preds = %if.end.102
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.162

if.end.106:                                       ; preds = %if.end.102
  %86 = load i64, i64* %offset1, align 8, !tbaa !48
  %87 = load i32, i32* %size_b, align 4, !tbaa !42
  %conv107 = sext i32 %87 to i64
  %add108 = add i64 88, %conv107
  %add109 = add i64 %add108, 48
  %cmp110 = icmp ule i64 %86, %add109
  br i1 %cmp110, label %if.then.112, label %if.end.130

if.then.112:                                      ; preds = %if.end.106
  %88 = bitcast %struct.gx_strip_bitmap_s* %buf113 to i8*
  call void @llvm.lifetime.start(i64 48, i8* %88) #1
  %89 = load i32, i32* %left, align 4, !tbaa !42
  %conv114 = sext i32 %89 to i64
  %cmp115 = icmp ult i64 %conv114, 48
  br i1 %cmp115, label %if.then.117, label %if.end.118

if.then.117:                                      ; preds = %if.then.112
  store i32 -28, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.127

if.end.118:                                       ; preds = %if.then.112
  %90 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ptile.addr, align 8, !tbaa !1
  %tmask119 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %90, i32 0, i32 8
  %91 = bitcast %struct.gx_strip_bitmap_s* %buf113 to i8*
  %92 = bitcast %struct.gx_strip_bitmap_s* %tmask119 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %91, i8* %92, i64 48, i32 8, i1 false), !tbaa.struct !248
  %data120 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %buf113, i32 0, i32 0
  store i8* null, i8** %data120, align 8, !tbaa !250
  %93 = load i8*, i8** %dp, align 8, !tbaa !1
  %94 = bitcast %struct.gx_strip_bitmap_s* %buf113 to i8*
  %call121 = call i8* @memcpy(i8* %93, i8* %94, i64 48) #7
  %95 = load i32, i32* %left, align 4, !tbaa !42
  %conv122 = sext i32 %95 to i64
  %sub123 = sub i64 %conv122, 48
  %conv124 = trunc i64 %sub123 to i32
  store i32 %conv124, i32* %left, align 4, !tbaa !42
  %96 = load i8*, i8** %dp, align 8, !tbaa !1
  %add.ptr125 = getelementptr inbounds i8, i8* %96, i64 48
  store i8* %add.ptr125, i8** %dp, align 8, !tbaa !1
  %97 = load i64, i64* %offset1, align 8, !tbaa !48
  %add126 = add i64 %97, 48
  store i64 %add126, i64* %offset1, align 8, !tbaa !48
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.127

cleanup.127:                                      ; preds = %if.end.118, %if.then.117
  %98 = bitcast %struct.gx_strip_bitmap_s* %buf113 to i8*
  call void @llvm.lifetime.end(i64 48, i8* %98) #1
  %cleanup.dest.128 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.128, label %cleanup.162 [
    i32 0, label %cleanup.cont.129
  ]

cleanup.cont.129:                                 ; preds = %cleanup.127
  br label %if.end.130

if.end.130:                                       ; preds = %cleanup.cont.129, %if.end.106
  %99 = load i64, i64* %offset1, align 8, !tbaa !48
  %100 = load i32, i32* %size_b, align 4, !tbaa !42
  %conv131 = sext i32 %100 to i64
  %add132 = add i64 88, %conv131
  %101 = load i32, i32* %size_c, align 4, !tbaa !42
  %conv133 = sext i32 %101 to i64
  %add134 = add i64 %add132, %conv133
  %cmp135 = icmp ule i64 %99, %add134
  br i1 %cmp135, label %if.then.137, label %if.end.161

if.then.137:                                      ; preds = %if.end.130
  %102 = bitcast i32* %l138 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %102) #1
  %103 = load i32, i32* %size_c, align 4, !tbaa !42
  %conv139 = sext i32 %103 to i64
  %sub140 = sub i64 %conv139, 48
  %104 = load i32, i32* %left, align 4, !tbaa !42
  %conv141 = sext i32 %104 to i64
  %cmp142 = icmp ult i64 %sub140, %conv141
  br i1 %cmp142, label %cond.true.144, label %cond.false.147

cond.true.144:                                    ; preds = %if.then.137
  %105 = load i32, i32* %size_c, align 4, !tbaa !42
  %conv145 = sext i32 %105 to i64
  %sub146 = sub i64 %conv145, 48
  br label %cond.end.149

cond.false.147:                                   ; preds = %if.then.137
  %106 = load i32, i32* %left, align 4, !tbaa !42
  %conv148 = sext i32 %106 to i64
  br label %cond.end.149

cond.end.149:                                     ; preds = %cond.false.147, %cond.true.144
  %cond150 = phi i64 [ %sub146, %cond.true.144 ], [ %conv148, %cond.false.147 ]
  %conv151 = trunc i64 %cond150 to i32
  store i32 %conv151, i32* %l138, align 4, !tbaa !42
  %107 = load i8*, i8** %dp, align 8, !tbaa !1
  %108 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ptile.addr, align 8, !tbaa !1
  %tmask152 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %108, i32 0, i32 8
  %data153 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tmask152, i32 0, i32 0
  %109 = load i8*, i8** %data153, align 8, !tbaa !240
  %110 = load i64, i64* %offset1, align 8, !tbaa !48
  %sub154 = sub i64 %110, 88
  %111 = load i32, i32* %size_b, align 4, !tbaa !42
  %conv155 = sext i32 %111 to i64
  %sub156 = sub i64 %sub154, %conv155
  %sub157 = sub i64 %sub156, 48
  %add.ptr158 = getelementptr inbounds i8, i8* %109, i64 %sub157
  %112 = load i32, i32* %l138, align 4, !tbaa !42
  %conv159 = sext i32 %112 to i64
  %call160 = call i8* @memcpy(i8* %107, i8* %add.ptr158, i64 %conv159) #7
  %113 = bitcast i32* %l138 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %113) #1
  br label %if.end.161

if.end.161:                                       ; preds = %cond.end.149, %if.end.130
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.162

cleanup.162:                                      ; preds = %if.end.161, %cleanup.127, %if.then.105, %if.then.101, %cleanup, %if.then
  %114 = bitcast i64* %offset1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %114) #1
  %115 = bitcast i32* %left to i8*
  call void @llvm.lifetime.end(i64 4, i8* %115) #1
  %116 = bitcast i8** %dp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %116) #1
  %117 = bitcast i32* %size_c to i8*
  call void @llvm.lifetime.end(i64 4, i8* %117) #1
  %118 = bitcast i32* %size_b to i8*
  call void @llvm.lifetime.end(i64 4, i8* %118) #1
  %119 = load i32, i32* %retval
  ret i32 %119
}

declare i32 @clist_data_size(%union.gx_device_clist_s*, i32) #2

declare i32 @clist_get_data(%union.gx_device_clist_s*, i32, i64, i8*, i32) #2

declare void @gx_pattern_cache_ensure_space(%struct.gs_imager_state_s*, i32) #2

declare i32 @gx_pattern_cache_get_entry(%struct.gs_imager_state_s*, i64, %struct.gx_color_tile_s**) #2

declare void @gx_pattern_cache_update_used(%struct.gs_imager_state_s*, i64) #2

declare %struct.gx_pattern_trans_s* @new_pattern_trans_buff(%struct.gs_memory_s*) #2

; Function Attrs: nounwind uwtable
define internal i32 @gx_dc_pattern_read_trans_buff(%struct.gx_color_tile_s* %ptile, i64 %offset, i8* %data, i32 %size, %struct.gs_memory_s* %mem) #0 {
entry:
  %retval = alloca i32, align 4
  %ptile.addr = alloca %struct.gx_color_tile_s*, align 8
  %offset.addr = alloca i64, align 8
  %data.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %dp = alloca i8*, align 8
  %left = alloca i32, align 4
  %offset1 = alloca i64, align 8
  %trans_pat = alloca %struct.gx_pattern_trans_s*, align 8
  %data_size = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %u = alloca i32, align 4
  %save = alloca i8*, align 8
  store %struct.gx_color_tile_s* %ptile, %struct.gx_color_tile_s** %ptile.addr, align 8, !tbaa !1
  store i64 %offset, i64* %offset.addr, align 8, !tbaa !48
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !42
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = bitcast i8** %dp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %data.addr, align 8, !tbaa !1
  store i8* %1, i8** %dp, align 8, !tbaa !1
  %2 = bitcast i32* %left to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = load i32, i32* %size.addr, align 4, !tbaa !42
  store i32 %3, i32* %left, align 4, !tbaa !42
  %4 = bitcast i64* %offset1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load i64, i64* %offset.addr, align 8, !tbaa !48
  store i64 %5, i64* %offset1, align 8, !tbaa !48
  %6 = bitcast %struct.gx_pattern_trans_s** %trans_pat to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ptile.addr, align 8, !tbaa !1
  %ttrans = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %7, i32 0, i32 9
  %8 = load %struct.gx_pattern_trans_s*, %struct.gx_pattern_trans_s** %ttrans, align 8, !tbaa !95
  store %struct.gx_pattern_trans_s* %8, %struct.gx_pattern_trans_s** %trans_pat, align 8, !tbaa !1
  %9 = bitcast i32* %data_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = load %struct.gx_pattern_trans_s*, %struct.gx_pattern_trans_s** %trans_pat, align 8, !tbaa !1
  %planestride = getelementptr inbounds %struct.gx_pattern_trans_s, %struct.gx_pattern_trans_s* %10, i32 0, i32 6
  %11 = load i32, i32* %planestride, align 4, !tbaa !203
  %12 = load %struct.gx_pattern_trans_s*, %struct.gx_pattern_trans_s** %trans_pat, align 8, !tbaa !1
  %n_chan = getelementptr inbounds %struct.gx_pattern_trans_s, %struct.gx_pattern_trans_s* %12, i32 0, i32 7
  %13 = load i32, i32* %n_chan, align 4, !tbaa !201
  %mul = mul nsw i32 %11, %13
  store i32 %mul, i32* %data_size, align 4, !tbaa !42
  %14 = load %struct.gx_pattern_trans_s*, %struct.gx_pattern_trans_s** %trans_pat, align 8, !tbaa !1
  %transbytes = getelementptr inbounds %struct.gx_pattern_trans_s, %struct.gx_pattern_trans_s* %14, i32 0, i32 1
  %15 = load i8*, i8** %transbytes, align 8, !tbaa !243
  %cmp = icmp eq i8* %15, null
  br i1 %cmp, label %if.then, label %if.end.6

if.then:                                          ; preds = %entry
  %16 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %16, i32 0, i32 1
  %alloc_bytes = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 7
  %17 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes, align 8, !tbaa !252
  %18 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %19 = load i32, i32* %data_size, align 4, !tbaa !42
  %call = call i8* %17(%struct.gs_memory_s* %18, i32 %19, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.19, i32 0, i32 0)) #5
  %20 = load %struct.gx_pattern_trans_s*, %struct.gx_pattern_trans_s** %trans_pat, align 8, !tbaa !1
  %transbytes1 = getelementptr inbounds %struct.gx_pattern_trans_s, %struct.gx_pattern_trans_s* %20, i32 0, i32 1
  store i8* %call, i8** %transbytes1, align 8, !tbaa !243
  %21 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %22 = load %struct.gx_pattern_trans_s*, %struct.gx_pattern_trans_s** %trans_pat, align 8, !tbaa !1
  %mem2 = getelementptr inbounds %struct.gx_pattern_trans_s, %struct.gx_pattern_trans_s* %22, i32 0, i32 2
  store %struct.gs_memory_s* %21, %struct.gs_memory_s** %mem2, align 8, !tbaa !253
  %23 = load %struct.gx_pattern_trans_s*, %struct.gx_pattern_trans_s** %trans_pat, align 8, !tbaa !1
  %transbytes3 = getelementptr inbounds %struct.gx_pattern_trans_s, %struct.gx_pattern_trans_s* %23, i32 0, i32 1
  %24 = load i8*, i8** %transbytes3, align 8, !tbaa !243
  %cmp4 = icmp eq i8* %24, null
  br i1 %cmp4, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.then
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %entry
  %25 = load i64, i64* %offset1, align 8, !tbaa !48
  %26 = load i32, i32* %data_size, align 4, !tbaa !42
  %conv = sext i32 %26 to i64
  %add = add i64 128, %conv
  %cmp7 = icmp ule i64 %25, %add
  br i1 %cmp7, label %if.then.9, label %if.end.22

if.then.9:                                        ; preds = %if.end.6
  %27 = bitcast i32* %u to i8*
  call void @llvm.lifetime.start(i64 4, i8* %27) #1
  %28 = load i32, i32* %data_size, align 4, !tbaa !42
  %29 = load i32, i32* %left, align 4, !tbaa !42
  %cmp10 = icmp slt i32 %28, %29
  br i1 %cmp10, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.9
  %30 = load i32, i32* %data_size, align 4, !tbaa !42
  br label %cond.end

cond.false:                                       ; preds = %if.then.9
  %31 = load i32, i32* %left, align 4, !tbaa !42
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %30, %cond.true ], [ %31, %cond.false ]
  store i32 %cond, i32* %u, align 4, !tbaa !42
  %32 = bitcast i8** %save to i8*
  call void @llvm.lifetime.start(i64 8, i8* %32) #1
  %33 = load %struct.gx_pattern_trans_s*, %struct.gx_pattern_trans_s** %trans_pat, align 8, !tbaa !1
  %transbytes12 = getelementptr inbounds %struct.gx_pattern_trans_s, %struct.gx_pattern_trans_s* %33, i32 0, i32 1
  %34 = load i8*, i8** %transbytes12, align 8, !tbaa !243
  store i8* %34, i8** %save, align 8, !tbaa !1
  %35 = load %struct.gx_pattern_trans_s*, %struct.gx_pattern_trans_s** %trans_pat, align 8, !tbaa !1
  %transbytes13 = getelementptr inbounds %struct.gx_pattern_trans_s, %struct.gx_pattern_trans_s* %35, i32 0, i32 1
  %36 = load i8*, i8** %transbytes13, align 8, !tbaa !243
  %37 = load i64, i64* %offset1, align 8, !tbaa !48
  %add.ptr = getelementptr inbounds i8, i8* %36, i64 %37
  %add.ptr14 = getelementptr inbounds i8, i8* %add.ptr, i64 -88
  %add.ptr15 = getelementptr inbounds i8, i8* %add.ptr14, i64 -40
  %38 = load i8*, i8** %dp, align 8, !tbaa !1
  %39 = load i32, i32* %u, align 4, !tbaa !42
  %conv16 = sext i32 %39 to i64
  %call17 = call i8* @memcpy(i8* %add.ptr15, i8* %38, i64 %conv16) #7
  %40 = load i8*, i8** %save, align 8, !tbaa !1
  %41 = load %struct.gx_pattern_trans_s*, %struct.gx_pattern_trans_s** %trans_pat, align 8, !tbaa !1
  %transbytes18 = getelementptr inbounds %struct.gx_pattern_trans_s, %struct.gx_pattern_trans_s* %41, i32 0, i32 1
  store i8* %40, i8** %transbytes18, align 8, !tbaa !243
  %42 = load i32, i32* %u, align 4, !tbaa !42
  %43 = load i32, i32* %left, align 4, !tbaa !42
  %sub = sub nsw i32 %43, %42
  store i32 %sub, i32* %left, align 4, !tbaa !42
  %44 = load i32, i32* %u, align 4, !tbaa !42
  %conv19 = sext i32 %44 to i64
  %45 = load i64, i64* %offset1, align 8, !tbaa !48
  %add20 = add nsw i64 %45, %conv19
  store i64 %add20, i64* %offset1, align 8, !tbaa !48
  %46 = load i32, i32* %u, align 4, !tbaa !42
  %47 = load i8*, i8** %dp, align 8, !tbaa !1
  %idx.ext = sext i32 %46 to i64
  %add.ptr21 = getelementptr inbounds i8, i8* %47, i64 %idx.ext
  store i8* %add.ptr21, i8** %dp, align 8, !tbaa !1
  %48 = bitcast i8** %save to i8*
  call void @llvm.lifetime.end(i64 8, i8* %48) #1
  %49 = bitcast i32* %u to i8*
  call void @llvm.lifetime.end(i64 4, i8* %49) #1
  br label %if.end.22

if.end.22:                                        ; preds = %cond.end, %if.end.6
  %50 = load i32, i32* %size.addr, align 4, !tbaa !42
  %51 = load i32, i32* %left, align 4, !tbaa !42
  %sub23 = sub i32 %50, %51
  store i32 %sub23, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.22, %if.then.5
  %52 = bitcast i32* %data_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %52) #1
  %53 = bitcast %struct.gx_pattern_trans_s** %trans_pat to i8*
  call void @llvm.lifetime.end(i64 8, i8* %53) #1
  %54 = bitcast i64* %offset1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %54) #1
  %55 = bitcast i32* %left to i8*
  call void @llvm.lifetime.end(i64 4, i8* %55) #1
  %56 = bitcast i8** %dp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %56) #1
  %57 = load i32, i32* %retval
  ret i32 %57
}

; Function Attrs: nounwind uwtable
define internal i32 @gx_dc_pattern_read_raster(%struct.gx_color_tile_s* %ptile, %struct.gx_dc_serialized_tile_s* %buf, i64 %offset, i8* %data, i32 %size, %struct.gs_memory_s* %mem) #0 {
entry:
  %retval = alloca i32, align 4
  %ptile.addr = alloca %struct.gx_color_tile_s*, align 8
  %buf.addr = alloca %struct.gx_dc_serialized_tile_s*, align 8
  %offset.addr = alloca i64, align 8
  %data.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %dp = alloca i8*, align 8
  %left = alloca i32, align 4
  %offset1 = alloca i64, align 8
  %size_b = alloca i32, align 4
  %size_c = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %l = alloca i32, align 4
  %save = alloca i8*, align 8
  %l81 = alloca i32, align 4
  %l123 = alloca i32, align 4
  %save141 = alloca i8*, align 8
  %l170 = alloca i32, align 4
  store %struct.gx_color_tile_s* %ptile, %struct.gx_color_tile_s** %ptile.addr, align 8, !tbaa !1
  store %struct.gx_dc_serialized_tile_s* %buf, %struct.gx_dc_serialized_tile_s** %buf.addr, align 8, !tbaa !1
  store i64 %offset, i64* %offset.addr, align 8, !tbaa !48
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !42
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = bitcast i8** %dp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %data.addr, align 8, !tbaa !1
  store i8* %1, i8** %dp, align 8, !tbaa !1
  %2 = bitcast i32* %left to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = load i32, i32* %size.addr, align 4, !tbaa !42
  store i32 %3, i32* %left, align 4, !tbaa !42
  %4 = bitcast i64* %offset1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load i64, i64* %offset.addr, align 8, !tbaa !48
  store i64 %5, i64* %offset1, align 8, !tbaa !48
  %6 = bitcast i32* %size_b to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast i32* %size_c to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = load %struct.gx_dc_serialized_tile_s*, %struct.gx_dc_serialized_tile_s** %buf.addr, align 8, !tbaa !1
  %cmp = icmp ne %struct.gx_dc_serialized_tile_s* %8, null
  br i1 %cmp, label %if.then, label %if.else.27

if.then:                                          ; preds = %entry
  %9 = load %struct.gx_dc_serialized_tile_s*, %struct.gx_dc_serialized_tile_s** %buf.addr, align 8, !tbaa !1
  %size_b1 = getelementptr inbounds %struct.gx_dc_serialized_tile_s, %struct.gx_dc_serialized_tile_s* %9, i32 0, i32 1
  %10 = load i32, i32* %size_b1, align 4, !tbaa !180
  store i32 %10, i32* %size_b, align 4, !tbaa !42
  %11 = load %struct.gx_dc_serialized_tile_s*, %struct.gx_dc_serialized_tile_s** %buf.addr, align 8, !tbaa !1
  %size_c2 = getelementptr inbounds %struct.gx_dc_serialized_tile_s, %struct.gx_dc_serialized_tile_s* %11, i32 0, i32 2
  %12 = load i32, i32* %size_c2, align 4, !tbaa !181
  store i32 %12, i32* %size_c, align 4, !tbaa !42
  %13 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %13, i32 0, i32 1
  %alloc_bytes = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 7
  %14 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes, align 8, !tbaa !252
  %15 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %16 = load i32, i32* %size_b, align 4, !tbaa !42
  %conv = sext i32 %16 to i64
  %sub = sub i64 %conv, 48
  %conv3 = trunc i64 %sub to i32
  %call = call i8* %14(%struct.gs_memory_s* %15, i32 %conv3, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.19, i32 0, i32 0)) #5
  %17 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ptile.addr, align 8, !tbaa !1
  %tbits = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %17, i32 0, i32 7
  %data4 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tbits, i32 0, i32 0
  store i8* %call, i8** %data4, align 8, !tbaa !251
  %18 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ptile.addr, align 8, !tbaa !1
  %tbits5 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %18, i32 0, i32 7
  %data6 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tbits5, i32 0, i32 0
  %19 = load i8*, i8** %data6, align 8, !tbaa !251
  %cmp7 = icmp eq i8* %19, null
  br i1 %cmp7, label %if.then.9, label %if.end

if.then.9:                                        ; preds = %if.then
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  %20 = load i32, i32* %size_c, align 4, !tbaa !42
  %tobool = icmp ne i32 %20, 0
  br i1 %tobool, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %if.end
  %21 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs11 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %21, i32 0, i32 1
  %alloc_bytes12 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs11, i32 0, i32 7
  %22 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes12, align 8, !tbaa !252
  %23 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %24 = load i32, i32* %size_c, align 4, !tbaa !42
  %conv13 = sext i32 %24 to i64
  %sub14 = sub i64 %conv13, 48
  %conv15 = trunc i64 %sub14 to i32
  %call16 = call i8* %22(%struct.gs_memory_s* %23, i32 %conv15, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.19, i32 0, i32 0)) #5
  %25 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ptile.addr, align 8, !tbaa !1
  %tmask = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %25, i32 0, i32 8
  %data17 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tmask, i32 0, i32 0
  store i8* %call16, i8** %data17, align 8, !tbaa !240
  %26 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ptile.addr, align 8, !tbaa !1
  %tmask18 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %26, i32 0, i32 8
  %data19 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tmask18, i32 0, i32 0
  %27 = load i8*, i8** %data19, align 8, !tbaa !240
  %cmp20 = icmp eq i8* %27, null
  br i1 %cmp20, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %if.then.10
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.23:                                        ; preds = %if.then.10
  br label %if.end.26

if.else:                                          ; preds = %if.end
  %28 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ptile.addr, align 8, !tbaa !1
  %tmask24 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %28, i32 0, i32 8
  %data25 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tmask24, i32 0, i32 0
  store i8* null, i8** %data25, align 8, !tbaa !240
  br label %if.end.26

if.end.26:                                        ; preds = %if.else, %if.end.23
  %29 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ptile.addr, align 8, !tbaa !1
  %cdev = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %29, i32 0, i32 10
  store %union.gx_device_clist_s* null, %union.gx_device_clist_s** %cdev, align 8, !tbaa !98
  br label %if.end.46

if.else.27:                                       ; preds = %entry
  %30 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs28 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %30, i32 0, i32 1
  %object_size = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs28, i32 0, i32 14
  %31 = load i32 (%struct.gs_memory_s*, i8*)*, i32 (%struct.gs_memory_s*, i8*)** %object_size, align 8, !tbaa !254
  %32 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %33 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ptile.addr, align 8, !tbaa !1
  %tbits29 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %33, i32 0, i32 7
  %data30 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tbits29, i32 0, i32 0
  %34 = load i8*, i8** %data30, align 8, !tbaa !251
  %call31 = call i32 %31(%struct.gs_memory_s* %32, i8* %34) #5
  %conv32 = zext i32 %call31 to i64
  %add = add i64 %conv32, 48
  %conv33 = trunc i64 %add to i32
  store i32 %conv33, i32* %size_b, align 4, !tbaa !42
  %35 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ptile.addr, align 8, !tbaa !1
  %tmask34 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %35, i32 0, i32 8
  %data35 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tmask34, i32 0, i32 0
  %36 = load i8*, i8** %data35, align 8, !tbaa !240
  %cmp36 = icmp ne i8* %36, null
  br i1 %cmp36, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else.27
  %37 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs38 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %37, i32 0, i32 1
  %object_size39 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs38, i32 0, i32 14
  %38 = load i32 (%struct.gs_memory_s*, i8*)*, i32 (%struct.gs_memory_s*, i8*)** %object_size39, align 8, !tbaa !254
  %39 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %40 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ptile.addr, align 8, !tbaa !1
  %tmask40 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %40, i32 0, i32 8
  %data41 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tmask40, i32 0, i32 0
  %41 = load i8*, i8** %data41, align 8, !tbaa !240
  %call42 = call i32 %38(%struct.gs_memory_s* %39, i8* %41) #5
  %conv43 = zext i32 %call42 to i64
  %add44 = add i64 %conv43, 48
  br label %cond.end

cond.false:                                       ; preds = %if.else.27
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %add44, %cond.true ], [ 0, %cond.false ]
  %conv45 = trunc i64 %cond to i32
  store i32 %conv45, i32* %size_c, align 4, !tbaa !42
  br label %if.end.46

if.end.46:                                        ; preds = %cond.end, %if.end.26
  %42 = load i64, i64* %offset1, align 8, !tbaa !48
  %cmp47 = icmp ule i64 %42, 136
  br i1 %cmp47, label %if.then.49, label %if.end.71

if.then.49:                                       ; preds = %if.end.46
  %43 = bitcast i32* %l to i8*
  call void @llvm.lifetime.start(i64 4, i8* %43) #1
  %44 = load i32, i32* %left, align 4, !tbaa !42
  %conv50 = sext i32 %44 to i64
  %cmp51 = icmp ult i64 48, %conv50
  br i1 %cmp51, label %cond.true.53, label %cond.false.54

cond.true.53:                                     ; preds = %if.then.49
  br label %cond.end.56

cond.false.54:                                    ; preds = %if.then.49
  %45 = load i32, i32* %left, align 4, !tbaa !42
  %conv55 = sext i32 %45 to i64
  br label %cond.end.56

cond.end.56:                                      ; preds = %cond.false.54, %cond.true.53
  %cond57 = phi i64 [ 48, %cond.true.53 ], [ %conv55, %cond.false.54 ]
  %conv58 = trunc i64 %cond57 to i32
  store i32 %conv58, i32* %l, align 4, !tbaa !42
  %46 = bitcast i8** %save to i8*
  call void @llvm.lifetime.start(i64 8, i8* %46) #1
  %47 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ptile.addr, align 8, !tbaa !1
  %tbits59 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %47, i32 0, i32 7
  %data60 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tbits59, i32 0, i32 0
  %48 = load i8*, i8** %data60, align 8, !tbaa !251
  store i8* %48, i8** %save, align 8, !tbaa !1
  %49 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ptile.addr, align 8, !tbaa !1
  %tbits61 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %49, i32 0, i32 7
  %50 = bitcast %struct.gx_strip_bitmap_s* %tbits61 to i8*
  %51 = load i64, i64* %offset1, align 8, !tbaa !48
  %sub62 = sub i64 %51, 88
  %add.ptr = getelementptr inbounds i8, i8* %50, i64 %sub62
  %52 = load i8*, i8** %dp, align 8, !tbaa !1
  %53 = load i32, i32* %l, align 4, !tbaa !42
  %conv63 = sext i32 %53 to i64
  %call64 = call i8* @memcpy(i8* %add.ptr, i8* %52, i64 %conv63) #7
  %54 = load i8*, i8** %save, align 8, !tbaa !1
  %55 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ptile.addr, align 8, !tbaa !1
  %tbits65 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %55, i32 0, i32 7
  %data66 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tbits65, i32 0, i32 0
  store i8* %54, i8** %data66, align 8, !tbaa !251
  %56 = load i32, i32* %l, align 4, !tbaa !42
  %57 = load i32, i32* %left, align 4, !tbaa !42
  %sub67 = sub nsw i32 %57, %56
  store i32 %sub67, i32* %left, align 4, !tbaa !42
  %58 = load i32, i32* %l, align 4, !tbaa !42
  %conv68 = sext i32 %58 to i64
  %59 = load i64, i64* %offset1, align 8, !tbaa !48
  %add69 = add nsw i64 %59, %conv68
  store i64 %add69, i64* %offset1, align 8, !tbaa !48
  %60 = load i32, i32* %l, align 4, !tbaa !42
  %61 = load i8*, i8** %dp, align 8, !tbaa !1
  %idx.ext = sext i32 %60 to i64
  %add.ptr70 = getelementptr inbounds i8, i8* %61, i64 %idx.ext
  store i8* %add.ptr70, i8** %dp, align 8, !tbaa !1
  %62 = bitcast i8** %save to i8*
  call void @llvm.lifetime.end(i64 8, i8* %62) #1
  %63 = bitcast i32* %l to i8*
  call void @llvm.lifetime.end(i64 4, i8* %63) #1
  br label %if.end.71

if.end.71:                                        ; preds = %cond.end.56, %if.end.46
  %64 = load i32, i32* %left, align 4, !tbaa !42
  %cmp72 = icmp eq i32 %64, 0
  br i1 %cmp72, label %if.then.74, label %if.end.75

if.then.74:                                       ; preds = %if.end.71
  %65 = load i32, i32* %size.addr, align 4, !tbaa !42
  store i32 %65, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.75:                                        ; preds = %if.end.71
  %66 = load i64, i64* %offset1, align 8, !tbaa !48
  %67 = load i32, i32* %size_b, align 4, !tbaa !42
  %conv76 = sext i32 %67 to i64
  %add77 = add i64 88, %conv76
  %cmp78 = icmp ule i64 %66, %add77
  br i1 %cmp78, label %if.then.80, label %if.end.109

if.then.80:                                       ; preds = %if.end.75
  %68 = bitcast i32* %l81 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %68) #1
  %69 = load i32, i32* %size_b, align 4, !tbaa !42
  %conv82 = sext i32 %69 to i64
  %add83 = add i64 88, %conv82
  %70 = load i64, i64* %offset1, align 8, !tbaa !48
  %sub84 = sub i64 %add83, %70
  %71 = load i32, i32* %left, align 4, !tbaa !42
  %conv85 = sext i32 %71 to i64
  %cmp86 = icmp ult i64 %sub84, %conv85
  br i1 %cmp86, label %cond.true.88, label %cond.false.92

cond.true.88:                                     ; preds = %if.then.80
  %72 = load i32, i32* %size_b, align 4, !tbaa !42
  %conv89 = sext i32 %72 to i64
  %add90 = add i64 88, %conv89
  %73 = load i64, i64* %offset1, align 8, !tbaa !48
  %sub91 = sub i64 %add90, %73
  br label %cond.end.94

cond.false.92:                                    ; preds = %if.then.80
  %74 = load i32, i32* %left, align 4, !tbaa !42
  %conv93 = sext i32 %74 to i64
  br label %cond.end.94

cond.end.94:                                      ; preds = %cond.false.92, %cond.true.88
  %cond95 = phi i64 [ %sub91, %cond.true.88 ], [ %conv93, %cond.false.92 ]
  %conv96 = trunc i64 %cond95 to i32
  store i32 %conv96, i32* %l81, align 4, !tbaa !42
  %75 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ptile.addr, align 8, !tbaa !1
  %tbits97 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %75, i32 0, i32 7
  %data98 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tbits97, i32 0, i32 0
  %76 = load i8*, i8** %data98, align 8, !tbaa !251
  %77 = load i64, i64* %offset1, align 8, !tbaa !48
  %sub99 = sub i64 %77, 88
  %sub100 = sub i64 %sub99, 48
  %add.ptr101 = getelementptr inbounds i8, i8* %76, i64 %sub100
  %78 = load i8*, i8** %dp, align 8, !tbaa !1
  %79 = load i32, i32* %l81, align 4, !tbaa !42
  %conv102 = sext i32 %79 to i64
  %call103 = call i8* @memcpy(i8* %add.ptr101, i8* %78, i64 %conv102) #7
  %80 = load i32, i32* %l81, align 4, !tbaa !42
  %81 = load i32, i32* %left, align 4, !tbaa !42
  %sub104 = sub nsw i32 %81, %80
  store i32 %sub104, i32* %left, align 4, !tbaa !42
  %82 = load i32, i32* %l81, align 4, !tbaa !42
  %conv105 = sext i32 %82 to i64
  %83 = load i64, i64* %offset1, align 8, !tbaa !48
  %add106 = add nsw i64 %83, %conv105
  store i64 %add106, i64* %offset1, align 8, !tbaa !48
  %84 = load i32, i32* %l81, align 4, !tbaa !42
  %85 = load i8*, i8** %dp, align 8, !tbaa !1
  %idx.ext107 = sext i32 %84 to i64
  %add.ptr108 = getelementptr inbounds i8, i8* %85, i64 %idx.ext107
  store i8* %add.ptr108, i8** %dp, align 8, !tbaa !1
  %86 = bitcast i32* %l81 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %86) #1
  br label %if.end.109

if.end.109:                                       ; preds = %cond.end.94, %if.end.75
  %87 = load i32, i32* %left, align 4, !tbaa !42
  %cmp110 = icmp eq i32 %87, 0
  br i1 %cmp110, label %if.then.114, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.109
  %88 = load i32, i32* %size_c, align 4, !tbaa !42
  %cmp112 = icmp eq i32 %88, 0
  br i1 %cmp112, label %if.then.114, label %if.end.116

if.then.114:                                      ; preds = %lor.lhs.false, %if.end.109
  %89 = load i32, i32* %size.addr, align 4, !tbaa !42
  %90 = load i32, i32* %left, align 4, !tbaa !42
  %sub115 = sub i32 %89, %90
  store i32 %sub115, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.116:                                       ; preds = %lor.lhs.false
  %91 = load i64, i64* %offset1, align 8, !tbaa !48
  %92 = load i32, i32* %size_b, align 4, !tbaa !42
  %conv117 = sext i32 %92 to i64
  %add118 = add i64 88, %conv117
  %add119 = add i64 %add118, 48
  %cmp120 = icmp ule i64 %91, %add119
  br i1 %cmp120, label %if.then.122, label %if.end.158

if.then.122:                                      ; preds = %if.end.116
  %93 = bitcast i32* %l123 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %93) #1
  %94 = load i32, i32* %size_b, align 4, !tbaa !42
  %conv124 = sext i32 %94 to i64
  %add125 = add i64 88, %conv124
  %add126 = add i64 %add125, 48
  %95 = load i64, i64* %offset1, align 8, !tbaa !48
  %sub127 = sub i64 %add126, %95
  %96 = load i32, i32* %left, align 4, !tbaa !42
  %conv128 = sext i32 %96 to i64
  %cmp129 = icmp ult i64 %sub127, %conv128
  br i1 %cmp129, label %cond.true.131, label %cond.false.136

cond.true.131:                                    ; preds = %if.then.122
  %97 = load i32, i32* %size_b, align 4, !tbaa !42
  %conv132 = sext i32 %97 to i64
  %add133 = add i64 88, %conv132
  %add134 = add i64 %add133, 48
  %98 = load i64, i64* %offset1, align 8, !tbaa !48
  %sub135 = sub i64 %add134, %98
  br label %cond.end.138

cond.false.136:                                   ; preds = %if.then.122
  %99 = load i32, i32* %left, align 4, !tbaa !42
  %conv137 = sext i32 %99 to i64
  br label %cond.end.138

cond.end.138:                                     ; preds = %cond.false.136, %cond.true.131
  %cond139 = phi i64 [ %sub135, %cond.true.131 ], [ %conv137, %cond.false.136 ]
  %conv140 = trunc i64 %cond139 to i32
  store i32 %conv140, i32* %l123, align 4, !tbaa !42
  %100 = bitcast i8** %save141 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %100) #1
  %101 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ptile.addr, align 8, !tbaa !1
  %tmask142 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %101, i32 0, i32 8
  %data143 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tmask142, i32 0, i32 0
  %102 = load i8*, i8** %data143, align 8, !tbaa !240
  store i8* %102, i8** %save141, align 8, !tbaa !1
  %103 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ptile.addr, align 8, !tbaa !1
  %tmask144 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %103, i32 0, i32 8
  %104 = bitcast %struct.gx_strip_bitmap_s* %tmask144 to i8*
  %105 = load i64, i64* %offset1, align 8, !tbaa !48
  %sub145 = sub i64 %105, 88
  %106 = load i32, i32* %size_b, align 4, !tbaa !42
  %conv146 = sext i32 %106 to i64
  %sub147 = sub i64 %sub145, %conv146
  %add.ptr148 = getelementptr inbounds i8, i8* %104, i64 %sub147
  %107 = load i8*, i8** %dp, align 8, !tbaa !1
  %108 = load i32, i32* %l123, align 4, !tbaa !42
  %conv149 = sext i32 %108 to i64
  %call150 = call i8* @memcpy(i8* %add.ptr148, i8* %107, i64 %conv149) #7
  %109 = load i8*, i8** %save141, align 8, !tbaa !1
  %110 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ptile.addr, align 8, !tbaa !1
  %tmask151 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %110, i32 0, i32 8
  %data152 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tmask151, i32 0, i32 0
  store i8* %109, i8** %data152, align 8, !tbaa !240
  %111 = load i32, i32* %l123, align 4, !tbaa !42
  %112 = load i32, i32* %left, align 4, !tbaa !42
  %sub153 = sub nsw i32 %112, %111
  store i32 %sub153, i32* %left, align 4, !tbaa !42
  %113 = load i32, i32* %l123, align 4, !tbaa !42
  %conv154 = sext i32 %113 to i64
  %114 = load i64, i64* %offset1, align 8, !tbaa !48
  %add155 = add nsw i64 %114, %conv154
  store i64 %add155, i64* %offset1, align 8, !tbaa !48
  %115 = load i32, i32* %l123, align 4, !tbaa !42
  %116 = load i8*, i8** %dp, align 8, !tbaa !1
  %idx.ext156 = sext i32 %115 to i64
  %add.ptr157 = getelementptr inbounds i8, i8* %116, i64 %idx.ext156
  store i8* %add.ptr157, i8** %dp, align 8, !tbaa !1
  %117 = bitcast i8** %save141 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %117) #1
  %118 = bitcast i32* %l123 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %118) #1
  br label %if.end.158

if.end.158:                                       ; preds = %cond.end.138, %if.end.116
  %119 = load i32, i32* %left, align 4, !tbaa !42
  %cmp159 = icmp eq i32 %119, 0
  br i1 %cmp159, label %if.then.161, label %if.end.162

if.then.161:                                      ; preds = %if.end.158
  %120 = load i32, i32* %size.addr, align 4, !tbaa !42
  store i32 %120, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.162:                                       ; preds = %if.end.158
  %121 = load i64, i64* %offset1, align 8, !tbaa !48
  %122 = load i32, i32* %size_b, align 4, !tbaa !42
  %conv163 = sext i32 %122 to i64
  %add164 = add i64 88, %conv163
  %123 = load i32, i32* %size_c, align 4, !tbaa !42
  %conv165 = sext i32 %123 to i64
  %add166 = add i64 %add164, %conv165
  %cmp167 = icmp ule i64 %121, %add166
  br i1 %cmp167, label %if.then.169, label %if.end.204

if.then.169:                                      ; preds = %if.end.162
  %124 = bitcast i32* %l170 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %124) #1
  %125 = load i32, i32* %size_b, align 4, !tbaa !42
  %conv171 = sext i32 %125 to i64
  %add172 = add i64 88, %conv171
  %126 = load i32, i32* %size_c, align 4, !tbaa !42
  %conv173 = sext i32 %126 to i64
  %add174 = add i64 %add172, %conv173
  %127 = load i64, i64* %offset1, align 8, !tbaa !48
  %sub175 = sub i64 %add174, %127
  %128 = load i32, i32* %left, align 4, !tbaa !42
  %conv176 = sext i32 %128 to i64
  %cmp177 = icmp ult i64 %sub175, %conv176
  br i1 %cmp177, label %cond.true.179, label %cond.false.185

cond.true.179:                                    ; preds = %if.then.169
  %129 = load i32, i32* %size_b, align 4, !tbaa !42
  %conv180 = sext i32 %129 to i64
  %add181 = add i64 88, %conv180
  %130 = load i32, i32* %size_c, align 4, !tbaa !42
  %conv182 = sext i32 %130 to i64
  %add183 = add i64 %add181, %conv182
  %131 = load i64, i64* %offset1, align 8, !tbaa !48
  %sub184 = sub i64 %add183, %131
  br label %cond.end.187

cond.false.185:                                   ; preds = %if.then.169
  %132 = load i32, i32* %left, align 4, !tbaa !42
  %conv186 = sext i32 %132 to i64
  br label %cond.end.187

cond.end.187:                                     ; preds = %cond.false.185, %cond.true.179
  %cond188 = phi i64 [ %sub184, %cond.true.179 ], [ %conv186, %cond.false.185 ]
  %conv189 = trunc i64 %cond188 to i32
  store i32 %conv189, i32* %l170, align 4, !tbaa !42
  %133 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ptile.addr, align 8, !tbaa !1
  %tmask190 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %133, i32 0, i32 8
  %data191 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tmask190, i32 0, i32 0
  %134 = load i8*, i8** %data191, align 8, !tbaa !240
  %135 = load i64, i64* %offset1, align 8, !tbaa !48
  %sub192 = sub i64 %135, 88
  %136 = load i32, i32* %size_b, align 4, !tbaa !42
  %conv193 = sext i32 %136 to i64
  %sub194 = sub i64 %sub192, %conv193
  %sub195 = sub i64 %sub194, 48
  %add.ptr196 = getelementptr inbounds i8, i8* %134, i64 %sub195
  %137 = load i8*, i8** %dp, align 8, !tbaa !1
  %138 = load i32, i32* %l170, align 4, !tbaa !42
  %conv197 = sext i32 %138 to i64
  %call198 = call i8* @memcpy(i8* %add.ptr196, i8* %137, i64 %conv197) #7
  %139 = load i32, i32* %l170, align 4, !tbaa !42
  %140 = load i32, i32* %left, align 4, !tbaa !42
  %sub199 = sub nsw i32 %140, %139
  store i32 %sub199, i32* %left, align 4, !tbaa !42
  %141 = load i32, i32* %l170, align 4, !tbaa !42
  %conv200 = sext i32 %141 to i64
  %142 = load i64, i64* %offset1, align 8, !tbaa !48
  %add201 = add nsw i64 %142, %conv200
  store i64 %add201, i64* %offset1, align 8, !tbaa !48
  %143 = load i32, i32* %l170, align 4, !tbaa !42
  %144 = load i8*, i8** %dp, align 8, !tbaa !1
  %idx.ext202 = sext i32 %143 to i64
  %add.ptr203 = getelementptr inbounds i8, i8* %144, i64 %idx.ext202
  store i8* %add.ptr203, i8** %dp, align 8, !tbaa !1
  %145 = bitcast i32* %l170 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %145) #1
  br label %if.end.204

if.end.204:                                       ; preds = %cond.end.187, %if.end.162
  %146 = load i32, i32* %size.addr, align 4, !tbaa !42
  %147 = load i32, i32* %left, align 4, !tbaa !42
  %sub205 = sub i32 %146, %147
  store i32 %sub205, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.204, %if.then.161, %if.then.114, %if.then.74, %if.then.22, %if.then.9
  %148 = bitcast i32* %size_c to i8*
  call void @llvm.lifetime.end(i64 4, i8* %148) #1
  %149 = bitcast i32* %size_b to i8*
  call void @llvm.lifetime.end(i64 4, i8* %149) #1
  %150 = bitcast i64* %offset1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %150) #1
  %151 = bitcast i32* %left to i8*
  call void @llvm.lifetime.end(i64 4, i8* %151) #1
  %152 = bitcast i8** %dp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %152) #1
  %153 = load i32, i32* %retval
  ret i32 %153
}

; Function Attrs: nounwind
declare i8* @memset(i8*, i32, i64) #3

declare %struct.gx_device_forward_s* @gx_pattern_accum_alloc(%struct.gs_memory_s*, %struct.gs_memory_s*, %struct.gs_pattern1_instance_s*, i8*) #2

declare i32 @clist_put_data(%union.gx_device_clist_s*, i32, i64, i8*, i32) #2

; Function Attrs: nounwind uwtable
define void @gx_set_pattern_procs_trans(%struct.gx_device_color_s* %pdevc) #0 {
entry:
  %pdevc.addr = alloca %struct.gx_device_color_s*, align 8
  store %struct.gx_device_color_s* %pdevc, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %0 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %0, i32 0, i32 0
  store %struct.gx_device_color_type_s* @gx_dc_pattern_trans, %struct.gx_device_color_type_s** %type, align 8, !tbaa !105
  ret void
}

; Function Attrs: nounwind uwtable
define void @gx_set_pattern_procs_standard(%struct.gx_device_color_s* %pdevc) #0 {
entry:
  %pdevc.addr = alloca %struct.gx_device_color_s*, align 8
  store %struct.gx_device_color_s* %pdevc, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %0 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %0, i32 0, i32 0
  store %struct.gx_device_color_type_s* @gx_dc_pattern, %struct.gx_device_color_type_s** %type, align 8, !tbaa !105
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @gx_pattern_procs_istrans(%struct.gx_device_color_s* %pdevc) #0 {
entry:
  %pdevc.addr = alloca %struct.gx_device_color_s*, align 8
  store %struct.gx_device_color_s* %pdevc, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %0 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %0, i32 0, i32 0
  %1 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type, align 8, !tbaa !105
  %cmp = icmp eq %struct.gx_device_color_type_s* %1, @gx_dc_pattern_trans
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nounwind uwtable
define i32 @gx_dc_is_pattern1_color_with_trans(%struct.gx_device_color_s* %pdevc) #0 {
entry:
  %retval = alloca i32, align 4
  %pdevc.addr = alloca %struct.gx_device_color_s*, align 8
  store %struct.gx_device_color_s* %pdevc, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %0 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %0, i32 0, i32 0
  %1 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type, align 8, !tbaa !105
  %cmp = icmp eq %struct.gx_device_color_type_s* %1, @gx_dc_pattern
  br i1 %cmp, label %if.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %type1 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %2, i32 0, i32 0
  %3 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type1, align 8, !tbaa !105
  %cmp2 = icmp eq %struct.gx_device_color_type_s* %3, @gx_dc_pattern_trans
  br i1 %cmp2, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false, %entry
  %4 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %call = call i8* @gx_pattern1_get_transptr(%struct.gx_device_color_s* %4) #5
  %cmp3 = icmp ne i8* %call, null
  %conv = zext i1 %cmp3 to i32
  store i32 %conv, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load i32, i32* %retval
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define internal i32 @gs_pattern1_uses_base_space(%struct.gs_pattern_template_s* %ptemp) #0 {
entry:
  %ptemp.addr = alloca %struct.gs_pattern_template_s*, align 8
  store %struct.gs_pattern_template_s* %ptemp, %struct.gs_pattern_template_s** %ptemp.addr, align 8, !tbaa !1
  %0 = load %struct.gs_pattern_template_s*, %struct.gs_pattern_template_s** %ptemp.addr, align 8, !tbaa !1
  %1 = bitcast %struct.gs_pattern_template_s* %0 to %struct.gs_pattern1_template_s*
  %PaintType = getelementptr inbounds %struct.gs_pattern1_template_s, %struct.gs_pattern1_template_s* %1, i32 0, i32 4
  %2 = load i32, i32* %PaintType, align 4, !tbaa !52
  %cmp = icmp eq i32 %2, 2
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nounwind uwtable
define internal %struct.gs_pattern_template_s* @gs_pattern1_get_pattern(%struct.gs_pattern_instance_s* %pinst) #0 {
entry:
  %pinst.addr = alloca %struct.gs_pattern_instance_s*, align 8
  store %struct.gs_pattern_instance_s* %pinst, %struct.gs_pattern_instance_s** %pinst.addr, align 8, !tbaa !1
  %0 = load %struct.gs_pattern_instance_s*, %struct.gs_pattern_instance_s** %pinst.addr, align 8, !tbaa !1
  %1 = bitcast %struct.gs_pattern_instance_s* %0 to %struct.gs_pattern1_instance_s*
  %templat = getelementptr inbounds %struct.gs_pattern1_instance_s, %struct.gs_pattern1_instance_s* %1, i32 0, i32 4
  %2 = bitcast %struct.gs_pattern1_template_s* %templat to %struct.gs_pattern_template_s*
  ret %struct.gs_pattern_template_s* %2
}

declare i32 @gs_pattern1_remap_color(%struct.gs_client_color_s*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32) #2

; Function Attrs: nounwind uwtable
define internal i32 @gs_pattern1_set_color(%struct.gs_client_color_s* %pcc, %struct.gs_state_s* %pgs) #0 {
entry:
  %retval = alloca i32, align 4
  %pcc.addr = alloca %struct.gs_client_color_s*, align 8
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %pinst = alloca %struct.gs_pattern1_instance_s*, align 8
  %ptmplt = alloca %struct.gs_pattern1_template_s*, align 8
  %pcs = alloca %struct.gs_color_space_s*, align 8
  %cleanup.dest.slot = alloca i32
  %params = alloca %struct.gs_overprint_params_s, align 8
  store %struct.gs_client_color_s* %pcc, %struct.gs_client_color_s** %pcc.addr, align 8, !tbaa !1
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_pattern1_instance_s** %pinst to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pcc.addr, align 8, !tbaa !1
  %pattern = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %1, i32 0, i32 0
  %2 = load %struct.gs_pattern_instance_s*, %struct.gs_pattern_instance_s** %pattern, align 8, !tbaa !44
  %3 = bitcast %struct.gs_pattern_instance_s* %2 to %struct.gs_pattern1_instance_s*
  store %struct.gs_pattern1_instance_s* %3, %struct.gs_pattern1_instance_s** %pinst, align 8, !tbaa !1
  %4 = bitcast %struct.gs_pattern1_template_s** %ptmplt to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load %struct.gs_pattern1_instance_s*, %struct.gs_pattern1_instance_s** %pinst, align 8, !tbaa !1
  %templat = getelementptr inbounds %struct.gs_pattern1_instance_s, %struct.gs_pattern1_instance_s* %5, i32 0, i32 4
  store %struct.gs_pattern1_template_s* %templat, %struct.gs_pattern1_template_s** %ptmplt, align 8, !tbaa !1
  %6 = load %struct.gs_pattern1_template_s*, %struct.gs_pattern1_template_s** %ptmplt, align 8, !tbaa !1
  %PaintType = getelementptr inbounds %struct.gs_pattern1_template_s, %struct.gs_pattern1_template_s* %6, i32 0, i32 4
  %7 = load i32, i32* %PaintType, align 4, !tbaa !52
  %cmp = icmp eq i32 %7, 2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %8 = bitcast %struct.gs_color_space_s** %pcs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  %9 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %color = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %9, i32 0, i32 69
  %arrayidx = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* %color, i32 0, i64 0
  %color_space = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx, i32 0, i32 0
  %10 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %color_space, align 8, !tbaa !255
  store %struct.gs_color_space_s* %10, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %11 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %base_space = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %11, i32 0, i32 3
  %12 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %base_space, align 8, !tbaa !8
  store %struct.gs_color_space_s* %12, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %13 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %13, i32 0, i32 0
  %14 = load %struct.gs_color_space_type_s*, %struct.gs_color_space_type_s** %type, align 8, !tbaa !256
  %set_overprint = getelementptr inbounds %struct.gs_color_space_type_s, %struct.gs_color_space_type_s* %14, i32 0, i32 12
  %15 = load i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)*, i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)** %set_overprint, align 8, !tbaa !257
  %16 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %17 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %call = call i32 %15(%struct.gs_color_space_s* %16, %struct.gs_state_s* %17) #5
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  %18 = bitcast %struct.gs_color_space_s** %pcs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %18) #1
  br label %cleanup

if.else:                                          ; preds = %entry
  %19 = bitcast %struct.gs_overprint_params_s* %params to i8*
  call void @llvm.lifetime.start(i64 32, i8* %19) #1
  %retain_any_comps = getelementptr inbounds %struct.gs_overprint_params_s, %struct.gs_overprint_params_s* %params, i32 0, i32 0
  store i32 0, i32* %retain_any_comps, align 4, !tbaa !259
  %20 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %effective_overprint_mode = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %20, i32 0, i32 23
  store i32 0, i32* %effective_overprint_mode, align 4, !tbaa !261
  %21 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %call1 = call i32 @gs_state_update_overprint(%struct.gs_state_s* %21, %struct.gs_overprint_params_s* %params) #5
  store i32 %call1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  %22 = bitcast %struct.gs_overprint_params_s* %params to i8*
  call void @llvm.lifetime.end(i64 32, i8* %22) #1
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then
  %23 = bitcast %struct.gs_pattern1_template_s** %ptmplt to i8*
  call void @llvm.lifetime.end(i64 8, i8* %23) #1
  %24 = bitcast %struct.gs_pattern1_instance_s** %pinst to i8*
  call void @llvm.lifetime.end(i64 8, i8* %24) #1
  %25 = load i32, i32* %retval
  ret i32 %25
}

declare i32 @gs_state_update_overprint(%struct.gs_state_s*, %struct.gs_overprint_params_s*) #2

declare i32 @gs_make_pattern_common(%struct.gs_client_color_s*, %struct.gs_pattern_template_s*, %struct.gs_matrix_s*, %struct.gs_state_s*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*) #2

declare i32 @gs_set_logical_op(%struct.gs_state_s*, i32) #2

declare i32 @gx_set_device_color_1(%struct.gs_state_s*) #2

; Function Attrs: nounwind uwtable
define internal i32 @compute_inst_matrix(%struct.gs_pattern1_instance_s* %pinst, %struct.gs_state_s* %saved, %struct.gs_rect_s* %pbbox, i32 %width, i32 %height) #0 {
entry:
  %retval = alloca i32, align 4
  %pinst.addr = alloca %struct.gs_pattern1_instance_s*, align 8
  %saved.addr = alloca %struct.gs_state_s*, align 8
  %pbbox.addr = alloca %struct.gs_rect_s*, align 8
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %xx = alloca float, align 4
  %xy = alloca float, align 4
  %yx = alloca float, align 4
  %yy = alloca float, align 4
  %dx = alloca float, align 4
  %dy = alloca float, align 4
  %temp = alloca float, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_pattern1_instance_s* %pinst, %struct.gs_pattern1_instance_s** %pinst.addr, align 8, !tbaa !1
  store %struct.gs_state_s* %saved, %struct.gs_state_s** %saved.addr, align 8, !tbaa !1
  store %struct.gs_rect_s* %pbbox, %struct.gs_rect_s** %pbbox.addr, align 8, !tbaa !1
  store i32 %width, i32* %width.addr, align 4, !tbaa !42
  store i32 %height, i32* %height.addr, align 4, !tbaa !42
  %0 = bitcast float* %xx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast float* %xy to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast float* %yx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast float* %yy to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast float* %dx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast float* %dy to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast float* %temp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = load %struct.gs_pattern1_instance_s*, %struct.gs_pattern1_instance_s** %pinst.addr, align 8, !tbaa !1
  %templat = getelementptr inbounds %struct.gs_pattern1_instance_s, %struct.gs_pattern1_instance_s* %8, i32 0, i32 4
  %BBox = getelementptr inbounds %struct.gs_pattern1_template_s, %struct.gs_pattern1_template_s* %templat, i32 0, i32 7
  %9 = load %struct.gs_state_s*, %struct.gs_state_s** %saved.addr, align 8, !tbaa !1
  %ctm = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %9, i32 0, i32 5
  %10 = bitcast %struct.gs_matrix_fixed_s* %ctm to %struct.gs_matrix_s*
  %11 = load %struct.gs_rect_s*, %struct.gs_rect_s** %pbbox.addr, align 8, !tbaa !1
  %call = call i32 @gs_bbox_transform(%struct.gs_rect_s* %BBox, %struct.gs_matrix_s* %10, %struct.gs_rect_s* %11) #5
  store i32 %call, i32* %code, align 4, !tbaa !42
  %12 = load i32, i32* %code, align 4, !tbaa !42
  %cmp = icmp slt i32 %12, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %13 = load i32, i32* %code, align 4, !tbaa !42
  store i32 %13, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %14 = load %struct.gs_rect_s*, %struct.gs_rect_s** %pbbox.addr, align 8, !tbaa !1
  %p = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %14, i32 0, i32 0
  %x = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p, i32 0, i32 0
  %15 = load double, double* %x, align 8, !tbaa !66
  %16 = load %struct.gs_rect_s*, %struct.gs_rect_s** %pbbox.addr, align 8, !tbaa !1
  %p1 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %16, i32 0, i32 0
  %x2 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p1, i32 0, i32 0
  %17 = load double, double* %x2, align 8, !tbaa !66
  %add = fadd double %17, 5.000000e-01
  %call3 = call double @floor(double %add) #6
  %sub = fsub double %15, %call3
  %conv = fptrunc double %sub to float
  store float %conv, float* %dx, align 4, !tbaa !55
  %18 = load %struct.gs_rect_s*, %struct.gs_rect_s** %pbbox.addr, align 8, !tbaa !1
  %p4 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %18, i32 0, i32 0
  %y = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p4, i32 0, i32 1
  %19 = load double, double* %y, align 8, !tbaa !68
  %20 = load %struct.gs_rect_s*, %struct.gs_rect_s** %pbbox.addr, align 8, !tbaa !1
  %p5 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %20, i32 0, i32 0
  %y6 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p5, i32 0, i32 1
  %21 = load double, double* %y6, align 8, !tbaa !68
  %add7 = fadd double %21, 5.000000e-01
  %call8 = call double @floor(double %add7) #6
  %sub9 = fsub double %19, %call8
  %conv10 = fptrunc double %sub9 to float
  store float %conv10, float* %dy, align 4, !tbaa !55
  %22 = load float, float* %dx, align 4, !tbaa !55
  %conv11 = fpext float %22 to double
  %23 = load %struct.gs_rect_s*, %struct.gs_rect_s** %pbbox.addr, align 8, !tbaa !1
  %p12 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %23, i32 0, i32 0
  %x13 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p12, i32 0, i32 0
  %24 = load double, double* %x13, align 8, !tbaa !66
  %sub14 = fsub double %24, %conv11
  store double %sub14, double* %x13, align 8, !tbaa !66
  %25 = load float, float* %dy, align 4, !tbaa !55
  %conv15 = fpext float %25 to double
  %26 = load %struct.gs_rect_s*, %struct.gs_rect_s** %pbbox.addr, align 8, !tbaa !1
  %p16 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %26, i32 0, i32 0
  %y17 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p16, i32 0, i32 1
  %27 = load double, double* %y17, align 8, !tbaa !68
  %sub18 = fsub double %27, %conv15
  store double %sub18, double* %y17, align 8, !tbaa !68
  %28 = load float, float* %dx, align 4, !tbaa !55
  %conv19 = fpext float %28 to double
  %29 = load %struct.gs_rect_s*, %struct.gs_rect_s** %pbbox.addr, align 8, !tbaa !1
  %q = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %29, i32 0, i32 1
  %x20 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q, i32 0, i32 0
  %30 = load double, double* %x20, align 8, !tbaa !65
  %sub21 = fsub double %30, %conv19
  store double %sub21, double* %x20, align 8, !tbaa !65
  %31 = load float, float* %dy, align 4, !tbaa !55
  %conv22 = fpext float %31 to double
  %32 = load %struct.gs_rect_s*, %struct.gs_rect_s** %pbbox.addr, align 8, !tbaa !1
  %q23 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %32, i32 0, i32 1
  %y24 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q23, i32 0, i32 1
  %33 = load double, double* %y24, align 8, !tbaa !67
  %sub25 = fsub double %33, %conv22
  store double %sub25, double* %y24, align 8, !tbaa !67
  %34 = load %struct.gs_state_s*, %struct.gs_state_s** %saved.addr, align 8, !tbaa !1
  %ctm26 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %34, i32 0, i32 5
  %txy_fixed_valid = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm26, i32 0, i32 8
  %35 = load i32, i32* %txy_fixed_valid, align 4, !tbaa !262
  %tobool = icmp ne i32 %35, 0
  br i1 %tobool, label %if.then.27, label %if.else

if.then.27:                                       ; preds = %if.end
  %36 = load %struct.gs_state_s*, %struct.gs_state_s** %saved.addr, align 8, !tbaa !1
  %37 = load %struct.gs_state_s*, %struct.gs_state_s** %saved.addr, align 8, !tbaa !1
  %ctm28 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %37, i32 0, i32 5
  %tx = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm28, i32 0, i32 4
  %38 = load float, float* %tx, align 4, !tbaa !263
  %39 = load float, float* %dx, align 4, !tbaa !55
  %sub29 = fsub float %38, %39
  %mul = fmul float %sub29, 2.560000e+02
  %conv30 = fpext float %mul to double
  %add31 = fadd double %conv30, 5.000000e-01
  %call32 = call double @floor(double %add31) #6
  %conv33 = fptosi double %call32 to i32
  %40 = load %struct.gs_state_s*, %struct.gs_state_s** %saved.addr, align 8, !tbaa !1
  %ctm34 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %40, i32 0, i32 5
  %ty = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm34, i32 0, i32 5
  %41 = load float, float* %ty, align 4, !tbaa !264
  %42 = load float, float* %dy, align 4, !tbaa !55
  %sub35 = fsub float %41, %42
  %mul36 = fmul float %sub35, 2.560000e+02
  %conv37 = fpext float %mul36 to double
  %add38 = fadd double %conv37, 5.000000e-01
  %call39 = call double @floor(double %add38) #6
  %conv40 = fptosi double %call39 to i32
  %call41 = call i32 @gx_translate_to_fixed(%struct.gs_state_s* %36, i32 %conv33, i32 %conv40) #5
  store i32 %call41, i32* %code, align 4, !tbaa !42
  br label %if.end.55

if.else:                                          ; preds = %if.end
  %43 = load float, float* %dx, align 4, !tbaa !55
  %44 = load %struct.gs_state_s*, %struct.gs_state_s** %saved.addr, align 8, !tbaa !1
  %ctm42 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %44, i32 0, i32 5
  %tx43 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm42, i32 0, i32 4
  %45 = load float, float* %tx43, align 4, !tbaa !263
  %sub44 = fsub float %45, %43
  store float %sub44, float* %tx43, align 4, !tbaa !263
  %46 = load float, float* %dy, align 4, !tbaa !55
  %47 = load %struct.gs_state_s*, %struct.gs_state_s** %saved.addr, align 8, !tbaa !1
  %ctm45 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %47, i32 0, i32 5
  %ty46 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm45, i32 0, i32 5
  %48 = load float, float* %ty46, align 4, !tbaa !264
  %sub47 = fsub float %48, %46
  store float %sub47, float* %ty46, align 4, !tbaa !264
  %49 = load %struct.gs_state_s*, %struct.gs_state_s** %saved.addr, align 8, !tbaa !1
  %path = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %49, i32 0, i32 61
  %50 = load %struct.gx_path_s*, %struct.gx_path_s** %path, align 8, !tbaa !265
  %51 = load float, float* %dx, align 4, !tbaa !55
  %sub48 = fsub float -0.000000e+00, %51
  %mul49 = fmul float %sub48, 2.560000e+02
  %conv50 = fptosi float %mul49 to i32
  %52 = load float, float* %dy, align 4, !tbaa !55
  %sub51 = fsub float -0.000000e+00, %52
  %mul52 = fmul float %sub51, 2.560000e+02
  %conv53 = fptosi float %mul52 to i32
  %call54 = call i32 @gx_path_translate(%struct.gx_path_s* %50, i32 %conv50, i32 %conv53) #5
  store i32 %call54, i32* %code, align 4, !tbaa !42
  br label %if.end.55

if.end.55:                                        ; preds = %if.else, %if.then.27
  %53 = load i32, i32* %code, align 4, !tbaa !42
  %cmp56 = icmp slt i32 %53, 0
  br i1 %cmp56, label %if.then.58, label %if.end.59

if.then.58:                                       ; preds = %if.end.55
  %54 = load i32, i32* %code, align 4, !tbaa !42
  store i32 %54, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.59:                                        ; preds = %if.end.55
  %55 = load %struct.gs_pattern1_instance_s*, %struct.gs_pattern1_instance_s** %pinst.addr, align 8, !tbaa !1
  %templat60 = getelementptr inbounds %struct.gs_pattern1_instance_s, %struct.gs_pattern1_instance_s* %55, i32 0, i32 4
  %XStep = getelementptr inbounds %struct.gs_pattern1_template_s, %struct.gs_pattern1_template_s* %templat60, i32 0, i32 8
  %56 = load float, float* %XStep, align 4, !tbaa !60
  %57 = load %struct.gs_state_s*, %struct.gs_state_s** %saved.addr, align 8, !tbaa !1
  %ctm61 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %57, i32 0, i32 5
  %xx62 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm61, i32 0, i32 0
  %58 = load float, float* %xx62, align 4, !tbaa !266
  %mul63 = fmul float %56, %58
  store float %mul63, float* %xx, align 4, !tbaa !55
  %59 = load %struct.gs_pattern1_instance_s*, %struct.gs_pattern1_instance_s** %pinst.addr, align 8, !tbaa !1
  %templat64 = getelementptr inbounds %struct.gs_pattern1_instance_s, %struct.gs_pattern1_instance_s* %59, i32 0, i32 4
  %XStep65 = getelementptr inbounds %struct.gs_pattern1_template_s, %struct.gs_pattern1_template_s* %templat64, i32 0, i32 8
  %60 = load float, float* %XStep65, align 4, !tbaa !60
  %61 = load %struct.gs_state_s*, %struct.gs_state_s** %saved.addr, align 8, !tbaa !1
  %ctm66 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %61, i32 0, i32 5
  %xy67 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm66, i32 0, i32 1
  %62 = load float, float* %xy67, align 4, !tbaa !267
  %mul68 = fmul float %60, %62
  store float %mul68, float* %xy, align 4, !tbaa !55
  %63 = load %struct.gs_pattern1_instance_s*, %struct.gs_pattern1_instance_s** %pinst.addr, align 8, !tbaa !1
  %templat69 = getelementptr inbounds %struct.gs_pattern1_instance_s, %struct.gs_pattern1_instance_s* %63, i32 0, i32 4
  %YStep = getelementptr inbounds %struct.gs_pattern1_template_s, %struct.gs_pattern1_template_s* %templat69, i32 0, i32 9
  %64 = load float, float* %YStep, align 4, !tbaa !61
  %65 = load %struct.gs_state_s*, %struct.gs_state_s** %saved.addr, align 8, !tbaa !1
  %ctm70 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %65, i32 0, i32 5
  %yx71 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm70, i32 0, i32 2
  %66 = load float, float* %yx71, align 4, !tbaa !268
  %mul72 = fmul float %64, %66
  store float %mul72, float* %yx, align 4, !tbaa !55
  %67 = load %struct.gs_pattern1_instance_s*, %struct.gs_pattern1_instance_s** %pinst.addr, align 8, !tbaa !1
  %templat73 = getelementptr inbounds %struct.gs_pattern1_instance_s, %struct.gs_pattern1_instance_s* %67, i32 0, i32 4
  %YStep74 = getelementptr inbounds %struct.gs_pattern1_template_s, %struct.gs_pattern1_template_s* %templat73, i32 0, i32 9
  %68 = load float, float* %YStep74, align 4, !tbaa !61
  %69 = load %struct.gs_state_s*, %struct.gs_state_s** %saved.addr, align 8, !tbaa !1
  %ctm75 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %69, i32 0, i32 5
  %yy76 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm75, i32 0, i32 3
  %70 = load float, float* %yy76, align 4, !tbaa !269
  %mul77 = fmul float %68, %70
  store float %mul77, float* %yy, align 4, !tbaa !55
  %71 = load float, float* %xx, align 4, !tbaa !55
  %cmp78 = fcmp oeq float %71, 0.000000e+00
  br i1 %cmp78, label %if.then.82, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.59
  %72 = load float, float* %yy, align 4, !tbaa !55
  %cmp80 = fcmp oeq float %72, 0.000000e+00
  br i1 %cmp80, label %if.then.82, label %if.end.83

if.then.82:                                       ; preds = %lor.lhs.false, %if.end.59
  %73 = load float, float* %xx, align 4, !tbaa !55
  store float %73, float* %temp, align 4, !tbaa !55
  %74 = load float, float* %yx, align 4, !tbaa !55
  store float %74, float* %xx, align 4, !tbaa !55
  %75 = load float, float* %temp, align 4, !tbaa !55
  store float %75, float* %yx, align 4, !tbaa !55
  %76 = load float, float* %xy, align 4, !tbaa !55
  store float %76, float* %temp, align 4, !tbaa !55
  %77 = load float, float* %yy, align 4, !tbaa !55
  store float %77, float* %xy, align 4, !tbaa !55
  %78 = load float, float* %temp, align 4, !tbaa !55
  store float %78, float* %yy, align 4, !tbaa !55
  br label %if.end.83

if.end.83:                                        ; preds = %if.then.82, %lor.lhs.false
  %79 = load float, float* %xx, align 4, !tbaa !55
  %cmp84 = fcmp olt float %79, 0.000000e+00
  br i1 %cmp84, label %if.then.86, label %if.end.89

if.then.86:                                       ; preds = %if.end.83
  %80 = load float, float* %xx, align 4, !tbaa !55
  %sub87 = fsub float -0.000000e+00, %80
  store float %sub87, float* %xx, align 4, !tbaa !55
  %81 = load float, float* %xy, align 4, !tbaa !55
  %sub88 = fsub float -0.000000e+00, %81
  store float %sub88, float* %xy, align 4, !tbaa !55
  br label %if.end.89

if.end.89:                                        ; preds = %if.then.86, %if.end.83
  %82 = load float, float* %yy, align 4, !tbaa !55
  %cmp90 = fcmp olt float %82, 0.000000e+00
  br i1 %cmp90, label %if.then.92, label %if.end.95

if.then.92:                                       ; preds = %if.end.89
  %83 = load float, float* %yx, align 4, !tbaa !55
  %sub93 = fsub float -0.000000e+00, %83
  store float %sub93, float* %yx, align 4, !tbaa !55
  %84 = load float, float* %yy, align 4, !tbaa !55
  %sub94 = fsub float -0.000000e+00, %84
  store float %sub94, float* %yy, align 4, !tbaa !55
  br label %if.end.95

if.end.95:                                        ; preds = %if.then.92, %if.end.89
  %85 = load float, float* %xx, align 4, !tbaa !55
  %86 = load %struct.gs_pattern1_instance_s*, %struct.gs_pattern1_instance_s** %pinst.addr, align 8, !tbaa !1
  %step_matrix = getelementptr inbounds %struct.gs_pattern1_instance_s, %struct.gs_pattern1_instance_s* %86, i32 0, i32 5
  %xx96 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %step_matrix, i32 0, i32 0
  store float %85, float* %xx96, align 4, !tbaa !71
  %87 = load float, float* %xy, align 4, !tbaa !55
  %88 = load %struct.gs_pattern1_instance_s*, %struct.gs_pattern1_instance_s** %pinst.addr, align 8, !tbaa !1
  %step_matrix97 = getelementptr inbounds %struct.gs_pattern1_instance_s, %struct.gs_pattern1_instance_s* %88, i32 0, i32 5
  %xy98 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %step_matrix97, i32 0, i32 1
  store float %87, float* %xy98, align 4, !tbaa !73
  %89 = load float, float* %yx, align 4, !tbaa !55
  %90 = load %struct.gs_pattern1_instance_s*, %struct.gs_pattern1_instance_s** %pinst.addr, align 8, !tbaa !1
  %step_matrix99 = getelementptr inbounds %struct.gs_pattern1_instance_s, %struct.gs_pattern1_instance_s* %90, i32 0, i32 5
  %yx100 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %step_matrix99, i32 0, i32 2
  store float %89, float* %yx100, align 4, !tbaa !74
  %91 = load float, float* %yy, align 4, !tbaa !55
  %92 = load %struct.gs_pattern1_instance_s*, %struct.gs_pattern1_instance_s** %pinst.addr, align 8, !tbaa !1
  %step_matrix101 = getelementptr inbounds %struct.gs_pattern1_instance_s, %struct.gs_pattern1_instance_s* %92, i32 0, i32 5
  %yy102 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %step_matrix101, i32 0, i32 3
  store float %91, float* %yy102, align 4, !tbaa !72
  %93 = load %struct.gs_state_s*, %struct.gs_state_s** %saved.addr, align 8, !tbaa !1
  %ctm103 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %93, i32 0, i32 5
  %tx104 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm103, i32 0, i32 4
  %94 = load float, float* %tx104, align 4, !tbaa !263
  %95 = load %struct.gs_pattern1_instance_s*, %struct.gs_pattern1_instance_s** %pinst.addr, align 8, !tbaa !1
  %step_matrix105 = getelementptr inbounds %struct.gs_pattern1_instance_s, %struct.gs_pattern1_instance_s* %95, i32 0, i32 5
  %tx106 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %step_matrix105, i32 0, i32 4
  store float %94, float* %tx106, align 4, !tbaa !81
  %96 = load %struct.gs_state_s*, %struct.gs_state_s** %saved.addr, align 8, !tbaa !1
  %ctm107 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %96, i32 0, i32 5
  %ty108 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm107, i32 0, i32 5
  %97 = load float, float* %ty108, align 4, !tbaa !264
  %98 = load %struct.gs_pattern1_instance_s*, %struct.gs_pattern1_instance_s** %pinst.addr, align 8, !tbaa !1
  %step_matrix109 = getelementptr inbounds %struct.gs_pattern1_instance_s, %struct.gs_pattern1_instance_s* %98, i32 0, i32 5
  %ty110 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %step_matrix109, i32 0, i32 5
  store float %97, float* %ty110, align 4, !tbaa !82
  %99 = load %struct.gs_rect_s*, %struct.gs_rect_s** %pbbox.addr, align 8, !tbaa !1
  %q111 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %99, i32 0, i32 1
  %x112 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q111, i32 0, i32 0
  %100 = load double, double* %x112, align 8, !tbaa !65
  %101 = load %struct.gs_rect_s*, %struct.gs_rect_s** %pbbox.addr, align 8, !tbaa !1
  %p113 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %101, i32 0, i32 0
  %x114 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p113, i32 0, i32 0
  %102 = load double, double* %x114, align 8, !tbaa !66
  %sub115 = fsub double %100, %102
  %103 = load i32, i32* %width.addr, align 4, !tbaa !42
  %conv116 = sitofp i32 %103 to double
  %cmp117 = fcmp ogt double %sub115, %conv116
  br i1 %cmp117, label %if.then.128, label %lor.lhs.false.119

lor.lhs.false.119:                                ; preds = %if.end.95
  %104 = load %struct.gs_rect_s*, %struct.gs_rect_s** %pbbox.addr, align 8, !tbaa !1
  %q120 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %104, i32 0, i32 1
  %y121 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q120, i32 0, i32 1
  %105 = load double, double* %y121, align 8, !tbaa !67
  %106 = load %struct.gs_rect_s*, %struct.gs_rect_s** %pbbox.addr, align 8, !tbaa !1
  %p122 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %106, i32 0, i32 0
  %y123 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p122, i32 0, i32 1
  %107 = load double, double* %y123, align 8, !tbaa !68
  %sub124 = fsub double %105, %107
  %108 = load i32, i32* %height.addr, align 4, !tbaa !42
  %conv125 = sitofp i32 %108 to double
  %cmp126 = fcmp ogt double %sub124, %conv125
  br i1 %cmp126, label %if.then.128, label %if.end.131

if.then.128:                                      ; preds = %lor.lhs.false.119, %if.end.95
  %109 = load %struct.gs_pattern1_instance_s*, %struct.gs_pattern1_instance_s** %pinst.addr, align 8, !tbaa !1
  %110 = load %struct.gs_rect_s*, %struct.gs_rect_s** %pbbox.addr, align 8, !tbaa !1
  %111 = load i32, i32* %width.addr, align 4, !tbaa !42
  %112 = load i32, i32* %height.addr, align 4, !tbaa !42
  %113 = load %struct.gs_state_s*, %struct.gs_state_s** %saved.addr, align 8, !tbaa !1
  %ctm129 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %113, i32 0, i32 5
  %114 = bitcast %struct.gs_matrix_fixed_s* %ctm129 to %struct.gs_matrix_s*
  %call130 = call i32 @clamp_pattern_bbox(%struct.gs_pattern1_instance_s* %109, %struct.gs_rect_s* %110, i32 %111, i32 %112, %struct.gs_matrix_s* %114) #5
  store i32 %call130, i32* %code, align 4, !tbaa !42
  br label %if.end.131

if.end.131:                                       ; preds = %if.then.128, %lor.lhs.false.119
  %115 = load i32, i32* %code, align 4, !tbaa !42
  store i32 %115, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.131, %if.then.58, %if.then
  %116 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %116) #1
  %117 = bitcast float* %temp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %117) #1
  %118 = bitcast float* %dy to i8*
  call void @llvm.lifetime.end(i64 4, i8* %118) #1
  %119 = bitcast float* %dx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %119) #1
  %120 = bitcast float* %yy to i8*
  call void @llvm.lifetime.end(i64 4, i8* %120) #1
  %121 = bitcast float* %yx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %121) #1
  %122 = bitcast float* %xy to i8*
  call void @llvm.lifetime.end(i64 4, i8* %122) #1
  %123 = bitcast float* %xx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %123) #1
  %124 = load i32, i32* %retval
  ret i32 %124
}

; Function Attrs: nounwind readnone
declare double @ceil(double) #4

; Function Attrs: nounwind readnone
declare double @fabs(double) #4

declare i32 @gs_scale(%struct.gs_state_s*, double, double) #2

; Function Attrs: nounwind readnone
declare double @floor(double) #4

declare i32 @gs_translate_untransformed(%struct.gs_state_s*, double, double) #2

declare i32 @gs_bbox_transform_inverse(%struct.gs_rect_s*, %struct.gs_matrix_s*, %struct.gs_rect_s*) #2

declare i32 @gx_translate_to_fixed(%struct.gs_state_s*, i32, i32) #2

declare i32 @gs_newpath(%struct.gs_state_s*) #2

declare i32 @gs_moveto(%struct.gs_state_s*, double, double) #2

declare i32 @gs_lineto(%struct.gs_state_s*, double, double) #2

declare i32 @gs_clip(%struct.gs_state_s*) #2

declare i32 @gs_state_free(%struct.gs_state_s*) #2

; Function Attrs: nounwind uwtable
define internal %struct.gs_ptr_procs_s* @pattern1_instance_enum_ptrs(%struct.gs_memory_s* %mem, i8* %vptr, i32 %size, i32 %index, %struct.enum_ptr_s* %pep, %struct.gs_memory_struct_type_s* %pstype, %struct.gc_state_s* %gcst) #0 {
entry:
  %retval = alloca %struct.gs_ptr_procs_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %vptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %index.addr = alloca i32, align 4
  %pep.addr = alloca %struct.enum_ptr_s*, align 8
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %gcst.addr = alloca %struct.gc_state_s*, align 8
  %ptype = alloca %struct.gs_ptr_procs_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i8* %vptr, i8** %vptr.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !42
  store i32 %index, i32* %index.addr, align 4, !tbaa !42
  store %struct.enum_ptr_s* %pep, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  store %struct.gc_state_s* %gcst, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %0 = load i32, i32* %index.addr, align 4, !tbaa !42
  switch i32 %0, label %sw.default [
  ]

sw.default:                                       ; preds = %entry
  %1 = load i32, i32* %index.addr, align 4, !tbaa !42
  %cmp = icmp slt i32 %1, 2
  br i1 %cmp, label %if.then, label %if.end.2

if.then:                                          ; preds = %sw.default
  %2 = bitcast %struct.gs_ptr_procs_s** %ptype to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)** getelementptr inbounds (%struct.gs_memory_struct_type_s, %struct.gs_memory_struct_type_s* @st_pattern1_template, i32 0, i32 4), align 8, !tbaa !270
  %4 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %5 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %6 = bitcast i8* %5 to %struct.gs_pattern1_instance_s*
  %templat = getelementptr inbounds %struct.gs_pattern1_instance_s, %struct.gs_pattern1_instance_s* %6, i32 0, i32 4
  %7 = bitcast %struct.gs_pattern1_template_s* %templat to i8*
  %8 = load i32, i32* %index.addr, align 4, !tbaa !42
  %sub = sub nsw i32 %8, 0
  %9 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %10 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call = call %struct.gs_ptr_procs_s* %3(%struct.gs_memory_s* %4, i8* %7, i32 104, i32 %sub, %struct.enum_ptr_s* %9, %struct.gs_memory_struct_type_s* @st_pattern1_template, %struct.gc_state_s* %10) #5
  store %struct.gs_ptr_procs_s* %call, %struct.gs_ptr_procs_s** %ptype, align 8, !tbaa !1
  %11 = load %struct.gs_ptr_procs_s*, %struct.gs_ptr_procs_s** %ptype, align 8, !tbaa !1
  %tobool = icmp ne %struct.gs_ptr_procs_s* %11, null
  br i1 %tobool, label %if.then.1, label %if.end

if.then.1:                                        ; preds = %if.then
  %12 = load %struct.gs_ptr_procs_s*, %struct.gs_ptr_procs_s** %ptype, align 8, !tbaa !1
  store %struct.gs_ptr_procs_s* %12, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  %13 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %13, i32 0, i32 0
  store i8* null, i8** %ptr, align 8, !tbaa !272
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then.1
  %14 = bitcast %struct.gs_ptr_procs_s** %ptype to i8*
  call void @llvm.lifetime.end(i64 8, i8* %14) #1
  br label %return

if.end.2:                                         ; preds = %sw.default
  %15 = load %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)** getelementptr inbounds (%struct.gs_memory_struct_type_s, %struct.gs_memory_struct_type_s* @st_pattern_instance, i32 0, i32 4), align 8, !tbaa !270
  %16 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %17 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %18 = load i32, i32* %size.addr, align 4, !tbaa !42
  %19 = load i32, i32* %index.addr, align 4, !tbaa !42
  %sub3 = sub nsw i32 %19, 2
  %20 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %21 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call4 = call %struct.gs_ptr_procs_s* %15(%struct.gs_memory_s* %16, i8* %17, i32 %18, i32 %sub3, %struct.enum_ptr_s* %20, %struct.gs_memory_struct_type_s* @st_pattern_instance, %struct.gc_state_s* %21) #5
  store %struct.gs_ptr_procs_s* %call4, %struct.gs_ptr_procs_s** %retval
  br label %return

return:                                           ; preds = %if.end.2, %cleanup
  %22 = load %struct.gs_ptr_procs_s*, %struct.gs_ptr_procs_s** %retval
  ret %struct.gs_ptr_procs_s* %22
}

; Function Attrs: nounwind uwtable
define internal void @pattern1_instance_reloc_ptrs(i8* %vptr, i32 %size, %struct.gs_memory_struct_type_s* %pstype, %struct.gc_state_s* %gcst) #0 {
entry:
  %vptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %gcst.addr = alloca %struct.gc_state_s*, align 8
  store i8* %vptr, i8** %vptr.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !42
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  store %struct.gc_state_s* %gcst, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %0 = load void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)** getelementptr inbounds (%struct.gs_memory_struct_type_s, %struct.gs_memory_struct_type_s* @st_pattern_instance, i32 0, i32 5), align 8, !tbaa !274
  %1 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %2 = load i32, i32* %size.addr, align 4, !tbaa !42
  %3 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  call void %0(i8* %1, i32 %2, %struct.gs_memory_struct_type_s* @st_pattern_instance, %struct.gc_state_s* %3) #5
  %4 = load void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)** getelementptr inbounds (%struct.gs_memory_struct_type_s, %struct.gs_memory_struct_type_s* @st_pattern1_template, i32 0, i32 5), align 8, !tbaa !274
  %5 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %6 = bitcast i8* %5 to %struct.gs_pattern1_instance_s*
  %templat = getelementptr inbounds %struct.gs_pattern1_instance_s, %struct.gs_pattern1_instance_s* %6, i32 0, i32 4
  %7 = bitcast %struct.gs_pattern1_template_s* %templat to i8*
  %8 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  call void %4(i8* %7, i32 104, %struct.gs_memory_struct_type_s* @st_pattern1_template, %struct.gc_state_s* %8) #5
  ret void
}

declare i32 @gx_path_translate(%struct.gx_path_s*, i32, i32) #2

; Function Attrs: nounwind uwtable
define internal i32 @clamp_pattern_bbox(%struct.gs_pattern1_instance_s* %pinst, %struct.gs_rect_s* %pbbox, i32 %width, i32 %height, %struct.gs_matrix_s* %pmat) #0 {
entry:
  %retval = alloca i32, align 4
  %pinst.addr = alloca %struct.gs_pattern1_instance_s*, align 8
  %pbbox.addr = alloca %struct.gs_rect_s*, align 8
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %pmat.addr = alloca %struct.gs_matrix_s*, align 8
  %xstep = alloca double, align 8
  %ystep = alloca double, align 8
  %xmin = alloca double, align 8
  %xmax = alloca double, align 8
  %ymin = alloca double, align 8
  %ymax = alloca double, align 8
  %ixpat = alloca i32, align 4
  %iypat = alloca i32, align 4
  %iystart = alloca i32, align 4
  %xpat = alloca double, align 8
  %ypat = alloca double, align 8
  %xlower = alloca double, align 8
  %xupper = alloca double, align 8
  %ylower = alloca double, align 8
  %yupper = alloca double, align 8
  %xdev = alloca double, align 8
  %ydev = alloca double, align 8
  %dev_page = alloca %struct.gs_rect_s, align 8
  %pat_page = alloca %struct.gs_rect_s, align 8
  %dev_pat_origin = alloca %struct.gs_point_s, align 8
  %dev_step = alloca %struct.gs_point_s, align 8
  %code = alloca i32, align 4
  %xepsilon = alloca double, align 8
  %yepsilon = alloca double, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_pattern1_instance_s* %pinst, %struct.gs_pattern1_instance_s** %pinst.addr, align 8, !tbaa !1
  store %struct.gs_rect_s* %pbbox, %struct.gs_rect_s** %pbbox.addr, align 8, !tbaa !1
  store i32 %width, i32* %width.addr, align 4, !tbaa !42
  store i32 %height, i32* %height.addr, align 4, !tbaa !42
  store %struct.gs_matrix_s* %pmat, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %0 = bitcast double* %xstep to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_pattern1_instance_s*, %struct.gs_pattern1_instance_s** %pinst.addr, align 8, !tbaa !1
  %templat = getelementptr inbounds %struct.gs_pattern1_instance_s, %struct.gs_pattern1_instance_s* %1, i32 0, i32 4
  %XStep = getelementptr inbounds %struct.gs_pattern1_template_s, %struct.gs_pattern1_template_s* %templat, i32 0, i32 8
  %2 = load float, float* %XStep, align 4, !tbaa !60
  %conv = fpext float %2 to double
  store double %conv, double* %xstep, align 8, !tbaa !54
  %3 = bitcast double* %ystep to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gs_pattern1_instance_s*, %struct.gs_pattern1_instance_s** %pinst.addr, align 8, !tbaa !1
  %templat1 = getelementptr inbounds %struct.gs_pattern1_instance_s, %struct.gs_pattern1_instance_s* %4, i32 0, i32 4
  %YStep = getelementptr inbounds %struct.gs_pattern1_template_s, %struct.gs_pattern1_template_s* %templat1, i32 0, i32 9
  %5 = load float, float* %YStep, align 4, !tbaa !61
  %conv2 = fpext float %5 to double
  store double %conv2, double* %ystep, align 8, !tbaa !54
  %6 = bitcast double* %xmin to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = load %struct.gs_rect_s*, %struct.gs_rect_s** %pbbox.addr, align 8, !tbaa !1
  %q = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %7, i32 0, i32 1
  %x = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q, i32 0, i32 0
  %8 = load double, double* %x, align 8, !tbaa !65
  store double %8, double* %xmin, align 8, !tbaa !54
  %9 = bitcast double* %xmax to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = load %struct.gs_rect_s*, %struct.gs_rect_s** %pbbox.addr, align 8, !tbaa !1
  %p = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %10, i32 0, i32 0
  %x3 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p, i32 0, i32 0
  %11 = load double, double* %x3, align 8, !tbaa !66
  store double %11, double* %xmax, align 8, !tbaa !54
  %12 = bitcast double* %ymin to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  %13 = load %struct.gs_rect_s*, %struct.gs_rect_s** %pbbox.addr, align 8, !tbaa !1
  %q4 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %13, i32 0, i32 1
  %y = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q4, i32 0, i32 1
  %14 = load double, double* %y, align 8, !tbaa !67
  store double %14, double* %ymin, align 8, !tbaa !54
  %15 = bitcast double* %ymax to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15) #1
  %16 = load %struct.gs_rect_s*, %struct.gs_rect_s** %pbbox.addr, align 8, !tbaa !1
  %p5 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %16, i32 0, i32 0
  %y6 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p5, i32 0, i32 1
  %17 = load double, double* %y6, align 8, !tbaa !68
  store double %17, double* %ymax, align 8, !tbaa !54
  %18 = bitcast i32* %ixpat to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #1
  %19 = bitcast i32* %iypat to i8*
  call void @llvm.lifetime.start(i64 4, i8* %19) #1
  %20 = bitcast i32* %iystart to i8*
  call void @llvm.lifetime.start(i64 4, i8* %20) #1
  %21 = bitcast double* %xpat to i8*
  call void @llvm.lifetime.start(i64 8, i8* %21) #1
  %22 = bitcast double* %ypat to i8*
  call void @llvm.lifetime.start(i64 8, i8* %22) #1
  %23 = bitcast double* %xlower to i8*
  call void @llvm.lifetime.start(i64 8, i8* %23) #1
  %24 = bitcast double* %xupper to i8*
  call void @llvm.lifetime.start(i64 8, i8* %24) #1
  %25 = bitcast double* %ylower to i8*
  call void @llvm.lifetime.start(i64 8, i8* %25) #1
  %26 = bitcast double* %yupper to i8*
  call void @llvm.lifetime.start(i64 8, i8* %26) #1
  %27 = bitcast double* %xdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %27) #1
  %28 = bitcast double* %ydev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %28) #1
  %29 = bitcast %struct.gs_rect_s* %dev_page to i8*
  call void @llvm.lifetime.start(i64 32, i8* %29) #1
  %30 = bitcast %struct.gs_rect_s* %pat_page to i8*
  call void @llvm.lifetime.start(i64 32, i8* %30) #1
  %31 = bitcast %struct.gs_point_s* %dev_pat_origin to i8*
  call void @llvm.lifetime.start(i64 16, i8* %31) #1
  %32 = bitcast %struct.gs_point_s* %dev_step to i8*
  call void @llvm.lifetime.start(i64 16, i8* %32) #1
  %33 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %33) #1
  %34 = bitcast double* %xepsilon to i8*
  call void @llvm.lifetime.start(i64 8, i8* %34) #1
  %35 = load i32, i32* %width.addr, align 4, !tbaa !42
  %conv7 = sitofp i32 %35 to float
  %mul = fmul float 0x3E80000000000000, %conv7
  %conv8 = fpext float %mul to double
  store double %conv8, double* %xepsilon, align 8, !tbaa !54
  %36 = bitcast double* %yepsilon to i8*
  call void @llvm.lifetime.start(i64 8, i8* %36) #1
  %37 = load i32, i32* %height.addr, align 4, !tbaa !42
  %conv9 = sitofp i32 %37 to float
  %mul10 = fmul float 0x3E80000000000000, %conv9
  %conv11 = fpext float %mul10 to double
  store double %conv11, double* %yepsilon, align 8, !tbaa !54
  %38 = load double, double* %xstep, align 8, !tbaa !54
  %cmp = fcmp olt double %38, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %39 = load double, double* %xstep, align 8, !tbaa !54
  %mul13 = fmul double %39, -1.000000e+00
  store double %mul13, double* %xstep, align 8, !tbaa !54
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %40 = load double, double* %ystep, align 8, !tbaa !54
  %cmp14 = fcmp olt double %40, 0.000000e+00
  br i1 %cmp14, label %if.then.16, label %if.end.18

if.then.16:                                       ; preds = %if.end
  %41 = load double, double* %ystep, align 8, !tbaa !54
  %mul17 = fmul double %41, -1.000000e+00
  store double %mul17, double* %ystep, align 8, !tbaa !54
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.16, %if.end
  %p19 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %dev_page, i32 0, i32 0
  %y20 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p19, i32 0, i32 1
  store double 0.000000e+00, double* %y20, align 8, !tbaa !68
  %p21 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %dev_page, i32 0, i32 0
  %x22 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p21, i32 0, i32 0
  store double 0.000000e+00, double* %x22, align 8, !tbaa !66
  %42 = load i32, i32* %width.addr, align 4, !tbaa !42
  %conv23 = sitofp i32 %42 to double
  %q24 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %dev_page, i32 0, i32 1
  %x25 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q24, i32 0, i32 0
  store double %conv23, double* %x25, align 8, !tbaa !65
  %43 = load i32, i32* %height.addr, align 4, !tbaa !42
  %conv26 = sitofp i32 %43 to double
  %q27 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %dev_page, i32 0, i32 1
  %y28 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q27, i32 0, i32 1
  store double %conv26, double* %y28, align 8, !tbaa !67
  %44 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %call = call i32 @gs_bbox_transform_inverse(%struct.gs_rect_s* %dev_page, %struct.gs_matrix_s* %44, %struct.gs_rect_s* %pat_page) #5
  store i32 %call, i32* %code, align 4, !tbaa !42
  %45 = load i32, i32* %code, align 4, !tbaa !42
  %cmp29 = icmp slt i32 %45, 0
  br i1 %cmp29, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %if.end.18
  %46 = load i32, i32* %code, align 4, !tbaa !42
  store i32 %46, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.32:                                        ; preds = %if.end.18
  %47 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %call33 = call i32 @gs_point_transform(double 0.000000e+00, double 0.000000e+00, %struct.gs_matrix_s* %47, %struct.gs_point_s* %dev_pat_origin) #5
  %p34 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %pat_page, i32 0, i32 0
  %x35 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p34, i32 0, i32 0
  %48 = load double, double* %x35, align 8, !tbaa !66
  %49 = load %struct.gs_pattern1_instance_s*, %struct.gs_pattern1_instance_s** %pinst.addr, align 8, !tbaa !1
  %templat36 = getelementptr inbounds %struct.gs_pattern1_instance_s, %struct.gs_pattern1_instance_s* %49, i32 0, i32 4
  %BBox = getelementptr inbounds %struct.gs_pattern1_template_s, %struct.gs_pattern1_template_s* %templat36, i32 0, i32 7
  %q37 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %BBox, i32 0, i32 1
  %x38 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q37, i32 0, i32 0
  %50 = load double, double* %x38, align 8, !tbaa !56
  %sub = fsub double %48, %50
  %51 = load double, double* %xstep, align 8, !tbaa !54
  %div = fdiv double %sub, %51
  %call39 = call double @floor(double %div) #6
  %conv40 = fptosi double %call39 to i32
  store i32 %conv40, i32* %ixpat, align 4, !tbaa !42
  %p41 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %pat_page, i32 0, i32 0
  %y42 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p41, i32 0, i32 1
  %52 = load double, double* %y42, align 8, !tbaa !68
  %53 = load %struct.gs_pattern1_instance_s*, %struct.gs_pattern1_instance_s** %pinst.addr, align 8, !tbaa !1
  %templat43 = getelementptr inbounds %struct.gs_pattern1_instance_s, %struct.gs_pattern1_instance_s* %53, i32 0, i32 4
  %BBox44 = getelementptr inbounds %struct.gs_pattern1_template_s, %struct.gs_pattern1_template_s* %templat43, i32 0, i32 7
  %q45 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %BBox44, i32 0, i32 1
  %y46 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q45, i32 0, i32 1
  %54 = load double, double* %y46, align 8, !tbaa !58
  %sub47 = fsub double %52, %54
  %55 = load double, double* %ystep, align 8, !tbaa !54
  %div48 = fdiv double %sub47, %55
  %call49 = call double @floor(double %div48) #6
  %conv50 = fptosi double %call49 to i32
  store i32 %conv50, i32* %iystart, align 4, !tbaa !42
  br label %for.cond

for.cond:                                         ; preds = %for.inc.158, %if.end.32
  %56 = load i32, i32* %ixpat, align 4, !tbaa !42
  %conv51 = sitofp i32 %56 to double
  %57 = load double, double* %xstep, align 8, !tbaa !54
  %mul52 = fmul double %conv51, %57
  store double %mul52, double* %xpat, align 8, !tbaa !54
  %58 = load i32, i32* %iystart, align 4, !tbaa !42
  store i32 %58, i32* %iypat, align 4, !tbaa !42
  br label %for.cond.53

for.cond.53:                                      ; preds = %for.inc, %for.cond
  %59 = load i32, i32* %iypat, align 4, !tbaa !42
  %conv54 = sitofp i32 %59 to double
  %60 = load double, double* %ystep, align 8, !tbaa !54
  %mul55 = fmul double %conv54, %60
  store double %mul55, double* %ypat, align 8, !tbaa !54
  %61 = load double, double* %xpat, align 8, !tbaa !54
  %62 = load double, double* %ypat, align 8, !tbaa !54
  %63 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %call56 = call i32 @gs_point_transform(double %61, double %62, %struct.gs_matrix_s* %63, %struct.gs_point_s* %dev_step) #5
  %x57 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %dev_step, i32 0, i32 0
  %64 = load double, double* %x57, align 8, !tbaa !275
  %x58 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %dev_pat_origin, i32 0, i32 0
  %65 = load double, double* %x58, align 8, !tbaa !275
  %sub59 = fsub double %64, %65
  store double %sub59, double* %xdev, align 8, !tbaa !54
  %y60 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %dev_step, i32 0, i32 1
  %66 = load double, double* %y60, align 8, !tbaa !276
  %y61 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %dev_pat_origin, i32 0, i32 1
  %67 = load double, double* %y61, align 8, !tbaa !276
  %sub62 = fsub double %66, %67
  store double %sub62, double* %ydev, align 8, !tbaa !54
  %68 = load double, double* %xdev, align 8, !tbaa !54
  %69 = load %struct.gs_rect_s*, %struct.gs_rect_s** %pbbox.addr, align 8, !tbaa !1
  %p63 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %69, i32 0, i32 0
  %x64 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p63, i32 0, i32 0
  %70 = load double, double* %x64, align 8, !tbaa !66
  %add = fadd double %68, %70
  %cmp65 = fcmp ogt double %add, 0.000000e+00
  br i1 %cmp65, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.cond.53
  %71 = load %struct.gs_rect_s*, %struct.gs_rect_s** %pbbox.addr, align 8, !tbaa !1
  %p67 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %71, i32 0, i32 0
  %x68 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p67, i32 0, i32 0
  %72 = load double, double* %x68, align 8, !tbaa !66
  br label %cond.end

cond.false:                                       ; preds = %for.cond.53
  %73 = load double, double* %xdev, align 8, !tbaa !54
  %sub69 = fsub double -0.000000e+00, %73
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %72, %cond.true ], [ %sub69, %cond.false ]
  store double %cond, double* %xlower, align 8, !tbaa !54
  %74 = load double, double* %xdev, align 8, !tbaa !54
  %75 = load %struct.gs_rect_s*, %struct.gs_rect_s** %pbbox.addr, align 8, !tbaa !1
  %q70 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %75, i32 0, i32 1
  %x71 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q70, i32 0, i32 0
  %76 = load double, double* %x71, align 8, !tbaa !65
  %add72 = fadd double %74, %76
  %77 = load i32, i32* %width.addr, align 4, !tbaa !42
  %conv73 = sitofp i32 %77 to double
  %cmp74 = fcmp olt double %add72, %conv73
  br i1 %cmp74, label %cond.true.76, label %cond.false.79

cond.true.76:                                     ; preds = %cond.end
  %78 = load %struct.gs_rect_s*, %struct.gs_rect_s** %pbbox.addr, align 8, !tbaa !1
  %q77 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %78, i32 0, i32 1
  %x78 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q77, i32 0, i32 0
  %79 = load double, double* %x78, align 8, !tbaa !65
  br label %cond.end.83

cond.false.79:                                    ; preds = %cond.end
  %80 = load double, double* %xdev, align 8, !tbaa !54
  %sub80 = fsub double -0.000000e+00, %80
  %81 = load i32, i32* %width.addr, align 4, !tbaa !42
  %conv81 = sitofp i32 %81 to double
  %add82 = fadd double %sub80, %conv81
  br label %cond.end.83

cond.end.83:                                      ; preds = %cond.false.79, %cond.true.76
  %cond84 = phi double [ %79, %cond.true.76 ], [ %add82, %cond.false.79 ]
  store double %cond84, double* %xupper, align 8, !tbaa !54
  %82 = load double, double* %ydev, align 8, !tbaa !54
  %83 = load %struct.gs_rect_s*, %struct.gs_rect_s** %pbbox.addr, align 8, !tbaa !1
  %p85 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %83, i32 0, i32 0
  %y86 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p85, i32 0, i32 1
  %84 = load double, double* %y86, align 8, !tbaa !68
  %add87 = fadd double %82, %84
  %cmp88 = fcmp ogt double %add87, 0.000000e+00
  br i1 %cmp88, label %cond.true.90, label %cond.false.93

cond.true.90:                                     ; preds = %cond.end.83
  %85 = load %struct.gs_rect_s*, %struct.gs_rect_s** %pbbox.addr, align 8, !tbaa !1
  %p91 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %85, i32 0, i32 0
  %y92 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p91, i32 0, i32 1
  %86 = load double, double* %y92, align 8, !tbaa !68
  br label %cond.end.95

cond.false.93:                                    ; preds = %cond.end.83
  %87 = load double, double* %ydev, align 8, !tbaa !54
  %sub94 = fsub double -0.000000e+00, %87
  br label %cond.end.95

cond.end.95:                                      ; preds = %cond.false.93, %cond.true.90
  %cond96 = phi double [ %86, %cond.true.90 ], [ %sub94, %cond.false.93 ]
  store double %cond96, double* %ylower, align 8, !tbaa !54
  %88 = load double, double* %ydev, align 8, !tbaa !54
  %89 = load %struct.gs_rect_s*, %struct.gs_rect_s** %pbbox.addr, align 8, !tbaa !1
  %q97 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %89, i32 0, i32 1
  %y98 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q97, i32 0, i32 1
  %90 = load double, double* %y98, align 8, !tbaa !67
  %add99 = fadd double %88, %90
  %91 = load i32, i32* %height.addr, align 4, !tbaa !42
  %conv100 = sitofp i32 %91 to double
  %cmp101 = fcmp olt double %add99, %conv100
  br i1 %cmp101, label %cond.true.103, label %cond.false.106

cond.true.103:                                    ; preds = %cond.end.95
  %92 = load %struct.gs_rect_s*, %struct.gs_rect_s** %pbbox.addr, align 8, !tbaa !1
  %q104 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %92, i32 0, i32 1
  %y105 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q104, i32 0, i32 1
  %93 = load double, double* %y105, align 8, !tbaa !67
  br label %cond.end.110

cond.false.106:                                   ; preds = %cond.end.95
  %94 = load double, double* %ydev, align 8, !tbaa !54
  %sub107 = fsub double -0.000000e+00, %94
  %95 = load i32, i32* %height.addr, align 4, !tbaa !42
  %conv108 = sitofp i32 %95 to double
  %add109 = fadd double %sub107, %conv108
  br label %cond.end.110

cond.end.110:                                     ; preds = %cond.false.106, %cond.true.103
  %cond111 = phi double [ %93, %cond.true.103 ], [ %add109, %cond.false.106 ]
  store double %cond111, double* %yupper, align 8, !tbaa !54
  %96 = load double, double* %xlower, align 8, !tbaa !54
  %97 = load double, double* %xepsilon, align 8, !tbaa !54
  %add112 = fadd double %96, %97
  %98 = load double, double* %xupper, align 8, !tbaa !54
  %cmp113 = fcmp olt double %add112, %98
  br i1 %cmp113, label %land.lhs.true, label %if.end.135

land.lhs.true:                                    ; preds = %cond.end.110
  %99 = load double, double* %ylower, align 8, !tbaa !54
  %100 = load double, double* %yepsilon, align 8, !tbaa !54
  %add115 = fadd double %99, %100
  %101 = load double, double* %yupper, align 8, !tbaa !54
  %cmp116 = fcmp olt double %add115, %101
  br i1 %cmp116, label %if.then.118, label %if.end.135

if.then.118:                                      ; preds = %land.lhs.true
  %102 = load double, double* %xlower, align 8, !tbaa !54
  %103 = load double, double* %xmin, align 8, !tbaa !54
  %cmp119 = fcmp olt double %102, %103
  br i1 %cmp119, label %if.then.121, label %if.end.122

if.then.121:                                      ; preds = %if.then.118
  %104 = load double, double* %xlower, align 8, !tbaa !54
  store double %104, double* %xmin, align 8, !tbaa !54
  br label %if.end.122

if.end.122:                                       ; preds = %if.then.121, %if.then.118
  %105 = load double, double* %xupper, align 8, !tbaa !54
  %106 = load double, double* %xmax, align 8, !tbaa !54
  %cmp123 = fcmp ogt double %105, %106
  br i1 %cmp123, label %if.then.125, label %if.end.126

if.then.125:                                      ; preds = %if.end.122
  %107 = load double, double* %xupper, align 8, !tbaa !54
  store double %107, double* %xmax, align 8, !tbaa !54
  br label %if.end.126

if.end.126:                                       ; preds = %if.then.125, %if.end.122
  %108 = load double, double* %ylower, align 8, !tbaa !54
  %109 = load double, double* %ymin, align 8, !tbaa !54
  %cmp127 = fcmp olt double %108, %109
  br i1 %cmp127, label %if.then.129, label %if.end.130

if.then.129:                                      ; preds = %if.end.126
  %110 = load double, double* %ylower, align 8, !tbaa !54
  store double %110, double* %ymin, align 8, !tbaa !54
  br label %if.end.130

if.end.130:                                       ; preds = %if.then.129, %if.end.126
  %111 = load double, double* %yupper, align 8, !tbaa !54
  %112 = load double, double* %ymax, align 8, !tbaa !54
  %cmp131 = fcmp ogt double %111, %112
  br i1 %cmp131, label %if.then.133, label %if.end.134

if.then.133:                                      ; preds = %if.end.130
  %113 = load double, double* %yupper, align 8, !tbaa !54
  store double %113, double* %ymax, align 8, !tbaa !54
  br label %if.end.134

if.end.134:                                       ; preds = %if.then.133, %if.end.130
  br label %if.end.135

if.end.135:                                       ; preds = %if.end.134, %land.lhs.true, %cond.end.110
  %114 = load double, double* %ypat, align 8, !tbaa !54
  %q136 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %pat_page, i32 0, i32 1
  %y137 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q136, i32 0, i32 1
  %115 = load double, double* %y137, align 8, !tbaa !67
  %116 = load %struct.gs_pattern1_instance_s*, %struct.gs_pattern1_instance_s** %pinst.addr, align 8, !tbaa !1
  %templat138 = getelementptr inbounds %struct.gs_pattern1_instance_s, %struct.gs_pattern1_instance_s* %116, i32 0, i32 4
  %BBox139 = getelementptr inbounds %struct.gs_pattern1_template_s, %struct.gs_pattern1_template_s* %templat138, i32 0, i32 7
  %p140 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %BBox139, i32 0, i32 0
  %y141 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p140, i32 0, i32 1
  %117 = load double, double* %y141, align 8, !tbaa !59
  %sub142 = fsub double %115, %117
  %cmp143 = fcmp ogt double %114, %sub142
  br i1 %cmp143, label %if.then.145, label %if.end.146

if.then.145:                                      ; preds = %if.end.135
  br label %for.end

if.end.146:                                       ; preds = %if.end.135
  br label %for.inc

for.inc:                                          ; preds = %if.end.146
  %118 = load i32, i32* %iypat, align 4, !tbaa !42
  %inc = add nsw i32 %118, 1
  store i32 %inc, i32* %iypat, align 4, !tbaa !42
  br label %for.cond.53

for.end:                                          ; preds = %if.then.145
  %119 = load double, double* %xpat, align 8, !tbaa !54
  %q147 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %pat_page, i32 0, i32 1
  %x148 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q147, i32 0, i32 0
  %120 = load double, double* %x148, align 8, !tbaa !65
  %121 = load %struct.gs_pattern1_instance_s*, %struct.gs_pattern1_instance_s** %pinst.addr, align 8, !tbaa !1
  %templat149 = getelementptr inbounds %struct.gs_pattern1_instance_s, %struct.gs_pattern1_instance_s* %121, i32 0, i32 4
  %BBox150 = getelementptr inbounds %struct.gs_pattern1_template_s, %struct.gs_pattern1_template_s* %templat149, i32 0, i32 7
  %p151 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %BBox150, i32 0, i32 0
  %x152 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p151, i32 0, i32 0
  %122 = load double, double* %x152, align 8, !tbaa !57
  %sub153 = fsub double %120, %122
  %cmp154 = fcmp ogt double %119, %sub153
  br i1 %cmp154, label %if.then.156, label %if.end.157

if.then.156:                                      ; preds = %for.end
  br label %for.end.160

if.end.157:                                       ; preds = %for.end
  br label %for.inc.158

for.inc.158:                                      ; preds = %if.end.157
  %123 = load i32, i32* %ixpat, align 4, !tbaa !42
  %inc159 = add nsw i32 %123, 1
  store i32 %inc159, i32* %ixpat, align 4, !tbaa !42
  br label %for.cond

for.end.160:                                      ; preds = %if.then.156
  %124 = load double, double* %xmin, align 8, !tbaa !54
  %125 = load double, double* %xmax, align 8, !tbaa !54
  %cmp161 = fcmp olt double %124, %125
  br i1 %cmp161, label %land.lhs.true.163, label %if.else

land.lhs.true.163:                                ; preds = %for.end.160
  %126 = load double, double* %ymin, align 8, !tbaa !54
  %127 = load double, double* %ymax, align 8, !tbaa !54
  %cmp164 = fcmp olt double %126, %127
  br i1 %cmp164, label %if.then.166, label %if.else

if.then.166:                                      ; preds = %land.lhs.true.163
  %128 = load double, double* %xmin, align 8, !tbaa !54
  %129 = load %struct.gs_rect_s*, %struct.gs_rect_s** %pbbox.addr, align 8, !tbaa !1
  %p167 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %129, i32 0, i32 0
  %x168 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p167, i32 0, i32 0
  store double %128, double* %x168, align 8, !tbaa !66
  %130 = load double, double* %xmax, align 8, !tbaa !54
  %131 = load %struct.gs_rect_s*, %struct.gs_rect_s** %pbbox.addr, align 8, !tbaa !1
  %q169 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %131, i32 0, i32 1
  %x170 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q169, i32 0, i32 0
  store double %130, double* %x170, align 8, !tbaa !65
  %132 = load double, double* %ymin, align 8, !tbaa !54
  %133 = load %struct.gs_rect_s*, %struct.gs_rect_s** %pbbox.addr, align 8, !tbaa !1
  %p171 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %133, i32 0, i32 0
  %y172 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p171, i32 0, i32 1
  store double %132, double* %y172, align 8, !tbaa !68
  %134 = load double, double* %ymax, align 8, !tbaa !54
  %135 = load %struct.gs_rect_s*, %struct.gs_rect_s** %pbbox.addr, align 8, !tbaa !1
  %q173 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %135, i32 0, i32 1
  %y174 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q173, i32 0, i32 1
  store double %134, double* %y174, align 8, !tbaa !67
  br label %if.end.183

if.else:                                          ; preds = %land.lhs.true.163, %for.end.160
  %136 = load %struct.gs_rect_s*, %struct.gs_rect_s** %pbbox.addr, align 8, !tbaa !1
  %p175 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %136, i32 0, i32 0
  %y176 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p175, i32 0, i32 1
  store double 0.000000e+00, double* %y176, align 8, !tbaa !68
  %137 = load %struct.gs_rect_s*, %struct.gs_rect_s** %pbbox.addr, align 8, !tbaa !1
  %p177 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %137, i32 0, i32 0
  %x178 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p177, i32 0, i32 0
  store double 0.000000e+00, double* %x178, align 8, !tbaa !66
  %138 = load %struct.gs_rect_s*, %struct.gs_rect_s** %pbbox.addr, align 8, !tbaa !1
  %q179 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %138, i32 0, i32 1
  %y180 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q179, i32 0, i32 1
  store double 1.000000e+00, double* %y180, align 8, !tbaa !67
  %139 = load %struct.gs_rect_s*, %struct.gs_rect_s** %pbbox.addr, align 8, !tbaa !1
  %q181 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %139, i32 0, i32 1
  %x182 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q181, i32 0, i32 0
  store double 1.000000e+00, double* %x182, align 8, !tbaa !65
  br label %if.end.183

if.end.183:                                       ; preds = %if.else, %if.then.166
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.183, %if.then.31
  %140 = bitcast double* %yepsilon to i8*
  call void @llvm.lifetime.end(i64 8, i8* %140) #1
  %141 = bitcast double* %xepsilon to i8*
  call void @llvm.lifetime.end(i64 8, i8* %141) #1
  %142 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %142) #1
  %143 = bitcast %struct.gs_point_s* %dev_step to i8*
  call void @llvm.lifetime.end(i64 16, i8* %143) #1
  %144 = bitcast %struct.gs_point_s* %dev_pat_origin to i8*
  call void @llvm.lifetime.end(i64 16, i8* %144) #1
  %145 = bitcast %struct.gs_rect_s* %pat_page to i8*
  call void @llvm.lifetime.end(i64 32, i8* %145) #1
  %146 = bitcast %struct.gs_rect_s* %dev_page to i8*
  call void @llvm.lifetime.end(i64 32, i8* %146) #1
  %147 = bitcast double* %ydev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %147) #1
  %148 = bitcast double* %xdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %148) #1
  %149 = bitcast double* %yupper to i8*
  call void @llvm.lifetime.end(i64 8, i8* %149) #1
  %150 = bitcast double* %ylower to i8*
  call void @llvm.lifetime.end(i64 8, i8* %150) #1
  %151 = bitcast double* %xupper to i8*
  call void @llvm.lifetime.end(i64 8, i8* %151) #1
  %152 = bitcast double* %xlower to i8*
  call void @llvm.lifetime.end(i64 8, i8* %152) #1
  %153 = bitcast double* %ypat to i8*
  call void @llvm.lifetime.end(i64 8, i8* %153) #1
  %154 = bitcast double* %xpat to i8*
  call void @llvm.lifetime.end(i64 8, i8* %154) #1
  %155 = bitcast i32* %iystart to i8*
  call void @llvm.lifetime.end(i64 4, i8* %155) #1
  %156 = bitcast i32* %iypat to i8*
  call void @llvm.lifetime.end(i64 4, i8* %156) #1
  %157 = bitcast i32* %ixpat to i8*
  call void @llvm.lifetime.end(i64 4, i8* %157) #1
  %158 = bitcast double* %ymax to i8*
  call void @llvm.lifetime.end(i64 8, i8* %158) #1
  %159 = bitcast double* %ymin to i8*
  call void @llvm.lifetime.end(i64 8, i8* %159) #1
  %160 = bitcast double* %xmax to i8*
  call void @llvm.lifetime.end(i64 8, i8* %160) #1
  %161 = bitcast double* %xmin to i8*
  call void @llvm.lifetime.end(i64 8, i8* %161) #1
  %162 = bitcast double* %ystep to i8*
  call void @llvm.lifetime.end(i64 8, i8* %162) #1
  %163 = bitcast double* %xstep to i8*
  call void @llvm.lifetime.end(i64 8, i8* %163) #1
  %164 = load i32, i32* %retval
  ret i32 %164
}

declare i32 @gs_point_transform(double, double, %struct.gs_matrix_s*, %struct.gs_point_s*) #2

declare %struct.gs_image_enum_s* @gs_image_enum_alloc(%struct.gs_memory_s*, i8*) #2

declare void @gs_image4_t_init(%struct.gs_image4_s*, %struct.gs_color_space_s*) #2

declare void @gs_image_t_init_adjust(%struct.gs_image1_s*, %struct.gs_color_space_s*, i32) #2

declare i32 @gs_image_begin_typed(%struct.gs_image_common_s*, %struct.gs_state_s*, i32, %struct.gx_image_enum_common_s**) #2

declare i32 @gs_image_enum_init(%struct.gs_image_enum_s*, %struct.gx_image_enum_common_s*, %struct.gs_data_image_s*, %struct.gs_state_s*) #2

; Function Attrs: nounwind uwtable
define internal i32 @bitmap_paint(%struct.gs_image_enum_s* %pen, %struct.gs_data_image_s* %pim, %struct.gs_depth_bitmap_s* %pbitmap, %struct.gs_state_s* %pgs) #0 {
entry:
  %pen.addr = alloca %struct.gs_image_enum_s*, align 8
  %pim.addr = alloca %struct.gs_data_image_s*, align 8
  %pbitmap.addr = alloca %struct.gs_depth_bitmap_s*, align 8
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %raster = alloca i32, align 4
  %nbytes = alloca i32, align 4
  %used = alloca i32, align 4
  %dp = alloca i8*, align 8
  %n = alloca i32, align 4
  %code = alloca i32, align 4
  %code1 = alloca i32, align 4
  store %struct.gs_image_enum_s* %pen, %struct.gs_image_enum_s** %pen.addr, align 8, !tbaa !1
  store %struct.gs_data_image_s* %pim, %struct.gs_data_image_s** %pim.addr, align 8, !tbaa !1
  store %struct.gs_depth_bitmap_s* %pbitmap, %struct.gs_depth_bitmap_s** %pbitmap.addr, align 8, !tbaa !1
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %0 = bitcast i32* %raster to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.gs_depth_bitmap_s*, %struct.gs_depth_bitmap_s** %pbitmap.addr, align 8, !tbaa !1
  %raster1 = getelementptr inbounds %struct.gs_depth_bitmap_s, %struct.gs_depth_bitmap_s* %1, i32 0, i32 1
  %2 = load i32, i32* %raster1, align 4, !tbaa !156
  store i32 %2, i32* %raster, align 4, !tbaa !42
  %3 = bitcast i32* %nbytes to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.gs_data_image_s*, %struct.gs_data_image_s** %pim.addr, align 8, !tbaa !1
  %Width = getelementptr inbounds %struct.gs_data_image_s, %struct.gs_data_image_s* %4, i32 0, i32 2
  %5 = load i32, i32* %Width, align 4, !tbaa !277
  %6 = load %struct.gs_depth_bitmap_s*, %struct.gs_depth_bitmap_s** %pbitmap.addr, align 8, !tbaa !1
  %pix_depth = getelementptr inbounds %struct.gs_depth_bitmap_s, %struct.gs_depth_bitmap_s* %6, i32 0, i32 4
  %7 = load i8, i8* %pix_depth, align 1, !tbaa !124
  %conv = zext i8 %7 to i32
  %mul = mul nsw i32 %5, %conv
  %add = add nsw i32 %mul, 7
  %shr = ashr i32 %add, 3
  store i32 %shr, i32* %nbytes, align 4, !tbaa !42
  %8 = bitcast i32* %used to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = bitcast i8** %dp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = load %struct.gs_depth_bitmap_s*, %struct.gs_depth_bitmap_s** %pbitmap.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_depth_bitmap_s, %struct.gs_depth_bitmap_s* %10, i32 0, i32 0
  %11 = load i8*, i8** %data, align 8, !tbaa !154
  store i8* %11, i8** %dp, align 8, !tbaa !1
  %12 = bitcast i32* %n to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  %13 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  store i32 0, i32* %code, align 4, !tbaa !42
  %14 = bitcast i32* %code1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  %15 = load i32, i32* %nbytes, align 4, !tbaa !42
  %16 = load i32, i32* %raster, align 4, !tbaa !42
  %cmp = icmp eq i32 %15, %16
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %17 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %pen.addr, align 8, !tbaa !1
  %18 = load i8*, i8** %dp, align 8, !tbaa !1
  %19 = load i32, i32* %nbytes, align 4, !tbaa !42
  %20 = load %struct.gs_data_image_s*, %struct.gs_data_image_s** %pim.addr, align 8, !tbaa !1
  %Height = getelementptr inbounds %struct.gs_data_image_s, %struct.gs_data_image_s* %20, i32 0, i32 3
  %21 = load i32, i32* %Height, align 4, !tbaa !279
  %mul3 = mul i32 %19, %21
  %call = call i32 @gs_image_next(%struct.gs_image_enum_s* %17, i8* %18, i32 %mul3, i32* %used) #5
  store i32 %call, i32* %code, align 4, !tbaa !42
  br label %if.end

if.else:                                          ; preds = %entry
  %22 = load %struct.gs_data_image_s*, %struct.gs_data_image_s** %pim.addr, align 8, !tbaa !1
  %Height4 = getelementptr inbounds %struct.gs_data_image_s, %struct.gs_data_image_s* %22, i32 0, i32 3
  %23 = load i32, i32* %Height4, align 4, !tbaa !279
  store i32 %23, i32* %n, align 4, !tbaa !42
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %24 = load i32, i32* %n, align 4, !tbaa !42
  %cmp5 = icmp sgt i32 %24, 0
  br i1 %cmp5, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %25 = load i32, i32* %code, align 4, !tbaa !42
  %cmp7 = icmp sge i32 %25, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %26 = phi i1 [ false, %for.cond ], [ %cmp7, %land.rhs ]
  br i1 %26, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %27 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %pen.addr, align 8, !tbaa !1
  %28 = load i8*, i8** %dp, align 8, !tbaa !1
  %29 = load i32, i32* %nbytes, align 4, !tbaa !42
  %call9 = call i32 @gs_image_next(%struct.gs_image_enum_s* %27, i8* %28, i32 %29, i32* %used) #5
  store i32 %call9, i32* %code, align 4, !tbaa !42
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %30 = load i32, i32* %raster, align 4, !tbaa !42
  %31 = load i8*, i8** %dp, align 8, !tbaa !1
  %idx.ext = zext i32 %30 to i64
  %add.ptr = getelementptr inbounds i8, i8* %31, i64 %idx.ext
  store i8* %add.ptr, i8** %dp, align 8, !tbaa !1
  %32 = load i32, i32* %n, align 4, !tbaa !42
  %dec = add nsw i32 %32, -1
  store i32 %dec, i32* %n, align 4, !tbaa !42
  br label %for.cond

for.end:                                          ; preds = %land.end
  br label %if.end

if.end:                                           ; preds = %for.end, %if.then
  %33 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %pen.addr, align 8, !tbaa !1
  %34 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %call10 = call i32 @gs_image_cleanup_and_free_enum(%struct.gs_image_enum_s* %33, %struct.gs_state_s* %34) #5
  store i32 %call10, i32* %code1, align 4, !tbaa !42
  %35 = load i32, i32* %code, align 4, !tbaa !42
  %cmp11 = icmp sge i32 %35, 0
  br i1 %cmp11, label %land.lhs.true, label %if.end.16

land.lhs.true:                                    ; preds = %if.end
  %36 = load i32, i32* %code1, align 4, !tbaa !42
  %cmp13 = icmp slt i32 %36, 0
  br i1 %cmp13, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %land.lhs.true
  %37 = load i32, i32* %code1, align 4, !tbaa !42
  store i32 %37, i32* %code, align 4, !tbaa !42
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.15, %land.lhs.true, %if.end
  %38 = load i32, i32* %code, align 4, !tbaa !42
  %39 = bitcast i32* %code1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %39) #1
  %40 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %40) #1
  %41 = bitcast i32* %n to i8*
  call void @llvm.lifetime.end(i64 4, i8* %41) #1
  %42 = bitcast i8** %dp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %42) #1
  %43 = bitcast i32* %used to i8*
  call void @llvm.lifetime.end(i64 4, i8* %43) #1
  %44 = bitcast i32* %nbytes to i8*
  call void @llvm.lifetime.end(i64 4, i8* %44) #1
  %45 = bitcast i32* %raster to i8*
  call void @llvm.lifetime.end(i64 4, i8* %45) #1
  ret i32 %38
}

declare i32 @gs_image_next(%struct.gs_image_enum_s*, i8*, i32, i32*) #2

declare i32 @gs_image_cleanup_and_free_enum(%struct.gs_image_enum_s*, %struct.gs_state_s*) #2

declare void @gs_image_t_init_mask_adjust(%struct.gs_image1_s*, i32, i32) #2

declare i32 @gs_image_init(%struct.gs_image_enum_s*, %struct.gs_image1_s*, i32, %struct.gs_state_s*) #2

; Function Attrs: nounwind uwtable
define internal %struct.gs_ptr_procs_s* @dc_pattern_enum_ptrs(%struct.gs_memory_s* %mem, i8* %vptr, i32 %size, i32 %index, %struct.enum_ptr_s* %pep, %struct.gs_memory_struct_type_s* %pstype, %struct.gc_state_s* %gcst) #0 {
entry:
  %retval = alloca %struct.gs_ptr_procs_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %vptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %index.addr = alloca i32, align 4
  %pep.addr = alloca %struct.enum_ptr_s*, align 8
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %gcst.addr = alloca %struct.gc_state_s*, align 8
  %cptr = alloca %struct.gx_device_color_s*, align 8
  %cleanup.dest.slot = alloca i32
  %tile = alloca %struct.gx_color_tile_s*, align 8
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i8* %vptr, i8** %vptr.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !42
  store i32 %index, i32* %index.addr, align 4, !tbaa !42
  store %struct.enum_ptr_s* %pep, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  store %struct.gc_state_s* %gcst, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_color_s** %cptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.gx_device_color_s*
  store %struct.gx_device_color_s* %2, %struct.gx_device_color_s** %cptr, align 8, !tbaa !1
  %3 = load i32, i32* %index.addr, align 4, !tbaa !42
  switch i32 %3, label %sw.default [
    i32 0, label %sw.bb
  ]

sw.default:                                       ; preds = %entry
  %4 = load %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)** getelementptr inbounds (%struct.gs_memory_struct_type_s, %struct.gs_memory_struct_type_s* @st_dc_pure_masked, i32 0, i32 4), align 8, !tbaa !270
  %5 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %6 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %7 = load i32, i32* %size.addr, align 4, !tbaa !42
  %8 = load i32, i32* %index.addr, align 4, !tbaa !42
  %sub = sub nsw i32 %8, 1
  %9 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %10 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call = call %struct.gs_ptr_procs_s* %4(%struct.gs_memory_s* %5, i8* %6, i32 %7, i32 %sub, %struct.enum_ptr_s* %9, %struct.gs_memory_struct_type_s* @st_dc_pure_masked, %struct.gc_state_s* %10) #5
  store %struct.gs_ptr_procs_s* %call, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %11 = bitcast %struct.gx_color_tile_s** %tile to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  %12 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %cptr, align 8, !tbaa !1
  %colors = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %12, i32 0, i32 1
  %pattern = bitcast %union._c* %colors to %struct._pat*
  %p_tile = getelementptr inbounds %struct._pat, %struct._pat* %pattern, i32 0, i32 0
  %13 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %p_tile, align 8, !tbaa !93
  store %struct.gx_color_tile_s* %13, %struct.gx_color_tile_s** %tile, align 8, !tbaa !1
  %14 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %tile, align 8, !tbaa !1
  %cmp = icmp eq %struct.gx_color_tile_s* %14, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.bb
  %15 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %tile, align 8, !tbaa !1
  br label %cond.end

cond.false:                                       ; preds = %sw.bb
  %16 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %tile, align 8, !tbaa !1
  %17 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %tile, align 8, !tbaa !1
  %index1 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %17, i32 0, i32 15
  %18 = load i32, i32* %index1, align 4, !tbaa !280
  %idx.ext = zext i32 %18 to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %16, i64 %idx.neg
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.gx_color_tile_s* [ %15, %cond.true ], [ %add.ptr, %cond.false ]
  %19 = bitcast %struct.gx_color_tile_s* %cond to i8*
  %20 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %20, i32 0, i32 0
  store i8* %19, i8** %ptr, align 8, !tbaa !272
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  %21 = bitcast %struct.gx_color_tile_s** %tile to i8*
  call void @llvm.lifetime.end(i64 8, i8* %21) #1
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %sw.default
  %22 = bitcast %struct.gx_device_color_s** %cptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %22) #1
  %23 = load %struct.gs_ptr_procs_s*, %struct.gs_ptr_procs_s** %retval
  ret %struct.gs_ptr_procs_s* %23
}

; Function Attrs: nounwind uwtable
define internal void @dc_pattern_reloc_ptrs(i8* %vptr, i32 %size, %struct.gs_memory_struct_type_s* %pstype, %struct.gc_state_s* %gcst) #0 {
entry:
  %vptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %gcst.addr = alloca %struct.gc_state_s*, align 8
  %cptr = alloca %struct.gx_device_color_s*, align 8
  %tile = alloca %struct.gx_color_tile_s*, align 8
  %index = alloca i32, align 4
  store i8* %vptr, i8** %vptr.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !42
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  store %struct.gc_state_s* %gcst, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_color_s** %cptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.gx_device_color_s*
  store %struct.gx_device_color_s* %2, %struct.gx_device_color_s** %cptr, align 8, !tbaa !1
  %3 = bitcast %struct.gx_color_tile_s** %tile to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %cptr, align 8, !tbaa !1
  %colors = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %4, i32 0, i32 1
  %pattern = bitcast %union._c* %colors to %struct._pat*
  %p_tile = getelementptr inbounds %struct._pat, %struct._pat* %pattern, i32 0, i32 0
  %5 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %p_tile, align 8, !tbaa !93
  store %struct.gx_color_tile_s* %5, %struct.gx_color_tile_s** %tile, align 8, !tbaa !1
  %6 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %tile, align 8, !tbaa !1
  %cmp = icmp ne %struct.gx_color_tile_s* %6, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = bitcast i32* %index to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %tile, align 8, !tbaa !1
  %index1 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %8, i32 0, i32 15
  %9 = load i32, i32* %index1, align 4, !tbaa !280
  store i32 %9, i32* %index, align 4, !tbaa !42
  %10 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %11 = bitcast %struct.gc_state_s* %10 to %struct.gc_procs_common_s**
  %12 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %11, align 8, !tbaa !1
  %reloc_struct_ptr = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %12, i32 0, i32 0
  %13 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr, align 8, !tbaa !281
  %14 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %15 = bitcast i8* %14 to %struct.gx_device_color_s*
  %colors2 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %15, i32 0, i32 1
  %pattern3 = bitcast %union._c* %colors2 to %struct._pat*
  %p_tile4 = getelementptr inbounds %struct._pat, %struct._pat* %pattern3, i32 0, i32 0
  %16 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %p_tile4, align 8, !tbaa !93
  %17 = load i32, i32* %index, align 4, !tbaa !42
  %idx.ext = zext i32 %17 to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %16, i64 %idx.neg
  %18 = bitcast %struct.gx_color_tile_s* %add.ptr to i8*
  %19 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call = call i8* %13(i8* %18, %struct.gc_state_s* %19) #5
  %20 = bitcast i8* %call to %struct.gx_color_tile_s*
  %21 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %22 = bitcast i8* %21 to %struct.gx_device_color_s*
  %colors5 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %22, i32 0, i32 1
  %pattern6 = bitcast %union._c* %colors5 to %struct._pat*
  %p_tile7 = getelementptr inbounds %struct._pat, %struct._pat* %pattern6, i32 0, i32 0
  store %struct.gx_color_tile_s* %20, %struct.gx_color_tile_s** %p_tile7, align 8, !tbaa !93
  %23 = load i32, i32* %index, align 4, !tbaa !42
  %24 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %25 = bitcast i8* %24 to %struct.gx_device_color_s*
  %colors8 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %25, i32 0, i32 1
  %pattern9 = bitcast %union._c* %colors8 to %struct._pat*
  %p_tile10 = getelementptr inbounds %struct._pat, %struct._pat* %pattern9, i32 0, i32 0
  %26 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %p_tile10, align 8, !tbaa !93
  %idx.ext11 = zext i32 %23 to i64
  %add.ptr12 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %26, i64 %idx.ext11
  store %struct.gx_color_tile_s* %add.ptr12, %struct.gx_color_tile_s** %p_tile10, align 8, !tbaa !93
  %27 = bitcast i32* %index to i8*
  call void @llvm.lifetime.end(i64 4, i8* %27) #1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %28 = load void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)** getelementptr inbounds (%struct.gs_memory_struct_type_s, %struct.gs_memory_struct_type_s* @st_dc_pure_masked, i32 0, i32 5), align 8, !tbaa !274
  %29 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %30 = load i32, i32* %size.addr, align 4, !tbaa !42
  %31 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  call void %28(i8* %29, i32 %30, %struct.gs_memory_struct_type_s* @st_dc_pure_masked, %struct.gc_state_s* %31) #5
  %32 = bitcast %struct.gx_color_tile_s** %tile to i8*
  call void @llvm.lifetime.end(i64 8, i8* %32) #1
  %33 = bitcast %struct.gx_device_color_s** %cptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %33) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct.gs_ptr_procs_s* @dc_masked_enum_ptrs(%struct.gs_memory_s* %mem, i8* %vptr, i32 %size, i32 %index, %struct.enum_ptr_s* %pep, %struct.gs_memory_struct_type_s* %pstype, %struct.gc_state_s* %gcst) #0 {
entry:
  %retval = alloca %struct.gs_ptr_procs_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %vptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %index.addr = alloca i32, align 4
  %pep.addr = alloca %struct.enum_ptr_s*, align 8
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %gcst.addr = alloca %struct.gc_state_s*, align 8
  %cptr = alloca %struct.gx_device_color_s*, align 8
  %cleanup.dest.slot = alloca i32
  %mask = alloca %struct.gx_color_tile_s*, align 8
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i8* %vptr, i8** %vptr.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !42
  store i32 %index, i32* %index.addr, align 4, !tbaa !42
  store %struct.enum_ptr_s* %pep, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  store %struct.gc_state_s* %gcst, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_color_s** %cptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.gx_device_color_s*
  store %struct.gx_device_color_s* %2, %struct.gx_device_color_s** %cptr, align 8, !tbaa !1
  %3 = load i32, i32* %index.addr, align 4, !tbaa !42
  switch i32 %3, label %sw.default [
    i32 0, label %sw.bb
  ]

sw.default:                                       ; preds = %entry
  %4 = load %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)** getelementptr inbounds (%struct.gs_memory_struct_type_s, %struct.gs_memory_struct_type_s* @st_client_color, i32 0, i32 4), align 8, !tbaa !270
  %5 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %6 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %7 = bitcast i8* %6 to %struct.gx_device_color_s*
  %ccolor = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %7, i32 0, i32 4
  %8 = bitcast %struct.gs_client_color_s* %ccolor to i8*
  %9 = load i32, i32* %index.addr, align 4, !tbaa !42
  %sub = sub nsw i32 %9, 1
  %10 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %11 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call = call %struct.gs_ptr_procs_s* %4(%struct.gs_memory_s* %5, i8* %8, i32 264, i32 %sub, %struct.enum_ptr_s* %10, %struct.gs_memory_struct_type_s* @st_client_color, %struct.gc_state_s* %11) #5
  store %struct.gs_ptr_procs_s* %call, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %12 = bitcast %struct.gx_color_tile_s** %mask to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  %13 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %cptr, align 8, !tbaa !1
  %mask1 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %13, i32 0, i32 5
  %m_tile = getelementptr inbounds %struct._mask, %struct._mask* %mask1, i32 0, i32 2
  %14 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %m_tile, align 8, !tbaa !189
  store %struct.gx_color_tile_s* %14, %struct.gx_color_tile_s** %mask, align 8, !tbaa !1
  %15 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %mask, align 8, !tbaa !1
  %cmp = icmp eq %struct.gx_color_tile_s* %15, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.bb
  %16 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %mask, align 8, !tbaa !1
  br label %cond.end

cond.false:                                       ; preds = %sw.bb
  %17 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %mask, align 8, !tbaa !1
  %18 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %mask, align 8, !tbaa !1
  %index2 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %18, i32 0, i32 15
  %19 = load i32, i32* %index2, align 4, !tbaa !280
  %idx.ext = zext i32 %19 to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %17, i64 %idx.neg
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.gx_color_tile_s* [ %16, %cond.true ], [ %add.ptr, %cond.false ]
  %20 = bitcast %struct.gx_color_tile_s* %cond to i8*
  %21 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %21, i32 0, i32 0
  store i8* %20, i8** %ptr, align 8, !tbaa !272
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  %22 = bitcast %struct.gx_color_tile_s** %mask to i8*
  call void @llvm.lifetime.end(i64 8, i8* %22) #1
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %sw.default
  %23 = bitcast %struct.gx_device_color_s** %cptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %23) #1
  %24 = load %struct.gs_ptr_procs_s*, %struct.gs_ptr_procs_s** %retval
  ret %struct.gs_ptr_procs_s* %24
}

; Function Attrs: nounwind uwtable
define internal void @dc_masked_reloc_ptrs(i8* %vptr, i32 %size, %struct.gs_memory_struct_type_s* %pstype, %struct.gc_state_s* %gcst) #0 {
entry:
  %vptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %gcst.addr = alloca %struct.gc_state_s*, align 8
  %cptr = alloca %struct.gx_device_color_s*, align 8
  %mask = alloca %struct.gx_color_tile_s*, align 8
  %index = alloca i32, align 4
  store i8* %vptr, i8** %vptr.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !42
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  store %struct.gc_state_s* %gcst, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_color_s** %cptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.gx_device_color_s*
  store %struct.gx_device_color_s* %2, %struct.gx_device_color_s** %cptr, align 8, !tbaa !1
  %3 = bitcast %struct.gx_color_tile_s** %mask to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %cptr, align 8, !tbaa !1
  %mask1 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %4, i32 0, i32 5
  %m_tile = getelementptr inbounds %struct._mask, %struct._mask* %mask1, i32 0, i32 2
  %5 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %m_tile, align 8, !tbaa !189
  store %struct.gx_color_tile_s* %5, %struct.gx_color_tile_s** %mask, align 8, !tbaa !1
  %6 = load void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)** getelementptr inbounds (%struct.gs_memory_struct_type_s, %struct.gs_memory_struct_type_s* @st_client_color, i32 0, i32 5), align 8, !tbaa !274
  %7 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %8 = bitcast i8* %7 to %struct.gx_device_color_s*
  %ccolor = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %8, i32 0, i32 4
  %9 = bitcast %struct.gs_client_color_s* %ccolor to i8*
  %10 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  call void %6(i8* %9, i32 264, %struct.gs_memory_struct_type_s* @st_client_color, %struct.gc_state_s* %10) #5
  %11 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %mask, align 8, !tbaa !1
  %cmp = icmp ne %struct.gx_color_tile_s* %11, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %12 = bitcast i32* %index to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  %13 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %mask, align 8, !tbaa !1
  %index2 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %13, i32 0, i32 15
  %14 = load i32, i32* %index2, align 4, !tbaa !280
  store i32 %14, i32* %index, align 4, !tbaa !42
  %15 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %16 = bitcast %struct.gc_state_s* %15 to %struct.gc_procs_common_s**
  %17 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %16, align 8, !tbaa !1
  %reloc_struct_ptr = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %17, i32 0, i32 0
  %18 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr, align 8, !tbaa !281
  %19 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %20 = bitcast i8* %19 to %struct.gx_device_color_s*
  %mask3 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %20, i32 0, i32 5
  %m_tile4 = getelementptr inbounds %struct._mask, %struct._mask* %mask3, i32 0, i32 2
  %21 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %m_tile4, align 8, !tbaa !189
  %22 = load i32, i32* %index, align 4, !tbaa !42
  %idx.ext = zext i32 %22 to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %21, i64 %idx.neg
  %23 = bitcast %struct.gx_color_tile_s* %add.ptr to i8*
  %24 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call = call i8* %18(i8* %23, %struct.gc_state_s* %24) #5
  %25 = bitcast i8* %call to %struct.gx_color_tile_s*
  %26 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %27 = bitcast i8* %26 to %struct.gx_device_color_s*
  %mask5 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %27, i32 0, i32 5
  %m_tile6 = getelementptr inbounds %struct._mask, %struct._mask* %mask5, i32 0, i32 2
  store %struct.gx_color_tile_s* %25, %struct.gx_color_tile_s** %m_tile6, align 8, !tbaa !189
  %28 = load i32, i32* %index, align 4, !tbaa !42
  %29 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %30 = bitcast i8* %29 to %struct.gx_device_color_s*
  %mask7 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %30, i32 0, i32 5
  %m_tile8 = getelementptr inbounds %struct._mask, %struct._mask* %mask7, i32 0, i32 2
  %31 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %m_tile8, align 8, !tbaa !189
  %idx.ext9 = zext i32 %28 to i64
  %add.ptr10 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %31, i64 %idx.ext9
  store %struct.gx_color_tile_s* %add.ptr10, %struct.gx_color_tile_s** %m_tile8, align 8, !tbaa !189
  %32 = bitcast i32* %index to i8*
  call void @llvm.lifetime.end(i64 4, i8* %32) #1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %33 = bitcast %struct.gx_color_tile_s** %mask to i8*
  call void @llvm.lifetime.end(i64 8, i8* %33) #1
  %34 = bitcast %struct.gx_device_color_s** %cptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %34) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct.gs_ptr_procs_s* @dc_binary_masked_enum_ptrs(%struct.gs_memory_s* %mem, i8* %vptr, i32 %size, i32 %index, %struct.enum_ptr_s* %pep, %struct.gs_memory_struct_type_s* %pstype, %struct.gc_state_s* %gcst) #0 {
entry:
  %retval = alloca %struct.gs_ptr_procs_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %vptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %index.addr = alloca i32, align 4
  %pep.addr = alloca %struct.enum_ptr_s*, align 8
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %gcst.addr = alloca %struct.gc_state_s*, align 8
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i8* %vptr, i8** %vptr.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !42
  store i32 %index, i32* %index.addr, align 4, !tbaa !42
  store %struct.enum_ptr_s* %pep, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  store %struct.gc_state_s* %gcst, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %0 = load i32, i32* %index.addr, align 4, !tbaa !42
  switch i32 %0, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb
  ]

sw.default:                                       ; preds = %entry
  %1 = load %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)** getelementptr inbounds (%struct.gs_memory_struct_type_s, %struct.gs_memory_struct_type_s* @st_dc_ht_binary, i32 0, i32 4), align 8, !tbaa !270
  %2 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %3 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %4 = load i32, i32* %size.addr, align 4, !tbaa !42
  %5 = load i32, i32* %index.addr, align 4, !tbaa !42
  %sub = sub nsw i32 %5, 2
  %6 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %7 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call = call %struct.gs_ptr_procs_s* %1(%struct.gs_memory_s* %2, i8* %3, i32 %4, i32 %sub, %struct.enum_ptr_s* %6, %struct.gs_memory_struct_type_s* @st_dc_ht_binary, %struct.gc_state_s* %7) #5
  store %struct.gs_ptr_procs_s* %call, %struct.gs_ptr_procs_s** %retval
  br label %return

sw.bb:                                            ; preds = %entry, %entry
  %8 = load %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)** getelementptr inbounds (%struct.gs_memory_struct_type_s, %struct.gs_memory_struct_type_s* @st_dc_pure_masked, i32 0, i32 4), align 8, !tbaa !270
  %9 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %10 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %11 = load i32, i32* %size.addr, align 4, !tbaa !42
  %12 = load i32, i32* %index.addr, align 4, !tbaa !42
  %13 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %14 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call1 = call %struct.gs_ptr_procs_s* %8(%struct.gs_memory_s* %9, i8* %10, i32 %11, i32 %12, %struct.enum_ptr_s* %13, %struct.gs_memory_struct_type_s* @st_dc_pure_masked, %struct.gc_state_s* %14) #5
  store %struct.gs_ptr_procs_s* %call1, %struct.gs_ptr_procs_s** %retval
  br label %return

return:                                           ; preds = %sw.bb, %sw.default
  %15 = load %struct.gs_ptr_procs_s*, %struct.gs_ptr_procs_s** %retval
  ret %struct.gs_ptr_procs_s* %15
}

; Function Attrs: nounwind uwtable
define internal void @dc_binary_masked_reloc_ptrs(i8* %vptr, i32 %size, %struct.gs_memory_struct_type_s* %pstype, %struct.gc_state_s* %gcst) #0 {
entry:
  %vptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %gcst.addr = alloca %struct.gc_state_s*, align 8
  store i8* %vptr, i8** %vptr.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !42
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  store %struct.gc_state_s* %gcst, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %0 = load void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)** getelementptr inbounds (%struct.gs_memory_struct_type_s, %struct.gs_memory_struct_type_s* @st_dc_pure_masked, i32 0, i32 5), align 8, !tbaa !274
  %1 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %2 = load i32, i32* %size.addr, align 4, !tbaa !42
  %3 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  call void %0(i8* %1, i32 %2, %struct.gs_memory_struct_type_s* @st_dc_pure_masked, %struct.gc_state_s* %3) #5
  %4 = load void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)** getelementptr inbounds (%struct.gs_memory_struct_type_s, %struct.gs_memory_struct_type_s* @st_dc_ht_binary, i32 0, i32 5), align 8, !tbaa !274
  %5 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %6 = load i32, i32* %size.addr, align 4, !tbaa !42
  %7 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  call void %4(i8* %5, i32 %6, %struct.gs_memory_struct_type_s* @st_dc_ht_binary, %struct.gc_state_s* %7) #5
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct.gs_ptr_procs_s* @dc_colored_masked_enum_ptrs(%struct.gs_memory_s* %mem, i8* %vptr, i32 %size, i32 %index, %struct.enum_ptr_s* %pep, %struct.gs_memory_struct_type_s* %pstype, %struct.gc_state_s* %gcst) #0 {
entry:
  %retval = alloca %struct.gs_ptr_procs_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %vptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %index.addr = alloca i32, align 4
  %pep.addr = alloca %struct.enum_ptr_s*, align 8
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %gcst.addr = alloca %struct.gc_state_s*, align 8
  %cptr = alloca %struct.gx_device_color_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i8* %vptr, i8** %vptr.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !42
  store i32 %index, i32* %index.addr, align 4, !tbaa !42
  store %struct.enum_ptr_s* %pep, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  store %struct.gc_state_s* %gcst, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_color_s** %cptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.gx_device_color_s*
  store %struct.gx_device_color_s* %2, %struct.gx_device_color_s** %cptr, align 8, !tbaa !1
  %3 = load i32, i32* %index.addr, align 4, !tbaa !42
  switch i32 %3, label %sw.default [
    i32 0, label %sw.bb
  ]

sw.default:                                       ; preds = %entry
  %4 = load %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)** getelementptr inbounds (%struct.gs_memory_struct_type_s, %struct.gs_memory_struct_type_s* @st_client_color, i32 0, i32 4), align 8, !tbaa !270
  %5 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %6 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %7 = bitcast i8* %6 to %struct.gx_device_color_s*
  %ccolor = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %7, i32 0, i32 4
  %8 = bitcast %struct.gs_client_color_s* %ccolor to i8*
  %9 = load i32, i32* %index.addr, align 4, !tbaa !42
  %sub = sub nsw i32 %9, 1
  %10 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %11 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call = call %struct.gs_ptr_procs_s* %4(%struct.gs_memory_s* %5, i8* %8, i32 264, i32 %sub, %struct.enum_ptr_s* %10, %struct.gs_memory_struct_type_s* @st_client_color, %struct.gc_state_s* %11) #5
  store %struct.gs_ptr_procs_s* %call, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %12 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %cptr, align 8, !tbaa !1
  %colors = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %12, i32 0, i32 1
  %colored = bitcast %union._c* %colors to %struct._col*
  %c_ht = getelementptr inbounds %struct._col, %struct._col* %colored, i32 0, i32 0
  %13 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %c_ht, align 8, !tbaa !231
  %14 = bitcast %struct.gx_device_halftone_s* %13 to i8*
  %15 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %15, i32 0, i32 0
  store i8* %14, i8** %ptr, align 8, !tbaa !272
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %sw.bb, %sw.default
  %16 = bitcast %struct.gx_device_color_s** %cptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %16) #1
  %17 = load %struct.gs_ptr_procs_s*, %struct.gs_ptr_procs_s** %retval
  ret %struct.gs_ptr_procs_s* %17
}

; Function Attrs: nounwind uwtable
define internal void @dc_colored_masked_reloc_ptrs(i8* %vptr, i32 %size, %struct.gs_memory_struct_type_s* %pstype, %struct.gc_state_s* %gcst) #0 {
entry:
  %vptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %gcst.addr = alloca %struct.gc_state_s*, align 8
  %cptr = alloca %struct.gx_device_color_s*, align 8
  store i8* %vptr, i8** %vptr.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !42
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  store %struct.gc_state_s* %gcst, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_color_s** %cptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.gx_device_color_s*
  store %struct.gx_device_color_s* %2, %struct.gx_device_color_s** %cptr, align 8, !tbaa !1
  %3 = load void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)** getelementptr inbounds (%struct.gs_memory_struct_type_s, %struct.gs_memory_struct_type_s* @st_client_color, i32 0, i32 5), align 8, !tbaa !274
  %4 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %5 = bitcast i8* %4 to %struct.gx_device_color_s*
  %ccolor = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %5, i32 0, i32 4
  %6 = bitcast %struct.gs_client_color_s* %ccolor to i8*
  %7 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  call void %3(i8* %6, i32 264, %struct.gs_memory_struct_type_s* @st_client_color, %struct.gc_state_s* %7) #5
  %8 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %cptr, align 8, !tbaa !1
  %colors = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %8, i32 0, i32 1
  %colored = bitcast %union._c* %colors to %struct._col*
  %c_ht = getelementptr inbounds %struct._col, %struct._col* %colored, i32 0, i32 0
  %9 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %c_ht, align 8, !tbaa !231
  %cmp = icmp ne %struct.gx_device_halftone_s* %9, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %10 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %11 = bitcast %struct.gc_state_s* %10 to %struct.gc_procs_common_s**
  %12 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %11, align 8, !tbaa !1
  %reloc_struct_ptr = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %12, i32 0, i32 0
  %13 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr, align 8, !tbaa !281
  %14 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %15 = bitcast i8* %14 to %struct.gx_device_color_s*
  %colors1 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %15, i32 0, i32 1
  %colored2 = bitcast %union._c* %colors1 to %struct._col*
  %c_ht3 = getelementptr inbounds %struct._col, %struct._col* %colored2, i32 0, i32 0
  %16 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %c_ht3, align 8, !tbaa !231
  %17 = bitcast %struct.gx_device_halftone_s* %16 to i8*
  %18 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call = call i8* %13(i8* %17, %struct.gc_state_s* %18) #5
  %19 = bitcast i8* %call to %struct.gx_device_halftone_s*
  %20 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %21 = bitcast i8* %20 to %struct.gx_device_color_s*
  %colors4 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %21, i32 0, i32 1
  %colored5 = bitcast %union._c* %colors4 to %struct._col*
  %c_ht6 = getelementptr inbounds %struct._col, %struct._col* %colored5, i32 0, i32 0
  store %struct.gx_device_halftone_s* %19, %struct.gx_device_halftone_s** %c_ht6, align 8, !tbaa !231
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %22 = bitcast %struct.gx_device_color_s** %cptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %22) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct.gs_ptr_procs_s* @dc_devn_masked_enum_ptrs(%struct.gs_memory_s* %mem, i8* %vptr, i32 %size, i32 %index, %struct.enum_ptr_s* %pep, %struct.gs_memory_struct_type_s* %pstype, %struct.gc_state_s* %gcst) #0 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %vptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %index.addr = alloca i32, align 4
  %pep.addr = alloca %struct.enum_ptr_s*, align 8
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %gcst.addr = alloca %struct.gc_state_s*, align 8
  %cptr = alloca %struct.gx_device_color_s*, align 8
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i8* %vptr, i8** %vptr.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !42
  store i32 %index, i32* %index.addr, align 4, !tbaa !42
  store %struct.enum_ptr_s* %pep, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  store %struct.gc_state_s* %gcst, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_color_s** %cptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.gx_device_color_s*
  store %struct.gx_device_color_s* %2, %struct.gx_device_color_s** %cptr, align 8, !tbaa !1
  %3 = load i32, i32* %index.addr, align 4, !tbaa !42
  switch i32 %3, label %sw.default [
  ]

sw.default:                                       ; preds = %entry
  %4 = load %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)** getelementptr inbounds (%struct.gs_memory_struct_type_s, %struct.gs_memory_struct_type_s* @st_client_color, i32 0, i32 4), align 8, !tbaa !270
  %5 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %6 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %7 = bitcast i8* %6 to %struct.gx_device_color_s*
  %ccolor = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %7, i32 0, i32 4
  %8 = bitcast %struct.gs_client_color_s* %ccolor to i8*
  %9 = load i32, i32* %index.addr, align 4, !tbaa !42
  %sub = sub nsw i32 %9, 0
  %10 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %11 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call = call %struct.gs_ptr_procs_s* %4(%struct.gs_memory_s* %5, i8* %8, i32 264, i32 %sub, %struct.enum_ptr_s* %10, %struct.gs_memory_struct_type_s* @st_client_color, %struct.gc_state_s* %11) #5
  %12 = bitcast %struct.gx_device_color_s** %cptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %12) #1
  ret %struct.gs_ptr_procs_s* %call
}

; Function Attrs: nounwind uwtable
define internal void @dc_devn_masked_reloc_ptrs(i8* %vptr, i32 %size, %struct.gs_memory_struct_type_s* %pstype, %struct.gc_state_s* %gcst) #0 {
entry:
  %vptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %gcst.addr = alloca %struct.gc_state_s*, align 8
  %cptr = alloca %struct.gx_device_color_s*, align 8
  store i8* %vptr, i8** %vptr.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !42
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  store %struct.gc_state_s* %gcst, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_color_s** %cptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.gx_device_color_s*
  store %struct.gx_device_color_s* %2, %struct.gx_device_color_s** %cptr, align 8, !tbaa !1
  %3 = load void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)** getelementptr inbounds (%struct.gs_memory_struct_type_s, %struct.gs_memory_struct_type_s* @st_client_color, i32 0, i32 5), align 8, !tbaa !274
  %4 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %5 = bitcast i8* %4 to %struct.gx_device_color_s*
  %ccolor = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %5, i32 0, i32 4
  %6 = bitcast %struct.gs_client_color_s* %ccolor to i8*
  %7 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  call void %3(i8* %6, i32 264, %struct.gs_memory_struct_type_s* @st_client_color, %struct.gc_state_s* %7) #5
  %8 = bitcast %struct.gx_device_color_s** %cptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %8) #1
  ret void
}

declare i32 @gx_pattern_load(%struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nobuiltin }
attributes #6 = { nobuiltin nounwind readnone }
attributes #7 = { nobuiltin nounwind }

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
!12 = !{!13, !7, i64 48}
!13 = !{!"gs_pattern1_template_s", !2, i64 0, !7, i64 8, !14, i64 16, !2, i64 32, !7, i64 40, !7, i64 44, !7, i64 48, !15, i64 56, !18, i64 88, !18, i64 92, !2, i64 96}
!14 = !{!"gs_uid_s", !11, i64 0, !2, i64 8}
!15 = !{!"gs_rect_s", !16, i64 0, !16, i64 16}
!16 = !{!"gs_point_s", !17, i64 0, !17, i64 8}
!17 = !{!"double", !3, i64 0}
!18 = !{!"float", !3, i64 0}
!19 = !{!20, !2, i64 1872}
!20 = !{!"gs_state_s", !7, i64 0, !2, i64 8, !2, i64 16, !21, i64 24, !7, i64 128, !24, i64 132, !7, i64 168, !16, i64 176, !16, i64 192, !7, i64 208, !7, i64 212, !25, i64 216, !3, i64 220, !26, i64 224, !26, i64 228, !27, i64 232, !11, i64 240, !7, i64 248, !7, i64 252, !7, i64 256, !2, i64 264, !7, i64 272, !7, i64 276, !7, i64 280, !7, i64 284, !7, i64 288, !7, i64 292, !18, i64 296, !28, i64 300, !7, i64 308, !7, i64 312, !7, i64 316, !18, i64 320, !7, i64 324, !7, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !3, i64 376, !2, i64 392, !2, i64 400, !7, i64 408, !2, i64 416, !2, i64 424, !29, i64 432, !3, i64 496, !2, i64 1008, !2, i64 1016, !30, i64 1024, !2, i64 1304, !2, i64 1312, !2, i64 1320, !2, i64 1328, !30, i64 1336, !2, i64 1616, !22, i64 1624, !7, i64 1648, !22, i64 1652, !7, i64 1676, !2, i64 1680, !2, i64 1688, !2, i64 1696, !2, i64 1704, !11, i64 1712, !11, i64 1720, !2, i64 1728, !7, i64 1736, !3, i64 1744, !2, i64 1792, !2, i64 1800, !24, i64 1808, !7, i64 1844, !3, i64 1848, !3, i64 1852, !2, i64 1856, !7, i64 1864, !2, i64 1872, !2, i64 1880, !31, i64 1888}
!21 = !{!"gx_line_params_s", !18, i64 0, !3, i64 4, !3, i64 8, !3, i64 12, !3, i64 16, !7, i64 20, !18, i64 24, !18, i64 28, !18, i64 32, !7, i64 36, !22, i64 40, !23, i64 64}
!22 = !{!"gs_matrix_s", !18, i64 0, !18, i64 4, !18, i64 8, !18, i64 12, !18, i64 16, !18, i64 20}
!23 = !{!"gx_dash_params_s", !2, i64 0, !7, i64 8, !18, i64 12, !7, i64 16, !18, i64 20, !7, i64 24, !7, i64 28, !18, i64 32}
!24 = !{!"gs_matrix_fixed_s", !18, i64 0, !18, i64 4, !18, i64 8, !18, i64 12, !18, i64 16, !18, i64 20, !7, i64 24, !7, i64 28, !7, i64 32}
!25 = !{!"short", !3, i64 0}
!26 = !{!"gs_transparency_source_s", !18, i64 0}
!27 = !{!"gs_xstate_trans_flags", !7, i64 0, !7, i64 4}
!28 = !{!"gs_fixed_point_s", !7, i64 0, !7, i64 4}
!29 = !{!"gx_transfer_s", !7, i64 0, !2, i64 8, !7, i64 16, !2, i64 24, !7, i64 32, !2, i64 40, !7, i64 48, !2, i64 56}
!30 = !{!"gs_devicen_color_map_s", !7, i64 0, !3, i64 4, !7, i64 8, !7, i64 12, !11, i64 16, !3, i64 24}
!31 = !{!"gs_state_client_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24}
!32 = !{!33, !7, i64 832}
!33 = !{!"gx_device_s", !7, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !7, i64 40, !2, i64 48, !10, i64 56, !7, i64 80, !7, i64 84, !7, i64 88, !34, i64 96, !36, i64 816, !7, i64 832, !7, i64 836, !7, i64 840, !7, i64 844, !7, i64 848, !7, i64 852, !3, i64 856, !3, i64 864, !7, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !11, i64 928, !11, i64 936, !7, i64 944, !7, i64 948, !7, i64 952, !7, i64 956, !7, i64 960, !11, i64 968, !11, i64 976, !37, i64 984, !7, i64 1052, !7, i64 1056, !38, i64 1064, !2, i64 1104, !3, i64 1112, !40, i64 1120, !41, i64 1144}
!34 = !{!"gx_device_color_info_s", !7, i64 0, !7, i64 4, !3, i64 8, !25, i64 12, !3, i64 14, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !35, i64 32, !3, i64 40, !3, i64 44, !3, i64 108, !3, i64 176, !2, i64 688, !3, i64 696, !11, i64 704, !7, i64 712}
!35 = !{!"gx_device_anti_alias_info_s", !7, i64 0, !7, i64 4}
!36 = !{!"gx_device_cached_colors_s", !11, i64 0, !11, i64 8}
!37 = !{!"gx_stroked_gradient_recognizer_s", !7, i64 0, !3, i64 4, !3, i64 36}
!38 = !{!"gdev_space_params_s", !11, i64 0, !11, i64 8, !39, i64 16, !7, i64 32, !3, i64 36}
!39 = !{!"gx_band_params_s", !7, i64 0, !7, i64 4, !11, i64 8}
!40 = !{!"gx_page_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16}
!41 = !{!"gx_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176, !2, i64 184, !2, i64 192, !2, i64 200, !2, i64 208, !2, i64 216, !2, i64 224, !2, i64 232, !2, i64 240, !2, i64 248, !2, i64 256, !2, i64 264, !2, i64 272, !2, i64 280, !2, i64 288, !2, i64 296, !2, i64 304, !2, i64 312, !2, i64 320, !2, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !2, i64 376, !2, i64 384, !2, i64 392, !2, i64 400, !2, i64 408, !2, i64 416, !2, i64 424, !2, i64 432, !2, i64 440, !2, i64 448, !2, i64 456, !2, i64 464, !2, i64 472, !2, i64 480, !2, i64 488, !2, i64 496, !2, i64 504, !2, i64 512, !2, i64 520, !2, i64 528, !2, i64 536, !2, i64 544, !2, i64 552, !2, i64 560, !2, i64 568, !2, i64 576}
!42 = !{!7, !7, i64 0}
!43 = !{!33, !7, i64 836}
!44 = !{!45, !2, i64 0}
!45 = !{!"gs_client_color_s", !2, i64 0, !46, i64 8}
!46 = !{!"gs_paint_color_s", !3, i64 0}
!47 = !{i64 0, i64 8, !48, i64 8, i64 8, !1, i64 16, i64 8, !1, i64 24, i64 8, !1, i64 32, i64 8, !1, i64 40, i64 8, !48}
!48 = !{!11, !11, i64 0}
!49 = !{!50, !2, i64 32}
!50 = !{!"gs_pattern1_instance_s", !10, i64 0, !2, i64 24, !2, i64 32, !11, i64 40, !13, i64 48, !22, i64 152, !15, i64 176, !7, i64 208, !7, i64 212, !7, i64 216, !7, i64 220, !7, i64 224, !51, i64 228, !11, i64 240}
!51 = !{!"gs_int_point_s", !7, i64 0, !7, i64 4}
!52 = !{!13, !7, i64 40}
!53 = !{i64 0, i64 8, !1, i64 8, i64 4, !42, i64 16, i64 8, !48, i64 24, i64 8, !1, i64 32, i64 8, !1, i64 40, i64 4, !42, i64 44, i64 4, !42, i64 48, i64 4, !42, i64 56, i64 8, !54, i64 64, i64 8, !54, i64 72, i64 8, !54, i64 80, i64 8, !54, i64 88, i64 4, !55, i64 92, i64 4, !55, i64 96, i64 8, !1}
!54 = !{!17, !17, i64 0}
!55 = !{!18, !18, i64 0}
!56 = !{!50, !17, i64 120}
!57 = !{!50, !17, i64 104}
!58 = !{!50, !17, i64 128}
!59 = !{!50, !17, i64 112}
!60 = !{!50, !18, i64 136}
!61 = !{!50, !18, i64 140}
!62 = !{!22, !18, i64 4}
!63 = !{!22, !18, i64 8}
!64 = !{!50, !7, i64 212}
!65 = !{!15, !17, i64 16}
!66 = !{!15, !17, i64 0}
!67 = !{!15, !17, i64 24}
!68 = !{!15, !17, i64 8}
!69 = !{!50, !7, i64 228}
!70 = !{!50, !7, i64 232}
!71 = !{!50, !18, i64 152}
!72 = !{!50, !18, i64 164}
!73 = !{!50, !18, i64 156}
!74 = !{!50, !18, i64 160}
!75 = !{!50, !7, i64 92}
!76 = !{!20, !7, i64 300}
!77 = !{!20, !7, i64 304}
!78 = !{!50, !7, i64 208}
!79 = !{!50, !7, i64 220}
!80 = !{!50, !7, i64 224}
!81 = !{!50, !18, i64 168}
!82 = !{!50, !18, i64 172}
!83 = !{!84, !7, i64 0}
!84 = !{!"gs_fixed_rect_s", !28, i64 0, !28, i64 8}
!85 = !{!84, !7, i64 4}
!86 = !{!84, !7, i64 8}
!87 = !{!84, !7, i64 12}
!88 = !{!50, !11, i64 240}
!89 = !{i64 0, i64 8, !48, i64 8, i64 8, !1, i64 16, i64 8, !1, i64 24, i64 8, !1, i64 32, i64 8, !1, i64 40, i64 8, !48, i64 48, i64 8, !1, i64 56, i64 4, !42, i64 64, i64 8, !48, i64 72, i64 8, !1, i64 80, i64 8, !1, i64 88, i64 4, !42, i64 92, i64 4, !42, i64 96, i64 4, !42, i64 104, i64 8, !54, i64 112, i64 8, !54, i64 120, i64 8, !54, i64 128, i64 8, !54, i64 136, i64 4, !55, i64 140, i64 4, !55, i64 144, i64 8, !1, i64 152, i64 4, !55, i64 156, i64 4, !55, i64 160, i64 4, !55, i64 164, i64 4, !55, i64 168, i64 4, !55, i64 172, i64 4, !55, i64 176, i64 8, !54, i64 184, i64 8, !54, i64 192, i64 8, !54, i64 200, i64 8, !54, i64 208, i64 4, !42, i64 212, i64 4, !42, i64 216, i64 4, !42, i64 220, i64 4, !42, i64 224, i64 4, !42, i64 228, i64 4, !42, i64 232, i64 4, !42, i64 240, i64 8, !48}
!90 = !{!91, !2, i64 24}
!91 = !{!"gs_memory_s", !2, i64 0, !92, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!92 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!93 = !{!94, !2, i64 0}
!94 = !{!"_pat", !2, i64 0}
!95 = !{!96, !2, i64 192}
!96 = !{!"gx_color_tile_s", !11, i64 0, !7, i64 8, !14, i64 16, !7, i64 32, !7, i64 36, !22, i64 40, !15, i64 64, !97, i64 96, !97, i64 144, !2, i64 192, !2, i64 200, !3, i64 208, !3, i64 209, !3, i64 210, !3, i64 211, !7, i64 216, !7, i64 220, !7, i64 224}
!97 = !{!"gx_strip_bitmap_s", !2, i64 0, !7, i64 8, !51, i64 12, !11, i64 24, !25, i64 32, !25, i64 34, !25, i64 36, !25, i64 38, !7, i64 40}
!98 = !{!96, !2, i64 200}
!99 = !{!100, !7, i64 1056}
!100 = !{!"gx_device_clist_common_s", !7, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !7, i64 40, !2, i64 48, !10, i64 56, !7, i64 80, !7, i64 84, !7, i64 88, !34, i64 96, !36, i64 816, !7, i64 832, !7, i64 836, !7, i64 840, !7, i64 844, !7, i64 848, !7, i64 852, !3, i64 856, !3, i64 864, !7, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !11, i64 928, !11, i64 936, !7, i64 944, !7, i64 948, !7, i64 952, !7, i64 956, !7, i64 960, !11, i64 968, !11, i64 976, !37, i64 984, !7, i64 1052, !7, i64 1056, !38, i64 1064, !2, i64 1104, !3, i64 1112, !40, i64 1120, !41, i64 1144, !2, i64 1728, !101, i64 1736, !2, i64 1768, !2, i64 1776, !7, i64 1784, !39, i64 1792, !7, i64 1808, !7, i64 1812, !102, i64 1816, !103, i64 1840, !7, i64 1864, !7, i64 1868, !2, i64 1872, !7, i64 1880, !7, i64 1884, !104, i64 1888, !7, i64 10144, !11, i64 10152, !2, i64 10160, !2, i64 10168, !7, i64 10176, !2, i64 10184}
!101 = !{!"gx_device_buf_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24}
!102 = !{!"gx_bits_cache_chunk_s", !2, i64 0, !2, i64 8, !7, i64 16, !7, i64 20}
!103 = !{!"gx_bits_cache_s", !2, i64 0, !7, i64 8, !7, i64 12, !7, i64 16}
!104 = !{!"gx_band_page_info_s", !3, i64 0, !2, i64 4096, !3, i64 4104, !2, i64 8200, !2, i64 8208, !7, i64 8216, !11, i64 8224, !11, i64 8232, !39, i64 8240}
!105 = !{!106, !2, i64 0}
!106 = !{!"gx_device_color_s", !2, i64 0, !3, i64 8, !51, i64 352, !7, i64 360, !45, i64 368, !107, i64 632}
!107 = !{!"_mask", !108, i64 0, !11, i64 8, !2, i64 16}
!108 = !{!"mp_", !7, i64 0, !7, i64 4}
!109 = !{!96, !11, i64 0}
!110 = !{!111, !2, i64 24}
!111 = !{!"gs_pattern_instance_s", !10, i64 0, !2, i64 24, !2, i64 32, !11, i64 40}
!112 = !{!113, !2, i64 16}
!113 = !{!"", !2, i64 0, !2, i64 8, !2, i64 16}
!114 = !{!13, !2, i64 32}
!115 = !{!33, !25, i64 108}
!116 = !{!33, !2, i64 1152}
!117 = !{!33, !2, i64 1664}
!118 = !{!119, !2, i64 40}
!119 = !{!"pixmap_info_s", !120, i64 0, !2, i64 40, !7, i64 48, !2, i64 56}
!120 = !{!"gs_depth_bitmap_s", !2, i64 0, !7, i64 8, !51, i64 12, !11, i64 24, !3, i64 32, !3, i64 33}
!121 = !{!20, !2, i64 8}
!122 = !{!119, !7, i64 48}
!123 = !{!120, !3, i64 33}
!124 = !{!120, !3, i64 32}
!125 = !{!120, !7, i64 12}
!126 = !{!127, !7, i64 32}
!127 = !{!"gs_image1_s", !2, i64 0, !22, i64 8, !7, i64 32, !7, i64 36, !7, i64 40, !3, i64 44, !7, i64 564, !3, i64 568, !7, i64 572, !2, i64 576, !7, i64 584, !7, i64 588, !3, i64 592, !3, i64 596}
!128 = !{!120, !7, i64 16}
!129 = !{!127, !7, i64 36}
!130 = !{!131, !7, i64 584}
!131 = !{!"gs_image4_s", !2, i64 0, !22, i64 8, !7, i64 32, !7, i64 36, !7, i64 40, !3, i64 44, !7, i64 564, !3, i64 568, !7, i64 572, !2, i64 576, !7, i64 584, !3, i64 588, !3, i64 1108}
!132 = !{!127, !7, i64 40}
!133 = !{!91, !2, i64 72}
!134 = !{i64 0, i64 8, !1, i64 8, i64 4, !42, i64 12, i64 4, !42, i64 16, i64 4, !42, i64 24, i64 8, !48, i64 32, i64 1, !135, i64 33, i64 1, !135}
!135 = !{!3, !3, i64 0}
!136 = !{!14, !11, i64 0}
!137 = !{!14, !2, i64 8}
!138 = !{!13, !7, i64 44}
!139 = !{!13, !17, i64 56}
!140 = !{!13, !17, i64 64}
!141 = !{!13, !17, i64 72}
!142 = !{!13, !17, i64 80}
!143 = !{!13, !18, i64 88}
!144 = !{!13, !18, i64 92}
!145 = !{!13, !2, i64 96}
!146 = !{!50, !2, i64 16}
!147 = !{!119, !2, i64 56}
!148 = !{!20, !7, i64 316}
!149 = !{!111, !2, i64 32}
!150 = !{!13, !11, i64 16}
!151 = !{!50, !2, i64 80}
!152 = !{!153, !2, i64 0}
!153 = !{!"gx_tile_bitmap_s", !2, i64 0, !7, i64 8, !51, i64 12, !11, i64 24, !25, i64 32, !25, i64 34}
!154 = !{!120, !2, i64 0}
!155 = !{!153, !7, i64 8}
!156 = !{!120, !7, i64 8}
!157 = !{!153, !25, i64 32}
!158 = !{!153, !25, i64 34}
!159 = !{!153, !11, i64 24}
!160 = !{!120, !11, i64 24}
!161 = !{!162, !2, i64 0}
!162 = !{!"gx_device_color_saved_s", !2, i64 0, !3, i64 8, !51, i64 336}
!163 = !{!106, !7, i64 360}
!164 = !{!106, !2, i64 368}
!165 = !{!111, !11, i64 40}
!166 = !{!167, !11, i64 0}
!167 = !{!"_pattern", !11, i64 0, !51, i64 8}
!168 = !{i64 0, i64 4, !42, i64 4, i64 4, !42}
!169 = !{!167, !7, i64 12}
!170 = !{!167, !7, i64 8}
!171 = !{!106, !7, i64 352}
!172 = !{!106, !7, i64 356}
!173 = !{!106, !11, i64 640}
!174 = !{!175, !11, i64 0}
!175 = !{!"gx_dc_serialized_tile_s", !11, i64 0, !7, i64 8, !7, i64 12, !51, i64 16, !22, i64 24, !15, i64 48, !7, i64 80}
!176 = !{!100, !7, i64 832}
!177 = !{!175, !7, i64 16}
!178 = !{!100, !7, i64 836}
!179 = !{!175, !7, i64 20}
!180 = !{!175, !7, i64 8}
!181 = !{!175, !7, i64 12}
!182 = !{i64 0, i64 4, !55, i64 4, i64 4, !55, i64 8, i64 4, !55, i64 12, i64 4, !55, i64 16, i64 4, !55, i64 20, i64 4, !55}
!183 = !{i64 0, i64 8, !54, i64 8, i64 8, !54, i64 16, i64 8, !54, i64 24, i64 8, !54}
!184 = !{!96, !7, i64 8}
!185 = !{!96, !7, i64 36}
!186 = !{!96, !3, i64 208}
!187 = !{!96, !3, i64 209}
!188 = !{!175, !7, i64 80}
!189 = !{!106, !2, i64 648}
!190 = !{!191, !7, i64 20}
!191 = !{!"tile_trans_clist_info_s", !192, i64 0, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !7, i64 32, !3, i64 36}
!192 = !{!"gs_int_rect_s", !51, i64 0, !51, i64 8}
!193 = !{!191, !7, i64 24}
!194 = !{!96, !7, i64 32}
!195 = !{!96, !3, i64 210}
!196 = !{!191, !3, i64 36}
!197 = !{!198, !3, i64 84}
!198 = !{!"gx_pattern_trans_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !192, i64 32, !7, i64 48, !7, i64 52, !7, i64 56, !7, i64 60, !7, i64 64, !7, i64 68, !2, i64 72, !7, i64 80, !3, i64 84, !2, i64 88, !2, i64 96, !2, i64 104}
!199 = !{!191, !7, i64 32}
!200 = !{!198, !7, i64 68}
!201 = !{!198, !7, i64 56}
!202 = !{!198, !2, i64 0}
!203 = !{!198, !7, i64 52}
!204 = !{!191, !7, i64 0}
!205 = !{!198, !7, i64 32}
!206 = !{!191, !7, i64 4}
!207 = !{!198, !7, i64 36}
!208 = !{!191, !7, i64 8}
!209 = !{!198, !7, i64 40}
!210 = !{!191, !7, i64 12}
!211 = !{!198, !7, i64 44}
!212 = !{!191, !7, i64 16}
!213 = !{!198, !7, i64 48}
!214 = !{!191, !7, i64 28}
!215 = !{!198, !7, i64 64}
!216 = !{!96, !7, i64 108}
!217 = !{!96, !7, i64 112}
!218 = !{!50, !7, i64 88}
!219 = !{!220, !2, i64 1144}
!220 = !{!"gx_device_clist_writer_s", !7, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !7, i64 40, !2, i64 48, !10, i64 56, !7, i64 80, !7, i64 84, !7, i64 88, !34, i64 96, !36, i64 816, !7, i64 832, !7, i64 836, !7, i64 840, !7, i64 844, !7, i64 848, !7, i64 852, !3, i64 856, !3, i64 864, !7, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !11, i64 928, !11, i64 936, !7, i64 944, !7, i64 948, !7, i64 952, !7, i64 956, !7, i64 960, !11, i64 968, !11, i64 976, !37, i64 984, !7, i64 1052, !7, i64 1056, !38, i64 1064, !2, i64 1104, !3, i64 1112, !40, i64 1120, !41, i64 1144, !2, i64 1728, !101, i64 1736, !2, i64 1768, !2, i64 1776, !7, i64 1784, !39, i64 1792, !7, i64 1808, !7, i64 1812, !102, i64 1816, !103, i64 1840, !7, i64 1864, !7, i64 1868, !2, i64 1872, !7, i64 1880, !7, i64 1884, !104, i64 1888, !7, i64 10144, !11, i64 10152, !2, i64 10160, !2, i64 10168, !7, i64 10176, !2, i64 10184, !7, i64 10192, !2, i64 10200, !2, i64 10208, !2, i64 10216, !2, i64 10224, !2, i64 10232, !221, i64 10240, !7, i64 10256, !7, i64 10260, !7, i64 10264, !7, i64 10268, !97, i64 10272, !7, i64 10320, !7, i64 10324, !7, i64 10328, !222, i64 10336, !7, i64 11952, !7, i64 11956, !7, i64 11960, !7, i64 11964, !3, i64 11968, !2, i64 12016, !11, i64 12024, !223, i64 12032, !3, i64 12080, !11, i64 12112, !11, i64 12120, !11, i64 12128, !11, i64 12136, !7, i64 12144, !7, i64 12148, !7, i64 12152, !7, i64 12156, !2, i64 12160, !7, i64 12168, !2, i64 12176, !7, i64 12184, !7, i64 12188, !7, i64 12192, !7, i64 12196, !7, i64 12200, !7, i64 12204, !2, i64 12208, !11, i64 12216, !7, i64 12224, !7, i64 12228, !7, i64 12232, !7, i64 12236, !34, i64 12240}
!221 = !{!"cmd_list_s", !2, i64 0, !2, i64 8}
!222 = !{!"gs_imager_state_s", !7, i64 0, !2, i64 8, !2, i64 16, !21, i64 24, !7, i64 128, !24, i64 132, !7, i64 168, !16, i64 176, !16, i64 192, !7, i64 208, !7, i64 212, !25, i64 216, !3, i64 220, !26, i64 224, !26, i64 228, !27, i64 232, !11, i64 240, !7, i64 248, !7, i64 252, !7, i64 256, !2, i64 264, !7, i64 272, !7, i64 276, !7, i64 280, !7, i64 284, !7, i64 288, !7, i64 292, !18, i64 296, !28, i64 300, !7, i64 308, !7, i64 312, !7, i64 316, !18, i64 320, !7, i64 324, !7, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !3, i64 376, !2, i64 392, !2, i64 400, !7, i64 408, !2, i64 416, !2, i64 424, !29, i64 432, !3, i64 496, !2, i64 1008, !2, i64 1016, !30, i64 1024, !2, i64 1304, !2, i64 1312, !2, i64 1320, !2, i64 1328, !30, i64 1336}
!223 = !{!"clist_color_space_s", !3, i64 0, !11, i64 8, !224, i64 16, !2, i64 40}
!224 = !{!"clist_icc_color_s", !11, i64 0, !3, i64 8, !7, i64 12, !3, i64 16, !3, i64 20}
!225 = !{!100, !11, i64 10120}
!226 = !{!227, !2, i64 32}
!227 = !{!"gx_device_color_type_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80}
!228 = !{!227, !2, i64 56}
!229 = !{!230, !2, i64 0}
!230 = !{!"_bin", !2, i64 0, !3, i64 8, !7, i64 24, !7, i64 28, !2, i64 32}
!231 = !{!232, !2, i64 0}
!232 = !{!"_col", !2, i64 0, !25, i64 8, !3, i64 10, !3, i64 76, !25, i64 332, !11, i64 336}
!233 = !{!222, !2, i64 1304}
!234 = !{!235, !7, i64 16}
!235 = !{!"gx_pattern_cache_s", !2, i64 0, !2, i64 8, !7, i64 16, !7, i64 20, !7, i64 24, !11, i64 32, !11, i64 40, !2, i64 48}
!236 = !{!235, !2, i64 8}
!237 = !{!222, !7, i64 316}
!238 = !{!51, !7, i64 0}
!239 = !{!51, !7, i64 4}
!240 = !{!96, !2, i64 144}
!241 = !{!106, !7, i64 632}
!242 = !{!106, !7, i64 636}
!243 = !{!198, !2, i64 8}
!244 = !{!96, !7, i64 104}
!245 = !{!96, !7, i64 136}
!246 = !{!96, !7, i64 160}
!247 = !{!96, !7, i64 152}
!248 = !{i64 0, i64 8, !1, i64 8, i64 4, !42, i64 12, i64 4, !42, i64 16, i64 4, !42, i64 24, i64 8, !48, i64 32, i64 2, !249, i64 34, i64 2, !249, i64 36, i64 2, !249, i64 38, i64 2, !249, i64 40, i64 4, !42}
!249 = !{!25, !25, i64 0}
!250 = !{!97, !2, i64 0}
!251 = !{!96, !2, i64 96}
!252 = !{!91, !2, i64 64}
!253 = !{!198, !2, i64 16}
!254 = !{!91, !2, i64 120}
!255 = !{!113, !2, i64 0}
!256 = !{!9, !2, i64 0}
!257 = !{!258, !2, i64 88}
!258 = !{!"gs_color_space_type_s", !3, i64 0, !7, i64 4, !7, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128}
!259 = !{!260, !7, i64 0}
!260 = !{!"gs_overprint_params_s", !7, i64 0, !7, i64 4, !7, i64 8, !11, i64 16, !25, i64 24, !7, i64 28}
!261 = !{!20, !7, i64 280}
!262 = !{!20, !7, i64 164}
!263 = !{!20, !18, i64 148}
!264 = !{!20, !18, i64 152}
!265 = !{!20, !2, i64 1680}
!266 = !{!20, !18, i64 132}
!267 = !{!20, !18, i64 136}
!268 = !{!20, !18, i64 140}
!269 = !{!20, !18, i64 144}
!270 = !{!271, !2, i64 32}
!271 = !{!"gs_memory_struct_type_s", !7, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56}
!272 = !{!273, !2, i64 0}
!273 = !{!"enum_ptr_s", !2, i64 0, !7, i64 8}
!274 = !{!271, !2, i64 40}
!275 = !{!16, !17, i64 0}
!276 = !{!16, !17, i64 8}
!277 = !{!278, !7, i64 32}
!278 = !{!"gs_data_image_s", !2, i64 0, !22, i64 8, !7, i64 32, !7, i64 36, !7, i64 40, !3, i64 44, !7, i64 564}
!279 = !{!278, !7, i64 36}
!280 = !{!96, !7, i64 216}
!281 = !{!282, !2, i64 0}
!282 = !{!"gc_procs_common_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24}
