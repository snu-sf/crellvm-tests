; ModuleID = './gstrans.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gs_state_s = type { i32, %struct.gs_memory_s*, i8*, %struct.gx_line_params_s, i32, %struct.gs_matrix_fixed_s, i32, %struct.gs_point_s, %struct.gs_point_s, i32, i32, i16, i32, %struct.gs_transparency_source_s, %struct.gs_transparency_source_s, %struct.gs_xstate_trans_flags, i64, i32, i32, i32, %struct.gx_device_s*, i32, i32, i32, i32, i32, i32, float, %struct.gs_fixed_point_s, i32, i32, i32, float, i32, i32, %struct.gsicc_manager_s*, %struct.gsicc_link_cache_s*, %struct.gsicc_profile_cache_s*, %struct.gx_color_map_procs_s* (%struct.gs_imager_state_s*, %struct.gx_device_s*)*, %struct.gs_halftone_s*, [2 x %struct.gs_int_point_s], %struct.gx_device_halftone_s*, %struct.gs_cie_render_s*, i32, %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s*, %struct.gx_transfer_s, [64 x %struct.gx_transfer_map_s*], %struct.gx_cie_joint_caches_s*, %struct.gx_color_map_procs_s*, %struct.gs_devicen_color_map_s, %struct.gx_pattern_cache_s*, %struct.gs_color_space_s*, %struct.gs_color_space_s*, %struct.gx_cie_joint_caches_s*, %struct.gs_devicen_color_map_s, %struct.gs_state_s*, %struct.gs_matrix_s, i32, %struct.gs_matrix_s, i32, %struct.gx_path_s*, %struct.gx_clip_path_s*, %struct.gx_clip_stack_s*, %struct.gx_clip_path_s*, i64, i64, %struct.gx_clip_path_s*, i32, [2 x %struct.anon], %struct.gs_font_s*, %struct.gs_font_s*, %struct.gs_matrix_fixed_s, i32, i32, i32, %struct.gs_state_s*, i32, %struct.gx_device_s*, %struct.gs_device_filter_stack_s*, %struct.gs_state_client_procs_s }
%struct.gs_memory_s = type { %struct.gs_memory_s*, %struct.gs_memory_procs_s, %struct.gs_lib_ctx_s*, %struct.gs_memory_s*, %struct.gs_memory_s* }
%struct.gs_memory_procs_s = type { i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i8*, i32, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)*, %struct.gs_memory_s* (%struct.gs_memory_s*)*, void (%struct.gs_memory_s*, %struct.gs_memory_status_s*)*, void (%struct.gs_memory_s*, i32, i8*)*, void (%struct.gs_memory_s*)*, i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, %struct.gs_memory_struct_type_s*, i8*)*, i32 (%struct.gs_memory_s*, i8*)*, %struct.gs_memory_struct_type_s* (%struct.gs_memory_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i8*, i32, i32, i8*)*, void (%struct.gs_memory_s*, i8*, i32, i8*)*, i32 (%struct.gs_memory_s*, %struct.gs_gc_root_s*, %struct.gs_ptr_procs_s*, i8**, i8*)*, void (%struct.gs_memory_s*, %struct.gs_gc_root_s*, i8*)*, void (%struct.gs_memory_s*, i32)* }
%struct.gs_memory_status_s = type { i64, i64, i32 }
%struct.gs_memory_struct_type_s = type { i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }
%struct.struct_shared_procs_s = type opaque
%struct.gs_ptr_procs_s = type { void (%struct.enum_ptr_s*, %struct.gc_state_s*)*, i32 (%struct.enum_ptr_s*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)* }
%struct.enum_ptr_s = type { i8*, i32 }
%struct.gc_state_s = type opaque
%struct.gs_gc_root_s = type { %struct.gs_gc_root_s*, %struct.gs_ptr_procs_s*, i8**, i32 }
%struct.gs_lib_ctx_s = type { %struct.gs_memory_s*, %struct._IO_FILE*, %struct._IO_FILE*, %struct._IO_FILE*, %struct._IO_FILE*, i32, i32, i32, i8*, i8*, i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)*, i32 (i8*)*, i64, i8*, %struct.name_table_s*, i32, %struct.gx_io_device_s**, i32, i32, [2 x i64], %struct.gs_font_dir_s*, i32, i8*, i32, i8*, %struct.gs_fapi_server_s** }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.name_table_s = type opaque
%struct.gx_io_device_s = type opaque
%struct.gs_font_dir_s = type opaque
%struct.gs_fapi_server_s = type opaque
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
%struct.gs_devn_params_s = type { i32, i8**, i32, i32, i32, %struct.gs_separations_s, i32, [70 x i32], %struct.compressed_color_list_s*, %struct.compressed_color_list_s*, %struct.gs_separations_s }
%struct.compressed_color_list_s = type { %struct.gs_memory_s*, i32, i32, i32, %union.anon.2 }
%union.anon.2 = type { [256 x %struct.comp_bit_map_list_s] }
%struct.comp_bit_map_list_s = type { i16, i16, i32, i64, i64 }
%struct.gs_separations_s = type { i32, [64 x %struct.devn_separation_name_s] }
%struct.devn_separation_name_s = type { i32, i8* }
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
%struct.gs_color_space_s = type { %struct.gs_color_space_type_s*, %struct.rc_header_s, i64, %struct.gs_color_space_s*, %struct.gs_color_space_s*, %struct.client_color_space_data_s*, %struct.cmm_profile_s*, %union.anon }
%struct.gs_color_space_type_s = type { i32, i32, i32, %struct.gs_memory_struct_type_s*, i32 (%struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*)*, %struct.gs_color_space_s* (%struct.gs_color_space_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i16*, %struct.gs_imager_state_s*, %struct.gx_device_s*)*, i32 (i16*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)*, i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)*, void (%struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i32)*, i32 (%struct.gs_color_space_s*, %struct.stream_s*)*, i32 (%struct.gs_color_space_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, float, %struct.gsicc_link_s*)*, i32 (%struct.gs_color_space_s*)* }
%struct.stream_s = type opaque
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
%struct.gs_device_filter_stack_s = type { %struct.gs_device_filter_stack_s*, %struct.gs_device_filter_s*, %struct.gx_device_s*, %struct.rc_header_s }
%struct.gs_device_filter_s = type opaque
%struct.gs_state_client_procs_s = type { i8* (%struct.gs_memory_s*)*, i32 (i8*, i8*)*, void (i8*, %struct.gs_memory_s*)*, i32 (i8*, i8*, i32)* }
%struct.gs_pdf14trans_params_s = type { i32, i32, i32, i32, i32, i32, %struct.gs_rect_s, i32, i32, i32, i32, [64 x float], float, %struct.gs_function_s*, [256 x i8], i32, i32, %struct.gs_transparency_source_s, %struct.gs_transparency_source_s, i32, %struct.gs_matrix_s, i32, i32, i32, i32, i32, i32, i32, i32, i64, %struct.cmm_profile_s*, i32, i32 }
%struct.gs_function_s = type opaque
%struct.gx_device_pattern_accum_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, %struct.gx_device_s*, %struct.gs_memory_s*, %struct.gs_pattern1_instance_s*, %struct.gx_device_memory_s*, %struct.gx_device_memory_s*, %struct.gx_pattern_trans_s* }
%struct.gx_device_memory_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, %struct.gx_device_s*, i32, i8*, %struct.gs_memory_s*, i32, %struct.gs_memory_s*, i32, [64 x %struct.gx_render_plane_s], %struct.gs_matrix_s, i8**, %struct.gs_const_string_s, %struct._c24, %struct._c40, %struct._c48, %struct._c56, %struct._c64, %struct.gs_log2_scale_point_s, i32, i32, i32, i32, i32, i64, %struct.gx_device_color_s*, i32, i32 }
%struct.gs_const_string_s = type { i8*, i32 }
%struct._c24 = type { i64, i32, i32, i32 }
%struct._c40 = type { i64, i32, i32, i32, i32, i32 }
%struct._c48 = type { i64, i32, i32, i32 }
%struct._c56 = type { i64, i32, i32, i32, i32, i32, i32, i32 }
%struct._c64 = type { i64, i32, i32 }
%struct.gs_transparency_mask_params_s = type { %struct.gs_color_space_s*, i32, i32, [64 x float], float, i32 (double, float*, i8*)*, %struct.gs_function_s*, i32, i64, %struct.cmm_profile_s* }

@.str = private unnamed_addr constant [28 x i8] c"gs_begin_transparency_group\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"gs_end_transparency_group\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"gs_push_transparency_state\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"gs_pop_transparency_state\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"gs_begin_transparency_mask\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"gs_end_transparency_mask\00", align 1

; Function Attrs: nounwind uwtable
define i32 @gs_setblendmode(%struct.gs_state_s* %pgs, i32 %mode) #0 {
entry:
  %retval = alloca i32, align 4
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %mode.addr = alloca i32, align 4
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  store i32 %mode, i32* %mode.addr, align 4, !tbaa !5
  %0 = load i32, i32* %mode.addr, align 4, !tbaa !5
  %cmp = icmp eq i32 %0, 16
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %mode.addr, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i32, i32* %mode.addr, align 4, !tbaa !5
  %cmp1 = icmp ult i32 %1, 0
  br i1 %cmp1, label %if.then.3, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %2 = load i32, i32* %mode.addr, align 4, !tbaa !5
  %cmp2 = icmp ugt i32 %2, 15
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %lor.lhs.false, %if.end
  store i32 -15, i32* %retval
  br label %return

if.end.4:                                         ; preds = %lor.lhs.false
  %3 = load i32, i32* %mode.addr, align 4, !tbaa !5
  %4 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %blend_mode = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %4, i32 0, i32 12
  store i32 %3, i32* %blend_mode, align 4, !tbaa !6
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.4, %if.then.3
  %5 = load i32, i32* %retval
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define i32 @gs_currentblendmode(%struct.gs_state_s* %pgs) #0 {
entry:
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %0 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %blend_mode = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i32 0, i32 12
  %1 = load i32, i32* %blend_mode, align 4, !tbaa !6
  ret i32 %1
}

; Function Attrs: nounwind uwtable
define i32 @gs_setopacityalpha(%struct.gs_state_s* %pgs, double %alpha) #0 {
entry:
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %alpha.addr = alloca double, align 8
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  store double %alpha, double* %alpha.addr, align 8, !tbaa !24
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load double, double* %alpha.addr, align 8, !tbaa !24
  %cmp = fcmp olt double %0, 0.000000e+00
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.end
  br label %cond.end.4

cond.false:                                       ; preds = %do.end
  %1 = load double, double* %alpha.addr, align 8, !tbaa !24
  %cmp1 = fcmp ogt double %1, 1.000000e+00
  br i1 %cmp1, label %cond.true.2, label %cond.false.3

cond.true.2:                                      ; preds = %cond.false
  br label %cond.end

cond.false.3:                                     ; preds = %cond.false
  %2 = load double, double* %alpha.addr, align 8, !tbaa !24
  br label %cond.end

cond.end:                                         ; preds = %cond.false.3, %cond.true.2
  %cond = phi double [ 1.000000e+00, %cond.true.2 ], [ %2, %cond.false.3 ]
  br label %cond.end.4

cond.end.4:                                       ; preds = %cond.end, %cond.true
  %cond5 = phi double [ 0.000000e+00, %cond.true ], [ %cond, %cond.end ]
  %conv = fptrunc double %cond5 to float
  %3 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %opacity = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %3, i32 0, i32 13
  %alpha6 = getelementptr inbounds %struct.gs_transparency_source_s, %struct.gs_transparency_source_s* %opacity, i32 0, i32 0
  store float %conv, float* %alpha6, align 4, !tbaa !25
  ret i32 0
}

; Function Attrs: nounwind uwtable
define float @gs_currentopacityalpha(%struct.gs_state_s* %pgs) #0 {
entry:
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %0 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %opacity = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i32 0, i32 13
  %alpha = getelementptr inbounds %struct.gs_transparency_source_s, %struct.gs_transparency_source_s* %opacity, i32 0, i32 0
  %1 = load float, float* %alpha, align 4, !tbaa !25
  ret float %1
}

; Function Attrs: nounwind uwtable
define i32 @gs_setshapealpha(%struct.gs_state_s* %pgs, double %alpha) #0 {
entry:
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %alpha.addr = alloca double, align 8
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  store double %alpha, double* %alpha.addr, align 8, !tbaa !24
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load double, double* %alpha.addr, align 8, !tbaa !24
  %cmp = fcmp olt double %0, 0.000000e+00
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.end
  br label %cond.end.4

cond.false:                                       ; preds = %do.end
  %1 = load double, double* %alpha.addr, align 8, !tbaa !24
  %cmp1 = fcmp ogt double %1, 1.000000e+00
  br i1 %cmp1, label %cond.true.2, label %cond.false.3

cond.true.2:                                      ; preds = %cond.false
  br label %cond.end

cond.false.3:                                     ; preds = %cond.false
  %2 = load double, double* %alpha.addr, align 8, !tbaa !24
  br label %cond.end

cond.end:                                         ; preds = %cond.false.3, %cond.true.2
  %cond = phi double [ 1.000000e+00, %cond.true.2 ], [ %2, %cond.false.3 ]
  br label %cond.end.4

cond.end.4:                                       ; preds = %cond.end, %cond.true
  %cond5 = phi double [ 0.000000e+00, %cond.true ], [ %cond, %cond.end ]
  %conv = fptrunc double %cond5 to float
  %3 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %shape = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %3, i32 0, i32 14
  %alpha6 = getelementptr inbounds %struct.gs_transparency_source_s, %struct.gs_transparency_source_s* %shape, i32 0, i32 0
  store float %conv, float* %alpha6, align 4, !tbaa !26
  ret i32 0
}

; Function Attrs: nounwind uwtable
define float @gs_currentshapealpha(%struct.gs_state_s* %pgs) #0 {
entry:
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %0 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %shape = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i32 0, i32 14
  %alpha = getelementptr inbounds %struct.gs_transparency_source_s, %struct.gs_transparency_source_s* %shape, i32 0, i32 0
  %1 = load float, float* %alpha, align 4, !tbaa !26
  ret float %1
}

; Function Attrs: nounwind uwtable
define i32 @gs_settextknockout(%struct.gs_state_s* %pgs, i32 %knockout) #0 {
entry:
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %knockout.addr = alloca i32, align 4
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  store i32 %knockout, i32* %knockout.addr, align 4, !tbaa !27
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load i32, i32* %knockout.addr, align 4, !tbaa !27
  %1 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %text_knockout = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %1, i32 0, i32 17
  store i32 %0, i32* %text_knockout, align 4, !tbaa !28
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @gs_currenttextknockout(%struct.gs_state_s* %pgs) #0 {
entry:
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %0 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %text_knockout = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i32 0, i32 17
  %1 = load i32, i32* %text_knockout, align 4, !tbaa !28
  ret i32 %1
}

; Function Attrs: nounwind uwtable
define void @gs_trans_group_params_init(%struct.gs_transparency_group_params_s* %ptgp) #0 {
entry:
  %ptgp.addr = alloca %struct.gs_transparency_group_params_s*, align 8
  store %struct.gs_transparency_group_params_s* %ptgp, %struct.gs_transparency_group_params_s** %ptgp.addr, align 8, !tbaa !1
  %0 = load %struct.gs_transparency_group_params_s*, %struct.gs_transparency_group_params_s** %ptgp.addr, align 8, !tbaa !1
  %ColorSpace = getelementptr inbounds %struct.gs_transparency_group_params_s, %struct.gs_transparency_group_params_s* %0, i32 0, i32 0
  store %struct.gs_color_space_s* null, %struct.gs_color_space_s** %ColorSpace, align 8, !tbaa !29
  %1 = load %struct.gs_transparency_group_params_s*, %struct.gs_transparency_group_params_s** %ptgp.addr, align 8, !tbaa !1
  %Isolated = getelementptr inbounds %struct.gs_transparency_group_params_s, %struct.gs_transparency_group_params_s* %1, i32 0, i32 1
  store i32 0, i32* %Isolated, align 4, !tbaa !31
  %2 = load %struct.gs_transparency_group_params_s*, %struct.gs_transparency_group_params_s** %ptgp.addr, align 8, !tbaa !1
  %Knockout = getelementptr inbounds %struct.gs_transparency_group_params_s, %struct.gs_transparency_group_params_s* %2, i32 0, i32 2
  store i32 0, i32* %Knockout, align 4, !tbaa !32
  %3 = load %struct.gs_transparency_group_params_s*, %struct.gs_transparency_group_params_s** %ptgp.addr, align 8, !tbaa !1
  %image_with_SMask = getelementptr inbounds %struct.gs_transparency_group_params_s, %struct.gs_transparency_group_params_s* %3, i32 0, i32 3
  store i32 0, i32* %image_with_SMask, align 4, !tbaa !33
  %4 = load %struct.gs_transparency_group_params_s*, %struct.gs_transparency_group_params_s** %ptgp.addr, align 8, !tbaa !1
  %mask_id = getelementptr inbounds %struct.gs_transparency_group_params_s, %struct.gs_transparency_group_params_s* %4, i32 0, i32 5
  store i32 0, i32* %mask_id, align 4, !tbaa !34
  %5 = load %struct.gs_transparency_group_params_s*, %struct.gs_transparency_group_params_s** %ptgp.addr, align 8, !tbaa !1
  %iccprofile = getelementptr inbounds %struct.gs_transparency_group_params_s, %struct.gs_transparency_group_params_s* %5, i32 0, i32 9
  store %struct.cmm_profile_s* null, %struct.cmm_profile_s** %iccprofile, align 8, !tbaa !35
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @gs_update_trans_marking_params(%struct.gs_state_s* %pgs) #0 {
entry:
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %params = alloca %struct.gs_pdf14trans_params_s, align 8
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_pdf14trans_params_s* %params to i8*
  call void @llvm.lifetime.start(i64 704, i8* %0) #1
  %1 = bitcast %struct.gs_pdf14trans_params_s* %params to i8*
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 704, i32 8, i1 false)
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %pdf14_op = getelementptr inbounds %struct.gs_pdf14trans_params_s, %struct.gs_pdf14trans_params_s* %params, i32 0, i32 0
  store i32 7, i32* %pdf14_op, align 4, !tbaa !36
  %2 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %call = call i32 @gs_state_update_pdf14trans(%struct.gs_state_s* %2, %struct.gs_pdf14trans_params_s* %params) #5
  %3 = bitcast %struct.gs_pdf14trans_params_s* %params to i8*
  call void @llvm.lifetime.end(i64 704, i8* %3) #1
  ret i32 %call
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #1

