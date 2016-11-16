; ModuleID = './gxp1fill.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gx_device_color_type_s = type { %struct.gs_memory_struct_type_s*, void (%struct.gx_device_color_s*, %struct.gx_device_color_saved_s*)*, %struct.gx_device_halftone_s* (%struct.gx_device_color_s*)*, i32 (%struct.gx_device_color_s*, %struct.gs_int_point_s*)*, i32 (%struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, {}*, i32 (%struct.gx_device_color_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_s*, i32, i32)*, i32 (%struct.gx_device_color_s*, %struct.gx_device_color_s*)*, i32 (%struct.gx_device_color_s*, %struct.gx_device_color_saved_s*, %struct.gx_device_s*, i64, i8*, i32*)*, i32 (%struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_device_s*, i64, i8*, i32, %struct.gs_memory_s*)*, i32 (%struct.gx_device_color_s*, %struct.gx_device_s*, i64*)* }
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
%struct.gx_transfer_map_s = type { %struct.rc_header_s, float (double, %struct.gx_transfer_map_s*)*, %struct.gs_mapping_closure_s, i64, [256 x i16] }
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
%struct.stream_s = type opaque
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
%struct.gs_halftone_s = type { i32, %struct.rc_header_s, %union.anon.3 }
%union.anon.3 = type { %struct.gs_colorscreen_halftone_s }
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
%struct.gx_path_s = type opaque
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
%struct.gx_clist_state_s = type { [2 x i64], %struct.gx_device_color_saved_s, i32, i64, i64, %struct.gs_int_point_s, [2 x i64], [2 x %struct.gx_device_color_s], %struct.gx_cmd_rect, i32, i16, i16, i32, i32, i32, %struct.cmd_list_s, %struct.gx_colors_usage_s }
%struct.gx_device_color_saved_s = type { %struct.gx_device_color_type_s*, %union._svc, %struct.gs_int_point_s }
%union._svc = type { %struct._svbin, [304 x i8] }
%struct._svbin = type { [2 x i64], i32, i32 }
%struct.gx_cmd_rect = type { i32, i32, i32, i32 }
%struct.cmd_list_s = type { %struct.cmd_prefix_s*, %struct.cmd_prefix_s* }
%struct.cmd_prefix_s = type { %struct.cmd_prefix_s*, i32, i64 }
%struct.gx_clip_path_s = type opaque
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
%struct.tile_fill_state_s = type { %struct.gx_device_color_s*, i32, i32, i32, i32, i32, %struct.gx_rop_source_s*, %struct.gx_device_mask_clip_s*, %struct.gx_device_s*, %struct.gx_strip_bitmap_s*, %struct.gs_int_point_s, i32, i32 (%struct.gx_device_color_s*, i32, i32, i32, i32, %struct.gx_device_s*, i32, %struct.gx_rop_source_s*)*, %struct.gx_device_s*, i32, i32 }
%struct.gx_device_mask_clip_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, %struct.gx_device_s*, %struct.gx_strip_bitmap_s, %struct.gx_device_memory_s, %struct.gs_int_point_s, %union._b }
%struct.gx_device_memory_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, %struct.gx_device_s*, i32, i8*, %struct.gs_memory_s*, i32, %struct.gs_memory_s*, i32, [64 x %struct.gx_render_plane_s], %struct.gs_matrix_s, i8**, %struct.gs_const_string_s, %struct._c24, %struct._c40, %struct._c48, %struct._c56, %struct._c64, %struct.gs_log2_scale_point_s, i32, i32, i32, i32, i32, i64, %struct.gx_device_color_s*, i32, i32 }
%struct.gs_const_string_s = type { i8*, i32 }
%struct._c24 = type { i64, i32, i32, i32 }
%struct._c40 = type { i64, i32, i32, i32, i32, i32 }
%struct._c48 = type { i64, i32, i32, i32 }
%struct._c56 = type { i64, i32, i32, i32, i32, i32, i32, i32 }
%struct._c64 = type { i64, i32, i32 }
%union._b = type { [2048 x i64] }
%struct.gx_device_clist_reader_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, %struct.gx_device_s*, %struct.gx_device_buf_procs_s, %struct.gs_memory_s*, i8*, i32, %struct.gx_band_params_s, i32, i32, %struct.gx_bits_cache_chunk_s, %struct.gx_bits_cache_s, i32, i32, %struct.tile_hash*, i32, i32, %struct.gx_band_page_info_s, i32, i64, %struct.clist_icctable_s*, %struct.gsicc_link_cache_s*, i32, %struct.gsicc_link_cache_s**, %struct.gx_render_plane_s, %struct.gx_placed_page_s*, %struct.gx_colors_usage_s*, i32, i8*, i32, %struct.clist_render_thread_control_s*, i8*, i32, i32, i32 }
%struct.gx_placed_page_s = type { %struct.gx_saved_page_s*, %struct.gs_int_point_s }
%struct.gx_saved_page_s = type { [32 x i8], %struct.gx_device_color_info_s, [4096 x i8], [4096 x i8], %struct.clist_io_procs_s*, i32, i64, %struct.gx_band_params_s, %struct.gs_memory_s*, i32, i8* }
%struct.clist_render_thread_control_s = type opaque
%struct._pat = type { %struct.gx_color_tile_s* }
%struct._devn = type { [64 x i16] }
%struct.tile_fill_trans_state_s = type { %struct.gx_device_color_s*, i32, i32, i32, i32, %struct.gx_device_s*, %struct.gs_int_point_s, i32, i32 }

@gx_dc_type_data_pure = external constant %struct.gx_device_color_type_s, align 8
@gx_dc_type_data_devn = external constant %struct.gx_device_color_type_s, align 8
@gx_dc_type_data_ht_binary = external constant %struct.gx_device_color_type_s, align 8
@gx_dc_type_data_ht_colored = external constant %struct.gx_device_color_type_s, align 8
@st_device_mask_clip = external constant %struct.gs_memory_struct_type_s, align 8
@.str = private unnamed_addr constant [21 x i8] c"tile_fill_init(cdev)\00", align 1

; Function Attrs: nounwind uwtable
define i32 @gx_dc_pattern_fill_rectangle(%struct.gx_device_color_s* %pdevc, i32 %x, i32 %y, i32 %w, i32 %h, %struct.gx_device_s* %dev, i32 %lop, %struct.gx_rop_source_s* %source) #0 {
entry:
  %retval = alloca i32, align 4
  %pdevc.addr = alloca %struct.gx_device_color_s*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %lop.addr = alloca i32, align 4
  %source.addr = alloca %struct.gx_rop_source_s*, align 8
  %ptile = alloca %struct.gx_color_tile_s*, align 8
  %rop_source = alloca %struct.gx_rop_source_s*, align 8
  %no_source = alloca %struct.gx_rop_source_s, align 8
  %bits = alloca %struct.gx_strip_bitmap_s*, align 8
  %state = alloca %struct.tile_fill_state_s, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %px = alloca i32, align 4
  %py = alloca i32, align 4
  %cdev147 = alloca %union.gx_device_clist_s*, align 8
  %crdev = alloca %struct.gx_device_clist_reader_s*, align 8
  %tbits149 = alloca %struct.gx_strip_bitmap_s, align 8
  store %struct.gx_device_color_s* %pdevc, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  store i32 %x, i32* %x.addr, align 4, !tbaa !5
  store i32 %y, i32* %y.addr, align 4, !tbaa !5
  store i32 %w, i32* %w.addr, align 4, !tbaa !5
  store i32 %h, i32* %h.addr, align 4, !tbaa !5
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i32 %lop, i32* %lop.addr, align 4, !tbaa !5
  store %struct.gx_rop_source_s* %source, %struct.gx_rop_source_s** %source.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_color_tile_s** %ptile to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %colors = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %1, i32 0, i32 1
  %pattern = bitcast %union._c* %colors to %struct._pat*
  %p_tile = getelementptr inbounds %struct._pat, %struct._pat* %pattern, i32 0, i32 0
  %2 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %p_tile, align 8, !tbaa !7
  store %struct.gx_color_tile_s* %2, %struct.gx_color_tile_s** %ptile, align 8, !tbaa !1
  %3 = bitcast %struct.gx_rop_source_s** %rop_source to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gx_rop_source_s*, %struct.gx_rop_source_s** %source.addr, align 8, !tbaa !1
  store %struct.gx_rop_source_s* %4, %struct.gx_rop_source_s** %rop_source, align 8, !tbaa !1
  %5 = bitcast %struct.gx_rop_source_s* %no_source to i8*
  call void @llvm.lifetime.start(i64 48, i8* %5) #1
  %6 = bitcast %struct.gx_strip_bitmap_s** %bits to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = bitcast %struct.tile_fill_state_s* %state to i8*
  call void @llvm.lifetime.start(i64 104, i8* %7) #1
  %8 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ptile, align 8, !tbaa !1
  %cmp = icmp eq %struct.gx_color_tile_s* %9, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %10 = load %struct.gx_rop_source_s*, %struct.gx_rop_source_s** %rop_source, align 8, !tbaa !1
  %cmp1 = icmp eq %struct.gx_rop_source_s* %10, null
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  %11 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  call void @gx_set_rop_no_source(%struct.gx_rop_source_s** %rop_source, %struct.gx_rop_source_s* %no_source, %struct.gx_device_s* %11) #5
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.2, %if.end
  %12 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ptile, align 8, !tbaa !1
  %tbits = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %12, i32 0, i32 7
  store %struct.gx_strip_bitmap_s* %tbits, %struct.gx_strip_bitmap_s** %bits, align 8, !tbaa !1
  %13 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %14 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call = call i32 @tile_fill_init(%struct.tile_fill_state_s* %state, %struct.gx_device_color_s* %13, %struct.gx_device_s* %14, i32 0) #5
  store i32 %call, i32* %code, align 4, !tbaa !5
  %15 = load i32, i32* %code, align 4, !tbaa !5
  %cmp4 = icmp slt i32 %15, 0
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end.3
  %16 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %16, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.6:                                         ; preds = %if.end.3
  %17 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ptile, align 8, !tbaa !1
  %is_simple = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %17, i32 0, i32 11
  %18 = load i8, i8* %is_simple, align 1, !tbaa !9
  %conv = zext i8 %18 to i32
  %tobool = icmp ne i32 %conv, 0
  br i1 %tobool, label %land.lhs.true, label %if.else.137

land.lhs.true:                                    ; preds = %if.end.6
  %19 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ptile, align 8, !tbaa !1
  %cdev = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %19, i32 0, i32 10
  %20 = load %union.gx_device_clist_s*, %union.gx_device_clist_s** %cdev, align 8, !tbaa !21
  %cmp7 = icmp eq %union.gx_device_clist_s* %20, null
  br i1 %cmp7, label %if.then.9, label %if.else.137

if.then.9:                                        ; preds = %land.lhs.true
  %21 = bitcast i32* %px to i8*
  call void @llvm.lifetime.start(i64 4, i8* %21) #1
  %22 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ptile, align 8, !tbaa !1
  %step_matrix = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %22, i32 0, i32 5
  %tx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %step_matrix, i32 0, i32 4
  %23 = load float, float* %tx, align 4, !tbaa !22
  %phase = getelementptr inbounds %struct.tile_fill_state_s, %struct.tile_fill_state_s* %state, i32 0, i32 10
  %x10 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %phase, i32 0, i32 0
  %24 = load i32, i32* %x10, align 4, !tbaa !23
  %conv11 = sitofp i32 %24 to float
  %sub = fsub float %23, %conv11
  %conv12 = fpext float %sub to double
  %add = fadd double %conv12, 5.000000e-01
  %conv13 = fptosi double %add to i32
  %25 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ptile, align 8, !tbaa !1
  %step_matrix14 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %25, i32 0, i32 5
  %tx15 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %step_matrix14, i32 0, i32 4
  %26 = load float, float* %tx15, align 4, !tbaa !22
  %phase16 = getelementptr inbounds %struct.tile_fill_state_s, %struct.tile_fill_state_s* %state, i32 0, i32 10
  %x17 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %phase16, i32 0, i32 0
  %27 = load i32, i32* %x17, align 4, !tbaa !23
  %conv18 = sitofp i32 %27 to float
  %sub19 = fsub float %26, %conv18
  %conv20 = fpext float %sub19 to double
  %add21 = fadd double %conv20, 5.000000e-01
  %cmp22 = fcmp olt double %add21, 0.000000e+00
  br i1 %cmp22, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.then.9
  %28 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ptile, align 8, !tbaa !1
  %step_matrix24 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %28, i32 0, i32 5
  %tx25 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %step_matrix24, i32 0, i32 4
  %29 = load float, float* %tx25, align 4, !tbaa !22
  %phase26 = getelementptr inbounds %struct.tile_fill_state_s, %struct.tile_fill_state_s* %state, i32 0, i32 10
  %x27 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %phase26, i32 0, i32 0
  %30 = load i32, i32* %x27, align 4, !tbaa !23
  %conv28 = sitofp i32 %30 to float
  %sub29 = fsub float %29, %conv28
  %conv30 = fpext float %sub29 to double
  %add31 = fadd double %conv30, 5.000000e-01
  %31 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ptile, align 8, !tbaa !1
  %step_matrix32 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %31, i32 0, i32 5
  %tx33 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %step_matrix32, i32 0, i32 4
  %32 = load float, float* %tx33, align 4, !tbaa !22
  %phase34 = getelementptr inbounds %struct.tile_fill_state_s, %struct.tile_fill_state_s* %state, i32 0, i32 10
  %x35 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %phase34, i32 0, i32 0
  %33 = load i32, i32* %x35, align 4, !tbaa !23
  %conv36 = sitofp i32 %33 to float
  %sub37 = fsub float %32, %conv36
  %conv38 = fpext float %sub37 to double
  %add39 = fadd double %conv38, 5.000000e-01
  %conv40 = fptosi double %add39 to i32
  %conv41 = sitofp i32 %conv40 to float
  %conv42 = fpext float %conv41 to double
  %cmp43 = fcmp une double %add31, %conv42
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.then.9
  %34 = phi i1 [ false, %if.then.9 ], [ %cmp43, %land.rhs ]
  %land.ext = zext i1 %34 to i32
  %sub45 = sub nsw i32 %conv13, %land.ext
  %sub46 = sub nsw i32 0, %sub45
  %35 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %bits, align 8, !tbaa !1
  %rep_width = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %35, i32 0, i32 4
  %36 = load i16, i16* %rep_width, align 2, !tbaa !25
  %conv47 = zext i16 %36 to i32
  %call48 = call i32 @imod(i32 %sub46, i32 %conv47) #5
  store i32 %call48, i32* %px, align 4, !tbaa !5
  %37 = bitcast i32* %py to i8*
  call void @llvm.lifetime.start(i64 4, i8* %37) #1
  %38 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ptile, align 8, !tbaa !1
  %step_matrix49 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %38, i32 0, i32 5
  %ty = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %step_matrix49, i32 0, i32 5
  %39 = load float, float* %ty, align 4, !tbaa !26
  %phase50 = getelementptr inbounds %struct.tile_fill_state_s, %struct.tile_fill_state_s* %state, i32 0, i32 10
  %y51 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %phase50, i32 0, i32 1
  %40 = load i32, i32* %y51, align 4, !tbaa !27
  %conv52 = sitofp i32 %40 to float
  %sub53 = fsub float %39, %conv52
  %conv54 = fpext float %sub53 to double
  %add55 = fadd double %conv54, 5.000000e-01
  %conv56 = fptosi double %add55 to i32
  %41 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ptile, align 8, !tbaa !1
  %step_matrix57 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %41, i32 0, i32 5
  %ty58 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %step_matrix57, i32 0, i32 5
  %42 = load float, float* %ty58, align 4, !tbaa !26
  %phase59 = getelementptr inbounds %struct.tile_fill_state_s, %struct.tile_fill_state_s* %state, i32 0, i32 10
  %y60 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %phase59, i32 0, i32 1
  %43 = load i32, i32* %y60, align 4, !tbaa !27
  %conv61 = sitofp i32 %43 to float
  %sub62 = fsub float %42, %conv61
  %conv63 = fpext float %sub62 to double
  %add64 = fadd double %conv63, 5.000000e-01
  %cmp65 = fcmp olt double %add64, 0.000000e+00
  br i1 %cmp65, label %land.rhs.67, label %land.end.89

land.rhs.67:                                      ; preds = %land.end
  %44 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ptile, align 8, !tbaa !1
  %step_matrix68 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %44, i32 0, i32 5
  %ty69 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %step_matrix68, i32 0, i32 5
  %45 = load float, float* %ty69, align 4, !tbaa !26
  %phase70 = getelementptr inbounds %struct.tile_fill_state_s, %struct.tile_fill_state_s* %state, i32 0, i32 10
  %y71 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %phase70, i32 0, i32 1
  %46 = load i32, i32* %y71, align 4, !tbaa !27
  %conv72 = sitofp i32 %46 to float
  %sub73 = fsub float %45, %conv72
  %conv74 = fpext float %sub73 to double
  %add75 = fadd double %conv74, 5.000000e-01
  %47 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ptile, align 8, !tbaa !1
  %step_matrix76 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %47, i32 0, i32 5
  %ty77 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %step_matrix76, i32 0, i32 5
  %48 = load float, float* %ty77, align 4, !tbaa !26
  %phase78 = getelementptr inbounds %struct.tile_fill_state_s, %struct.tile_fill_state_s* %state, i32 0, i32 10
  %y79 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %phase78, i32 0, i32 1
  %49 = load i32, i32* %y79, align 4, !tbaa !27
  %conv80 = sitofp i32 %49 to float
  %sub81 = fsub float %48, %conv80
  %conv82 = fpext float %sub81 to double
  %add83 = fadd double %conv82, 5.000000e-01
  %conv84 = fptosi double %add83 to i32
  %conv85 = sitofp i32 %conv84 to float
  %conv86 = fpext float %conv85 to double
  %cmp87 = fcmp une double %add75, %conv86
  br label %land.end.89

land.end.89:                                      ; preds = %land.rhs.67, %land.end
  %50 = phi i1 [ false, %land.end ], [ %cmp87, %land.rhs.67 ]
  %land.ext90 = zext i1 %50 to i32
  %sub91 = sub nsw i32 %conv56, %land.ext90
  %sub92 = sub nsw i32 0, %sub91
  %51 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %bits, align 8, !tbaa !1
  %rep_height = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %51, i32 0, i32 5
  %52 = load i16, i16* %rep_height, align 2, !tbaa !28
  %conv93 = zext i16 %52 to i32
  %call94 = call i32 @imod(i32 %sub92, i32 %conv93) #5
  store i32 %call94, i32* %py, align 4, !tbaa !5
  %cdev95 = getelementptr inbounds %struct.tile_fill_state_s, %struct.tile_fill_state_s* %state, i32 0, i32 7
  %53 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev95, align 8, !tbaa !29
  %cmp96 = icmp ne %struct.gx_device_mask_clip_s* %53, null
  br i1 %cmp96, label %if.then.98, label %if.end.100

if.then.98:                                       ; preds = %land.end.89
  %cdev99 = getelementptr inbounds %struct.tile_fill_state_s, %struct.tile_fill_state_s* %state, i32 0, i32 7
  %54 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev99, align 8, !tbaa !29
  %55 = load i32, i32* %px, align 4, !tbaa !5
  %56 = load i32, i32* %py, align 4, !tbaa !5
  call void @tile_clip_set_phase(%struct.gx_device_mask_clip_s* %54, i32 %55, i32 %56) #5
  br label %if.end.100

if.end.100:                                       ; preds = %if.then.98, %land.end.89
  %57 = load %struct.gx_rop_source_s*, %struct.gx_rop_source_s** %source.addr, align 8, !tbaa !1
  %cmp101 = icmp eq %struct.gx_rop_source_s* %57, null
  br i1 %cmp101, label %land.lhs.true.103, label %if.else

land.lhs.true.103:                                ; preds = %if.end.100
  %58 = load i32, i32* %lop.addr, align 4, !tbaa !5
  %and = and i32 %58, 563
  %cmp104 = icmp eq i32 %and, 48
  br i1 %cmp104, label %if.then.106, label %if.else

if.then.106:                                      ; preds = %land.lhs.true.103
  %pcdev = getelementptr inbounds %struct.tile_fill_state_s, %struct.tile_fill_state_s* %state, i32 0, i32 8
  %59 = load %struct.gx_device_s*, %struct.gx_device_s** %pcdev, align 8, !tbaa !30
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %59, i32 0, i32 42
  %strip_tile_rectangle = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 34
  %60 = load i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)** %strip_tile_rectangle, align 8, !tbaa !31
  %pcdev107 = getelementptr inbounds %struct.tile_fill_state_s, %struct.tile_fill_state_s* %state, i32 0, i32 8
  %61 = load %struct.gx_device_s*, %struct.gx_device_s** %pcdev107, align 8, !tbaa !30
  %62 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %bits, align 8, !tbaa !1
  %63 = load i32, i32* %x.addr, align 4, !tbaa !5
  %64 = load i32, i32* %y.addr, align 4, !tbaa !5
  %65 = load i32, i32* %w.addr, align 4, !tbaa !5
  %66 = load i32, i32* %h.addr, align 4, !tbaa !5
  %67 = load i32, i32* %px, align 4, !tbaa !5
  %68 = load i32, i32* %py, align 4, !tbaa !5
  %call108 = call i32 %60(%struct.gx_device_s* %61, %struct.gx_strip_bitmap_s* %62, i32 %63, i32 %64, i32 %65, i32 %66, i64 -1, i64 -1, i32 %67, i32 %68) #5
  store i32 %call108, i32* %code, align 4, !tbaa !5
  br label %if.end.136

if.else:                                          ; preds = %land.lhs.true.103, %if.end.100
  %69 = load %struct.gx_rop_source_s*, %struct.gx_rop_source_s** %rop_source, align 8, !tbaa !1
  %planar_height = getelementptr inbounds %struct.gx_rop_source_s, %struct.gx_rop_source_s* %69, i32 0, i32 5
  %70 = load i32, i32* %planar_height, align 4, !tbaa !42
  %cmp109 = icmp eq i32 %70, 0
  br i1 %cmp109, label %if.then.111, label %if.else.117

if.then.111:                                      ; preds = %if.else
  %pcdev112 = getelementptr inbounds %struct.tile_fill_state_s, %struct.tile_fill_state_s* %state, i32 0, i32 8
  %71 = load %struct.gx_device_s*, %struct.gx_device_s** %pcdev112, align 8, !tbaa !30
  %procs113 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %71, i32 0, i32 42
  %strip_copy_rop = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs113, i32 0, i32 35
  %72 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)** %strip_copy_rop, align 8, !tbaa !44
  %pcdev114 = getelementptr inbounds %struct.tile_fill_state_s, %struct.tile_fill_state_s* %state, i32 0, i32 8
  %73 = load %struct.gx_device_s*, %struct.gx_device_s** %pcdev114, align 8, !tbaa !30
  %74 = load %struct.gx_rop_source_s*, %struct.gx_rop_source_s** %rop_source, align 8, !tbaa !1
  %sdata = getelementptr inbounds %struct.gx_rop_source_s, %struct.gx_rop_source_s* %74, i32 0, i32 0
  %75 = load i8*, i8** %sdata, align 8, !tbaa !45
  %76 = load %struct.gx_rop_source_s*, %struct.gx_rop_source_s** %rop_source, align 8, !tbaa !1
  %sourcex = getelementptr inbounds %struct.gx_rop_source_s, %struct.gx_rop_source_s* %76, i32 0, i32 1
  %77 = load i32, i32* %sourcex, align 4, !tbaa !46
  %78 = load %struct.gx_rop_source_s*, %struct.gx_rop_source_s** %rop_source, align 8, !tbaa !1
  %sraster = getelementptr inbounds %struct.gx_rop_source_s, %struct.gx_rop_source_s* %78, i32 0, i32 2
  %79 = load i32, i32* %sraster, align 4, !tbaa !47
  %80 = load %struct.gx_rop_source_s*, %struct.gx_rop_source_s** %rop_source, align 8, !tbaa !1
  %id = getelementptr inbounds %struct.gx_rop_source_s, %struct.gx_rop_source_s* %80, i32 0, i32 3
  %81 = load i64, i64* %id, align 8, !tbaa !48
  %82 = load %struct.gx_rop_source_s*, %struct.gx_rop_source_s** %rop_source, align 8, !tbaa !1
  %use_scolors = getelementptr inbounds %struct.gx_rop_source_s, %struct.gx_rop_source_s* %82, i32 0, i32 6
  %83 = load i32, i32* %use_scolors, align 4, !tbaa !49
  %tobool115 = icmp ne i32 %83, 0
  br i1 %tobool115, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.111
  %84 = load %struct.gx_rop_source_s*, %struct.gx_rop_source_s** %rop_source, align 8, !tbaa !1
  %scolors = getelementptr inbounds %struct.gx_rop_source_s, %struct.gx_rop_source_s* %84, i32 0, i32 4
  %arraydecay = getelementptr inbounds [2 x i64], [2 x i64]* %scolors, i32 0, i32 0
  br label %cond.end

cond.false:                                       ; preds = %if.then.111
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64* [ %arraydecay, %cond.true ], [ null, %cond.false ]
  %85 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %bits, align 8, !tbaa !1
  %86 = load i32, i32* %x.addr, align 4, !tbaa !5
  %87 = load i32, i32* %y.addr, align 4, !tbaa !5
  %88 = load i32, i32* %w.addr, align 4, !tbaa !5
  %89 = load i32, i32* %h.addr, align 4, !tbaa !5
  %90 = load i32, i32* %px, align 4, !tbaa !5
  %91 = load i32, i32* %py, align 4, !tbaa !5
  %92 = load i32, i32* %lop.addr, align 4, !tbaa !5
  %call116 = call i32 %72(%struct.gx_device_s* %73, i8* %75, i32 %77, i32 %79, i64 %81, i64* %cond, %struct.gx_strip_bitmap_s* %85, i64* null, i32 %86, i32 %87, i32 %88, i32 %89, i32 %90, i32 %91, i32 %92) #5
  store i32 %call116, i32* %code, align 4, !tbaa !5
  br label %if.end.135

if.else.117:                                      ; preds = %if.else
  %pcdev118 = getelementptr inbounds %struct.tile_fill_state_s, %struct.tile_fill_state_s* %state, i32 0, i32 8
  %93 = load %struct.gx_device_s*, %struct.gx_device_s** %pcdev118, align 8, !tbaa !30
  %procs119 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %93, i32 0, i32 42
  %strip_copy_rop2 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs119, i32 0, i32 69
  %94 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)** %strip_copy_rop2, align 8, !tbaa !50
  %pcdev120 = getelementptr inbounds %struct.tile_fill_state_s, %struct.tile_fill_state_s* %state, i32 0, i32 8
  %95 = load %struct.gx_device_s*, %struct.gx_device_s** %pcdev120, align 8, !tbaa !30
  %96 = load %struct.gx_rop_source_s*, %struct.gx_rop_source_s** %rop_source, align 8, !tbaa !1
  %sdata121 = getelementptr inbounds %struct.gx_rop_source_s, %struct.gx_rop_source_s* %96, i32 0, i32 0
  %97 = load i8*, i8** %sdata121, align 8, !tbaa !45
  %98 = load %struct.gx_rop_source_s*, %struct.gx_rop_source_s** %rop_source, align 8, !tbaa !1
  %sourcex122 = getelementptr inbounds %struct.gx_rop_source_s, %struct.gx_rop_source_s* %98, i32 0, i32 1
  %99 = load i32, i32* %sourcex122, align 4, !tbaa !46
  %100 = load %struct.gx_rop_source_s*, %struct.gx_rop_source_s** %rop_source, align 8, !tbaa !1
  %sraster123 = getelementptr inbounds %struct.gx_rop_source_s, %struct.gx_rop_source_s* %100, i32 0, i32 2
  %101 = load i32, i32* %sraster123, align 4, !tbaa !47
  %102 = load %struct.gx_rop_source_s*, %struct.gx_rop_source_s** %rop_source, align 8, !tbaa !1
  %id124 = getelementptr inbounds %struct.gx_rop_source_s, %struct.gx_rop_source_s* %102, i32 0, i32 3
  %103 = load i64, i64* %id124, align 8, !tbaa !48
  %104 = load %struct.gx_rop_source_s*, %struct.gx_rop_source_s** %rop_source, align 8, !tbaa !1
  %use_scolors125 = getelementptr inbounds %struct.gx_rop_source_s, %struct.gx_rop_source_s* %104, i32 0, i32 6
  %105 = load i32, i32* %use_scolors125, align 4, !tbaa !49
  %tobool126 = icmp ne i32 %105, 0
  br i1 %tobool126, label %cond.true.127, label %cond.false.130

cond.true.127:                                    ; preds = %if.else.117
  %106 = load %struct.gx_rop_source_s*, %struct.gx_rop_source_s** %rop_source, align 8, !tbaa !1
  %scolors128 = getelementptr inbounds %struct.gx_rop_source_s, %struct.gx_rop_source_s* %106, i32 0, i32 4
  %arraydecay129 = getelementptr inbounds [2 x i64], [2 x i64]* %scolors128, i32 0, i32 0
  br label %cond.end.131

cond.false.130:                                   ; preds = %if.else.117
  br label %cond.end.131

cond.end.131:                                     ; preds = %cond.false.130, %cond.true.127
  %cond132 = phi i64* [ %arraydecay129, %cond.true.127 ], [ null, %cond.false.130 ]
  %107 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %bits, align 8, !tbaa !1
  %108 = load i32, i32* %x.addr, align 4, !tbaa !5
  %109 = load i32, i32* %y.addr, align 4, !tbaa !5
  %110 = load i32, i32* %w.addr, align 4, !tbaa !5
  %111 = load i32, i32* %h.addr, align 4, !tbaa !5
  %112 = load i32, i32* %px, align 4, !tbaa !5
  %113 = load i32, i32* %py, align 4, !tbaa !5
  %114 = load i32, i32* %lop.addr, align 4, !tbaa !5
  %115 = load %struct.gx_rop_source_s*, %struct.gx_rop_source_s** %rop_source, align 8, !tbaa !1
  %planar_height133 = getelementptr inbounds %struct.gx_rop_source_s, %struct.gx_rop_source_s* %115, i32 0, i32 5
  %116 = load i32, i32* %planar_height133, align 4, !tbaa !42
  %call134 = call i32 %94(%struct.gx_device_s* %95, i8* %97, i32 %99, i32 %101, i64 %103, i64* %cond132, %struct.gx_strip_bitmap_s* %107, i64* null, i32 %108, i32 %109, i32 %110, i32 %111, i32 %112, i32 %113, i32 %114, i32 %116) #5
  store i32 %call134, i32* %code, align 4, !tbaa !5
  br label %if.end.135

if.end.135:                                       ; preds = %cond.end.131, %cond.end
  br label %if.end.136

if.end.136:                                       ; preds = %if.end.135, %if.then.106
  %117 = bitcast i32* %py to i8*
  call void @llvm.lifetime.end(i64 4, i8* %117) #1
  %118 = bitcast i32* %px to i8*
  call void @llvm.lifetime.end(i64 4, i8* %118) #1
  br label %if.end.159

if.else.137:                                      ; preds = %land.lhs.true, %if.end.6
  %119 = load i32, i32* %lop.addr, align 4, !tbaa !5
  %lop138 = getelementptr inbounds %struct.tile_fill_state_s, %struct.tile_fill_state_s* %state, i32 0, i32 5
  store i32 %119, i32* %lop138, align 4, !tbaa !51
  %120 = load %struct.gx_rop_source_s*, %struct.gx_rop_source_s** %source.addr, align 8, !tbaa !1
  %source139 = getelementptr inbounds %struct.tile_fill_state_s, %struct.tile_fill_state_s* %state, i32 0, i32 6
  store %struct.gx_rop_source_s* %120, %struct.gx_rop_source_s** %source139, align 8, !tbaa !52
  %121 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %orig_dev = getelementptr inbounds %struct.tile_fill_state_s, %struct.tile_fill_state_s* %state, i32 0, i32 13
  store %struct.gx_device_s* %121, %struct.gx_device_s** %orig_dev, align 8, !tbaa !53
  %122 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ptile, align 8, !tbaa !1
  %cdev140 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %122, i32 0, i32 10
  %123 = load %union.gx_device_clist_s*, %union.gx_device_clist_s** %cdev140, align 8, !tbaa !21
  %cmp141 = icmp eq %union.gx_device_clist_s* %123, null
  br i1 %cmp141, label %if.then.143, label %if.else.146

if.then.143:                                      ; preds = %if.else.137
  %124 = load i32, i32* %x.addr, align 4, !tbaa !5
  %125 = load i32, i32* %y.addr, align 4, !tbaa !5
  %126 = load i32, i32* %w.addr, align 4, !tbaa !5
  %127 = load i32, i32* %h.addr, align 4, !tbaa !5
  %128 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ptile, align 8, !tbaa !1
  %129 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ptile, align 8, !tbaa !1
  %tbits144 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %129, i32 0, i32 7
  %call145 = call i32 @tile_by_steps(%struct.tile_fill_state_s* %state, i32 %124, i32 %125, i32 %126, i32 %127, %struct.gx_color_tile_s* %128, %struct.gx_strip_bitmap_s* %tbits144, i32 (%struct.tile_fill_state_s*, i32, i32, i32, i32)* @tile_colored_fill) #5
  store i32 %call145, i32* %code, align 4, !tbaa !5
  br label %if.end.158

if.else.146:                                      ; preds = %if.else.137
  %130 = bitcast %union.gx_device_clist_s** %cdev147 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %130) #1
  %131 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ptile, align 8, !tbaa !1
  %cdev148 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %131, i32 0, i32 10
  %132 = load %union.gx_device_clist_s*, %union.gx_device_clist_s** %cdev148, align 8, !tbaa !21
  store %union.gx_device_clist_s* %132, %union.gx_device_clist_s** %cdev147, align 8, !tbaa !1
  %133 = bitcast %struct.gx_device_clist_reader_s** %crdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %133) #1
  %134 = load %union.gx_device_clist_s*, %union.gx_device_clist_s** %cdev147, align 8, !tbaa !1
  %135 = bitcast %union.gx_device_clist_s* %134 to %struct.gx_device_clist_reader_s*
  store %struct.gx_device_clist_reader_s* %135, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %136 = bitcast %struct.gx_strip_bitmap_s* %tbits149 to i8*
  call void @llvm.lifetime.start(i64 48, i8* %136) #1
  %137 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %yplane = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %137, i32 0, i32 65
  %depth = getelementptr inbounds %struct.gx_render_plane_s, %struct.gx_render_plane_s* %yplane, i32 0, i32 0
  store i32 0, i32* %depth, align 4, !tbaa !54
  %138 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %yplane150 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %138, i32 0, i32 65
  %shift = getelementptr inbounds %struct.gx_render_plane_s, %struct.gx_render_plane_s* %yplane150, i32 0, i32 1
  store i32 0, i32* %shift, align 4, !tbaa !61
  %139 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %yplane151 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %139, i32 0, i32 65
  %index = getelementptr inbounds %struct.gx_render_plane_s, %struct.gx_render_plane_s* %yplane151, i32 0, i32 2
  store i32 -1, i32* %index, align 4, !tbaa !62
  %140 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %pages = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %140, i32 0, i32 66
  store %struct.gx_placed_page_s* null, %struct.gx_placed_page_s** %pages, align 8, !tbaa !63
  %141 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %num_pages = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %141, i32 0, i32 68
  store i32 1, i32* %num_pages, align 4, !tbaa !64
  %142 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %orig_dev152 = getelementptr inbounds %struct.tile_fill_state_s, %struct.tile_fill_state_s* %state, i32 0, i32 13
  store %struct.gx_device_s* %142, %struct.gx_device_s** %orig_dev152, align 8, !tbaa !53
  %143 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ptile, align 8, !tbaa !1
  %tbits153 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %143, i32 0, i32 7
  %144 = bitcast %struct.gx_strip_bitmap_s* %tbits149 to i8*
  %145 = bitcast %struct.gx_strip_bitmap_s* %tbits153 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %144, i8* %145, i64 48, i32 8, i1 false), !tbaa.struct !65
  %146 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %146, i32 0, i32 13
  %147 = load i32, i32* %width, align 4, !tbaa !68
  %size = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tbits149, i32 0, i32 2
  %x154 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %size, i32 0, i32 0
  store i32 %147, i32* %x154, align 4, !tbaa !69
  %148 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %148, i32 0, i32 14
  %149 = load i32, i32* %height, align 4, !tbaa !70
  %size155 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tbits149, i32 0, i32 2
  %y156 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %size155, i32 0, i32 1
  store i32 %149, i32* %y156, align 4, !tbaa !71
  %150 = load i32, i32* %x.addr, align 4, !tbaa !5
  %151 = load i32, i32* %y.addr, align 4, !tbaa !5
  %152 = load i32, i32* %w.addr, align 4, !tbaa !5
  %153 = load i32, i32* %h.addr, align 4, !tbaa !5
  %154 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ptile, align 8, !tbaa !1
  %call157 = call i32 @tile_by_steps(%struct.tile_fill_state_s* %state, i32 %150, i32 %151, i32 %152, i32 %153, %struct.gx_color_tile_s* %154, %struct.gx_strip_bitmap_s* %tbits149, i32 (%struct.tile_fill_state_s*, i32, i32, i32, i32)* @tile_pattern_clist) #5
  store i32 %call157, i32* %code, align 4, !tbaa !5
  %155 = bitcast %struct.gx_strip_bitmap_s* %tbits149 to i8*
  call void @llvm.lifetime.end(i64 48, i8* %155) #1
  %156 = bitcast %struct.gx_device_clist_reader_s** %crdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %156) #1
  %157 = bitcast %union.gx_device_clist_s** %cdev147 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %157) #1
  br label %if.end.158

if.end.158:                                       ; preds = %if.else.146, %if.then.143
  br label %if.end.159

if.end.159:                                       ; preds = %if.end.158, %if.end.136
  %cdev160 = getelementptr inbounds %struct.tile_fill_state_s, %struct.tile_fill_state_s* %state, i32 0, i32 7
  %158 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev160, align 8, !tbaa !29
  %cmp161 = icmp ne %struct.gx_device_mask_clip_s* %158, null
  br i1 %cmp161, label %if.then.163, label %if.end.166

if.then.163:                                      ; preds = %if.end.159
  %cdev164 = getelementptr inbounds %struct.tile_fill_state_s, %struct.tile_fill_state_s* %state, i32 0, i32 7
  %159 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev164, align 8, !tbaa !29
  call void @tile_clip_free(%struct.gx_device_mask_clip_s* %159) #5
  %cdev165 = getelementptr inbounds %struct.tile_fill_state_s, %struct.tile_fill_state_s* %state, i32 0, i32 7
  store %struct.gx_device_mask_clip_s* null, %struct.gx_device_mask_clip_s** %cdev165, align 8, !tbaa !29
  br label %if.end.166

if.end.166:                                       ; preds = %if.then.163, %if.end.159
  %160 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %160, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.166, %if.then.5, %if.then
  %161 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %161) #1
  %162 = bitcast %struct.tile_fill_state_s* %state to i8*
  call void @llvm.lifetime.end(i64 104, i8* %162) #1
  %163 = bitcast %struct.gx_strip_bitmap_s** %bits to i8*
  call void @llvm.lifetime.end(i64 8, i8* %163) #1
  %164 = bitcast %struct.gx_rop_source_s* %no_source to i8*
  call void @llvm.lifetime.end(i64 48, i8* %164) #1
  %165 = bitcast %struct.gx_rop_source_s** %rop_source to i8*
  call void @llvm.lifetime.end(i64 8, i8* %165) #1
  %166 = bitcast %struct.gx_color_tile_s** %ptile to i8*
  call void @llvm.lifetime.end(i64 8, i8* %166) #1
  %167 = load i32, i32* %retval
  ret i32 %167
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

declare void @gx_set_rop_no_source(%struct.gx_rop_source_s**, %struct.gx_rop_source_s*, %struct.gx_device_s*) #2

; Function Attrs: nounwind uwtable
define internal i32 @tile_fill_init(%struct.tile_fill_state_s* %ptfs, %struct.gx_device_color_s* %pdevc, %struct.gx_device_s* %dev, i32 %set_mask_phase) #0 {
entry:
  %retval = alloca i32, align 4
  %ptfs.addr = alloca %struct.tile_fill_state_s*, align 8
  %pdevc.addr = alloca %struct.gx_device_color_s*, align 8
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %set_mask_phase.addr = alloca i32, align 4
  %m_tile = alloca %struct.gx_color_tile_s*, align 8
  %px = alloca i32, align 4
  %py = alloca i32, align 4
  %is_planar = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.tile_fill_state_s* %ptfs, %struct.tile_fill_state_s** %ptfs.addr, align 8, !tbaa !1
  store %struct.gx_device_color_s* %pdevc, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i32 %set_mask_phase, i32* %set_mask_phase.addr, align 4, !tbaa !5
  %0 = bitcast %struct.gx_color_tile_s** %m_tile to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %mask = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %1, i32 0, i32 5
  %m_tile1 = getelementptr inbounds %struct._mask, %struct._mask* %mask, i32 0, i32 2
  %2 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %m_tile1, align 8, !tbaa !72
  store %struct.gx_color_tile_s* %2, %struct.gx_color_tile_s** %m_tile, align 8, !tbaa !1
  %3 = bitcast i32* %px to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i32* %py to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast i32* %is_planar to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %7 = load %struct.tile_fill_state_s*, %struct.tile_fill_state_s** %ptfs.addr, align 8, !tbaa !1
  %pdevc2 = getelementptr inbounds %struct.tile_fill_state_s, %struct.tile_fill_state_s* %7, i32 0, i32 0
  store %struct.gx_device_color_s* %6, %struct.gx_device_color_s** %pdevc2, align 8, !tbaa !78
  %8 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %is_planar3 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %8, i32 0, i32 17
  %9 = load i32, i32* %is_planar3, align 4, !tbaa !79
  store i32 %9, i32* %is_planar, align 4, !tbaa !5
  %10 = load i32, i32* %is_planar, align 4, !tbaa !5
  %tobool = icmp ne i32 %10, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %11 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %11, i32 0, i32 11
  %num_components = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 1
  %12 = load i32, i32* %num_components, align 4, !tbaa !80
  %13 = load %struct.tile_fill_state_s*, %struct.tile_fill_state_s** %ptfs.addr, align 8, !tbaa !1
  %num_planes = getelementptr inbounds %struct.tile_fill_state_s, %struct.tile_fill_state_s* %13, i32 0, i32 11
  store i32 %12, i32* %num_planes, align 4, !tbaa !81
  br label %if.end

if.else:                                          ; preds = %entry
  %14 = load %struct.tile_fill_state_s*, %struct.tile_fill_state_s** %ptfs.addr, align 8, !tbaa !1
  %num_planes4 = getelementptr inbounds %struct.tile_fill_state_s, %struct.tile_fill_state_s* %14, i32 0, i32 11
  store i32 -1, i32* %num_planes4, align 4, !tbaa !81
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %15 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %m_tile, align 8, !tbaa !1
  %cmp = icmp eq %struct.gx_color_tile_s* %15, null
  br i1 %cmp, label %if.then.5, label %if.end.7

if.then.5:                                        ; preds = %if.end
  %16 = load %struct.tile_fill_state_s*, %struct.tile_fill_state_s** %ptfs.addr, align 8, !tbaa !1
  %cdev = getelementptr inbounds %struct.tile_fill_state_s, %struct.tile_fill_state_s* %16, i32 0, i32 7
  store %struct.gx_device_mask_clip_s* null, %struct.gx_device_mask_clip_s** %cdev, align 8, !tbaa !29
  %17 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %18 = load %struct.tile_fill_state_s*, %struct.tile_fill_state_s** %ptfs.addr, align 8, !tbaa !1
  %pcdev = getelementptr inbounds %struct.tile_fill_state_s, %struct.tile_fill_state_s* %18, i32 0, i32 8
  store %struct.gx_device_s* %17, %struct.gx_device_s** %pcdev, align 8, !tbaa !30
  %19 = load %struct.tile_fill_state_s*, %struct.tile_fill_state_s** %ptfs.addr, align 8, !tbaa !1
  %phase = getelementptr inbounds %struct.tile_fill_state_s, %struct.tile_fill_state_s* %19, i32 0, i32 10
  %20 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %phase6 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %20, i32 0, i32 2
  %21 = bitcast %struct.gs_int_point_s* %phase to i8*
  %22 = bitcast %struct.gs_int_point_s* %phase6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %21, i8* %22, i64 8, i32 4, i1 false), !tbaa.struct !82
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.7:                                         ; preds = %if.end
  %23 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %23, i32 0, i32 3
  %24 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !83
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %24, i32 0, i32 1
  %alloc_struct = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 8
  %25 = load i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct, align 8, !tbaa !84
  %26 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %memory8 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %26, i32 0, i32 3
  %27 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory8, align 8, !tbaa !83
  %call = call i8* %25(%struct.gs_memory_s* %27, %struct.gs_memory_struct_type_s* @st_device_mask_clip, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i32 0, i32 0)) #5
  %28 = bitcast i8* %call to %struct.gx_device_mask_clip_s*
  %29 = load %struct.tile_fill_state_s*, %struct.tile_fill_state_s** %ptfs.addr, align 8, !tbaa !1
  %cdev9 = getelementptr inbounds %struct.tile_fill_state_s, %struct.tile_fill_state_s* %29, i32 0, i32 7
  store %struct.gx_device_mask_clip_s* %28, %struct.gx_device_mask_clip_s** %cdev9, align 8, !tbaa !29
  %cmp10 = icmp eq %struct.gx_device_mask_clip_s* %28, null
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end.7
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.12:                                        ; preds = %if.end.7
  %30 = load %struct.tile_fill_state_s*, %struct.tile_fill_state_s** %ptfs.addr, align 8, !tbaa !1
  %cdev13 = getelementptr inbounds %struct.tile_fill_state_s, %struct.tile_fill_state_s* %30, i32 0, i32 7
  %31 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev13, align 8, !tbaa !29
  %finalize = getelementptr inbounds %struct.gx_device_mask_clip_s, %struct.gx_device_mask_clip_s* %31, i32 0, i32 6
  store void (%struct.gx_device_s*)* null, void (%struct.gx_device_s*)** %finalize, align 8, !tbaa !87
  %32 = load %struct.tile_fill_state_s*, %struct.tile_fill_state_s** %ptfs.addr, align 8, !tbaa !1
  %cdev14 = getelementptr inbounds %struct.tile_fill_state_s, %struct.tile_fill_state_s* %32, i32 0, i32 7
  %33 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev14, align 8, !tbaa !29
  %34 = bitcast %struct.gx_device_mask_clip_s* %33 to %struct.gx_device_s*
  %35 = load %struct.tile_fill_state_s*, %struct.tile_fill_state_s** %ptfs.addr, align 8, !tbaa !1
  %pcdev15 = getelementptr inbounds %struct.tile_fill_state_s, %struct.tile_fill_state_s* %35, i32 0, i32 8
  store %struct.gx_device_s* %34, %struct.gx_device_s** %pcdev15, align 8, !tbaa !30
  %36 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %m_tile, align 8, !tbaa !1
  %tmask = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %36, i32 0, i32 8
  %37 = load %struct.tile_fill_state_s*, %struct.tile_fill_state_s** %ptfs.addr, align 8, !tbaa !1
  %tmask16 = getelementptr inbounds %struct.tile_fill_state_s, %struct.tile_fill_state_s* %37, i32 0, i32 9
  store %struct.gx_strip_bitmap_s* %tmask, %struct.gx_strip_bitmap_s** %tmask16, align 8, !tbaa !97
  %38 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %mask17 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %38, i32 0, i32 5
  %m_phase = getelementptr inbounds %struct._mask, %struct._mask* %mask17, i32 0, i32 0
  %x = getelementptr inbounds %struct.mp_, %struct.mp_* %m_phase, i32 0, i32 0
  %39 = load i32, i32* %x, align 4, !tbaa !98
  %40 = load %struct.tile_fill_state_s*, %struct.tile_fill_state_s** %ptfs.addr, align 8, !tbaa !1
  %phase18 = getelementptr inbounds %struct.tile_fill_state_s, %struct.tile_fill_state_s* %40, i32 0, i32 10
  %x19 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %phase18, i32 0, i32 0
  store i32 %39, i32* %x19, align 4, !tbaa !23
  %41 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %mask20 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %41, i32 0, i32 5
  %m_phase21 = getelementptr inbounds %struct._mask, %struct._mask* %mask20, i32 0, i32 0
  %y = getelementptr inbounds %struct.mp_, %struct.mp_* %m_phase21, i32 0, i32 1
  %42 = load i32, i32* %y, align 4, !tbaa !99
  %43 = load %struct.tile_fill_state_s*, %struct.tile_fill_state_s** %ptfs.addr, align 8, !tbaa !1
  %phase22 = getelementptr inbounds %struct.tile_fill_state_s, %struct.tile_fill_state_s* %43, i32 0, i32 10
  %y23 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %phase22, i32 0, i32 1
  store i32 %42, i32* %y23, align 4, !tbaa !27
  %44 = load i32, i32* %set_mask_phase.addr, align 4, !tbaa !5
  %tobool24 = icmp ne i32 %44, 0
  br i1 %tobool24, label %land.lhs.true, label %if.else.115

land.lhs.true:                                    ; preds = %if.end.12
  %45 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %m_tile, align 8, !tbaa !1
  %is_simple = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %45, i32 0, i32 11
  %46 = load i8, i8* %is_simple, align 1, !tbaa !9
  %conv = zext i8 %46 to i32
  %tobool25 = icmp ne i32 %conv, 0
  br i1 %tobool25, label %if.then.26, label %if.else.115

if.then.26:                                       ; preds = %land.lhs.true
  %47 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %m_tile, align 8, !tbaa !1
  %step_matrix = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %47, i32 0, i32 5
  %tx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %step_matrix, i32 0, i32 4
  %48 = load float, float* %tx, align 4, !tbaa !22
  %49 = load %struct.tile_fill_state_s*, %struct.tile_fill_state_s** %ptfs.addr, align 8, !tbaa !1
  %phase27 = getelementptr inbounds %struct.tile_fill_state_s, %struct.tile_fill_state_s* %49, i32 0, i32 10
  %x28 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %phase27, i32 0, i32 0
  %50 = load i32, i32* %x28, align 4, !tbaa !23
  %conv29 = sitofp i32 %50 to float
  %sub = fsub float %48, %conv29
  %conv30 = fpext float %sub to double
  %add = fadd double %conv30, 5.000000e-01
  %conv31 = fptosi double %add to i32
  %51 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %m_tile, align 8, !tbaa !1
  %step_matrix32 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %51, i32 0, i32 5
  %tx33 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %step_matrix32, i32 0, i32 4
  %52 = load float, float* %tx33, align 4, !tbaa !22
  %53 = load %struct.tile_fill_state_s*, %struct.tile_fill_state_s** %ptfs.addr, align 8, !tbaa !1
  %phase34 = getelementptr inbounds %struct.tile_fill_state_s, %struct.tile_fill_state_s* %53, i32 0, i32 10
  %x35 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %phase34, i32 0, i32 0
  %54 = load i32, i32* %x35, align 4, !tbaa !23
  %conv36 = sitofp i32 %54 to float
  %sub37 = fsub float %52, %conv36
  %conv38 = fpext float %sub37 to double
  %add39 = fadd double %conv38, 5.000000e-01
  %cmp40 = fcmp olt double %add39, 0.000000e+00
  br i1 %cmp40, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.then.26
  %55 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %m_tile, align 8, !tbaa !1
  %step_matrix42 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %55, i32 0, i32 5
  %tx43 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %step_matrix42, i32 0, i32 4
  %56 = load float, float* %tx43, align 4, !tbaa !22
  %57 = load %struct.tile_fill_state_s*, %struct.tile_fill_state_s** %ptfs.addr, align 8, !tbaa !1
  %phase44 = getelementptr inbounds %struct.tile_fill_state_s, %struct.tile_fill_state_s* %57, i32 0, i32 10
  %x45 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %phase44, i32 0, i32 0
  %58 = load i32, i32* %x45, align 4, !tbaa !23
  %conv46 = sitofp i32 %58 to float
  %sub47 = fsub float %56, %conv46
  %conv48 = fpext float %sub47 to double
  %add49 = fadd double %conv48, 5.000000e-01
  %59 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %m_tile, align 8, !tbaa !1
  %step_matrix50 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %59, i32 0, i32 5
  %tx51 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %step_matrix50, i32 0, i32 4
  %60 = load float, float* %tx51, align 4, !tbaa !22
  %61 = load %struct.tile_fill_state_s*, %struct.tile_fill_state_s** %ptfs.addr, align 8, !tbaa !1
  %phase52 = getelementptr inbounds %struct.tile_fill_state_s, %struct.tile_fill_state_s* %61, i32 0, i32 10
  %x53 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %phase52, i32 0, i32 0
  %62 = load i32, i32* %x53, align 4, !tbaa !23
  %conv54 = sitofp i32 %62 to float
  %sub55 = fsub float %60, %conv54
  %conv56 = fpext float %sub55 to double
  %add57 = fadd double %conv56, 5.000000e-01
  %conv58 = fptosi double %add57 to i32
  %conv59 = sitofp i32 %conv58 to float
  %conv60 = fpext float %conv59 to double
  %cmp61 = fcmp une double %add49, %conv60
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.then.26
  %63 = phi i1 [ false, %if.then.26 ], [ %cmp61, %land.rhs ]
  %land.ext = zext i1 %63 to i32
  %sub63 = sub nsw i32 %conv31, %land.ext
  %sub64 = sub nsw i32 0, %sub63
  %64 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %m_tile, align 8, !tbaa !1
  %tmask65 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %64, i32 0, i32 8
  %rep_width = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tmask65, i32 0, i32 4
  %65 = load i16, i16* %rep_width, align 2, !tbaa !100
  %conv66 = zext i16 %65 to i32
  %call67 = call i32 @imod(i32 %sub64, i32 %conv66) #5
  store i32 %call67, i32* %px, align 4, !tbaa !5
  %66 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %m_tile, align 8, !tbaa !1
  %step_matrix68 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %66, i32 0, i32 5
  %ty = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %step_matrix68, i32 0, i32 5
  %67 = load float, float* %ty, align 4, !tbaa !26
  %68 = load %struct.tile_fill_state_s*, %struct.tile_fill_state_s** %ptfs.addr, align 8, !tbaa !1
  %phase69 = getelementptr inbounds %struct.tile_fill_state_s, %struct.tile_fill_state_s* %68, i32 0, i32 10
  %y70 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %phase69, i32 0, i32 1
  %69 = load i32, i32* %y70, align 4, !tbaa !27
  %conv71 = sitofp i32 %69 to float
  %sub72 = fsub float %67, %conv71
  %conv73 = fpext float %sub72 to double
  %add74 = fadd double %conv73, 5.000000e-01
  %conv75 = fptosi double %add74 to i32
  %70 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %m_tile, align 8, !tbaa !1
  %step_matrix76 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %70, i32 0, i32 5
  %ty77 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %step_matrix76, i32 0, i32 5
  %71 = load float, float* %ty77, align 4, !tbaa !26
  %72 = load %struct.tile_fill_state_s*, %struct.tile_fill_state_s** %ptfs.addr, align 8, !tbaa !1
  %phase78 = getelementptr inbounds %struct.tile_fill_state_s, %struct.tile_fill_state_s* %72, i32 0, i32 10
  %y79 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %phase78, i32 0, i32 1
  %73 = load i32, i32* %y79, align 4, !tbaa !27
  %conv80 = sitofp i32 %73 to float
  %sub81 = fsub float %71, %conv80
  %conv82 = fpext float %sub81 to double
  %add83 = fadd double %conv82, 5.000000e-01
  %cmp84 = fcmp olt double %add83, 0.000000e+00
  br i1 %cmp84, label %land.rhs.86, label %land.end.108

land.rhs.86:                                      ; preds = %land.end
  %74 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %m_tile, align 8, !tbaa !1
  %step_matrix87 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %74, i32 0, i32 5
  %ty88 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %step_matrix87, i32 0, i32 5
  %75 = load float, float* %ty88, align 4, !tbaa !26
  %76 = load %struct.tile_fill_state_s*, %struct.tile_fill_state_s** %ptfs.addr, align 8, !tbaa !1
  %phase89 = getelementptr inbounds %struct.tile_fill_state_s, %struct.tile_fill_state_s* %76, i32 0, i32 10
  %y90 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %phase89, i32 0, i32 1
  %77 = load i32, i32* %y90, align 4, !tbaa !27
  %conv91 = sitofp i32 %77 to float
  %sub92 = fsub float %75, %conv91
  %conv93 = fpext float %sub92 to double
  %add94 = fadd double %conv93, 5.000000e-01
  %78 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %m_tile, align 8, !tbaa !1
  %step_matrix95 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %78, i32 0, i32 5
  %ty96 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %step_matrix95, i32 0, i32 5
  %79 = load float, float* %ty96, align 4, !tbaa !26
  %80 = load %struct.tile_fill_state_s*, %struct.tile_fill_state_s** %ptfs.addr, align 8, !tbaa !1
  %phase97 = getelementptr inbounds %struct.tile_fill_state_s, %struct.tile_fill_state_s* %80, i32 0, i32 10
  %y98 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %phase97, i32 0, i32 1
  %81 = load i32, i32* %y98, align 4, !tbaa !27
  %conv99 = sitofp i32 %81 to float
  %sub100 = fsub float %79, %conv99
  %conv101 = fpext float %sub100 to double
  %add102 = fadd double %conv101, 5.000000e-01
  %conv103 = fptosi double %add102 to i32
  %conv104 = sitofp i32 %conv103 to float
  %conv105 = fpext float %conv104 to double
  %cmp106 = fcmp une double %add94, %conv105
  br label %land.end.108

land.end.108:                                     ; preds = %land.rhs.86, %land.end
  %82 = phi i1 [ false, %land.end ], [ %cmp106, %land.rhs.86 ]
  %land.ext109 = zext i1 %82 to i32
  %sub110 = sub nsw i32 %conv75, %land.ext109
  %sub111 = sub nsw i32 0, %sub110
  %83 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %m_tile, align 8, !tbaa !1
  %tmask112 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %83, i32 0, i32 8
  %rep_height = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tmask112, i32 0, i32 5
  %84 = load i16, i16* %rep_height, align 2, !tbaa !101
  %conv113 = zext i16 %84 to i32
  %call114 = call i32 @imod(i32 %sub111, i32 %conv113) #5
  store i32 %call114, i32* %py, align 4, !tbaa !5
  br label %if.end.116

if.else.115:                                      ; preds = %land.lhs.true, %if.end.12
  store i32 0, i32* %py, align 4, !tbaa !5
  store i32 0, i32* %px, align 4, !tbaa !5
  br label %if.end.116

if.end.116:                                       ; preds = %if.else.115, %land.end.108
  %85 = load %struct.tile_fill_state_s*, %struct.tile_fill_state_s** %ptfs.addr, align 8, !tbaa !1
  %cdev117 = getelementptr inbounds %struct.tile_fill_state_s, %struct.tile_fill_state_s* %85, i32 0, i32 7
  %86 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev117, align 8, !tbaa !29
  %87 = load %struct.tile_fill_state_s*, %struct.tile_fill_state_s** %ptfs.addr, align 8, !tbaa !1
  %tmask118 = getelementptr inbounds %struct.tile_fill_state_s, %struct.tile_fill_state_s* %87, i32 0, i32 9
  %88 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %tmask118, align 8, !tbaa !97
  %89 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %90 = load i32, i32* %px, align 4, !tbaa !5
  %91 = load i32, i32* %py, align 4, !tbaa !5
  %call119 = call i32 @tile_clip_initialize(%struct.gx_device_mask_clip_s* %86, %struct.gx_strip_bitmap_s* %88, %struct.gx_device_s* %89, i32 %90, i32 %91) #5
  store i32 %call119, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.116, %if.then.11, %if.then.5
  %92 = bitcast i32* %is_planar to i8*
  call void @llvm.lifetime.end(i64 4, i8* %92) #1
  %93 = bitcast i32* %py to i8*
  call void @llvm.lifetime.end(i64 4, i8* %93) #1
  %94 = bitcast i32* %px to i8*
  call void @llvm.lifetime.end(i64 4, i8* %94) #1
  %95 = bitcast %struct.gx_color_tile_s** %m_tile to i8*
  call void @llvm.lifetime.end(i64 8, i8* %95) #1
  %96 = load i32, i32* %retval
  ret i32 %96
}

declare i32 @imod(i32, i32) #2

declare void @tile_clip_set_phase(%struct.gx_device_mask_clip_s*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define internal i32 @tile_by_steps(%struct.tile_fill_state_s* %ptfs, i32 %x0, i32 %y0, i32 %w0, i32 %h0, %struct.gx_color_tile_s* %ptile, %struct.gx_strip_bitmap_s* %tbits_or_tmask, i32 (%struct.tile_fill_state_s*, i32, i32, i32, i32)* %fill_proc) #0 {
entry:
  %retval = alloca i32, align 4
  %ptfs.addr = alloca %struct.tile_fill_state_s*, align 8
  %x0.addr = alloca i32, align 4
  %y0.addr = alloca i32, align 4
  %w0.addr = alloca i32, align 4
  %h0.addr = alloca i32, align 4
  %ptile.addr = alloca %struct.gx_color_tile_s*, align 8
  %tbits_or_tmask.addr = alloca %struct.gx_strip_bitmap_s*, align 8
  %fill_proc.addr = alloca i32 (%struct.tile_fill_state_s*, i32, i32, i32, i32)*, align 8
  %x1 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %i0 = alloca i32, align 4
  %i1 = alloca i32, align 4
  %j0 = alloca i32, align 4
  %j1 = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %step_matrix = alloca %struct.gs_matrix_s, align 4
  %code = alloca i32, align 4
  %bbox = alloca %struct.gs_rect_s, align 8
  %ibbox = alloca %struct.gs_rect_s, align 8
  %bbw = alloca double, align 8
  %bbh = alloca double, align 8
  %u0 = alloca double, align 8
  %v0 = alloca double, align 8
  %u1 = alloca double, align 8
  %v1 = alloca double, align 8
  %x131 = alloca i32, align 4
  %y176 = alloca i32, align 4
  %w = alloca i32, align 4
  %h = alloca i32, align 4
  %xoff = alloca i32, align 4
  %yoff = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.tile_fill_state_s* %ptfs, %struct.tile_fill_state_s** %ptfs.addr, align 8, !tbaa !1
  store i32 %x0, i32* %x0.addr, align 4, !tbaa !5
  store i32 %y0, i32* %y0.addr, align 4, !tbaa !5
  store i32 %w0, i32* %w0.addr, align 4, !tbaa !5
  store i32 %h0, i32* %h0.addr, align 4, !tbaa !5
  store %struct.gx_color_tile_s* %ptile, %struct.gx_color_tile_s** %ptile.addr, align 8, !tbaa !1
  store %struct.gx_strip_bitmap_s* %tbits_or_tmask, %struct.gx_strip_bitmap_s** %tbits_or_tmask.addr, align 8, !tbaa !1
  store i32 (%struct.tile_fill_state_s*, i32, i32, i32, i32)* %fill_proc, i32 (%struct.tile_fill_state_s*, i32, i32, i32, i32)** %fill_proc.addr, align 8, !tbaa !1
  %0 = bitcast i32* %x1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load i32, i32* %x0.addr, align 4, !tbaa !5
  %2 = load i32, i32* %w0.addr, align 4, !tbaa !5
  %add = add nsw i32 %1, %2
  store i32 %add, i32* %x1, align 4, !tbaa !5
  %3 = bitcast i32* %y1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load i32, i32* %y0.addr, align 4, !tbaa !5
  %5 = load i32, i32* %h0.addr, align 4, !tbaa !5
  %add1 = add nsw i32 %4, %5
  store i32 %add1, i32* %y1, align 4, !tbaa !5
  %6 = bitcast i32* %i0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = bitcast i32* %j0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = bitcast i32* %j1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  %12 = bitcast %struct.gs_matrix_s* %step_matrix to i8*
  call void @llvm.lifetime.start(i64 24, i8* %12) #1
  %13 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  %14 = load i32, i32* %x0.addr, align 4, !tbaa !5
  %15 = load %struct.tile_fill_state_s*, %struct.tile_fill_state_s** %ptfs.addr, align 8, !tbaa !1
  %x02 = getelementptr inbounds %struct.tile_fill_state_s, %struct.tile_fill_state_s* %15, i32 0, i32 1
  store i32 %14, i32* %x02, align 4, !tbaa !102
  %16 = load i32, i32* %w0.addr, align 4, !tbaa !5
  %17 = load %struct.tile_fill_state_s*, %struct.tile_fill_state_s** %ptfs.addr, align 8, !tbaa !1
  %w03 = getelementptr inbounds %struct.tile_fill_state_s, %struct.tile_fill_state_s* %17, i32 0, i32 3
  store i32 %16, i32* %w03, align 4, !tbaa !103
  %18 = load i32, i32* %y0.addr, align 4, !tbaa !5
  %19 = load %struct.tile_fill_state_s*, %struct.tile_fill_state_s** %ptfs.addr, align 8, !tbaa !1
  %y04 = getelementptr inbounds %struct.tile_fill_state_s, %struct.tile_fill_state_s* %19, i32 0, i32 2
  store i32 %18, i32* %y04, align 4, !tbaa !104
  %20 = load i32, i32* %h0.addr, align 4, !tbaa !5
  %21 = load %struct.tile_fill_state_s*, %struct.tile_fill_state_s** %ptfs.addr, align 8, !tbaa !1
  %h05 = getelementptr inbounds %struct.tile_fill_state_s, %struct.tile_fill_state_s* %21, i32 0, i32 4
  store i32 %20, i32* %h05, align 4, !tbaa !105
  %22 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ptile.addr, align 8, !tbaa !1
  %step_matrix6 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %22, i32 0, i32 5
  %23 = bitcast %struct.gs_matrix_s* %step_matrix to i8*
  %24 = bitcast %struct.gs_matrix_s* %step_matrix6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* %24, i64 24, i32 4, i1 false), !tbaa.struct !106
  %25 = load %struct.tile_fill_state_s*, %struct.tile_fill_state_s** %ptfs.addr, align 8, !tbaa !1
  %phase = getelementptr inbounds %struct.tile_fill_state_s, %struct.tile_fill_state_s* %25, i32 0, i32 10
  %x = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %phase, i32 0, i32 0
  %26 = load i32, i32* %x, align 4, !tbaa !23
  %conv = sitofp i32 %26 to float
  %tx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %step_matrix, i32 0, i32 4
  %27 = load float, float* %tx, align 4, !tbaa !108
  %sub = fsub float %27, %conv
  store float %sub, float* %tx, align 4, !tbaa !108
  %28 = load %struct.tile_fill_state_s*, %struct.tile_fill_state_s** %ptfs.addr, align 8, !tbaa !1
  %phase7 = getelementptr inbounds %struct.tile_fill_state_s, %struct.tile_fill_state_s* %28, i32 0, i32 10
  %y = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %phase7, i32 0, i32 1
  %29 = load i32, i32* %y, align 4, !tbaa !27
  %conv8 = sitofp i32 %29 to float
  %ty = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %step_matrix, i32 0, i32 5
  %30 = load float, float* %ty, align 4, !tbaa !109
  %sub9 = fsub float %30, %conv8
  store float %sub9, float* %ty, align 4, !tbaa !109
  %31 = bitcast %struct.gs_rect_s* %bbox to i8*
  call void @llvm.lifetime.start(i64 32, i8* %31) #1
  %32 = bitcast %struct.gs_rect_s* %ibbox to i8*
  call void @llvm.lifetime.start(i64 32, i8* %32) #1
  %33 = bitcast double* %bbw to i8*
  call void @llvm.lifetime.start(i64 8, i8* %33) #1
  %34 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ptile.addr, align 8, !tbaa !1
  %bbox10 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %34, i32 0, i32 6
  %q = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %bbox10, i32 0, i32 1
  %x11 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q, i32 0, i32 0
  %35 = load double, double* %x11, align 8, !tbaa !110
  %36 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ptile.addr, align 8, !tbaa !1
  %bbox12 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %36, i32 0, i32 6
  %p = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %bbox12, i32 0, i32 0
  %x13 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p, i32 0, i32 0
  %37 = load double, double* %x13, align 8, !tbaa !111
  %sub14 = fsub double %35, %37
  store double %sub14, double* %bbw, align 8, !tbaa !112
  %38 = bitcast double* %bbh to i8*
  call void @llvm.lifetime.start(i64 8, i8* %38) #1
  %39 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ptile.addr, align 8, !tbaa !1
  %bbox15 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %39, i32 0, i32 6
  %q16 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %bbox15, i32 0, i32 1
  %y17 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q16, i32 0, i32 1
  %40 = load double, double* %y17, align 8, !tbaa !113
  %41 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ptile.addr, align 8, !tbaa !1
  %bbox18 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %41, i32 0, i32 6
  %p19 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %bbox18, i32 0, i32 0
  %y20 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p19, i32 0, i32 1
  %42 = load double, double* %y20, align 8, !tbaa !114
  %sub21 = fsub double %40, %42
  store double %sub21, double* %bbh, align 8, !tbaa !112
  %43 = bitcast double* %u0 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %43) #1
  %44 = bitcast double* %v0 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %44) #1
  %45 = bitcast double* %u1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %45) #1
  %46 = bitcast double* %v1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %46) #1
  %47 = load i32, i32* %x0.addr, align 4, !tbaa !5
  %conv22 = sitofp i32 %47 to double
  %p23 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %bbox, i32 0, i32 0
  %x24 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p23, i32 0, i32 0
  store double %conv22, double* %x24, align 8, !tbaa !115
  %48 = load i32, i32* %y0.addr, align 4, !tbaa !5
  %conv25 = sitofp i32 %48 to double
  %p26 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %bbox, i32 0, i32 0
  %y27 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p26, i32 0, i32 1
  store double %conv25, double* %y27, align 8, !tbaa !116
  %49 = load i32, i32* %x1, align 4, !tbaa !5
  %conv28 = sitofp i32 %49 to double
  %q29 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %bbox, i32 0, i32 1
  %x30 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q29, i32 0, i32 0
  store double %conv28, double* %x30, align 8, !tbaa !117
  %50 = load i32, i32* %y1, align 4, !tbaa !5
  %conv31 = sitofp i32 %50 to double
  %q32 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %bbox, i32 0, i32 1
  %y33 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q32, i32 0, i32 1
  store double %conv31, double* %y33, align 8, !tbaa !118
  %call = call i32 @gs_bbox_transform_inverse(%struct.gs_rect_s* %bbox, %struct.gs_matrix_s* %step_matrix, %struct.gs_rect_s* %ibbox) #5
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %p34 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %ibbox, i32 0, i32 0
  %x35 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p34, i32 0, i32 0
  %51 = load double, double* %x35, align 8, !tbaa !115
  %52 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ptile.addr, align 8, !tbaa !1
  %bbox36 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %52, i32 0, i32 6
  %p37 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %bbox36, i32 0, i32 0
  %x38 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p37, i32 0, i32 0
  %53 = load double, double* %x38, align 8, !tbaa !111
  %cmp = fcmp ogt double %53, 0.000000e+00
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.end
  %54 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ptile.addr, align 8, !tbaa !1
  %bbox40 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %54, i32 0, i32 6
  %p41 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %bbox40, i32 0, i32 0
  %x42 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p41, i32 0, i32 0
  %55 = load double, double* %x42, align 8, !tbaa !111
  br label %cond.end

cond.false:                                       ; preds = %do.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %55, %cond.true ], [ 0.000000e+00, %cond.false ]
  %sub43 = fsub double %51, %cond
  %sub44 = fsub double %sub43, 1.000000e-06
  store double %sub44, double* %u0, align 8, !tbaa !112
  %p45 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %ibbox, i32 0, i32 0
  %y46 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p45, i32 0, i32 1
  %56 = load double, double* %y46, align 8, !tbaa !116
  %57 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ptile.addr, align 8, !tbaa !1
  %bbox47 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %57, i32 0, i32 6
  %p48 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %bbox47, i32 0, i32 0
  %y49 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p48, i32 0, i32 1
  %58 = load double, double* %y49, align 8, !tbaa !114
  %cmp50 = fcmp ogt double %58, 0.000000e+00
  br i1 %cmp50, label %cond.true.52, label %cond.false.56

cond.true.52:                                     ; preds = %cond.end
  %59 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ptile.addr, align 8, !tbaa !1
  %bbox53 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %59, i32 0, i32 6
  %p54 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %bbox53, i32 0, i32 0
  %y55 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p54, i32 0, i32 1
  %60 = load double, double* %y55, align 8, !tbaa !114
  br label %cond.end.57

cond.false.56:                                    ; preds = %cond.end
  br label %cond.end.57

cond.end.57:                                      ; preds = %cond.false.56, %cond.true.52
  %cond58 = phi double [ %60, %cond.true.52 ], [ 0.000000e+00, %cond.false.56 ]
  %sub59 = fsub double %56, %cond58
  %sub60 = fsub double %sub59, 1.000000e-06
  store double %sub60, double* %v0, align 8, !tbaa !112
  %q61 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %ibbox, i32 0, i32 1
  %x62 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q61, i32 0, i32 0
  %61 = load double, double* %x62, align 8, !tbaa !117
  %62 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ptile.addr, align 8, !tbaa !1
  %bbox63 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %62, i32 0, i32 6
  %q64 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %bbox63, i32 0, i32 1
  %x65 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q64, i32 0, i32 0
  %63 = load double, double* %x65, align 8, !tbaa !110
  %cmp66 = fcmp olt double %63, 0.000000e+00
  br i1 %cmp66, label %cond.true.68, label %cond.false.72

cond.true.68:                                     ; preds = %cond.end.57
  %64 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ptile.addr, align 8, !tbaa !1
  %bbox69 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %64, i32 0, i32 6
  %q70 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %bbox69, i32 0, i32 1
  %x71 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q70, i32 0, i32 0
  %65 = load double, double* %x71, align 8, !tbaa !110
  br label %cond.end.73

cond.false.72:                                    ; preds = %cond.end.57
  br label %cond.end.73

cond.end.73:                                      ; preds = %cond.false.72, %cond.true.68
  %cond74 = phi double [ %65, %cond.true.68 ], [ 0.000000e+00, %cond.false.72 ]
  %sub75 = fsub double %61, %cond74
  %add76 = fadd double %sub75, 1.000000e-06
  store double %add76, double* %u1, align 8, !tbaa !112
  %q77 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %ibbox, i32 0, i32 1
  %y78 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q77, i32 0, i32 1
  %66 = load double, double* %y78, align 8, !tbaa !118
  %67 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ptile.addr, align 8, !tbaa !1
  %bbox79 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %67, i32 0, i32 6
  %q80 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %bbox79, i32 0, i32 1
  %y81 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q80, i32 0, i32 1
  %68 = load double, double* %y81, align 8, !tbaa !113
  %cmp82 = fcmp olt double %68, 0.000000e+00
  br i1 %cmp82, label %cond.true.84, label %cond.false.88

cond.true.84:                                     ; preds = %cond.end.73
  %69 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ptile.addr, align 8, !tbaa !1
  %bbox85 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %69, i32 0, i32 6
  %q86 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %bbox85, i32 0, i32 1
  %y87 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q86, i32 0, i32 1
  %70 = load double, double* %y87, align 8, !tbaa !113
  br label %cond.end.89

cond.false.88:                                    ; preds = %cond.end.73
  br label %cond.end.89

cond.end.89:                                      ; preds = %cond.false.88, %cond.true.84
  %cond90 = phi double [ %70, %cond.true.84 ], [ 0.000000e+00, %cond.false.88 ]
  %sub91 = fsub double %66, %cond90
  %add92 = fadd double %sub91, 1.000000e-06
  store double %add92, double* %v1, align 8, !tbaa !112
  %71 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ptile.addr, align 8, !tbaa !1
  %is_simple = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %71, i32 0, i32 11
  %72 = load i8, i8* %is_simple, align 1, !tbaa !9
  %tobool = icmp ne i8 %72, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %cond.end.89
  %73 = load double, double* %bbw, align 8, !tbaa !112
  %74 = load double, double* %u0, align 8, !tbaa !112
  %sub93 = fsub double %74, %73
  store double %sub93, double* %u0, align 8, !tbaa !112
  %75 = load double, double* %bbh, align 8, !tbaa !112
  %76 = load double, double* %v0, align 8, !tbaa !112
  %sub94 = fsub double %76, %75
  store double %sub94, double* %v0, align 8, !tbaa !112
  %77 = load double, double* %bbw, align 8, !tbaa !112
  %78 = load double, double* %u1, align 8, !tbaa !112
  %add95 = fadd double %78, %77
  store double %add95, double* %u1, align 8, !tbaa !112
  %79 = load double, double* %bbh, align 8, !tbaa !112
  %80 = load double, double* %v1, align 8, !tbaa !112
  %add96 = fadd double %80, %79
  store double %add96, double* %v1, align 8, !tbaa !112
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end.89
  %81 = load double, double* %u0, align 8, !tbaa !112
  %conv97 = fptosi double %81 to i32
  %82 = load double, double* %u0, align 8, !tbaa !112
  %cmp98 = fcmp olt double %82, 0.000000e+00
  br i1 %cmp98, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.end
  %83 = load double, double* %u0, align 8, !tbaa !112
  %84 = load double, double* %u0, align 8, !tbaa !112
  %conv100 = fptosi double %84 to i32
  %conv101 = sitofp i32 %conv100 to float
  %conv102 = fpext float %conv101 to double
  %cmp103 = fcmp une double %83, %conv102
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end
  %85 = phi i1 [ false, %if.end ], [ %cmp103, %land.rhs ]
  %land.ext = zext i1 %85 to i32
  %sub105 = sub nsw i32 %conv97, %land.ext
  store i32 %sub105, i32* %i0, align 4, !tbaa !5
  %86 = load double, double* %v0, align 8, !tbaa !112
  %conv106 = fptosi double %86 to i32
  %87 = load double, double* %v0, align 8, !tbaa !112
  %cmp107 = fcmp olt double %87, 0.000000e+00
  br i1 %cmp107, label %land.rhs.109, label %land.end.115

land.rhs.109:                                     ; preds = %land.end
  %88 = load double, double* %v0, align 8, !tbaa !112
  %89 = load double, double* %v0, align 8, !tbaa !112
  %conv110 = fptosi double %89 to i32
  %conv111 = sitofp i32 %conv110 to float
  %conv112 = fpext float %conv111 to double
  %cmp113 = fcmp une double %88, %conv112
  br label %land.end.115

land.end.115:                                     ; preds = %land.rhs.109, %land.end
  %90 = phi i1 [ false, %land.end ], [ %cmp113, %land.rhs.109 ]
  %land.ext116 = zext i1 %90 to i32
  %sub117 = sub nsw i32 %conv106, %land.ext116
  store i32 %sub117, i32* %j0, align 4, !tbaa !5
  %91 = load double, double* %u1, align 8, !tbaa !112
  %call118 = call double @ceil(double %91) #6
  %conv119 = fptosi double %call118 to i32
  store i32 %conv119, i32* %i1, align 4, !tbaa !5
  %92 = load double, double* %v1, align 8, !tbaa !112
  %call120 = call double @ceil(double %92) #6
  %conv121 = fptosi double %call120 to i32
  store i32 %conv121, i32* %j1, align 4, !tbaa !5
  %93 = bitcast double* %v1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %93) #1
  %94 = bitcast double* %u1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %94) #1
  %95 = bitcast double* %v0 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %95) #1
  %96 = bitcast double* %u0 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %96) #1
  %97 = bitcast double* %bbh to i8*
  call void @llvm.lifetime.end(i64 8, i8* %97) #1
  %98 = bitcast double* %bbw to i8*
  call void @llvm.lifetime.end(i64 8, i8* %98) #1
  %99 = bitcast %struct.gs_rect_s* %ibbox to i8*
  call void @llvm.lifetime.end(i64 32, i8* %99) #1
  %100 = bitcast %struct.gs_rect_s* %bbox to i8*
  call void @llvm.lifetime.end(i64 32, i8* %100) #1
  br label %do.body.122

do.body.122:                                      ; preds = %land.end.115
  br label %do.cond.123

do.cond.123:                                      ; preds = %do.body.122
  br label %do.end.124

do.end.124:                                       ; preds = %do.cond.123
  %101 = load i32, i32* %i0, align 4, !tbaa !5
  store i32 %101, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc.286, %do.end.124
  %102 = load i32, i32* %i, align 4, !tbaa !5
  %103 = load i32, i32* %i1, align 4, !tbaa !5
  %cmp125 = icmp slt i32 %102, %103
  br i1 %cmp125, label %for.body, label %for.end.288

for.body:                                         ; preds = %for.cond
  %104 = load i32, i32* %j0, align 4, !tbaa !5
  store i32 %104, i32* %j, align 4, !tbaa !5
  br label %for.cond.127

for.cond.127:                                     ; preds = %for.inc, %for.body
  %105 = load i32, i32* %j, align 4, !tbaa !5
  %106 = load i32, i32* %j1, align 4, !tbaa !5
  %cmp128 = icmp slt i32 %105, %106
  br i1 %cmp128, label %for.body.130, label %for.end

for.body.130:                                     ; preds = %for.cond.127
  %107 = bitcast i32* %x131 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %107) #1
  %xx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %step_matrix, i32 0, i32 0
  %108 = load float, float* %xx, align 4, !tbaa !119
  %109 = load i32, i32* %i, align 4, !tbaa !5
  %conv132 = sitofp i32 %109 to float
  %mul = fmul float %108, %conv132
  %yx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %step_matrix, i32 0, i32 2
  %110 = load float, float* %yx, align 4, !tbaa !120
  %111 = load i32, i32* %j, align 4, !tbaa !5
  %conv133 = sitofp i32 %111 to float
  %mul134 = fmul float %110, %conv133
  %add135 = fadd float %mul, %mul134
  %tx136 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %step_matrix, i32 0, i32 4
  %112 = load float, float* %tx136, align 4, !tbaa !108
  %add137 = fadd float %add135, %112
  %conv138 = fptosi float %add137 to i32
  %xx139 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %step_matrix, i32 0, i32 0
  %113 = load float, float* %xx139, align 4, !tbaa !119
  %114 = load i32, i32* %i, align 4, !tbaa !5
  %conv140 = sitofp i32 %114 to float
  %mul141 = fmul float %113, %conv140
  %yx142 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %step_matrix, i32 0, i32 2
  %115 = load float, float* %yx142, align 4, !tbaa !120
  %116 = load i32, i32* %j, align 4, !tbaa !5
  %conv143 = sitofp i32 %116 to float
  %mul144 = fmul float %115, %conv143
  %add145 = fadd float %mul141, %mul144
  %tx146 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %step_matrix, i32 0, i32 4
  %117 = load float, float* %tx146, align 4, !tbaa !108
  %add147 = fadd float %add145, %117
  %cmp148 = fcmp olt float %add147, 0.000000e+00
  br i1 %cmp148, label %land.rhs.150, label %land.end.173

land.rhs.150:                                     ; preds = %for.body.130
  %xx151 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %step_matrix, i32 0, i32 0
  %118 = load float, float* %xx151, align 4, !tbaa !119
  %119 = load i32, i32* %i, align 4, !tbaa !5
  %conv152 = sitofp i32 %119 to float
  %mul153 = fmul float %118, %conv152
  %yx154 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %step_matrix, i32 0, i32 2
  %120 = load float, float* %yx154, align 4, !tbaa !120
  %121 = load i32, i32* %j, align 4, !tbaa !5
  %conv155 = sitofp i32 %121 to float
  %mul156 = fmul float %120, %conv155
  %add157 = fadd float %mul153, %mul156
  %tx158 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %step_matrix, i32 0, i32 4
  %122 = load float, float* %tx158, align 4, !tbaa !108
  %add159 = fadd float %add157, %122
  %xx160 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %step_matrix, i32 0, i32 0
  %123 = load float, float* %xx160, align 4, !tbaa !119
  %124 = load i32, i32* %i, align 4, !tbaa !5
  %conv161 = sitofp i32 %124 to float
  %mul162 = fmul float %123, %conv161
  %yx163 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %step_matrix, i32 0, i32 2
  %125 = load float, float* %yx163, align 4, !tbaa !120
  %126 = load i32, i32* %j, align 4, !tbaa !5
  %conv164 = sitofp i32 %126 to float
  %mul165 = fmul float %125, %conv164
  %add166 = fadd float %mul162, %mul165
  %tx167 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %step_matrix, i32 0, i32 4
  %127 = load float, float* %tx167, align 4, !tbaa !108
  %add168 = fadd float %add166, %127
  %conv169 = fptosi float %add168 to i32
  %conv170 = sitofp i32 %conv169 to float
  %cmp171 = fcmp une float %add159, %conv170
  br label %land.end.173

land.end.173:                                     ; preds = %land.rhs.150, %for.body.130
  %128 = phi i1 [ false, %for.body.130 ], [ %cmp171, %land.rhs.150 ]
  %land.ext174 = zext i1 %128 to i32
  %sub175 = sub nsw i32 %conv138, %land.ext174
  store i32 %sub175, i32* %x131, align 4, !tbaa !5
  %129 = bitcast i32* %y176 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %129) #1
  %xy = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %step_matrix, i32 0, i32 1
  %130 = load float, float* %xy, align 4, !tbaa !121
  %131 = load i32, i32* %i, align 4, !tbaa !5
  %conv177 = sitofp i32 %131 to float
  %mul178 = fmul float %130, %conv177
  %yy = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %step_matrix, i32 0, i32 3
  %132 = load float, float* %yy, align 4, !tbaa !122
  %133 = load i32, i32* %j, align 4, !tbaa !5
  %conv179 = sitofp i32 %133 to float
  %mul180 = fmul float %132, %conv179
  %add181 = fadd float %mul178, %mul180
  %ty182 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %step_matrix, i32 0, i32 5
  %134 = load float, float* %ty182, align 4, !tbaa !109
  %add183 = fadd float %add181, %134
  %conv184 = fptosi float %add183 to i32
  %xy185 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %step_matrix, i32 0, i32 1
  %135 = load float, float* %xy185, align 4, !tbaa !121
  %136 = load i32, i32* %i, align 4, !tbaa !5
  %conv186 = sitofp i32 %136 to float
  %mul187 = fmul float %135, %conv186
  %yy188 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %step_matrix, i32 0, i32 3
  %137 = load float, float* %yy188, align 4, !tbaa !122
  %138 = load i32, i32* %j, align 4, !tbaa !5
  %conv189 = sitofp i32 %138 to float
  %mul190 = fmul float %137, %conv189
  %add191 = fadd float %mul187, %mul190
  %ty192 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %step_matrix, i32 0, i32 5
  %139 = load float, float* %ty192, align 4, !tbaa !109
  %add193 = fadd float %add191, %139
  %cmp194 = fcmp olt float %add193, 0.000000e+00
  br i1 %cmp194, label %land.rhs.196, label %land.end.219

land.rhs.196:                                     ; preds = %land.end.173
  %xy197 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %step_matrix, i32 0, i32 1
  %140 = load float, float* %xy197, align 4, !tbaa !121
  %141 = load i32, i32* %i, align 4, !tbaa !5
  %conv198 = sitofp i32 %141 to float
  %mul199 = fmul float %140, %conv198
  %yy200 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %step_matrix, i32 0, i32 3
  %142 = load float, float* %yy200, align 4, !tbaa !122
  %143 = load i32, i32* %j, align 4, !tbaa !5
  %conv201 = sitofp i32 %143 to float
  %mul202 = fmul float %142, %conv201
  %add203 = fadd float %mul199, %mul202
  %ty204 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %step_matrix, i32 0, i32 5
  %144 = load float, float* %ty204, align 4, !tbaa !109
  %add205 = fadd float %add203, %144
  %xy206 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %step_matrix, i32 0, i32 1
  %145 = load float, float* %xy206, align 4, !tbaa !121
  %146 = load i32, i32* %i, align 4, !tbaa !5
  %conv207 = sitofp i32 %146 to float
  %mul208 = fmul float %145, %conv207
  %yy209 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %step_matrix, i32 0, i32 3
  %147 = load float, float* %yy209, align 4, !tbaa !122
  %148 = load i32, i32* %j, align 4, !tbaa !5
  %conv210 = sitofp i32 %148 to float
  %mul211 = fmul float %147, %conv210
  %add212 = fadd float %mul208, %mul211
  %ty213 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %step_matrix, i32 0, i32 5
  %149 = load float, float* %ty213, align 4, !tbaa !109
  %add214 = fadd float %add212, %149
  %conv215 = fptosi float %add214 to i32
  %conv216 = sitofp i32 %conv215 to float
  %cmp217 = fcmp une float %add205, %conv216
  br label %land.end.219

land.end.219:                                     ; preds = %land.rhs.196, %land.end.173
  %150 = phi i1 [ false, %land.end.173 ], [ %cmp217, %land.rhs.196 ]
  %land.ext220 = zext i1 %150 to i32
  %sub221 = sub nsw i32 %conv184, %land.ext220
  store i32 %sub221, i32* %y176, align 4, !tbaa !5
  %151 = bitcast i32* %w to i8*
  call void @llvm.lifetime.start(i64 4, i8* %151) #1
  %152 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %tbits_or_tmask.addr, align 8, !tbaa !1
  %size = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %152, i32 0, i32 2
  %x222 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %size, i32 0, i32 0
  %153 = load i32, i32* %x222, align 4, !tbaa !69
  store i32 %153, i32* %w, align 4, !tbaa !5
  %154 = bitcast i32* %h to i8*
  call void @llvm.lifetime.start(i64 4, i8* %154) #1
  %155 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %tbits_or_tmask.addr, align 8, !tbaa !1
  %size223 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %155, i32 0, i32 2
  %y224 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %size223, i32 0, i32 1
  %156 = load i32, i32* %y224, align 4, !tbaa !71
  store i32 %156, i32* %h, align 4, !tbaa !5
  %157 = bitcast i32* %xoff to i8*
  call void @llvm.lifetime.start(i64 4, i8* %157) #1
  %158 = bitcast i32* %yoff to i8*
  call void @llvm.lifetime.start(i64 4, i8* %158) #1
  br label %do.body.225

do.body.225:                                      ; preds = %land.end.219
  br label %do.cond.226

do.cond.226:                                      ; preds = %do.body.225
  br label %do.end.227

do.end.227:                                       ; preds = %do.cond.226
  %159 = load i32, i32* %x131, align 4, !tbaa !5
  %160 = load i32, i32* %x0.addr, align 4, !tbaa !5
  %cmp228 = icmp slt i32 %159, %160
  br i1 %cmp228, label %if.then.230, label %if.else

if.then.230:                                      ; preds = %do.end.227
  %161 = load i32, i32* %x0.addr, align 4, !tbaa !5
  %162 = load i32, i32* %x131, align 4, !tbaa !5
  %sub231 = sub nsw i32 %161, %162
  store i32 %sub231, i32* %xoff, align 4, !tbaa !5
  %163 = load i32, i32* %x0.addr, align 4, !tbaa !5
  store i32 %163, i32* %x131, align 4, !tbaa !5
  %164 = load i32, i32* %xoff, align 4, !tbaa !5
  %165 = load i32, i32* %w, align 4, !tbaa !5
  %sub232 = sub nsw i32 %165, %164
  store i32 %sub232, i32* %w, align 4, !tbaa !5
  br label %if.end.233

if.else:                                          ; preds = %do.end.227
  store i32 0, i32* %xoff, align 4, !tbaa !5
  br label %if.end.233

if.end.233:                                       ; preds = %if.else, %if.then.230
  %166 = load i32, i32* %y176, align 4, !tbaa !5
  %167 = load i32, i32* %y0.addr, align 4, !tbaa !5
  %cmp234 = icmp slt i32 %166, %167
  br i1 %cmp234, label %if.then.236, label %if.else.239

if.then.236:                                      ; preds = %if.end.233
  %168 = load i32, i32* %y0.addr, align 4, !tbaa !5
  %169 = load i32, i32* %y176, align 4, !tbaa !5
  %sub237 = sub nsw i32 %168, %169
  store i32 %sub237, i32* %yoff, align 4, !tbaa !5
  %170 = load i32, i32* %y0.addr, align 4, !tbaa !5
  store i32 %170, i32* %y176, align 4, !tbaa !5
  %171 = load i32, i32* %yoff, align 4, !tbaa !5
  %172 = load i32, i32* %h, align 4, !tbaa !5
  %sub238 = sub nsw i32 %172, %171
  store i32 %sub238, i32* %h, align 4, !tbaa !5
  br label %if.end.240

if.else.239:                                      ; preds = %if.end.233
  store i32 0, i32* %yoff, align 4, !tbaa !5
  br label %if.end.240

if.end.240:                                       ; preds = %if.else.239, %if.then.236
  %173 = load i32, i32* %x131, align 4, !tbaa !5
  %174 = load i32, i32* %w, align 4, !tbaa !5
  %add241 = add nsw i32 %173, %174
  %175 = load i32, i32* %x1, align 4, !tbaa !5
  %cmp242 = icmp sgt i32 %add241, %175
  br i1 %cmp242, label %if.then.244, label %if.end.246

if.then.244:                                      ; preds = %if.end.240
  %176 = load i32, i32* %x1, align 4, !tbaa !5
  %177 = load i32, i32* %x131, align 4, !tbaa !5
  %sub245 = sub nsw i32 %176, %177
  store i32 %sub245, i32* %w, align 4, !tbaa !5
  br label %if.end.246

if.end.246:                                       ; preds = %if.then.244, %if.end.240
  %178 = load i32, i32* %y176, align 4, !tbaa !5
  %179 = load i32, i32* %h, align 4, !tbaa !5
  %add247 = add nsw i32 %178, %179
  %180 = load i32, i32* %y1, align 4, !tbaa !5
  %cmp248 = icmp sgt i32 %add247, %180
  br i1 %cmp248, label %if.then.250, label %if.end.252

if.then.250:                                      ; preds = %if.end.246
  %181 = load i32, i32* %y1, align 4, !tbaa !5
  %182 = load i32, i32* %y176, align 4, !tbaa !5
  %sub251 = sub nsw i32 %181, %182
  store i32 %sub251, i32* %h, align 4, !tbaa !5
  br label %if.end.252

if.end.252:                                       ; preds = %if.then.250, %if.end.246
  br label %do.body.253

do.body.253:                                      ; preds = %if.end.252
  br label %do.cond.254

do.cond.254:                                      ; preds = %do.body.253
  br label %do.end.255

do.end.255:                                       ; preds = %do.cond.254
  %183 = load i32, i32* %w, align 4, !tbaa !5
  %cmp256 = icmp sgt i32 %183, 0
  br i1 %cmp256, label %land.lhs.true, label %if.end.280

land.lhs.true:                                    ; preds = %do.end.255
  %184 = load i32, i32* %h, align 4, !tbaa !5
  %cmp258 = icmp sgt i32 %184, 0
  br i1 %cmp258, label %if.then.260, label %if.end.280

if.then.260:                                      ; preds = %land.lhs.true
  %185 = load %struct.tile_fill_state_s*, %struct.tile_fill_state_s** %ptfs.addr, align 8, !tbaa !1
  %pcdev = getelementptr inbounds %struct.tile_fill_state_s, %struct.tile_fill_state_s* %185, i32 0, i32 8
  %186 = load %struct.gx_device_s*, %struct.gx_device_s** %pcdev, align 8, !tbaa !30
  %187 = load %struct.tile_fill_state_s*, %struct.tile_fill_state_s** %ptfs.addr, align 8, !tbaa !1
  %cdev = getelementptr inbounds %struct.tile_fill_state_s, %struct.tile_fill_state_s* %187, i32 0, i32 7
  %188 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev, align 8, !tbaa !29
  %189 = bitcast %struct.gx_device_mask_clip_s* %188 to %struct.gx_device_s*
  %cmp261 = icmp eq %struct.gx_device_s* %186, %189
  br i1 %cmp261, label %if.then.263, label %if.end.272

if.then.263:                                      ; preds = %if.then.260
  %190 = load %struct.tile_fill_state_s*, %struct.tile_fill_state_s** %ptfs.addr, align 8, !tbaa !1
  %cdev264 = getelementptr inbounds %struct.tile_fill_state_s, %struct.tile_fill_state_s* %190, i32 0, i32 7
  %191 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev264, align 8, !tbaa !29
  %192 = load i32, i32* %xoff, align 4, !tbaa !5
  %193 = load i32, i32* %x131, align 4, !tbaa !5
  %sub265 = sub nsw i32 %192, %193
  %194 = load %struct.tile_fill_state_s*, %struct.tile_fill_state_s** %ptfs.addr, align 8, !tbaa !1
  %tmask = getelementptr inbounds %struct.tile_fill_state_s, %struct.tile_fill_state_s* %194, i32 0, i32 9
  %195 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %tmask, align 8, !tbaa !97
  %rep_width = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %195, i32 0, i32 4
  %196 = load i16, i16* %rep_width, align 2, !tbaa !25
  %conv266 = zext i16 %196 to i32
  %call267 = call i32 @imod(i32 %sub265, i32 %conv266) #5
  %197 = load i32, i32* %yoff, align 4, !tbaa !5
  %198 = load i32, i32* %y176, align 4, !tbaa !5
  %sub268 = sub nsw i32 %197, %198
  %199 = load %struct.tile_fill_state_s*, %struct.tile_fill_state_s** %ptfs.addr, align 8, !tbaa !1
  %tmask269 = getelementptr inbounds %struct.tile_fill_state_s, %struct.tile_fill_state_s* %199, i32 0, i32 9
  %200 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %tmask269, align 8, !tbaa !97
  %rep_height = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %200, i32 0, i32 5
  %201 = load i16, i16* %rep_height, align 2, !tbaa !28
  %conv270 = zext i16 %201 to i32
  %call271 = call i32 @imod(i32 %sub268, i32 %conv270) #5
  call void @tile_clip_set_phase(%struct.gx_device_mask_clip_s* %191, i32 %call267, i32 %call271) #5
  br label %if.end.272

if.end.272:                                       ; preds = %if.then.263, %if.then.260
  %202 = load i32, i32* %xoff, align 4, !tbaa !5
  %203 = load %struct.tile_fill_state_s*, %struct.tile_fill_state_s** %ptfs.addr, align 8, !tbaa !1
  %xoff273 = getelementptr inbounds %struct.tile_fill_state_s, %struct.tile_fill_state_s* %203, i32 0, i32 14
  store i32 %202, i32* %xoff273, align 4, !tbaa !123
  %204 = load i32, i32* %yoff, align 4, !tbaa !5
  %205 = load %struct.tile_fill_state_s*, %struct.tile_fill_state_s** %ptfs.addr, align 8, !tbaa !1
  %yoff274 = getelementptr inbounds %struct.tile_fill_state_s, %struct.tile_fill_state_s* %205, i32 0, i32 15
  store i32 %204, i32* %yoff274, align 4, !tbaa !124
  %206 = load i32 (%struct.tile_fill_state_s*, i32, i32, i32, i32)*, i32 (%struct.tile_fill_state_s*, i32, i32, i32, i32)** %fill_proc.addr, align 8, !tbaa !1
  %207 = load %struct.tile_fill_state_s*, %struct.tile_fill_state_s** %ptfs.addr, align 8, !tbaa !1
  %208 = load i32, i32* %x131, align 4, !tbaa !5
  %209 = load i32, i32* %y176, align 4, !tbaa !5
  %210 = load i32, i32* %w, align 4, !tbaa !5
  %211 = load i32, i32* %h, align 4, !tbaa !5
  %call275 = call i32 %206(%struct.tile_fill_state_s* %207, i32 %208, i32 %209, i32 %210, i32 %211) #5
  store i32 %call275, i32* %code, align 4, !tbaa !5
  %212 = load i32, i32* %code, align 4, !tbaa !5
  %cmp276 = icmp slt i32 %212, 0
  br i1 %cmp276, label %if.then.278, label %if.end.279

if.then.278:                                      ; preds = %if.end.272
  %213 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %213, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.279:                                       ; preds = %if.end.272
  br label %if.end.280

if.end.280:                                       ; preds = %if.end.279, %land.lhs.true, %do.end.255
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.280, %if.then.278
  %214 = bitcast i32* %yoff to i8*
  call void @llvm.lifetime.end(i64 4, i8* %214) #1
  %215 = bitcast i32* %xoff to i8*
  call void @llvm.lifetime.end(i64 4, i8* %215) #1
  %216 = bitcast i32* %h to i8*
  call void @llvm.lifetime.end(i64 4, i8* %216) #1
  %217 = bitcast i32* %w to i8*
  call void @llvm.lifetime.end(i64 4, i8* %217) #1
  %218 = bitcast i32* %y176 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %218) #1
  %219 = bitcast i32* %x131 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %219) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.289 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %220 = load i32, i32* %j, align 4, !tbaa !5
  %inc = add nsw i32 %220, 1
  store i32 %inc, i32* %j, align 4, !tbaa !5
  br label %for.cond.127

for.end:                                          ; preds = %for.cond.127
  br label %for.inc.286

for.inc.286:                                      ; preds = %for.end
  %221 = load i32, i32* %i, align 4, !tbaa !5
  %inc287 = add nsw i32 %221, 1
  store i32 %inc287, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end.288:                                      ; preds = %for.cond
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.289

cleanup.289:                                      ; preds = %for.end.288, %cleanup
  %222 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %222) #1
  %223 = bitcast %struct.gs_matrix_s* %step_matrix to i8*
  call void @llvm.lifetime.end(i64 24, i8* %223) #1
  %224 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %224) #1
  %225 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %225) #1
  %226 = bitcast i32* %j1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %226) #1
  %227 = bitcast i32* %j0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %227) #1
  %228 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %228) #1
  %229 = bitcast i32* %i0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %229) #1
  %230 = bitcast i32* %y1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %230) #1
  %231 = bitcast i32* %x1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %231) #1
  %232 = load i32, i32* %retval
  ret i32 %232
}

; Function Attrs: nounwind uwtable
define internal i32 @tile_colored_fill(%struct.tile_fill_state_s* %ptfs, i32 %x, i32 %y, i32 %w, i32 %h) #0 {
entry:
  %ptfs.addr = alloca %struct.tile_fill_state_s*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %ptile = alloca %struct.gx_color_tile_s*, align 8
  %lop = alloca i32, align 4
  %source = alloca %struct.gx_rop_source_s*, align 8
  %dev = alloca %struct.gx_device_s*, align 8
  %xoff = alloca i32, align 4
  %yoff = alloca i32, align 4
  %bits = alloca %struct.gx_strip_bitmap_s*, align 8
  %data = alloca i8*, align 8
  %full_transfer = alloca i32, align 4
  %code = alloca i32, align 4
  %data_tile = alloca %struct.gx_strip_bitmap_s, align 8
  %source_id = alloca i64, align 8
  %no_source = alloca %struct.gx_rop_source_s, align 8
  store %struct.tile_fill_state_s* %ptfs, %struct.tile_fill_state_s** %ptfs.addr, align 8, !tbaa !1
  store i32 %x, i32* %x.addr, align 4, !tbaa !5
  store i32 %y, i32* %y.addr, align 4, !tbaa !5
  store i32 %w, i32* %w.addr, align 4, !tbaa !5
  store i32 %h, i32* %h.addr, align 4, !tbaa !5
  %0 = bitcast %struct.gx_color_tile_s** %ptile to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.tile_fill_state_s*, %struct.tile_fill_state_s** %ptfs.addr, align 8, !tbaa !1
  %pdevc = getelementptr inbounds %struct.tile_fill_state_s, %struct.tile_fill_state_s* %1, i32 0, i32 0
  %2 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc, align 8, !tbaa !78
  %colors = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %2, i32 0, i32 1
  %pattern = bitcast %union._c* %colors to %struct._pat*
  %p_tile = getelementptr inbounds %struct._pat, %struct._pat* %pattern, i32 0, i32 0
  %3 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %p_tile, align 8, !tbaa !7
  store %struct.gx_color_tile_s* %3, %struct.gx_color_tile_s** %ptile, align 8, !tbaa !1
  %4 = bitcast i32* %lop to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load %struct.tile_fill_state_s*, %struct.tile_fill_state_s** %ptfs.addr, align 8, !tbaa !1
  %lop1 = getelementptr inbounds %struct.tile_fill_state_s, %struct.tile_fill_state_s* %5, i32 0, i32 5
  %6 = load i32, i32* %lop1, align 4, !tbaa !51
  store i32 %6, i32* %lop, align 4, !tbaa !5
  %7 = bitcast %struct.gx_rop_source_s** %source to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = load %struct.tile_fill_state_s*, %struct.tile_fill_state_s** %ptfs.addr, align 8, !tbaa !1
  %source2 = getelementptr inbounds %struct.tile_fill_state_s, %struct.tile_fill_state_s* %8, i32 0, i32 6
  %9 = load %struct.gx_rop_source_s*, %struct.gx_rop_source_s** %source2, align 8, !tbaa !52
  store %struct.gx_rop_source_s* %9, %struct.gx_rop_source_s** %source, align 8, !tbaa !1
  %10 = bitcast %struct.gx_device_s** %dev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  %11 = load %struct.tile_fill_state_s*, %struct.tile_fill_state_s** %ptfs.addr, align 8, !tbaa !1
  %orig_dev = getelementptr inbounds %struct.tile_fill_state_s, %struct.tile_fill_state_s* %11, i32 0, i32 13
  %12 = load %struct.gx_device_s*, %struct.gx_device_s** %orig_dev, align 8, !tbaa !53
  store %struct.gx_device_s* %12, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %13 = bitcast i32* %xoff to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  %14 = load %struct.tile_fill_state_s*, %struct.tile_fill_state_s** %ptfs.addr, align 8, !tbaa !1
  %xoff3 = getelementptr inbounds %struct.tile_fill_state_s, %struct.tile_fill_state_s* %14, i32 0, i32 14
  %15 = load i32, i32* %xoff3, align 4, !tbaa !123
  store i32 %15, i32* %xoff, align 4, !tbaa !5
  %16 = bitcast i32* %yoff to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #1
  %17 = load %struct.tile_fill_state_s*, %struct.tile_fill_state_s** %ptfs.addr, align 8, !tbaa !1
  %yoff4 = getelementptr inbounds %struct.tile_fill_state_s, %struct.tile_fill_state_s* %17, i32 0, i32 15
  %18 = load i32, i32* %yoff4, align 4, !tbaa !124
  store i32 %18, i32* %yoff, align 4, !tbaa !5
  %19 = bitcast %struct.gx_strip_bitmap_s** %bits to i8*
  call void @llvm.lifetime.start(i64 8, i8* %19) #1
  %20 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ptile, align 8, !tbaa !1
  %tbits = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %20, i32 0, i32 7
  store %struct.gx_strip_bitmap_s* %tbits, %struct.gx_strip_bitmap_s** %bits, align 8, !tbaa !1
  %21 = bitcast i8** %data to i8*
  call void @llvm.lifetime.start(i64 8, i8* %21) #1
  %22 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %bits, align 8, !tbaa !1
  %data5 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %22, i32 0, i32 0
  %23 = load i8*, i8** %data5, align 8, !tbaa !125
  store i8* %23, i8** %data, align 8, !tbaa !1
  %24 = bitcast i32* %full_transfer to i8*
  call void @llvm.lifetime.start(i64 4, i8* %24) #1
  %25 = load i32, i32* %w.addr, align 4, !tbaa !5
  %26 = load %struct.tile_fill_state_s*, %struct.tile_fill_state_s** %ptfs.addr, align 8, !tbaa !1
  %w0 = getelementptr inbounds %struct.tile_fill_state_s, %struct.tile_fill_state_s* %26, i32 0, i32 3
  %27 = load i32, i32* %w0, align 4, !tbaa !103
  %cmp = icmp eq i32 %25, %27
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %28 = load i32, i32* %h.addr, align 4, !tbaa !5
  %29 = load %struct.tile_fill_state_s*, %struct.tile_fill_state_s** %ptfs.addr, align 8, !tbaa !1
  %h0 = getelementptr inbounds %struct.tile_fill_state_s, %struct.tile_fill_state_s* %29, i32 0, i32 4
  %30 = load i32, i32* %h0, align 4, !tbaa !105
  %cmp6 = icmp eq i32 %28, %30
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %31 = phi i1 [ false, %entry ], [ %cmp6, %land.rhs ]
  %land.ext = zext i1 %31 to i32
  store i32 %land.ext, i32* %full_transfer, align 4, !tbaa !5
  %32 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %32) #1
  store i32 0, i32* %code, align 4, !tbaa !5
  %33 = load %struct.gx_rop_source_s*, %struct.gx_rop_source_s** %source, align 8, !tbaa !1
  %cmp7 = icmp eq %struct.gx_rop_source_s* %33, null
  br i1 %cmp7, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %land.end
  %34 = load i32, i32* %lop, align 4, !tbaa !5
  %and = and i32 %34, 563
  %cmp8 = icmp eq i32 %and, 48
  br i1 %cmp8, label %land.lhs.true.9, label %if.else

land.lhs.true.9:                                  ; preds = %land.lhs.true
  %35 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %35, i32 0, i32 42
  %copy_planes = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 66
  %36 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)** %copy_planes, align 8, !tbaa !126
  %cmp10 = icmp ne i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)* %36, null
  br i1 %cmp10, label %land.lhs.true.11, label %if.else

land.lhs.true.11:                                 ; preds = %land.lhs.true.9
  %37 = load %struct.tile_fill_state_s*, %struct.tile_fill_state_s** %ptfs.addr, align 8, !tbaa !1
  %num_planes = getelementptr inbounds %struct.tile_fill_state_s, %struct.tile_fill_state_s* %37, i32 0, i32 11
  %38 = load i32, i32* %num_planes, align 4, !tbaa !81
  %cmp12 = icmp sgt i32 %38, 0
  br i1 %cmp12, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true.11
  %39 = load %struct.tile_fill_state_s*, %struct.tile_fill_state_s** %ptfs.addr, align 8, !tbaa !1
  %pcdev = getelementptr inbounds %struct.tile_fill_state_s, %struct.tile_fill_state_s* %39, i32 0, i32 8
  %40 = load %struct.gx_device_s*, %struct.gx_device_s** %pcdev, align 8, !tbaa !30
  %procs13 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %40, i32 0, i32 42
  %copy_planes14 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs13, i32 0, i32 66
  %41 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)** %copy_planes14, align 8, !tbaa !126
  %42 = load %struct.tile_fill_state_s*, %struct.tile_fill_state_s** %ptfs.addr, align 8, !tbaa !1
  %pcdev15 = getelementptr inbounds %struct.tile_fill_state_s, %struct.tile_fill_state_s* %42, i32 0, i32 8
  %43 = load %struct.gx_device_s*, %struct.gx_device_s** %pcdev15, align 8, !tbaa !30
  %44 = load i8*, i8** %data, align 8, !tbaa !1
  %45 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %bits, align 8, !tbaa !1
  %raster = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %45, i32 0, i32 1
  %46 = load i32, i32* %raster, align 4, !tbaa !127
  %47 = load i32, i32* %yoff, align 4, !tbaa !5
  %mul = mul nsw i32 %46, %47
  %idx.ext = sext i32 %mul to i64
  %add.ptr = getelementptr inbounds i8, i8* %44, i64 %idx.ext
  %48 = load i32, i32* %xoff, align 4, !tbaa !5
  %49 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %bits, align 8, !tbaa !1
  %raster16 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %49, i32 0, i32 1
  %50 = load i32, i32* %raster16, align 4, !tbaa !127
  %51 = load i32, i32* %full_transfer, align 4, !tbaa !5
  %tobool = icmp ne i32 %51, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %52 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %bits, align 8, !tbaa !1
  %id = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %52, i32 0, i32 3
  %53 = load i64, i64* %id, align 8, !tbaa !128
  br label %cond.end

cond.false:                                       ; preds = %if.then
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %53, %cond.true ], [ 0, %cond.false ]
  %54 = load i32, i32* %x.addr, align 4, !tbaa !5
  %55 = load i32, i32* %y.addr, align 4, !tbaa !5
  %56 = load i32, i32* %w.addr, align 4, !tbaa !5
  %57 = load i32, i32* %h.addr, align 4, !tbaa !5
  %58 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ptile, align 8, !tbaa !1
  %tbits17 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %58, i32 0, i32 7
  %rep_height = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tbits17, i32 0, i32 5
  %59 = load i16, i16* %rep_height, align 2, !tbaa !129
  %conv = zext i16 %59 to i32
  %call = call i32 %41(%struct.gx_device_s* %43, i8* %add.ptr, i32 %48, i32 %50, i64 %cond, i32 %54, i32 %55, i32 %56, i32 %57, i32 %conv) #5
  store i32 %call, i32* %code, align 4, !tbaa !5
  br label %if.end.139

if.else:                                          ; preds = %land.lhs.true.11, %land.lhs.true.9, %land.lhs.true, %land.end
  %60 = load %struct.gx_rop_source_s*, %struct.gx_rop_source_s** %source, align 8, !tbaa !1
  %cmp18 = icmp eq %struct.gx_rop_source_s* %60, null
  br i1 %cmp18, label %land.lhs.true.20, label %if.else.40

land.lhs.true.20:                                 ; preds = %if.else
  %61 = load i32, i32* %lop, align 4, !tbaa !5
  %and21 = and i32 %61, 563
  %cmp22 = icmp eq i32 %and21, 48
  br i1 %cmp22, label %if.then.24, label %if.else.40

if.then.24:                                       ; preds = %land.lhs.true.20
  %62 = load %struct.tile_fill_state_s*, %struct.tile_fill_state_s** %ptfs.addr, align 8, !tbaa !1
  %pcdev25 = getelementptr inbounds %struct.tile_fill_state_s, %struct.tile_fill_state_s* %62, i32 0, i32 8
  %63 = load %struct.gx_device_s*, %struct.gx_device_s** %pcdev25, align 8, !tbaa !30
  %procs26 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %63, i32 0, i32 42
  %copy_color = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs26, i32 0, i32 10
  %64 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)** %copy_color, align 8, !tbaa !130
  %65 = load %struct.tile_fill_state_s*, %struct.tile_fill_state_s** %ptfs.addr, align 8, !tbaa !1
  %pcdev27 = getelementptr inbounds %struct.tile_fill_state_s, %struct.tile_fill_state_s* %65, i32 0, i32 8
  %66 = load %struct.gx_device_s*, %struct.gx_device_s** %pcdev27, align 8, !tbaa !30
  %67 = load i8*, i8** %data, align 8, !tbaa !1
  %68 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %bits, align 8, !tbaa !1
  %raster28 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %68, i32 0, i32 1
  %69 = load i32, i32* %raster28, align 4, !tbaa !127
  %70 = load i32, i32* %yoff, align 4, !tbaa !5
  %mul29 = mul nsw i32 %69, %70
  %idx.ext30 = sext i32 %mul29 to i64
  %add.ptr31 = getelementptr inbounds i8, i8* %67, i64 %idx.ext30
  %71 = load i32, i32* %xoff, align 4, !tbaa !5
  %72 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %bits, align 8, !tbaa !1
  %raster32 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %72, i32 0, i32 1
  %73 = load i32, i32* %raster32, align 4, !tbaa !127
  %74 = load i32, i32* %full_transfer, align 4, !tbaa !5
  %tobool33 = icmp ne i32 %74, 0
  br i1 %tobool33, label %cond.true.34, label %cond.false.36

cond.true.34:                                     ; preds = %if.then.24
  %75 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %bits, align 8, !tbaa !1
  %id35 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %75, i32 0, i32 3
  %76 = load i64, i64* %id35, align 8, !tbaa !128
  br label %cond.end.37

cond.false.36:                                    ; preds = %if.then.24
  br label %cond.end.37

cond.end.37:                                      ; preds = %cond.false.36, %cond.true.34
  %cond38 = phi i64 [ %76, %cond.true.34 ], [ 0, %cond.false.36 ]
  %77 = load i32, i32* %x.addr, align 4, !tbaa !5
  %78 = load i32, i32* %y.addr, align 4, !tbaa !5
  %79 = load i32, i32* %w.addr, align 4, !tbaa !5
  %80 = load i32, i32* %h.addr, align 4, !tbaa !5
  %call39 = call i32 %64(%struct.gx_device_s* %66, i8* %add.ptr31, i32 %71, i32 %73, i64 %cond38, i32 %77, i32 %78, i32 %79, i32 %80) #5
  store i32 %call39, i32* %code, align 4, !tbaa !5
  br label %if.end.138

if.else.40:                                       ; preds = %land.lhs.true.20, %if.else
  %81 = bitcast %struct.gx_strip_bitmap_s* %data_tile to i8*
  call void @llvm.lifetime.start(i64 48, i8* %81) #1
  %82 = bitcast i64* %source_id to i8*
  call void @llvm.lifetime.start(i64 8, i8* %82) #1
  %83 = bitcast %struct.gx_rop_source_s* %no_source to i8*
  call void @llvm.lifetime.start(i64 48, i8* %83) #1
  %84 = load %struct.gx_rop_source_s*, %struct.gx_rop_source_s** %source, align 8, !tbaa !1
  %cmp41 = icmp eq %struct.gx_rop_source_s* %84, null
  br i1 %cmp41, label %if.then.43, label %if.end

if.then.43:                                       ; preds = %if.else.40
  %85 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  call void @gx_set_rop_no_source(%struct.gx_rop_source_s** %source, %struct.gx_rop_source_s* %no_source, %struct.gx_device_s* %85) #5
  br label %if.end

if.end:                                           ; preds = %if.then.43, %if.else.40
  %86 = load i32, i32* %full_transfer, align 4, !tbaa !5
  %tobool44 = icmp ne i32 %86, 0
  br i1 %tobool44, label %cond.true.45, label %cond.false.47

cond.true.45:                                     ; preds = %if.end
  %87 = load %struct.gx_rop_source_s*, %struct.gx_rop_source_s** %source, align 8, !tbaa !1
  %id46 = getelementptr inbounds %struct.gx_rop_source_s, %struct.gx_rop_source_s* %87, i32 0, i32 3
  %88 = load i64, i64* %id46, align 8, !tbaa !48
  br label %cond.end.48

cond.false.47:                                    ; preds = %if.end
  br label %cond.end.48

cond.end.48:                                      ; preds = %cond.false.47, %cond.true.45
  %cond49 = phi i64 [ %88, %cond.true.45 ], [ 0, %cond.false.47 ]
  store i64 %cond49, i64* %source_id, align 8, !tbaa !66
  %89 = load i8*, i8** %data, align 8, !tbaa !1
  %data50 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %data_tile, i32 0, i32 0
  store i8* %89, i8** %data50, align 8, !tbaa !125
  %90 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %bits, align 8, !tbaa !1
  %raster51 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %90, i32 0, i32 1
  %91 = load i32, i32* %raster51, align 4, !tbaa !127
  %raster52 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %data_tile, i32 0, i32 1
  store i32 %91, i32* %raster52, align 4, !tbaa !127
  %92 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ptile, align 8, !tbaa !1
  %tbits53 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %92, i32 0, i32 7
  %size = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tbits53, i32 0, i32 2
  %x54 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %size, i32 0, i32 0
  %93 = load i32, i32* %x54, align 4, !tbaa !131
  %conv55 = trunc i32 %93 to i16
  %rep_width = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %data_tile, i32 0, i32 4
  store i16 %conv55, i16* %rep_width, align 2, !tbaa !25
  %conv56 = zext i16 %conv55 to i32
  %size57 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %data_tile, i32 0, i32 2
  %x58 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %size57, i32 0, i32 0
  store i32 %conv56, i32* %x58, align 4, !tbaa !69
  %94 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ptile, align 8, !tbaa !1
  %tbits59 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %94, i32 0, i32 7
  %size60 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tbits59, i32 0, i32 2
  %y61 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %size60, i32 0, i32 1
  %95 = load i32, i32* %y61, align 4, !tbaa !132
  %conv62 = trunc i32 %95 to i16
  %rep_height63 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %data_tile, i32 0, i32 5
  store i16 %conv62, i16* %rep_height63, align 2, !tbaa !28
  %conv64 = zext i16 %conv62 to i32
  %size65 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %data_tile, i32 0, i32 2
  %y66 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %size65, i32 0, i32 1
  store i32 %conv64, i32* %y66, align 4, !tbaa !71
  %96 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %bits, align 8, !tbaa !1
  %id67 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %96, i32 0, i32 3
  %97 = load i64, i64* %id67, align 8, !tbaa !128
  %id68 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %data_tile, i32 0, i32 3
  store i64 %97, i64* %id68, align 8, !tbaa !128
  %rep_shift = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %data_tile, i32 0, i32 6
  store i16 0, i16* %rep_shift, align 2, !tbaa !133
  %shift = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %data_tile, i32 0, i32 7
  store i16 0, i16* %shift, align 2, !tbaa !134
  %98 = load %struct.tile_fill_state_s*, %struct.tile_fill_state_s** %ptfs.addr, align 8, !tbaa !1
  %num_planes69 = getelementptr inbounds %struct.tile_fill_state_s, %struct.tile_fill_state_s* %98, i32 0, i32 11
  %99 = load i32, i32* %num_planes69, align 4, !tbaa !81
  %cmp70 = icmp sgt i32 %99, 1
  br i1 %cmp70, label %cond.true.72, label %cond.false.74

cond.true.72:                                     ; preds = %cond.end.48
  %100 = load %struct.tile_fill_state_s*, %struct.tile_fill_state_s** %ptfs.addr, align 8, !tbaa !1
  %num_planes73 = getelementptr inbounds %struct.tile_fill_state_s, %struct.tile_fill_state_s* %100, i32 0, i32 11
  %101 = load i32, i32* %num_planes73, align 4, !tbaa !81
  br label %cond.end.75

cond.false.74:                                    ; preds = %cond.end.48
  br label %cond.end.75

cond.end.75:                                      ; preds = %cond.false.74, %cond.true.72
  %cond76 = phi i32 [ %101, %cond.true.72 ], [ 1, %cond.false.74 ]
  %num_planes77 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %data_tile, i32 0, i32 8
  store i32 %cond76, i32* %num_planes77, align 4, !tbaa !135
  %102 = load %struct.gx_rop_source_s*, %struct.gx_rop_source_s** %source, align 8, !tbaa !1
  %planar_height = getelementptr inbounds %struct.gx_rop_source_s, %struct.gx_rop_source_s* %102, i32 0, i32 5
  %103 = load i32, i32* %planar_height, align 4, !tbaa !42
  %cmp78 = icmp eq i32 %103, 0
  br i1 %cmp78, label %if.then.80, label %if.else.103

if.then.80:                                       ; preds = %cond.end.75
  %104 = load %struct.tile_fill_state_s*, %struct.tile_fill_state_s** %ptfs.addr, align 8, !tbaa !1
  %pcdev81 = getelementptr inbounds %struct.tile_fill_state_s, %struct.tile_fill_state_s* %104, i32 0, i32 8
  %105 = load %struct.gx_device_s*, %struct.gx_device_s** %pcdev81, align 8, !tbaa !30
  %procs82 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %105, i32 0, i32 42
  %strip_copy_rop = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs82, i32 0, i32 35
  %106 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)** %strip_copy_rop, align 8, !tbaa !44
  %107 = load %struct.tile_fill_state_s*, %struct.tile_fill_state_s** %ptfs.addr, align 8, !tbaa !1
  %pcdev83 = getelementptr inbounds %struct.tile_fill_state_s, %struct.tile_fill_state_s* %107, i32 0, i32 8
  %108 = load %struct.gx_device_s*, %struct.gx_device_s** %pcdev83, align 8, !tbaa !30
  %109 = load %struct.gx_rop_source_s*, %struct.gx_rop_source_s** %source, align 8, !tbaa !1
  %sdata = getelementptr inbounds %struct.gx_rop_source_s, %struct.gx_rop_source_s* %109, i32 0, i32 0
  %110 = load i8*, i8** %sdata, align 8, !tbaa !45
  %111 = load i32, i32* %y.addr, align 4, !tbaa !5
  %112 = load %struct.tile_fill_state_s*, %struct.tile_fill_state_s** %ptfs.addr, align 8, !tbaa !1
  %y0 = getelementptr inbounds %struct.tile_fill_state_s, %struct.tile_fill_state_s* %112, i32 0, i32 2
  %113 = load i32, i32* %y0, align 4, !tbaa !104
  %sub = sub nsw i32 %111, %113
  %114 = load %struct.gx_rop_source_s*, %struct.gx_rop_source_s** %source, align 8, !tbaa !1
  %sraster = getelementptr inbounds %struct.gx_rop_source_s, %struct.gx_rop_source_s* %114, i32 0, i32 2
  %115 = load i32, i32* %sraster, align 4, !tbaa !47
  %mul84 = mul i32 %sub, %115
  %idx.ext85 = zext i32 %mul84 to i64
  %add.ptr86 = getelementptr inbounds i8, i8* %110, i64 %idx.ext85
  %116 = load %struct.gx_rop_source_s*, %struct.gx_rop_source_s** %source, align 8, !tbaa !1
  %sourcex = getelementptr inbounds %struct.gx_rop_source_s, %struct.gx_rop_source_s* %116, i32 0, i32 1
  %117 = load i32, i32* %sourcex, align 4, !tbaa !46
  %118 = load i32, i32* %x.addr, align 4, !tbaa !5
  %119 = load %struct.tile_fill_state_s*, %struct.tile_fill_state_s** %ptfs.addr, align 8, !tbaa !1
  %x0 = getelementptr inbounds %struct.tile_fill_state_s, %struct.tile_fill_state_s* %119, i32 0, i32 1
  %120 = load i32, i32* %x0, align 4, !tbaa !102
  %sub87 = sub nsw i32 %118, %120
  %add = add nsw i32 %117, %sub87
  %121 = load %struct.gx_rop_source_s*, %struct.gx_rop_source_s** %source, align 8, !tbaa !1
  %sraster88 = getelementptr inbounds %struct.gx_rop_source_s, %struct.gx_rop_source_s* %121, i32 0, i32 2
  %122 = load i32, i32* %sraster88, align 4, !tbaa !47
  %123 = load i64, i64* %source_id, align 8, !tbaa !66
  %124 = load %struct.gx_rop_source_s*, %struct.gx_rop_source_s** %source, align 8, !tbaa !1
  %use_scolors = getelementptr inbounds %struct.gx_rop_source_s, %struct.gx_rop_source_s* %124, i32 0, i32 6
  %125 = load i32, i32* %use_scolors, align 4, !tbaa !49
  %tobool89 = icmp ne i32 %125, 0
  br i1 %tobool89, label %cond.true.90, label %cond.false.91

cond.true.90:                                     ; preds = %if.then.80
  %126 = load %struct.gx_rop_source_s*, %struct.gx_rop_source_s** %source, align 8, !tbaa !1
  %scolors = getelementptr inbounds %struct.gx_rop_source_s, %struct.gx_rop_source_s* %126, i32 0, i32 4
  %arraydecay = getelementptr inbounds [2 x i64], [2 x i64]* %scolors, i32 0, i32 0
  br label %cond.end.92

cond.false.91:                                    ; preds = %if.then.80
  br label %cond.end.92

cond.end.92:                                      ; preds = %cond.false.91, %cond.true.90
  %cond93 = phi i64* [ %arraydecay, %cond.true.90 ], [ null, %cond.false.91 ]
  %127 = load i32, i32* %x.addr, align 4, !tbaa !5
  %128 = load i32, i32* %y.addr, align 4, !tbaa !5
  %129 = load i32, i32* %w.addr, align 4, !tbaa !5
  %130 = load i32, i32* %h.addr, align 4, !tbaa !5
  %131 = load i32, i32* %xoff, align 4, !tbaa !5
  %132 = load i32, i32* %x.addr, align 4, !tbaa !5
  %sub94 = sub nsw i32 %131, %132
  %rep_width95 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %data_tile, i32 0, i32 4
  %133 = load i16, i16* %rep_width95, align 2, !tbaa !25
  %conv96 = zext i16 %133 to i32
  %call97 = call i32 @imod(i32 %sub94, i32 %conv96) #5
  %134 = load i32, i32* %yoff, align 4, !tbaa !5
  %135 = load i32, i32* %y.addr, align 4, !tbaa !5
  %sub98 = sub nsw i32 %134, %135
  %rep_height99 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %data_tile, i32 0, i32 5
  %136 = load i16, i16* %rep_height99, align 2, !tbaa !28
  %conv100 = zext i16 %136 to i32
  %call101 = call i32 @imod(i32 %sub98, i32 %conv100) #5
  %137 = load i32, i32* %lop, align 4, !tbaa !5
  %call102 = call i32 %106(%struct.gx_device_s* %108, i8* %add.ptr86, i32 %add, i32 %122, i64 %123, i64* %cond93, %struct.gx_strip_bitmap_s* %data_tile, i64* null, i32 %127, i32 %128, i32 %129, i32 %130, i32 %call97, i32 %call101, i32 %137) #5
  store i32 %call102, i32* %code, align 4, !tbaa !5
  br label %if.end.137

if.else.103:                                      ; preds = %cond.end.75
  %138 = load %struct.tile_fill_state_s*, %struct.tile_fill_state_s** %ptfs.addr, align 8, !tbaa !1
  %pcdev104 = getelementptr inbounds %struct.tile_fill_state_s, %struct.tile_fill_state_s* %138, i32 0, i32 8
  %139 = load %struct.gx_device_s*, %struct.gx_device_s** %pcdev104, align 8, !tbaa !30
  %procs105 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %139, i32 0, i32 42
  %strip_copy_rop2 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs105, i32 0, i32 69
  %140 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)** %strip_copy_rop2, align 8, !tbaa !50
  %141 = load %struct.tile_fill_state_s*, %struct.tile_fill_state_s** %ptfs.addr, align 8, !tbaa !1
  %pcdev106 = getelementptr inbounds %struct.tile_fill_state_s, %struct.tile_fill_state_s* %141, i32 0, i32 8
  %142 = load %struct.gx_device_s*, %struct.gx_device_s** %pcdev106, align 8, !tbaa !30
  %143 = load %struct.gx_rop_source_s*, %struct.gx_rop_source_s** %source, align 8, !tbaa !1
  %sdata107 = getelementptr inbounds %struct.gx_rop_source_s, %struct.gx_rop_source_s* %143, i32 0, i32 0
  %144 = load i8*, i8** %sdata107, align 8, !tbaa !45
  %145 = load i32, i32* %y.addr, align 4, !tbaa !5
  %146 = load %struct.tile_fill_state_s*, %struct.tile_fill_state_s** %ptfs.addr, align 8, !tbaa !1
  %y0108 = getelementptr inbounds %struct.tile_fill_state_s, %struct.tile_fill_state_s* %146, i32 0, i32 2
  %147 = load i32, i32* %y0108, align 4, !tbaa !104
  %sub109 = sub nsw i32 %145, %147
  %148 = load %struct.gx_rop_source_s*, %struct.gx_rop_source_s** %source, align 8, !tbaa !1
  %sraster110 = getelementptr inbounds %struct.gx_rop_source_s, %struct.gx_rop_source_s* %148, i32 0, i32 2
  %149 = load i32, i32* %sraster110, align 4, !tbaa !47
  %mul111 = mul i32 %sub109, %149
  %idx.ext112 = zext i32 %mul111 to i64
  %add.ptr113 = getelementptr inbounds i8, i8* %144, i64 %idx.ext112
  %150 = load %struct.gx_rop_source_s*, %struct.gx_rop_source_s** %source, align 8, !tbaa !1
  %sourcex114 = getelementptr inbounds %struct.gx_rop_source_s, %struct.gx_rop_source_s* %150, i32 0, i32 1
  %151 = load i32, i32* %sourcex114, align 4, !tbaa !46
  %152 = load i32, i32* %x.addr, align 4, !tbaa !5
  %153 = load %struct.tile_fill_state_s*, %struct.tile_fill_state_s** %ptfs.addr, align 8, !tbaa !1
  %x0115 = getelementptr inbounds %struct.tile_fill_state_s, %struct.tile_fill_state_s* %153, i32 0, i32 1
  %154 = load i32, i32* %x0115, align 4, !tbaa !102
  %sub116 = sub nsw i32 %152, %154
  %add117 = add nsw i32 %151, %sub116
  %155 = load %struct.gx_rop_source_s*, %struct.gx_rop_source_s** %source, align 8, !tbaa !1
  %sraster118 = getelementptr inbounds %struct.gx_rop_source_s, %struct.gx_rop_source_s* %155, i32 0, i32 2
  %156 = load i32, i32* %sraster118, align 4, !tbaa !47
  %157 = load i64, i64* %source_id, align 8, !tbaa !66
  %158 = load %struct.gx_rop_source_s*, %struct.gx_rop_source_s** %source, align 8, !tbaa !1
  %use_scolors119 = getelementptr inbounds %struct.gx_rop_source_s, %struct.gx_rop_source_s* %158, i32 0, i32 6
  %159 = load i32, i32* %use_scolors119, align 4, !tbaa !49
  %tobool120 = icmp ne i32 %159, 0
  br i1 %tobool120, label %cond.true.121, label %cond.false.124

cond.true.121:                                    ; preds = %if.else.103
  %160 = load %struct.gx_rop_source_s*, %struct.gx_rop_source_s** %source, align 8, !tbaa !1
  %scolors122 = getelementptr inbounds %struct.gx_rop_source_s, %struct.gx_rop_source_s* %160, i32 0, i32 4
  %arraydecay123 = getelementptr inbounds [2 x i64], [2 x i64]* %scolors122, i32 0, i32 0
  br label %cond.end.125

cond.false.124:                                   ; preds = %if.else.103
  br label %cond.end.125

cond.end.125:                                     ; preds = %cond.false.124, %cond.true.121
  %cond126 = phi i64* [ %arraydecay123, %cond.true.121 ], [ null, %cond.false.124 ]
  %161 = load i32, i32* %x.addr, align 4, !tbaa !5
  %162 = load i32, i32* %y.addr, align 4, !tbaa !5
  %163 = load i32, i32* %w.addr, align 4, !tbaa !5
  %164 = load i32, i32* %h.addr, align 4, !tbaa !5
  %165 = load i32, i32* %xoff, align 4, !tbaa !5
  %166 = load i32, i32* %x.addr, align 4, !tbaa !5
  %sub127 = sub nsw i32 %165, %166
  %rep_width128 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %data_tile, i32 0, i32 4
  %167 = load i16, i16* %rep_width128, align 2, !tbaa !25
  %conv129 = zext i16 %167 to i32
  %call130 = call i32 @imod(i32 %sub127, i32 %conv129) #5
  %168 = load i32, i32* %yoff, align 4, !tbaa !5
  %169 = load i32, i32* %y.addr, align 4, !tbaa !5
  %sub131 = sub nsw i32 %168, %169
  %rep_height132 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %data_tile, i32 0, i32 5
  %170 = load i16, i16* %rep_height132, align 2, !tbaa !28
  %conv133 = zext i16 %170 to i32
  %call134 = call i32 @imod(i32 %sub131, i32 %conv133) #5
  %171 = load i32, i32* %lop, align 4, !tbaa !5
  %172 = load %struct.gx_rop_source_s*, %struct.gx_rop_source_s** %source, align 8, !tbaa !1
  %planar_height135 = getelementptr inbounds %struct.gx_rop_source_s, %struct.gx_rop_source_s* %172, i32 0, i32 5
  %173 = load i32, i32* %planar_height135, align 4, !tbaa !42
  %call136 = call i32 %140(%struct.gx_device_s* %142, i8* %add.ptr113, i32 %add117, i32 %156, i64 %157, i64* %cond126, %struct.gx_strip_bitmap_s* %data_tile, i64* null, i32 %161, i32 %162, i32 %163, i32 %164, i32 %call130, i32 %call134, i32 %171, i32 %173) #5
  store i32 %call136, i32* %code, align 4, !tbaa !5
  br label %if.end.137

if.end.137:                                       ; preds = %cond.end.125, %cond.end.92
  %174 = bitcast %struct.gx_rop_source_s* %no_source to i8*
  call void @llvm.lifetime.end(i64 48, i8* %174) #1
  %175 = bitcast i64* %source_id to i8*
  call void @llvm.lifetime.end(i64 8, i8* %175) #1
  %176 = bitcast %struct.gx_strip_bitmap_s* %data_tile to i8*
  call void @llvm.lifetime.end(i64 48, i8* %176) #1
  br label %if.end.138

if.end.138:                                       ; preds = %if.end.137, %cond.end.37
  br label %if.end.139

if.end.139:                                       ; preds = %if.end.138, %cond.end
  %177 = load i32, i32* %code, align 4, !tbaa !5
  %178 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %178) #1
  %179 = bitcast i32* %full_transfer to i8*
  call void @llvm.lifetime.end(i64 4, i8* %179) #1
  %180 = bitcast i8** %data to i8*
  call void @llvm.lifetime.end(i64 8, i8* %180) #1
  %181 = bitcast %struct.gx_strip_bitmap_s** %bits to i8*
  call void @llvm.lifetime.end(i64 8, i8* %181) #1
  %182 = bitcast i32* %yoff to i8*
  call void @llvm.lifetime.end(i64 4, i8* %182) #1
  %183 = bitcast i32* %xoff to i8*
  call void @llvm.lifetime.end(i64 4, i8* %183) #1
  %184 = bitcast %struct.gx_device_s** %dev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %184) #1
  %185 = bitcast %struct.gx_rop_source_s** %source to i8*
  call void @llvm.lifetime.end(i64 8, i8* %185) #1
  %186 = bitcast i32* %lop to i8*
  call void @llvm.lifetime.end(i64 4, i8* %186) #1
  %187 = bitcast %struct.gx_color_tile_s** %ptile to i8*
  call void @llvm.lifetime.end(i64 8, i8* %187) #1
  ret i32 %177
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind uwtable
define internal i32 @tile_pattern_clist(%struct.tile_fill_state_s* %ptfs, i32 %x, i32 %y, i32 %w, i32 %h) #0 {
entry:
  %ptfs.addr = alloca %struct.tile_fill_state_s*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %ptile = alloca %struct.gx_color_tile_s*, align 8
  %cdev = alloca %union.gx_device_clist_s*, align 8
  %crdev = alloca %struct.gx_device_clist_reader_s*, align 8
  %dev = alloca %struct.gx_device_s*, align 8
  %code = alloca i32, align 4
  store %struct.tile_fill_state_s* %ptfs, %struct.tile_fill_state_s** %ptfs.addr, align 8, !tbaa !1
  store i32 %x, i32* %x.addr, align 4, !tbaa !5
  store i32 %y, i32* %y.addr, align 4, !tbaa !5
  store i32 %w, i32* %w.addr, align 4, !tbaa !5
  store i32 %h, i32* %h.addr, align 4, !tbaa !5
  %0 = bitcast %struct.gx_color_tile_s** %ptile to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.tile_fill_state_s*, %struct.tile_fill_state_s** %ptfs.addr, align 8, !tbaa !1
  %pdevc = getelementptr inbounds %struct.tile_fill_state_s, %struct.tile_fill_state_s* %1, i32 0, i32 0
  %2 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc, align 8, !tbaa !78
  %colors = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %2, i32 0, i32 1
  %pattern = bitcast %union._c* %colors to %struct._pat*
  %p_tile = getelementptr inbounds %struct._pat, %struct._pat* %pattern, i32 0, i32 0
  %3 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %p_tile, align 8, !tbaa !7
  store %struct.gx_color_tile_s* %3, %struct.gx_color_tile_s** %ptile, align 8, !tbaa !1
  %4 = bitcast %union.gx_device_clist_s** %cdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ptile, align 8, !tbaa !1
  %cdev1 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %5, i32 0, i32 10
  %6 = load %union.gx_device_clist_s*, %union.gx_device_clist_s** %cdev1, align 8, !tbaa !21
  store %union.gx_device_clist_s* %6, %union.gx_device_clist_s** %cdev, align 8, !tbaa !1
  %7 = bitcast %struct.gx_device_clist_reader_s** %crdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = load %union.gx_device_clist_s*, %union.gx_device_clist_s** %cdev, align 8, !tbaa !1
  %9 = bitcast %union.gx_device_clist_s* %8 to %struct.gx_device_clist_reader_s*
  store %struct.gx_device_clist_reader_s* %9, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %10 = bitcast %struct.gx_device_s** %dev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  %11 = load %struct.tile_fill_state_s*, %struct.tile_fill_state_s** %ptfs.addr, align 8, !tbaa !1
  %orig_dev = getelementptr inbounds %struct.tile_fill_state_s, %struct.tile_fill_state_s* %11, i32 0, i32 13
  %12 = load %struct.gx_device_s*, %struct.gx_device_s** %orig_dev, align 8, !tbaa !53
  store %struct.gx_device_s* %12, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %13 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  %14 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %offset_map = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %14, i32 0, i32 69
  store i8* null, i8** %offset_map, align 8, !tbaa !136
  %15 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %page_info = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %15, i32 0, i32 58
  %io_procs = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info, i32 0, i32 4
  %16 = load %struct.clist_io_procs_s*, %struct.clist_io_procs_s** %io_procs, align 8, !tbaa !137
  %rewind = getelementptr inbounds %struct.clist_io_procs_s, %struct.clist_io_procs_s* %16, i32 0, i32 8
  %17 = load void (i8*, i32, i8*)*, void (i8*, i32, i8*)** %rewind, align 8, !tbaa !138
  %18 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %page_info2 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %18, i32 0, i32 58
  %bfile = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info2, i32 0, i32 3
  %19 = load i8*, i8** %bfile, align 8, !tbaa !140
  call void %17(i8* %19, i32 0, i8* null) #5
  %20 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %page_info3 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %20, i32 0, i32 58
  %io_procs4 = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info3, i32 0, i32 4
  %21 = load %struct.clist_io_procs_s*, %struct.clist_io_procs_s** %io_procs4, align 8, !tbaa !137
  %rewind5 = getelementptr inbounds %struct.clist_io_procs_s, %struct.clist_io_procs_s* %21, i32 0, i32 8
  %22 = load void (i8*, i32, i8*)*, void (i8*, i32, i8*)** %rewind5, align 8, !tbaa !138
  %23 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %page_info6 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %23, i32 0, i32 58
  %cfile = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info6, i32 0, i32 1
  %24 = load i8*, i8** %cfile, align 8, !tbaa !141
  call void %22(i8* %24, i32 0, i8* null) #5
  %25 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %icc_table = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %25, i32 0, i32 61
  %26 = load %struct.clist_icctable_s*, %struct.clist_icctable_s** %icc_table, align 8, !tbaa !142
  %cmp = icmp eq %struct.clist_icctable_s* %26, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %27 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %call = call i32 @clist_read_icctable(%struct.gx_device_clist_reader_s* %27) #5
  store i32 %call, i32* %code, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %28 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %icc_cache_cl = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %28, i32 0, i32 62
  %29 = load %struct.gsicc_link_cache_s*, %struct.gsicc_link_cache_s** %icc_cache_cl, align 8, !tbaa !143
  %cmp7 = icmp eq %struct.gsicc_link_cache_s* %29, null
  br i1 %cmp7, label %if.then.8, label %if.end.11

if.then.8:                                        ; preds = %if.end
  %30 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %30, i32 0, i32 3
  %31 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !144
  %thread_safe_memory = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %31, i32 0, i32 4
  %32 = load %struct.gs_memory_s*, %struct.gs_memory_s** %thread_safe_memory, align 8, !tbaa !145
  %call9 = call %struct.gsicc_link_cache_s* @gsicc_cache_new(%struct.gs_memory_s* %32) #5
  %33 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %icc_cache_cl10 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %33, i32 0, i32 62
  store %struct.gsicc_link_cache_s* %call9, %struct.gsicc_link_cache_s** %icc_cache_cl10, align 8, !tbaa !143
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.8, %if.end
  br label %do.body

do.body:                                          ; preds = %if.end.11
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %34 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %35 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %page_info12 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %35, i32 0, i32 58
  %36 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %37 = load %struct.tile_fill_state_s*, %struct.tile_fill_state_s** %ptfs.addr, align 8, !tbaa !1
  %xoff = getelementptr inbounds %struct.tile_fill_state_s, %struct.tile_fill_state_s* %37, i32 0, i32 14
  %38 = load i32, i32* %xoff, align 4, !tbaa !123
  %39 = load i32, i32* %x.addr, align 4, !tbaa !5
  %sub = sub nsw i32 %38, %39
  %40 = load %struct.tile_fill_state_s*, %struct.tile_fill_state_s** %ptfs.addr, align 8, !tbaa !1
  %yoff = getelementptr inbounds %struct.tile_fill_state_s, %struct.tile_fill_state_s* %40, i32 0, i32 15
  %41 = load i32, i32* %yoff, align 4, !tbaa !124
  %42 = load i32, i32* %y.addr, align 4, !tbaa !5
  %sub13 = sub nsw i32 %41, %42
  %call14 = call i32 @clist_playback_file_bands(i32 0, %struct.gx_device_clist_reader_s* %34, %struct.gx_band_page_info_s* %page_info12, %struct.gx_device_s* %36, i32 0, i32 0, i32 %sub, i32 %sub13) #5
  store i32 %call14, i32* %code, align 4, !tbaa !5
  br label %do.body.15

do.body.15:                                       ; preds = %do.end
  br label %do.cond.16

do.cond.16:                                       ; preds = %do.body.15
  br label %do.end.17

do.end.17:                                        ; preds = %do.cond.16
  %43 = load i32, i32* %code, align 4, !tbaa !5
  %44 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %44) #1
  %45 = bitcast %struct.gx_device_s** %dev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %45) #1
  %46 = bitcast %struct.gx_device_clist_reader_s** %crdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %46) #1
  %47 = bitcast %union.gx_device_clist_s** %cdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %47) #1
  %48 = bitcast %struct.gx_color_tile_s** %ptile to i8*
  call void @llvm.lifetime.end(i64 8, i8* %48) #1
  ret i32 %43
}

declare void @tile_clip_free(%struct.gx_device_mask_clip_s*) #2

; Function Attrs: nounwind uwtable
define i32 @gx_dc_pure_masked_fill_rect(%struct.gx_device_color_s* %pdevc, i32 %x, i32 %y, i32 %w, i32 %h, %struct.gx_device_s* %dev, i32 %lop, %struct.gx_rop_source_s* %source) #0 {
entry:
  %retval = alloca i32, align 4
  %pdevc.addr = alloca %struct.gx_device_color_s*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %lop.addr = alloca i32, align 4
  %source.addr = alloca %struct.gx_rop_source_s*, align 8
  %ptile = alloca %struct.gx_color_tile_s*, align 8
  %state = alloca %struct.tile_fill_state_s, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_color_s* %pdevc, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  store i32 %x, i32* %x.addr, align 4, !tbaa !5
  store i32 %y, i32* %y.addr, align 4, !tbaa !5
  store i32 %w, i32* %w.addr, align 4, !tbaa !5
  store i32 %h, i32* %h.addr, align 4, !tbaa !5
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i32 %lop, i32* %lop.addr, align 4, !tbaa !5
  store %struct.gx_rop_source_s* %source, %struct.gx_rop_source_s** %source.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_color_tile_s** %ptile to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %mask = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %1, i32 0, i32 5
  %m_tile = getelementptr inbounds %struct._mask, %struct._mask* %mask, i32 0, i32 2
  %2 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %m_tile, align 8, !tbaa !72
  store %struct.gx_color_tile_s* %2, %struct.gx_color_tile_s** %ptile, align 8, !tbaa !1
  %3 = bitcast %struct.tile_fill_state_s* %state to i8*
  call void @llvm.lifetime.start(i64 104, i8* %3) #1
  %4 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %6 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call = call i32 @tile_fill_init(%struct.tile_fill_state_s* %state, %struct.gx_device_color_s* %5, %struct.gx_device_s* %6, i32 1) #5
  store i32 %call, i32* %code, align 4, !tbaa !5
  %7 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %7, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %8, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %pcdev = getelementptr inbounds %struct.tile_fill_state_s, %struct.tile_fill_state_s* %state, i32 0, i32 8
  %9 = load %struct.gx_device_s*, %struct.gx_device_s** %pcdev, align 8, !tbaa !30
  %10 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %cmp1 = icmp eq %struct.gx_device_s* %9, %10
  br i1 %cmp1, label %if.then.2, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %11 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ptile, align 8, !tbaa !1
  %is_simple = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %11, i32 0, i32 11
  %12 = load i8, i8* %is_simple, align 1, !tbaa !9
  %conv = zext i8 %12 to i32
  %tobool = icmp ne i32 %conv, 0
  br i1 %tobool, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %lor.lhs.false, %if.end
  %13 = load i32 (%struct.gx_device_color_s*, i32, i32, i32, i32, %struct.gx_device_s*, i32, %struct.gx_rop_source_s*)*, i32 (%struct.gx_device_color_s*, i32, i32, i32, i32, %struct.gx_device_s*, i32, %struct.gx_rop_source_s*)** bitcast ({}** getelementptr inbounds (%struct.gx_device_color_type_s, %struct.gx_device_color_type_s* @gx_dc_type_data_pure, i32 0, i32 5) to i32 (%struct.gx_device_color_s*, i32, i32, i32, i32, %struct.gx_device_s*, i32, %struct.gx_rop_source_s*)**), align 8, !tbaa !146
  %14 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %15 = load i32, i32* %x.addr, align 4, !tbaa !5
  %16 = load i32, i32* %y.addr, align 4, !tbaa !5
  %17 = load i32, i32* %w.addr, align 4, !tbaa !5
  %18 = load i32, i32* %h.addr, align 4, !tbaa !5
  %pcdev3 = getelementptr inbounds %struct.tile_fill_state_s, %struct.tile_fill_state_s* %state, i32 0, i32 8
  %19 = load %struct.gx_device_s*, %struct.gx_device_s** %pcdev3, align 8, !tbaa !30
  %20 = load i32, i32* %lop.addr, align 4, !tbaa !5
  %21 = load %struct.gx_rop_source_s*, %struct.gx_rop_source_s** %source.addr, align 8, !tbaa !1
  %call4 = call i32 %13(%struct.gx_device_color_s* %14, i32 %15, i32 %16, i32 %17, i32 %18, %struct.gx_device_s* %19, i32 %20, %struct.gx_rop_source_s* %21) #5
  store i32 %call4, i32* %code, align 4, !tbaa !5
  br label %if.end.8

if.else:                                          ; preds = %lor.lhs.false
  %22 = load i32, i32* %lop.addr, align 4, !tbaa !5
  %lop5 = getelementptr inbounds %struct.tile_fill_state_s, %struct.tile_fill_state_s* %state, i32 0, i32 5
  store i32 %22, i32* %lop5, align 4, !tbaa !51
  %23 = load %struct.gx_rop_source_s*, %struct.gx_rop_source_s** %source.addr, align 8, !tbaa !1
  %source6 = getelementptr inbounds %struct.tile_fill_state_s, %struct.tile_fill_state_s* %state, i32 0, i32 6
  store %struct.gx_rop_source_s* %23, %struct.gx_rop_source_s** %source6, align 8, !tbaa !52
  %24 = load i32 (%struct.gx_device_color_s*, i32, i32, i32, i32, %struct.gx_device_s*, i32, %struct.gx_rop_source_s*)*, i32 (%struct.gx_device_color_s*, i32, i32, i32, i32, %struct.gx_device_s*, i32, %struct.gx_rop_source_s*)** bitcast ({}** getelementptr inbounds (%struct.gx_device_color_type_s, %struct.gx_device_color_type_s* @gx_dc_type_data_pure, i32 0, i32 5) to i32 (%struct.gx_device_color_s*, i32, i32, i32, i32, %struct.gx_device_s*, i32, %struct.gx_rop_source_s*)**), align 8, !tbaa !146
  %fill_rectangle = getelementptr inbounds %struct.tile_fill_state_s, %struct.tile_fill_state_s* %state, i32 0, i32 12
  store i32 (%struct.gx_device_color_s*, i32, i32, i32, i32, %struct.gx_device_s*, i32, %struct.gx_rop_source_s*)* %24, i32 (%struct.gx_device_color_s*, i32, i32, i32, i32, %struct.gx_device_s*, i32, %struct.gx_rop_source_s*)** %fill_rectangle, align 8, !tbaa !148
  %25 = load i32, i32* %x.addr, align 4, !tbaa !5
  %26 = load i32, i32* %y.addr, align 4, !tbaa !5
  %27 = load i32, i32* %w.addr, align 4, !tbaa !5
  %28 = load i32, i32* %h.addr, align 4, !tbaa !5
  %29 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ptile, align 8, !tbaa !1
  %30 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ptile, align 8, !tbaa !1
  %tmask = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %30, i32 0, i32 8
  %call7 = call i32 @tile_by_steps(%struct.tile_fill_state_s* %state, i32 %25, i32 %26, i32 %27, i32 %28, %struct.gx_color_tile_s* %29, %struct.gx_strip_bitmap_s* %tmask, i32 (%struct.tile_fill_state_s*, i32, i32, i32, i32)* @tile_masked_fill) #5
  store i32 %call7, i32* %code, align 4, !tbaa !5
  br label %if.end.8

if.end.8:                                         ; preds = %if.else, %if.then.2
  %cdev = getelementptr inbounds %struct.tile_fill_state_s, %struct.tile_fill_state_s* %state, i32 0, i32 7
  %31 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev, align 8, !tbaa !29
  %cmp9 = icmp ne %struct.gx_device_mask_clip_s* %31, null
  br i1 %cmp9, label %if.then.11, label %if.end.14

if.then.11:                                       ; preds = %if.end.8
  %cdev12 = getelementptr inbounds %struct.tile_fill_state_s, %struct.tile_fill_state_s* %state, i32 0, i32 7
  %32 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev12, align 8, !tbaa !29
  call void @tile_clip_free(%struct.gx_device_mask_clip_s* %32) #5
  %cdev13 = getelementptr inbounds %struct.tile_fill_state_s, %struct.tile_fill_state_s* %state, i32 0, i32 7
  store %struct.gx_device_mask_clip_s* null, %struct.gx_device_mask_clip_s** %cdev13, align 8, !tbaa !29
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.11, %if.end.8
  %33 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %33, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.14, %if.then
  %34 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %34) #1
  %35 = bitcast %struct.tile_fill_state_s* %state to i8*
  call void @llvm.lifetime.end(i64 104, i8* %35) #1
  %36 = bitcast %struct.gx_color_tile_s** %ptile to i8*
  call void @llvm.lifetime.end(i64 8, i8* %36) #1
  %37 = load i32, i32* %retval
  ret i32 %37
}

; Function Attrs: nounwind uwtable
define internal i32 @tile_masked_fill(%struct.tile_fill_state_s* %ptfs, i32 %x, i32 %y, i32 %w, i32 %h) #0 {
entry:
  %retval = alloca i32, align 4
  %ptfs.addr = alloca %struct.tile_fill_state_s*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %source1 = alloca %struct.gx_rop_source_s*, align 8
  %step_source = alloca %struct.gx_rop_source_s, align 8
  store %struct.tile_fill_state_s* %ptfs, %struct.tile_fill_state_s** %ptfs.addr, align 8, !tbaa !1
  store i32 %x, i32* %x.addr, align 4, !tbaa !5
  store i32 %y, i32* %y.addr, align 4, !tbaa !5
  store i32 %w, i32* %w.addr, align 4, !tbaa !5
  store i32 %h, i32* %h.addr, align 4, !tbaa !5
  %0 = load %struct.tile_fill_state_s*, %struct.tile_fill_state_s** %ptfs.addr, align 8, !tbaa !1
  %source = getelementptr inbounds %struct.tile_fill_state_s, %struct.tile_fill_state_s* %0, i32 0, i32 6
  %1 = load %struct.gx_rop_source_s*, %struct.gx_rop_source_s** %source, align 8, !tbaa !52
  %cmp = icmp eq %struct.gx_rop_source_s* %1, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.tile_fill_state_s*, %struct.tile_fill_state_s** %ptfs.addr, align 8, !tbaa !1
  %fill_rectangle = getelementptr inbounds %struct.tile_fill_state_s, %struct.tile_fill_state_s* %2, i32 0, i32 12
  %3 = load i32 (%struct.gx_device_color_s*, i32, i32, i32, i32, %struct.gx_device_s*, i32, %struct.gx_rop_source_s*)*, i32 (%struct.gx_device_color_s*, i32, i32, i32, i32, %struct.gx_device_s*, i32, %struct.gx_rop_source_s*)** %fill_rectangle, align 8, !tbaa !148
  %4 = load %struct.tile_fill_state_s*, %struct.tile_fill_state_s** %ptfs.addr, align 8, !tbaa !1
  %pdevc = getelementptr inbounds %struct.tile_fill_state_s, %struct.tile_fill_state_s* %4, i32 0, i32 0
  %5 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc, align 8, !tbaa !78
  %6 = load i32, i32* %x.addr, align 4, !tbaa !5
  %7 = load i32, i32* %y.addr, align 4, !tbaa !5
  %8 = load i32, i32* %w.addr, align 4, !tbaa !5
  %9 = load i32, i32* %h.addr, align 4, !tbaa !5
  %10 = load %struct.tile_fill_state_s*, %struct.tile_fill_state_s** %ptfs.addr, align 8, !tbaa !1
  %pcdev = getelementptr inbounds %struct.tile_fill_state_s, %struct.tile_fill_state_s* %10, i32 0, i32 8
  %11 = load %struct.gx_device_s*, %struct.gx_device_s** %pcdev, align 8, !tbaa !30
  %12 = load %struct.tile_fill_state_s*, %struct.tile_fill_state_s** %ptfs.addr, align 8, !tbaa !1
  %lop = getelementptr inbounds %struct.tile_fill_state_s, %struct.tile_fill_state_s* %12, i32 0, i32 5
  %13 = load i32, i32* %lop, align 4, !tbaa !51
  %call = call i32 %3(%struct.gx_device_color_s* %5, i32 %6, i32 %7, i32 %8, i32 %9, %struct.gx_device_s* %11, i32 %13, %struct.gx_rop_source_s* null) #5
  store i32 %call, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  %14 = bitcast %struct.gx_rop_source_s** %source1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #1
  %15 = load %struct.tile_fill_state_s*, %struct.tile_fill_state_s** %ptfs.addr, align 8, !tbaa !1
  %source2 = getelementptr inbounds %struct.tile_fill_state_s, %struct.tile_fill_state_s* %15, i32 0, i32 6
  %16 = load %struct.gx_rop_source_s*, %struct.gx_rop_source_s** %source2, align 8, !tbaa !52
  store %struct.gx_rop_source_s* %16, %struct.gx_rop_source_s** %source1, align 8, !tbaa !1
  %17 = bitcast %struct.gx_rop_source_s* %step_source to i8*
  call void @llvm.lifetime.start(i64 48, i8* %17) #1
  %18 = load %struct.gx_rop_source_s*, %struct.gx_rop_source_s** %source1, align 8, !tbaa !1
  %sdata = getelementptr inbounds %struct.gx_rop_source_s, %struct.gx_rop_source_s* %18, i32 0, i32 0
  %19 = load i8*, i8** %sdata, align 8, !tbaa !45
  %20 = load i32, i32* %y.addr, align 4, !tbaa !5
  %21 = load %struct.tile_fill_state_s*, %struct.tile_fill_state_s** %ptfs.addr, align 8, !tbaa !1
  %y0 = getelementptr inbounds %struct.tile_fill_state_s, %struct.tile_fill_state_s* %21, i32 0, i32 2
  %22 = load i32, i32* %y0, align 4, !tbaa !104
  %sub = sub nsw i32 %20, %22
  %23 = load %struct.gx_rop_source_s*, %struct.gx_rop_source_s** %source1, align 8, !tbaa !1
  %sraster = getelementptr inbounds %struct.gx_rop_source_s, %struct.gx_rop_source_s* %23, i32 0, i32 2
  %24 = load i32, i32* %sraster, align 4, !tbaa !47
  %mul = mul i32 %sub, %24
  %idx.ext = zext i32 %mul to i64
  %add.ptr = getelementptr inbounds i8, i8* %19, i64 %idx.ext
  %sdata3 = getelementptr inbounds %struct.gx_rop_source_s, %struct.gx_rop_source_s* %step_source, i32 0, i32 0
  store i8* %add.ptr, i8** %sdata3, align 8, !tbaa !45
  %25 = load %struct.gx_rop_source_s*, %struct.gx_rop_source_s** %source1, align 8, !tbaa !1
  %sourcex = getelementptr inbounds %struct.gx_rop_source_s, %struct.gx_rop_source_s* %25, i32 0, i32 1
  %26 = load i32, i32* %sourcex, align 4, !tbaa !46
  %27 = load i32, i32* %x.addr, align 4, !tbaa !5
  %28 = load %struct.tile_fill_state_s*, %struct.tile_fill_state_s** %ptfs.addr, align 8, !tbaa !1
  %x0 = getelementptr inbounds %struct.tile_fill_state_s, %struct.tile_fill_state_s* %28, i32 0, i32 1
  %29 = load i32, i32* %x0, align 4, !tbaa !102
  %sub4 = sub nsw i32 %27, %29
  %add = add nsw i32 %26, %sub4
  %sourcex5 = getelementptr inbounds %struct.gx_rop_source_s, %struct.gx_rop_source_s* %step_source, i32 0, i32 1
  store i32 %add, i32* %sourcex5, align 4, !tbaa !46
  %30 = load %struct.gx_rop_source_s*, %struct.gx_rop_source_s** %source1, align 8, !tbaa !1
  %sraster6 = getelementptr inbounds %struct.gx_rop_source_s, %struct.gx_rop_source_s* %30, i32 0, i32 2
  %31 = load i32, i32* %sraster6, align 4, !tbaa !47
  %sraster7 = getelementptr inbounds %struct.gx_rop_source_s, %struct.gx_rop_source_s* %step_source, i32 0, i32 2
  store i32 %31, i32* %sraster7, align 4, !tbaa !47
  %32 = load i32, i32* %w.addr, align 4, !tbaa !5
  %33 = load %struct.tile_fill_state_s*, %struct.tile_fill_state_s** %ptfs.addr, align 8, !tbaa !1
  %w0 = getelementptr inbounds %struct.tile_fill_state_s, %struct.tile_fill_state_s* %33, i32 0, i32 3
  %34 = load i32, i32* %w0, align 4, !tbaa !103
  %cmp8 = icmp eq i32 %32, %34
  br i1 %cmp8, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %if.else
  %35 = load i32, i32* %h.addr, align 4, !tbaa !5
  %36 = load %struct.tile_fill_state_s*, %struct.tile_fill_state_s** %ptfs.addr, align 8, !tbaa !1
  %h0 = getelementptr inbounds %struct.tile_fill_state_s, %struct.tile_fill_state_s* %36, i32 0, i32 4
  %37 = load i32, i32* %h0, align 4, !tbaa !105
  %cmp9 = icmp eq i32 %35, %37
  br i1 %cmp9, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  %38 = load %struct.gx_rop_source_s*, %struct.gx_rop_source_s** %source1, align 8, !tbaa !1
  %id = getelementptr inbounds %struct.gx_rop_source_s, %struct.gx_rop_source_s* %38, i32 0, i32 3
  %39 = load i64, i64* %id, align 8, !tbaa !48
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true, %if.else
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %39, %cond.true ], [ 0, %cond.false ]
  %id10 = getelementptr inbounds %struct.gx_rop_source_s, %struct.gx_rop_source_s* %step_source, i32 0, i32 3
  store i64 %cond, i64* %id10, align 8, !tbaa !48
  %40 = load %struct.gx_rop_source_s*, %struct.gx_rop_source_s** %source1, align 8, !tbaa !1
  %scolors = getelementptr inbounds %struct.gx_rop_source_s, %struct.gx_rop_source_s* %40, i32 0, i32 4
  %arrayidx = getelementptr inbounds [2 x i64], [2 x i64]* %scolors, i32 0, i64 0
  %41 = load i64, i64* %arrayidx, align 8, !tbaa !66
  %scolors11 = getelementptr inbounds %struct.gx_rop_source_s, %struct.gx_rop_source_s* %step_source, i32 0, i32 4
  %arrayidx12 = getelementptr inbounds [2 x i64], [2 x i64]* %scolors11, i32 0, i64 0
  store i64 %41, i64* %arrayidx12, align 8, !tbaa !66
  %42 = load %struct.gx_rop_source_s*, %struct.gx_rop_source_s** %source1, align 8, !tbaa !1
  %scolors13 = getelementptr inbounds %struct.gx_rop_source_s, %struct.gx_rop_source_s* %42, i32 0, i32 4
  %arrayidx14 = getelementptr inbounds [2 x i64], [2 x i64]* %scolors13, i32 0, i64 1
  %43 = load i64, i64* %arrayidx14, align 8, !tbaa !66
  %scolors15 = getelementptr inbounds %struct.gx_rop_source_s, %struct.gx_rop_source_s* %step_source, i32 0, i32 4
  %arrayidx16 = getelementptr inbounds [2 x i64], [2 x i64]* %scolors15, i32 0, i64 1
  store i64 %43, i64* %arrayidx16, align 8, !tbaa !66
  %44 = load %struct.gx_rop_source_s*, %struct.gx_rop_source_s** %source1, align 8, !tbaa !1
  %planar_height = getelementptr inbounds %struct.gx_rop_source_s, %struct.gx_rop_source_s* %44, i32 0, i32 5
  %45 = load i32, i32* %planar_height, align 4, !tbaa !42
  %planar_height17 = getelementptr inbounds %struct.gx_rop_source_s, %struct.gx_rop_source_s* %step_source, i32 0, i32 5
  store i32 %45, i32* %planar_height17, align 4, !tbaa !42
  %46 = load %struct.gx_rop_source_s*, %struct.gx_rop_source_s** %source1, align 8, !tbaa !1
  %use_scolors = getelementptr inbounds %struct.gx_rop_source_s, %struct.gx_rop_source_s* %46, i32 0, i32 6
  %47 = load i32, i32* %use_scolors, align 4, !tbaa !49
  %use_scolors18 = getelementptr inbounds %struct.gx_rop_source_s, %struct.gx_rop_source_s* %step_source, i32 0, i32 6
  store i32 %47, i32* %use_scolors18, align 4, !tbaa !49
  %48 = load %struct.tile_fill_state_s*, %struct.tile_fill_state_s** %ptfs.addr, align 8, !tbaa !1
  %fill_rectangle19 = getelementptr inbounds %struct.tile_fill_state_s, %struct.tile_fill_state_s* %48, i32 0, i32 12
  %49 = load i32 (%struct.gx_device_color_s*, i32, i32, i32, i32, %struct.gx_device_s*, i32, %struct.gx_rop_source_s*)*, i32 (%struct.gx_device_color_s*, i32, i32, i32, i32, %struct.gx_device_s*, i32, %struct.gx_rop_source_s*)** %fill_rectangle19, align 8, !tbaa !148
  %50 = load %struct.tile_fill_state_s*, %struct.tile_fill_state_s** %ptfs.addr, align 8, !tbaa !1
  %pdevc20 = getelementptr inbounds %struct.tile_fill_state_s, %struct.tile_fill_state_s* %50, i32 0, i32 0
  %51 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc20, align 8, !tbaa !78
  %52 = load i32, i32* %x.addr, align 4, !tbaa !5
  %53 = load i32, i32* %y.addr, align 4, !tbaa !5
  %54 = load i32, i32* %w.addr, align 4, !tbaa !5
  %55 = load i32, i32* %h.addr, align 4, !tbaa !5
  %56 = load %struct.tile_fill_state_s*, %struct.tile_fill_state_s** %ptfs.addr, align 8, !tbaa !1
  %pcdev21 = getelementptr inbounds %struct.tile_fill_state_s, %struct.tile_fill_state_s* %56, i32 0, i32 8
  %57 = load %struct.gx_device_s*, %struct.gx_device_s** %pcdev21, align 8, !tbaa !30
  %58 = load %struct.tile_fill_state_s*, %struct.tile_fill_state_s** %ptfs.addr, align 8, !tbaa !1
  %lop22 = getelementptr inbounds %struct.tile_fill_state_s, %struct.tile_fill_state_s* %58, i32 0, i32 5
  %59 = load i32, i32* %lop22, align 4, !tbaa !51
  %call23 = call i32 %49(%struct.gx_device_color_s* %51, i32 %52, i32 %53, i32 %54, i32 %55, %struct.gx_device_s* %57, i32 %59, %struct.gx_rop_source_s* %step_source) #5
  store i32 %call23, i32* %retval
  %60 = bitcast %struct.gx_rop_source_s* %step_source to i8*
  call void @llvm.lifetime.end(i64 48, i8* %60) #1
  %61 = bitcast %struct.gx_rop_source_s** %source1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %61) #1
  br label %return

return:                                           ; preds = %cond.end, %if.then
  %62 = load i32, i32* %retval
  ret i32 %62
}

; Function Attrs: nounwind uwtable
define i32 @gx_dc_devn_masked_fill_rect(%struct.gx_device_color_s* %pdevc, i32 %x, i32 %y, i32 %w, i32 %h, %struct.gx_device_s* %dev, i32 %lop, %struct.gx_rop_source_s* %source) #0 {
entry:
  %retval = alloca i32, align 4
  %pdevc.addr = alloca %struct.gx_device_color_s*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %lop.addr = alloca i32, align 4
  %source.addr = alloca %struct.gx_rop_source_s*, align 8
  %ptile = alloca %struct.gx_color_tile_s*, align 8
  %state = alloca %struct.tile_fill_state_s, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %dcolor = alloca %struct.gx_device_color_s, align 8
  %k = alloca i32, align 4
  store %struct.gx_device_color_s* %pdevc, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  store i32 %x, i32* %x.addr, align 4, !tbaa !5
  store i32 %y, i32* %y.addr, align 4, !tbaa !5
  store i32 %w, i32* %w.addr, align 4, !tbaa !5
  store i32 %h, i32* %h.addr, align 4, !tbaa !5
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i32 %lop, i32* %lop.addr, align 4, !tbaa !5
  store %struct.gx_rop_source_s* %source, %struct.gx_rop_source_s** %source.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_color_tile_s** %ptile to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %mask = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %1, i32 0, i32 5
  %m_tile = getelementptr inbounds %struct._mask, %struct._mask* %mask, i32 0, i32 2
  %2 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %m_tile, align 8, !tbaa !72
  store %struct.gx_color_tile_s* %2, %struct.gx_color_tile_s** %ptile, align 8, !tbaa !1
  %3 = bitcast %struct.tile_fill_state_s* %state to i8*
  call void @llvm.lifetime.start(i64 104, i8* %3) #1
  %4 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %6 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call = call i32 @tile_fill_init(%struct.tile_fill_state_s* %state, %struct.gx_device_color_s* %5, %struct.gx_device_s* %6, i32 1) #5
  store i32 %call, i32* %code, align 4, !tbaa !5
  %7 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %7, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %8, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %pcdev = getelementptr inbounds %struct.tile_fill_state_s, %struct.tile_fill_state_s* %state, i32 0, i32 8
  %9 = load %struct.gx_device_s*, %struct.gx_device_s** %pcdev, align 8, !tbaa !30
  %10 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %cmp1 = icmp eq %struct.gx_device_s* %9, %10
  br i1 %cmp1, label %if.then.2, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %11 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ptile, align 8, !tbaa !1
  %is_simple = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %11, i32 0, i32 11
  %12 = load i8, i8* %is_simple, align 1, !tbaa !9
  %conv = zext i8 %12 to i32
  %tobool = icmp ne i32 %conv, 0
  br i1 %tobool, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %lor.lhs.false, %if.end
  %13 = bitcast %struct.gx_device_color_s* %dcolor to i8*
  call void @llvm.lifetime.start(i64 656, i8* %13) #1
  %14 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %15 = bitcast %struct.gx_device_color_s* %dcolor to i8*
  %16 = bitcast %struct.gx_device_color_s* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* %16, i64 656, i32 8, i1 false), !tbaa.struct !149
  %17 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ptile, align 8, !tbaa !1
  %cmp3 = icmp eq %struct.gx_color_tile_s* %17, null
  br i1 %cmp3, label %if.then.5, label %if.end.13

if.then.5:                                        ; preds = %if.then.2
  %18 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #1
  %type = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %dcolor, i32 0, i32 0
  store %struct.gx_device_color_type_s* @gx_dc_type_data_devn, %struct.gx_device_color_type_s** %type, align 8, !tbaa !151
  store i32 0, i32* %k, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.5
  %19 = load i32, i32* %k, align 4, !tbaa !5
  %cmp6 = icmp slt i32 %19, 64
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %20 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom = sext i32 %20 to i64
  %21 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %colors = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %21, i32 0, i32 1
  %devn = bitcast %union._c* %colors to %struct._devn*
  %values = getelementptr inbounds %struct._devn, %struct._devn* %devn, i32 0, i32 0
  %arrayidx = getelementptr inbounds [64 x i16], [64 x i16]* %values, i32 0, i64 %idxprom
  %22 = load i16, i16* %arrayidx, align 2, !tbaa !67
  %23 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom8 = sext i32 %23 to i64
  %colors9 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %dcolor, i32 0, i32 1
  %devn10 = bitcast %union._c* %colors9 to %struct._devn*
  %values11 = getelementptr inbounds %struct._devn, %struct._devn* %devn10, i32 0, i32 0
  %arrayidx12 = getelementptr inbounds [64 x i16], [64 x i16]* %values11, i32 0, i64 %idxprom8
  store i16 %22, i16* %arrayidx12, align 2, !tbaa !67
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %24 = load i32, i32* %k, align 4, !tbaa !5
  %inc = add nsw i32 %24, 1
  store i32 %inc, i32* %k, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %25 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %25) #1
  br label %if.end.13

if.end.13:                                        ; preds = %for.end, %if.then.2
  %26 = load i32 (%struct.gx_device_color_s*, i32, i32, i32, i32, %struct.gx_device_s*, i32, %struct.gx_rop_source_s*)*, i32 (%struct.gx_device_color_s*, i32, i32, i32, i32, %struct.gx_device_s*, i32, %struct.gx_rop_source_s*)** bitcast ({}** getelementptr inbounds (%struct.gx_device_color_type_s, %struct.gx_device_color_type_s* @gx_dc_type_data_devn, i32 0, i32 5) to i32 (%struct.gx_device_color_s*, i32, i32, i32, i32, %struct.gx_device_s*, i32, %struct.gx_rop_source_s*)**), align 8, !tbaa !146
  %27 = load i32, i32* %x.addr, align 4, !tbaa !5
  %28 = load i32, i32* %y.addr, align 4, !tbaa !5
  %29 = load i32, i32* %w.addr, align 4, !tbaa !5
  %30 = load i32, i32* %h.addr, align 4, !tbaa !5
  %pcdev14 = getelementptr inbounds %struct.tile_fill_state_s, %struct.tile_fill_state_s* %state, i32 0, i32 8
  %31 = load %struct.gx_device_s*, %struct.gx_device_s** %pcdev14, align 8, !tbaa !30
  %32 = load i32, i32* %lop.addr, align 4, !tbaa !5
  %33 = load %struct.gx_rop_source_s*, %struct.gx_rop_source_s** %source.addr, align 8, !tbaa !1
  %call15 = call i32 %26(%struct.gx_device_color_s* %dcolor, i32 %27, i32 %28, i32 %29, i32 %30, %struct.gx_device_s* %31, i32 %32, %struct.gx_rop_source_s* %33) #5
  store i32 %call15, i32* %code, align 4, !tbaa !5
  %34 = bitcast %struct.gx_device_color_s* %dcolor to i8*
  call void @llvm.lifetime.end(i64 656, i8* %34) #1
  br label %if.end.19

if.else:                                          ; preds = %lor.lhs.false
  %35 = load i32, i32* %lop.addr, align 4, !tbaa !5
  %lop16 = getelementptr inbounds %struct.tile_fill_state_s, %struct.tile_fill_state_s* %state, i32 0, i32 5
  store i32 %35, i32* %lop16, align 4, !tbaa !51
  %36 = load %struct.gx_rop_source_s*, %struct.gx_rop_source_s** %source.addr, align 8, !tbaa !1
  %source17 = getelementptr inbounds %struct.tile_fill_state_s, %struct.tile_fill_state_s* %state, i32 0, i32 6
  store %struct.gx_rop_source_s* %36, %struct.gx_rop_source_s** %source17, align 8, !tbaa !52
  %37 = load i32 (%struct.gx_device_color_s*, i32, i32, i32, i32, %struct.gx_device_s*, i32, %struct.gx_rop_source_s*)*, i32 (%struct.gx_device_color_s*, i32, i32, i32, i32, %struct.gx_device_s*, i32, %struct.gx_rop_source_s*)** bitcast ({}** getelementptr inbounds (%struct.gx_device_color_type_s, %struct.gx_device_color_type_s* @gx_dc_type_data_devn, i32 0, i32 5) to i32 (%struct.gx_device_color_s*, i32, i32, i32, i32, %struct.gx_device_s*, i32, %struct.gx_rop_source_s*)**), align 8, !tbaa !146
  %fill_rectangle = getelementptr inbounds %struct.tile_fill_state_s, %struct.tile_fill_state_s* %state, i32 0, i32 12
  store i32 (%struct.gx_device_color_s*, i32, i32, i32, i32, %struct.gx_device_s*, i32, %struct.gx_rop_source_s*)* %37, i32 (%struct.gx_device_color_s*, i32, i32, i32, i32, %struct.gx_device_s*, i32, %struct.gx_rop_source_s*)** %fill_rectangle, align 8, !tbaa !148
  %38 = load i32, i32* %x.addr, align 4, !tbaa !5
  %39 = load i32, i32* %y.addr, align 4, !tbaa !5
  %40 = load i32, i32* %w.addr, align 4, !tbaa !5
  %41 = load i32, i32* %h.addr, align 4, !tbaa !5
  %42 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ptile, align 8, !tbaa !1
  %43 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ptile, align 8, !tbaa !1
  %tmask = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %43, i32 0, i32 8
  %call18 = call i32 @tile_by_steps(%struct.tile_fill_state_s* %state, i32 %38, i32 %39, i32 %40, i32 %41, %struct.gx_color_tile_s* %42, %struct.gx_strip_bitmap_s* %tmask, i32 (%struct.tile_fill_state_s*, i32, i32, i32, i32)* @tile_masked_fill) #5
  store i32 %call18, i32* %code, align 4, !tbaa !5
  br label %if.end.19

if.end.19:                                        ; preds = %if.else, %if.end.13
  %cdev = getelementptr inbounds %struct.tile_fill_state_s, %struct.tile_fill_state_s* %state, i32 0, i32 7
  %44 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev, align 8, !tbaa !29
  %cmp20 = icmp ne %struct.gx_device_mask_clip_s* %44, null
  br i1 %cmp20, label %if.then.22, label %if.end.25

if.then.22:                                       ; preds = %if.end.19
  %cdev23 = getelementptr inbounds %struct.tile_fill_state_s, %struct.tile_fill_state_s* %state, i32 0, i32 7
  %45 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev23, align 8, !tbaa !29
  call void @tile_clip_free(%struct.gx_device_mask_clip_s* %45) #5
  %cdev24 = getelementptr inbounds %struct.tile_fill_state_s, %struct.tile_fill_state_s* %state, i32 0, i32 7
  store %struct.gx_device_mask_clip_s* null, %struct.gx_device_mask_clip_s** %cdev24, align 8, !tbaa !29
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.22, %if.end.19
  %46 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %46, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.25, %if.then
  %47 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %47) #1
  %48 = bitcast %struct.tile_fill_state_s* %state to i8*
  call void @llvm.lifetime.end(i64 104, i8* %48) #1
  %49 = bitcast %struct.gx_color_tile_s** %ptile to i8*
  call void @llvm.lifetime.end(i64 8, i8* %49) #1
  %50 = load i32, i32* %retval
  ret i32 %50
}

; Function Attrs: nounwind uwtable
define i32 @gx_dc_binary_masked_fill_rect(%struct.gx_device_color_s* %pdevc, i32 %x, i32 %y, i32 %w, i32 %h, %struct.gx_device_s* %dev, i32 %lop, %struct.gx_rop_source_s* %source) #0 {
entry:
  %retval = alloca i32, align 4
  %pdevc.addr = alloca %struct.gx_device_color_s*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %lop.addr = alloca i32, align 4
  %source.addr = alloca %struct.gx_rop_source_s*, align 8
  %ptile = alloca %struct.gx_color_tile_s*, align 8
  %state = alloca %struct.tile_fill_state_s, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_color_s* %pdevc, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  store i32 %x, i32* %x.addr, align 4, !tbaa !5
  store i32 %y, i32* %y.addr, align 4, !tbaa !5
  store i32 %w, i32* %w.addr, align 4, !tbaa !5
  store i32 %h, i32* %h.addr, align 4, !tbaa !5
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i32 %lop, i32* %lop.addr, align 4, !tbaa !5
  store %struct.gx_rop_source_s* %source, %struct.gx_rop_source_s** %source.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_color_tile_s** %ptile to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %mask = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %1, i32 0, i32 5
  %m_tile = getelementptr inbounds %struct._mask, %struct._mask* %mask, i32 0, i32 2
  %2 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %m_tile, align 8, !tbaa !72
  store %struct.gx_color_tile_s* %2, %struct.gx_color_tile_s** %ptile, align 8, !tbaa !1
  %3 = bitcast %struct.tile_fill_state_s* %state to i8*
  call void @llvm.lifetime.start(i64 104, i8* %3) #1
  %4 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %6 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call = call i32 @tile_fill_init(%struct.tile_fill_state_s* %state, %struct.gx_device_color_s* %5, %struct.gx_device_s* %6, i32 1) #5
  store i32 %call, i32* %code, align 4, !tbaa !5
  %7 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %7, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %8, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %pcdev = getelementptr inbounds %struct.tile_fill_state_s, %struct.tile_fill_state_s* %state, i32 0, i32 8
  %9 = load %struct.gx_device_s*, %struct.gx_device_s** %pcdev, align 8, !tbaa !30
  %10 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %cmp1 = icmp eq %struct.gx_device_s* %9, %10
  br i1 %cmp1, label %if.then.2, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %11 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ptile, align 8, !tbaa !1
  %is_simple = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %11, i32 0, i32 11
  %12 = load i8, i8* %is_simple, align 1, !tbaa !9
  %conv = zext i8 %12 to i32
  %tobool = icmp ne i32 %conv, 0
  br i1 %tobool, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %lor.lhs.false, %if.end
  %13 = load i32 (%struct.gx_device_color_s*, i32, i32, i32, i32, %struct.gx_device_s*, i32, %struct.gx_rop_source_s*)*, i32 (%struct.gx_device_color_s*, i32, i32, i32, i32, %struct.gx_device_s*, i32, %struct.gx_rop_source_s*)** bitcast ({}** getelementptr inbounds (%struct.gx_device_color_type_s, %struct.gx_device_color_type_s* @gx_dc_type_data_ht_binary, i32 0, i32 5) to i32 (%struct.gx_device_color_s*, i32, i32, i32, i32, %struct.gx_device_s*, i32, %struct.gx_rop_source_s*)**), align 8, !tbaa !146
  %14 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %15 = load i32, i32* %x.addr, align 4, !tbaa !5
  %16 = load i32, i32* %y.addr, align 4, !tbaa !5
  %17 = load i32, i32* %w.addr, align 4, !tbaa !5
  %18 = load i32, i32* %h.addr, align 4, !tbaa !5
  %pcdev3 = getelementptr inbounds %struct.tile_fill_state_s, %struct.tile_fill_state_s* %state, i32 0, i32 8
  %19 = load %struct.gx_device_s*, %struct.gx_device_s** %pcdev3, align 8, !tbaa !30
  %20 = load i32, i32* %lop.addr, align 4, !tbaa !5
  %21 = load %struct.gx_rop_source_s*, %struct.gx_rop_source_s** %source.addr, align 8, !tbaa !1
  %call4 = call i32 %13(%struct.gx_device_color_s* %14, i32 %15, i32 %16, i32 %17, i32 %18, %struct.gx_device_s* %19, i32 %20, %struct.gx_rop_source_s* %21) #5
  store i32 %call4, i32* %code, align 4, !tbaa !5
  br label %if.end.8

if.else:                                          ; preds = %lor.lhs.false
  %22 = load i32, i32* %lop.addr, align 4, !tbaa !5
  %lop5 = getelementptr inbounds %struct.tile_fill_state_s, %struct.tile_fill_state_s* %state, i32 0, i32 5
  store i32 %22, i32* %lop5, align 4, !tbaa !51
  %23 = load %struct.gx_rop_source_s*, %struct.gx_rop_source_s** %source.addr, align 8, !tbaa !1
  %source6 = getelementptr inbounds %struct.tile_fill_state_s, %struct.tile_fill_state_s* %state, i32 0, i32 6
  store %struct.gx_rop_source_s* %23, %struct.gx_rop_source_s** %source6, align 8, !tbaa !52
  %24 = load i32 (%struct.gx_device_color_s*, i32, i32, i32, i32, %struct.gx_device_s*, i32, %struct.gx_rop_source_s*)*, i32 (%struct.gx_device_color_s*, i32, i32, i32, i32, %struct.gx_device_s*, i32, %struct.gx_rop_source_s*)** bitcast ({}** getelementptr inbounds (%struct.gx_device_color_type_s, %struct.gx_device_color_type_s* @gx_dc_type_data_ht_binary, i32 0, i32 5) to i32 (%struct.gx_device_color_s*, i32, i32, i32, i32, %struct.gx_device_s*, i32, %struct.gx_rop_source_s*)**), align 8, !tbaa !146
  %fill_rectangle = getelementptr inbounds %struct.tile_fill_state_s, %struct.tile_fill_state_s* %state, i32 0, i32 12
  store i32 (%struct.gx_device_color_s*, i32, i32, i32, i32, %struct.gx_device_s*, i32, %struct.gx_rop_source_s*)* %24, i32 (%struct.gx_device_color_s*, i32, i32, i32, i32, %struct.gx_device_s*, i32, %struct.gx_rop_source_s*)** %fill_rectangle, align 8, !tbaa !148
  %25 = load i32, i32* %x.addr, align 4, !tbaa !5
  %26 = load i32, i32* %y.addr, align 4, !tbaa !5
  %27 = load i32, i32* %w.addr, align 4, !tbaa !5
  %28 = load i32, i32* %h.addr, align 4, !tbaa !5
  %29 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ptile, align 8, !tbaa !1
  %30 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ptile, align 8, !tbaa !1
  %tmask = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %30, i32 0, i32 8
  %call7 = call i32 @tile_by_steps(%struct.tile_fill_state_s* %state, i32 %25, i32 %26, i32 %27, i32 %28, %struct.gx_color_tile_s* %29, %struct.gx_strip_bitmap_s* %tmask, i32 (%struct.tile_fill_state_s*, i32, i32, i32, i32)* @tile_masked_fill) #5
  store i32 %call7, i32* %code, align 4, !tbaa !5
  br label %if.end.8

if.end.8:                                         ; preds = %if.else, %if.then.2
  %cdev = getelementptr inbounds %struct.tile_fill_state_s, %struct.tile_fill_state_s* %state, i32 0, i32 7
  %31 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev, align 8, !tbaa !29
  %cmp9 = icmp ne %struct.gx_device_mask_clip_s* %31, null
  br i1 %cmp9, label %if.then.11, label %if.end.14

if.then.11:                                       ; preds = %if.end.8
  %cdev12 = getelementptr inbounds %struct.tile_fill_state_s, %struct.tile_fill_state_s* %state, i32 0, i32 7
  %32 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev12, align 8, !tbaa !29
  call void @tile_clip_free(%struct.gx_device_mask_clip_s* %32) #5
  %cdev13 = getelementptr inbounds %struct.tile_fill_state_s, %struct.tile_fill_state_s* %state, i32 0, i32 7
  store %struct.gx_device_mask_clip_s* null, %struct.gx_device_mask_clip_s** %cdev13, align 8, !tbaa !29
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.11, %if.end.8
  %33 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %33, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.14, %if.then
  %34 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %34) #1
  %35 = bitcast %struct.tile_fill_state_s* %state to i8*
  call void @llvm.lifetime.end(i64 104, i8* %35) #1
  %36 = bitcast %struct.gx_color_tile_s** %ptile to i8*
  call void @llvm.lifetime.end(i64 8, i8* %36) #1
  %37 = load i32, i32* %retval
  ret i32 %37
}

; Function Attrs: nounwind uwtable
define i32 @gx_dc_colored_masked_fill_rect(%struct.gx_device_color_s* %pdevc, i32 %x, i32 %y, i32 %w, i32 %h, %struct.gx_device_s* %dev, i32 %lop, %struct.gx_rop_source_s* %source) #0 {
entry:
  %retval = alloca i32, align 4
  %pdevc.addr = alloca %struct.gx_device_color_s*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %lop.addr = alloca i32, align 4
  %source.addr = alloca %struct.gx_rop_source_s*, align 8
  %ptile = alloca %struct.gx_color_tile_s*, align 8
  %state = alloca %struct.tile_fill_state_s, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_color_s* %pdevc, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  store i32 %x, i32* %x.addr, align 4, !tbaa !5
  store i32 %y, i32* %y.addr, align 4, !tbaa !5
  store i32 %w, i32* %w.addr, align 4, !tbaa !5
  store i32 %h, i32* %h.addr, align 4, !tbaa !5
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i32 %lop, i32* %lop.addr, align 4, !tbaa !5
  store %struct.gx_rop_source_s* %source, %struct.gx_rop_source_s** %source.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_color_tile_s** %ptile to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %mask = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %1, i32 0, i32 5
  %m_tile = getelementptr inbounds %struct._mask, %struct._mask* %mask, i32 0, i32 2
  %2 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %m_tile, align 8, !tbaa !72
  store %struct.gx_color_tile_s* %2, %struct.gx_color_tile_s** %ptile, align 8, !tbaa !1
  %3 = bitcast %struct.tile_fill_state_s* %state to i8*
  call void @llvm.lifetime.start(i64 104, i8* %3) #1
  %4 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %6 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call = call i32 @tile_fill_init(%struct.tile_fill_state_s* %state, %struct.gx_device_color_s* %5, %struct.gx_device_s* %6, i32 1) #5
  store i32 %call, i32* %code, align 4, !tbaa !5
  %7 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %7, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %8, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %pcdev = getelementptr inbounds %struct.tile_fill_state_s, %struct.tile_fill_state_s* %state, i32 0, i32 8
  %9 = load %struct.gx_device_s*, %struct.gx_device_s** %pcdev, align 8, !tbaa !30
  %10 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %cmp1 = icmp eq %struct.gx_device_s* %9, %10
  br i1 %cmp1, label %if.then.2, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %11 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ptile, align 8, !tbaa !1
  %is_simple = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %11, i32 0, i32 11
  %12 = load i8, i8* %is_simple, align 1, !tbaa !9
  %conv = zext i8 %12 to i32
  %tobool = icmp ne i32 %conv, 0
  br i1 %tobool, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %lor.lhs.false, %if.end
  %13 = load i32 (%struct.gx_device_color_s*, i32, i32, i32, i32, %struct.gx_device_s*, i32, %struct.gx_rop_source_s*)*, i32 (%struct.gx_device_color_s*, i32, i32, i32, i32, %struct.gx_device_s*, i32, %struct.gx_rop_source_s*)** bitcast ({}** getelementptr inbounds (%struct.gx_device_color_type_s, %struct.gx_device_color_type_s* @gx_dc_type_data_ht_colored, i32 0, i32 5) to i32 (%struct.gx_device_color_s*, i32, i32, i32, i32, %struct.gx_device_s*, i32, %struct.gx_rop_source_s*)**), align 8, !tbaa !146
  %14 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %15 = load i32, i32* %x.addr, align 4, !tbaa !5
  %16 = load i32, i32* %y.addr, align 4, !tbaa !5
  %17 = load i32, i32* %w.addr, align 4, !tbaa !5
  %18 = load i32, i32* %h.addr, align 4, !tbaa !5
  %pcdev3 = getelementptr inbounds %struct.tile_fill_state_s, %struct.tile_fill_state_s* %state, i32 0, i32 8
  %19 = load %struct.gx_device_s*, %struct.gx_device_s** %pcdev3, align 8, !tbaa !30
  %20 = load i32, i32* %lop.addr, align 4, !tbaa !5
  %21 = load %struct.gx_rop_source_s*, %struct.gx_rop_source_s** %source.addr, align 8, !tbaa !1
  %call4 = call i32 %13(%struct.gx_device_color_s* %14, i32 %15, i32 %16, i32 %17, i32 %18, %struct.gx_device_s* %19, i32 %20, %struct.gx_rop_source_s* %21) #5
  store i32 %call4, i32* %code, align 4, !tbaa !5
  br label %if.end.8

if.else:                                          ; preds = %lor.lhs.false
  %22 = load i32, i32* %lop.addr, align 4, !tbaa !5
  %lop5 = getelementptr inbounds %struct.tile_fill_state_s, %struct.tile_fill_state_s* %state, i32 0, i32 5
  store i32 %22, i32* %lop5, align 4, !tbaa !51
  %23 = load %struct.gx_rop_source_s*, %struct.gx_rop_source_s** %source.addr, align 8, !tbaa !1
  %source6 = getelementptr inbounds %struct.tile_fill_state_s, %struct.tile_fill_state_s* %state, i32 0, i32 6
  store %struct.gx_rop_source_s* %23, %struct.gx_rop_source_s** %source6, align 8, !tbaa !52
  %24 = load i32 (%struct.gx_device_color_s*, i32, i32, i32, i32, %struct.gx_device_s*, i32, %struct.gx_rop_source_s*)*, i32 (%struct.gx_device_color_s*, i32, i32, i32, i32, %struct.gx_device_s*, i32, %struct.gx_rop_source_s*)** bitcast ({}** getelementptr inbounds (%struct.gx_device_color_type_s, %struct.gx_device_color_type_s* @gx_dc_type_data_ht_colored, i32 0, i32 5) to i32 (%struct.gx_device_color_s*, i32, i32, i32, i32, %struct.gx_device_s*, i32, %struct.gx_rop_source_s*)**), align 8, !tbaa !146
  %fill_rectangle = getelementptr inbounds %struct.tile_fill_state_s, %struct.tile_fill_state_s* %state, i32 0, i32 12
  store i32 (%struct.gx_device_color_s*, i32, i32, i32, i32, %struct.gx_device_s*, i32, %struct.gx_rop_source_s*)* %24, i32 (%struct.gx_device_color_s*, i32, i32, i32, i32, %struct.gx_device_s*, i32, %struct.gx_rop_source_s*)** %fill_rectangle, align 8, !tbaa !148
  %25 = load i32, i32* %x.addr, align 4, !tbaa !5
  %26 = load i32, i32* %y.addr, align 4, !tbaa !5
  %27 = load i32, i32* %w.addr, align 4, !tbaa !5
  %28 = load i32, i32* %h.addr, align 4, !tbaa !5
  %29 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ptile, align 8, !tbaa !1
  %30 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ptile, align 8, !tbaa !1
  %tmask = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %30, i32 0, i32 8
  %call7 = call i32 @tile_by_steps(%struct.tile_fill_state_s* %state, i32 %25, i32 %26, i32 %27, i32 %28, %struct.gx_color_tile_s* %29, %struct.gx_strip_bitmap_s* %tmask, i32 (%struct.tile_fill_state_s*, i32, i32, i32, i32)* @tile_masked_fill) #5
  store i32 %call7, i32* %code, align 4, !tbaa !5
  br label %if.end.8

if.end.8:                                         ; preds = %if.else, %if.then.2
  %cdev = getelementptr inbounds %struct.tile_fill_state_s, %struct.tile_fill_state_s* %state, i32 0, i32 7
  %31 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev, align 8, !tbaa !29
  %cmp9 = icmp ne %struct.gx_device_mask_clip_s* %31, null
  br i1 %cmp9, label %if.then.11, label %if.end.14

if.then.11:                                       ; preds = %if.end.8
  %cdev12 = getelementptr inbounds %struct.tile_fill_state_s, %struct.tile_fill_state_s* %state, i32 0, i32 7
  %32 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev12, align 8, !tbaa !29
  call void @tile_clip_free(%struct.gx_device_mask_clip_s* %32) #5
  %cdev13 = getelementptr inbounds %struct.tile_fill_state_s, %struct.tile_fill_state_s* %state, i32 0, i32 7
  store %struct.gx_device_mask_clip_s* null, %struct.gx_device_mask_clip_s** %cdev13, align 8, !tbaa !29
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.11, %if.end.8
  %33 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %33, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.14, %if.then
  %34 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %34) #1
  %35 = bitcast %struct.tile_fill_state_s* %state to i8*
  call void @llvm.lifetime.end(i64 104, i8* %35) #1
  %36 = bitcast %struct.gx_color_tile_s** %ptile to i8*
  call void @llvm.lifetime.end(i64 8, i8* %36) #1
  %37 = load i32, i32* %retval
  ret i32 %37
}

; Function Attrs: nounwind uwtable
define void @tile_rect_trans_simple(i32 %xmin, i32 %ymin, i32 %xmax, i32 %ymax, i32 %px, i32 %py, %struct.gx_color_tile_s* %ptile, %struct.gx_pattern_trans_s* %fill_trans_buffer) #0 {
entry:
  %xmin.addr = alloca i32, align 4
  %ymin.addr = alloca i32, align 4
  %xmax.addr = alloca i32, align 4
  %ymax.addr = alloca i32, align 4
  %px.addr = alloca i32, align 4
  %py.addr = alloca i32, align 4
  %ptile.addr = alloca %struct.gx_color_tile_s*, align 8
  %fill_trans_buffer.addr = alloca %struct.gx_pattern_trans_s*, align 8
  %kk = alloca i32, align 4
  %jj = alloca i32, align 4
  %ii = alloca i32, align 4
  %h = alloca i32, align 4
  %w = alloca i32, align 4
  %buff_out_y_offset = alloca i32, align 4
  %buff_out_x_offset = alloca i32, align 4
  %ptr_out = alloca i8*, align 8
  %ptr_in = alloca i8*, align 8
  %buff_out = alloca i8*, align 8
  %buff_in = alloca i8*, align 8
  %ptr_out_temp = alloca i8*, align 8
  %row_ptr = alloca i8*, align 8
  %in_row_offset = alloca i32, align 4
  %dx = alloca i32, align 4
  %dy = alloca i32, align 4
  %left_rem_end = alloca i32, align 4
  %left_width = alloca i32, align 4
  %num_full_tiles = alloca i32, align 4
  %right_tile_width = alloca i32, align 4
  %left_copy_rem_end = alloca i32, align 4
  %left_copy_width = alloca i32, align 4
  %left_copy_offset = alloca i32, align 4
  %left_copy_start = alloca i32, align 4
  %mid_copy_width = alloca i32, align 4
  %right_copy_width = alloca i32, align 4
  %tile_width = alloca i32, align 4
  %tile_height = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store i32 %xmin, i32* %xmin.addr, align 4, !tbaa !5
  store i32 %ymin, i32* %ymin.addr, align 4, !tbaa !5
  store i32 %xmax, i32* %xmax.addr, align 4, !tbaa !5
  store i32 %ymax, i32* %ymax.addr, align 4, !tbaa !5
  store i32 %px, i32* %px.addr, align 4, !tbaa !5
  store i32 %py, i32* %py.addr, align 4, !tbaa !5
  store %struct.gx_color_tile_s* %ptile, %struct.gx_color_tile_s** %ptile.addr, align 8, !tbaa !1
  store %struct.gx_pattern_trans_s* %fill_trans_buffer, %struct.gx_pattern_trans_s** %fill_trans_buffer.addr, align 8, !tbaa !1
  %0 = bitcast i32* %kk to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %jj to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %ii to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %h to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i32* %w to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast i32* %buff_out_y_offset to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast i32* %buff_out_x_offset to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast i8** %ptr_out to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = bitcast i8** %ptr_in to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  %9 = bitcast i8** %buff_out to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = bitcast i8** %buff_in to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  %11 = bitcast i8** %ptr_out_temp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  %12 = bitcast i8** %row_ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  %13 = bitcast i32* %in_row_offset to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  %14 = bitcast i32* %dx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  %15 = bitcast i32* %dy to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  %16 = bitcast i32* %left_rem_end to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #1
  %17 = bitcast i32* %left_width to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #1
  %18 = bitcast i32* %num_full_tiles to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #1
  %19 = bitcast i32* %right_tile_width to i8*
  call void @llvm.lifetime.start(i64 4, i8* %19) #1
  %20 = bitcast i32* %left_copy_rem_end to i8*
  call void @llvm.lifetime.start(i64 4, i8* %20) #1
  %21 = bitcast i32* %left_copy_width to i8*
  call void @llvm.lifetime.start(i64 4, i8* %21) #1
  %22 = bitcast i32* %left_copy_offset to i8*
  call void @llvm.lifetime.start(i64 4, i8* %22) #1
  %23 = bitcast i32* %left_copy_start to i8*
  call void @llvm.lifetime.start(i64 4, i8* %23) #1
  %24 = bitcast i32* %mid_copy_width to i8*
  call void @llvm.lifetime.start(i64 4, i8* %24) #1
  %25 = bitcast i32* %right_copy_width to i8*
  call void @llvm.lifetime.start(i64 4, i8* %25) #1
  %26 = bitcast i32* %tile_width to i8*
  call void @llvm.lifetime.start(i64 4, i8* %26) #1
  %27 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ptile.addr, align 8, !tbaa !1
  %ttrans = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %27, i32 0, i32 9
  %28 = load %struct.gx_pattern_trans_s*, %struct.gx_pattern_trans_s** %ttrans, align 8, !tbaa !152
  %width = getelementptr inbounds %struct.gx_pattern_trans_s, %struct.gx_pattern_trans_s* %28, i32 0, i32 9
  %29 = load i32, i32* %width, align 4, !tbaa !153
  store i32 %29, i32* %tile_width, align 4, !tbaa !5
  %30 = bitcast i32* %tile_height to i8*
  call void @llvm.lifetime.start(i64 4, i8* %30) #1
  %31 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ptile.addr, align 8, !tbaa !1
  %ttrans1 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %31, i32 0, i32 9
  %32 = load %struct.gx_pattern_trans_s*, %struct.gx_pattern_trans_s** %ttrans1, align 8, !tbaa !152
  %height = getelementptr inbounds %struct.gx_pattern_trans_s, %struct.gx_pattern_trans_s* %32, i32 0, i32 10
  %33 = load i32, i32* %height, align 4, !tbaa !156
  store i32 %33, i32* %tile_height, align 4, !tbaa !5
  %34 = load %struct.gx_pattern_trans_s*, %struct.gx_pattern_trans_s** %fill_trans_buffer.addr, align 8, !tbaa !1
  %dirty = getelementptr inbounds %struct.gx_pattern_trans_s, %struct.gx_pattern_trans_s* %34, i32 0, i32 14
  %35 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %dirty, align 8, !tbaa !157
  %p = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %35, i32 0, i32 0
  %x = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p, i32 0, i32 0
  %36 = load i32, i32* %x, align 4, !tbaa !158
  %37 = load i32, i32* %xmin.addr, align 4, !tbaa !5
  %cmp = icmp sgt i32 %36, %37
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %38 = load i32, i32* %xmin.addr, align 4, !tbaa !5
  %39 = load %struct.gx_pattern_trans_s*, %struct.gx_pattern_trans_s** %fill_trans_buffer.addr, align 8, !tbaa !1
  %dirty2 = getelementptr inbounds %struct.gx_pattern_trans_s, %struct.gx_pattern_trans_s* %39, i32 0, i32 14
  %40 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %dirty2, align 8, !tbaa !157
  %p3 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %40, i32 0, i32 0
  %x4 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p3, i32 0, i32 0
  store i32 %38, i32* %x4, align 4, !tbaa !158
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %41 = load %struct.gx_pattern_trans_s*, %struct.gx_pattern_trans_s** %fill_trans_buffer.addr, align 8, !tbaa !1
  %dirty5 = getelementptr inbounds %struct.gx_pattern_trans_s, %struct.gx_pattern_trans_s* %41, i32 0, i32 14
  %42 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %dirty5, align 8, !tbaa !157
  %p6 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %42, i32 0, i32 0
  %y = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p6, i32 0, i32 1
  %43 = load i32, i32* %y, align 4, !tbaa !159
  %44 = load i32, i32* %ymin.addr, align 4, !tbaa !5
  %cmp7 = icmp sgt i32 %43, %44
  br i1 %cmp7, label %if.then.8, label %if.end.12

if.then.8:                                        ; preds = %if.end
  %45 = load i32, i32* %ymin.addr, align 4, !tbaa !5
  %46 = load %struct.gx_pattern_trans_s*, %struct.gx_pattern_trans_s** %fill_trans_buffer.addr, align 8, !tbaa !1
  %dirty9 = getelementptr inbounds %struct.gx_pattern_trans_s, %struct.gx_pattern_trans_s* %46, i32 0, i32 14
  %47 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %dirty9, align 8, !tbaa !157
  %p10 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %47, i32 0, i32 0
  %y11 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p10, i32 0, i32 1
  store i32 %45, i32* %y11, align 4, !tbaa !159
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.8, %if.end
  %48 = load %struct.gx_pattern_trans_s*, %struct.gx_pattern_trans_s** %fill_trans_buffer.addr, align 8, !tbaa !1
  %dirty13 = getelementptr inbounds %struct.gx_pattern_trans_s, %struct.gx_pattern_trans_s* %48, i32 0, i32 14
  %49 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %dirty13, align 8, !tbaa !157
  %q = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %49, i32 0, i32 1
  %x14 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q, i32 0, i32 0
  %50 = load i32, i32* %x14, align 4, !tbaa !160
  %51 = load i32, i32* %xmax.addr, align 4, !tbaa !5
  %cmp15 = icmp slt i32 %50, %51
  br i1 %cmp15, label %if.then.16, label %if.end.20

if.then.16:                                       ; preds = %if.end.12
  %52 = load i32, i32* %xmax.addr, align 4, !tbaa !5
  %53 = load %struct.gx_pattern_trans_s*, %struct.gx_pattern_trans_s** %fill_trans_buffer.addr, align 8, !tbaa !1
  %dirty17 = getelementptr inbounds %struct.gx_pattern_trans_s, %struct.gx_pattern_trans_s* %53, i32 0, i32 14
  %54 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %dirty17, align 8, !tbaa !157
  %q18 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %54, i32 0, i32 1
  %x19 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q18, i32 0, i32 0
  store i32 %52, i32* %x19, align 4, !tbaa !160
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.16, %if.end.12
  %55 = load %struct.gx_pattern_trans_s*, %struct.gx_pattern_trans_s** %fill_trans_buffer.addr, align 8, !tbaa !1
  %dirty21 = getelementptr inbounds %struct.gx_pattern_trans_s, %struct.gx_pattern_trans_s* %55, i32 0, i32 14
  %56 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %dirty21, align 8, !tbaa !157
  %q22 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %56, i32 0, i32 1
  %y23 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q22, i32 0, i32 1
  %57 = load i32, i32* %y23, align 4, !tbaa !161
  %58 = load i32, i32* %ymax.addr, align 4, !tbaa !5
  %cmp24 = icmp slt i32 %57, %58
  br i1 %cmp24, label %if.then.25, label %if.end.29

if.then.25:                                       ; preds = %if.end.20
  %59 = load i32, i32* %ymax.addr, align 4, !tbaa !5
  %60 = load %struct.gx_pattern_trans_s*, %struct.gx_pattern_trans_s** %fill_trans_buffer.addr, align 8, !tbaa !1
  %dirty26 = getelementptr inbounds %struct.gx_pattern_trans_s, %struct.gx_pattern_trans_s* %60, i32 0, i32 14
  %61 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %dirty26, align 8, !tbaa !157
  %q27 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %61, i32 0, i32 1
  %y28 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q27, i32 0, i32 1
  store i32 %59, i32* %y28, align 4, !tbaa !161
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.25, %if.end.20
  %62 = load i32, i32* %ymin.addr, align 4, !tbaa !5
  %63 = load %struct.gx_pattern_trans_s*, %struct.gx_pattern_trans_s** %fill_trans_buffer.addr, align 8, !tbaa !1
  %rect = getelementptr inbounds %struct.gx_pattern_trans_s, %struct.gx_pattern_trans_s* %63, i32 0, i32 4
  %p30 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect, i32 0, i32 0
  %y31 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p30, i32 0, i32 1
  %64 = load i32, i32* %y31, align 4, !tbaa !162
  %sub = sub nsw i32 %62, %64
  store i32 %sub, i32* %buff_out_y_offset, align 4, !tbaa !5
  %65 = load i32, i32* %xmin.addr, align 4, !tbaa !5
  %66 = load %struct.gx_pattern_trans_s*, %struct.gx_pattern_trans_s** %fill_trans_buffer.addr, align 8, !tbaa !1
  %rect32 = getelementptr inbounds %struct.gx_pattern_trans_s, %struct.gx_pattern_trans_s* %66, i32 0, i32 4
  %p33 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect32, i32 0, i32 0
  %x34 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p33, i32 0, i32 0
  %67 = load i32, i32* %x34, align 4, !tbaa !163
  %sub35 = sub nsw i32 %65, %67
  store i32 %sub35, i32* %buff_out_x_offset, align 4, !tbaa !5
  %68 = load %struct.gx_pattern_trans_s*, %struct.gx_pattern_trans_s** %fill_trans_buffer.addr, align 8, !tbaa !1
  %transbytes = getelementptr inbounds %struct.gx_pattern_trans_s, %struct.gx_pattern_trans_s* %68, i32 0, i32 1
  %69 = load i8*, i8** %transbytes, align 8, !tbaa !164
  %70 = load i32, i32* %buff_out_y_offset, align 4, !tbaa !5
  %71 = load %struct.gx_pattern_trans_s*, %struct.gx_pattern_trans_s** %fill_trans_buffer.addr, align 8, !tbaa !1
  %rowstride = getelementptr inbounds %struct.gx_pattern_trans_s, %struct.gx_pattern_trans_s* %71, i32 0, i32 5
  %72 = load i32, i32* %rowstride, align 4, !tbaa !165
  %mul = mul nsw i32 %70, %72
  %idx.ext = sext i32 %mul to i64
  %add.ptr = getelementptr inbounds i8, i8* %69, i64 %idx.ext
  %73 = load i32, i32* %buff_out_x_offset, align 4, !tbaa !5
  %idx.ext36 = sext i32 %73 to i64
  %add.ptr37 = getelementptr inbounds i8, i8* %add.ptr, i64 %idx.ext36
  store i8* %add.ptr37, i8** %buff_out, align 8, !tbaa !1
  %74 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ptile.addr, align 8, !tbaa !1
  %ttrans38 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %74, i32 0, i32 9
  %75 = load %struct.gx_pattern_trans_s*, %struct.gx_pattern_trans_s** %ttrans38, align 8, !tbaa !152
  %transbytes39 = getelementptr inbounds %struct.gx_pattern_trans_s, %struct.gx_pattern_trans_s* %75, i32 0, i32 1
  %76 = load i8*, i8** %transbytes39, align 8, !tbaa !164
  store i8* %76, i8** %buff_in, align 8, !tbaa !1
  %77 = load i32, i32* %ymax.addr, align 4, !tbaa !5
  %78 = load i32, i32* %ymin.addr, align 4, !tbaa !5
  %sub40 = sub nsw i32 %77, %78
  store i32 %sub40, i32* %h, align 4, !tbaa !5
  %79 = load i32, i32* %xmax.addr, align 4, !tbaa !5
  %80 = load i32, i32* %xmin.addr, align 4, !tbaa !5
  %sub41 = sub nsw i32 %79, %80
  store i32 %sub41, i32* %w, align 4, !tbaa !5
  %81 = load i32, i32* %h, align 4, !tbaa !5
  %cmp42 = icmp sle i32 %81, 0
  br i1 %cmp42, label %if.then.44, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.29
  %82 = load i32, i32* %w, align 4, !tbaa !5
  %cmp43 = icmp sle i32 %82, 0
  br i1 %cmp43, label %if.then.44, label %if.end.45

if.then.44:                                       ; preds = %lor.lhs.false, %if.end.29
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.45:                                        ; preds = %lor.lhs.false
  %83 = load i32, i32* %xmin.addr, align 4, !tbaa !5
  %84 = load i32, i32* %px.addr, align 4, !tbaa !5
  %add = add nsw i32 %83, %84
  %85 = load i32, i32* %tile_width, align 4, !tbaa !5
  %rem = srem i32 %add, %85
  store i32 %rem, i32* %dx, align 4, !tbaa !5
  %86 = load i32, i32* %ymin.addr, align 4, !tbaa !5
  %87 = load i32, i32* %py.addr, align 4, !tbaa !5
  %add46 = add nsw i32 %86, %87
  %88 = load i32, i32* %tile_height, align 4, !tbaa !5
  %rem47 = srem i32 %add46, %88
  store i32 %rem47, i32* %dy, align 4, !tbaa !5
  %89 = load i32, i32* %dx, align 4, !tbaa !5
  %90 = load i32, i32* %w, align 4, !tbaa !5
  %add48 = add nsw i32 %89, %90
  %91 = load i32, i32* %tile_width, align 4, !tbaa !5
  %cmp49 = icmp slt i32 %add48, %91
  br i1 %cmp49, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.45
  %92 = load i32, i32* %dx, align 4, !tbaa !5
  %93 = load i32, i32* %w, align 4, !tbaa !5
  %add50 = add nsw i32 %92, %93
  br label %cond.end

cond.false:                                       ; preds = %if.end.45
  %94 = load i32, i32* %tile_width, align 4, !tbaa !5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %add50, %cond.true ], [ %94, %cond.false ]
  store i32 %cond, i32* %left_rem_end, align 4, !tbaa !5
  %95 = load i32, i32* %left_rem_end, align 4, !tbaa !5
  %96 = load i32, i32* %dx, align 4, !tbaa !5
  %sub51 = sub nsw i32 %95, %96
  store i32 %sub51, i32* %left_width, align 4, !tbaa !5
  %97 = load i32, i32* %dx, align 4, !tbaa !5
  %98 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ptile.addr, align 8, !tbaa !1
  %ttrans52 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %98, i32 0, i32 9
  %99 = load %struct.gx_pattern_trans_s*, %struct.gx_pattern_trans_s** %ttrans52, align 8, !tbaa !152
  %rect53 = getelementptr inbounds %struct.gx_pattern_trans_s, %struct.gx_pattern_trans_s* %99, i32 0, i32 4
  %p54 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect53, i32 0, i32 0
  %x55 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p54, i32 0, i32 0
  %100 = load i32, i32* %x55, align 4, !tbaa !163
  %cmp56 = icmp sgt i32 %97, %100
  br i1 %cmp56, label %cond.true.57, label %cond.false.58

cond.true.57:                                     ; preds = %cond.end
  %101 = load i32, i32* %dx, align 4, !tbaa !5
  br label %cond.end.63

cond.false.58:                                    ; preds = %cond.end
  %102 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ptile.addr, align 8, !tbaa !1
  %ttrans59 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %102, i32 0, i32 9
  %103 = load %struct.gx_pattern_trans_s*, %struct.gx_pattern_trans_s** %ttrans59, align 8, !tbaa !152
  %rect60 = getelementptr inbounds %struct.gx_pattern_trans_s, %struct.gx_pattern_trans_s* %103, i32 0, i32 4
  %p61 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect60, i32 0, i32 0
  %x62 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p61, i32 0, i32 0
  %104 = load i32, i32* %x62, align 4, !tbaa !163
  br label %cond.end.63

cond.end.63:                                      ; preds = %cond.false.58, %cond.true.57
  %cond64 = phi i32 [ %101, %cond.true.57 ], [ %104, %cond.false.58 ]
  store i32 %cond64, i32* %left_copy_start, align 4, !tbaa !5
  %105 = load i32, i32* %dx, align 4, !tbaa !5
  %106 = load i32, i32* %w, align 4, !tbaa !5
  %add65 = add nsw i32 %105, %106
  %107 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ptile.addr, align 8, !tbaa !1
  %ttrans66 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %107, i32 0, i32 9
  %108 = load %struct.gx_pattern_trans_s*, %struct.gx_pattern_trans_s** %ttrans66, align 8, !tbaa !152
  %rect67 = getelementptr inbounds %struct.gx_pattern_trans_s, %struct.gx_pattern_trans_s* %108, i32 0, i32 4
  %q68 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect67, i32 0, i32 1
  %x69 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q68, i32 0, i32 0
  %109 = load i32, i32* %x69, align 4, !tbaa !166
  %cmp70 = icmp slt i32 %add65, %109
  br i1 %cmp70, label %cond.true.71, label %cond.false.73

cond.true.71:                                     ; preds = %cond.end.63
  %110 = load i32, i32* %dx, align 4, !tbaa !5
  %111 = load i32, i32* %w, align 4, !tbaa !5
  %add72 = add nsw i32 %110, %111
  br label %cond.end.78

cond.false.73:                                    ; preds = %cond.end.63
  %112 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ptile.addr, align 8, !tbaa !1
  %ttrans74 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %112, i32 0, i32 9
  %113 = load %struct.gx_pattern_trans_s*, %struct.gx_pattern_trans_s** %ttrans74, align 8, !tbaa !152
  %rect75 = getelementptr inbounds %struct.gx_pattern_trans_s, %struct.gx_pattern_trans_s* %113, i32 0, i32 4
  %q76 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect75, i32 0, i32 1
  %x77 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q76, i32 0, i32 0
  %114 = load i32, i32* %x77, align 4, !tbaa !166
  br label %cond.end.78

cond.end.78:                                      ; preds = %cond.false.73, %cond.true.71
  %cond79 = phi i32 [ %add72, %cond.true.71 ], [ %114, %cond.false.73 ]
  store i32 %cond79, i32* %left_copy_rem_end, align 4, !tbaa !5
  %115 = load i32, i32* %left_copy_rem_end, align 4, !tbaa !5
  %116 = load i32, i32* %left_copy_start, align 4, !tbaa !5
  %sub80 = sub nsw i32 %115, %116
  store i32 %sub80, i32* %left_copy_width, align 4, !tbaa !5
  %117 = load i32, i32* %left_copy_width, align 4, !tbaa !5
  %cmp81 = icmp slt i32 %117, 0
  br i1 %cmp81, label %if.then.82, label %if.end.83

if.then.82:                                       ; preds = %cond.end.78
  store i32 0, i32* %left_copy_width, align 4, !tbaa !5
  br label %if.end.83

if.end.83:                                        ; preds = %if.then.82, %cond.end.78
  %118 = load i32, i32* %left_copy_start, align 4, !tbaa !5
  %119 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ptile.addr, align 8, !tbaa !1
  %ttrans84 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %119, i32 0, i32 9
  %120 = load %struct.gx_pattern_trans_s*, %struct.gx_pattern_trans_s** %ttrans84, align 8, !tbaa !152
  %rect85 = getelementptr inbounds %struct.gx_pattern_trans_s, %struct.gx_pattern_trans_s* %120, i32 0, i32 4
  %p86 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect85, i32 0, i32 0
  %x87 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p86, i32 0, i32 0
  %121 = load i32, i32* %x87, align 4, !tbaa !163
  %sub88 = sub nsw i32 %118, %121
  store i32 %sub88, i32* %left_copy_offset, align 4, !tbaa !5
  %122 = load i32, i32* %w, align 4, !tbaa !5
  %123 = load i32, i32* %left_width, align 4, !tbaa !5
  %sub89 = sub nsw i32 %122, %123
  %conv = sitofp i32 %sub89 to float
  %124 = load i32, i32* %tile_width, align 4, !tbaa !5
  %conv90 = sitofp i32 %124 to float
  %div = fdiv float %conv, %conv90
  %conv91 = fptosi float %div to i32
  %125 = load i32, i32* %w, align 4, !tbaa !5
  %126 = load i32, i32* %left_width, align 4, !tbaa !5
  %sub92 = sub nsw i32 %125, %126
  %conv93 = sitofp i32 %sub92 to float
  %127 = load i32, i32* %tile_width, align 4, !tbaa !5
  %conv94 = sitofp i32 %127 to float
  %div95 = fdiv float %conv93, %conv94
  %cmp96 = fcmp olt float %div95, 0.000000e+00
  br i1 %cmp96, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.end.83
  %128 = load i32, i32* %w, align 4, !tbaa !5
  %129 = load i32, i32* %left_width, align 4, !tbaa !5
  %sub98 = sub nsw i32 %128, %129
  %conv99 = sitofp i32 %sub98 to float
  %130 = load i32, i32* %tile_width, align 4, !tbaa !5
  %conv100 = sitofp i32 %130 to float
  %div101 = fdiv float %conv99, %conv100
  %131 = load i32, i32* %w, align 4, !tbaa !5
  %132 = load i32, i32* %left_width, align 4, !tbaa !5
  %sub102 = sub nsw i32 %131, %132
  %conv103 = sitofp i32 %sub102 to float
  %133 = load i32, i32* %tile_width, align 4, !tbaa !5
  %conv104 = sitofp i32 %133 to float
  %div105 = fdiv float %conv103, %conv104
  %conv106 = fptosi float %div105 to i32
  %conv107 = sitofp i32 %conv106 to float
  %cmp108 = fcmp une float %div101, %conv107
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end.83
  %134 = phi i1 [ false, %if.end.83 ], [ %cmp108, %land.rhs ]
  %land.ext = zext i1 %134 to i32
  %sub110 = sub nsw i32 %conv91, %land.ext
  store i32 %sub110, i32* %num_full_tiles, align 4, !tbaa !5
  %135 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ptile.addr, align 8, !tbaa !1
  %ttrans111 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %135, i32 0, i32 9
  %136 = load %struct.gx_pattern_trans_s*, %struct.gx_pattern_trans_s** %ttrans111, align 8, !tbaa !152
  %rect112 = getelementptr inbounds %struct.gx_pattern_trans_s, %struct.gx_pattern_trans_s* %136, i32 0, i32 4
  %q113 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect112, i32 0, i32 1
  %x114 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q113, i32 0, i32 0
  %137 = load i32, i32* %x114, align 4, !tbaa !166
  %138 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ptile.addr, align 8, !tbaa !1
  %ttrans115 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %138, i32 0, i32 9
  %139 = load %struct.gx_pattern_trans_s*, %struct.gx_pattern_trans_s** %ttrans115, align 8, !tbaa !152
  %rect116 = getelementptr inbounds %struct.gx_pattern_trans_s, %struct.gx_pattern_trans_s* %139, i32 0, i32 4
  %p117 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect116, i32 0, i32 0
  %x118 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p117, i32 0, i32 0
  %140 = load i32, i32* %x118, align 4, !tbaa !163
  %sub119 = sub nsw i32 %137, %140
  store i32 %sub119, i32* %mid_copy_width, align 4, !tbaa !5
  %141 = load i32, i32* %w, align 4, !tbaa !5
  %142 = load i32, i32* %num_full_tiles, align 4, !tbaa !5
  %143 = load i32, i32* %tile_width, align 4, !tbaa !5
  %mul120 = mul nsw i32 %142, %143
  %sub121 = sub nsw i32 %141, %mul120
  %144 = load i32, i32* %left_width, align 4, !tbaa !5
  %sub122 = sub nsw i32 %sub121, %144
  store i32 %sub122, i32* %right_tile_width, align 4, !tbaa !5
  %145 = load i32, i32* %right_tile_width, align 4, !tbaa !5
  %146 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ptile.addr, align 8, !tbaa !1
  %ttrans123 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %146, i32 0, i32 9
  %147 = load %struct.gx_pattern_trans_s*, %struct.gx_pattern_trans_s** %ttrans123, align 8, !tbaa !152
  %rect124 = getelementptr inbounds %struct.gx_pattern_trans_s, %struct.gx_pattern_trans_s* %147, i32 0, i32 4
  %p125 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect124, i32 0, i32 0
  %x126 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p125, i32 0, i32 0
  %148 = load i32, i32* %x126, align 4, !tbaa !163
  %sub127 = sub nsw i32 %145, %148
  store i32 %sub127, i32* %right_copy_width, align 4, !tbaa !5
  %149 = load i32, i32* %right_copy_width, align 4, !tbaa !5
  %150 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ptile.addr, align 8, !tbaa !1
  %ttrans128 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %150, i32 0, i32 9
  %151 = load %struct.gx_pattern_trans_s*, %struct.gx_pattern_trans_s** %ttrans128, align 8, !tbaa !152
  %rect129 = getelementptr inbounds %struct.gx_pattern_trans_s, %struct.gx_pattern_trans_s* %151, i32 0, i32 4
  %q130 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect129, i32 0, i32 1
  %x131 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q130, i32 0, i32 0
  %152 = load i32, i32* %x131, align 4, !tbaa !166
  %cmp132 = icmp sgt i32 %149, %152
  br i1 %cmp132, label %if.then.134, label %if.end.139

if.then.134:                                      ; preds = %land.end
  %153 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ptile.addr, align 8, !tbaa !1
  %ttrans135 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %153, i32 0, i32 9
  %154 = load %struct.gx_pattern_trans_s*, %struct.gx_pattern_trans_s** %ttrans135, align 8, !tbaa !152
  %rect136 = getelementptr inbounds %struct.gx_pattern_trans_s, %struct.gx_pattern_trans_s* %154, i32 0, i32 4
  %q137 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect136, i32 0, i32 1
  %x138 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q137, i32 0, i32 0
  %155 = load i32, i32* %x138, align 4, !tbaa !166
  store i32 %155, i32* %right_copy_width, align 4, !tbaa !5
  br label %if.end.139

if.end.139:                                       ; preds = %if.then.134, %land.end
  %156 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ptile.addr, align 8, !tbaa !1
  %ttrans140 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %156, i32 0, i32 9
  %157 = load %struct.gx_pattern_trans_s*, %struct.gx_pattern_trans_s** %ttrans140, align 8, !tbaa !152
  %rect141 = getelementptr inbounds %struct.gx_pattern_trans_s, %struct.gx_pattern_trans_s* %157, i32 0, i32 4
  %p142 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect141, i32 0, i32 0
  %x143 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p142, i32 0, i32 0
  %158 = load i32, i32* %x143, align 4, !tbaa !163
  %159 = load i32, i32* %right_copy_width, align 4, !tbaa !5
  %sub144 = sub nsw i32 %159, %158
  store i32 %sub144, i32* %right_copy_width, align 4, !tbaa !5
  %160 = load i32, i32* %right_copy_width, align 4, !tbaa !5
  %cmp145 = icmp slt i32 %160, 0
  br i1 %cmp145, label %if.then.147, label %if.end.148

if.then.147:                                      ; preds = %if.end.139
  store i32 0, i32* %right_copy_width, align 4, !tbaa !5
  br label %if.end.148

if.end.148:                                       ; preds = %if.then.147, %if.end.139
  store i32 0, i32* %kk, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc.210, %if.end.148
  %161 = load i32, i32* %kk, align 4, !tbaa !5
  %162 = load %struct.gx_pattern_trans_s*, %struct.gx_pattern_trans_s** %fill_trans_buffer.addr, align 8, !tbaa !1
  %n_chan = getelementptr inbounds %struct.gx_pattern_trans_s, %struct.gx_pattern_trans_s* %162, i32 0, i32 7
  %163 = load i32, i32* %n_chan, align 4, !tbaa !167
  %cmp149 = icmp slt i32 %161, %163
  br i1 %cmp149, label %for.body, label %for.end.212

for.body:                                         ; preds = %for.cond
  %164 = load i8*, i8** %buff_out, align 8, !tbaa !1
  %165 = load i32, i32* %kk, align 4, !tbaa !5
  %166 = load %struct.gx_pattern_trans_s*, %struct.gx_pattern_trans_s** %fill_trans_buffer.addr, align 8, !tbaa !1
  %planestride = getelementptr inbounds %struct.gx_pattern_trans_s, %struct.gx_pattern_trans_s* %166, i32 0, i32 6
  %167 = load i32, i32* %planestride, align 4, !tbaa !168
  %mul151 = mul nsw i32 %165, %167
  %idx.ext152 = sext i32 %mul151 to i64
  %add.ptr153 = getelementptr inbounds i8, i8* %164, i64 %idx.ext152
  store i8* %add.ptr153, i8** %ptr_out, align 8, !tbaa !1
  %168 = load i8*, i8** %buff_in, align 8, !tbaa !1
  %169 = load i32, i32* %kk, align 4, !tbaa !5
  %170 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ptile.addr, align 8, !tbaa !1
  %ttrans154 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %170, i32 0, i32 9
  %171 = load %struct.gx_pattern_trans_s*, %struct.gx_pattern_trans_s** %ttrans154, align 8, !tbaa !152
  %planestride155 = getelementptr inbounds %struct.gx_pattern_trans_s, %struct.gx_pattern_trans_s* %171, i32 0, i32 6
  %172 = load i32, i32* %planestride155, align 4, !tbaa !168
  %mul156 = mul nsw i32 %169, %172
  %idx.ext157 = sext i32 %mul156 to i64
  %add.ptr158 = getelementptr inbounds i8, i8* %168, i64 %idx.ext157
  store i8* %add.ptr158, i8** %ptr_in, align 8, !tbaa !1
  store i32 0, i32* %jj, align 4, !tbaa !5
  br label %for.cond.159

for.cond.159:                                     ; preds = %for.inc.204, %for.body
  %173 = load i32, i32* %jj, align 4, !tbaa !5
  %174 = load i32, i32* %h, align 4, !tbaa !5
  %cmp160 = icmp slt i32 %173, %174
  br i1 %cmp160, label %for.body.162, label %for.end.209

for.body.162:                                     ; preds = %for.cond.159
  %175 = load i32, i32* %jj, align 4, !tbaa !5
  %176 = load i32, i32* %dy, align 4, !tbaa !5
  %add163 = add nsw i32 %175, %176
  %177 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ptile.addr, align 8, !tbaa !1
  %ttrans164 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %177, i32 0, i32 9
  %178 = load %struct.gx_pattern_trans_s*, %struct.gx_pattern_trans_s** %ttrans164, align 8, !tbaa !152
  %height165 = getelementptr inbounds %struct.gx_pattern_trans_s, %struct.gx_pattern_trans_s* %178, i32 0, i32 10
  %179 = load i32, i32* %height165, align 4, !tbaa !156
  %rem166 = srem i32 %add163, %179
  store i32 %rem166, i32* %in_row_offset, align 4, !tbaa !5
  %180 = load i32, i32* %in_row_offset, align 4, !tbaa !5
  %181 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ptile.addr, align 8, !tbaa !1
  %ttrans167 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %181, i32 0, i32 9
  %182 = load %struct.gx_pattern_trans_s*, %struct.gx_pattern_trans_s** %ttrans167, align 8, !tbaa !152
  %rect168 = getelementptr inbounds %struct.gx_pattern_trans_s, %struct.gx_pattern_trans_s* %182, i32 0, i32 4
  %q169 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect168, i32 0, i32 1
  %y170 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q169, i32 0, i32 1
  %183 = load i32, i32* %y170, align 4, !tbaa !169
  %cmp171 = icmp sge i32 %180, %183
  br i1 %cmp171, label %if.then.173, label %if.end.174

if.then.173:                                      ; preds = %for.body.162
  br label %for.inc.204

if.end.174:                                       ; preds = %for.body.162
  %184 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ptile.addr, align 8, !tbaa !1
  %ttrans175 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %184, i32 0, i32 9
  %185 = load %struct.gx_pattern_trans_s*, %struct.gx_pattern_trans_s** %ttrans175, align 8, !tbaa !152
  %rect176 = getelementptr inbounds %struct.gx_pattern_trans_s, %struct.gx_pattern_trans_s* %185, i32 0, i32 4
  %p177 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect176, i32 0, i32 0
  %y178 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p177, i32 0, i32 1
  %186 = load i32, i32* %y178, align 4, !tbaa !162
  %187 = load i32, i32* %in_row_offset, align 4, !tbaa !5
  %sub179 = sub nsw i32 %187, %186
  store i32 %sub179, i32* %in_row_offset, align 4, !tbaa !5
  %188 = load i32, i32* %in_row_offset, align 4, !tbaa !5
  %cmp180 = icmp slt i32 %188, 0
  br i1 %cmp180, label %if.then.182, label %if.end.183

if.then.182:                                      ; preds = %if.end.174
  br label %for.inc.204

if.end.183:                                       ; preds = %if.end.174
  %189 = load i8*, i8** %ptr_in, align 8, !tbaa !1
  %190 = load i32, i32* %in_row_offset, align 4, !tbaa !5
  %191 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ptile.addr, align 8, !tbaa !1
  %ttrans184 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %191, i32 0, i32 9
  %192 = load %struct.gx_pattern_trans_s*, %struct.gx_pattern_trans_s** %ttrans184, align 8, !tbaa !152
  %rowstride185 = getelementptr inbounds %struct.gx_pattern_trans_s, %struct.gx_pattern_trans_s* %192, i32 0, i32 5
  %193 = load i32, i32* %rowstride185, align 4, !tbaa !165
  %mul186 = mul nsw i32 %190, %193
  %idx.ext187 = sext i32 %mul186 to i64
  %add.ptr188 = getelementptr inbounds i8, i8* %189, i64 %idx.ext187
  store i8* %add.ptr188, i8** %row_ptr, align 8, !tbaa !1
  %194 = load i8*, i8** %ptr_out, align 8, !tbaa !1
  store i8* %194, i8** %ptr_out_temp, align 8, !tbaa !1
  %195 = load i8*, i8** %ptr_out_temp, align 8, !tbaa !1
  %196 = load i8*, i8** %row_ptr, align 8, !tbaa !1
  %197 = load i32, i32* %left_copy_offset, align 4, !tbaa !5
  %idx.ext189 = sext i32 %197 to i64
  %add.ptr190 = getelementptr inbounds i8, i8* %196, i64 %idx.ext189
  %198 = load i32, i32* %left_copy_width, align 4, !tbaa !5
  %conv191 = sext i32 %198 to i64
  %call = call i8* @memcpy(i8* %195, i8* %add.ptr190, i64 %conv191) #7
  %199 = load i32, i32* %left_width, align 4, !tbaa !5
  %200 = load i8*, i8** %ptr_out_temp, align 8, !tbaa !1
  %idx.ext192 = sext i32 %199 to i64
  %add.ptr193 = getelementptr inbounds i8, i8* %200, i64 %idx.ext192
  store i8* %add.ptr193, i8** %ptr_out_temp, align 8, !tbaa !1
  store i32 0, i32* %ii, align 4, !tbaa !5
  br label %for.cond.194

for.cond.194:                                     ; preds = %for.inc, %if.end.183
  %201 = load i32, i32* %ii, align 4, !tbaa !5
  %202 = load i32, i32* %num_full_tiles, align 4, !tbaa !5
  %cmp195 = icmp slt i32 %201, %202
  br i1 %cmp195, label %for.body.197, label %for.end

for.body.197:                                     ; preds = %for.cond.194
  %203 = load i8*, i8** %ptr_out_temp, align 8, !tbaa !1
  %204 = load i8*, i8** %row_ptr, align 8, !tbaa !1
  %205 = load i32, i32* %mid_copy_width, align 4, !tbaa !5
  %conv198 = sext i32 %205 to i64
  %call199 = call i8* @memcpy(i8* %203, i8* %204, i64 %conv198) #7
  %206 = load i32, i32* %tile_width, align 4, !tbaa !5
  %207 = load i8*, i8** %ptr_out_temp, align 8, !tbaa !1
  %idx.ext200 = sext i32 %206 to i64
  %add.ptr201 = getelementptr inbounds i8, i8* %207, i64 %idx.ext200
  store i8* %add.ptr201, i8** %ptr_out_temp, align 8, !tbaa !1
  br label %for.inc

for.inc:                                          ; preds = %for.body.197
  %208 = load i32, i32* %ii, align 4, !tbaa !5
  %inc = add nsw i32 %208, 1
  store i32 %inc, i32* %ii, align 4, !tbaa !5
  br label %for.cond.194

for.end:                                          ; preds = %for.cond.194
  %209 = load i8*, i8** %ptr_out_temp, align 8, !tbaa !1
  %210 = load i8*, i8** %row_ptr, align 8, !tbaa !1
  %211 = load i32, i32* %right_copy_width, align 4, !tbaa !5
  %conv202 = sext i32 %211 to i64
  %call203 = call i8* @memcpy(i8* %209, i8* %210, i64 %conv202) #7
  br label %for.inc.204

for.inc.204:                                      ; preds = %for.end, %if.then.182, %if.then.173
  %212 = load i32, i32* %jj, align 4, !tbaa !5
  %inc205 = add nsw i32 %212, 1
  store i32 %inc205, i32* %jj, align 4, !tbaa !5
  %213 = load %struct.gx_pattern_trans_s*, %struct.gx_pattern_trans_s** %fill_trans_buffer.addr, align 8, !tbaa !1
  %rowstride206 = getelementptr inbounds %struct.gx_pattern_trans_s, %struct.gx_pattern_trans_s* %213, i32 0, i32 5
  %214 = load i32, i32* %rowstride206, align 4, !tbaa !165
  %215 = load i8*, i8** %ptr_out, align 8, !tbaa !1
  %idx.ext207 = sext i32 %214 to i64
  %add.ptr208 = getelementptr inbounds i8, i8* %215, i64 %idx.ext207
  store i8* %add.ptr208, i8** %ptr_out, align 8, !tbaa !1
  br label %for.cond.159

for.end.209:                                      ; preds = %for.cond.159
  br label %for.inc.210

for.inc.210:                                      ; preds = %for.end.209
  %216 = load i32, i32* %kk, align 4, !tbaa !5
  %inc211 = add nsw i32 %216, 1
  store i32 %inc211, i32* %kk, align 4, !tbaa !5
  br label %for.cond

for.end.212:                                      ; preds = %for.cond
  %217 = load %struct.gx_pattern_trans_s*, %struct.gx_pattern_trans_s** %fill_trans_buffer.addr, align 8, !tbaa !1
  %has_shape = getelementptr inbounds %struct.gx_pattern_trans_s, %struct.gx_pattern_trans_s* %217, i32 0, i32 8
  %218 = load i32, i32* %has_shape, align 4, !tbaa !170
  %tobool = icmp ne i32 %218, 0
  br i1 %tobool, label %if.then.213, label %if.end.231

if.then.213:                                      ; preds = %for.end.212
  %219 = load i8*, i8** %buff_out, align 8, !tbaa !1
  %220 = load %struct.gx_pattern_trans_s*, %struct.gx_pattern_trans_s** %fill_trans_buffer.addr, align 8, !tbaa !1
  %n_chan214 = getelementptr inbounds %struct.gx_pattern_trans_s, %struct.gx_pattern_trans_s* %220, i32 0, i32 7
  %221 = load i32, i32* %n_chan214, align 4, !tbaa !167
  %222 = load %struct.gx_pattern_trans_s*, %struct.gx_pattern_trans_s** %fill_trans_buffer.addr, align 8, !tbaa !1
  %planestride215 = getelementptr inbounds %struct.gx_pattern_trans_s, %struct.gx_pattern_trans_s* %222, i32 0, i32 6
  %223 = load i32, i32* %planestride215, align 4, !tbaa !168
  %mul216 = mul nsw i32 %221, %223
  %idx.ext217 = sext i32 %mul216 to i64
  %add.ptr218 = getelementptr inbounds i8, i8* %219, i64 %idx.ext217
  store i8* %add.ptr218, i8** %ptr_out, align 8, !tbaa !1
  store i32 0, i32* %jj, align 4, !tbaa !5
  br label %for.cond.219

for.cond.219:                                     ; preds = %for.inc.225, %if.then.213
  %224 = load i32, i32* %jj, align 4, !tbaa !5
  %225 = load i32, i32* %h, align 4, !tbaa !5
  %cmp220 = icmp slt i32 %224, %225
  br i1 %cmp220, label %for.body.222, label %for.end.230

for.body.222:                                     ; preds = %for.cond.219
  %226 = load i8*, i8** %ptr_out, align 8, !tbaa !1
  %227 = load i32, i32* %w, align 4, !tbaa !5
  %conv223 = sext i32 %227 to i64
  %call224 = call i8* @memset(i8* %226, i32 255, i64 %conv223) #7
  br label %for.inc.225

for.inc.225:                                      ; preds = %for.body.222
  %228 = load i32, i32* %jj, align 4, !tbaa !5
  %inc226 = add nsw i32 %228, 1
  store i32 %inc226, i32* %jj, align 4, !tbaa !5
  %229 = load %struct.gx_pattern_trans_s*, %struct.gx_pattern_trans_s** %fill_trans_buffer.addr, align 8, !tbaa !1
  %rowstride227 = getelementptr inbounds %struct.gx_pattern_trans_s, %struct.gx_pattern_trans_s* %229, i32 0, i32 5
  %230 = load i32, i32* %rowstride227, align 4, !tbaa !165
  %231 = load i8*, i8** %ptr_out, align 8, !tbaa !1
  %idx.ext228 = sext i32 %230 to i64
  %add.ptr229 = getelementptr inbounds i8, i8* %231, i64 %idx.ext228
  store i8* %add.ptr229, i8** %ptr_out, align 8, !tbaa !1
  br label %for.cond.219

for.end.230:                                      ; preds = %for.cond.219
  br label %if.end.231

if.end.231:                                       ; preds = %for.end.230, %for.end.212
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.231, %if.then.44
  %232 = bitcast i32* %tile_height to i8*
  call void @llvm.lifetime.end(i64 4, i8* %232) #1
  %233 = bitcast i32* %tile_width to i8*
  call void @llvm.lifetime.end(i64 4, i8* %233) #1
  %234 = bitcast i32* %right_copy_width to i8*
  call void @llvm.lifetime.end(i64 4, i8* %234) #1
  %235 = bitcast i32* %mid_copy_width to i8*
  call void @llvm.lifetime.end(i64 4, i8* %235) #1
  %236 = bitcast i32* %left_copy_start to i8*
  call void @llvm.lifetime.end(i64 4, i8* %236) #1
  %237 = bitcast i32* %left_copy_offset to i8*
  call void @llvm.lifetime.end(i64 4, i8* %237) #1
  %238 = bitcast i32* %left_copy_width to i8*
  call void @llvm.lifetime.end(i64 4, i8* %238) #1
  %239 = bitcast i32* %left_copy_rem_end to i8*
  call void @llvm.lifetime.end(i64 4, i8* %239) #1
  %240 = bitcast i32* %right_tile_width to i8*
  call void @llvm.lifetime.end(i64 4, i8* %240) #1
  %241 = bitcast i32* %num_full_tiles to i8*
  call void @llvm.lifetime.end(i64 4, i8* %241) #1
  %242 = bitcast i32* %left_width to i8*
  call void @llvm.lifetime.end(i64 4, i8* %242) #1
  %243 = bitcast i32* %left_rem_end to i8*
  call void @llvm.lifetime.end(i64 4, i8* %243) #1
  %244 = bitcast i32* %dy to i8*
  call void @llvm.lifetime.end(i64 4, i8* %244) #1
  %245 = bitcast i32* %dx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %245) #1
  %246 = bitcast i32* %in_row_offset to i8*
  call void @llvm.lifetime.end(i64 4, i8* %246) #1
  %247 = bitcast i8** %row_ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %247) #1
  %248 = bitcast i8** %ptr_out_temp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %248) #1
  %249 = bitcast i8** %buff_in to i8*
  call void @llvm.lifetime.end(i64 8, i8* %249) #1
  %250 = bitcast i8** %buff_out to i8*
  call void @llvm.lifetime.end(i64 8, i8* %250) #1
  %251 = bitcast i8** %ptr_in to i8*
  call void @llvm.lifetime.end(i64 8, i8* %251) #1
  %252 = bitcast i8** %ptr_out to i8*
  call void @llvm.lifetime.end(i64 8, i8* %252) #1
  %253 = bitcast i32* %buff_out_x_offset to i8*
  call void @llvm.lifetime.end(i64 4, i8* %253) #1
  %254 = bitcast i32* %buff_out_y_offset to i8*
  call void @llvm.lifetime.end(i64 4, i8* %254) #1
  %255 = bitcast i32* %w to i8*
  call void @llvm.lifetime.end(i64 4, i8* %255) #1
  %256 = bitcast i32* %h to i8*
  call void @llvm.lifetime.end(i64 4, i8* %256) #1
  %257 = bitcast i32* %ii to i8*
  call void @llvm.lifetime.end(i64 4, i8* %257) #1
  %258 = bitcast i32* %jj to i8*
  call void @llvm.lifetime.end(i64 4, i8* %258) #1
  %259 = bitcast i32* %kk to i8*
  call void @llvm.lifetime.end(i64 4, i8* %259) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind
declare i8* @memcpy(i8*, i8*, i64) #3

; Function Attrs: nounwind
declare i8* @memset(i8*, i32, i64) #3

; Function Attrs: nounwind uwtable
define void @tile_rect_trans_blend(i32 %xmin, i32 %ymin, i32 %xmax, i32 %ymax, i32 %px, i32 %py, %struct.gx_color_tile_s* %ptile, %struct.gx_pattern_trans_s* %fill_trans_buffer) #0 {
entry:
  %xmin.addr = alloca i32, align 4
  %ymin.addr = alloca i32, align 4
  %xmax.addr = alloca i32, align 4
  %ymax.addr = alloca i32, align 4
  %px.addr = alloca i32, align 4
  %py.addr = alloca i32, align 4
  %ptile.addr = alloca %struct.gx_color_tile_s*, align 8
  %fill_trans_buffer.addr = alloca %struct.gx_pattern_trans_s*, align 8
  %kk = alloca i32, align 4
  %jj = alloca i32, align 4
  %ii = alloca i32, align 4
  %h = alloca i32, align 4
  %w = alloca i32, align 4
  %buff_out_y_offset = alloca i32, align 4
  %buff_out_x_offset = alloca i32, align 4
  %buff_out = alloca i8*, align 8
  %buff_in = alloca i8*, align 8
  %buff_ptr = alloca i8*, align 8
  %row_ptr_in = alloca i8*, align 8
  %row_ptr_out = alloca i8*, align 8
  %tile_ptr = alloca i8*, align 8
  %in_row_offset = alloca i32, align 4
  %dx = alloca i32, align 4
  %dy = alloca i32, align 4
  %src = alloca [67 x i8], align 16
  %dst = alloca [67 x i8], align 16
  %tile_width = alloca i32, align 4
  %tile_height = alloca i32, align 4
  %num_chan = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %x_in_offset = alloca i32, align 4
  store i32 %xmin, i32* %xmin.addr, align 4, !tbaa !5
  store i32 %ymin, i32* %ymin.addr, align 4, !tbaa !5
  store i32 %xmax, i32* %xmax.addr, align 4, !tbaa !5
  store i32 %ymax, i32* %ymax.addr, align 4, !tbaa !5
  store i32 %px, i32* %px.addr, align 4, !tbaa !5
  store i32 %py, i32* %py.addr, align 4, !tbaa !5
  store %struct.gx_color_tile_s* %ptile, %struct.gx_color_tile_s** %ptile.addr, align 8, !tbaa !1
  store %struct.gx_pattern_trans_s* %fill_trans_buffer, %struct.gx_pattern_trans_s** %fill_trans_buffer.addr, align 8, !tbaa !1
  %0 = bitcast i32* %kk to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %jj to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %ii to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %h to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i32* %w to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast i32* %buff_out_y_offset to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast i32* %buff_out_x_offset to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast i8** %buff_out to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = bitcast i8** %buff_in to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  %9 = bitcast i8** %buff_ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = bitcast i8** %row_ptr_in to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  %11 = bitcast i8** %row_ptr_out to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  %12 = bitcast i8** %tile_ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  %13 = bitcast i32* %in_row_offset to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  %14 = bitcast i32* %dx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  %15 = bitcast i32* %dy to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  %16 = bitcast [67 x i8]* %src to i8*
  call void @llvm.lifetime.start(i64 67, i8* %16) #1
  %17 = bitcast [67 x i8]* %dst to i8*
  call void @llvm.lifetime.start(i64 67, i8* %17) #1
  %18 = bitcast i32* %tile_width to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #1
  %19 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ptile.addr, align 8, !tbaa !1
  %ttrans = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %19, i32 0, i32 9
  %20 = load %struct.gx_pattern_trans_s*, %struct.gx_pattern_trans_s** %ttrans, align 8, !tbaa !152
  %width = getelementptr inbounds %struct.gx_pattern_trans_s, %struct.gx_pattern_trans_s* %20, i32 0, i32 9
  %21 = load i32, i32* %width, align 4, !tbaa !153
  store i32 %21, i32* %tile_width, align 4, !tbaa !5
  %22 = bitcast i32* %tile_height to i8*
  call void @llvm.lifetime.start(i64 4, i8* %22) #1
  %23 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ptile.addr, align 8, !tbaa !1
  %ttrans1 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %23, i32 0, i32 9
  %24 = load %struct.gx_pattern_trans_s*, %struct.gx_pattern_trans_s** %ttrans1, align 8, !tbaa !152
  %height = getelementptr inbounds %struct.gx_pattern_trans_s, %struct.gx_pattern_trans_s* %24, i32 0, i32 10
  %25 = load i32, i32* %height, align 4, !tbaa !156
  store i32 %25, i32* %tile_height, align 4, !tbaa !5
  %26 = bitcast i32* %num_chan to i8*
  call void @llvm.lifetime.start(i64 4, i8* %26) #1
  %27 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ptile.addr, align 8, !tbaa !1
  %ttrans2 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %27, i32 0, i32 9
  %28 = load %struct.gx_pattern_trans_s*, %struct.gx_pattern_trans_s** %ttrans2, align 8, !tbaa !152
  %n_chan = getelementptr inbounds %struct.gx_pattern_trans_s, %struct.gx_pattern_trans_s* %28, i32 0, i32 7
  %29 = load i32, i32* %n_chan, align 4, !tbaa !167
  store i32 %29, i32* %num_chan, align 4, !tbaa !5
  %30 = load %struct.gx_pattern_trans_s*, %struct.gx_pattern_trans_s** %fill_trans_buffer.addr, align 8, !tbaa !1
  %dirty = getelementptr inbounds %struct.gx_pattern_trans_s, %struct.gx_pattern_trans_s* %30, i32 0, i32 14
  %31 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %dirty, align 8, !tbaa !157
  %p = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %31, i32 0, i32 0
  %x = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p, i32 0, i32 0
  %32 = load i32, i32* %x, align 4, !tbaa !158
  %33 = load i32, i32* %xmin.addr, align 4, !tbaa !5
  %cmp = icmp sgt i32 %32, %33
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %34 = load i32, i32* %xmin.addr, align 4, !tbaa !5
  %35 = load %struct.gx_pattern_trans_s*, %struct.gx_pattern_trans_s** %fill_trans_buffer.addr, align 8, !tbaa !1
  %dirty3 = getelementptr inbounds %struct.gx_pattern_trans_s, %struct.gx_pattern_trans_s* %35, i32 0, i32 14
  %36 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %dirty3, align 8, !tbaa !157
  %p4 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %36, i32 0, i32 0
  %x5 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p4, i32 0, i32 0
  store i32 %34, i32* %x5, align 4, !tbaa !158
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %37 = load %struct.gx_pattern_trans_s*, %struct.gx_pattern_trans_s** %fill_trans_buffer.addr, align 8, !tbaa !1
  %dirty6 = getelementptr inbounds %struct.gx_pattern_trans_s, %struct.gx_pattern_trans_s* %37, i32 0, i32 14
  %38 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %dirty6, align 8, !tbaa !157
  %p7 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %38, i32 0, i32 0
  %y = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p7, i32 0, i32 1
  %39 = load i32, i32* %y, align 4, !tbaa !159
  %40 = load i32, i32* %ymin.addr, align 4, !tbaa !5
  %cmp8 = icmp sgt i32 %39, %40
  br i1 %cmp8, label %if.then.9, label %if.end.13

if.then.9:                                        ; preds = %if.end
  %41 = load i32, i32* %ymin.addr, align 4, !tbaa !5
  %42 = load %struct.gx_pattern_trans_s*, %struct.gx_pattern_trans_s** %fill_trans_buffer.addr, align 8, !tbaa !1
  %dirty10 = getelementptr inbounds %struct.gx_pattern_trans_s, %struct.gx_pattern_trans_s* %42, i32 0, i32 14
  %43 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %dirty10, align 8, !tbaa !157
  %p11 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %43, i32 0, i32 0
  %y12 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p11, i32 0, i32 1
  store i32 %41, i32* %y12, align 4, !tbaa !159
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.9, %if.end
  %44 = load %struct.gx_pattern_trans_s*, %struct.gx_pattern_trans_s** %fill_trans_buffer.addr, align 8, !tbaa !1
  %dirty14 = getelementptr inbounds %struct.gx_pattern_trans_s, %struct.gx_pattern_trans_s* %44, i32 0, i32 14
  %45 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %dirty14, align 8, !tbaa !157
  %q = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %45, i32 0, i32 1
  %x15 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q, i32 0, i32 0
  %46 = load i32, i32* %x15, align 4, !tbaa !160
  %47 = load i32, i32* %xmax.addr, align 4, !tbaa !5
  %cmp16 = icmp slt i32 %46, %47
  br i1 %cmp16, label %if.then.17, label %if.end.21

if.then.17:                                       ; preds = %if.end.13
  %48 = load i32, i32* %xmax.addr, align 4, !tbaa !5
  %49 = load %struct.gx_pattern_trans_s*, %struct.gx_pattern_trans_s** %fill_trans_buffer.addr, align 8, !tbaa !1
  %dirty18 = getelementptr inbounds %struct.gx_pattern_trans_s, %struct.gx_pattern_trans_s* %49, i32 0, i32 14
  %50 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %dirty18, align 8, !tbaa !157
  %q19 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %50, i32 0, i32 1
  %x20 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q19, i32 0, i32 0
  store i32 %48, i32* %x20, align 4, !tbaa !160
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.17, %if.end.13
  %51 = load %struct.gx_pattern_trans_s*, %struct.gx_pattern_trans_s** %fill_trans_buffer.addr, align 8, !tbaa !1
  %dirty22 = getelementptr inbounds %struct.gx_pattern_trans_s, %struct.gx_pattern_trans_s* %51, i32 0, i32 14
  %52 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %dirty22, align 8, !tbaa !157
  %q23 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %52, i32 0, i32 1
  %y24 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q23, i32 0, i32 1
  %53 = load i32, i32* %y24, align 4, !tbaa !161
  %54 = load i32, i32* %ymax.addr, align 4, !tbaa !5
  %cmp25 = icmp slt i32 %53, %54
  br i1 %cmp25, label %if.then.26, label %if.end.30

if.then.26:                                       ; preds = %if.end.21
  %55 = load i32, i32* %ymax.addr, align 4, !tbaa !5
  %56 = load %struct.gx_pattern_trans_s*, %struct.gx_pattern_trans_s** %fill_trans_buffer.addr, align 8, !tbaa !1
  %dirty27 = getelementptr inbounds %struct.gx_pattern_trans_s, %struct.gx_pattern_trans_s* %56, i32 0, i32 14
  %57 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %dirty27, align 8, !tbaa !157
  %q28 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %57, i32 0, i32 1
  %y29 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q28, i32 0, i32 1
  store i32 %55, i32* %y29, align 4, !tbaa !161
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.26, %if.end.21
  %58 = load i32, i32* %ymin.addr, align 4, !tbaa !5
  %59 = load %struct.gx_pattern_trans_s*, %struct.gx_pattern_trans_s** %fill_trans_buffer.addr, align 8, !tbaa !1
  %rect = getelementptr inbounds %struct.gx_pattern_trans_s, %struct.gx_pattern_trans_s* %59, i32 0, i32 4
  %p31 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect, i32 0, i32 0
  %y32 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p31, i32 0, i32 1
  %60 = load i32, i32* %y32, align 4, !tbaa !162
  %sub = sub nsw i32 %58, %60
  store i32 %sub, i32* %buff_out_y_offset, align 4, !tbaa !5
  %61 = load i32, i32* %xmin.addr, align 4, !tbaa !5
  %62 = load %struct.gx_pattern_trans_s*, %struct.gx_pattern_trans_s** %fill_trans_buffer.addr, align 8, !tbaa !1
  %rect33 = getelementptr inbounds %struct.gx_pattern_trans_s, %struct.gx_pattern_trans_s* %62, i32 0, i32 4
  %p34 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect33, i32 0, i32 0
  %x35 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p34, i32 0, i32 0
  %63 = load i32, i32* %x35, align 4, !tbaa !163
  %sub36 = sub nsw i32 %61, %63
  store i32 %sub36, i32* %buff_out_x_offset, align 4, !tbaa !5
  %64 = load %struct.gx_pattern_trans_s*, %struct.gx_pattern_trans_s** %fill_trans_buffer.addr, align 8, !tbaa !1
  %transbytes = getelementptr inbounds %struct.gx_pattern_trans_s, %struct.gx_pattern_trans_s* %64, i32 0, i32 1
  %65 = load i8*, i8** %transbytes, align 8, !tbaa !164
  %66 = load i32, i32* %buff_out_y_offset, align 4, !tbaa !5
  %67 = load %struct.gx_pattern_trans_s*, %struct.gx_pattern_trans_s** %fill_trans_buffer.addr, align 8, !tbaa !1
  %rowstride = getelementptr inbounds %struct.gx_pattern_trans_s, %struct.gx_pattern_trans_s* %67, i32 0, i32 5
  %68 = load i32, i32* %rowstride, align 4, !tbaa !165
  %mul = mul nsw i32 %66, %68
  %idx.ext = sext i32 %mul to i64
  %add.ptr = getelementptr inbounds i8, i8* %65, i64 %idx.ext
  %69 = load i32, i32* %buff_out_x_offset, align 4, !tbaa !5
  %idx.ext37 = sext i32 %69 to i64
  %add.ptr38 = getelementptr inbounds i8, i8* %add.ptr, i64 %idx.ext37
  store i8* %add.ptr38, i8** %buff_out, align 8, !tbaa !1
  %70 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ptile.addr, align 8, !tbaa !1
  %ttrans39 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %70, i32 0, i32 9
  %71 = load %struct.gx_pattern_trans_s*, %struct.gx_pattern_trans_s** %ttrans39, align 8, !tbaa !152
  %transbytes40 = getelementptr inbounds %struct.gx_pattern_trans_s, %struct.gx_pattern_trans_s* %71, i32 0, i32 1
  %72 = load i8*, i8** %transbytes40, align 8, !tbaa !164
  store i8* %72, i8** %buff_in, align 8, !tbaa !1
  %73 = load i32, i32* %ymax.addr, align 4, !tbaa !5
  %74 = load i32, i32* %ymin.addr, align 4, !tbaa !5
  %sub41 = sub nsw i32 %73, %74
  store i32 %sub41, i32* %h, align 4, !tbaa !5
  %75 = load i32, i32* %xmax.addr, align 4, !tbaa !5
  %76 = load i32, i32* %xmin.addr, align 4, !tbaa !5
  %sub42 = sub nsw i32 %75, %76
  store i32 %sub42, i32* %w, align 4, !tbaa !5
  %77 = load i32, i32* %h, align 4, !tbaa !5
  %cmp43 = icmp sle i32 %77, 0
  br i1 %cmp43, label %if.then.45, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.30
  %78 = load i32, i32* %w, align 4, !tbaa !5
  %cmp44 = icmp sle i32 %78, 0
  br i1 %cmp44, label %if.then.45, label %if.end.46

if.then.45:                                       ; preds = %lor.lhs.false, %if.end.30
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.157

if.end.46:                                        ; preds = %lor.lhs.false
  %79 = load i32, i32* %xmin.addr, align 4, !tbaa !5
  %80 = load i32, i32* %px.addr, align 4, !tbaa !5
  %add = add nsw i32 %79, %80
  %81 = load i32, i32* %tile_width, align 4, !tbaa !5
  %rem = srem i32 %add, %81
  store i32 %rem, i32* %dx, align 4, !tbaa !5
  %82 = load i32, i32* %ymin.addr, align 4, !tbaa !5
  %83 = load i32, i32* %py.addr, align 4, !tbaa !5
  %add47 = add nsw i32 %82, %83
  %84 = load i32, i32* %tile_height, align 4, !tbaa !5
  %rem48 = srem i32 %add47, %84
  store i32 %rem48, i32* %dy, align 4, !tbaa !5
  store i32 0, i32* %jj, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc.138, %if.end.46
  %85 = load i32, i32* %jj, align 4, !tbaa !5
  %86 = load i32, i32* %h, align 4, !tbaa !5
  %cmp49 = icmp slt i32 %85, %86
  br i1 %cmp49, label %for.body, label %for.end.140

for.body:                                         ; preds = %for.cond
  %87 = load i32, i32* %jj, align 4, !tbaa !5
  %88 = load i32, i32* %dy, align 4, !tbaa !5
  %add50 = add nsw i32 %87, %88
  %89 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ptile.addr, align 8, !tbaa !1
  %ttrans51 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %89, i32 0, i32 9
  %90 = load %struct.gx_pattern_trans_s*, %struct.gx_pattern_trans_s** %ttrans51, align 8, !tbaa !152
  %height52 = getelementptr inbounds %struct.gx_pattern_trans_s, %struct.gx_pattern_trans_s* %90, i32 0, i32 10
  %91 = load i32, i32* %height52, align 4, !tbaa !156
  %rem53 = srem i32 %add50, %91
  store i32 %rem53, i32* %in_row_offset, align 4, !tbaa !5
  %92 = load i32, i32* %in_row_offset, align 4, !tbaa !5
  %93 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ptile.addr, align 8, !tbaa !1
  %ttrans54 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %93, i32 0, i32 9
  %94 = load %struct.gx_pattern_trans_s*, %struct.gx_pattern_trans_s** %ttrans54, align 8, !tbaa !152
  %rect55 = getelementptr inbounds %struct.gx_pattern_trans_s, %struct.gx_pattern_trans_s* %94, i32 0, i32 4
  %q56 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect55, i32 0, i32 1
  %y57 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q56, i32 0, i32 1
  %95 = load i32, i32* %y57, align 4, !tbaa !169
  %cmp58 = icmp sge i32 %92, %95
  br i1 %cmp58, label %if.then.59, label %if.end.60

if.then.59:                                       ; preds = %for.body
  br label %for.inc.138

if.end.60:                                        ; preds = %for.body
  %96 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ptile.addr, align 8, !tbaa !1
  %ttrans61 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %96, i32 0, i32 9
  %97 = load %struct.gx_pattern_trans_s*, %struct.gx_pattern_trans_s** %ttrans61, align 8, !tbaa !152
  %rect62 = getelementptr inbounds %struct.gx_pattern_trans_s, %struct.gx_pattern_trans_s* %97, i32 0, i32 4
  %p63 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect62, i32 0, i32 0
  %y64 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p63, i32 0, i32 1
  %98 = load i32, i32* %y64, align 4, !tbaa !162
  %99 = load i32, i32* %in_row_offset, align 4, !tbaa !5
  %sub65 = sub nsw i32 %99, %98
  store i32 %sub65, i32* %in_row_offset, align 4, !tbaa !5
  %100 = load i32, i32* %in_row_offset, align 4, !tbaa !5
  %cmp66 = icmp slt i32 %100, 0
  br i1 %cmp66, label %if.then.67, label %if.end.68

if.then.67:                                       ; preds = %if.end.60
  br label %for.inc.138

if.end.68:                                        ; preds = %if.end.60
  %101 = load i8*, i8** %buff_in, align 8, !tbaa !1
  %102 = load i32, i32* %in_row_offset, align 4, !tbaa !5
  %103 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ptile.addr, align 8, !tbaa !1
  %ttrans69 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %103, i32 0, i32 9
  %104 = load %struct.gx_pattern_trans_s*, %struct.gx_pattern_trans_s** %ttrans69, align 8, !tbaa !152
  %rowstride70 = getelementptr inbounds %struct.gx_pattern_trans_s, %struct.gx_pattern_trans_s* %104, i32 0, i32 5
  %105 = load i32, i32* %rowstride70, align 4, !tbaa !165
  %mul71 = mul nsw i32 %102, %105
  %idx.ext72 = sext i32 %mul71 to i64
  %add.ptr73 = getelementptr inbounds i8, i8* %101, i64 %idx.ext72
  store i8* %add.ptr73, i8** %row_ptr_in, align 8, !tbaa !1
  %106 = load i8*, i8** %buff_out, align 8, !tbaa !1
  %107 = load i32, i32* %jj, align 4, !tbaa !5
  %108 = load %struct.gx_pattern_trans_s*, %struct.gx_pattern_trans_s** %fill_trans_buffer.addr, align 8, !tbaa !1
  %rowstride74 = getelementptr inbounds %struct.gx_pattern_trans_s, %struct.gx_pattern_trans_s* %108, i32 0, i32 5
  %109 = load i32, i32* %rowstride74, align 4, !tbaa !165
  %mul75 = mul nsw i32 %107, %109
  %idx.ext76 = sext i32 %mul75 to i64
  %add.ptr77 = getelementptr inbounds i8, i8* %106, i64 %idx.ext76
  store i8* %add.ptr77, i8** %row_ptr_out, align 8, !tbaa !1
  store i32 0, i32* %ii, align 4, !tbaa !5
  br label %for.cond.78

for.cond.78:                                      ; preds = %for.inc.135, %if.end.68
  %110 = load i32, i32* %ii, align 4, !tbaa !5
  %111 = load i32, i32* %w, align 4, !tbaa !5
  %cmp79 = icmp slt i32 %110, %111
  br i1 %cmp79, label %for.body.80, label %for.end.137

for.body.80:                                      ; preds = %for.cond.78
  %112 = bitcast i32* %x_in_offset to i8*
  call void @llvm.lifetime.start(i64 4, i8* %112) #1
  %113 = load i32, i32* %dx, align 4, !tbaa !5
  %114 = load i32, i32* %ii, align 4, !tbaa !5
  %add81 = add nsw i32 %113, %114
  %115 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ptile.addr, align 8, !tbaa !1
  %ttrans82 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %115, i32 0, i32 9
  %116 = load %struct.gx_pattern_trans_s*, %struct.gx_pattern_trans_s** %ttrans82, align 8, !tbaa !152
  %width83 = getelementptr inbounds %struct.gx_pattern_trans_s, %struct.gx_pattern_trans_s* %116, i32 0, i32 9
  %117 = load i32, i32* %width83, align 4, !tbaa !153
  %rem84 = srem i32 %add81, %117
  store i32 %rem84, i32* %x_in_offset, align 4, !tbaa !5
  %118 = load i32, i32* %x_in_offset, align 4, !tbaa !5
  %119 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ptile.addr, align 8, !tbaa !1
  %ttrans85 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %119, i32 0, i32 9
  %120 = load %struct.gx_pattern_trans_s*, %struct.gx_pattern_trans_s** %ttrans85, align 8, !tbaa !152
  %rect86 = getelementptr inbounds %struct.gx_pattern_trans_s, %struct.gx_pattern_trans_s* %120, i32 0, i32 4
  %q87 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect86, i32 0, i32 1
  %x88 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q87, i32 0, i32 0
  %121 = load i32, i32* %x88, align 4, !tbaa !166
  %cmp89 = icmp sge i32 %118, %121
  br i1 %cmp89, label %if.then.90, label %if.end.91

if.then.90:                                       ; preds = %for.body.80
  store i32 7, i32* %cleanup.dest.slot
  br label %cleanup

if.end.91:                                        ; preds = %for.body.80
  %122 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ptile.addr, align 8, !tbaa !1
  %ttrans92 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %122, i32 0, i32 9
  %123 = load %struct.gx_pattern_trans_s*, %struct.gx_pattern_trans_s** %ttrans92, align 8, !tbaa !152
  %rect93 = getelementptr inbounds %struct.gx_pattern_trans_s, %struct.gx_pattern_trans_s* %123, i32 0, i32 4
  %p94 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect93, i32 0, i32 0
  %x95 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p94, i32 0, i32 0
  %124 = load i32, i32* %x95, align 4, !tbaa !163
  %125 = load i32, i32* %x_in_offset, align 4, !tbaa !5
  %sub96 = sub nsw i32 %125, %124
  store i32 %sub96, i32* %x_in_offset, align 4, !tbaa !5
  %126 = load i32, i32* %x_in_offset, align 4, !tbaa !5
  %cmp97 = icmp slt i32 %126, 0
  br i1 %cmp97, label %if.then.98, label %if.end.99

if.then.98:                                       ; preds = %if.end.91
  store i32 7, i32* %cleanup.dest.slot
  br label %cleanup

if.end.99:                                        ; preds = %if.end.91
  %127 = load i8*, i8** %row_ptr_in, align 8, !tbaa !1
  %128 = load i32, i32* %x_in_offset, align 4, !tbaa !5
  %idx.ext100 = sext i32 %128 to i64
  %add.ptr101 = getelementptr inbounds i8, i8* %127, i64 %idx.ext100
  store i8* %add.ptr101, i8** %tile_ptr, align 8, !tbaa !1
  %129 = load i8*, i8** %row_ptr_out, align 8, !tbaa !1
  %130 = load i32, i32* %ii, align 4, !tbaa !5
  %idx.ext102 = sext i32 %130 to i64
  %add.ptr103 = getelementptr inbounds i8, i8* %129, i64 %idx.ext102
  store i8* %add.ptr103, i8** %buff_ptr, align 8, !tbaa !1
  store i32 0, i32* %kk, align 4, !tbaa !5
  br label %for.cond.104

for.cond.104:                                     ; preds = %for.inc, %if.end.99
  %131 = load i32, i32* %kk, align 4, !tbaa !5
  %132 = load i32, i32* %num_chan, align 4, !tbaa !5
  %cmp105 = icmp slt i32 %131, %132
  br i1 %cmp105, label %for.body.106, label %for.end

for.body.106:                                     ; preds = %for.cond.104
  %133 = load i8*, i8** %buff_ptr, align 8, !tbaa !1
  %134 = load i32, i32* %kk, align 4, !tbaa !5
  %135 = load %struct.gx_pattern_trans_s*, %struct.gx_pattern_trans_s** %fill_trans_buffer.addr, align 8, !tbaa !1
  %planestride = getelementptr inbounds %struct.gx_pattern_trans_s, %struct.gx_pattern_trans_s* %135, i32 0, i32 6
  %136 = load i32, i32* %planestride, align 4, !tbaa !168
  %mul107 = mul nsw i32 %134, %136
  %idx.ext108 = sext i32 %mul107 to i64
  %add.ptr109 = getelementptr inbounds i8, i8* %133, i64 %idx.ext108
  %137 = load i8, i8* %add.ptr109, align 1, !tbaa !150
  %138 = load i32, i32* %kk, align 4, !tbaa !5
  %idxprom = sext i32 %138 to i64
  %arrayidx = getelementptr inbounds [67 x i8], [67 x i8]* %dst, i32 0, i64 %idxprom
  store i8 %137, i8* %arrayidx, align 1, !tbaa !150
  %139 = load i8*, i8** %tile_ptr, align 8, !tbaa !1
  %140 = load i32, i32* %kk, align 4, !tbaa !5
  %141 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ptile.addr, align 8, !tbaa !1
  %ttrans110 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %141, i32 0, i32 9
  %142 = load %struct.gx_pattern_trans_s*, %struct.gx_pattern_trans_s** %ttrans110, align 8, !tbaa !152
  %planestride111 = getelementptr inbounds %struct.gx_pattern_trans_s, %struct.gx_pattern_trans_s* %142, i32 0, i32 6
  %143 = load i32, i32* %planestride111, align 4, !tbaa !168
  %mul112 = mul nsw i32 %140, %143
  %idx.ext113 = sext i32 %mul112 to i64
  %add.ptr114 = getelementptr inbounds i8, i8* %139, i64 %idx.ext113
  %144 = load i8, i8* %add.ptr114, align 1, !tbaa !150
  %145 = load i32, i32* %kk, align 4, !tbaa !5
  %idxprom115 = sext i32 %145 to i64
  %arrayidx116 = getelementptr inbounds [67 x i8], [67 x i8]* %src, i32 0, i64 %idxprom115
  store i8 %144, i8* %arrayidx116, align 1, !tbaa !150
  br label %for.inc

for.inc:                                          ; preds = %for.body.106
  %146 = load i32, i32* %kk, align 4, !tbaa !5
  %inc = add nsw i32 %146, 1
  store i32 %inc, i32* %kk, align 4, !tbaa !5
  br label %for.cond.104

for.end:                                          ; preds = %for.cond.104
  %arraydecay = getelementptr inbounds [67 x i8], [67 x i8]* %dst, i32 0, i32 0
  %arraydecay117 = getelementptr inbounds [67 x i8], [67 x i8]* %src, i32 0, i32 0
  %147 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ptile.addr, align 8, !tbaa !1
  %ttrans118 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %147, i32 0, i32 9
  %148 = load %struct.gx_pattern_trans_s*, %struct.gx_pattern_trans_s** %ttrans118, align 8, !tbaa !152
  %n_chan119 = getelementptr inbounds %struct.gx_pattern_trans_s, %struct.gx_pattern_trans_s* %148, i32 0, i32 7
  %149 = load i32, i32* %n_chan119, align 4, !tbaa !167
  %sub120 = sub nsw i32 %149, 1
  %150 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ptile.addr, align 8, !tbaa !1
  %ttrans121 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %150, i32 0, i32 9
  %151 = load %struct.gx_pattern_trans_s*, %struct.gx_pattern_trans_s** %ttrans121, align 8, !tbaa !152
  %blending_mode = getelementptr inbounds %struct.gx_pattern_trans_s, %struct.gx_pattern_trans_s* %151, i32 0, i32 13
  %152 = load i32, i32* %blending_mode, align 4, !tbaa !171
  %153 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ptile.addr, align 8, !tbaa !1
  %ttrans122 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %153, i32 0, i32 9
  %154 = load %struct.gx_pattern_trans_s*, %struct.gx_pattern_trans_s** %ttrans122, align 8, !tbaa !152
  %blending_procs = getelementptr inbounds %struct.gx_pattern_trans_s, %struct.gx_pattern_trans_s* %154, i32 0, i32 11
  %155 = load %struct.pdf14_nonseparable_blending_procs_s*, %struct.pdf14_nonseparable_blending_procs_s** %blending_procs, align 8, !tbaa !172
  call void @art_pdf_composite_pixel_alpha_8(i8* %arraydecay, i8* %arraydecay117, i32 %sub120, i32 %152, %struct.pdf14_nonseparable_blending_procs_s* %155) #5
  store i32 0, i32* %kk, align 4, !tbaa !5
  br label %for.cond.123

for.cond.123:                                     ; preds = %for.inc.132, %for.end
  %156 = load i32, i32* %kk, align 4, !tbaa !5
  %157 = load i32, i32* %num_chan, align 4, !tbaa !5
  %cmp124 = icmp slt i32 %156, %157
  br i1 %cmp124, label %for.body.125, label %for.end.134

for.body.125:                                     ; preds = %for.cond.123
  %158 = load i32, i32* %kk, align 4, !tbaa !5
  %idxprom126 = sext i32 %158 to i64
  %arrayidx127 = getelementptr inbounds [67 x i8], [67 x i8]* %dst, i32 0, i64 %idxprom126
  %159 = load i8, i8* %arrayidx127, align 1, !tbaa !150
  %160 = load i8*, i8** %buff_ptr, align 8, !tbaa !1
  %161 = load i32, i32* %kk, align 4, !tbaa !5
  %162 = load %struct.gx_pattern_trans_s*, %struct.gx_pattern_trans_s** %fill_trans_buffer.addr, align 8, !tbaa !1
  %planestride128 = getelementptr inbounds %struct.gx_pattern_trans_s, %struct.gx_pattern_trans_s* %162, i32 0, i32 6
  %163 = load i32, i32* %planestride128, align 4, !tbaa !168
  %mul129 = mul nsw i32 %161, %163
  %idx.ext130 = sext i32 %mul129 to i64
  %add.ptr131 = getelementptr inbounds i8, i8* %160, i64 %idx.ext130
  store i8 %159, i8* %add.ptr131, align 1, !tbaa !150
  br label %for.inc.132

for.inc.132:                                      ; preds = %for.body.125
  %164 = load i32, i32* %kk, align 4, !tbaa !5
  %inc133 = add nsw i32 %164, 1
  store i32 %inc133, i32* %kk, align 4, !tbaa !5
  br label %for.cond.123

for.end.134:                                      ; preds = %for.cond.123
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end.134, %if.then.98, %if.then.90
  %165 = bitcast i32* %x_in_offset to i8*
  call void @llvm.lifetime.end(i64 4, i8* %165) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 7, label %for.inc.135
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc.135

for.inc.135:                                      ; preds = %cleanup.cont, %cleanup
  %166 = load i32, i32* %ii, align 4, !tbaa !5
  %inc136 = add nsw i32 %166, 1
  store i32 %inc136, i32* %ii, align 4, !tbaa !5
  br label %for.cond.78

for.end.137:                                      ; preds = %for.cond.78
  br label %for.inc.138

for.inc.138:                                      ; preds = %for.end.137, %if.then.67, %if.then.59
  %167 = load i32, i32* %jj, align 4, !tbaa !5
  %inc139 = add nsw i32 %167, 1
  store i32 %inc139, i32* %jj, align 4, !tbaa !5
  br label %for.cond

for.end.140:                                      ; preds = %for.cond
  %168 = load %struct.gx_pattern_trans_s*, %struct.gx_pattern_trans_s** %fill_trans_buffer.addr, align 8, !tbaa !1
  %has_shape = getelementptr inbounds %struct.gx_pattern_trans_s, %struct.gx_pattern_trans_s* %168, i32 0, i32 8
  %169 = load i32, i32* %has_shape, align 4, !tbaa !170
  %tobool = icmp ne i32 %169, 0
  br i1 %tobool, label %if.then.141, label %if.end.156

if.then.141:                                      ; preds = %for.end.140
  %170 = load i8*, i8** %buff_out, align 8, !tbaa !1
  %171 = load %struct.gx_pattern_trans_s*, %struct.gx_pattern_trans_s** %fill_trans_buffer.addr, align 8, !tbaa !1
  %n_chan142 = getelementptr inbounds %struct.gx_pattern_trans_s, %struct.gx_pattern_trans_s* %171, i32 0, i32 7
  %172 = load i32, i32* %n_chan142, align 4, !tbaa !167
  %173 = load %struct.gx_pattern_trans_s*, %struct.gx_pattern_trans_s** %fill_trans_buffer.addr, align 8, !tbaa !1
  %planestride143 = getelementptr inbounds %struct.gx_pattern_trans_s, %struct.gx_pattern_trans_s* %173, i32 0, i32 6
  %174 = load i32, i32* %planestride143, align 4, !tbaa !168
  %mul144 = mul nsw i32 %172, %174
  %idx.ext145 = sext i32 %mul144 to i64
  %add.ptr146 = getelementptr inbounds i8, i8* %170, i64 %idx.ext145
  store i8* %add.ptr146, i8** %buff_ptr, align 8, !tbaa !1
  store i32 0, i32* %jj, align 4, !tbaa !5
  br label %for.cond.147

for.cond.147:                                     ; preds = %for.inc.153, %if.then.141
  %175 = load i32, i32* %jj, align 4, !tbaa !5
  %176 = load i32, i32* %h, align 4, !tbaa !5
  %cmp148 = icmp slt i32 %175, %176
  br i1 %cmp148, label %for.body.149, label %for.end.155

for.body.149:                                     ; preds = %for.cond.147
  %177 = load i8*, i8** %buff_ptr, align 8, !tbaa !1
  %178 = load i32, i32* %w, align 4, !tbaa !5
  %conv = sext i32 %178 to i64
  %call = call i8* @memset(i8* %177, i32 255, i64 %conv) #7
  %179 = load %struct.gx_pattern_trans_s*, %struct.gx_pattern_trans_s** %fill_trans_buffer.addr, align 8, !tbaa !1
  %rowstride150 = getelementptr inbounds %struct.gx_pattern_trans_s, %struct.gx_pattern_trans_s* %179, i32 0, i32 5
  %180 = load i32, i32* %rowstride150, align 4, !tbaa !165
  %181 = load i8*, i8** %buff_ptr, align 8, !tbaa !1
  %idx.ext151 = sext i32 %180 to i64
  %add.ptr152 = getelementptr inbounds i8, i8* %181, i64 %idx.ext151
  store i8* %add.ptr152, i8** %buff_ptr, align 8, !tbaa !1
  br label %for.inc.153

for.inc.153:                                      ; preds = %for.body.149
  %182 = load i32, i32* %jj, align 4, !tbaa !5
  %inc154 = add nsw i32 %182, 1
  store i32 %inc154, i32* %jj, align 4, !tbaa !5
  br label %for.cond.147

for.end.155:                                      ; preds = %for.cond.147
  br label %if.end.156

if.end.156:                                       ; preds = %for.end.155, %for.end.140
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.157

cleanup.157:                                      ; preds = %if.end.156, %if.then.45
  %183 = bitcast i32* %num_chan to i8*
  call void @llvm.lifetime.end(i64 4, i8* %183) #1
  %184 = bitcast i32* %tile_height to i8*
  call void @llvm.lifetime.end(i64 4, i8* %184) #1
  %185 = bitcast i32* %tile_width to i8*
  call void @llvm.lifetime.end(i64 4, i8* %185) #1
  %186 = bitcast [67 x i8]* %dst to i8*
  call void @llvm.lifetime.end(i64 67, i8* %186) #1
  %187 = bitcast [67 x i8]* %src to i8*
  call void @llvm.lifetime.end(i64 67, i8* %187) #1
  %188 = bitcast i32* %dy to i8*
  call void @llvm.lifetime.end(i64 4, i8* %188) #1
  %189 = bitcast i32* %dx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %189) #1
  %190 = bitcast i32* %in_row_offset to i8*
  call void @llvm.lifetime.end(i64 4, i8* %190) #1
  %191 = bitcast i8** %tile_ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %191) #1
  %192 = bitcast i8** %row_ptr_out to i8*
  call void @llvm.lifetime.end(i64 8, i8* %192) #1
  %193 = bitcast i8** %row_ptr_in to i8*
  call void @llvm.lifetime.end(i64 8, i8* %193) #1
  %194 = bitcast i8** %buff_ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %194) #1
  %195 = bitcast i8** %buff_in to i8*
  call void @llvm.lifetime.end(i64 8, i8* %195) #1
  %196 = bitcast i8** %buff_out to i8*
  call void @llvm.lifetime.end(i64 8, i8* %196) #1
  %197 = bitcast i32* %buff_out_x_offset to i8*
  call void @llvm.lifetime.end(i64 4, i8* %197) #1
  %198 = bitcast i32* %buff_out_y_offset to i8*
  call void @llvm.lifetime.end(i64 4, i8* %198) #1
  %199 = bitcast i32* %w to i8*
  call void @llvm.lifetime.end(i64 4, i8* %199) #1
  %200 = bitcast i32* %h to i8*
  call void @llvm.lifetime.end(i64 4, i8* %200) #1
  %201 = bitcast i32* %ii to i8*
  call void @llvm.lifetime.end(i64 4, i8* %201) #1
  %202 = bitcast i32* %jj to i8*
  call void @llvm.lifetime.end(i64 4, i8* %202) #1
  %203 = bitcast i32* %kk to i8*
  call void @llvm.lifetime.end(i64 4, i8* %203) #1
  %cleanup.dest.178 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.178, label %unreachable [
    i32 0, label %cleanup.cont.179
    i32 1, label %cleanup.cont.179
  ]

cleanup.cont.179:                                 ; preds = %cleanup.157, %cleanup.157
  ret void

unreachable:                                      ; preds = %cleanup.157, %cleanup
  unreachable
}

declare void @art_pdf_composite_pixel_alpha_8(i8*, i8*, i32, i32, %struct.pdf14_nonseparable_blending_procs_s*) #2

; Function Attrs: nounwind uwtable
define i32 @gx_dc_pat_trans_fill_rectangle(%struct.gx_device_color_s* %pdevc, i32 %x, i32 %y, i32 %w, i32 %h, %struct.gx_device_s* %dev, i32 %lop, %struct.gx_rop_source_s* %source) #0 {
entry:
  %retval = alloca i32, align 4
  %pdevc.addr = alloca %struct.gx_device_color_s*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %lop.addr = alloca i32, align 4
  %source.addr = alloca %struct.gx_rop_source_s*, align 8
  %ptile = alloca %struct.gx_color_tile_s*, align 8
  %code = alloca i32, align 4
  %phase = alloca %struct.gs_int_point_s, align 4
  %rop_source = alloca %struct.gx_rop_source_s*, align 8
  %no_source = alloca %struct.gx_rop_source_s, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_color_s* %pdevc, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  store i32 %x, i32* %x.addr, align 4, !tbaa !5
  store i32 %y, i32* %y.addr, align 4, !tbaa !5
  store i32 %w, i32* %w.addr, align 4, !tbaa !5
  store i32 %h, i32* %h.addr, align 4, !tbaa !5
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i32 %lop, i32* %lop.addr, align 4, !tbaa !5
  store %struct.gx_rop_source_s* %source, %struct.gx_rop_source_s** %source.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_color_tile_s** %ptile to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %colors = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %1, i32 0, i32 1
  %pattern = bitcast %union._c* %colors to %struct._pat*
  %p_tile = getelementptr inbounds %struct._pat, %struct._pat* %pattern, i32 0, i32 0
  %2 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %p_tile, align 8, !tbaa !7
  store %struct.gx_color_tile_s* %2, %struct.gx_color_tile_s** %ptile, align 8, !tbaa !1
  %3 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast %struct.gs_int_point_s* %phase to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = bitcast %struct.gx_rop_source_s** %rop_source to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = load %struct.gx_rop_source_s*, %struct.gx_rop_source_s** %source.addr, align 8, !tbaa !1
  store %struct.gx_rop_source_s* %6, %struct.gx_rop_source_s** %rop_source, align 8, !tbaa !1
  %7 = bitcast %struct.gx_rop_source_s* %no_source to i8*
  call void @llvm.lifetime.start(i64 48, i8* %7) #1
  %8 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ptile, align 8, !tbaa !1
  %cmp = icmp eq %struct.gx_color_tile_s* %8, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = load %struct.gx_rop_source_s*, %struct.gx_rop_source_s** %rop_source, align 8, !tbaa !1
  %cmp1 = icmp eq %struct.gx_rop_source_s* %9, null
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  %10 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  call void @gx_set_rop_no_source(%struct.gx_rop_source_s** %rop_source, %struct.gx_rop_source_s* %no_source, %struct.gx_device_s* %10) #5
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.2, %if.end
  %11 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %phase4 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %11, i32 0, i32 2
  %x5 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %phase4, i32 0, i32 0
  %12 = load i32, i32* %x5, align 4, !tbaa !173
  %x6 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %phase, i32 0, i32 0
  store i32 %12, i32* %x6, align 4, !tbaa !174
  %13 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %phase7 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %13, i32 0, i32 2
  %y8 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %phase7, i32 0, i32 1
  %14 = load i32, i32* %y8, align 4, !tbaa !175
  %y9 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %phase, i32 0, i32 1
  store i32 %14, i32* %y9, align 4, !tbaa !176
  %15 = load i32, i32* %x.addr, align 4, !tbaa !5
  %16 = load i32, i32* %y.addr, align 4, !tbaa !5
  %17 = load i32, i32* %x.addr, align 4, !tbaa !5
  %18 = load i32, i32* %w.addr, align 4, !tbaa !5
  %add = add nsw i32 %17, %18
  %19 = load i32, i32* %y.addr, align 4, !tbaa !5
  %20 = load i32, i32* %h.addr, align 4, !tbaa !5
  %add10 = add nsw i32 %19, %20
  %21 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ptile, align 8, !tbaa !1
  %22 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ptile, align 8, !tbaa !1
  %ttrans = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %22, i32 0, i32 9
  %23 = load %struct.gx_pattern_trans_s*, %struct.gx_pattern_trans_s** %ttrans, align 8, !tbaa !152
  %fill_trans_buffer = getelementptr inbounds %struct.gx_pattern_trans_s, %struct.gx_pattern_trans_s* %23, i32 0, i32 3
  %24 = load %struct.gx_pattern_trans_s*, %struct.gx_pattern_trans_s** %fill_trans_buffer, align 8, !tbaa !177
  %25 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %26 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %27 = bitcast %struct.gs_int_point_s* %phase to i64*
  %28 = load i64, i64* %27, align 4
  %call = call i32 @gx_trans_pattern_fill_rect(i32 %15, i32 %16, i32 %add, i32 %add10, %struct.gx_color_tile_s* %21, %struct.gx_pattern_trans_s* %24, i64 %28, %struct.gx_device_s* %25, %struct.gx_device_color_s* %26) #5
  store i32 %call, i32* %code, align 4, !tbaa !5
  %29 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %29, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.3, %if.then
  %30 = bitcast %struct.gx_rop_source_s* %no_source to i8*
  call void @llvm.lifetime.end(i64 48, i8* %30) #1
  %31 = bitcast %struct.gx_rop_source_s** %rop_source to i8*
  call void @llvm.lifetime.end(i64 8, i8* %31) #1
  %32 = bitcast %struct.gs_int_point_s* %phase to i8*
  call void @llvm.lifetime.end(i64 8, i8* %32) #1
  %33 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %33) #1
  %34 = bitcast %struct.gx_color_tile_s** %ptile to i8*
  call void @llvm.lifetime.end(i64 8, i8* %34) #1
  %35 = load i32, i32* %retval
  ret i32 %35
}

; Function Attrs: nounwind uwtable
define i32 @gx_trans_pattern_fill_rect(i32 %xmin, i32 %ymin, i32 %xmax, i32 %ymax, %struct.gx_color_tile_s* %ptile, %struct.gx_pattern_trans_s* %fill_trans_buffer, i64 %phase.coerce, %struct.gx_device_s* %dev, %struct.gx_device_color_s* %pdevc) #0 {
entry:
  %retval = alloca i32, align 4
  %phase = alloca %struct.gs_int_point_s, align 8
  %xmin.addr = alloca i32, align 4
  %ymin.addr = alloca i32, align 4
  %xmax.addr = alloca i32, align 4
  %ymax.addr = alloca i32, align 4
  %ptile.addr = alloca %struct.gx_color_tile_s*, align 8
  %fill_trans_buffer.addr = alloca %struct.gx_pattern_trans_s*, align 8
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %pdevc.addr = alloca %struct.gx_device_color_s*, align 8
  %state_trans = alloca %struct.tile_fill_trans_state_s, align 8
  %state_clist_trans = alloca %struct.tile_fill_state_s, align 8
  %code = alloca i32, align 4
  %w = alloca i32, align 4
  %h = alloca i32, align 4
  %xmax_new = alloca i32, align 4
  %ymax_new = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %px = alloca i32, align 4
  %py = alloca i32, align 4
  %cdev134 = alloca %union.gx_device_clist_s*, align 8
  %crdev = alloca %struct.gx_device_clist_reader_s*, align 8
  %tbits = alloca %struct.gx_strip_bitmap_s, align 8
  %0 = bitcast %struct.gs_int_point_s* %phase to i64*
  store i64 %phase.coerce, i64* %0, align 8
  store i32 %xmin, i32* %xmin.addr, align 4, !tbaa !5
  store i32 %ymin, i32* %ymin.addr, align 4, !tbaa !5
  store i32 %xmax, i32* %xmax.addr, align 4, !tbaa !5
  store i32 %ymax, i32* %ymax.addr, align 4, !tbaa !5
  store %struct.gx_color_tile_s* %ptile, %struct.gx_color_tile_s** %ptile.addr, align 8, !tbaa !1
  store %struct.gx_pattern_trans_s* %fill_trans_buffer, %struct.gx_pattern_trans_s** %fill_trans_buffer.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gx_device_color_s* %pdevc, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %1 = bitcast %struct.tile_fill_trans_state_s* %state_trans to i8*
  call void @llvm.lifetime.start(i64 48, i8* %1) #1
  %2 = bitcast %struct.tile_fill_state_s* %state_clist_trans to i8*
  call void @llvm.lifetime.start(i64 104, i8* %2) #1
  %3 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  store i32 0, i32* %code, align 4, !tbaa !5
  %4 = bitcast i32* %w to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load i32, i32* %xmax.addr, align 4, !tbaa !5
  %6 = load i32, i32* %xmin.addr, align 4, !tbaa !5
  %sub = sub nsw i32 %5, %6
  store i32 %sub, i32* %w, align 4, !tbaa !5
  %7 = bitcast i32* %h to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = load i32, i32* %ymax.addr, align 4, !tbaa !5
  %9 = load i32, i32* %ymin.addr, align 4, !tbaa !5
  %sub1 = sub nsw i32 %8, %9
  store i32 %sub1, i32* %h, align 4, !tbaa !5
  %10 = bitcast i32* %xmax_new to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = bitcast i32* %ymax_new to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  %12 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ptile.addr, align 8, !tbaa !1
  %cmp = icmp eq %struct.gx_color_tile_s* %12, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.end
  br label %do.body.2

do.body.2:                                        ; preds = %do.body
  %13 = load i32, i32* %xmin.addr, align 4, !tbaa !5
  %14 = load i32, i32* %ymin.addr, align 4, !tbaa !5
  %or = or i32 %13, %14
  %cmp3 = icmp slt i32 %or, 0
  br i1 %cmp3, label %if.then.4, label %if.end.12

if.then.4:                                        ; preds = %do.body.2
  %15 = load i32, i32* %xmin.addr, align 4, !tbaa !5
  %cmp5 = icmp slt i32 %15, 0
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.then.4
  %16 = load i32, i32* %xmin.addr, align 4, !tbaa !5
  %17 = load i32, i32* %w, align 4, !tbaa !5
  %add = add nsw i32 %17, %16
  store i32 %add, i32* %w, align 4, !tbaa !5
  store i32 0, i32* %xmin.addr, align 4, !tbaa !5
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.6, %if.then.4
  %18 = load i32, i32* %ymin.addr, align 4, !tbaa !5
  %cmp8 = icmp slt i32 %18, 0
  br i1 %cmp8, label %if.then.9, label %if.end.11

if.then.9:                                        ; preds = %if.end.7
  %19 = load i32, i32* %ymin.addr, align 4, !tbaa !5
  %20 = load i32, i32* %h, align 4, !tbaa !5
  %add10 = add nsw i32 %20, %19
  store i32 %add10, i32* %h, align 4, !tbaa !5
  store i32 0, i32* %ymin.addr, align 4, !tbaa !5
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.9, %if.end.7
  br label %if.end.12

if.end.12:                                        ; preds = %if.end.11, %do.body.2
  br label %do.cond

do.cond:                                          ; preds = %if.end.12
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.body.13

do.body.13:                                       ; preds = %do.end
  %21 = load i32, i32* %w, align 4, !tbaa !5
  %22 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %22, i32 0, i32 13
  %23 = load i32, i32* %width, align 4, !tbaa !178
  %24 = load i32, i32* %xmin.addr, align 4, !tbaa !5
  %sub14 = sub nsw i32 %23, %24
  %cmp15 = icmp sgt i32 %21, %sub14
  br i1 %cmp15, label %if.then.16, label %if.end.19

if.then.16:                                       ; preds = %do.body.13
  %25 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %width17 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %25, i32 0, i32 13
  %26 = load i32, i32* %width17, align 4, !tbaa !178
  %27 = load i32, i32* %xmin.addr, align 4, !tbaa !5
  %sub18 = sub nsw i32 %26, %27
  store i32 %sub18, i32* %w, align 4, !tbaa !5
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.16, %do.body.13
  br label %do.cond.20

do.cond.20:                                       ; preds = %if.end.19
  br label %do.end.21

do.end.21:                                        ; preds = %do.cond.20
  br label %do.body.22

do.body.22:                                       ; preds = %do.end.21
  %28 = load i32, i32* %h, align 4, !tbaa !5
  %29 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %29, i32 0, i32 14
  %30 = load i32, i32* %height, align 4, !tbaa !179
  %31 = load i32, i32* %ymin.addr, align 4, !tbaa !5
  %sub23 = sub nsw i32 %30, %31
  %cmp24 = icmp sgt i32 %28, %sub23
  br i1 %cmp24, label %if.then.25, label %if.end.28

if.then.25:                                       ; preds = %do.body.22
  %32 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %height26 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %32, i32 0, i32 14
  %33 = load i32, i32* %height26, align 4, !tbaa !179
  %34 = load i32, i32* %ymin.addr, align 4, !tbaa !5
  %sub27 = sub nsw i32 %33, %34
  store i32 %sub27, i32* %h, align 4, !tbaa !5
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.25, %do.body.22
  br label %do.cond.29

do.cond.29:                                       ; preds = %if.end.28
  br label %do.end.30

do.end.30:                                        ; preds = %do.cond.29
  br label %do.cond.31

do.cond.31:                                       ; preds = %do.end.30
  br label %do.end.32

do.end.32:                                        ; preds = %do.cond.31
  %35 = load i32, i32* %w, align 4, !tbaa !5
  %cmp33 = icmp slt i32 %35, 0
  br i1 %cmp33, label %if.then.35, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end.32
  %36 = load i32, i32* %h, align 4, !tbaa !5
  %cmp34 = icmp slt i32 %36, 0
  br i1 %cmp34, label %if.then.35, label %if.end.36

if.then.35:                                       ; preds = %lor.lhs.false, %do.end.32
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.36:                                        ; preds = %lor.lhs.false
  %37 = load i32, i32* %w, align 4, !tbaa !5
  %38 = load i32, i32* %xmin.addr, align 4, !tbaa !5
  %add37 = add nsw i32 %37, %38
  store i32 %add37, i32* %xmax.addr, align 4, !tbaa !5
  %39 = load i32, i32* %h, align 4, !tbaa !5
  %40 = load i32, i32* %ymin.addr, align 4, !tbaa !5
  %add38 = add nsw i32 %39, %40
  store i32 %add38, i32* %ymax.addr, align 4, !tbaa !5
  %x = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %phase, i32 0, i32 0
  %41 = load i32, i32* %x, align 4, !tbaa !174
  %phase39 = getelementptr inbounds %struct.tile_fill_trans_state_s, %struct.tile_fill_trans_state_s* %state_trans, i32 0, i32 6
  %x40 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %phase39, i32 0, i32 0
  store i32 %41, i32* %x40, align 4, !tbaa !180
  %y = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %phase, i32 0, i32 1
  %42 = load i32, i32* %y, align 4, !tbaa !176
  %phase41 = getelementptr inbounds %struct.tile_fill_trans_state_s, %struct.tile_fill_trans_state_s* %state_trans, i32 0, i32 6
  %y42 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %phase41, i32 0, i32 1
  store i32 %42, i32* %y42, align 4, !tbaa !182
  %43 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ptile.addr, align 8, !tbaa !1
  %is_simple = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %43, i32 0, i32 11
  %44 = load i8, i8* %is_simple, align 1, !tbaa !9
  %conv = zext i8 %44 to i32
  %tobool = icmp ne i32 %conv, 0
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end.36
  %45 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ptile.addr, align 8, !tbaa !1
  %cdev = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %45, i32 0, i32 10
  %46 = load %union.gx_device_clist_s*, %union.gx_device_clist_s** %cdev, align 8, !tbaa !21
  %cmp43 = icmp eq %union.gx_device_clist_s* %46, null
  br i1 %cmp43, label %if.then.45, label %if.else

if.then.45:                                       ; preds = %land.lhs.true
  %47 = bitcast i32* %px to i8*
  call void @llvm.lifetime.start(i64 4, i8* %47) #1
  %48 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ptile.addr, align 8, !tbaa !1
  %step_matrix = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %48, i32 0, i32 5
  %tx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %step_matrix, i32 0, i32 4
  %49 = load float, float* %tx, align 4, !tbaa !22
  %x46 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %phase, i32 0, i32 0
  %50 = load i32, i32* %x46, align 4, !tbaa !174
  %conv47 = sitofp i32 %50 to float
  %sub48 = fsub float %49, %conv47
  %conv49 = fpext float %sub48 to double
  %add50 = fadd double %conv49, 5.000000e-01
  %conv51 = fptosi double %add50 to i32
  %51 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ptile.addr, align 8, !tbaa !1
  %step_matrix52 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %51, i32 0, i32 5
  %tx53 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %step_matrix52, i32 0, i32 4
  %52 = load float, float* %tx53, align 4, !tbaa !22
  %x54 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %phase, i32 0, i32 0
  %53 = load i32, i32* %x54, align 4, !tbaa !174
  %conv55 = sitofp i32 %53 to float
  %sub56 = fsub float %52, %conv55
  %conv57 = fpext float %sub56 to double
  %add58 = fadd double %conv57, 5.000000e-01
  %cmp59 = fcmp olt double %add58, 0.000000e+00
  br i1 %cmp59, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.then.45
  %54 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ptile.addr, align 8, !tbaa !1
  %step_matrix61 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %54, i32 0, i32 5
  %tx62 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %step_matrix61, i32 0, i32 4
  %55 = load float, float* %tx62, align 4, !tbaa !22
  %x63 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %phase, i32 0, i32 0
  %56 = load i32, i32* %x63, align 4, !tbaa !174
  %conv64 = sitofp i32 %56 to float
  %sub65 = fsub float %55, %conv64
  %conv66 = fpext float %sub65 to double
  %add67 = fadd double %conv66, 5.000000e-01
  %57 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ptile.addr, align 8, !tbaa !1
  %step_matrix68 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %57, i32 0, i32 5
  %tx69 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %step_matrix68, i32 0, i32 4
  %58 = load float, float* %tx69, align 4, !tbaa !22
  %x70 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %phase, i32 0, i32 0
  %59 = load i32, i32* %x70, align 4, !tbaa !174
  %conv71 = sitofp i32 %59 to float
  %sub72 = fsub float %58, %conv71
  %conv73 = fpext float %sub72 to double
  %add74 = fadd double %conv73, 5.000000e-01
  %conv75 = fptosi double %add74 to i32
  %conv76 = sitofp i32 %conv75 to float
  %conv77 = fpext float %conv76 to double
  %cmp78 = fcmp une double %add67, %conv77
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.then.45
  %60 = phi i1 [ false, %if.then.45 ], [ %cmp78, %land.rhs ]
  %land.ext = zext i1 %60 to i32
  %sub80 = sub nsw i32 %conv51, %land.ext
  %sub81 = sub nsw i32 0, %sub80
  %61 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ptile.addr, align 8, !tbaa !1
  %ttrans = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %61, i32 0, i32 9
  %62 = load %struct.gx_pattern_trans_s*, %struct.gx_pattern_trans_s** %ttrans, align 8, !tbaa !152
  %width82 = getelementptr inbounds %struct.gx_pattern_trans_s, %struct.gx_pattern_trans_s* %62, i32 0, i32 9
  %63 = load i32, i32* %width82, align 4, !tbaa !153
  %call = call i32 @imod(i32 %sub81, i32 %63) #5
  store i32 %call, i32* %px, align 4, !tbaa !5
  %64 = bitcast i32* %py to i8*
  call void @llvm.lifetime.start(i64 4, i8* %64) #1
  %65 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ptile.addr, align 8, !tbaa !1
  %step_matrix83 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %65, i32 0, i32 5
  %ty = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %step_matrix83, i32 0, i32 5
  %66 = load float, float* %ty, align 4, !tbaa !26
  %y84 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %phase, i32 0, i32 1
  %67 = load i32, i32* %y84, align 4, !tbaa !176
  %conv85 = sitofp i32 %67 to float
  %sub86 = fsub float %66, %conv85
  %conv87 = fpext float %sub86 to double
  %add88 = fadd double %conv87, 5.000000e-01
  %conv89 = fptosi double %add88 to i32
  %68 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ptile.addr, align 8, !tbaa !1
  %step_matrix90 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %68, i32 0, i32 5
  %ty91 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %step_matrix90, i32 0, i32 5
  %69 = load float, float* %ty91, align 4, !tbaa !26
  %y92 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %phase, i32 0, i32 1
  %70 = load i32, i32* %y92, align 4, !tbaa !176
  %conv93 = sitofp i32 %70 to float
  %sub94 = fsub float %69, %conv93
  %conv95 = fpext float %sub94 to double
  %add96 = fadd double %conv95, 5.000000e-01
  %cmp97 = fcmp olt double %add96, 0.000000e+00
  br i1 %cmp97, label %land.rhs.99, label %land.end.119

land.rhs.99:                                      ; preds = %land.end
  %71 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ptile.addr, align 8, !tbaa !1
  %step_matrix100 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %71, i32 0, i32 5
  %ty101 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %step_matrix100, i32 0, i32 5
  %72 = load float, float* %ty101, align 4, !tbaa !26
  %y102 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %phase, i32 0, i32 1
  %73 = load i32, i32* %y102, align 4, !tbaa !176
  %conv103 = sitofp i32 %73 to float
  %sub104 = fsub float %72, %conv103
  %conv105 = fpext float %sub104 to double
  %add106 = fadd double %conv105, 5.000000e-01
  %74 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ptile.addr, align 8, !tbaa !1
  %step_matrix107 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %74, i32 0, i32 5
  %ty108 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %step_matrix107, i32 0, i32 5
  %75 = load float, float* %ty108, align 4, !tbaa !26
  %y109 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %phase, i32 0, i32 1
  %76 = load i32, i32* %y109, align 4, !tbaa !176
  %conv110 = sitofp i32 %76 to float
  %sub111 = fsub float %75, %conv110
  %conv112 = fpext float %sub111 to double
  %add113 = fadd double %conv112, 5.000000e-01
  %conv114 = fptosi double %add113 to i32
  %conv115 = sitofp i32 %conv114 to float
  %conv116 = fpext float %conv115 to double
  %cmp117 = fcmp une double %add106, %conv116
  br label %land.end.119

land.end.119:                                     ; preds = %land.rhs.99, %land.end
  %77 = phi i1 [ false, %land.end ], [ %cmp117, %land.rhs.99 ]
  %land.ext120 = zext i1 %77 to i32
  %sub121 = sub nsw i32 %conv89, %land.ext120
  %sub122 = sub nsw i32 0, %sub121
  %78 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ptile.addr, align 8, !tbaa !1
  %ttrans123 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %78, i32 0, i32 9
  %79 = load %struct.gx_pattern_trans_s*, %struct.gx_pattern_trans_s** %ttrans123, align 8, !tbaa !152
  %height124 = getelementptr inbounds %struct.gx_pattern_trans_s, %struct.gx_pattern_trans_s* %79, i32 0, i32 10
  %80 = load i32, i32* %height124, align 4, !tbaa !156
  %call125 = call i32 @imod(i32 %sub122, i32 %80) #5
  store i32 %call125, i32* %py, align 4, !tbaa !5
  %81 = load i32, i32* %xmin.addr, align 4, !tbaa !5
  %82 = load i32, i32* %ymin.addr, align 4, !tbaa !5
  %83 = load i32, i32* %xmax.addr, align 4, !tbaa !5
  %84 = load i32, i32* %ymax.addr, align 4, !tbaa !5
  %85 = load i32, i32* %px, align 4, !tbaa !5
  %86 = load i32, i32* %py, align 4, !tbaa !5
  %87 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ptile.addr, align 8, !tbaa !1
  %88 = load %struct.gx_pattern_trans_s*, %struct.gx_pattern_trans_s** %fill_trans_buffer.addr, align 8, !tbaa !1
  call void @tile_rect_trans_simple(i32 %81, i32 %82, i32 %83, i32 %84, i32 %85, i32 %86, %struct.gx_color_tile_s* %87, %struct.gx_pattern_trans_s* %88) #5
  %89 = bitcast i32* %py to i8*
  call void @llvm.lifetime.end(i64 4, i8* %89) #1
  %90 = bitcast i32* %px to i8*
  call void @llvm.lifetime.end(i64 4, i8* %90) #1
  br label %if.end.168

if.else:                                          ; preds = %land.lhs.true, %if.end.36
  %91 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ptile.addr, align 8, !tbaa !1
  %cdev126 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %91, i32 0, i32 10
  %92 = load %union.gx_device_clist_s*, %union.gx_device_clist_s** %cdev126, align 8, !tbaa !21
  %cmp127 = icmp eq %union.gx_device_clist_s* %92, null
  br i1 %cmp127, label %if.then.129, label %if.else.133

if.then.129:                                      ; preds = %if.else
  %93 = load i32, i32* %xmin.addr, align 4, !tbaa !5
  %94 = load i32, i32* %ymin.addr, align 4, !tbaa !5
  %95 = load i32, i32* %xmax.addr, align 4, !tbaa !5
  %96 = load i32, i32* %xmin.addr, align 4, !tbaa !5
  %sub130 = sub nsw i32 %95, %96
  %97 = load i32, i32* %ymax.addr, align 4, !tbaa !5
  %98 = load i32, i32* %ymin.addr, align 4, !tbaa !5
  %sub131 = sub nsw i32 %97, %98
  %99 = load %struct.gx_pattern_trans_s*, %struct.gx_pattern_trans_s** %fill_trans_buffer.addr, align 8, !tbaa !1
  %100 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ptile.addr, align 8, !tbaa !1
  %call132 = call i32 @tile_by_steps_trans(%struct.tile_fill_trans_state_s* %state_trans, i32 %93, i32 %94, i32 %sub130, i32 %sub131, %struct.gx_pattern_trans_s* %99, %struct.gx_color_tile_s* %100) #5
  store i32 %call132, i32* %code, align 4, !tbaa !5
  br label %if.end.167

if.else.133:                                      ; preds = %if.else
  %101 = bitcast %union.gx_device_clist_s** %cdev134 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %101) #1
  %102 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ptile.addr, align 8, !tbaa !1
  %cdev135 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %102, i32 0, i32 10
  %103 = load %union.gx_device_clist_s*, %union.gx_device_clist_s** %cdev135, align 8, !tbaa !21
  store %union.gx_device_clist_s* %103, %union.gx_device_clist_s** %cdev134, align 8, !tbaa !1
  %104 = bitcast %struct.gx_device_clist_reader_s** %crdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %104) #1
  %105 = load %union.gx_device_clist_s*, %union.gx_device_clist_s** %cdev134, align 8, !tbaa !1
  %106 = bitcast %union.gx_device_clist_s* %105 to %struct.gx_device_clist_reader_s*
  store %struct.gx_device_clist_reader_s* %106, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %107 = bitcast %struct.gx_strip_bitmap_s* %tbits to i8*
  call void @llvm.lifetime.start(i64 48, i8* %107) #1
  %108 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %109 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call136 = call i32 @tile_fill_init(%struct.tile_fill_state_s* %state_clist_trans, %struct.gx_device_color_s* %108, %struct.gx_device_s* %109, i32 0) #5
  store i32 %call136, i32* %code, align 4, !tbaa !5
  %x137 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %phase, i32 0, i32 0
  %110 = load i32, i32* %x137, align 4, !tbaa !174
  %phase138 = getelementptr inbounds %struct.tile_fill_state_s, %struct.tile_fill_state_s* %state_clist_trans, i32 0, i32 10
  %x139 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %phase138, i32 0, i32 0
  store i32 %110, i32* %x139, align 4, !tbaa !23
  %y140 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %phase, i32 0, i32 1
  %111 = load i32, i32* %y140, align 4, !tbaa !176
  %phase141 = getelementptr inbounds %struct.tile_fill_state_s, %struct.tile_fill_state_s* %state_clist_trans, i32 0, i32 10
  %y142 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %phase141, i32 0, i32 1
  store i32 %111, i32* %y142, align 4, !tbaa !27
  %112 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %yplane = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %112, i32 0, i32 65
  %depth = getelementptr inbounds %struct.gx_render_plane_s, %struct.gx_render_plane_s* %yplane, i32 0, i32 0
  store i32 0, i32* %depth, align 4, !tbaa !54
  %113 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %yplane143 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %113, i32 0, i32 65
  %shift = getelementptr inbounds %struct.gx_render_plane_s, %struct.gx_render_plane_s* %yplane143, i32 0, i32 1
  store i32 0, i32* %shift, align 4, !tbaa !61
  %114 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %yplane144 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %114, i32 0, i32 65
  %index = getelementptr inbounds %struct.gx_render_plane_s, %struct.gx_render_plane_s* %yplane144, i32 0, i32 2
  store i32 -1, i32* %index, align 4, !tbaa !62
  %115 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %pages = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %115, i32 0, i32 66
  store %struct.gx_placed_page_s* null, %struct.gx_placed_page_s** %pages, align 8, !tbaa !63
  %116 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %num_pages = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %116, i32 0, i32 68
  store i32 1, i32* %num_pages, align 4, !tbaa !64
  %117 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %orig_dev = getelementptr inbounds %struct.tile_fill_state_s, %struct.tile_fill_state_s* %state_clist_trans, i32 0, i32 13
  store %struct.gx_device_s* %117, %struct.gx_device_s** %orig_dev, align 8, !tbaa !53
  %118 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %pdevc145 = getelementptr inbounds %struct.tile_fill_state_s, %struct.tile_fill_state_s* %state_clist_trans, i32 0, i32 0
  store %struct.gx_device_color_s* %118, %struct.gx_device_color_s** %pdevc145, align 8, !tbaa !78
  %119 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ptile.addr, align 8, !tbaa !1
  %tbits146 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %119, i32 0, i32 7
  %120 = bitcast %struct.gx_strip_bitmap_s* %tbits to i8*
  %121 = bitcast %struct.gx_strip_bitmap_s* %tbits146 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %120, i8* %121, i64 48, i32 8, i1 false), !tbaa.struct !65
  %122 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %width147 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %122, i32 0, i32 13
  %123 = load i32, i32* %width147, align 4, !tbaa !68
  %size = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tbits, i32 0, i32 2
  %x148 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %size, i32 0, i32 0
  store i32 %123, i32* %x148, align 4, !tbaa !69
  %124 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %height149 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %124, i32 0, i32 14
  %125 = load i32, i32* %height149, align 4, !tbaa !70
  %size150 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tbits, i32 0, i32 2
  %y151 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %size150, i32 0, i32 1
  store i32 %125, i32* %y151, align 4, !tbaa !71
  %126 = load i32, i32* %code, align 4, !tbaa !5
  %cmp152 = icmp sge i32 %126, 0
  br i1 %cmp152, label %if.then.154, label %if.end.156

if.then.154:                                      ; preds = %if.else.133
  %127 = load i32, i32* %xmin.addr, align 4, !tbaa !5
  %128 = load i32, i32* %ymin.addr, align 4, !tbaa !5
  %129 = load i32, i32* %xmax.addr, align 4, !tbaa !5
  %130 = load i32, i32* %ymax.addr, align 4, !tbaa !5
  %131 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ptile.addr, align 8, !tbaa !1
  %call155 = call i32 @tile_by_steps(%struct.tile_fill_state_s* %state_clist_trans, i32 %127, i32 %128, i32 %129, i32 %130, %struct.gx_color_tile_s* %131, %struct.gx_strip_bitmap_s* %tbits, i32 (%struct.tile_fill_state_s*, i32, i32, i32, i32)* @tile_pattern_clist) #5
  store i32 %call155, i32* %code, align 4, !tbaa !5
  br label %if.end.156

if.end.156:                                       ; preds = %if.then.154, %if.else.133
  %132 = load i32, i32* %code, align 4, !tbaa !5
  %cmp157 = icmp sge i32 %132, 0
  br i1 %cmp157, label %land.lhs.true.159, label %if.end.166

land.lhs.true.159:                                ; preds = %if.end.156
  %cdev160 = getelementptr inbounds %struct.tile_fill_state_s, %struct.tile_fill_state_s* %state_clist_trans, i32 0, i32 7
  %133 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev160, align 8, !tbaa !29
  %cmp161 = icmp ne %struct.gx_device_mask_clip_s* %133, null
  br i1 %cmp161, label %if.then.163, label %if.end.166

if.then.163:                                      ; preds = %land.lhs.true.159
  %cdev164 = getelementptr inbounds %struct.tile_fill_state_s, %struct.tile_fill_state_s* %state_clist_trans, i32 0, i32 7
  %134 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev164, align 8, !tbaa !29
  call void @tile_clip_free(%struct.gx_device_mask_clip_s* %134) #5
  %cdev165 = getelementptr inbounds %struct.tile_fill_state_s, %struct.tile_fill_state_s* %state_clist_trans, i32 0, i32 7
  store %struct.gx_device_mask_clip_s* null, %struct.gx_device_mask_clip_s** %cdev165, align 8, !tbaa !29
  br label %if.end.166

if.end.166:                                       ; preds = %if.then.163, %land.lhs.true.159, %if.end.156
  %135 = bitcast %struct.gx_strip_bitmap_s* %tbits to i8*
  call void @llvm.lifetime.end(i64 48, i8* %135) #1
  %136 = bitcast %struct.gx_device_clist_reader_s** %crdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %136) #1
  %137 = bitcast %union.gx_device_clist_s** %cdev134 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %137) #1
  br label %if.end.167

if.end.167:                                       ; preds = %if.end.166, %if.then.129
  br label %if.end.168

if.end.168:                                       ; preds = %if.end.167, %land.end.119
  %138 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %138, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.168, %if.then.35, %if.then
  %139 = bitcast i32* %ymax_new to i8*
  call void @llvm.lifetime.end(i64 4, i8* %139) #1
  %140 = bitcast i32* %xmax_new to i8*
  call void @llvm.lifetime.end(i64 4, i8* %140) #1
  %141 = bitcast i32* %h to i8*
  call void @llvm.lifetime.end(i64 4, i8* %141) #1
  %142 = bitcast i32* %w to i8*
  call void @llvm.lifetime.end(i64 4, i8* %142) #1
  %143 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %143) #1
  %144 = bitcast %struct.tile_fill_state_s* %state_clist_trans to i8*
  call void @llvm.lifetime.end(i64 104, i8* %144) #1
  %145 = bitcast %struct.tile_fill_trans_state_s* %state_trans to i8*
  call void @llvm.lifetime.end(i64 48, i8* %145) #1
  %146 = load i32, i32* %retval
  ret i32 %146
}

; Function Attrs: nounwind uwtable
define internal i32 @tile_by_steps_trans(%struct.tile_fill_trans_state_s* %ptfs, i32 %x0, i32 %y0, i32 %w0, i32 %h0, %struct.gx_pattern_trans_s* %fill_trans_buffer, %struct.gx_color_tile_s* %ptile) #0 {
entry:
  %ptfs.addr = alloca %struct.tile_fill_trans_state_s*, align 8
  %x0.addr = alloca i32, align 4
  %y0.addr = alloca i32, align 4
  %w0.addr = alloca i32, align 4
  %h0.addr = alloca i32, align 4
  %fill_trans_buffer.addr = alloca %struct.gx_pattern_trans_s*, align 8
  %ptile.addr = alloca %struct.gx_color_tile_s*, align 8
  %x1 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %i0 = alloca i32, align 4
  %i1 = alloca i32, align 4
  %j0 = alloca i32, align 4
  %j1 = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %step_matrix = alloca %struct.gs_matrix_s, align 4
  %ptrans_pat = alloca %struct.gx_pattern_trans_s*, align 8
  %bbox = alloca %struct.gs_rect_s, align 8
  %ibbox = alloca %struct.gs_rect_s, align 8
  %bbw = alloca double, align 8
  %bbh = alloca double, align 8
  %u0 = alloca double, align 8
  %v0 = alloca double, align 8
  %u1 = alloca double, align 8
  %v1 = alloca double, align 8
  %x131 = alloca i32, align 4
  %y176 = alloca i32, align 4
  %w = alloca i32, align 4
  %h = alloca i32, align 4
  %xoff = alloca i32, align 4
  %yoff = alloca i32, align 4
  %px = alloca i32, align 4
  %py = alloca i32, align 4
  store %struct.tile_fill_trans_state_s* %ptfs, %struct.tile_fill_trans_state_s** %ptfs.addr, align 8, !tbaa !1
  store i32 %x0, i32* %x0.addr, align 4, !tbaa !5
  store i32 %y0, i32* %y0.addr, align 4, !tbaa !5
  store i32 %w0, i32* %w0.addr, align 4, !tbaa !5
  store i32 %h0, i32* %h0.addr, align 4, !tbaa !5
  store %struct.gx_pattern_trans_s* %fill_trans_buffer, %struct.gx_pattern_trans_s** %fill_trans_buffer.addr, align 8, !tbaa !1
  store %struct.gx_color_tile_s* %ptile, %struct.gx_color_tile_s** %ptile.addr, align 8, !tbaa !1
  %0 = bitcast i32* %x1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load i32, i32* %x0.addr, align 4, !tbaa !5
  %2 = load i32, i32* %w0.addr, align 4, !tbaa !5
  %add = add nsw i32 %1, %2
  store i32 %add, i32* %x1, align 4, !tbaa !5
  %3 = bitcast i32* %y1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load i32, i32* %y0.addr, align 4, !tbaa !5
  %5 = load i32, i32* %h0.addr, align 4, !tbaa !5
  %add1 = add nsw i32 %4, %5
  store i32 %add1, i32* %y1, align 4, !tbaa !5
  %6 = bitcast i32* %i0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = bitcast i32* %j0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = bitcast i32* %j1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  %12 = bitcast %struct.gs_matrix_s* %step_matrix to i8*
  call void @llvm.lifetime.start(i64 24, i8* %12) #1
  %13 = bitcast %struct.gx_pattern_trans_s** %ptrans_pat to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #1
  %14 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ptile.addr, align 8, !tbaa !1
  %ttrans = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %14, i32 0, i32 9
  %15 = load %struct.gx_pattern_trans_s*, %struct.gx_pattern_trans_s** %ttrans, align 8, !tbaa !152
  store %struct.gx_pattern_trans_s* %15, %struct.gx_pattern_trans_s** %ptrans_pat, align 8, !tbaa !1
  %16 = load i32, i32* %x0.addr, align 4, !tbaa !5
  %17 = load %struct.tile_fill_trans_state_s*, %struct.tile_fill_trans_state_s** %ptfs.addr, align 8, !tbaa !1
  %x02 = getelementptr inbounds %struct.tile_fill_trans_state_s, %struct.tile_fill_trans_state_s* %17, i32 0, i32 1
  store i32 %16, i32* %x02, align 4, !tbaa !183
  %18 = load i32, i32* %w0.addr, align 4, !tbaa !5
  %19 = load %struct.tile_fill_trans_state_s*, %struct.tile_fill_trans_state_s** %ptfs.addr, align 8, !tbaa !1
  %w03 = getelementptr inbounds %struct.tile_fill_trans_state_s, %struct.tile_fill_trans_state_s* %19, i32 0, i32 3
  store i32 %18, i32* %w03, align 4, !tbaa !184
  %20 = load i32, i32* %y0.addr, align 4, !tbaa !5
  %21 = load %struct.tile_fill_trans_state_s*, %struct.tile_fill_trans_state_s** %ptfs.addr, align 8, !tbaa !1
  %y04 = getelementptr inbounds %struct.tile_fill_trans_state_s, %struct.tile_fill_trans_state_s* %21, i32 0, i32 2
  store i32 %20, i32* %y04, align 4, !tbaa !185
  %22 = load i32, i32* %h0.addr, align 4, !tbaa !5
  %23 = load %struct.tile_fill_trans_state_s*, %struct.tile_fill_trans_state_s** %ptfs.addr, align 8, !tbaa !1
  %h05 = getelementptr inbounds %struct.tile_fill_trans_state_s, %struct.tile_fill_trans_state_s* %23, i32 0, i32 4
  store i32 %22, i32* %h05, align 4, !tbaa !186
  %24 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ptile.addr, align 8, !tbaa !1
  %step_matrix6 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %24, i32 0, i32 5
  %25 = bitcast %struct.gs_matrix_s* %step_matrix to i8*
  %26 = bitcast %struct.gs_matrix_s* %step_matrix6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %25, i8* %26, i64 24, i32 4, i1 false), !tbaa.struct !106
  %27 = load %struct.tile_fill_trans_state_s*, %struct.tile_fill_trans_state_s** %ptfs.addr, align 8, !tbaa !1
  %phase = getelementptr inbounds %struct.tile_fill_trans_state_s, %struct.tile_fill_trans_state_s* %27, i32 0, i32 6
  %x = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %phase, i32 0, i32 0
  %28 = load i32, i32* %x, align 4, !tbaa !180
  %conv = sitofp i32 %28 to float
  %tx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %step_matrix, i32 0, i32 4
  %29 = load float, float* %tx, align 4, !tbaa !108
  %sub = fsub float %29, %conv
  store float %sub, float* %tx, align 4, !tbaa !108
  %30 = load %struct.tile_fill_trans_state_s*, %struct.tile_fill_trans_state_s** %ptfs.addr, align 8, !tbaa !1
  %phase7 = getelementptr inbounds %struct.tile_fill_trans_state_s, %struct.tile_fill_trans_state_s* %30, i32 0, i32 6
  %y = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %phase7, i32 0, i32 1
  %31 = load i32, i32* %y, align 4, !tbaa !182
  %conv8 = sitofp i32 %31 to float
  %ty = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %step_matrix, i32 0, i32 5
  %32 = load float, float* %ty, align 4, !tbaa !109
  %sub9 = fsub float %32, %conv8
  store float %sub9, float* %ty, align 4, !tbaa !109
  %33 = bitcast %struct.gs_rect_s* %bbox to i8*
  call void @llvm.lifetime.start(i64 32, i8* %33) #1
  %34 = bitcast %struct.gs_rect_s* %ibbox to i8*
  call void @llvm.lifetime.start(i64 32, i8* %34) #1
  %35 = bitcast double* %bbw to i8*
  call void @llvm.lifetime.start(i64 8, i8* %35) #1
  %36 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ptile.addr, align 8, !tbaa !1
  %bbox10 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %36, i32 0, i32 6
  %q = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %bbox10, i32 0, i32 1
  %x11 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q, i32 0, i32 0
  %37 = load double, double* %x11, align 8, !tbaa !110
  %38 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ptile.addr, align 8, !tbaa !1
  %bbox12 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %38, i32 0, i32 6
  %p = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %bbox12, i32 0, i32 0
  %x13 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p, i32 0, i32 0
  %39 = load double, double* %x13, align 8, !tbaa !111
  %sub14 = fsub double %37, %39
  store double %sub14, double* %bbw, align 8, !tbaa !112
  %40 = bitcast double* %bbh to i8*
  call void @llvm.lifetime.start(i64 8, i8* %40) #1
  %41 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ptile.addr, align 8, !tbaa !1
  %bbox15 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %41, i32 0, i32 6
  %q16 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %bbox15, i32 0, i32 1
  %y17 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q16, i32 0, i32 1
  %42 = load double, double* %y17, align 8, !tbaa !113
  %43 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ptile.addr, align 8, !tbaa !1
  %bbox18 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %43, i32 0, i32 6
  %p19 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %bbox18, i32 0, i32 0
  %y20 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p19, i32 0, i32 1
  %44 = load double, double* %y20, align 8, !tbaa !114
  %sub21 = fsub double %42, %44
  store double %sub21, double* %bbh, align 8, !tbaa !112
  %45 = bitcast double* %u0 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %45) #1
  %46 = bitcast double* %v0 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %46) #1
  %47 = bitcast double* %u1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %47) #1
  %48 = bitcast double* %v1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %48) #1
  %49 = load i32, i32* %x0.addr, align 4, !tbaa !5
  %conv22 = sitofp i32 %49 to double
  %p23 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %bbox, i32 0, i32 0
  %x24 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p23, i32 0, i32 0
  store double %conv22, double* %x24, align 8, !tbaa !115
  %50 = load i32, i32* %y0.addr, align 4, !tbaa !5
  %conv25 = sitofp i32 %50 to double
  %p26 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %bbox, i32 0, i32 0
  %y27 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p26, i32 0, i32 1
  store double %conv25, double* %y27, align 8, !tbaa !116
  %51 = load i32, i32* %x1, align 4, !tbaa !5
  %conv28 = sitofp i32 %51 to double
  %q29 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %bbox, i32 0, i32 1
  %x30 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q29, i32 0, i32 0
  store double %conv28, double* %x30, align 8, !tbaa !117
  %52 = load i32, i32* %y1, align 4, !tbaa !5
  %conv31 = sitofp i32 %52 to double
  %q32 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %bbox, i32 0, i32 1
  %y33 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q32, i32 0, i32 1
  store double %conv31, double* %y33, align 8, !tbaa !118
  %call = call i32 @gs_bbox_transform_inverse(%struct.gs_rect_s* %bbox, %struct.gs_matrix_s* %step_matrix, %struct.gs_rect_s* %ibbox) #5
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %p34 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %ibbox, i32 0, i32 0
  %x35 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p34, i32 0, i32 0
  %53 = load double, double* %x35, align 8, !tbaa !115
  %54 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ptile.addr, align 8, !tbaa !1
  %bbox36 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %54, i32 0, i32 6
  %p37 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %bbox36, i32 0, i32 0
  %x38 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p37, i32 0, i32 0
  %55 = load double, double* %x38, align 8, !tbaa !111
  %cmp = fcmp ogt double %55, 0.000000e+00
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.end
  %56 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ptile.addr, align 8, !tbaa !1
  %bbox40 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %56, i32 0, i32 6
  %p41 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %bbox40, i32 0, i32 0
  %x42 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p41, i32 0, i32 0
  %57 = load double, double* %x42, align 8, !tbaa !111
  br label %cond.end

cond.false:                                       ; preds = %do.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %57, %cond.true ], [ 0.000000e+00, %cond.false ]
  %sub43 = fsub double %53, %cond
  %sub44 = fsub double %sub43, 1.000000e-06
  store double %sub44, double* %u0, align 8, !tbaa !112
  %p45 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %ibbox, i32 0, i32 0
  %y46 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p45, i32 0, i32 1
  %58 = load double, double* %y46, align 8, !tbaa !116
  %59 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ptile.addr, align 8, !tbaa !1
  %bbox47 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %59, i32 0, i32 6
  %p48 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %bbox47, i32 0, i32 0
  %y49 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p48, i32 0, i32 1
  %60 = load double, double* %y49, align 8, !tbaa !114
  %cmp50 = fcmp ogt double %60, 0.000000e+00
  br i1 %cmp50, label %cond.true.52, label %cond.false.56

cond.true.52:                                     ; preds = %cond.end
  %61 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ptile.addr, align 8, !tbaa !1
  %bbox53 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %61, i32 0, i32 6
  %p54 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %bbox53, i32 0, i32 0
  %y55 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p54, i32 0, i32 1
  %62 = load double, double* %y55, align 8, !tbaa !114
  br label %cond.end.57

cond.false.56:                                    ; preds = %cond.end
  br label %cond.end.57

cond.end.57:                                      ; preds = %cond.false.56, %cond.true.52
  %cond58 = phi double [ %62, %cond.true.52 ], [ 0.000000e+00, %cond.false.56 ]
  %sub59 = fsub double %58, %cond58
  %sub60 = fsub double %sub59, 1.000000e-06
  store double %sub60, double* %v0, align 8, !tbaa !112
  %q61 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %ibbox, i32 0, i32 1
  %x62 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q61, i32 0, i32 0
  %63 = load double, double* %x62, align 8, !tbaa !117
  %64 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ptile.addr, align 8, !tbaa !1
  %bbox63 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %64, i32 0, i32 6
  %q64 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %bbox63, i32 0, i32 1
  %x65 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q64, i32 0, i32 0
  %65 = load double, double* %x65, align 8, !tbaa !110
  %cmp66 = fcmp olt double %65, 0.000000e+00
  br i1 %cmp66, label %cond.true.68, label %cond.false.72

cond.true.68:                                     ; preds = %cond.end.57
  %66 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ptile.addr, align 8, !tbaa !1
  %bbox69 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %66, i32 0, i32 6
  %q70 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %bbox69, i32 0, i32 1
  %x71 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q70, i32 0, i32 0
  %67 = load double, double* %x71, align 8, !tbaa !110
  br label %cond.end.73

cond.false.72:                                    ; preds = %cond.end.57
  br label %cond.end.73

cond.end.73:                                      ; preds = %cond.false.72, %cond.true.68
  %cond74 = phi double [ %67, %cond.true.68 ], [ 0.000000e+00, %cond.false.72 ]
  %sub75 = fsub double %63, %cond74
  %add76 = fadd double %sub75, 1.000000e-06
  store double %add76, double* %u1, align 8, !tbaa !112
  %q77 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %ibbox, i32 0, i32 1
  %y78 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q77, i32 0, i32 1
  %68 = load double, double* %y78, align 8, !tbaa !118
  %69 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ptile.addr, align 8, !tbaa !1
  %bbox79 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %69, i32 0, i32 6
  %q80 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %bbox79, i32 0, i32 1
  %y81 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q80, i32 0, i32 1
  %70 = load double, double* %y81, align 8, !tbaa !113
  %cmp82 = fcmp olt double %70, 0.000000e+00
  br i1 %cmp82, label %cond.true.84, label %cond.false.88

cond.true.84:                                     ; preds = %cond.end.73
  %71 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ptile.addr, align 8, !tbaa !1
  %bbox85 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %71, i32 0, i32 6
  %q86 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %bbox85, i32 0, i32 1
  %y87 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q86, i32 0, i32 1
  %72 = load double, double* %y87, align 8, !tbaa !113
  br label %cond.end.89

cond.false.88:                                    ; preds = %cond.end.73
  br label %cond.end.89

cond.end.89:                                      ; preds = %cond.false.88, %cond.true.84
  %cond90 = phi double [ %72, %cond.true.84 ], [ 0.000000e+00, %cond.false.88 ]
  %sub91 = fsub double %68, %cond90
  %add92 = fadd double %sub91, 1.000000e-06
  store double %add92, double* %v1, align 8, !tbaa !112
  %73 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ptile.addr, align 8, !tbaa !1
  %is_simple = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %73, i32 0, i32 11
  %74 = load i8, i8* %is_simple, align 1, !tbaa !9
  %tobool = icmp ne i8 %74, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %cond.end.89
  %75 = load double, double* %bbw, align 8, !tbaa !112
  %76 = load double, double* %u0, align 8, !tbaa !112
  %sub93 = fsub double %76, %75
  store double %sub93, double* %u0, align 8, !tbaa !112
  %77 = load double, double* %bbh, align 8, !tbaa !112
  %78 = load double, double* %v0, align 8, !tbaa !112
  %sub94 = fsub double %78, %77
  store double %sub94, double* %v0, align 8, !tbaa !112
  %79 = load double, double* %bbw, align 8, !tbaa !112
  %80 = load double, double* %u1, align 8, !tbaa !112
  %add95 = fadd double %80, %79
  store double %add95, double* %u1, align 8, !tbaa !112
  %81 = load double, double* %bbh, align 8, !tbaa !112
  %82 = load double, double* %v1, align 8, !tbaa !112
  %add96 = fadd double %82, %81
  store double %add96, double* %v1, align 8, !tbaa !112
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end.89
  %83 = load double, double* %u0, align 8, !tbaa !112
  %conv97 = fptosi double %83 to i32
  %84 = load double, double* %u0, align 8, !tbaa !112
  %cmp98 = fcmp olt double %84, 0.000000e+00
  br i1 %cmp98, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.end
  %85 = load double, double* %u0, align 8, !tbaa !112
  %86 = load double, double* %u0, align 8, !tbaa !112
  %conv100 = fptosi double %86 to i32
  %conv101 = sitofp i32 %conv100 to float
  %conv102 = fpext float %conv101 to double
  %cmp103 = fcmp une double %85, %conv102
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end
  %87 = phi i1 [ false, %if.end ], [ %cmp103, %land.rhs ]
  %land.ext = zext i1 %87 to i32
  %sub105 = sub nsw i32 %conv97, %land.ext
  store i32 %sub105, i32* %i0, align 4, !tbaa !5
  %88 = load double, double* %v0, align 8, !tbaa !112
  %conv106 = fptosi double %88 to i32
  %89 = load double, double* %v0, align 8, !tbaa !112
  %cmp107 = fcmp olt double %89, 0.000000e+00
  br i1 %cmp107, label %land.rhs.109, label %land.end.115

land.rhs.109:                                     ; preds = %land.end
  %90 = load double, double* %v0, align 8, !tbaa !112
  %91 = load double, double* %v0, align 8, !tbaa !112
  %conv110 = fptosi double %91 to i32
  %conv111 = sitofp i32 %conv110 to float
  %conv112 = fpext float %conv111 to double
  %cmp113 = fcmp une double %90, %conv112
  br label %land.end.115

land.end.115:                                     ; preds = %land.rhs.109, %land.end
  %92 = phi i1 [ false, %land.end ], [ %cmp113, %land.rhs.109 ]
  %land.ext116 = zext i1 %92 to i32
  %sub117 = sub nsw i32 %conv106, %land.ext116
  store i32 %sub117, i32* %j0, align 4, !tbaa !5
  %93 = load double, double* %u1, align 8, !tbaa !112
  %call118 = call double @ceil(double %93) #6
  %conv119 = fptosi double %call118 to i32
  store i32 %conv119, i32* %i1, align 4, !tbaa !5
  %94 = load double, double* %v1, align 8, !tbaa !112
  %call120 = call double @ceil(double %94) #6
  %conv121 = fptosi double %call120 to i32
  store i32 %conv121, i32* %j1, align 4, !tbaa !5
  %95 = bitcast double* %v1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %95) #1
  %96 = bitcast double* %u1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %96) #1
  %97 = bitcast double* %v0 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %97) #1
  %98 = bitcast double* %u0 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %98) #1
  %99 = bitcast double* %bbh to i8*
  call void @llvm.lifetime.end(i64 8, i8* %99) #1
  %100 = bitcast double* %bbw to i8*
  call void @llvm.lifetime.end(i64 8, i8* %100) #1
  %101 = bitcast %struct.gs_rect_s* %ibbox to i8*
  call void @llvm.lifetime.end(i64 32, i8* %101) #1
  %102 = bitcast %struct.gs_rect_s* %bbox to i8*
  call void @llvm.lifetime.end(i64 32, i8* %102) #1
  br label %do.body.122

do.body.122:                                      ; preds = %land.end.115
  br label %do.cond.123

do.cond.123:                                      ; preds = %do.body.122
  br label %do.end.124

do.end.124:                                       ; preds = %do.cond.123
  %103 = load i32, i32* %i0, align 4, !tbaa !5
  store i32 %103, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc.272, %do.end.124
  %104 = load i32, i32* %i, align 4, !tbaa !5
  %105 = load i32, i32* %i1, align 4, !tbaa !5
  %cmp125 = icmp slt i32 %104, %105
  br i1 %cmp125, label %for.body, label %for.end.274

for.body:                                         ; preds = %for.cond
  %106 = load i32, i32* %j0, align 4, !tbaa !5
  store i32 %106, i32* %j, align 4, !tbaa !5
  br label %for.cond.127

for.cond.127:                                     ; preds = %for.inc, %for.body
  %107 = load i32, i32* %j, align 4, !tbaa !5
  %108 = load i32, i32* %j1, align 4, !tbaa !5
  %cmp128 = icmp slt i32 %107, %108
  br i1 %cmp128, label %for.body.130, label %for.end

for.body.130:                                     ; preds = %for.cond.127
  %109 = bitcast i32* %x131 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %109) #1
  %xx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %step_matrix, i32 0, i32 0
  %110 = load float, float* %xx, align 4, !tbaa !119
  %111 = load i32, i32* %i, align 4, !tbaa !5
  %conv132 = sitofp i32 %111 to float
  %mul = fmul float %110, %conv132
  %yx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %step_matrix, i32 0, i32 2
  %112 = load float, float* %yx, align 4, !tbaa !120
  %113 = load i32, i32* %j, align 4, !tbaa !5
  %conv133 = sitofp i32 %113 to float
  %mul134 = fmul float %112, %conv133
  %add135 = fadd float %mul, %mul134
  %tx136 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %step_matrix, i32 0, i32 4
  %114 = load float, float* %tx136, align 4, !tbaa !108
  %add137 = fadd float %add135, %114
  %conv138 = fptosi float %add137 to i32
  %xx139 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %step_matrix, i32 0, i32 0
  %115 = load float, float* %xx139, align 4, !tbaa !119
  %116 = load i32, i32* %i, align 4, !tbaa !5
  %conv140 = sitofp i32 %116 to float
  %mul141 = fmul float %115, %conv140
  %yx142 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %step_matrix, i32 0, i32 2
  %117 = load float, float* %yx142, align 4, !tbaa !120
  %118 = load i32, i32* %j, align 4, !tbaa !5
  %conv143 = sitofp i32 %118 to float
  %mul144 = fmul float %117, %conv143
  %add145 = fadd float %mul141, %mul144
  %tx146 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %step_matrix, i32 0, i32 4
  %119 = load float, float* %tx146, align 4, !tbaa !108
  %add147 = fadd float %add145, %119
  %cmp148 = fcmp olt float %add147, 0.000000e+00
  br i1 %cmp148, label %land.rhs.150, label %land.end.173

land.rhs.150:                                     ; preds = %for.body.130
  %xx151 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %step_matrix, i32 0, i32 0
  %120 = load float, float* %xx151, align 4, !tbaa !119
  %121 = load i32, i32* %i, align 4, !tbaa !5
  %conv152 = sitofp i32 %121 to float
  %mul153 = fmul float %120, %conv152
  %yx154 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %step_matrix, i32 0, i32 2
  %122 = load float, float* %yx154, align 4, !tbaa !120
  %123 = load i32, i32* %j, align 4, !tbaa !5
  %conv155 = sitofp i32 %123 to float
  %mul156 = fmul float %122, %conv155
  %add157 = fadd float %mul153, %mul156
  %tx158 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %step_matrix, i32 0, i32 4
  %124 = load float, float* %tx158, align 4, !tbaa !108
  %add159 = fadd float %add157, %124
  %xx160 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %step_matrix, i32 0, i32 0
  %125 = load float, float* %xx160, align 4, !tbaa !119
  %126 = load i32, i32* %i, align 4, !tbaa !5
  %conv161 = sitofp i32 %126 to float
  %mul162 = fmul float %125, %conv161
  %yx163 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %step_matrix, i32 0, i32 2
  %127 = load float, float* %yx163, align 4, !tbaa !120
  %128 = load i32, i32* %j, align 4, !tbaa !5
  %conv164 = sitofp i32 %128 to float
  %mul165 = fmul float %127, %conv164
  %add166 = fadd float %mul162, %mul165
  %tx167 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %step_matrix, i32 0, i32 4
  %129 = load float, float* %tx167, align 4, !tbaa !108
  %add168 = fadd float %add166, %129
  %conv169 = fptosi float %add168 to i32
  %conv170 = sitofp i32 %conv169 to float
  %cmp171 = fcmp une float %add159, %conv170
  br label %land.end.173

land.end.173:                                     ; preds = %land.rhs.150, %for.body.130
  %130 = phi i1 [ false, %for.body.130 ], [ %cmp171, %land.rhs.150 ]
  %land.ext174 = zext i1 %130 to i32
  %sub175 = sub nsw i32 %conv138, %land.ext174
  store i32 %sub175, i32* %x131, align 4, !tbaa !5
  %131 = bitcast i32* %y176 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %131) #1
  %xy = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %step_matrix, i32 0, i32 1
  %132 = load float, float* %xy, align 4, !tbaa !121
  %133 = load i32, i32* %i, align 4, !tbaa !5
  %conv177 = sitofp i32 %133 to float
  %mul178 = fmul float %132, %conv177
  %yy = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %step_matrix, i32 0, i32 3
  %134 = load float, float* %yy, align 4, !tbaa !122
  %135 = load i32, i32* %j, align 4, !tbaa !5
  %conv179 = sitofp i32 %135 to float
  %mul180 = fmul float %134, %conv179
  %add181 = fadd float %mul178, %mul180
  %ty182 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %step_matrix, i32 0, i32 5
  %136 = load float, float* %ty182, align 4, !tbaa !109
  %add183 = fadd float %add181, %136
  %conv184 = fptosi float %add183 to i32
  %xy185 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %step_matrix, i32 0, i32 1
  %137 = load float, float* %xy185, align 4, !tbaa !121
  %138 = load i32, i32* %i, align 4, !tbaa !5
  %conv186 = sitofp i32 %138 to float
  %mul187 = fmul float %137, %conv186
  %yy188 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %step_matrix, i32 0, i32 3
  %139 = load float, float* %yy188, align 4, !tbaa !122
  %140 = load i32, i32* %j, align 4, !tbaa !5
  %conv189 = sitofp i32 %140 to float
  %mul190 = fmul float %139, %conv189
  %add191 = fadd float %mul187, %mul190
  %ty192 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %step_matrix, i32 0, i32 5
  %141 = load float, float* %ty192, align 4, !tbaa !109
  %add193 = fadd float %add191, %141
  %cmp194 = fcmp olt float %add193, 0.000000e+00
  br i1 %cmp194, label %land.rhs.196, label %land.end.219

land.rhs.196:                                     ; preds = %land.end.173
  %xy197 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %step_matrix, i32 0, i32 1
  %142 = load float, float* %xy197, align 4, !tbaa !121
  %143 = load i32, i32* %i, align 4, !tbaa !5
  %conv198 = sitofp i32 %143 to float
  %mul199 = fmul float %142, %conv198
  %yy200 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %step_matrix, i32 0, i32 3
  %144 = load float, float* %yy200, align 4, !tbaa !122
  %145 = load i32, i32* %j, align 4, !tbaa !5
  %conv201 = sitofp i32 %145 to float
  %mul202 = fmul float %144, %conv201
  %add203 = fadd float %mul199, %mul202
  %ty204 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %step_matrix, i32 0, i32 5
  %146 = load float, float* %ty204, align 4, !tbaa !109
  %add205 = fadd float %add203, %146
  %xy206 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %step_matrix, i32 0, i32 1
  %147 = load float, float* %xy206, align 4, !tbaa !121
  %148 = load i32, i32* %i, align 4, !tbaa !5
  %conv207 = sitofp i32 %148 to float
  %mul208 = fmul float %147, %conv207
  %yy209 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %step_matrix, i32 0, i32 3
  %149 = load float, float* %yy209, align 4, !tbaa !122
  %150 = load i32, i32* %j, align 4, !tbaa !5
  %conv210 = sitofp i32 %150 to float
  %mul211 = fmul float %149, %conv210
  %add212 = fadd float %mul208, %mul211
  %ty213 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %step_matrix, i32 0, i32 5
  %151 = load float, float* %ty213, align 4, !tbaa !109
  %add214 = fadd float %add212, %151
  %conv215 = fptosi float %add214 to i32
  %conv216 = sitofp i32 %conv215 to float
  %cmp217 = fcmp une float %add205, %conv216
  br label %land.end.219

land.end.219:                                     ; preds = %land.rhs.196, %land.end.173
  %152 = phi i1 [ false, %land.end.173 ], [ %cmp217, %land.rhs.196 ]
  %land.ext220 = zext i1 %152 to i32
  %sub221 = sub nsw i32 %conv184, %land.ext220
  store i32 %sub221, i32* %y176, align 4, !tbaa !5
  %153 = bitcast i32* %w to i8*
  call void @llvm.lifetime.start(i64 4, i8* %153) #1
  %154 = load %struct.gx_pattern_trans_s*, %struct.gx_pattern_trans_s** %ptrans_pat, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.gx_pattern_trans_s, %struct.gx_pattern_trans_s* %154, i32 0, i32 9
  %155 = load i32, i32* %width, align 4, !tbaa !153
  store i32 %155, i32* %w, align 4, !tbaa !5
  %156 = bitcast i32* %h to i8*
  call void @llvm.lifetime.start(i64 4, i8* %156) #1
  %157 = load %struct.gx_pattern_trans_s*, %struct.gx_pattern_trans_s** %ptrans_pat, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.gx_pattern_trans_s, %struct.gx_pattern_trans_s* %157, i32 0, i32 10
  %158 = load i32, i32* %height, align 4, !tbaa !156
  store i32 %158, i32* %h, align 4, !tbaa !5
  %159 = bitcast i32* %xoff to i8*
  call void @llvm.lifetime.start(i64 4, i8* %159) #1
  %160 = bitcast i32* %yoff to i8*
  call void @llvm.lifetime.start(i64 4, i8* %160) #1
  %161 = bitcast i32* %px to i8*
  call void @llvm.lifetime.start(i64 4, i8* %161) #1
  %162 = bitcast i32* %py to i8*
  call void @llvm.lifetime.start(i64 4, i8* %162) #1
  br label %do.body.222

do.body.222:                                      ; preds = %land.end.219
  br label %do.cond.223

do.cond.223:                                      ; preds = %do.body.222
  br label %do.end.224

do.end.224:                                       ; preds = %do.cond.223
  %163 = load i32, i32* %x131, align 4, !tbaa !5
  %164 = load i32, i32* %x0.addr, align 4, !tbaa !5
  %cmp225 = icmp slt i32 %163, %164
  br i1 %cmp225, label %if.then.227, label %if.else

if.then.227:                                      ; preds = %do.end.224
  %165 = load i32, i32* %x0.addr, align 4, !tbaa !5
  %166 = load i32, i32* %x131, align 4, !tbaa !5
  %sub228 = sub nsw i32 %165, %166
  store i32 %sub228, i32* %xoff, align 4, !tbaa !5
  %167 = load i32, i32* %x0.addr, align 4, !tbaa !5
  store i32 %167, i32* %x131, align 4, !tbaa !5
  %168 = load i32, i32* %xoff, align 4, !tbaa !5
  %169 = load i32, i32* %w, align 4, !tbaa !5
  %sub229 = sub nsw i32 %169, %168
  store i32 %sub229, i32* %w, align 4, !tbaa !5
  br label %if.end.230

if.else:                                          ; preds = %do.end.224
  store i32 0, i32* %xoff, align 4, !tbaa !5
  br label %if.end.230

if.end.230:                                       ; preds = %if.else, %if.then.227
  %170 = load i32, i32* %y176, align 4, !tbaa !5
  %171 = load i32, i32* %y0.addr, align 4, !tbaa !5
  %cmp231 = icmp slt i32 %170, %171
  br i1 %cmp231, label %if.then.233, label %if.else.236

if.then.233:                                      ; preds = %if.end.230
  %172 = load i32, i32* %y0.addr, align 4, !tbaa !5
  %173 = load i32, i32* %y176, align 4, !tbaa !5
  %sub234 = sub nsw i32 %172, %173
  store i32 %sub234, i32* %yoff, align 4, !tbaa !5
  %174 = load i32, i32* %y0.addr, align 4, !tbaa !5
  store i32 %174, i32* %y176, align 4, !tbaa !5
  %175 = load i32, i32* %yoff, align 4, !tbaa !5
  %176 = load i32, i32* %h, align 4, !tbaa !5
  %sub235 = sub nsw i32 %176, %175
  store i32 %sub235, i32* %h, align 4, !tbaa !5
  br label %if.end.237

if.else.236:                                      ; preds = %if.end.230
  store i32 0, i32* %yoff, align 4, !tbaa !5
  br label %if.end.237

if.end.237:                                       ; preds = %if.else.236, %if.then.233
  %177 = load i32, i32* %x131, align 4, !tbaa !5
  %178 = load i32, i32* %w, align 4, !tbaa !5
  %add238 = add nsw i32 %177, %178
  %179 = load i32, i32* %x1, align 4, !tbaa !5
  %cmp239 = icmp sgt i32 %add238, %179
  br i1 %cmp239, label %if.then.241, label %if.end.243

if.then.241:                                      ; preds = %if.end.237
  %180 = load i32, i32* %x1, align 4, !tbaa !5
  %181 = load i32, i32* %x131, align 4, !tbaa !5
  %sub242 = sub nsw i32 %180, %181
  store i32 %sub242, i32* %w, align 4, !tbaa !5
  br label %if.end.243

if.end.243:                                       ; preds = %if.then.241, %if.end.237
  %182 = load i32, i32* %y176, align 4, !tbaa !5
  %183 = load i32, i32* %h, align 4, !tbaa !5
  %add244 = add nsw i32 %182, %183
  %184 = load i32, i32* %y1, align 4, !tbaa !5
  %cmp245 = icmp sgt i32 %add244, %184
  br i1 %cmp245, label %if.then.247, label %if.end.249

if.then.247:                                      ; preds = %if.end.243
  %185 = load i32, i32* %y1, align 4, !tbaa !5
  %186 = load i32, i32* %y176, align 4, !tbaa !5
  %sub248 = sub nsw i32 %185, %186
  store i32 %sub248, i32* %h, align 4, !tbaa !5
  br label %if.end.249

if.end.249:                                       ; preds = %if.then.247, %if.end.243
  br label %do.body.250

do.body.250:                                      ; preds = %if.end.249
  br label %do.cond.251

do.cond.251:                                      ; preds = %do.body.250
  br label %do.end.252

do.end.252:                                       ; preds = %do.cond.251
  %187 = load i32, i32* %w, align 4, !tbaa !5
  %cmp253 = icmp sgt i32 %187, 0
  br i1 %cmp253, label %land.lhs.true, label %if.end.271

land.lhs.true:                                    ; preds = %do.end.252
  %188 = load i32, i32* %h, align 4, !tbaa !5
  %cmp255 = icmp sgt i32 %188, 0
  br i1 %cmp255, label %if.then.257, label %if.end.271

if.then.257:                                      ; preds = %land.lhs.true
  %189 = load i32, i32* %xoff, align 4, !tbaa !5
  %190 = load i32, i32* %x131, align 4, !tbaa !5
  %sub258 = sub nsw i32 %189, %190
  %191 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ptile.addr, align 8, !tbaa !1
  %ttrans259 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %191, i32 0, i32 9
  %192 = load %struct.gx_pattern_trans_s*, %struct.gx_pattern_trans_s** %ttrans259, align 8, !tbaa !152
  %width260 = getelementptr inbounds %struct.gx_pattern_trans_s, %struct.gx_pattern_trans_s* %192, i32 0, i32 9
  %193 = load i32, i32* %width260, align 4, !tbaa !153
  %call261 = call i32 @imod(i32 %sub258, i32 %193) #5
  store i32 %call261, i32* %px, align 4, !tbaa !5
  %194 = load i32, i32* %yoff, align 4, !tbaa !5
  %195 = load i32, i32* %y176, align 4, !tbaa !5
  %sub262 = sub nsw i32 %194, %195
  %196 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ptile.addr, align 8, !tbaa !1
  %ttrans263 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %196, i32 0, i32 9
  %197 = load %struct.gx_pattern_trans_s*, %struct.gx_pattern_trans_s** %ttrans263, align 8, !tbaa !152
  %height264 = getelementptr inbounds %struct.gx_pattern_trans_s, %struct.gx_pattern_trans_s* %197, i32 0, i32 10
  %198 = load i32, i32* %height264, align 4, !tbaa !156
  %call265 = call i32 @imod(i32 %sub262, i32 %198) #5
  store i32 %call265, i32* %py, align 4, !tbaa !5
  %199 = load i32, i32* %xoff, align 4, !tbaa !5
  %200 = load %struct.tile_fill_trans_state_s*, %struct.tile_fill_trans_state_s** %ptfs.addr, align 8, !tbaa !1
  %xoff266 = getelementptr inbounds %struct.tile_fill_trans_state_s, %struct.tile_fill_trans_state_s* %200, i32 0, i32 7
  store i32 %199, i32* %xoff266, align 4, !tbaa !187
  %201 = load i32, i32* %yoff, align 4, !tbaa !5
  %202 = load %struct.tile_fill_trans_state_s*, %struct.tile_fill_trans_state_s** %ptfs.addr, align 8, !tbaa !1
  %yoff267 = getelementptr inbounds %struct.tile_fill_trans_state_s, %struct.tile_fill_trans_state_s* %202, i32 0, i32 8
  store i32 %201, i32* %yoff267, align 4, !tbaa !188
  %203 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ptile.addr, align 8, !tbaa !1
  %ttrans268 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %203, i32 0, i32 9
  %204 = load %struct.gx_pattern_trans_s*, %struct.gx_pattern_trans_s** %ttrans268, align 8, !tbaa !152
  %pat_trans_fill = getelementptr inbounds %struct.gx_pattern_trans_s, %struct.gx_pattern_trans_s* %204, i32 0, i32 15
  %205 = load void (i32, i32, i32, i32, i32, i32, %struct.gx_color_tile_s*, %struct.gx_pattern_trans_s*)*, void (i32, i32, i32, i32, i32, i32, %struct.gx_color_tile_s*, %struct.gx_pattern_trans_s*)** %pat_trans_fill, align 8, !tbaa !189
  %206 = load i32, i32* %x131, align 4, !tbaa !5
  %207 = load i32, i32* %y176, align 4, !tbaa !5
  %208 = load i32, i32* %x131, align 4, !tbaa !5
  %209 = load i32, i32* %w, align 4, !tbaa !5
  %add269 = add nsw i32 %208, %209
  %210 = load i32, i32* %y176, align 4, !tbaa !5
  %211 = load i32, i32* %h, align 4, !tbaa !5
  %add270 = add nsw i32 %210, %211
  %212 = load i32, i32* %px, align 4, !tbaa !5
  %213 = load i32, i32* %py, align 4, !tbaa !5
  %214 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ptile.addr, align 8, !tbaa !1
  %215 = load %struct.gx_pattern_trans_s*, %struct.gx_pattern_trans_s** %fill_trans_buffer.addr, align 8, !tbaa !1
  call void %205(i32 %206, i32 %207, i32 %add269, i32 %add270, i32 %212, i32 %213, %struct.gx_color_tile_s* %214, %struct.gx_pattern_trans_s* %215) #5
  br label %if.end.271

if.end.271:                                       ; preds = %if.then.257, %land.lhs.true, %do.end.252
  %216 = bitcast i32* %py to i8*
  call void @llvm.lifetime.end(i64 4, i8* %216) #1
  %217 = bitcast i32* %px to i8*
  call void @llvm.lifetime.end(i64 4, i8* %217) #1
  %218 = bitcast i32* %yoff to i8*
  call void @llvm.lifetime.end(i64 4, i8* %218) #1
  %219 = bitcast i32* %xoff to i8*
  call void @llvm.lifetime.end(i64 4, i8* %219) #1
  %220 = bitcast i32* %h to i8*
  call void @llvm.lifetime.end(i64 4, i8* %220) #1
  %221 = bitcast i32* %w to i8*
  call void @llvm.lifetime.end(i64 4, i8* %221) #1
  %222 = bitcast i32* %y176 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %222) #1
  %223 = bitcast i32* %x131 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %223) #1
  br label %for.inc

for.inc:                                          ; preds = %if.end.271
  %224 = load i32, i32* %j, align 4, !tbaa !5
  %inc = add nsw i32 %224, 1
  store i32 %inc, i32* %j, align 4, !tbaa !5
  br label %for.cond.127

for.end:                                          ; preds = %for.cond.127
  br label %for.inc.272

for.inc.272:                                      ; preds = %for.end
  %225 = load i32, i32* %i, align 4, !tbaa !5
  %inc273 = add nsw i32 %225, 1
  store i32 %inc273, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end.274:                                      ; preds = %for.cond
  %226 = bitcast %struct.gx_pattern_trans_s** %ptrans_pat to i8*
  call void @llvm.lifetime.end(i64 8, i8* %226) #1
  %227 = bitcast %struct.gs_matrix_s* %step_matrix to i8*
  call void @llvm.lifetime.end(i64 24, i8* %227) #1
  %228 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %228) #1
  %229 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %229) #1
  %230 = bitcast i32* %j1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %230) #1
  %231 = bitcast i32* %j0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %231) #1
  %232 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %232) #1
  %233 = bitcast i32* %i0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %233) #1
  %234 = bitcast i32* %y1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %234) #1
  %235 = bitcast i32* %x1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %235) #1
  ret i32 0
}

declare i32 @tile_clip_initialize(%struct.gx_device_mask_clip_s*, %struct.gx_strip_bitmap_s*, %struct.gx_device_s*, i32, i32) #2

declare i32 @gs_bbox_transform_inverse(%struct.gs_rect_s*, %struct.gs_matrix_s*, %struct.gs_rect_s*) #2

; Function Attrs: nounwind readnone
declare double @ceil(double) #4

declare i32 @clist_read_icctable(%struct.gx_device_clist_reader_s*) #2

declare %struct.gsicc_link_cache_s* @gsicc_cache_new(%struct.gs_memory_s*) #2

declare i32 @clist_playback_file_bands(i32, %struct.gx_device_clist_reader_s*, %struct.gx_band_page_info_s*, %struct.gx_device_s*, i32, i32, i32, i32) #2

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
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !3, i64 0}
!7 = !{!8, !2, i64 0}
!8 = !{!"_pat", !2, i64 0}
!9 = !{!10, !3, i64 208}
!10 = !{!"gx_color_tile_s", !11, i64 0, !6, i64 8, !12, i64 16, !6, i64 32, !6, i64 36, !13, i64 40, !15, i64 64, !18, i64 96, !18, i64 144, !2, i64 192, !2, i64 200, !3, i64 208, !3, i64 209, !3, i64 210, !3, i64 211, !6, i64 216, !6, i64 220, !6, i64 224}
!11 = !{!"long", !3, i64 0}
!12 = !{!"gs_uid_s", !11, i64 0, !2, i64 8}
!13 = !{!"gs_matrix_s", !14, i64 0, !14, i64 4, !14, i64 8, !14, i64 12, !14, i64 16, !14, i64 20}
!14 = !{!"float", !3, i64 0}
!15 = !{!"gs_rect_s", !16, i64 0, !16, i64 16}
!16 = !{!"gs_point_s", !17, i64 0, !17, i64 8}
!17 = !{!"double", !3, i64 0}
!18 = !{!"gx_strip_bitmap_s", !2, i64 0, !6, i64 8, !19, i64 12, !11, i64 24, !20, i64 32, !20, i64 34, !20, i64 36, !20, i64 38, !6, i64 40}
!19 = !{!"gs_int_point_s", !6, i64 0, !6, i64 4}
!20 = !{!"short", !3, i64 0}
!21 = !{!10, !2, i64 200}
!22 = !{!10, !14, i64 56}
!23 = !{!24, !6, i64 64}
!24 = !{!"tile_fill_state_s", !2, i64 0, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !19, i64 64, !6, i64 72, !2, i64 80, !2, i64 88, !6, i64 96, !6, i64 100}
!25 = !{!18, !20, i64 32}
!26 = !{!10, !14, i64 60}
!27 = !{!24, !6, i64 68}
!28 = !{!18, !20, i64 34}
!29 = !{!24, !2, i64 40}
!30 = !{!24, !2, i64 48}
!31 = !{!32, !2, i64 1416}
!32 = !{!"gx_device_s", !6, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !6, i64 40, !2, i64 48, !33, i64 56, !6, i64 80, !6, i64 84, !6, i64 88, !34, i64 96, !36, i64 816, !6, i64 832, !6, i64 836, !6, i64 840, !6, i64 844, !6, i64 848, !6, i64 852, !3, i64 856, !3, i64 864, !6, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !11, i64 928, !11, i64 936, !6, i64 944, !6, i64 948, !6, i64 952, !6, i64 956, !6, i64 960, !11, i64 968, !11, i64 976, !37, i64 984, !6, i64 1052, !6, i64 1056, !38, i64 1064, !2, i64 1104, !3, i64 1112, !40, i64 1120, !41, i64 1144}
!33 = !{!"rc_header_s", !11, i64 0, !2, i64 8, !2, i64 16}
!34 = !{!"gx_device_color_info_s", !6, i64 0, !6, i64 4, !3, i64 8, !20, i64 12, !3, i64 14, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !35, i64 32, !3, i64 40, !3, i64 44, !3, i64 108, !3, i64 176, !2, i64 688, !3, i64 696, !11, i64 704, !6, i64 712}
!35 = !{!"gx_device_anti_alias_info_s", !6, i64 0, !6, i64 4}
!36 = !{!"gx_device_cached_colors_s", !11, i64 0, !11, i64 8}
!37 = !{!"gx_stroked_gradient_recognizer_s", !6, i64 0, !3, i64 4, !3, i64 36}
!38 = !{!"gdev_space_params_s", !11, i64 0, !11, i64 8, !39, i64 16, !6, i64 32, !3, i64 36}
!39 = !{!"gx_band_params_s", !6, i64 0, !6, i64 4, !11, i64 8}
!40 = !{!"gx_page_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16}
!41 = !{!"gx_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176, !2, i64 184, !2, i64 192, !2, i64 200, !2, i64 208, !2, i64 216, !2, i64 224, !2, i64 232, !2, i64 240, !2, i64 248, !2, i64 256, !2, i64 264, !2, i64 272, !2, i64 280, !2, i64 288, !2, i64 296, !2, i64 304, !2, i64 312, !2, i64 320, !2, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !2, i64 376, !2, i64 384, !2, i64 392, !2, i64 400, !2, i64 408, !2, i64 416, !2, i64 424, !2, i64 432, !2, i64 440, !2, i64 448, !2, i64 456, !2, i64 464, !2, i64 472, !2, i64 480, !2, i64 488, !2, i64 496, !2, i64 504, !2, i64 512, !2, i64 520, !2, i64 528, !2, i64 536, !2, i64 544, !2, i64 552, !2, i64 560, !2, i64 568, !2, i64 576}
!42 = !{!43, !6, i64 40}
!43 = !{!"gx_rop_source_s", !2, i64 0, !6, i64 8, !6, i64 12, !11, i64 16, !3, i64 24, !6, i64 40, !6, i64 44}
!44 = !{!32, !2, i64 1424}
!45 = !{!43, !2, i64 0}
!46 = !{!43, !6, i64 8}
!47 = !{!43, !6, i64 12}
!48 = !{!43, !11, i64 16}
!49 = !{!43, !6, i64 44}
!50 = !{!32, !2, i64 1696}
!51 = !{!24, !6, i64 24}
!52 = !{!24, !2, i64 32}
!53 = !{!24, !2, i64 88}
!54 = !{!55, !6, i64 10192}
!55 = !{!"gx_device_clist_reader_s", !6, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !6, i64 40, !2, i64 48, !33, i64 56, !6, i64 80, !6, i64 84, !6, i64 88, !34, i64 96, !36, i64 816, !6, i64 832, !6, i64 836, !6, i64 840, !6, i64 844, !6, i64 848, !6, i64 852, !3, i64 856, !3, i64 864, !6, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !11, i64 928, !11, i64 936, !6, i64 944, !6, i64 948, !6, i64 952, !6, i64 956, !6, i64 960, !11, i64 968, !11, i64 976, !37, i64 984, !6, i64 1052, !6, i64 1056, !38, i64 1064, !2, i64 1104, !3, i64 1112, !40, i64 1120, !41, i64 1144, !2, i64 1728, !56, i64 1736, !2, i64 1768, !2, i64 1776, !6, i64 1784, !39, i64 1792, !6, i64 1808, !6, i64 1812, !57, i64 1816, !58, i64 1840, !6, i64 1864, !6, i64 1868, !2, i64 1872, !6, i64 1880, !6, i64 1884, !59, i64 1888, !6, i64 10144, !11, i64 10152, !2, i64 10160, !2, i64 10168, !6, i64 10176, !2, i64 10184, !60, i64 10192, !2, i64 10208, !2, i64 10216, !6, i64 10224, !2, i64 10232, !6, i64 10240, !2, i64 10248, !2, i64 10256, !6, i64 10264, !6, i64 10268, !6, i64 10272}
!56 = !{!"gx_device_buf_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24}
!57 = !{!"gx_bits_cache_chunk_s", !2, i64 0, !2, i64 8, !6, i64 16, !6, i64 20}
!58 = !{!"gx_bits_cache_s", !2, i64 0, !6, i64 8, !6, i64 12, !6, i64 16}
!59 = !{!"gx_band_page_info_s", !3, i64 0, !2, i64 4096, !3, i64 4104, !2, i64 8200, !2, i64 8208, !6, i64 8216, !11, i64 8224, !11, i64 8232, !39, i64 8240}
!60 = !{!"gx_render_plane_s", !6, i64 0, !6, i64 4, !6, i64 8}
!61 = !{!55, !6, i64 10196}
!62 = !{!55, !6, i64 10200}
!63 = !{!55, !2, i64 10208}
!64 = !{!55, !6, i64 10224}
!65 = !{i64 0, i64 8, !1, i64 8, i64 4, !5, i64 12, i64 4, !5, i64 16, i64 4, !5, i64 24, i64 8, !66, i64 32, i64 2, !67, i64 34, i64 2, !67, i64 36, i64 2, !67, i64 38, i64 2, !67, i64 40, i64 4, !5}
!66 = !{!11, !11, i64 0}
!67 = !{!20, !20, i64 0}
!68 = !{!55, !6, i64 832}
!69 = !{!18, !6, i64 12}
!70 = !{!55, !6, i64 836}
!71 = !{!18, !6, i64 16}
!72 = !{!73, !2, i64 648}
!73 = !{!"gx_device_color_s", !2, i64 0, !3, i64 8, !19, i64 352, !6, i64 360, !74, i64 368, !76, i64 632}
!74 = !{!"gs_client_color_s", !2, i64 0, !75, i64 8}
!75 = !{!"gs_paint_color_s", !3, i64 0}
!76 = !{!"_mask", !77, i64 0, !11, i64 8, !2, i64 16}
!77 = !{!"mp_", !6, i64 0, !6, i64 4}
!78 = !{!24, !2, i64 0}
!79 = !{!32, !6, i64 848}
!80 = !{!32, !6, i64 100}
!81 = !{!24, !6, i64 72}
!82 = !{i64 0, i64 4, !5, i64 4, i64 4, !5}
!83 = !{!32, !2, i64 24}
!84 = !{!85, !2, i64 72}
!85 = !{!"gs_memory_s", !2, i64 0, !86, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!86 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!87 = !{!88, !2, i64 48}
!88 = !{!"gx_device_mask_clip_s", !6, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !6, i64 40, !2, i64 48, !33, i64 56, !6, i64 80, !6, i64 84, !6, i64 88, !34, i64 96, !36, i64 816, !6, i64 832, !6, i64 836, !6, i64 840, !6, i64 844, !6, i64 848, !6, i64 852, !3, i64 856, !3, i64 864, !6, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !11, i64 928, !11, i64 936, !6, i64 944, !6, i64 948, !6, i64 952, !6, i64 956, !6, i64 960, !11, i64 968, !11, i64 976, !37, i64 984, !6, i64 1052, !6, i64 1056, !38, i64 1064, !2, i64 1104, !3, i64 1112, !40, i64 1120, !41, i64 1144, !2, i64 1728, !18, i64 1736, !89, i64 1784, !19, i64 4576, !3, i64 4584}
!89 = !{!"gx_device_memory_s", !6, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !6, i64 40, !2, i64 48, !33, i64 56, !6, i64 80, !6, i64 84, !6, i64 88, !34, i64 96, !36, i64 816, !6, i64 832, !6, i64 836, !6, i64 840, !6, i64 844, !6, i64 848, !6, i64 852, !3, i64 856, !3, i64 864, !6, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !11, i64 928, !11, i64 936, !6, i64 944, !6, i64 948, !6, i64 952, !6, i64 956, !6, i64 960, !11, i64 968, !11, i64 976, !37, i64 984, !6, i64 1052, !6, i64 1056, !38, i64 1064, !2, i64 1104, !3, i64 1112, !40, i64 1120, !41, i64 1144, !2, i64 1728, !6, i64 1736, !2, i64 1744, !2, i64 1752, !6, i64 1760, !2, i64 1768, !6, i64 1776, !3, i64 1780, !13, i64 2548, !2, i64 2576, !90, i64 2584, !91, i64 2600, !92, i64 2624, !93, i64 2656, !94, i64 2680, !95, i64 2720, !96, i64 2736, !6, i64 2744, !6, i64 2748, !6, i64 2752, !6, i64 2756, !6, i64 2760, !11, i64 2768, !2, i64 2776, !6, i64 2784, !6, i64 2788}
!90 = !{!"gs_const_string_s", !2, i64 0, !6, i64 8}
!91 = !{!"_c24", !11, i64 0, !6, i64 8, !6, i64 12, !6, i64 16}
!92 = !{!"_c40", !11, i64 0, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24}
!93 = !{!"_c48", !11, i64 0, !6, i64 8, !6, i64 12, !6, i64 16}
!94 = !{!"_c56", !11, i64 0, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32}
!95 = !{!"_c64", !11, i64 0, !6, i64 8, !6, i64 12}
!96 = !{!"gs_log2_scale_point_s", !6, i64 0, !6, i64 4}
!97 = !{!24, !2, i64 56}
!98 = !{!73, !6, i64 632}
!99 = !{!73, !6, i64 636}
!100 = !{!10, !20, i64 176}
!101 = !{!10, !20, i64 178}
!102 = !{!24, !6, i64 8}
!103 = !{!24, !6, i64 16}
!104 = !{!24, !6, i64 12}
!105 = !{!24, !6, i64 20}
!106 = !{i64 0, i64 4, !107, i64 4, i64 4, !107, i64 8, i64 4, !107, i64 12, i64 4, !107, i64 16, i64 4, !107, i64 20, i64 4, !107}
!107 = !{!14, !14, i64 0}
!108 = !{!13, !14, i64 16}
!109 = !{!13, !14, i64 20}
!110 = !{!10, !17, i64 80}
!111 = !{!10, !17, i64 64}
!112 = !{!17, !17, i64 0}
!113 = !{!10, !17, i64 88}
!114 = !{!10, !17, i64 72}
!115 = !{!15, !17, i64 0}
!116 = !{!15, !17, i64 8}
!117 = !{!15, !17, i64 16}
!118 = !{!15, !17, i64 24}
!119 = !{!13, !14, i64 0}
!120 = !{!13, !14, i64 8}
!121 = !{!13, !14, i64 4}
!122 = !{!13, !14, i64 12}
!123 = !{!24, !6, i64 96}
!124 = !{!24, !6, i64 100}
!125 = !{!18, !2, i64 0}
!126 = !{!32, !2, i64 1672}
!127 = !{!18, !6, i64 8}
!128 = !{!18, !11, i64 24}
!129 = !{!10, !20, i64 130}
!130 = !{!32, !2, i64 1224}
!131 = !{!10, !6, i64 108}
!132 = !{!10, !6, i64 112}
!133 = !{!18, !20, i64 36}
!134 = !{!18, !20, i64 38}
!135 = !{!18, !6, i64 40}
!136 = !{!55, !2, i64 10232}
!137 = !{!55, !2, i64 10096}
!138 = !{!139, !2, i64 64}
!139 = !{!"clist_io_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72}
!140 = !{!55, !2, i64 10088}
!141 = !{!55, !2, i64 5984}
!142 = !{!55, !2, i64 10160}
!143 = !{!55, !2, i64 10168}
!144 = !{!55, !2, i64 24}
!145 = !{!85, !2, i64 208}
!146 = !{!147, !2, i64 40}
!147 = !{!"gx_device_color_type_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80}
!148 = !{!24, !2, i64 80}
!149 = !{i64 0, i64 8, !1, i64 8, i64 8, !66, i64 8, i64 8, !1, i64 16, i64 16, !150, i64 32, i64 4, !5, i64 36, i64 4, !5, i64 40, i64 8, !1, i64 8, i64 8, !1, i64 16, i64 2, !67, i64 18, i64 64, !150, i64 84, i64 256, !150, i64 340, i64 2, !67, i64 344, i64 8, !66, i64 8, i64 8, !1, i64 8, i64 128, !150, i64 352, i64 4, !5, i64 356, i64 4, !5, i64 360, i64 4, !5, i64 368, i64 8, !1, i64 376, i64 256, !150, i64 632, i64 4, !5, i64 636, i64 4, !5, i64 640, i64 8, !66, i64 648, i64 8, !1}
!150 = !{!3, !3, i64 0}
!151 = !{!73, !2, i64 0}
!152 = !{!10, !2, i64 192}
!153 = !{!154, !6, i64 64}
!154 = !{!"gx_pattern_trans_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !155, i64 32, !6, i64 48, !6, i64 52, !6, i64 56, !6, i64 60, !6, i64 64, !6, i64 68, !2, i64 72, !6, i64 80, !3, i64 84, !2, i64 88, !2, i64 96, !2, i64 104}
!155 = !{!"gs_int_rect_s", !19, i64 0, !19, i64 8}
!156 = !{!154, !6, i64 68}
!157 = !{!154, !2, i64 88}
!158 = !{!155, !6, i64 0}
!159 = !{!155, !6, i64 4}
!160 = !{!155, !6, i64 8}
!161 = !{!155, !6, i64 12}
!162 = !{!154, !6, i64 36}
!163 = !{!154, !6, i64 32}
!164 = !{!154, !2, i64 8}
!165 = !{!154, !6, i64 48}
!166 = !{!154, !6, i64 40}
!167 = !{!154, !6, i64 56}
!168 = !{!154, !6, i64 52}
!169 = !{!154, !6, i64 44}
!170 = !{!154, !6, i64 60}
!171 = !{!154, !3, i64 84}
!172 = !{!154, !2, i64 72}
!173 = !{!73, !6, i64 352}
!174 = !{!19, !6, i64 0}
!175 = !{!73, !6, i64 356}
!176 = !{!19, !6, i64 4}
!177 = !{!154, !2, i64 24}
!178 = !{!32, !6, i64 832}
!179 = !{!32, !6, i64 836}
!180 = !{!181, !6, i64 32}
!181 = !{!"tile_fill_trans_state_s", !2, i64 0, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !2, i64 24, !19, i64 32, !6, i64 40, !6, i64 44}
!182 = !{!181, !6, i64 36}
!183 = !{!181, !6, i64 8}
!184 = !{!181, !6, i64 16}
!185 = !{!181, !6, i64 12}
!186 = !{!181, !6, i64 20}
!187 = !{!181, !6, i64 40}
!188 = !{!181, !6, i64 44}
!189 = !{!154, !2, i64 96}