; Function Attrs: nounwind uwtable
define internal i32 @gs_state_update_pdf14trans(%struct.gs_state_s* %pgs, %struct.gs_pdf14trans_params_s* %pparams) #0 {
entry:
  %retval = alloca i32, align 4
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %pparams.addr = alloca %struct.gs_pdf14trans_params_s*, align 8
  %pis = alloca %struct.gs_imager_state_s*, align 8
  %dev = alloca %struct.gx_device_s*, align 8
  %pdf14dev = alloca %struct.gx_device_s*, align 8
  %code = alloca i32, align 4
  %curr_num = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  store %struct.gs_pdf14trans_params_s* %pparams, %struct.gs_pdf14trans_params_s** %pparams.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_imager_state_s** %pis to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_state_s* %1 to %struct.gs_imager_state_s*
  store %struct.gs_imager_state_s* %2, %struct.gs_imager_state_s** %pis, align 8, !tbaa !1
  %3 = bitcast %struct.gx_device_s** %dev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %device = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %4, i32 0, i32 78
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %device, align 8, !tbaa !39
  store %struct.gx_device_s* %5, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %6 = bitcast %struct.gx_device_s** %pdf14dev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  store %struct.gx_device_s* null, %struct.gx_device_s** %pdf14dev, align 8, !tbaa !1
  %7 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = bitcast i32* %curr_num to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %9, i32 0, i32 11
  %num_components = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 1
  %10 = load i32, i32* %num_components, align 4, !tbaa !40
  store i32 %10, i32* %curr_num, align 4, !tbaa !27
  %11 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis, align 8, !tbaa !1
  %12 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %13 = load %struct.gs_pdf14trans_params_s*, %struct.gs_pdf14trans_params_s** %pparams.addr, align 8, !tbaa !1
  %14 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %14, i32 0, i32 1
  %15 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !51
  %call = call i32 @send_pdf14trans(%struct.gs_imager_state_s* %11, %struct.gx_device_s* %12, %struct.gx_device_s** %pdf14dev, %struct.gs_pdf14trans_params_s* %13, %struct.gs_memory_s* %15) #5
  store i32 %call, i32* %code, align 4, !tbaa !27
  %16 = load i32, i32* %code, align 4, !tbaa !27
  %cmp = icmp slt i32 %16, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %17 = load i32, i32* %code, align 4, !tbaa !27
  store i32 %17, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %18 = load %struct.gx_device_s*, %struct.gx_device_s** %pdf14dev, align 8, !tbaa !1
  %19 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %cmp1 = icmp ne %struct.gx_device_s* %18, %19
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  %20 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %21 = load %struct.gx_device_s*, %struct.gx_device_s** %pdf14dev, align 8, !tbaa !1
  call void @gx_set_device_only(%struct.gs_state_s* %20, %struct.gx_device_s* %21) #5
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.2, %if.end
  %22 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %overprint = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %22, i32 0, i32 21
  %23 = load i32, i32* %overprint, align 4, !tbaa !52
  %tobool = icmp ne i32 %23, 0
  br i1 %tobool, label %land.lhs.true, label %if.end.9

land.lhs.true:                                    ; preds = %if.end.3
  %24 = load i32, i32* %curr_num, align 4, !tbaa !27
  %25 = load %struct.gx_device_s*, %struct.gx_device_s** %pdf14dev, align 8, !tbaa !1
  %color_info4 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %25, i32 0, i32 11
  %num_components5 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info4, i32 0, i32 1
  %26 = load i32, i32* %num_components5, align 4, !tbaa !40
  %cmp6 = icmp ne i32 %24, %26
  br i1 %cmp6, label %if.then.7, label %if.end.9

if.then.7:                                        ; preds = %land.lhs.true
  %27 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %call8 = call i32 @gs_do_set_overprint(%struct.gs_state_s* %27) #5
  store i32 %call8, i32* %code, align 4, !tbaa !27
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.7, %land.lhs.true, %if.end.3
  %28 = load i32, i32* %code, align 4, !tbaa !27
  store i32 %28, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.9, %if.then
  %29 = bitcast i32* %curr_num to i8*
  call void @llvm.lifetime.end(i64 4, i8* %29) #1
  %30 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %30) #1
  %31 = bitcast %struct.gx_device_s** %pdf14dev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %31) #1
  %32 = bitcast %struct.gx_device_s** %dev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %32) #1
  %33 = bitcast %struct.gs_imager_state_s** %pis to i8*
  call void @llvm.lifetime.end(i64 8, i8* %33) #1
  %34 = load i32, i32* %retval
  ret i32 %34
}

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define i32 @gs_begin_transparency_group(%struct.gs_state_s* %pgs, %struct.gs_transparency_group_params_s* %ptgp, %struct.gs_rect_s* %pbbox) #0 {
entry:
  %retval = alloca i32, align 4
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %ptgp.addr = alloca %struct.gs_transparency_group_params_s*, align 8
  %pbbox.addr = alloca %struct.gs_rect_s*, align 8
  %params = alloca %struct.gs_pdf14trans_params_s, align 8
  %blend_color_space = alloca %struct.gs_color_space_s*, align 8
  %pis = alloca %struct.gs_imager_state_s*, align 8
  %profile = alloca %struct.cmm_profile_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  store %struct.gs_transparency_group_params_s* %ptgp, %struct.gs_transparency_group_params_s** %ptgp.addr, align 8, !tbaa !1
  store %struct.gs_rect_s* %pbbox, %struct.gs_rect_s** %pbbox.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_pdf14trans_params_s* %params to i8*
  call void @llvm.lifetime.start(i64 704, i8* %0) #1
  %1 = bitcast %struct.gs_pdf14trans_params_s* %params to i8*
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 704, i32 8, i1 false)
  %2 = bitcast %struct.gs_color_space_s** %blend_color_space to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = bitcast %struct.gs_imager_state_s** %pis to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %5 = bitcast %struct.gs_state_s* %4 to %struct.gs_imager_state_s*
  store %struct.gs_imager_state_s* %5, %struct.gs_imager_state_s** %pis, align 8, !tbaa !1
  %6 = bitcast %struct.cmm_profile_s** %profile to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %call = call i32 @check_for_nontrans_pattern(%struct.gs_state_s* %7, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i32 0, i32 0)) #5
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %pdf14_op = getelementptr inbounds %struct.gs_pdf14trans_params_s, %struct.gs_pdf14trans_params_s* %params, i32 0, i32 0
  store i32 3, i32* %pdf14_op, align 4, !tbaa !36
  %8 = load %struct.gs_transparency_group_params_s*, %struct.gs_transparency_group_params_s** %ptgp.addr, align 8, !tbaa !1
  %Isolated = getelementptr inbounds %struct.gs_transparency_group_params_s, %struct.gs_transparency_group_params_s* %8, i32 0, i32 1
  %9 = load i32, i32* %Isolated, align 4, !tbaa !31
  %Isolated1 = getelementptr inbounds %struct.gs_pdf14trans_params_s, %struct.gs_pdf14trans_params_s* %params, i32 0, i32 3
  store i32 %9, i32* %Isolated1, align 4, !tbaa !53
  %10 = load %struct.gs_transparency_group_params_s*, %struct.gs_transparency_group_params_s** %ptgp.addr, align 8, !tbaa !1
  %Knockout = getelementptr inbounds %struct.gs_transparency_group_params_s, %struct.gs_transparency_group_params_s* %10, i32 0, i32 2
  %11 = load i32, i32* %Knockout, align 4, !tbaa !32
  %Knockout2 = getelementptr inbounds %struct.gs_pdf14trans_params_s, %struct.gs_pdf14trans_params_s* %params, i32 0, i32 4
  store i32 %11, i32* %Knockout2, align 4, !tbaa !54
  %12 = load %struct.gs_transparency_group_params_s*, %struct.gs_transparency_group_params_s** %ptgp.addr, align 8, !tbaa !1
  %image_with_SMask = getelementptr inbounds %struct.gs_transparency_group_params_s, %struct.gs_transparency_group_params_s* %12, i32 0, i32 3
  %13 = load i32, i32* %image_with_SMask, align 4, !tbaa !33
  %image_with_SMask3 = getelementptr inbounds %struct.gs_pdf14trans_params_s, %struct.gs_pdf14trans_params_s* %params, i32 0, i32 5
  store i32 %13, i32* %image_with_SMask3, align 4, !tbaa !55
  %opacity = getelementptr inbounds %struct.gs_pdf14trans_params_s, %struct.gs_pdf14trans_params_s* %params, i32 0, i32 17
  %14 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %opacity4 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %14, i32 0, i32 13
  %15 = bitcast %struct.gs_transparency_source_s* %opacity to i8*
  %16 = bitcast %struct.gs_transparency_source_s* %opacity4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* %16, i64 4, i32 4, i1 false), !tbaa.struct !56
  %shape = getelementptr inbounds %struct.gs_pdf14trans_params_s, %struct.gs_pdf14trans_params_s* %params, i32 0, i32 18
  %17 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %shape5 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %17, i32 0, i32 14
  %18 = bitcast %struct.gs_transparency_source_s* %shape to i8*
  %19 = bitcast %struct.gs_transparency_source_s* %shape5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %18, i8* %19, i64 4, i32 4, i1 false), !tbaa.struct !56
  %20 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %blend_mode = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %20, i32 0, i32 12
  %21 = load i32, i32* %blend_mode, align 4, !tbaa !6
  %blend_mode6 = getelementptr inbounds %struct.gs_pdf14trans_params_s, %struct.gs_pdf14trans_params_s* %params, i32 0, i32 15
  store i32 %21, i32* %blend_mode6, align 4, !tbaa !58
  %22 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %color = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %22, i32 0, i32 69
  %arrayidx = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* %color, i32 0, i64 0
  %color_space = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx, i32 0, i32 0
  %23 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %color_space, align 8, !tbaa !59
  store %struct.gs_color_space_s* %23, %struct.gs_color_space_s** %blend_color_space, align 8, !tbaa !1
  %24 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %blend_color_space, align 8, !tbaa !1
  %call7 = call i32 @gs_color_space_get_index(%struct.gs_color_space_s* %24) #5
  %cmp = icmp ugt i32 %call7, 2
  br i1 %cmp, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %if.end
  %25 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %color9 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %25, i32 0, i32 69
  %arrayidx10 = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* %color9, i32 0, i64 0
  %color_space11 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx10, i32 0, i32 0
  %26 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %color_space11, align 8, !tbaa !59
  store %struct.gs_color_space_s* %26, %struct.gs_color_space_s** %blend_color_space, align 8, !tbaa !1
  br label %if.end.13

if.else:                                          ; preds = %if.end
  %27 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %blend_color_space, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %27, i32 0, i32 0
  %28 = load %struct.gs_color_space_type_s*, %struct.gs_color_space_type_s** %type, align 8, !tbaa !61
  %concrete_space = getelementptr inbounds %struct.gs_color_space_type_s, %struct.gs_color_space_type_s* %28, i32 0, i32 7
  %29 = load %struct.gs_color_space_s* (%struct.gs_color_space_s*, %struct.gs_imager_state_s*)*, %struct.gs_color_space_s* (%struct.gs_color_space_s*, %struct.gs_imager_state_s*)** %concrete_space, align 8, !tbaa !63
  %30 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %blend_color_space, align 8, !tbaa !1
  %31 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis, align 8, !tbaa !1
  %call12 = call %struct.gs_color_space_s* %29(%struct.gs_color_space_s* %30, %struct.gs_imager_state_s* %31) #5
  store %struct.gs_color_space_s* %call12, %struct.gs_color_space_s** %blend_color_space, align 8, !tbaa !1
  br label %if.end.13

if.end.13:                                        ; preds = %if.else, %if.then.8
  %32 = load %struct.gs_transparency_group_params_s*, %struct.gs_transparency_group_params_s** %ptgp.addr, align 8, !tbaa !1
  %ColorSpace = getelementptr inbounds %struct.gs_transparency_group_params_s, %struct.gs_transparency_group_params_s* %32, i32 0, i32 0
  %33 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %ColorSpace, align 8, !tbaa !29
  %cmp14 = icmp eq %struct.gs_color_space_s* %33, null
  br i1 %cmp14, label %if.then.15, label %if.else.16

if.then.15:                                       ; preds = %if.end.13
  %group_color = getelementptr inbounds %struct.gs_pdf14trans_params_s, %struct.gs_pdf14trans_params_s* %params, i32 0, i32 28
  store i32 6, i32* %group_color, align 4, !tbaa !65
  %group_color_numcomps = getelementptr inbounds %struct.gs_pdf14trans_params_s, %struct.gs_pdf14trans_params_s* %params, i32 0, i32 27
  store i32 0, i32* %group_color_numcomps, align 4, !tbaa !66
  br label %if.end.48

if.else.16:                                       ; preds = %if.end.13
  %34 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %blend_color_space, align 8, !tbaa !1
  %call17 = call i32 @gs_color_space_is_ICC(%struct.gs_color_space_s* %34) #5
  %tobool18 = icmp ne i32 %call17, 0
  br i1 %tobool18, label %if.then.19, label %if.else.24

if.then.19:                                       ; preds = %if.else.16
  %group_color20 = getelementptr inbounds %struct.gs_pdf14trans_params_s, %struct.gs_pdf14trans_params_s* %params, i32 0, i32 28
  store i32 5, i32* %group_color20, align 4, !tbaa !65
  %35 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %blend_color_space, align 8, !tbaa !1
  %cmm_icc_profile_data = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %35, i32 0, i32 6
  %36 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data, align 8, !tbaa !67
  %num_comps = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %36, i32 0, i32 0
  %37 = load i8, i8* %num_comps, align 1, !tbaa !68
  %conv = zext i8 %37 to i32
  %group_color_numcomps21 = getelementptr inbounds %struct.gs_pdf14trans_params_s, %struct.gs_pdf14trans_params_s* %params, i32 0, i32 27
  store i32 %conv, i32* %group_color_numcomps21, align 4, !tbaa !66
  %38 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %blend_color_space, align 8, !tbaa !1
  %cmm_icc_profile_data22 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %38, i32 0, i32 6
  %39 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data22, align 8, !tbaa !67
  %iccprofile = getelementptr inbounds %struct.gs_pdf14trans_params_s, %struct.gs_pdf14trans_params_s* %params, i32 0, i32 30
  store %struct.cmm_profile_s* %39, %struct.cmm_profile_s** %iccprofile, align 8, !tbaa !72
  %40 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %blend_color_space, align 8, !tbaa !1
  %cmm_icc_profile_data23 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %40, i32 0, i32 6
  %41 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data23, align 8, !tbaa !67
  %hashcode = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %41, i32 0, i32 7
  %42 = load i64, i64* %hashcode, align 8, !tbaa !73
  %icc_hash = getelementptr inbounds %struct.gs_pdf14trans_params_s, %struct.gs_pdf14trans_params_s* %params, i32 0, i32 29
  store i64 %42, i64* %icc_hash, align 8, !tbaa !74
  br label %if.end.47

if.else.24:                                       ; preds = %if.else.16
  %43 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %blend_color_space, align 8, !tbaa !1
  %type25 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %43, i32 0, i32 0
  %44 = load %struct.gs_color_space_type_s*, %struct.gs_color_space_type_s** %type25, align 8, !tbaa !61
  %num_components = getelementptr inbounds %struct.gs_color_space_type_s, %struct.gs_color_space_type_s* %44, i32 0, i32 4
  %45 = load i32 (%struct.gs_color_space_s*)*, i32 (%struct.gs_color_space_s*)** %num_components, align 8, !tbaa !75
  %46 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %blend_color_space, align 8, !tbaa !1
  %call26 = call i32 %45(%struct.gs_color_space_s* %46) #5
  switch i32 %call26, label %sw.default [
    i32 1, label %sw.bb
    i32 3, label %sw.bb.27
    i32 4, label %sw.bb.29
  ]

sw.bb:                                            ; preds = %if.else.24
  %47 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %icc_manager = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %47, i32 0, i32 35
  %48 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager, align 8, !tbaa !76
  %default_gray = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %48, i32 0, i32 1
  %49 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %default_gray, align 8, !tbaa !77
  store %struct.cmm_profile_s* %49, %struct.cmm_profile_s** %profile, align 8, !tbaa !1
  br label %sw.epilog

sw.bb.27:                                         ; preds = %if.else.24
  %50 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %icc_manager28 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %50, i32 0, i32 35
  %51 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager28, align 8, !tbaa !76
  %default_rgb = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %51, i32 0, i32 2
  %52 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %default_rgb, align 8, !tbaa !79
  store %struct.cmm_profile_s* %52, %struct.cmm_profile_s** %profile, align 8, !tbaa !1
  br label %sw.epilog

sw.bb.29:                                         ; preds = %if.else.24
  %53 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %icc_manager30 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %53, i32 0, i32 35
  %54 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager30, align 8, !tbaa !76
  %default_cmyk = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %54, i32 0, i32 3
  %55 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %default_cmyk, align 8, !tbaa !80
  store %struct.cmm_profile_s* %55, %struct.cmm_profile_s** %profile, align 8, !tbaa !1
  br label %sw.epilog

sw.default:                                       ; preds = %if.else.24
  store %struct.cmm_profile_s* null, %struct.cmm_profile_s** %profile, align 8, !tbaa !1
  %group_color31 = getelementptr inbounds %struct.gs_pdf14trans_params_s, %struct.gs_pdf14trans_params_s* %params, i32 0, i32 28
  store i32 4, i32* %group_color31, align 4, !tbaa !65
  %56 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %blend_color_space, align 8, !tbaa !1
  %type32 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %56, i32 0, i32 0
  %57 = load %struct.gs_color_space_type_s*, %struct.gs_color_space_type_s** %type32, align 8, !tbaa !61
  %num_components33 = getelementptr inbounds %struct.gs_color_space_type_s, %struct.gs_color_space_type_s* %57, i32 0, i32 4
  %58 = load i32 (%struct.gs_color_space_s*)*, i32 (%struct.gs_color_space_s*)** %num_components33, align 8, !tbaa !75
  %59 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %blend_color_space, align 8, !tbaa !1
  %call34 = call i32 %58(%struct.gs_color_space_s* %59) #5
  %group_color_numcomps35 = getelementptr inbounds %struct.gs_pdf14trans_params_s, %struct.gs_pdf14trans_params_s* %params, i32 0, i32 27
  store i32 %call34, i32* %group_color_numcomps35, align 4, !tbaa !66
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.29, %sw.bb.27, %sw.bb
  %60 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %profile, align 8, !tbaa !1
  %cmp36 = icmp ne %struct.cmm_profile_s* %60, null
  br i1 %cmp36, label %if.then.38, label %if.end.46

if.then.38:                                       ; preds = %sw.epilog
  %group_color39 = getelementptr inbounds %struct.gs_pdf14trans_params_s, %struct.gs_pdf14trans_params_s* %params, i32 0, i32 28
  store i32 5, i32* %group_color39, align 4, !tbaa !65
  %61 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %profile, align 8, !tbaa !1
  %num_comps40 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %61, i32 0, i32 0
  %62 = load i8, i8* %num_comps40, align 1, !tbaa !68
  %conv41 = zext i8 %62 to i32
  %group_color_numcomps42 = getelementptr inbounds %struct.gs_pdf14trans_params_s, %struct.gs_pdf14trans_params_s* %params, i32 0, i32 27
  store i32 %conv41, i32* %group_color_numcomps42, align 4, !tbaa !66
  %63 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %profile, align 8, !tbaa !1
  %iccprofile43 = getelementptr inbounds %struct.gs_pdf14trans_params_s, %struct.gs_pdf14trans_params_s* %params, i32 0, i32 30
  store %struct.cmm_profile_s* %63, %struct.cmm_profile_s** %iccprofile43, align 8, !tbaa !72
  %64 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %profile, align 8, !tbaa !1
  %hashcode44 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %64, i32 0, i32 7
  %65 = load i64, i64* %hashcode44, align 8, !tbaa !73
  %icc_hash45 = getelementptr inbounds %struct.gs_pdf14trans_params_s, %struct.gs_pdf14trans_params_s* %params, i32 0, i32 29
  store i64 %65, i64* %icc_hash45, align 8, !tbaa !74
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.38, %sw.epilog
  br label %if.end.47

if.end.47:                                        ; preds = %if.end.46, %if.then.19
  br label %if.end.48

if.end.48:                                        ; preds = %if.end.47, %if.then.15
  %bbox = getelementptr inbounds %struct.gs_pdf14trans_params_s, %struct.gs_pdf14trans_params_s* %params, i32 0, i32 6
  %66 = load %struct.gs_rect_s*, %struct.gs_rect_s** %pbbox.addr, align 8, !tbaa !1
  %67 = bitcast %struct.gs_rect_s* %bbox to i8*
  %68 = bitcast %struct.gs_rect_s* %66 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %67, i8* %68, i64 32, i32 8, i1 false), !tbaa.struct !81
  %69 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %call49 = call i32 @gs_state_update_pdf14trans(%struct.gs_state_s* %69, %struct.gs_pdf14trans_params_s* %params) #5
  store i32 %call49, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.48, %if.then
  %70 = bitcast %struct.cmm_profile_s** %profile to i8*
  call void @llvm.lifetime.end(i64 8, i8* %70) #1
  %71 = bitcast %struct.gs_imager_state_s** %pis to i8*
  call void @llvm.lifetime.end(i64 8, i8* %71) #1
  %72 = bitcast %struct.gs_color_space_s** %blend_color_space to i8*
  call void @llvm.lifetime.end(i64 8, i8* %72) #1
  %73 = bitcast %struct.gs_pdf14trans_params_s* %params to i8*
  call void @llvm.lifetime.end(i64 704, i8* %73) #1
  %74 = load i32, i32* %retval
  ret i32 %74
}

; Function Attrs: nounwind uwtable
define internal i32 @check_for_nontrans_pattern(%struct.gs_state_s* %pgs, i8* %comp_name) #0 {
entry:
  %retval = alloca i32, align 4
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %comp_name.addr = alloca i8*, align 8
  %dev = alloca %struct.gx_device_s*, align 8
  %is_patt_clist = alloca i32, align 4
  %is_patt_acum = alloca i32, align 4
  %clwdev = alloca %struct.gx_device_clist_writer_s*, align 8
  %pinst = alloca %struct.gs_pattern1_instance_s*, align 8
  %cleanup.dest.slot = alloca i32
  %padev = alloca %struct.gx_device_pattern_accum_s*, align 8
  %pinst12 = alloca %struct.gs_pattern1_instance_s*, align 8
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  store i8* %comp_name, i8** %comp_name.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_s** %dev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %device = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %1, i32 0, i32 78
  %2 = load %struct.gx_device_s*, %struct.gx_device_s** %device, align 8, !tbaa !39
  store %struct.gx_device_s* %2, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %3 = bitcast i32* %is_patt_clist to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %call = call i32 @gx_device_is_pattern_clist(%struct.gx_device_s* %4) #5
  store i32 %call, i32* %is_patt_clist, align 4, !tbaa !27
  %5 = bitcast i32* %is_patt_acum to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %call1 = call i32 @gx_device_is_pattern_accum(%struct.gx_device_s* %6) #5
  store i32 %call1, i32* %is_patt_acum, align 4, !tbaa !27
  %7 = load i32, i32* %is_patt_clist, align 4, !tbaa !27
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %8 = load i32, i32* %is_patt_acum, align 4, !tbaa !27
  %tobool2 = icmp ne i32 %8, 0
  br i1 %tobool2, label %if.then, label %if.end.26

if.then:                                          ; preds = %lor.lhs.false, %entry
  %9 = load i32, i32* %is_patt_clist, align 4, !tbaa !27
  %tobool3 = icmp ne i32 %9, 0
  br i1 %tobool3, label %if.then.4, label %if.end.9

if.then.4:                                        ; preds = %if.then
  %10 = bitcast %struct.gx_device_clist_writer_s** %clwdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  %11 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %12 = bitcast %struct.gx_device_s* %11 to %struct.gx_device_clist_writer_s*
  store %struct.gx_device_clist_writer_s* %12, %struct.gx_device_clist_writer_s** %clwdev, align 8, !tbaa !1
  %13 = bitcast %struct.gs_pattern1_instance_s** %pinst to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #1
  %14 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %clwdev, align 8, !tbaa !1
  %pinst5 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %14, i32 0, i32 100
  %15 = load %struct.gs_pattern1_instance_s*, %struct.gs_pattern1_instance_s** %pinst5, align 8, !tbaa !82
  store %struct.gs_pattern1_instance_s* %15, %struct.gs_pattern1_instance_s** %pinst, align 8, !tbaa !1
  %16 = load %struct.gs_pattern1_instance_s*, %struct.gs_pattern1_instance_s** %pinst, align 8, !tbaa !1
  %templat = getelementptr inbounds %struct.gs_pattern1_instance_s, %struct.gs_pattern1_instance_s* %16, i32 0, i32 4
  %uses_transparency = getelementptr inbounds %struct.gs_pattern1_template_s, %struct.gs_pattern1_template_s* %templat, i32 0, i32 6
  %17 = load i32, i32* %uses_transparency, align 4, !tbaa !94
  %tobool6 = icmp ne i32 %17, 0
  br i1 %tobool6, label %if.end, label %if.then.7

if.then.7:                                        ; preds = %if.then.4
  br label %do.body

do.body:                                          ; preds = %if.then.7
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then.4
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %18 = bitcast %struct.gs_pattern1_instance_s** %pinst to i8*
  call void @llvm.lifetime.end(i64 8, i8* %18) #1
  %19 = bitcast %struct.gx_device_clist_writer_s** %clwdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %19) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.27 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.9

if.end.9:                                         ; preds = %cleanup.cont, %if.then
  %20 = load i32, i32* %is_patt_acum, align 4, !tbaa !27
  %tobool10 = icmp ne i32 %20, 0
  br i1 %tobool10, label %if.then.11, label %if.end.25

if.then.11:                                       ; preds = %if.end.9
  %21 = bitcast %struct.gx_device_pattern_accum_s** %padev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %21) #1
  %22 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %23 = bitcast %struct.gx_device_s* %22 to %struct.gx_device_pattern_accum_s*
  store %struct.gx_device_pattern_accum_s* %23, %struct.gx_device_pattern_accum_s** %padev, align 8, !tbaa !1
  %24 = bitcast %struct.gs_pattern1_instance_s** %pinst12 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %24) #1
  %25 = load %struct.gx_device_pattern_accum_s*, %struct.gx_device_pattern_accum_s** %padev, align 8, !tbaa !1
  %instance = getelementptr inbounds %struct.gx_device_pattern_accum_s, %struct.gx_device_pattern_accum_s* %25, i32 0, i32 45
  %26 = load %struct.gs_pattern1_instance_s*, %struct.gs_pattern1_instance_s** %instance, align 8, !tbaa !98
  store %struct.gs_pattern1_instance_s* %26, %struct.gs_pattern1_instance_s** %pinst12, align 8, !tbaa !1
  %27 = load %struct.gs_pattern1_instance_s*, %struct.gs_pattern1_instance_s** %pinst12, align 8, !tbaa !1
  %templat13 = getelementptr inbounds %struct.gs_pattern1_instance_s, %struct.gs_pattern1_instance_s* %27, i32 0, i32 4
  %uses_transparency14 = getelementptr inbounds %struct.gs_pattern1_template_s, %struct.gs_pattern1_template_s* %templat13, i32 0, i32 6
  %28 = load i32, i32* %uses_transparency14, align 4, !tbaa !94
  %tobool15 = icmp ne i32 %28, 0
  br i1 %tobool15, label %if.end.20, label %if.then.16

if.then.16:                                       ; preds = %if.then.11
  br label %do.body.17

do.body.17:                                       ; preds = %if.then.16
  br label %do.cond.18

do.cond.18:                                       ; preds = %do.body.17
  br label %do.end.19

do.end.19:                                        ; preds = %do.cond.18
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.21

if.end.20:                                        ; preds = %if.then.11
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.21

cleanup.21:                                       ; preds = %if.end.20, %do.end.19
  %29 = bitcast %struct.gs_pattern1_instance_s** %pinst12 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %29) #1
  %30 = bitcast %struct.gx_device_pattern_accum_s** %padev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %30) #1
  %cleanup.dest.23 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.23, label %cleanup.27 [
    i32 0, label %cleanup.cont.24
  ]

cleanup.cont.24:                                  ; preds = %cleanup.21
  br label %if.end.25

if.end.25:                                        ; preds = %cleanup.cont.24, %if.end.9
  br label %if.end.26

if.end.26:                                        ; preds = %if.end.25, %lor.lhs.false
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.27

cleanup.27:                                       ; preds = %if.end.26, %cleanup.21, %cleanup
  %31 = bitcast i32* %is_patt_acum to i8*
  call void @llvm.lifetime.end(i64 4, i8* %31) #1
  %32 = bitcast i32* %is_patt_clist to i8*
  call void @llvm.lifetime.end(i64 4, i8* %32) #1
  %33 = bitcast %struct.gx_device_s** %dev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %33) #1
  %34 = load i32, i32* %retval
  ret i32 %34
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

declare i32 @gs_color_space_get_index(%struct.gs_color_space_s*) #2

declare i32 @gs_color_space_is_ICC(%struct.gs_color_space_s*) #2

; Function Attrs: nounwind uwtable
define i32 @gx_begin_transparency_group(%struct.gs_imager_state_s* %pis, %struct.gx_device_s* %pdev, %struct.gs_pdf14trans_params_s* %pparams) #0 {
entry:
  %retval = alloca i32, align 4
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %pdev.addr = alloca %struct.gx_device_s*, align 8
  %pparams.addr = alloca %struct.gs_pdf14trans_params_s*, align 8
  %tgp = alloca %struct.gs_transparency_group_params_s, align 8
  %bbox = alloca %struct.gs_rect_s, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %pdev, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  store %struct.gs_pdf14trans_params_s* %pparams, %struct.gs_pdf14trans_params_s** %pparams.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_transparency_group_params_s* %tgp to i8*
  call void @llvm.lifetime.start(i64 56, i8* %0) #1
  %1 = bitcast %struct.gs_transparency_group_params_s* %tgp to i8*
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 56, i32 8, i1 false)
  %2 = bitcast %struct.gs_rect_s* %bbox to i8*
  call void @llvm.lifetime.start(i64 32, i8* %2) #1
  %3 = load %struct.gs_pdf14trans_params_s*, %struct.gs_pdf14trans_params_s** %pparams.addr, align 8, !tbaa !1
  %Background_components = getelementptr inbounds %struct.gs_pdf14trans_params_s, %struct.gs_pdf14trans_params_s* %3, i32 0, i32 9
  %4 = load i32, i32* %Background_components, align 4, !tbaa !100
  %cmp = icmp ne i32 %4, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %5 = load %struct.gs_pdf14trans_params_s*, %struct.gs_pdf14trans_params_s** %pparams.addr, align 8, !tbaa !1
  %Background_components1 = getelementptr inbounds %struct.gs_pdf14trans_params_s, %struct.gs_pdf14trans_params_s* %5, i32 0, i32 9
  %6 = load i32, i32* %Background_components1, align 4, !tbaa !100
  %7 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %7, i32 0, i32 11
  %num_components = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 1
  %8 = load i32, i32* %num_components, align 4, !tbaa !40
  %cmp2 = icmp ne i32 %6, %8
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true, %entry
  %9 = load %struct.gs_pdf14trans_params_s*, %struct.gs_pdf14trans_params_s** %pparams.addr, align 8, !tbaa !1
  %Isolated = getelementptr inbounds %struct.gs_pdf14trans_params_s, %struct.gs_pdf14trans_params_s* %9, i32 0, i32 3
  %10 = load i32, i32* %Isolated, align 4, !tbaa !53
  %Isolated3 = getelementptr inbounds %struct.gs_transparency_group_params_s, %struct.gs_transparency_group_params_s* %tgp, i32 0, i32 1
  store i32 %10, i32* %Isolated3, align 4, !tbaa !31
  %11 = load %struct.gs_pdf14trans_params_s*, %struct.gs_pdf14trans_params_s** %pparams.addr, align 8, !tbaa !1
  %Knockout = getelementptr inbounds %struct.gs_pdf14trans_params_s, %struct.gs_pdf14trans_params_s* %11, i32 0, i32 4
  %12 = load i32, i32* %Knockout, align 4, !tbaa !54
  %Knockout4 = getelementptr inbounds %struct.gs_transparency_group_params_s, %struct.gs_transparency_group_params_s* %tgp, i32 0, i32 2
  store i32 %12, i32* %Knockout4, align 4, !tbaa !32
  %13 = load %struct.gs_pdf14trans_params_s*, %struct.gs_pdf14trans_params_s** %pparams.addr, align 8, !tbaa !1
  %idle = getelementptr inbounds %struct.gs_pdf14trans_params_s, %struct.gs_pdf14trans_params_s* %13, i32 0, i32 25
  %14 = load i32, i32* %idle, align 4, !tbaa !101
  %idle5 = getelementptr inbounds %struct.gs_transparency_group_params_s, %struct.gs_transparency_group_params_s* %tgp, i32 0, i32 4
  store i32 %14, i32* %idle5, align 4, !tbaa !102
  %15 = load %struct.gs_pdf14trans_params_s*, %struct.gs_pdf14trans_params_s** %pparams.addr, align 8, !tbaa !1
  %mask_id = getelementptr inbounds %struct.gs_pdf14trans_params_s, %struct.gs_pdf14trans_params_s* %15, i32 0, i32 26
  %16 = load i32, i32* %mask_id, align 4, !tbaa !103
  %mask_id6 = getelementptr inbounds %struct.gs_transparency_group_params_s, %struct.gs_transparency_group_params_s* %tgp, i32 0, i32 5
  store i32 %16, i32* %mask_id6, align 4, !tbaa !34
  %17 = load %struct.gs_pdf14trans_params_s*, %struct.gs_pdf14trans_params_s** %pparams.addr, align 8, !tbaa !1
  %group_color = getelementptr inbounds %struct.gs_pdf14trans_params_s, %struct.gs_pdf14trans_params_s* %17, i32 0, i32 28
  %18 = load i32, i32* %group_color, align 4, !tbaa !65
  %group_color7 = getelementptr inbounds %struct.gs_transparency_group_params_s, %struct.gs_transparency_group_params_s* %tgp, i32 0, i32 7
  store i32 %18, i32* %group_color7, align 4, !tbaa !104
  %19 = load %struct.gs_pdf14trans_params_s*, %struct.gs_pdf14trans_params_s** %pparams.addr, align 8, !tbaa !1
  %group_color_numcomps = getelementptr inbounds %struct.gs_pdf14trans_params_s, %struct.gs_pdf14trans_params_s* %19, i32 0, i32 27
  %20 = load i32, i32* %group_color_numcomps, align 4, !tbaa !66
  %group_color_numcomps8 = getelementptr inbounds %struct.gs_transparency_group_params_s, %struct.gs_transparency_group_params_s* %tgp, i32 0, i32 6
  store i32 %20, i32* %group_color_numcomps8, align 4, !tbaa !105
  %21 = load %struct.gs_pdf14trans_params_s*, %struct.gs_pdf14trans_params_s** %pparams.addr, align 8, !tbaa !1
  %iccprofile = getelementptr inbounds %struct.gs_pdf14trans_params_s, %struct.gs_pdf14trans_params_s* %21, i32 0, i32 30
  %22 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %iccprofile, align 8, !tbaa !72
  %iccprofile9 = getelementptr inbounds %struct.gs_transparency_group_params_s, %struct.gs_transparency_group_params_s* %tgp, i32 0, i32 9
  store %struct.cmm_profile_s* %22, %struct.cmm_profile_s** %iccprofile9, align 8, !tbaa !35
  %23 = load %struct.gs_pdf14trans_params_s*, %struct.gs_pdf14trans_params_s** %pparams.addr, align 8, !tbaa !1
  %icc_hash = getelementptr inbounds %struct.gs_pdf14trans_params_s, %struct.gs_pdf14trans_params_s* %23, i32 0, i32 29
  %24 = load i64, i64* %icc_hash, align 8, !tbaa !74
  %icc_hashcode = getelementptr inbounds %struct.gs_transparency_group_params_s, %struct.gs_transparency_group_params_s* %tgp, i32 0, i32 8
  store i64 %24, i64* %icc_hashcode, align 8, !tbaa !106
  %25 = load %struct.gs_pdf14trans_params_s*, %struct.gs_pdf14trans_params_s** %pparams.addr, align 8, !tbaa !1
  %opacity = getelementptr inbounds %struct.gs_pdf14trans_params_s, %struct.gs_pdf14trans_params_s* %25, i32 0, i32 17
  %alpha = getelementptr inbounds %struct.gs_transparency_source_s, %struct.gs_transparency_source_s* %opacity, i32 0, i32 0
  %26 = load float, float* %alpha, align 4, !tbaa !107
  %27 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %opacity10 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %27, i32 0, i32 13
  %alpha11 = getelementptr inbounds %struct.gs_transparency_source_s, %struct.gs_transparency_source_s* %opacity10, i32 0, i32 0
  store float %26, float* %alpha11, align 4, !tbaa !108
  %28 = load %struct.gs_pdf14trans_params_s*, %struct.gs_pdf14trans_params_s** %pparams.addr, align 8, !tbaa !1
  %shape = getelementptr inbounds %struct.gs_pdf14trans_params_s, %struct.gs_pdf14trans_params_s* %28, i32 0, i32 18
  %alpha12 = getelementptr inbounds %struct.gs_transparency_source_s, %struct.gs_transparency_source_s* %shape, i32 0, i32 0
  %29 = load float, float* %alpha12, align 4, !tbaa !109
  %30 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %shape13 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %30, i32 0, i32 14
  %alpha14 = getelementptr inbounds %struct.gs_transparency_source_s, %struct.gs_transparency_source_s* %shape13, i32 0, i32 0
  store float %29, float* %alpha14, align 4, !tbaa !110
  %31 = load %struct.gs_pdf14trans_params_s*, %struct.gs_pdf14trans_params_s** %pparams.addr, align 8, !tbaa !1
  %blend_mode = getelementptr inbounds %struct.gs_pdf14trans_params_s, %struct.gs_pdf14trans_params_s* %31, i32 0, i32 15
  %32 = load i32, i32* %blend_mode, align 4, !tbaa !58
  %33 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %blend_mode15 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %33, i32 0, i32 12
  store i32 %32, i32* %blend_mode15, align 4, !tbaa !111
  %34 = load %struct.gs_pdf14trans_params_s*, %struct.gs_pdf14trans_params_s** %pparams.addr, align 8, !tbaa !1
  %bbox16 = getelementptr inbounds %struct.gs_pdf14trans_params_s, %struct.gs_pdf14trans_params_s* %34, i32 0, i32 6
  %35 = bitcast %struct.gs_rect_s* %bbox to i8*
  %36 = bitcast %struct.gs_rect_s* %bbox16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %35, i8* %36, i64 32, i32 8, i1 false), !tbaa.struct !81
  %37 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %37, i32 0, i32 42
  %begin_transparency_group = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 44
  %38 = load i32 (%struct.gx_device_s*, %struct.gs_transparency_group_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gx_device_s*, %struct.gs_transparency_group_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)** %begin_transparency_group, align 8, !tbaa !112
  %cmp17 = icmp ne i32 (%struct.gx_device_s*, %struct.gs_transparency_group_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* %38, null
  br i1 %cmp17, label %if.then.18, label %if.else

if.then.18:                                       ; preds = %if.end
  %39 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %procs19 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %39, i32 0, i32 42
  %begin_transparency_group20 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs19, i32 0, i32 44
  %40 = load i32 (%struct.gx_device_s*, %struct.gs_transparency_group_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gx_device_s*, %struct.gs_transparency_group_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)** %begin_transparency_group20, align 8, !tbaa !112
  %41 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %42 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %call = call i32 %40(%struct.gx_device_s* %41, %struct.gs_transparency_group_params_s* %tgp, %struct.gs_rect_s* %bbox, %struct.gs_imager_state_s* %42, %struct.gs_memory_s* null) #5
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %if.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then.18, %if.then
  %43 = bitcast %struct.gs_rect_s* %bbox to i8*
  call void @llvm.lifetime.end(i64 32, i8* %43) #1
  %44 = bitcast %struct.gs_transparency_group_params_s* %tgp to i8*
  call void @llvm.lifetime.end(i64 56, i8* %44) #1
  %45 = load i32, i32* %retval
  ret i32 %45
}

; Function Attrs: nounwind uwtable
define i32 @gs_end_transparency_group(%struct.gs_state_s* %pgs) #0 {
entry:
  %retval = alloca i32, align 4
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %params = alloca %struct.gs_pdf14trans_params_s, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_pdf14trans_params_s* %params to i8*
  call void @llvm.lifetime.start(i64 704, i8* %0) #1
  %1 = bitcast %struct.gs_pdf14trans_params_s* %params to i8*
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 704, i32 8, i1 false)
  %2 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %is_gstate = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %2, i32 0, i32 0
  %3 = load i32, i32* %is_gstate, align 4, !tbaa !113
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %4 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %call = call i32 @check_for_nontrans_pattern(%struct.gs_state_s* %4, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i32 0, i32 0)) #5
  %tobool1 = icmp ne i32 %call, 0
  br i1 %tobool1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true, %entry
  br label %do.body

do.body:                                          ; preds = %if.end
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %pdf14_op = getelementptr inbounds %struct.gs_pdf14trans_params_s, %struct.gs_pdf14trans_params_s* %params, i32 0, i32 0
  store i32 4, i32* %pdf14_op, align 4, !tbaa !36
  %5 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %call2 = call i32 @gs_state_update_pdf14trans(%struct.gs_state_s* %5, %struct.gs_pdf14trans_params_s* %params) #5
  store i32 %call2, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then
  %6 = bitcast %struct.gs_pdf14trans_params_s* %params to i8*
  call void @llvm.lifetime.end(i64 704, i8* %6) #1
  %7 = load i32, i32* %retval
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define i32 @gx_end_transparency_group(%struct.gs_imager_state_s* %pis, %struct.gx_device_s* %pdev) #0 {
entry:
  %retval = alloca i32, align 4
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %pdev.addr = alloca %struct.gx_device_s*, align 8
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %pdev, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %0, i32 0, i32 42
  %end_transparency_group = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 45
  %1 = load i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)** %end_transparency_group, align 8, !tbaa !114
  %cmp = icmp ne i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* %1, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.end
  %2 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %procs1 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %2, i32 0, i32 42
  %end_transparency_group2 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs1, i32 0, i32 45
  %3 = load i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)** %end_transparency_group2, align 8, !tbaa !114
  %4 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %5 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %call = call i32 %3(%struct.gx_device_s* %4, %struct.gs_imager_state_s* %5) #5
  store i32 %call, i32* %retval
  br label %return

if.else:                                          ; preds = %do.end
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %6 = load i32, i32* %retval
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define i32 @gs_push_transparency_state(%struct.gs_state_s* %pgs) #0 {
entry:
  %retval = alloca i32, align 4
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %params = alloca %struct.gs_pdf14trans_params_s, align 8
  %pis = alloca %struct.gs_imager_state_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_pdf14trans_params_s* %params to i8*
  call void @llvm.lifetime.start(i64 704, i8* %0) #1
  %1 = bitcast %struct.gs_pdf14trans_params_s* %params to i8*
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 704, i32 8, i1 false)
  %2 = bitcast %struct.gs_imager_state_s** %pis to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %4 = bitcast %struct.gs_state_s* %3 to %struct.gs_imager_state_s*
  store %struct.gs_imager_state_s* %4, %struct.gs_imager_state_s** %pis, align 8, !tbaa !1
  %5 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %call = call i32 @check_for_nontrans_pattern(%struct.gs_state_s* %6, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i32 0, i32 0)) #5
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis, align 8, !tbaa !1
  %trans_flags = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %7, i32 0, i32 15
  %xstate_change = getelementptr inbounds %struct.gs_xstate_trans_flags, %struct.gs_xstate_trans_flags* %trans_flags, i32 0, i32 1
  %8 = load i32, i32* %xstate_change, align 4, !tbaa !115
  %tobool1 = icmp ne i32 %8, 0
  br i1 %tobool1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %if.then.2
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %pdf14_op = getelementptr inbounds %struct.gs_pdf14trans_params_s, %struct.gs_pdf14trans_params_s* %params, i32 0, i32 0
  store i32 8, i32* %pdf14_op, align 4, !tbaa !36
  %9 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %call3 = call i32 @gs_state_update_pdf14trans(%struct.gs_state_s* %9, %struct.gs_pdf14trans_params_s* %params) #5
  store i32 %call3, i32* %code, align 4, !tbaa !27
  %10 = load i32, i32* %code, align 4, !tbaa !27
  %cmp = icmp slt i32 %10, 0
  br i1 %cmp, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %do.end
  %11 = load i32, i32* %code, align 4, !tbaa !27
  store i32 %11, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.5:                                         ; preds = %do.end
  br label %if.end.9

if.else:                                          ; preds = %if.end
  br label %do.body.6

do.body.6:                                        ; preds = %if.else
  br label %do.cond.7

do.cond.7:                                        ; preds = %do.body.6
  br label %do.end.8

do.end.8:                                         ; preds = %do.cond.7
  br label %if.end.9

if.end.9:                                         ; preds = %do.end.8, %if.end.5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.9, %if.then.4, %if.then
  %12 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %12) #1
  %13 = bitcast %struct.gs_imager_state_s** %pis to i8*
  call void @llvm.lifetime.end(i64 8, i8* %13) #1
  %14 = bitcast %struct.gs_pdf14trans_params_s* %params to i8*
  call void @llvm.lifetime.end(i64 704, i8* %14) #1
  %15 = load i32, i32* %retval
  ret i32 %15
}

; Function Attrs: nounwind uwtable
define i32 @gs_pop_transparency_state(%struct.gs_state_s* %pgs, i32 %force) #0 {
entry:
  %retval = alloca i32, align 4
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %force.addr = alloca i32, align 4
  %params = alloca %struct.gs_pdf14trans_params_s, align 8
  %pis = alloca %struct.gs_imager_state_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  store i32 %force, i32* %force.addr, align 4, !tbaa !27
  %0 = bitcast %struct.gs_pdf14trans_params_s* %params to i8*
  call void @llvm.lifetime.start(i64 704, i8* %0) #1
  %1 = bitcast %struct.gs_pdf14trans_params_s* %params to i8*
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 704, i32 8, i1 false)
  %2 = bitcast %struct.gs_imager_state_s** %pis to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %4 = bitcast %struct.gs_state_s* %3 to %struct.gs_imager_state_s*
  store %struct.gs_imager_state_s* %4, %struct.gs_imager_state_s** %pis, align 8, !tbaa !1
  %5 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %call = call i32 @check_for_nontrans_pattern(%struct.gs_state_s* %6, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i32 0, i32 0)) #5
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis, align 8, !tbaa !1
  %trans_flags = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %7, i32 0, i32 15
  %xstate_change = getelementptr inbounds %struct.gs_xstate_trans_flags, %struct.gs_xstate_trans_flags* %trans_flags, i32 0, i32 1
  %8 = load i32, i32* %xstate_change, align 4, !tbaa !115
  %tobool1 = icmp ne i32 %8, 0
  br i1 %tobool1, label %if.then.3, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %9 = load i32, i32* %force.addr, align 4, !tbaa !27
  %tobool2 = icmp ne i32 %9, 0
  br i1 %tobool2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %lor.lhs.false, %if.end
  br label %do.body

do.body:                                          ; preds = %if.then.3
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %pdf14_op = getelementptr inbounds %struct.gs_pdf14trans_params_s, %struct.gs_pdf14trans_params_s* %params, i32 0, i32 0
  store i32 9, i32* %pdf14_op, align 4, !tbaa !36
  %10 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %call4 = call i32 @gs_state_update_pdf14trans(%struct.gs_state_s* %10, %struct.gs_pdf14trans_params_s* %params) #5
  store i32 %call4, i32* %code, align 4, !tbaa !27
  %11 = load i32, i32* %code, align 4, !tbaa !27
  %cmp = icmp slt i32 %11, 0
  br i1 %cmp, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %do.end
  %12 = load i32, i32* %code, align 4, !tbaa !27
  store i32 %12, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.6:                                         ; preds = %do.end
  br label %if.end.10

if.else:                                          ; preds = %lor.lhs.false
  br label %do.body.7

do.body.7:                                        ; preds = %if.else
  br label %do.cond.8

do.cond.8:                                        ; preds = %do.body.7
  br label %do.end.9

do.end.9:                                         ; preds = %do.cond.8
  br label %if.end.10

if.end.10:                                        ; preds = %do.end.9, %if.end.6
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.10, %if.then.5, %if.then
  %13 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %13) #1
  %14 = bitcast %struct.gs_imager_state_s** %pis to i8*
  call void @llvm.lifetime.end(i64 8, i8* %14) #1
  %15 = bitcast %struct.gs_pdf14trans_params_s* %params to i8*
  call void @llvm.lifetime.end(i64 704, i8* %15) #1
  %16 = load i32, i32* %retval
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define i32 @gx_pop_transparency_state(%struct.gs_imager_state_s* %pis, %struct.gx_device_s* %pdev) #0 {
entry:
  %retval = alloca i32, align 4
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %pdev.addr = alloca %struct.gx_device_s*, align 8
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %pdev, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %0, i32 0, i32 42
  %pop_transparency_state = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 63
  %1 = load i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)** %pop_transparency_state, align 8, !tbaa !116
  %cmp = icmp ne i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* %1, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.end
  %2 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %procs1 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %2, i32 0, i32 42
  %pop_transparency_state2 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs1, i32 0, i32 63
  %3 = load i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)** %pop_transparency_state2, align 8, !tbaa !116
  %4 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %5 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %call = call i32 %3(%struct.gx_device_s* %4, %struct.gs_imager_state_s* %5) #5
  store i32 %call, i32* %retval
  br label %return

if.else:                                          ; preds = %do.end
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %6 = load i32, i32* %retval
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define i32 @gx_push_transparency_state(%struct.gs_imager_state_s* %pis, %struct.gx_device_s* %pdev) #0 {
entry:
  %retval = alloca i32, align 4
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %pdev.addr = alloca %struct.gx_device_s*, align 8
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %pdev, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %0, i32 0, i32 42
  %push_transparency_state = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 62
  %1 = load i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)** %push_transparency_state, align 8, !tbaa !117
  %cmp = icmp ne i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* %1, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.end
  %2 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %procs1 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %2, i32 0, i32 42
  %push_transparency_state2 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs1, i32 0, i32 62
  %3 = load i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)** %push_transparency_state2, align 8, !tbaa !117
  %4 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %5 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %call = call i32 %3(%struct.gx_device_s* %4, %struct.gs_imager_state_s* %5) #5
  store i32 %call, i32* %retval
  br label %return

if.else:                                          ; preds = %do.end
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %6 = load i32, i32* %retval
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define void @gs_trans_mask_params_init(%struct.gs_transparency_mask_params_s* %ptmp, i32 %subtype) #0 {
entry:
  %ptmp.addr = alloca %struct.gs_transparency_mask_params_s*, align 8
  %subtype.addr = alloca i32, align 4
  store %struct.gs_transparency_mask_params_s* %ptmp, %struct.gs_transparency_mask_params_s** %ptmp.addr, align 8, !tbaa !1
  store i32 %subtype, i32* %subtype.addr, align 4, !tbaa !5
  %0 = load %struct.gs_transparency_mask_params_s*, %struct.gs_transparency_mask_params_s** %ptmp.addr, align 8, !tbaa !1
  %ColorSpace = getelementptr inbounds %struct.gs_transparency_mask_params_s, %struct.gs_transparency_mask_params_s* %0, i32 0, i32 0
  store %struct.gs_color_space_s* null, %struct.gs_color_space_s** %ColorSpace, align 8, !tbaa !118
  %1 = load i32, i32* %subtype.addr, align 4, !tbaa !5
  %2 = load %struct.gs_transparency_mask_params_s*, %struct.gs_transparency_mask_params_s** %ptmp.addr, align 8, !tbaa !1
  %subtype1 = getelementptr inbounds %struct.gs_transparency_mask_params_s, %struct.gs_transparency_mask_params_s* %2, i32 0, i32 1
  store i32 %1, i32* %subtype1, align 4, !tbaa !120
  %3 = load %struct.gs_transparency_mask_params_s*, %struct.gs_transparency_mask_params_s** %ptmp.addr, align 8, !tbaa !1
  %Background_components = getelementptr inbounds %struct.gs_transparency_mask_params_s, %struct.gs_transparency_mask_params_s* %3, i32 0, i32 2
  store i32 0, i32* %Background_components, align 4, !tbaa !121
  %4 = load %struct.gs_transparency_mask_params_s*, %struct.gs_transparency_mask_params_s** %ptmp.addr, align 8, !tbaa !1
  %GrayBackground = getelementptr inbounds %struct.gs_transparency_mask_params_s, %struct.gs_transparency_mask_params_s* %4, i32 0, i32 4
  store float 0.000000e+00, float* %GrayBackground, align 4, !tbaa !122
  %5 = load %struct.gs_transparency_mask_params_s*, %struct.gs_transparency_mask_params_s** %ptmp.addr, align 8, !tbaa !1
  %TransferFunction = getelementptr inbounds %struct.gs_transparency_mask_params_s, %struct.gs_transparency_mask_params_s* %5, i32 0, i32 5
  store i32 (double, float*, i8*)* @mask_transfer_identity, i32 (double, float*, i8*)** %TransferFunction, align 8, !tbaa !123
  %6 = load %struct.gs_transparency_mask_params_s*, %struct.gs_transparency_mask_params_s** %ptmp.addr, align 8, !tbaa !1
  %TransferFunction_data = getelementptr inbounds %struct.gs_transparency_mask_params_s, %struct.gs_transparency_mask_params_s* %6, i32 0, i32 6
  store %struct.gs_function_s* null, %struct.gs_function_s** %TransferFunction_data, align 8, !tbaa !124
  %7 = load %struct.gs_transparency_mask_params_s*, %struct.gs_transparency_mask_params_s** %ptmp.addr, align 8, !tbaa !1
  %replacing = getelementptr inbounds %struct.gs_transparency_mask_params_s, %struct.gs_transparency_mask_params_s* %7, i32 0, i32 7
  store i32 0, i32* %replacing, align 4, !tbaa !125
  %8 = load %struct.gs_transparency_mask_params_s*, %struct.gs_transparency_mask_params_s** %ptmp.addr, align 8, !tbaa !1
  %iccprofile = getelementptr inbounds %struct.gs_transparency_mask_params_s, %struct.gs_transparency_mask_params_s* %8, i32 0, i32 9
  store %struct.cmm_profile_s* null, %struct.cmm_profile_s** %iccprofile, align 8, !tbaa !126
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @mask_transfer_identity(double %in, float* %out, i8* %proc_data) #0 {
entry:
  %in.addr = alloca double, align 8
  %out.addr = alloca float*, align 8
  %proc_data.addr = alloca i8*, align 8
  store double %in, double* %in.addr, align 8, !tbaa !24
  store float* %out, float** %out.addr, align 8, !tbaa !1
  store i8* %proc_data, i8** %proc_data.addr, align 8, !tbaa !1
  %0 = load double, double* %in.addr, align 8, !tbaa !24
  %conv = fptrunc double %0 to float
  %1 = load float*, float** %out.addr, align 8, !tbaa !1
  store float %conv, float* %1, align 4, !tbaa !57
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @gs_begin_transparency_mask(%struct.gs_state_s* %pgs, %struct.gs_transparency_mask_params_s* %ptmp, %struct.gs_rect_s* %pbbox, i32 %mask_is_image) #0 {
entry:
  %retval = alloca i32, align 4
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %ptmp.addr = alloca %struct.gs_transparency_mask_params_s*, align 8
  %pbbox.addr = alloca %struct.gs_rect_s*, align 8
  %mask_is_image.addr = alloca i32, align 4
  %params = alloca %struct.gs_pdf14trans_params_s, align 8
  %params_color = alloca %struct.gs_pdf14trans_params_s, align 8
  %l = alloca i32, align 4
  %i = alloca i32, align 4
  %code = alloca i32, align 4
  %blend_color_space = alloca %struct.gs_color_space_s*, align 8
  %icc_manager = alloca %struct.gsicc_manager_s*, align 8
  %cleanup.dest.slot = alloca i32
  %in = alloca float, align 4
  %out = alloca float, align 4
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  store %struct.gs_transparency_mask_params_s* %ptmp, %struct.gs_transparency_mask_params_s** %ptmp.addr, align 8, !tbaa !1
  store %struct.gs_rect_s* %pbbox, %struct.gs_rect_s** %pbbox.addr, align 8, !tbaa !1
  store i32 %mask_is_image, i32* %mask_is_image.addr, align 4, !tbaa !27
  %0 = bitcast %struct.gs_pdf14trans_params_s* %params to i8*
  call void @llvm.lifetime.start(i64 704, i8* %0) #1
  %1 = bitcast %struct.gs_pdf14trans_params_s* %params to i8*
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 704, i32 8, i1 false)
  %2 = bitcast %struct.gs_pdf14trans_params_s* %params_color to i8*
  call void @llvm.lifetime.start(i64 704, i8* %2) #1
  %3 = bitcast %struct.gs_pdf14trans_params_s* %params_color to i8*
  call void @llvm.memset.p0i8.i64(i8* %3, i8 0, i64 704, i32 8, i1 false)
  %4 = bitcast i32* %l to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load %struct.gs_transparency_mask_params_s*, %struct.gs_transparency_mask_params_s** %ptmp.addr, align 8, !tbaa !1
  %Background_components = getelementptr inbounds %struct.gs_transparency_mask_params_s, %struct.gs_transparency_mask_params_s* %5, i32 0, i32 2
  %6 = load i32, i32* %Background_components, align 4, !tbaa !121
  %conv = sext i32 %6 to i64
  %mul = mul i64 4, %conv
  %conv1 = trunc i64 %mul to i32
  store i32 %conv1, i32* %l, align 4, !tbaa !27
  %7 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = bitcast %struct.gs_color_space_s** %blend_color_space to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = bitcast %struct.gsicc_manager_s** %icc_manager to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  %11 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %icc_manager2 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %11, i32 0, i32 35
  %12 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager2, align 8, !tbaa !76
  store %struct.gsicc_manager_s* %12, %struct.gsicc_manager_s** %icc_manager, align 8, !tbaa !1
  %13 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %call = call i32 @check_for_nontrans_pattern(%struct.gs_state_s* %13, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i32 0, i32 0)) #5
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %pdf14_op = getelementptr inbounds %struct.gs_pdf14trans_params_s, %struct.gs_pdf14trans_params_s* %params, i32 0, i32 0
  store i32 5, i32* %pdf14_op, align 4, !tbaa !36
  %bbox = getelementptr inbounds %struct.gs_pdf14trans_params_s, %struct.gs_pdf14trans_params_s* %params, i32 0, i32 6
  %14 = load %struct.gs_rect_s*, %struct.gs_rect_s** %pbbox.addr, align 8, !tbaa !1
  %15 = bitcast %struct.gs_rect_s* %bbox to i8*
  %16 = bitcast %struct.gs_rect_s* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* %16, i64 32, i32 8, i1 false), !tbaa.struct !81
  %17 = load %struct.gs_transparency_mask_params_s*, %struct.gs_transparency_mask_params_s** %ptmp.addr, align 8, !tbaa !1
  %subtype = getelementptr inbounds %struct.gs_transparency_mask_params_s, %struct.gs_transparency_mask_params_s* %17, i32 0, i32 1
  %18 = load i32, i32* %subtype, align 4, !tbaa !120
  %subtype3 = getelementptr inbounds %struct.gs_pdf14trans_params_s, %struct.gs_pdf14trans_params_s* %params, i32 0, i32 8
  store i32 %18, i32* %subtype3, align 4, !tbaa !127
  %19 = load %struct.gs_transparency_mask_params_s*, %struct.gs_transparency_mask_params_s** %ptmp.addr, align 8, !tbaa !1
  %Background_components4 = getelementptr inbounds %struct.gs_transparency_mask_params_s, %struct.gs_transparency_mask_params_s* %19, i32 0, i32 2
  %20 = load i32, i32* %Background_components4, align 4, !tbaa !121
  %Background_components5 = getelementptr inbounds %struct.gs_pdf14trans_params_s, %struct.gs_pdf14trans_params_s* %params, i32 0, i32 9
  store i32 %20, i32* %Background_components5, align 4, !tbaa !100
  %Background = getelementptr inbounds %struct.gs_pdf14trans_params_s, %struct.gs_pdf14trans_params_s* %params, i32 0, i32 11
  %arraydecay = getelementptr inbounds [64 x float], [64 x float]* %Background, i32 0, i32 0
  %21 = bitcast float* %arraydecay to i8*
  %22 = load %struct.gs_transparency_mask_params_s*, %struct.gs_transparency_mask_params_s** %ptmp.addr, align 8, !tbaa !1
  %Background6 = getelementptr inbounds %struct.gs_transparency_mask_params_s, %struct.gs_transparency_mask_params_s* %22, i32 0, i32 3
  %arraydecay7 = getelementptr inbounds [64 x float], [64 x float]* %Background6, i32 0, i32 0
  %23 = bitcast float* %arraydecay7 to i8*
  %24 = load i32, i32* %l, align 4, !tbaa !27
  %conv8 = sext i32 %24 to i64
  %call9 = call i8* @memcpy(i8* %21, i8* %23, i64 %conv8) #6
  %25 = load %struct.gs_transparency_mask_params_s*, %struct.gs_transparency_mask_params_s** %ptmp.addr, align 8, !tbaa !1
  %GrayBackground = getelementptr inbounds %struct.gs_transparency_mask_params_s, %struct.gs_transparency_mask_params_s* %25, i32 0, i32 4
  %26 = load float, float* %GrayBackground, align 4, !tbaa !122
  %GrayBackground10 = getelementptr inbounds %struct.gs_pdf14trans_params_s, %struct.gs_pdf14trans_params_s* %params, i32 0, i32 12
  store float %26, float* %GrayBackground10, align 4, !tbaa !128
  %27 = load %struct.gs_transparency_mask_params_s*, %struct.gs_transparency_mask_params_s** %ptmp.addr, align 8, !tbaa !1
  %TransferFunction_data = getelementptr inbounds %struct.gs_transparency_mask_params_s, %struct.gs_transparency_mask_params_s* %27, i32 0, i32 6
  %28 = load %struct.gs_function_s*, %struct.gs_function_s** %TransferFunction_data, align 8, !tbaa !124
  %transfer_function = getelementptr inbounds %struct.gs_pdf14trans_params_s, %struct.gs_pdf14trans_params_s* %params, i32 0, i32 13
  store %struct.gs_function_s* %28, %struct.gs_function_s** %transfer_function, align 8, !tbaa !129
  %29 = load %struct.gs_transparency_mask_params_s*, %struct.gs_transparency_mask_params_s** %ptmp.addr, align 8, !tbaa !1
  %TransferFunction = getelementptr inbounds %struct.gs_transparency_mask_params_s, %struct.gs_transparency_mask_params_s* %29, i32 0, i32 5
  %30 = load i32 (double, float*, i8*)*, i32 (double, float*, i8*)** %TransferFunction, align 8, !tbaa !123
  %cmp = icmp eq i32 (double, float*, i8*)* %30, @mask_transfer_identity
  %conv11 = zext i1 %cmp to i32
  %function_is_identity = getelementptr inbounds %struct.gs_pdf14trans_params_s, %struct.gs_pdf14trans_params_s* %params, i32 0, i32 10
  store i32 %conv11, i32* %function_is_identity, align 4, !tbaa !130
  %31 = load i32, i32* %mask_is_image.addr, align 4, !tbaa !27
  %mask_is_image12 = getelementptr inbounds %struct.gs_pdf14trans_params_s, %struct.gs_pdf14trans_params_s* %params, i32 0, i32 19
  store i32 %31, i32* %mask_is_image12, align 4, !tbaa !131
  %32 = load %struct.gs_transparency_mask_params_s*, %struct.gs_transparency_mask_params_s** %ptmp.addr, align 8, !tbaa !1
  %replacing = getelementptr inbounds %struct.gs_transparency_mask_params_s, %struct.gs_transparency_mask_params_s* %32, i32 0, i32 7
  %33 = load i32, i32* %replacing, align 4, !tbaa !125
  %replacing13 = getelementptr inbounds %struct.gs_pdf14trans_params_s, %struct.gs_pdf14trans_params_s* %params, i32 0, i32 21
  store i32 %33, i32* %replacing13, align 4, !tbaa !132
  %34 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager, align 8, !tbaa !1
  %smask_profiles = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %34, i32 0, i32 7
  %35 = load %struct.gsicc_smask_s*, %struct.gsicc_smask_s** %smask_profiles, align 8, !tbaa !133
  %cmp14 = icmp eq %struct.gsicc_smask_s* %35, null
  br i1 %cmp14, label %if.then.16, label %if.end.22

if.then.16:                                       ; preds = %if.end
  %36 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager, align 8, !tbaa !1
  %call17 = call i32 @gsicc_initialize_iccsmask(%struct.gsicc_manager_s* %36) #5
  store i32 %call17, i32* %code, align 4, !tbaa !27
  %37 = load i32, i32* %code, align 4, !tbaa !27
  %cmp18 = icmp slt i32 %37, 0
  br i1 %cmp18, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %if.then.16
  %38 = load i32, i32* %code, align 4, !tbaa !27
  store i32 %38, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.21:                                        ; preds = %if.then.16
  br label %if.end.22

if.end.22:                                        ; preds = %if.end.21, %if.end
  br label %do.body

do.body:                                          ; preds = %if.end.22
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %pdf14_op23 = getelementptr inbounds %struct.gs_pdf14trans_params_s, %struct.gs_pdf14trans_params_s* %params_color, i32 0, i32 0
  store i32 10, i32* %pdf14_op23, align 4, !tbaa !36
  %39 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %call24 = call i32 @gs_state_update_pdf14trans(%struct.gs_state_s* %39, %struct.gs_pdf14trans_params_s* %params_color) #5
  store i32 %call24, i32* %code, align 4, !tbaa !27
  %40 = load i32, i32* %code, align 4, !tbaa !27
  %cmp25 = icmp slt i32 %40, 0
  br i1 %cmp25, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %do.end
  %41 = load i32, i32* %code, align 4, !tbaa !27
  store i32 %41, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.28:                                        ; preds = %do.end
  %42 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %42, i32 0, i32 1
  %43 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !51
  %call29 = call %struct.gs_color_space_s* @gs_cspace_new_DeviceGray(%struct.gs_memory_s* %43) #5
  store %struct.gs_color_space_s* %call29, %struct.gs_color_space_s** %blend_color_space, align 8, !tbaa !1
  %44 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %icc_manager30 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %44, i32 0, i32 35
  %45 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager30, align 8, !tbaa !76
  %default_gray = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %45, i32 0, i32 1
  %46 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %default_gray, align 8, !tbaa !77
  %47 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %blend_color_space, align 8, !tbaa !1
  %cmm_icc_profile_data = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %47, i32 0, i32 6
  store %struct.cmm_profile_s* %46, %struct.cmm_profile_s** %cmm_icc_profile_data, align 8, !tbaa !67
  br label %do.body.31

do.body.31:                                       ; preds = %if.end.28
  %48 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %blend_color_space, align 8, !tbaa !1
  %cmm_icc_profile_data32 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %48, i32 0, i32 6
  %49 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data32, align 8, !tbaa !67
  %tobool33 = icmp ne %struct.cmm_profile_s* %49, null
  br i1 %tobool33, label %if.then.34, label %if.end.42

if.then.34:                                       ; preds = %do.body.31
  br label %do.body.35

do.body.35:                                       ; preds = %if.then.34
  %50 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %blend_color_space, align 8, !tbaa !1
  %cmm_icc_profile_data36 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %50, i32 0, i32 6
  %51 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data36, align 8, !tbaa !67
  %rc = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %51, i32 0, i32 18
  %ref_count = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc, i32 0, i32 0
  %52 = load i64, i64* %ref_count, align 8, !tbaa !134
  %inc = add nsw i64 %52, 1
  store i64 %inc, i64* %ref_count, align 8, !tbaa !134
  br label %do.body.37

do.body.37:                                       ; preds = %do.body.35
  br label %do.cond.38

do.cond.38:                                       ; preds = %do.body.37
  br label %do.end.39

do.end.39:                                        ; preds = %do.cond.38
  br label %do.cond.40

do.cond.40:                                       ; preds = %do.end.39
  br label %do.end.41

do.end.41:                                        ; preds = %do.cond.40
  br label %if.end.42

if.end.42:                                        ; preds = %do.end.41, %do.body.31
  br label %do.cond.43

do.cond.43:                                       ; preds = %if.end.42
  br label %do.end.44

do.end.44:                                        ; preds = %do.cond.43
  br label %do.body.45

do.body.45:                                       ; preds = %do.end.44
  br label %do.cond.46

do.cond.46:                                       ; preds = %do.body.45
  br label %do.end.47

do.end.47:                                        ; preds = %do.cond.46
  store i32 0, i32* %i, align 4, !tbaa !27
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end.47
  %53 = load i32, i32* %i, align 4, !tbaa !27
  %cmp48 = icmp slt i32 %53, 256
  br i1 %cmp48, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %54 = bitcast float* %in to i8*
  call void @llvm.lifetime.start(i64 4, i8* %54) #1
  %55 = load i32, i32* %i, align 4, !tbaa !27
  %conv50 = sitofp i32 %55 to double
  %mul51 = fmul double %conv50, 0x3F70101010101010
  %conv52 = fptrunc double %mul51 to float
  store float %conv52, float* %in, align 4, !tbaa !57
  %56 = bitcast float* %out to i8*
  call void @llvm.lifetime.start(i64 4, i8* %56) #1
  %57 = load %struct.gs_transparency_mask_params_s*, %struct.gs_transparency_mask_params_s** %ptmp.addr, align 8, !tbaa !1
  %TransferFunction53 = getelementptr inbounds %struct.gs_transparency_mask_params_s, %struct.gs_transparency_mask_params_s* %57, i32 0, i32 5
  %58 = load i32 (double, float*, i8*)*, i32 (double, float*, i8*)** %TransferFunction53, align 8, !tbaa !123
  %59 = load float, float* %in, align 4, !tbaa !57
  %conv54 = fpext float %59 to double
  %60 = load %struct.gs_transparency_mask_params_s*, %struct.gs_transparency_mask_params_s** %ptmp.addr, align 8, !tbaa !1
  %TransferFunction_data55 = getelementptr inbounds %struct.gs_transparency_mask_params_s, %struct.gs_transparency_mask_params_s* %60, i32 0, i32 6
  %61 = load %struct.gs_function_s*, %struct.gs_function_s** %TransferFunction_data55, align 8, !tbaa !124
  %62 = bitcast %struct.gs_function_s* %61 to i8*
  %call56 = call i32 %58(double %conv54, float* %out, i8* %62) #5
  %63 = load float, float* %out, align 4, !tbaa !57
  %mul57 = fmul float %63, 2.550000e+02
  %conv58 = fpext float %mul57 to double
  %add = fadd double %conv58, 5.000000e-01
  %call59 = call double @floor(double %add) #7
  %conv60 = fptoui double %call59 to i8
  %64 = load i32, i32* %i, align 4, !tbaa !27
  %idxprom = sext i32 %64 to i64
  %transfer_fn = getelementptr inbounds %struct.gs_pdf14trans_params_s, %struct.gs_pdf14trans_params_s* %params, i32 0, i32 14
  %arrayidx = getelementptr inbounds [256 x i8], [256 x i8]* %transfer_fn, i32 0, i64 %idxprom
  store i8 %conv60, i8* %arrayidx, align 1, !tbaa !5
  %65 = bitcast float* %out to i8*
  call void @llvm.lifetime.end(i64 4, i8* %65) #1
  %66 = bitcast float* %in to i8*
  call void @llvm.lifetime.end(i64 4, i8* %66) #1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %67 = load i32, i32* %i, align 4, !tbaa !27
  %inc61 = add nsw i32 %67, 1
  store i32 %inc61, i32* %i, align 4, !tbaa !27
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %68 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %blend_color_space, align 8, !tbaa !1
  %cmm_icc_profile_data62 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %68, i32 0, i32 6
  %69 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data62, align 8, !tbaa !67
  %cmp63 = icmp ne %struct.cmm_profile_s* %69, null
  br i1 %cmp63, label %if.then.65, label %if.else

if.then.65:                                       ; preds = %for.end
  %group_color = getelementptr inbounds %struct.gs_pdf14trans_params_s, %struct.gs_pdf14trans_params_s* %params, i32 0, i32 28
  store i32 5, i32* %group_color, align 4, !tbaa !65
  %70 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %blend_color_space, align 8, !tbaa !1
  %cmm_icc_profile_data66 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %70, i32 0, i32 6
  %71 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data66, align 8, !tbaa !67
  %num_comps = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %71, i32 0, i32 0
  %72 = load i8, i8* %num_comps, align 1, !tbaa !68
  %conv67 = zext i8 %72 to i32
  %group_color_numcomps = getelementptr inbounds %struct.gs_pdf14trans_params_s, %struct.gs_pdf14trans_params_s* %params, i32 0, i32 27
  store i32 %conv67, i32* %group_color_numcomps, align 4, !tbaa !66
  %73 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %blend_color_space, align 8, !tbaa !1
  %cmm_icc_profile_data68 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %73, i32 0, i32 6
  %74 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data68, align 8, !tbaa !67
  %iccprofile = getelementptr inbounds %struct.gs_pdf14trans_params_s, %struct.gs_pdf14trans_params_s* %params, i32 0, i32 30
  store %struct.cmm_profile_s* %74, %struct.cmm_profile_s** %iccprofile, align 8, !tbaa !72
  %75 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %blend_color_space, align 8, !tbaa !1
  %cmm_icc_profile_data69 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %75, i32 0, i32 6
  %76 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data69, align 8, !tbaa !67
  %hashcode = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %76, i32 0, i32 7
  %77 = load i64, i64* %hashcode, align 8, !tbaa !73
  %icc_hash = getelementptr inbounds %struct.gs_pdf14trans_params_s, %struct.gs_pdf14trans_params_s* %params, i32 0, i32 29
  store i64 %77, i64* %icc_hash, align 8, !tbaa !74
  br label %do.body.70

do.body.70:                                       ; preds = %if.then.65
  %iccprofile71 = getelementptr inbounds %struct.gs_pdf14trans_params_s, %struct.gs_pdf14trans_params_s* %params, i32 0, i32 30
  %78 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %iccprofile71, align 8, !tbaa !72
  %tobool72 = icmp ne %struct.cmm_profile_s* %78, null
  br i1 %tobool72, label %if.then.73, label %if.end.84

if.then.73:                                       ; preds = %do.body.70
  br label %do.body.74

do.body.74:                                       ; preds = %if.then.73
  %iccprofile75 = getelementptr inbounds %struct.gs_pdf14trans_params_s, %struct.gs_pdf14trans_params_s* %params, i32 0, i32 30
  %79 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %iccprofile75, align 8, !tbaa !72
  %rc76 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %79, i32 0, i32 18
  %ref_count77 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc76, i32 0, i32 0
  %80 = load i64, i64* %ref_count77, align 8, !tbaa !134
  %inc78 = add nsw i64 %80, 1
  store i64 %inc78, i64* %ref_count77, align 8, !tbaa !134
  br label %do.body.79

do.body.79:                                       ; preds = %do.body.74
  br label %do.cond.80

do.cond.80:                                       ; preds = %do.body.79
  br label %do.end.81

do.end.81:                                        ; preds = %do.cond.80
  br label %do.cond.82

do.cond.82:                                       ; preds = %do.end.81
  br label %do.end.83

do.end.83:                                        ; preds = %do.cond.82
  br label %if.end.84

if.end.84:                                        ; preds = %do.end.83, %do.body.70
  br label %do.cond.85

do.cond.85:                                       ; preds = %if.end.84
  br label %do.end.86

do.end.86:                                        ; preds = %do.cond.85
  br label %if.end.89

if.else:                                          ; preds = %for.end
  %group_color87 = getelementptr inbounds %struct.gs_pdf14trans_params_s, %struct.gs_pdf14trans_params_s* %params, i32 0, i32 28
  store i32 0, i32* %group_color87, align 4, !tbaa !65
  %group_color_numcomps88 = getelementptr inbounds %struct.gs_pdf14trans_params_s, %struct.gs_pdf14trans_params_s* %params, i32 0, i32 27
  store i32 1, i32* %group_color_numcomps88, align 4, !tbaa !66
  br label %if.end.89

if.end.89:                                        ; preds = %if.else, %do.end.86
  %81 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %blend_color_space, align 8, !tbaa !1
  call void @rc_decrement_only_cs(%struct.gs_color_space_s* %81, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i32 0, i32 0)) #5
  %82 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %call90 = call i32 @gs_state_update_pdf14trans(%struct.gs_state_s* %82, %struct.gs_pdf14trans_params_s* %params) #5
  store i32 %call90, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.89, %if.then.27, %if.then.20, %if.then
  %83 = bitcast %struct.gsicc_manager_s** %icc_manager to i8*
  call void @llvm.lifetime.end(i64 8, i8* %83) #1
  %84 = bitcast %struct.gs_color_space_s** %blend_color_space to i8*
  call void @llvm.lifetime.end(i64 8, i8* %84) #1
  %85 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %85) #1
  %86 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %86) #1
  %87 = bitcast i32* %l to i8*
  call void @llvm.lifetime.end(i64 4, i8* %87) #1
  %88 = bitcast %struct.gs_pdf14trans_params_s* %params_color to i8*
  call void @llvm.lifetime.end(i64 704, i8* %88) #1
  %89 = bitcast %struct.gs_pdf14trans_params_s* %params to i8*
  call void @llvm.lifetime.end(i64 704, i8* %89) #1
  %90 = load i32, i32* %retval
  ret i32 %90
}

; Function Attrs: nounwind
declare i8* @memcpy(i8*, i8*, i64) #3

declare i32 @gsicc_initialize_iccsmask(%struct.gsicc_manager_s*) #2

declare %struct.gs_color_space_s* @gs_cspace_new_DeviceGray(%struct.gs_memory_s*) #2

; Function Attrs: nounwind readnone
declare double @floor(double) #4

declare void @rc_decrement_only_cs(%struct.gs_color_space_s*, i8*) #2

; Function Attrs: nounwind uwtable
define i32 @gx_begin_transparency_mask(%struct.gs_imager_state_s* %pis, %struct.gx_device_s* %pdev, %struct.gs_pdf14trans_params_s* %pparams) #0 {
entry:
  %retval = alloca i32, align 4
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %pdev.addr = alloca %struct.gx_device_s*, align 8
  %pparams.addr = alloca %struct.gs_pdf14trans_params_s*, align 8
  %tmp = alloca %struct.gx_transparency_mask_params_s, align 8
  %l = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %pdev, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  store %struct.gs_pdf14trans_params_s* %pparams, %struct.gs_pdf14trans_params_s** %pparams.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_transparency_mask_params_s* %tmp to i8*
  call void @llvm.lifetime.start(i64 568, i8* %0) #1
  %1 = bitcast i32* %l to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load %struct.gs_pdf14trans_params_s*, %struct.gs_pdf14trans_params_s** %pparams.addr, align 8, !tbaa !1
  %Background_components = getelementptr inbounds %struct.gs_pdf14trans_params_s, %struct.gs_pdf14trans_params_s* %2, i32 0, i32 9
  %3 = load i32, i32* %Background_components, align 4, !tbaa !100
  %conv = sext i32 %3 to i64
  %mul = mul i64 4, %conv
  %conv2 = trunc i64 %mul to i32
  store i32 %conv2, i32* %l, align 4, !tbaa !27
  %4 = load %struct.gs_pdf14trans_params_s*, %struct.gs_pdf14trans_params_s** %pparams.addr, align 8, !tbaa !1
  %group_color = getelementptr inbounds %struct.gs_pdf14trans_params_s, %struct.gs_pdf14trans_params_s* %4, i32 0, i32 28
  %5 = load i32, i32* %group_color, align 4, !tbaa !65
  %group_color3 = getelementptr inbounds %struct.gx_transparency_mask_params_s, %struct.gx_transparency_mask_params_s* %tmp, i32 0, i32 2
  store i32 %5, i32* %group_color3, align 4, !tbaa !135
  %6 = load %struct.gs_pdf14trans_params_s*, %struct.gs_pdf14trans_params_s** %pparams.addr, align 8, !tbaa !1
  %subtype = getelementptr inbounds %struct.gs_pdf14trans_params_s, %struct.gs_pdf14trans_params_s* %6, i32 0, i32 8
  %7 = load i32, i32* %subtype, align 4, !tbaa !127
  %subtype4 = getelementptr inbounds %struct.gx_transparency_mask_params_s, %struct.gx_transparency_mask_params_s* %tmp, i32 0, i32 0
  store i32 %7, i32* %subtype4, align 4, !tbaa !137
  %8 = load %struct.gs_pdf14trans_params_s*, %struct.gs_pdf14trans_params_s** %pparams.addr, align 8, !tbaa !1
  %group_color_numcomps = getelementptr inbounds %struct.gs_pdf14trans_params_s, %struct.gs_pdf14trans_params_s* %8, i32 0, i32 27
  %9 = load i32, i32* %group_color_numcomps, align 4, !tbaa !66
  %group_color_numcomps5 = getelementptr inbounds %struct.gx_transparency_mask_params_s, %struct.gx_transparency_mask_params_s* %tmp, i32 0, i32 1
  store i32 %9, i32* %group_color_numcomps5, align 4, !tbaa !138
  %10 = load %struct.gs_pdf14trans_params_s*, %struct.gs_pdf14trans_params_s** %pparams.addr, align 8, !tbaa !1
  %Background_components6 = getelementptr inbounds %struct.gs_pdf14trans_params_s, %struct.gs_pdf14trans_params_s* %10, i32 0, i32 9
  %11 = load i32, i32* %Background_components6, align 4, !tbaa !100
  %Background_components7 = getelementptr inbounds %struct.gx_transparency_mask_params_s, %struct.gx_transparency_mask_params_s* %tmp, i32 0, i32 3
  store i32 %11, i32* %Background_components7, align 4, !tbaa !139
  %Background = getelementptr inbounds %struct.gx_transparency_mask_params_s, %struct.gx_transparency_mask_params_s* %tmp, i32 0, i32 4
  %arraydecay = getelementptr inbounds [64 x float], [64 x float]* %Background, i32 0, i32 0
  %12 = bitcast float* %arraydecay to i8*
  %13 = load %struct.gs_pdf14trans_params_s*, %struct.gs_pdf14trans_params_s** %pparams.addr, align 8, !tbaa !1
  %Background8 = getelementptr inbounds %struct.gs_pdf14trans_params_s, %struct.gs_pdf14trans_params_s* %13, i32 0, i32 11
  %arraydecay9 = getelementptr inbounds [64 x float], [64 x float]* %Background8, i32 0, i32 0
  %14 = bitcast float* %arraydecay9 to i8*
  %15 = load i32, i32* %l, align 4, !tbaa !27
  %conv10 = sext i32 %15 to i64
  %call = call i8* @memcpy(i8* %12, i8* %14, i64 %conv10) #6
  %16 = load %struct.gs_pdf14trans_params_s*, %struct.gs_pdf14trans_params_s** %pparams.addr, align 8, !tbaa !1
  %GrayBackground = getelementptr inbounds %struct.gs_pdf14trans_params_s, %struct.gs_pdf14trans_params_s* %16, i32 0, i32 12
  %17 = load float, float* %GrayBackground, align 4, !tbaa !128
  %GrayBackground11 = getelementptr inbounds %struct.gx_transparency_mask_params_s, %struct.gx_transparency_mask_params_s* %tmp, i32 0, i32 5
  store float %17, float* %GrayBackground11, align 4, !tbaa !140
  %18 = load %struct.gs_pdf14trans_params_s*, %struct.gs_pdf14trans_params_s** %pparams.addr, align 8, !tbaa !1
  %function_is_identity = getelementptr inbounds %struct.gs_pdf14trans_params_s, %struct.gs_pdf14trans_params_s* %18, i32 0, i32 10
  %19 = load i32, i32* %function_is_identity, align 4, !tbaa !130
  %function_is_identity12 = getelementptr inbounds %struct.gx_transparency_mask_params_s, %struct.gx_transparency_mask_params_s* %tmp, i32 0, i32 6
  store i32 %19, i32* %function_is_identity12, align 4, !tbaa !141
  %20 = load %struct.gs_pdf14trans_params_s*, %struct.gs_pdf14trans_params_s** %pparams.addr, align 8, !tbaa !1
  %idle = getelementptr inbounds %struct.gs_pdf14trans_params_s, %struct.gs_pdf14trans_params_s* %20, i32 0, i32 25
  %21 = load i32, i32* %idle, align 4, !tbaa !101
  %idle13 = getelementptr inbounds %struct.gx_transparency_mask_params_s, %struct.gx_transparency_mask_params_s* %tmp, i32 0, i32 7
  store i32 %21, i32* %idle13, align 4, !tbaa !142
  %22 = load %struct.gs_pdf14trans_params_s*, %struct.gs_pdf14trans_params_s** %pparams.addr, align 8, !tbaa !1
  %replacing = getelementptr inbounds %struct.gs_pdf14trans_params_s, %struct.gs_pdf14trans_params_s* %22, i32 0, i32 21
  %23 = load i32, i32* %replacing, align 4, !tbaa !132
  %replacing14 = getelementptr inbounds %struct.gx_transparency_mask_params_s, %struct.gx_transparency_mask_params_s* %tmp, i32 0, i32 8
  store i32 %23, i32* %replacing14, align 4, !tbaa !143
  %24 = load %struct.gs_pdf14trans_params_s*, %struct.gs_pdf14trans_params_s** %pparams.addr, align 8, !tbaa !1
  %mask_id = getelementptr inbounds %struct.gs_pdf14trans_params_s, %struct.gs_pdf14trans_params_s* %24, i32 0, i32 26
  %25 = load i32, i32* %mask_id, align 4, !tbaa !103
  %mask_id15 = getelementptr inbounds %struct.gx_transparency_mask_params_s, %struct.gx_transparency_mask_params_s* %tmp, i32 0, i32 9
  store i32 %25, i32* %mask_id15, align 4, !tbaa !144
  %group_color16 = getelementptr inbounds %struct.gx_transparency_mask_params_s, %struct.gx_transparency_mask_params_s* %tmp, i32 0, i32 2
  %26 = load i32, i32* %group_color16, align 4, !tbaa !135
  %cmp = icmp eq i32 %26, 5
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %27 = load %struct.gs_pdf14trans_params_s*, %struct.gs_pdf14trans_params_s** %pparams.addr, align 8, !tbaa !1
  %iccprofile = getelementptr inbounds %struct.gs_pdf14trans_params_s, %struct.gs_pdf14trans_params_s* %27, i32 0, i32 30
  %28 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %iccprofile, align 8, !tbaa !72
  %iccprofile18 = getelementptr inbounds %struct.gx_transparency_mask_params_s, %struct.gx_transparency_mask_params_s* %tmp, i32 0, i32 12
  store %struct.cmm_profile_s* %28, %struct.cmm_profile_s** %iccprofile18, align 8, !tbaa !145
  %29 = load %struct.gs_pdf14trans_params_s*, %struct.gs_pdf14trans_params_s** %pparams.addr, align 8, !tbaa !1
  %icc_hash = getelementptr inbounds %struct.gs_pdf14trans_params_s, %struct.gs_pdf14trans_params_s* %29, i32 0, i32 29
  %30 = load i64, i64* %icc_hash, align 8, !tbaa !74
  %icc_hashcode = getelementptr inbounds %struct.gx_transparency_mask_params_s, %struct.gx_transparency_mask_params_s* %tmp, i32 0, i32 11
  store i64 %30, i64* %icc_hashcode, align 8, !tbaa !146
  br label %if.end

if.else:                                          ; preds = %entry
  %iccprofile19 = getelementptr inbounds %struct.gx_transparency_mask_params_s, %struct.gx_transparency_mask_params_s* %tmp, i32 0, i32 12
  store %struct.cmm_profile_s* null, %struct.cmm_profile_s** %iccprofile19, align 8, !tbaa !145
  %icc_hashcode20 = getelementptr inbounds %struct.gx_transparency_mask_params_s, %struct.gx_transparency_mask_params_s* %tmp, i32 0, i32 11
  store i64 0, i64* %icc_hashcode20, align 8, !tbaa !146
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %transfer_fn = getelementptr inbounds %struct.gx_transparency_mask_params_s, %struct.gx_transparency_mask_params_s* %tmp, i32 0, i32 10
  %arraydecay21 = getelementptr inbounds [256 x i8], [256 x i8]* %transfer_fn, i32 0, i32 0
  %31 = load %struct.gs_pdf14trans_params_s*, %struct.gs_pdf14trans_params_s** %pparams.addr, align 8, !tbaa !1
  %transfer_fn22 = getelementptr inbounds %struct.gs_pdf14trans_params_s, %struct.gs_pdf14trans_params_s* %31, i32 0, i32 14
  %arraydecay23 = getelementptr inbounds [256 x i8], [256 x i8]* %transfer_fn22, i32 0, i32 0
  %call24 = call i8* @memcpy(i8* %arraydecay21, i8* %arraydecay23, i64 256) #6
  br label %do.body

do.body:                                          ; preds = %if.end
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %32 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %32, i32 0, i32 42
  %begin_transparency_mask = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 46
  %33 = load i32 (%struct.gx_device_s*, %struct.gx_transparency_mask_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gx_device_s*, %struct.gx_transparency_mask_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)** %begin_transparency_mask, align 8, !tbaa !147
  %cmp25 = icmp ne i32 (%struct.gx_device_s*, %struct.gx_transparency_mask_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* %33, null
  br i1 %cmp25, label %if.then.27, label %if.else.31

if.then.27:                                       ; preds = %do.end
  %34 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %procs28 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %34, i32 0, i32 42
  %begin_transparency_mask29 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs28, i32 0, i32 46
  %35 = load i32 (%struct.gx_device_s*, %struct.gx_transparency_mask_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gx_device_s*, %struct.gx_transparency_mask_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)** %begin_transparency_mask29, align 8, !tbaa !147
  %36 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %37 = load %struct.gs_pdf14trans_params_s*, %struct.gs_pdf14trans_params_s** %pparams.addr, align 8, !tbaa !1
  %bbox = getelementptr inbounds %struct.gs_pdf14trans_params_s, %struct.gs_pdf14trans_params_s* %37, i32 0, i32 6
  %38 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %call30 = call i32 %35(%struct.gx_device_s* %36, %struct.gx_transparency_mask_params_s* %tmp, %struct.gs_rect_s* %bbox, %struct.gs_imager_state_s* %38, %struct.gs_memory_s* null) #5
  store i32 %call30, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else.31:                                       ; preds = %do.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.else.31, %if.then.27
  %39 = bitcast i32* %l to i8*
  call void @llvm.lifetime.end(i64 4, i8* %39) #1
  %40 = bitcast %struct.gx_transparency_mask_params_s* %tmp to i8*
  call void @llvm.lifetime.end(i64 568, i8* %40) #1
  %41 = load i32, i32* %retval
  ret i32 %41
}

; Function Attrs: nounwind uwtable
define i32 @gs_end_transparency_mask(%struct.gs_state_s* %pgs, i32 %csel) #0 {
entry:
  %retval = alloca i32, align 4
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %csel.addr = alloca i32, align 4
  %params = alloca %struct.gs_pdf14trans_params_s, align 8
  %params_color = alloca %struct.gs_pdf14trans_params_s, align 8
  %pis = alloca %struct.gs_imager_state_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  store i32 %csel, i32* %csel.addr, align 4, !tbaa !5
  %0 = bitcast %struct.gs_pdf14trans_params_s* %params to i8*
  call void @llvm.lifetime.start(i64 704, i8* %0) #1
  %1 = bitcast %struct.gs_pdf14trans_params_s* %params to i8*
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 704, i32 8, i1 false)
  %2 = bitcast %struct.gs_pdf14trans_params_s* %params_color to i8*
  call void @llvm.lifetime.start(i64 704, i8* %2) #1
  %3 = bitcast %struct.gs_pdf14trans_params_s* %params_color to i8*
  call void @llvm.memset.p0i8.i64(i8* %3, i8 0, i64 704, i32 8, i1 false)
  %4 = bitcast %struct.gs_imager_state_s** %pis to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %6 = bitcast %struct.gs_state_s* %5 to %struct.gs_imager_state_s*
  store %struct.gs_imager_state_s* %6, %struct.gs_imager_state_s** %pis, align 8, !tbaa !1
  %7 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %call = call i32 @check_for_nontrans_pattern(%struct.gs_state_s* %8, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i32 0, i32 0)) #5
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis, align 8, !tbaa !1
  %trans_flags = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %9, i32 0, i32 15
  %xstate_change = getelementptr inbounds %struct.gs_xstate_trans_flags, %struct.gs_xstate_trans_flags* %trans_flags, i32 0, i32 1
  store i32 1, i32* %xstate_change, align 4, !tbaa !115
  br label %do.body

do.body:                                          ; preds = %if.end
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  br label %do.cond.2

do.cond.2:                                        ; preds = %do.body.1
  br label %do.end.3

do.end.3:                                         ; preds = %do.cond.2
  %pdf14_op = getelementptr inbounds %struct.gs_pdf14trans_params_s, %struct.gs_pdf14trans_params_s* %params, i32 0, i32 0
  store i32 6, i32* %pdf14_op, align 4, !tbaa !36
  %10 = load i32, i32* %csel.addr, align 4, !tbaa !5
  %csel4 = getelementptr inbounds %struct.gs_pdf14trans_params_s, %struct.gs_pdf14trans_params_s* %params, i32 0, i32 7
  store i32 %10, i32* %csel4, align 4, !tbaa !148
  br label %do.body.5

do.body.5:                                        ; preds = %do.end.3
  br label %do.cond.6

do.cond.6:                                        ; preds = %do.body.5
  br label %do.end.7

do.end.7:                                         ; preds = %do.cond.6
  %pdf14_op8 = getelementptr inbounds %struct.gs_pdf14trans_params_s, %struct.gs_pdf14trans_params_s* %params_color, i32 0, i32 0
  store i32 11, i32* %pdf14_op8, align 4, !tbaa !36
  %11 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %call9 = call i32 @gs_state_update_pdf14trans(%struct.gs_state_s* %11, %struct.gs_pdf14trans_params_s* %params_color) #5
  store i32 %call9, i32* %code, align 4, !tbaa !27
  %12 = load i32, i32* %code, align 4, !tbaa !27
  %cmp = icmp slt i32 %12, 0
  br i1 %cmp, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %do.end.7
  %13 = load i32, i32* %code, align 4, !tbaa !27
  store i32 %13, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.11:                                        ; preds = %do.end.7
  %14 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %call12 = call i32 @gs_state_update_pdf14trans(%struct.gs_state_s* %14, %struct.gs_pdf14trans_params_s* %params) #5
  store i32 %call12, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.11, %if.then.10, %if.then
  %15 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %15) #1
  %16 = bitcast %struct.gs_imager_state_s** %pis to i8*
  call void @llvm.lifetime.end(i64 8, i8* %16) #1
  %17 = bitcast %struct.gs_pdf14trans_params_s* %params_color to i8*
  call void @llvm.lifetime.end(i64 704, i8* %17) #1
  %18 = bitcast %struct.gs_pdf14trans_params_s* %params to i8*
  call void @llvm.lifetime.end(i64 704, i8* %18) #1
  %19 = load i32, i32* %retval
  ret i32 %19
}

; Function Attrs: nounwind uwtable
define i32 @gx_end_transparency_mask(%struct.gs_imager_state_s* %pis, %struct.gx_device_s* %pdev, %struct.gs_pdf14trans_params_s* %pparams) #0 {
entry:
  %retval = alloca i32, align 4
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %pdev.addr = alloca %struct.gx_device_s*, align 8
  %pparams.addr = alloca %struct.gs_pdf14trans_params_s*, align 8
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %pdev, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  store %struct.gs_pdf14trans_params_s* %pparams, %struct.gs_pdf14trans_params_s** %pparams.addr, align 8, !tbaa !1
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %0, i32 0, i32 42
  %end_transparency_mask = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 47
  %1 = load i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)** %end_transparency_mask, align 8, !tbaa !149
  %cmp = icmp ne i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* %1, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.end
  %2 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %procs1 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %2, i32 0, i32 42
  %end_transparency_mask2 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs1, i32 0, i32 47
  %3 = load i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)** %end_transparency_mask2, align 8, !tbaa !149
  %4 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %5 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %call = call i32 %3(%struct.gx_device_s* %4, %struct.gs_imager_state_s* %5) #5
  store i32 %call, i32* %retval
  br label %return

if.else:                                          ; preds = %do.end
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %6 = load i32, i32* %retval
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define i32 @gs_push_pdf14trans_device(%struct.gs_state_s* %pgs, i32 %is_pattern) #0 {
entry:
  %retval = alloca i32, align 4
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %is_pattern.addr = alloca i32, align 4
  %params = alloca %struct.gs_pdf14trans_params_s, align 8
  %icc_profile = alloca %struct.cmm_profile_s*, align 8
  %render_cond = alloca %struct.gsicc_rendering_param_s, align 4
  %code = alloca i32, align 4
  %dev_profile = alloca %struct.cmm_dev_profile_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  store i32 %is_pattern, i32* %is_pattern.addr, align 4, !tbaa !27
  %0 = bitcast %struct.gs_pdf14trans_params_s* %params to i8*
  call void @llvm.lifetime.start(i64 704, i8* %0) #1
  %1 = bitcast %struct.gs_pdf14trans_params_s* %params to i8*
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 704, i32 8, i1 false)
  %2 = bitcast %struct.cmm_profile_s** %icc_profile to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = bitcast %struct.gsicc_rendering_param_s* %render_cond to i8*
  call void @llvm.lifetime.start(i64 24, i8* %3) #1
  %4 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast %struct.cmm_dev_profile_s** %dev_profile to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %device = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %6, i32 0, i32 78
  %7 = load %struct.gx_device_s*, %struct.gx_device_s** %device, align 8, !tbaa !39
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %7, i32 0, i32 42
  %get_profile = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 67
  %8 = load i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)*, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)** %get_profile, align 8, !tbaa !150
  %9 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %device1 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %9, i32 0, i32 78
  %10 = load %struct.gx_device_s*, %struct.gx_device_s** %device1, align 8, !tbaa !39
  %call = call i32 %8(%struct.gx_device_s* %10, %struct.cmm_dev_profile_s** %dev_profile) #5
  store i32 %call, i32* %code, align 4, !tbaa !27
  %11 = load i32, i32* %code, align 4, !tbaa !27
  %cmp = icmp slt i32 %11, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %12 = load i32, i32* %code, align 4, !tbaa !27
  store i32 %12, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %13 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %dev_profile, align 8, !tbaa !1
  call void @gsicc_extract_profile(i32 0, %struct.cmm_dev_profile_s* %13, %struct.cmm_profile_s** %icc_profile, %struct.gsicc_rendering_param_s* %render_cond) #5
  %pdf14_op = getelementptr inbounds %struct.gs_pdf14trans_params_s, %struct.gs_pdf14trans_params_s* %params, i32 0, i32 0
  store i32 0, i32* %pdf14_op, align 4, !tbaa !36
  %14 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %call2 = call i32 @get_num_pdf14_spot_colors(%struct.gs_state_s* %14) #5
  %num_spot_colors = getelementptr inbounds %struct.gs_pdf14trans_params_s, %struct.gs_pdf14trans_params_s* %params, i32 0, i32 1
  store i32 %call2, i32* %num_spot_colors, align 4, !tbaa !151
  %15 = load i32, i32* %is_pattern.addr, align 4, !tbaa !27
  %is_pattern3 = getelementptr inbounds %struct.gs_pdf14trans_params_s, %struct.gs_pdf14trans_params_s* %params, i32 0, i32 32
  store i32 %15, i32* %is_pattern3, align 4, !tbaa !152
  %16 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %icc_profile, align 8, !tbaa !1
  %data_cs = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %16, i32 0, i32 5
  %17 = load i32, i32* %data_cs, align 4, !tbaa !153
  %cmp4 = icmp eq i32 %17, 6
  br i1 %cmp4, label %if.then.5, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %18 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %icc_profile, align 8, !tbaa !1
  %islab = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %18, i32 0, i32 2
  %19 = load i32, i32* %islab, align 4, !tbaa !154
  %tobool = icmp ne i32 %19, 0
  br i1 %tobool, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %lor.lhs.false, %if.end
  %20 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %icc_manager = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %20, i32 0, i32 35
  %21 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager, align 8, !tbaa !76
  %default_rgb = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %21, i32 0, i32 2
  %22 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %default_rgb, align 8, !tbaa !79
  %iccprofile = getelementptr inbounds %struct.gs_pdf14trans_params_s, %struct.gs_pdf14trans_params_s* %params, i32 0, i32 30
  store %struct.cmm_profile_s* %22, %struct.cmm_profile_s** %iccprofile, align 8, !tbaa !72
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.5, %lor.lhs.false
  %23 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %call7 = call i32 @gs_state_update_pdf14trans(%struct.gs_state_s* %23, %struct.gs_pdf14trans_params_s* %params) #5
  store i32 %call7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.6, %if.then
  %24 = bitcast %struct.cmm_dev_profile_s** %dev_profile to i8*
  call void @llvm.lifetime.end(i64 8, i8* %24) #1
  %25 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %25) #1
  %26 = bitcast %struct.gsicc_rendering_param_s* %render_cond to i8*
  call void @llvm.lifetime.end(i64 24, i8* %26) #1
  %27 = bitcast %struct.cmm_profile_s** %icc_profile to i8*
  call void @llvm.lifetime.end(i64 8, i8* %27) #1
  %28 = bitcast %struct.gs_pdf14trans_params_s* %params to i8*
  call void @llvm.lifetime.end(i64 704, i8* %28) #1
  %29 = load i32, i32* %retval
  ret i32 %29
}

declare void @gsicc_extract_profile(i32, %struct.cmm_dev_profile_s*, %struct.cmm_profile_s**, %struct.gsicc_rendering_param_s*) #2

; Function Attrs: nounwind uwtable
define internal i32 @get_num_pdf14_spot_colors(%struct.gs_state_s* %pgs) #0 {
entry:
  %retval = alloca i32, align 4
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %dev = alloca %struct.gx_device_s*, align 8
  %pclist_devn_params = alloca %struct.gs_devn_params_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_s** %dev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %device = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %1, i32 0, i32 78
  %2 = load %struct.gx_device_s*, %struct.gx_device_s** %device, align 8, !tbaa !39
  store %struct.gx_device_s* %2, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %3 = bitcast %struct.gs_devn_params_s** %pclist_devn_params to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %4, i32 0, i32 42
  %ret_devn_params = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 60
  %5 = load %struct.gs_devn_params_s* (%struct.gx_device_s*)*, %struct.gs_devn_params_s* (%struct.gx_device_s*)** %ret_devn_params, align 8, !tbaa !155
  %6 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %call = call %struct.gs_devn_params_s* %5(%struct.gx_device_s* %6) #5
  store %struct.gs_devn_params_s* %call, %struct.gs_devn_params_s** %pclist_devn_params, align 8, !tbaa !1
  %7 = load %struct.gs_devn_params_s*, %struct.gs_devn_params_s** %pclist_devn_params, align 8, !tbaa !1
  %cmp = icmp ne %struct.gs_devn_params_s* %7, null
  br i1 %cmp, label %if.then, label %if.end.3

if.then:                                          ; preds = %entry
  %8 = load %struct.gs_devn_params_s*, %struct.gs_devn_params_s** %pclist_devn_params, align 8, !tbaa !1
  %num_separation_order_names = getelementptr inbounds %struct.gs_devn_params_s, %struct.gs_devn_params_s* %8, i32 0, i32 6
  %9 = load i32, i32* %num_separation_order_names, align 4, !tbaa !156
  %cmp1 = icmp eq i32 %9, 0
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %10 = load %struct.gs_devn_params_s*, %struct.gs_devn_params_s** %pclist_devn_params, align 8, !tbaa !1
  %page_spot_colors = getelementptr inbounds %struct.gs_devn_params_s, %struct.gs_devn_params_s* %10, i32 0, i32 4
  %11 = load i32, i32* %page_spot_colors, align 4, !tbaa !159
  store i32 %11, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  %12 = load %struct.gs_devn_params_s*, %struct.gs_devn_params_s** %pclist_devn_params, align 8, !tbaa !1
  %separations = getelementptr inbounds %struct.gs_devn_params_s, %struct.gs_devn_params_s* %12, i32 0, i32 5
  %num_separations = getelementptr inbounds %struct.gs_separations_s, %struct.gs_separations_s* %separations, i32 0, i32 0
  %13 = load i32, i32* %num_separations, align 4, !tbaa !160
  store i32 %13, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.3:                                         ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.3, %if.end, %if.then.2
  %14 = bitcast %struct.gs_devn_params_s** %pclist_devn_params to i8*
  call void @llvm.lifetime.end(i64 8, i8* %14) #1
  %15 = bitcast %struct.gx_device_s** %dev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %15) #1
  %16 = load i32, i32* %retval
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define i32 @gs_pop_pdf14trans_device(%struct.gs_state_s* %pgs, i32 %is_pattern) #0 {
entry:
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %is_pattern.addr = alloca i32, align 4
  %params = alloca %struct.gs_pdf14trans_params_s, align 8
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  store i32 %is_pattern, i32* %is_pattern.addr, align 4, !tbaa !27
  %0 = bitcast %struct.gs_pdf14trans_params_s* %params to i8*
  call void @llvm.lifetime.start(i64 704, i8* %0) #1
  %1 = bitcast %struct.gs_pdf14trans_params_s* %params to i8*
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 704, i32 8, i1 false)
  %2 = load i32, i32* %is_pattern.addr, align 4, !tbaa !27
  %is_pattern1 = getelementptr inbounds %struct.gs_pdf14trans_params_s, %struct.gs_pdf14trans_params_s* %params, i32 0, i32 32
  store i32 %2, i32* %is_pattern1, align 4, !tbaa !152
  %pdf14_op = getelementptr inbounds %struct.gs_pdf14trans_params_s, %struct.gs_pdf14trans_params_s* %params, i32 0, i32 0
  store i32 1, i32* %pdf14_op, align 4, !tbaa !36
  %3 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %call = call i32 @gs_state_update_pdf14trans(%struct.gs_state_s* %3, %struct.gs_pdf14trans_params_s* %params) #5
  %4 = bitcast %struct.gs_pdf14trans_params_s* %params to i8*
  call void @llvm.lifetime.end(i64 704, i8* %4) #1
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @gs_abort_pdf14trans_device(%struct.gs_state_s* %pgs) #0 {
entry:
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %params = alloca %struct.gs_pdf14trans_params_s, align 8
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_pdf14trans_params_s* %params to i8*
  call void @llvm.lifetime.start(i64 704, i8* %0) #1
  %1 = bitcast %struct.gs_pdf14trans_params_s* %params to i8*
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 704, i32 8, i1 false)
  %pdf14_op = getelementptr inbounds %struct.gs_pdf14trans_params_s, %struct.gs_pdf14trans_params_s* %params, i32 0, i32 0
  store i32 2, i32* %pdf14_op, align 4, !tbaa !36
  %2 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %call = call i32 @gs_state_update_pdf14trans(%struct.gs_state_s* %2, %struct.gs_pdf14trans_params_s* %params) #5
  %3 = bitcast %struct.gs_pdf14trans_params_s* %params to i8*
  call void @llvm.lifetime.end(i64 704, i8* %3) #1
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @gx_abort_trans_device(%struct.gs_imager_state_s* %pis, %struct.gx_device_s* %pdev) #0 {
entry:
  %retval = alloca i32, align 4
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %pdev.addr = alloca %struct.gx_device_s*, align 8
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %pdev, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %0, i32 0, i32 42
  %discard_transparency_layer = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 48
  %1 = load i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)** %discard_transparency_layer, align 8, !tbaa !161
  %cmp = icmp ne i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* %1, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.end
  %2 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %procs1 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %2, i32 0, i32 42
  %discard_transparency_layer2 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs1, i32 0, i32 48
  %3 = load i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)** %discard_transparency_layer2, align 8, !tbaa !161
  %4 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %5 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %call = call i32 %3(%struct.gx_device_s* %4, %struct.gs_imager_state_s* %5) #5
  store i32 %call, i32* %retval
  br label %return

if.else:                                          ; preds = %do.end
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %6 = load i32, i32* %retval
  ret i32 %6
}

declare i32 @send_pdf14trans(%struct.gs_imager_state_s*, %struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_pdf14trans_params_s*, %struct.gs_memory_s*) #2

declare void @gx_set_device_only(%struct.gs_state_s*, %struct.gx_device_s*) #2

declare i32 @gs_do_set_overprint(%struct.gs_state_s*) #2

declare i32 @gx_device_is_pattern_clist(%struct.gx_device_s*) #2

declare i32 @gx_device_is_pattern_accum(%struct.gx_device_s*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nobuiltin }
attributes #6 = { nobuiltin nounwind }
attributes #7 = { nobuiltin nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!3, !3, i64 0}
!6 = !{!7, !3, i64 220}
!7 = !{!"gs_state_s", !8, i64 0, !2, i64 8, !2, i64 16, !9, i64 24, !8, i64 128, !13, i64 132, !8, i64 168, !14, i64 176, !14, i64 192, !8, i64 208, !8, i64 212, !16, i64 216, !3, i64 220, !17, i64 224, !17, i64 228, !18, i64 232, !19, i64 240, !8, i64 248, !8, i64 252, !8, i64 256, !2, i64 264, !8, i64 272, !8, i64 276, !8, i64 280, !8, i64 284, !8, i64 288, !8, i64 292, !10, i64 296, !20, i64 300, !8, i64 308, !8, i64 312, !8, i64 316, !10, i64 320, !8, i64 324, !8, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !3, i64 376, !2, i64 392, !2, i64 400, !8, i64 408, !2, i64 416, !2, i64 424, !21, i64 432, !3, i64 496, !2, i64 1008, !2, i64 1016, !22, i64 1024, !2, i64 1304, !2, i64 1312, !2, i64 1320, !2, i64 1328, !22, i64 1336, !2, i64 1616, !11, i64 1624, !8, i64 1648, !11, i64 1652, !8, i64 1676, !2, i64 1680, !2, i64 1688, !2, i64 1696, !2, i64 1704, !19, i64 1712, !19, i64 1720, !2, i64 1728, !8, i64 1736, !3, i64 1744, !2, i64 1792, !2, i64 1800, !13, i64 1808, !8, i64 1844, !3, i64 1848, !3, i64 1852, !2, i64 1856, !8, i64 1864, !2, i64 1872, !2, i64 1880, !23, i64 1888}
!8 = !{!"int", !3, i64 0}
!9 = !{!"gx_line_params_s", !10, i64 0, !3, i64 4, !3, i64 8, !3, i64 12, !3, i64 16, !8, i64 20, !10, i64 24, !10, i64 28, !10, i64 32, !8, i64 36, !11, i64 40, !12, i64 64}
!10 = !{!"float", !3, i64 0}
!11 = !{!"gs_matrix_s", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20}
!12 = !{!"gx_dash_params_s", !2, i64 0, !8, i64 8, !10, i64 12, !8, i64 16, !10, i64 20, !8, i64 24, !8, i64 28, !10, i64 32}
!13 = !{!"gs_matrix_fixed_s", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20, !8, i64 24, !8, i64 28, !8, i64 32}
!14 = !{!"gs_point_s", !15, i64 0, !15, i64 8}
!15 = !{!"double", !3, i64 0}
!16 = !{!"short", !3, i64 0}
!17 = !{!"gs_transparency_source_s", !10, i64 0}
!18 = !{!"gs_xstate_trans_flags", !8, i64 0, !8, i64 4}
!19 = !{!"long", !3, i64 0}
!20 = !{!"gs_fixed_point_s", !8, i64 0, !8, i64 4}
!21 = !{!"gx_transfer_s", !8, i64 0, !2, i64 8, !8, i64 16, !2, i64 24, !8, i64 32, !2, i64 40, !8, i64 48, !2, i64 56}
!22 = !{!"gs_devicen_color_map_s", !8, i64 0, !3, i64 4, !8, i64 8, !8, i64 12, !19, i64 16, !3, i64 24}
!23 = !{!"gs_state_client_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24}
!24 = !{!15, !15, i64 0}
!25 = !{!7, !10, i64 224}
!26 = !{!7, !10, i64 228}
!27 = !{!8, !8, i64 0}
!28 = !{!7, !8, i64 248}
!29 = !{!30, !2, i64 0}
!30 = !{!"gs_transparency_group_params_s", !2, i64 0, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !3, i64 32, !19, i64 40, !2, i64 48}
!31 = !{!30, !8, i64 8}
!32 = !{!30, !8, i64 12}
!33 = !{!30, !8, i64 16}
!34 = !{!30, !8, i64 24}
!35 = !{!30, !2, i64 48}
!36 = !{!37, !3, i64 0}
!37 = !{!"gs_pdf14trans_params_s", !3, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !38, i64 24, !3, i64 56, !3, i64 60, !8, i64 64, !8, i64 68, !3, i64 72, !10, i64 328, !2, i64 336, !3, i64 344, !3, i64 600, !8, i64 604, !17, i64 608, !17, i64 612, !8, i64 616, !11, i64 620, !8, i64 644, !8, i64 648, !8, i64 652, !8, i64 656, !8, i64 660, !8, i64 664, !8, i64 668, !3, i64 672, !19, i64 680, !2, i64 688, !8, i64 696, !8, i64 700}
!38 = !{!"gs_rect_s", !14, i64 0, !14, i64 16}
!39 = !{!7, !2, i64 1872}
!40 = !{!41, !8, i64 100}
!41 = !{!"gx_device_s", !8, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !8, i64 40, !2, i64 48, !42, i64 56, !8, i64 80, !8, i64 84, !8, i64 88, !43, i64 96, !45, i64 816, !8, i64 832, !8, i64 836, !8, i64 840, !8, i64 844, !8, i64 848, !8, i64 852, !3, i64 856, !3, i64 864, !8, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !19, i64 928, !19, i64 936, !8, i64 944, !8, i64 948, !8, i64 952, !8, i64 956, !8, i64 960, !19, i64 968, !19, i64 976, !46, i64 984, !8, i64 1052, !8, i64 1056, !47, i64 1064, !2, i64 1104, !3, i64 1112, !49, i64 1120, !50, i64 1144}
!42 = !{!"rc_header_s", !19, i64 0, !2, i64 8, !2, i64 16}
!43 = !{!"gx_device_color_info_s", !8, i64 0, !8, i64 4, !3, i64 8, !16, i64 12, !3, i64 14, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !44, i64 32, !3, i64 40, !3, i64 44, !3, i64 108, !3, i64 176, !2, i64 688, !3, i64 696, !19, i64 704, !8, i64 712}
!44 = !{!"gx_device_anti_alias_info_s", !8, i64 0, !8, i64 4}
!45 = !{!"gx_device_cached_colors_s", !19, i64 0, !19, i64 8}
!46 = !{!"gx_stroked_gradient_recognizer_s", !8, i64 0, !3, i64 4, !3, i64 36}
!47 = !{!"gdev_space_params_s", !19, i64 0, !19, i64 8, !48, i64 16, !8, i64 32, !3, i64 36}
!48 = !{!"gx_band_params_s", !8, i64 0, !8, i64 4, !19, i64 8}
!49 = !{!"gx_page_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16}
!50 = !{!"gx_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176, !2, i64 184, !2, i64 192, !2, i64 200, !2, i64 208, !2, i64 216, !2, i64 224, !2, i64 232, !2, i64 240, !2, i64 248, !2, i64 256, !2, i64 264, !2, i64 272, !2, i64 280, !2, i64 288, !2, i64 296, !2, i64 304, !2, i64 312, !2, i64 320, !2, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !2, i64 376, !2, i64 384, !2, i64 392, !2, i64 400, !2, i64 408, !2, i64 416, !2, i64 424, !2, i64 432, !2, i64 440, !2, i64 448, !2, i64 456, !2, i64 464, !2, i64 472, !2, i64 480, !2, i64 488, !2, i64 496, !2, i64 504, !2, i64 512, !2, i64 520, !2, i64 528, !2, i64 536, !2, i64 544, !2, i64 552, !2, i64 560, !2, i64 568, !2, i64 576}
!51 = !{!7, !2, i64 8}
!52 = !{!7, !8, i64 272}
!53 = !{!37, !8, i64 12}
!54 = !{!37, !8, i64 16}
!55 = !{!37, !8, i64 20}
!56 = !{i64 0, i64 4, !57}
!57 = !{!10, !10, i64 0}
!58 = !{!37, !3, i64 600}
!59 = !{!60, !2, i64 0}
!60 = !{!"", !2, i64 0, !2, i64 8, !2, i64 16}
!61 = !{!62, !2, i64 0}
!62 = !{!"gs_color_space_s", !2, i64 0, !42, i64 8, !19, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !3, i64 72}
!63 = !{!64, !2, i64 48}
!64 = !{!"gs_color_space_type_s", !3, i64 0, !8, i64 4, !8, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128}
!65 = !{!37, !3, i64 672}
!66 = !{!37, !8, i64 668}
!67 = !{!62, !2, i64 64}
!68 = !{!69, !3, i64 0}
!69 = !{!"cmm_profile_s", !3, i64 0, !3, i64 1, !8, i64 4, !8, i64 8, !3, i64 12, !3, i64 16, !70, i64 20, !19, i64 144, !8, i64 152, !3, i64 156, !8, i64 216, !8, i64 220, !8, i64 224, !71, i64 228, !2, i64 256, !2, i64 264, !2, i64 272, !2, i64 280, !42, i64 288, !8, i64 312, !2, i64 320, !2, i64 328, !2, i64 336}
!70 = !{!"gs_range_icc_s", !3, i64 0}
!71 = !{!"gsicc_rendering_param_s", !3, i64 0, !3, i64 4, !3, i64 8, !3, i64 12, !3, i64 16, !8, i64 20}
!72 = !{!37, !2, i64 688}
!73 = !{!69, !19, i64 144}
!74 = !{!37, !19, i64 680}
!75 = !{!64, !2, i64 24}
!76 = !{!7, !2, i64 336}
!77 = !{!78, !2, i64 8}
!78 = !{!"gsicc_manager_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !8, i64 64, !2, i64 72, !2, i64 80, !42, i64 88}
!79 = !{!78, !2, i64 16}
!80 = !{!78, !2, i64 24}
!81 = !{i64 0, i64 8, !24, i64 8, i64 8, !24, i64 16, i64 8, !24, i64 24, i64 8, !24}
!82 = !{!83, !2, i64 12176}
!83 = !{!"gx_device_clist_writer_s", !8, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !8, i64 40, !2, i64 48, !42, i64 56, !8, i64 80, !8, i64 84, !8, i64 88, !43, i64 96, !45, i64 816, !8, i64 832, !8, i64 836, !8, i64 840, !8, i64 844, !8, i64 848, !8, i64 852, !3, i64 856, !3, i64 864, !8, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !19, i64 928, !19, i64 936, !8, i64 944, !8, i64 948, !8, i64 952, !8, i64 956, !8, i64 960, !19, i64 968, !19, i64 976, !46, i64 984, !8, i64 1052, !8, i64 1056, !47, i64 1064, !2, i64 1104, !3, i64 1112, !49, i64 1120, !50, i64 1144, !2, i64 1728, !84, i64 1736, !2, i64 1768, !2, i64 1776, !8, i64 1784, !48, i64 1792, !8, i64 1808, !8, i64 1812, !85, i64 1816, !86, i64 1840, !8, i64 1864, !8, i64 1868, !2, i64 1872, !8, i64 1880, !8, i64 1884, !87, i64 1888, !8, i64 10144, !19, i64 10152, !2, i64 10160, !2, i64 10168, !8, i64 10176, !2, i64 10184, !8, i64 10192, !2, i64 10200, !2, i64 10208, !2, i64 10216, !2, i64 10224, !2, i64 10232, !88, i64 10240, !8, i64 10256, !8, i64 10260, !8, i64 10264, !8, i64 10268, !89, i64 10272, !8, i64 10320, !8, i64 10324, !8, i64 10328, !91, i64 10336, !8, i64 11952, !8, i64 11956, !8, i64 11960, !8, i64 11964, !3, i64 11968, !2, i64 12016, !19, i64 12024, !92, i64 12032, !3, i64 12080, !19, i64 12112, !19, i64 12120, !19, i64 12128, !19, i64 12136, !8, i64 12144, !8, i64 12148, !8, i64 12152, !8, i64 12156, !2, i64 12160, !8, i64 12168, !2, i64 12176, !8, i64 12184, !8, i64 12188, !8, i64 12192, !8, i64 12196, !8, i64 12200, !8, i64 12204, !2, i64 12208, !19, i64 12216, !8, i64 12224, !8, i64 12228, !8, i64 12232, !8, i64 12236, !43, i64 12240}
!84 = !{!"gx_device_buf_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24}
!85 = !{!"gx_bits_cache_chunk_s", !2, i64 0, !2, i64 8, !8, i64 16, !8, i64 20}
!86 = !{!"gx_bits_cache_s", !2, i64 0, !8, i64 8, !8, i64 12, !8, i64 16}
!87 = !{!"gx_band_page_info_s", !3, i64 0, !2, i64 4096, !3, i64 4104, !2, i64 8200, !2, i64 8208, !8, i64 8216, !19, i64 8224, !19, i64 8232, !48, i64 8240}
!88 = !{!"cmd_list_s", !2, i64 0, !2, i64 8}
!89 = !{!"gx_strip_bitmap_s", !2, i64 0, !8, i64 8, !90, i64 12, !19, i64 24, !16, i64 32, !16, i64 34, !16, i64 36, !16, i64 38, !8, i64 40}
!90 = !{!"gs_int_point_s", !8, i64 0, !8, i64 4}
!91 = !{!"gs_imager_state_s", !8, i64 0, !2, i64 8, !2, i64 16, !9, i64 24, !8, i64 128, !13, i64 132, !8, i64 168, !14, i64 176, !14, i64 192, !8, i64 208, !8, i64 212, !16, i64 216, !3, i64 220, !17, i64 224, !17, i64 228, !18, i64 232, !19, i64 240, !8, i64 248, !8, i64 252, !8, i64 256, !2, i64 264, !8, i64 272, !8, i64 276, !8, i64 280, !8, i64 284, !8, i64 288, !8, i64 292, !10, i64 296, !20, i64 300, !8, i64 308, !8, i64 312, !8, i64 316, !10, i64 320, !8, i64 324, !8, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !3, i64 376, !2, i64 392, !2, i64 400, !8, i64 408, !2, i64 416, !2, i64 424, !21, i64 432, !3, i64 496, !2, i64 1008, !2, i64 1016, !22, i64 1024, !2, i64 1304, !2, i64 1312, !2, i64 1320, !2, i64 1328, !22, i64 1336}
!92 = !{!"clist_color_space_s", !3, i64 0, !19, i64 8, !93, i64 16, !2, i64 40}
!93 = !{!"clist_icc_color_s", !19, i64 0, !3, i64 8, !8, i64 12, !3, i64 16, !3, i64 20}
!94 = !{!95, !8, i64 96}
!95 = !{!"gs_pattern1_instance_s", !42, i64 0, !2, i64 24, !2, i64 32, !19, i64 40, !96, i64 48, !11, i64 152, !38, i64 176, !8, i64 208, !8, i64 212, !8, i64 216, !8, i64 220, !8, i64 224, !90, i64 228, !19, i64 240}
!96 = !{!"gs_pattern1_template_s", !2, i64 0, !8, i64 8, !97, i64 16, !2, i64 32, !8, i64 40, !8, i64 44, !8, i64 48, !38, i64 56, !10, i64 88, !10, i64 92, !2, i64 96}
!97 = !{!"gs_uid_s", !19, i64 0, !2, i64 8}
!98 = !{!99, !2, i64 1744}
!99 = !{!"gx_device_pattern_accum_s", !8, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !8, i64 40, !2, i64 48, !42, i64 56, !8, i64 80, !8, i64 84, !8, i64 88, !43, i64 96, !45, i64 816, !8, i64 832, !8, i64 836, !8, i64 840, !8, i64 844, !8, i64 848, !8, i64 852, !3, i64 856, !3, i64 864, !8, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !19, i64 928, !19, i64 936, !8, i64 944, !8, i64 948, !8, i64 952, !8, i64 956, !8, i64 960, !19, i64 968, !19, i64 976, !46, i64 984, !8, i64 1052, !8, i64 1056, !47, i64 1064, !2, i64 1104, !3, i64 1112, !49, i64 1120, !50, i64 1144, !2, i64 1728, !2, i64 1736, !2, i64 1744, !2, i64 1752, !2, i64 1760, !2, i64 1768}
!100 = !{!37, !8, i64 64}
!101 = !{!37, !8, i64 660}
!102 = !{!30, !8, i64 20}
!103 = !{!37, !8, i64 664}
!104 = !{!30, !3, i64 32}
!105 = !{!30, !8, i64 28}
!106 = !{!30, !19, i64 40}
!107 = !{!37, !10, i64 608}
!108 = !{!91, !10, i64 224}
!109 = !{!37, !10, i64 612}
!110 = !{!91, !10, i64 228}
!111 = !{!91, !3, i64 220}
!112 = !{!41, !2, i64 1496}
!113 = !{!7, !8, i64 0}
!114 = !{!41, !2, i64 1504}
!115 = !{!91, !8, i64 236}
!116 = !{!41, !2, i64 1648}
!117 = !{!41, !2, i64 1640}
!118 = !{!119, !2, i64 0}
!119 = !{!"gs_transparency_mask_params_s", !2, i64 0, !3, i64 8, !8, i64 12, !3, i64 16, !10, i64 272, !2, i64 280, !2, i64 288, !8, i64 296, !19, i64 304, !2, i64 312}
!120 = !{!119, !3, i64 8}
!121 = !{!119, !8, i64 12}
!122 = !{!119, !10, i64 272}
!123 = !{!119, !2, i64 280}
!124 = !{!119, !2, i64 288}
!125 = !{!119, !8, i64 296}
!126 = !{!119, !2, i64 312}
!127 = !{!37, !3, i64 60}
!128 = !{!37, !10, i64 328}
!129 = !{!37, !2, i64 336}
!130 = !{!37, !8, i64 68}
!131 = !{!37, !8, i64 616}
!132 = !{!37, !8, i64 644}
!133 = !{!78, !2, i64 56}
!134 = !{!69, !19, i64 288}
!135 = !{!136, !3, i64 8}
!136 = !{!"gx_transparency_mask_params_s", !3, i64 0, !8, i64 4, !3, i64 8, !8, i64 12, !3, i64 16, !10, i64 272, !8, i64 276, !8, i64 280, !8, i64 284, !8, i64 288, !3, i64 292, !19, i64 552, !2, i64 560}
!137 = !{!136, !3, i64 0}
!138 = !{!136, !8, i64 4}
!139 = !{!136, !8, i64 12}
!140 = !{!136, !10, i64 272}
!141 = !{!136, !8, i64 276}
!142 = !{!136, !8, i64 280}
!143 = !{!136, !8, i64 284}
!144 = !{!136, !8, i64 288}
!145 = !{!136, !2, i64 560}
!146 = !{!136, !19, i64 552}
!147 = !{!41, !2, i64 1512}
!148 = !{!37, !3, i64 56}
!149 = !{!41, !2, i64 1520}
!150 = !{!41, !2, i64 1680}
!151 = !{!37, !8, i64 4}
!152 = !{!37, !8, i64 700}
!153 = !{!69, !3, i64 16}
!154 = !{!69, !8, i64 4}
!155 = !{!41, !2, i64 1624}
!156 = !{!157, !8, i64 1064}
!157 = !{!"gs_devn_params_s", !8, i64 0, !2, i64 8, !8, i64 16, !8, i64 20, !8, i64 24, !158, i64 32, !8, i64 1064, !3, i64 1068, !2, i64 1352, !2, i64 1360, !158, i64 1368}
!158 = !{!"gs_separations_s", !8, i64 0, !3, i64 8}
!159 = !{!157, !8, i64 24}
!160 = !{!157, !8, i64 32}
!161 = !{!41, !2, i64 1528}
