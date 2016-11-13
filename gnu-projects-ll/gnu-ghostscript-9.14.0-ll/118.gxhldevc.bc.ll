; ModuleID = './gxhldevc.bc'
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
%struct.gx_io_device_s = type opaque
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
%struct.gx_image_type_s = type opaque
%struct.gx_image_enum_common_s = type opaque
%struct.gs_fixed_rect_s = type { %struct.gs_fixed_point_s, %struct.gs_fixed_point_s }
%struct.gs_image_common_s = type { %struct.gx_image_type_s*, %struct.gs_matrix_s }
%struct.gs_get_bits_params_s = type opaque
%struct.gs_composite_s = type { %struct.gs_composite_type_s*, i64, i32, %struct.gs_composite_s*, %struct.gs_composite_s* }
%struct.gs_composite_type_s = type { i8, %struct.gs_composite_type_procs_s }
%struct.gs_composite_type_procs_s = type { i32 (%struct.gs_composite_s*, %struct.gx_device_s**, %struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gs_composite_s*, %struct.gs_composite_s*)*, i32 (%struct.gs_composite_s*, i8*, i32*, %struct.gx_device_clist_writer_s*)*, i32 (%struct.gs_composite_s**, i8*, i32, %struct.gs_memory_s*)*, i32 (%struct.gs_composite_s*, i32, i32, %struct.gs_imager_state_s*)*, i32 (%struct.gs_composite_s*, %struct.gs_composite_s**, %struct.gx_device_s*)*, i32 (%struct.gs_composite_s*, i8, i8)*, i32 (%struct.gs_composite_s*, %struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gs_composite_s*, %struct.gx_device_s*, %struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gs_composite_s*, i32*, i32*, i32, i32)* }
%struct.gx_device_clist_writer_s = type opaque
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
%struct.gs_pattern1_instance_s = type opaque
%struct.gs_fill_attributes_s = type { %struct.gs_fixed_rect_s*, i32, %struct.gx_device_halftone_s*, i32, i32, i32, %struct.patch_fill_state_s* }
%struct.patch_fill_state_s = type opaque
%struct.gs_devn_params_s = type opaque
%struct.gx_process_page_options_s = type { i32 (i8*, %struct.gx_device_s*, %struct.gs_memory_s*, i32, i32, i8**)*, void (i8*, %struct.gx_device_s*, %struct.gs_memory_s*, i8*)*, i32 (i8*, %struct.gx_device_s*, %struct.gx_device_s*, %struct.gs_int_rect_s*, i8*)*, i32 (i8*, %struct.gx_device_s*, i8*)*, i8*, i32 }
%struct.gs_state_s = type { i32, %struct.gs_memory_s*, i8*, %struct.gx_line_params_s, i32, %struct.gs_matrix_fixed_s, i32, %struct.gs_point_s, %struct.gs_point_s, i32, i32, i16, i32, %struct.gs_transparency_source_s, %struct.gs_transparency_source_s, %struct.gs_xstate_trans_flags, i64, i32, i32, i32, %struct.gx_device_s*, i32, i32, i32, i32, i32, i32, float, %struct.gs_fixed_point_s, i32, i32, i32, float, i32, i32, %struct.gsicc_manager_s*, %struct.gsicc_link_cache_s*, %struct.gsicc_profile_cache_s*, %struct.gx_color_map_procs_s* (%struct.gs_imager_state_s*, %struct.gx_device_s*)*, %struct.gs_halftone_s*, [2 x %struct.gs_int_point_s], %struct.gx_device_halftone_s*, %struct.gs_cie_render_s*, i32, %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s*, %struct.gx_transfer_s, [64 x %struct.gx_transfer_map_s*], %struct.gx_cie_joint_caches_s*, %struct.gx_color_map_procs_s*, %struct.gs_devicen_color_map_s, %struct.gx_pattern_cache_s*, %struct.gs_color_space_s*, %struct.gs_color_space_s*, %struct.gx_cie_joint_caches_s*, %struct.gs_devicen_color_map_s, %struct.gs_state_s*, %struct.gs_matrix_s, i32, %struct.gs_matrix_s, i32, %struct.gx_path_s*, %struct.gx_clip_path_s*, %struct.gx_clip_stack_s*, %struct.gx_clip_path_s*, i64, i64, %struct.gx_clip_path_s*, i32, [2 x %struct.anon], %struct.gs_font_s*, %struct.gs_font_s*, %struct.gs_matrix_fixed_s, i32, i32, i32, %struct.gs_state_s*, i32, %struct.gx_device_s*, %struct.gs_device_filter_stack_s*, %struct.gs_state_client_procs_s }
%struct.gx_clip_stack_s = type opaque
%struct.anon = type { %struct.gs_color_space_s*, %struct.gs_client_color_s*, %struct.gx_device_color_s* }
%struct.gs_device_filter_stack_s = type { %struct.gs_device_filter_stack_s*, %struct.gs_device_filter_s*, %struct.gx_device_s*, %struct.rc_header_s }
%struct.gs_device_filter_s = type opaque
%struct.gs_state_client_procs_s = type { i8* (%struct.gs_memory_s*)*, i32 (i8*, i8*)*, void (i8*, %struct.gs_memory_s*)*, i32 (i8*, i8*, i32)* }
%struct.gs_paint_color_s = type { [64 x float] }
%struct._mask = type { %struct.mp_, i64, %struct.gx_color_tile_s* }
%struct.mp_ = type { i32, i32 }
%struct.gx_device_color_saved_s = type { %struct.gx_device_color_type_s*, %union._svc, %struct.gs_int_point_s }
%union._svc = type { %struct._svbin, [304 x i8] }
%struct._svbin = type { [2 x i64], i32, i32 }
%struct.gx_rop_source_s = type { i8*, i32, i32, i64, [2 x i64], i32, i32 }
%struct.gx_hl_saved_color_s = type { i64, i64, i32, %struct.gs_client_color_s, %struct.gx_device_color_saved_s }
%struct._svcol = type { [64 x i8], [64 x i32], i16 }
%struct._svdevn = type { [64 x i16] }
%struct._pattern = type { i64, %struct.gs_int_point_s }
%struct._pattern2 = type { i64, i32 }

@gx_dc_type_data_null = external constant %struct.gx_device_color_type_s, align 8
@gx_dc_pattern2 = external constant %struct.gx_device_color_type_s, align 8
@gx_dc_pattern = external constant %struct.gx_device_color_type_s, align 8
@gx_dc_type_data_pure = external constant %struct.gx_device_color_type_s, align 8
@gx_dc_pure_masked = external constant %struct.gx_device_color_type_s, align 8
@gx_dc_type_data_ht_binary = external constant %struct.gx_device_color_type_s, align 8
@gx_dc_type_data_ht_colored = external constant %struct.gx_device_color_type_s, align 8
@gx_dc_type_data_devn = external constant %struct.gx_device_color_type_s, align 8

; Function Attrs: nounwind uwtable
define void @gx_hld_saved_color_init(%struct.gx_hl_saved_color_s* %psc) #0 {
entry:
  %psc.addr = alloca %struct.gx_hl_saved_color_s*, align 8
  %temp_devc = alloca %struct.gx_device_color_s, align 8
  store %struct.gx_hl_saved_color_s* %psc, %struct.gx_hl_saved_color_s** %psc.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_color_s* %temp_devc to i8*
  call void @llvm.lifetime.start(i64 656, i8* %0) #1
  %1 = load %struct.gx_hl_saved_color_s*, %struct.gx_hl_saved_color_s** %psc.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_hl_saved_color_s* %1 to i8*
  %call = call i8* @memset(i8* %2, i32 0, i64 632) #4
  %3 = load %struct.gx_hl_saved_color_s*, %struct.gx_hl_saved_color_s** %psc.addr, align 8, !tbaa !1
  %pattern_id = getelementptr inbounds %struct.gx_hl_saved_color_s, %struct.gx_hl_saved_color_s* %3, i32 0, i32 1
  store i64 0, i64* %pattern_id, align 8, !tbaa !5
  %4 = load %struct.gx_hl_saved_color_s*, %struct.gx_hl_saved_color_s** %psc.addr, align 8, !tbaa !1
  %color_space_id = getelementptr inbounds %struct.gx_hl_saved_color_s, %struct.gx_hl_saved_color_s* %4, i32 0, i32 0
  store i64 0, i64* %color_space_id, align 8, !tbaa !13
  %type = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %temp_devc, i32 0, i32 0
  store %struct.gx_device_color_type_s* @gx_dc_type_data_null, %struct.gx_device_color_type_s** %type, align 8, !tbaa !14
  %type1 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %temp_devc, i32 0, i32 0
  %5 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type1, align 8, !tbaa !14
  %save_dc = getelementptr inbounds %struct.gx_device_color_type_s, %struct.gx_device_color_type_s* %5, i32 0, i32 1
  %6 = load void (%struct.gx_device_color_s*, %struct.gx_device_color_saved_s*)*, void (%struct.gx_device_color_s*, %struct.gx_device_color_saved_s*)** %save_dc, align 8, !tbaa !18
  %7 = load %struct.gx_hl_saved_color_s*, %struct.gx_hl_saved_color_s** %psc.addr, align 8, !tbaa !1
  %saved_dev_color = getelementptr inbounds %struct.gx_hl_saved_color_s, %struct.gx_hl_saved_color_s* %7, i32 0, i32 4
  call void %6(%struct.gx_device_color_s* %temp_devc, %struct.gx_device_color_saved_s* %saved_dev_color) #5
  %8 = bitcast %struct.gx_device_color_s* %temp_devc to i8*
  call void @llvm.lifetime.end(i64 656, i8* %8) #1
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare i8* @memset(i8*, i32, i64) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define %struct.gs_state_s* @gx_hld_get_gstate_ptr(%struct.gs_imager_state_s* %pis) #0 {
entry:
  %retval = alloca %struct.gs_state_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %0 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %cmp = icmp eq %struct.gs_imager_state_s* %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %is_gstate = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %1, i32 0, i32 0
  %2 = load i32, i32* %is_gstate, align 4, !tbaa !20
  %cmp1 = icmp eq i32 %2, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store %struct.gs_state_s* null, %struct.gs_state_s** %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %3 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %4 = bitcast %struct.gs_imager_state_s* %3 to %struct.gs_state_s*
  store %struct.gs_state_s* %4, %struct.gs_state_s** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load %struct.gs_state_s*, %struct.gs_state_s** %retval
  ret %struct.gs_state_s* %5
}

; Function Attrs: nounwind uwtable
define i32 @gx_hld_save_color(%struct.gs_imager_state_s* %pis, %struct.gx_device_color_s* %pdevc, %struct.gx_hl_saved_color_s* %psc) #0 {
entry:
  %retval = alloca i32, align 4
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %pdevc.addr = alloca %struct.gx_device_color_s*, align 8
  %psc.addr = alloca %struct.gx_hl_saved_color_s*, align 8
  %pgs = alloca %struct.gs_state_s*, align 8
  %cleanup.dest.slot = alloca i32
  %pcs = alloca %struct.gs_color_space_s*, align 8
  %i = alloca i32, align 4
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gx_device_color_s* %pdevc, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  store %struct.gx_hl_saved_color_s* %psc, %struct.gx_hl_saved_color_s** %psc.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_state_s** %pgs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %call = call %struct.gs_state_s* @gx_hld_get_gstate_ptr(%struct.gs_imager_state_s* %1) #5
  store %struct.gs_state_s* %call, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %2 = load %struct.gx_hl_saved_color_s*, %struct.gx_hl_saved_color_s** %psc.addr, align 8, !tbaa !1
  %3 = bitcast %struct.gx_hl_saved_color_s* %2 to i8*
  %call1 = call i8* @memset(i8* %3, i32 0, i64 632) #4
  %4 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %cmp = icmp eq %struct.gx_device_color_s* %4, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %5 = load %struct.gx_hl_saved_color_s*, %struct.gx_hl_saved_color_s** %psc.addr, align 8, !tbaa !1
  call void @gx_hld_saved_color_init(%struct.gx_hl_saved_color_s* %5) #5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %entry
  %6 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %cmp2 = icmp eq %struct.gs_state_s* %6, null
  br i1 %cmp2, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %if.else
  %7 = load %struct.gx_hl_saved_color_s*, %struct.gx_hl_saved_color_s** %psc.addr, align 8, !tbaa !1
  %pattern_id = getelementptr inbounds %struct.gx_hl_saved_color_s, %struct.gx_hl_saved_color_s* %7, i32 0, i32 1
  store i64 0, i64* %pattern_id, align 8, !tbaa !5
  %8 = load %struct.gx_hl_saved_color_s*, %struct.gx_hl_saved_color_s** %psc.addr, align 8, !tbaa !1
  %color_space_id = getelementptr inbounds %struct.gx_hl_saved_color_s, %struct.gx_hl_saved_color_s* %8, i32 0, i32 0
  store i64 0, i64* %color_space_id, align 8, !tbaa !13
  %9 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %9, i32 0, i32 0
  %10 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type, align 8, !tbaa !14
  %save_dc = getelementptr inbounds %struct.gx_device_color_type_s, %struct.gx_device_color_type_s* %10, i32 0, i32 1
  %11 = load void (%struct.gx_device_color_s*, %struct.gx_device_color_saved_s*)*, void (%struct.gx_device_color_s*, %struct.gx_device_color_saved_s*)** %save_dc, align 8, !tbaa !18
  %12 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %13 = load %struct.gx_hl_saved_color_s*, %struct.gx_hl_saved_color_s** %psc.addr, align 8, !tbaa !1
  %saved_dev_color = getelementptr inbounds %struct.gx_hl_saved_color_s, %struct.gx_hl_saved_color_s* %13, i32 0, i32 4
  call void %11(%struct.gx_device_color_s* %12, %struct.gx_device_color_saved_s* %saved_dev_color) #5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else.4:                                        ; preds = %if.else
  %14 = bitcast %struct.gs_color_space_s** %pcs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #1
  %15 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %color = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %15, i32 0, i32 69
  %arrayidx = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* %color, i32 0, i64 0
  %color_space = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx, i32 0, i32 0
  %16 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %color_space, align 8, !tbaa !35
  store %struct.gs_color_space_s* %16, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %17 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #1
  %18 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %call5 = call i32 @gs_color_space_num_components(%struct.gs_color_space_s* %18) #5
  store i32 %call5, i32* %i, align 4, !tbaa !37
  %19 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %id = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %19, i32 0, i32 2
  %20 = load i64, i64* %id, align 8, !tbaa !38
  %21 = load %struct.gx_hl_saved_color_s*, %struct.gx_hl_saved_color_s** %psc.addr, align 8, !tbaa !1
  %color_space_id6 = getelementptr inbounds %struct.gx_hl_saved_color_s, %struct.gx_hl_saved_color_s* %21, i32 0, i32 0
  store i64 %20, i64* %color_space_id6, align 8, !tbaa !13
  %22 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %type7 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %22, i32 0, i32 0
  %23 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type7, align 8, !tbaa !14
  %save_dc8 = getelementptr inbounds %struct.gx_device_color_type_s, %struct.gx_device_color_type_s* %23, i32 0, i32 1
  %24 = load void (%struct.gx_device_color_s*, %struct.gx_device_color_saved_s*)*, void (%struct.gx_device_color_s*, %struct.gx_device_color_saved_s*)** %save_dc8, align 8, !tbaa !18
  %25 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %26 = load %struct.gx_hl_saved_color_s*, %struct.gx_hl_saved_color_s** %psc.addr, align 8, !tbaa !1
  %saved_dev_color9 = getelementptr inbounds %struct.gx_hl_saved_color_s, %struct.gx_hl_saved_color_s* %26, i32 0, i32 4
  call void %24(%struct.gx_device_color_s* %25, %struct.gx_device_color_saved_s* %saved_dev_color9) #5
  %27 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %type10 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %27, i32 0, i32 0
  %28 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type10, align 8, !tbaa !14
  %cmp11 = icmp eq %struct.gx_device_color_type_s* %28, @gx_dc_pattern2
  br i1 %cmp11, label %if.then.12, label %if.else.13

if.then.12:                                       ; preds = %if.else.4
  store i32 0, i32* %i, align 4, !tbaa !37
  br label %if.end.17

if.else.13:                                       ; preds = %if.else.4
  %29 = load i32, i32* %i, align 4, !tbaa !37
  %cmp14 = icmp slt i32 %29, 0
  br i1 %cmp14, label %if.then.15, label %if.end

if.then.15:                                       ; preds = %if.else.13
  %30 = load i32, i32* %i, align 4, !tbaa !37
  %sub = sub nsw i32 0, %30
  %sub16 = sub nsw i32 %sub, 1
  store i32 %sub16, i32* %i, align 4, !tbaa !37
  br label %if.end

if.end:                                           ; preds = %if.then.15, %if.else.13
  br label %if.end.17

if.end.17:                                        ; preds = %if.end, %if.then.12
  %31 = load i32, i32* %i, align 4, !tbaa !37
  %dec = add nsw i32 %31, -1
  store i32 %dec, i32* %i, align 4, !tbaa !37
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.17
  %32 = load i32, i32* %i, align 4, !tbaa !37
  %cmp18 = icmp sge i32 %32, 0
  br i1 %cmp18, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %33 = load i32, i32* %i, align 4, !tbaa !37
  %idxprom = sext i32 %33 to i64
  %34 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %ccolor = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %34, i32 0, i32 4
  %paint = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %ccolor, i32 0, i32 1
  %values = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint, i32 0, i32 0
  %arrayidx19 = getelementptr inbounds [64 x float], [64 x float]* %values, i32 0, i64 %idxprom
  %35 = load float, float* %arrayidx19, align 4, !tbaa !41
  %36 = load i32, i32* %i, align 4, !tbaa !37
  %idxprom20 = sext i32 %36 to i64
  %37 = load %struct.gx_hl_saved_color_s*, %struct.gx_hl_saved_color_s** %psc.addr, align 8, !tbaa !1
  %ccolor21 = getelementptr inbounds %struct.gx_hl_saved_color_s, %struct.gx_hl_saved_color_s* %37, i32 0, i32 3
  %paint22 = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %ccolor21, i32 0, i32 1
  %values23 = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint22, i32 0, i32 0
  %arrayidx24 = getelementptr inbounds [64 x float], [64 x float]* %values23, i32 0, i64 %idxprom20
  store float %35, float* %arrayidx24, align 4, !tbaa !41
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %38 = load i32, i32* %i, align 4, !tbaa !37
  %dec25 = add nsw i32 %38, -1
  store i32 %dec25, i32* %i, align 4, !tbaa !37
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %39 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %type26 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %39, i32 0, i32 0
  %40 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type26, align 8, !tbaa !14
  %cmp27 = icmp eq %struct.gx_device_color_type_s* %40, @gx_dc_pattern
  br i1 %cmp27, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.end
  %41 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %type28 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %41, i32 0, i32 0
  %42 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type28, align 8, !tbaa !14
  %cmp29 = icmp eq %struct.gx_device_color_type_s* %42, @gx_dc_pattern2
  br i1 %cmp29, label %land.lhs.true, label %if.else.34

land.lhs.true:                                    ; preds = %lor.lhs.false, %for.end
  %43 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %ccolor_valid = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %43, i32 0, i32 3
  %44 = load i32, i32* %ccolor_valid, align 4, !tbaa !42
  %tobool = icmp ne i32 %44, 0
  br i1 %tobool, label %if.then.30, label %if.else.34

if.then.30:                                       ; preds = %land.lhs.true
  %45 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %ccolor31 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %45, i32 0, i32 4
  %pattern = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %ccolor31, i32 0, i32 0
  %46 = load %struct.gs_pattern_instance_s*, %struct.gs_pattern_instance_s** %pattern, align 8, !tbaa !43
  %pattern_id32 = getelementptr inbounds %struct.gs_pattern_instance_s, %struct.gs_pattern_instance_s* %46, i32 0, i32 3
  %47 = load i64, i64* %pattern_id32, align 8, !tbaa !44
  %48 = load %struct.gx_hl_saved_color_s*, %struct.gx_hl_saved_color_s** %psc.addr, align 8, !tbaa !1
  %pattern_id33 = getelementptr inbounds %struct.gx_hl_saved_color_s, %struct.gx_hl_saved_color_s* %48, i32 0, i32 1
  store i64 %47, i64* %pattern_id33, align 8, !tbaa !5
  br label %if.end.36

if.else.34:                                       ; preds = %land.lhs.true, %lor.lhs.false
  %49 = load %struct.gx_hl_saved_color_s*, %struct.gx_hl_saved_color_s** %psc.addr, align 8, !tbaa !1
  %pattern_id35 = getelementptr inbounds %struct.gx_hl_saved_color_s, %struct.gx_hl_saved_color_s* %49, i32 0, i32 1
  store i64 0, i64* %pattern_id35, align 8, !tbaa !5
  br label %if.end.36

if.end.36:                                        ; preds = %if.else.34, %if.then.30
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  %50 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %50) #1
  %51 = bitcast %struct.gs_color_space_s** %pcs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %51) #1
  br label %cleanup

cleanup:                                          ; preds = %if.end.36, %if.then.3, %if.then
  %52 = bitcast %struct.gs_state_s** %pgs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %52) #1
  %53 = load i32, i32* %retval
  ret i32 %53
}

declare i32 @gs_color_space_num_components(%struct.gs_color_space_s*) #3

; Function Attrs: nounwind uwtable
define i32 @gx_hld_saved_color_equal(%struct.gx_hl_saved_color_s* %psc1, %struct.gx_hl_saved_color_s* %psc2) #0 {
entry:
  %retval = alloca i32, align 4
  %psc1.addr = alloca %struct.gx_hl_saved_color_s*, align 8
  %psc2.addr = alloca %struct.gx_hl_saved_color_s*, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_hl_saved_color_s* %psc1, %struct.gx_hl_saved_color_s** %psc1.addr, align 8, !tbaa !1
  store %struct.gx_hl_saved_color_s* %psc2, %struct.gx_hl_saved_color_s** %psc2.addr, align 8, !tbaa !1
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.gx_hl_saved_color_s*, %struct.gx_hl_saved_color_s** %psc1.addr, align 8, !tbaa !1
  %saved_dev_color = getelementptr inbounds %struct.gx_hl_saved_color_s, %struct.gx_hl_saved_color_s* %1, i32 0, i32 4
  %type = getelementptr inbounds %struct.gx_device_color_saved_s, %struct.gx_device_color_saved_s* %saved_dev_color, i32 0, i32 0
  %2 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type, align 8, !tbaa !46
  %3 = load %struct.gx_hl_saved_color_s*, %struct.gx_hl_saved_color_s** %psc2.addr, align 8, !tbaa !1
  %saved_dev_color1 = getelementptr inbounds %struct.gx_hl_saved_color_s, %struct.gx_hl_saved_color_s* %3, i32 0, i32 4
  %type2 = getelementptr inbounds %struct.gx_device_color_saved_s, %struct.gx_device_color_saved_s* %saved_dev_color1, i32 0, i32 0
  %4 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type2, align 8, !tbaa !46
  %cmp = icmp ne %struct.gx_device_color_type_s* %2, %4
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %5 = load %struct.gx_hl_saved_color_s*, %struct.gx_hl_saved_color_s** %psc1.addr, align 8, !tbaa !1
  %color_space_id = getelementptr inbounds %struct.gx_hl_saved_color_s, %struct.gx_hl_saved_color_s* %5, i32 0, i32 0
  %6 = load i64, i64* %color_space_id, align 8, !tbaa !13
  %7 = load %struct.gx_hl_saved_color_s*, %struct.gx_hl_saved_color_s** %psc2.addr, align 8, !tbaa !1
  %color_space_id3 = getelementptr inbounds %struct.gx_hl_saved_color_s, %struct.gx_hl_saved_color_s* %7, i32 0, i32 0
  %8 = load i64, i64* %color_space_id3, align 8, !tbaa !13
  %cmp4 = icmp ne i64 %6, %8
  br i1 %cmp4, label %if.then, label %lor.lhs.false.5

lor.lhs.false.5:                                  ; preds = %lor.lhs.false
  %9 = load %struct.gx_hl_saved_color_s*, %struct.gx_hl_saved_color_s** %psc1.addr, align 8, !tbaa !1
  %pattern_id = getelementptr inbounds %struct.gx_hl_saved_color_s, %struct.gx_hl_saved_color_s* %9, i32 0, i32 1
  %10 = load i64, i64* %pattern_id, align 8, !tbaa !5
  %11 = load %struct.gx_hl_saved_color_s*, %struct.gx_hl_saved_color_s** %psc2.addr, align 8, !tbaa !1
  %pattern_id6 = getelementptr inbounds %struct.gx_hl_saved_color_s, %struct.gx_hl_saved_color_s* %11, i32 0, i32 1
  %12 = load i64, i64* %pattern_id6, align 8, !tbaa !5
  %cmp7 = icmp ne i64 %10, %12
  br i1 %cmp7, label %if.then, label %lor.lhs.false.8

lor.lhs.false.8:                                  ; preds = %lor.lhs.false.5
  %13 = load %struct.gx_hl_saved_color_s*, %struct.gx_hl_saved_color_s** %psc1.addr, align 8, !tbaa !1
  %ccolor_valid = getelementptr inbounds %struct.gx_hl_saved_color_s, %struct.gx_hl_saved_color_s* %13, i32 0, i32 2
  %14 = load i32, i32* %ccolor_valid, align 4, !tbaa !47
  %15 = load %struct.gx_hl_saved_color_s*, %struct.gx_hl_saved_color_s** %psc2.addr, align 8, !tbaa !1
  %ccolor_valid9 = getelementptr inbounds %struct.gx_hl_saved_color_s, %struct.gx_hl_saved_color_s* %15, i32 0, i32 2
  %16 = load i32, i32* %ccolor_valid9, align 4, !tbaa !47
  %cmp10 = icmp ne i32 %14, %16
  br i1 %cmp10, label %if.then, label %lor.lhs.false.11

lor.lhs.false.11:                                 ; preds = %lor.lhs.false.8
  %17 = load %struct.gx_hl_saved_color_s*, %struct.gx_hl_saved_color_s** %psc1.addr, align 8, !tbaa !1
  %ccolor = getelementptr inbounds %struct.gx_hl_saved_color_s, %struct.gx_hl_saved_color_s* %17, i32 0, i32 3
  %pattern = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %ccolor, i32 0, i32 0
  %18 = load %struct.gs_pattern_instance_s*, %struct.gs_pattern_instance_s** %pattern, align 8, !tbaa !48
  %19 = load %struct.gx_hl_saved_color_s*, %struct.gx_hl_saved_color_s** %psc2.addr, align 8, !tbaa !1
  %ccolor12 = getelementptr inbounds %struct.gx_hl_saved_color_s, %struct.gx_hl_saved_color_s* %19, i32 0, i32 3
  %pattern13 = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %ccolor12, i32 0, i32 0
  %20 = load %struct.gs_pattern_instance_s*, %struct.gs_pattern_instance_s** %pattern13, align 8, !tbaa !48
  %cmp14 = icmp ne %struct.gs_pattern_instance_s* %18, %20
  br i1 %cmp14, label %if.then, label %lor.lhs.false.15

lor.lhs.false.15:                                 ; preds = %lor.lhs.false.11
  %21 = load %struct.gx_hl_saved_color_s*, %struct.gx_hl_saved_color_s** %psc1.addr, align 8, !tbaa !1
  %saved_dev_color16 = getelementptr inbounds %struct.gx_hl_saved_color_s, %struct.gx_hl_saved_color_s* %21, i32 0, i32 4
  %phase = getelementptr inbounds %struct.gx_device_color_saved_s, %struct.gx_device_color_saved_s* %saved_dev_color16, i32 0, i32 2
  %x = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %phase, i32 0, i32 0
  %22 = load i32, i32* %x, align 4, !tbaa !49
  %23 = load %struct.gx_hl_saved_color_s*, %struct.gx_hl_saved_color_s** %psc2.addr, align 8, !tbaa !1
  %saved_dev_color17 = getelementptr inbounds %struct.gx_hl_saved_color_s, %struct.gx_hl_saved_color_s* %23, i32 0, i32 4
  %phase18 = getelementptr inbounds %struct.gx_device_color_saved_s, %struct.gx_device_color_saved_s* %saved_dev_color17, i32 0, i32 2
  %x19 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %phase18, i32 0, i32 0
  %24 = load i32, i32* %x19, align 4, !tbaa !49
  %cmp20 = icmp ne i32 %22, %24
  br i1 %cmp20, label %if.then, label %lor.lhs.false.21

lor.lhs.false.21:                                 ; preds = %lor.lhs.false.15
  %25 = load %struct.gx_hl_saved_color_s*, %struct.gx_hl_saved_color_s** %psc1.addr, align 8, !tbaa !1
  %saved_dev_color22 = getelementptr inbounds %struct.gx_hl_saved_color_s, %struct.gx_hl_saved_color_s* %25, i32 0, i32 4
  %phase23 = getelementptr inbounds %struct.gx_device_color_saved_s, %struct.gx_device_color_saved_s* %saved_dev_color22, i32 0, i32 2
  %y = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %phase23, i32 0, i32 1
  %26 = load i32, i32* %y, align 4, !tbaa !50
  %27 = load %struct.gx_hl_saved_color_s*, %struct.gx_hl_saved_color_s** %psc2.addr, align 8, !tbaa !1
  %saved_dev_color24 = getelementptr inbounds %struct.gx_hl_saved_color_s, %struct.gx_hl_saved_color_s* %27, i32 0, i32 4
  %phase25 = getelementptr inbounds %struct.gx_device_color_saved_s, %struct.gx_device_color_saved_s* %saved_dev_color24, i32 0, i32 2
  %y26 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %phase25, i32 0, i32 1
  %28 = load i32, i32* %y26, align 4, !tbaa !50
  %cmp27 = icmp ne i32 %26, %28
  br i1 %cmp27, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.21, %lor.lhs.false.15, %lor.lhs.false.11, %lor.lhs.false.8, %lor.lhs.false.5, %lor.lhs.false, %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false.21
  store i32 0, i32* %i, align 4, !tbaa !37
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %29 = load i32, i32* %i, align 4, !tbaa !37
  %cmp28 = icmp slt i32 %29, 64
  br i1 %cmp28, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %30 = load i32, i32* %i, align 4, !tbaa !37
  %idxprom = sext i32 %30 to i64
  %31 = load %struct.gx_hl_saved_color_s*, %struct.gx_hl_saved_color_s** %psc1.addr, align 8, !tbaa !1
  %ccolor29 = getelementptr inbounds %struct.gx_hl_saved_color_s, %struct.gx_hl_saved_color_s* %31, i32 0, i32 3
  %paint = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %ccolor29, i32 0, i32 1
  %values = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint, i32 0, i32 0
  %arrayidx = getelementptr inbounds [64 x float], [64 x float]* %values, i32 0, i64 %idxprom
  %32 = load float, float* %arrayidx, align 4, !tbaa !41
  %33 = load i32, i32* %i, align 4, !tbaa !37
  %idxprom30 = sext i32 %33 to i64
  %34 = load %struct.gx_hl_saved_color_s*, %struct.gx_hl_saved_color_s** %psc2.addr, align 8, !tbaa !1
  %ccolor31 = getelementptr inbounds %struct.gx_hl_saved_color_s, %struct.gx_hl_saved_color_s* %34, i32 0, i32 3
  %paint32 = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %ccolor31, i32 0, i32 1
  %values33 = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint32, i32 0, i32 0
  %arrayidx34 = getelementptr inbounds [64 x float], [64 x float]* %values33, i32 0, i64 %idxprom30
  %35 = load float, float* %arrayidx34, align 4, !tbaa !41
  %cmp35 = fcmp une float %32, %35
  br i1 %cmp35, label %if.then.36, label %if.end.37

if.then.36:                                       ; preds = %for.body
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.37:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.37
  %36 = load i32, i32* %i, align 4, !tbaa !37
  %inc = add nsw i32 %36, 1
  store i32 %inc, i32* %i, align 4, !tbaa !37
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %37 = load %struct.gx_hl_saved_color_s*, %struct.gx_hl_saved_color_s** %psc1.addr, align 8, !tbaa !1
  %saved_dev_color38 = getelementptr inbounds %struct.gx_hl_saved_color_s, %struct.gx_hl_saved_color_s* %37, i32 0, i32 4
  %type39 = getelementptr inbounds %struct.gx_device_color_saved_s, %struct.gx_device_color_saved_s* %saved_dev_color38, i32 0, i32 0
  %38 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type39, align 8, !tbaa !51
  %cmp40 = icmp eq %struct.gx_device_color_type_s* %38, @gx_dc_type_data_pure
  br i1 %cmp40, label %if.then.45, label %lor.lhs.false.41

lor.lhs.false.41:                                 ; preds = %for.end
  %39 = load %struct.gx_hl_saved_color_s*, %struct.gx_hl_saved_color_s** %psc1.addr, align 8, !tbaa !1
  %saved_dev_color42 = getelementptr inbounds %struct.gx_hl_saved_color_s, %struct.gx_hl_saved_color_s* %39, i32 0, i32 4
  %type43 = getelementptr inbounds %struct.gx_device_color_saved_s, %struct.gx_device_color_saved_s* %saved_dev_color42, i32 0, i32 0
  %40 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type43, align 8, !tbaa !46
  %cmp44 = icmp eq %struct.gx_device_color_type_s* %40, @gx_dc_pure_masked
  br i1 %cmp44, label %if.then.45, label %if.else

if.then.45:                                       ; preds = %lor.lhs.false.41, %for.end
  %41 = load %struct.gx_hl_saved_color_s*, %struct.gx_hl_saved_color_s** %psc1.addr, align 8, !tbaa !1
  %saved_dev_color46 = getelementptr inbounds %struct.gx_hl_saved_color_s, %struct.gx_hl_saved_color_s* %41, i32 0, i32 4
  %colors = getelementptr inbounds %struct.gx_device_color_saved_s, %struct.gx_device_color_saved_s* %saved_dev_color46, i32 0, i32 1
  %pure = bitcast %union._svc* %colors to i64*
  %42 = load i64, i64* %pure, align 8, !tbaa !52
  %43 = load %struct.gx_hl_saved_color_s*, %struct.gx_hl_saved_color_s** %psc2.addr, align 8, !tbaa !1
  %saved_dev_color47 = getelementptr inbounds %struct.gx_hl_saved_color_s, %struct.gx_hl_saved_color_s* %43, i32 0, i32 4
  %colors48 = getelementptr inbounds %struct.gx_device_color_saved_s, %struct.gx_device_color_saved_s* %saved_dev_color47, i32 0, i32 1
  %pure49 = bitcast %union._svc* %colors48 to i64*
  %44 = load i64, i64* %pure49, align 8, !tbaa !52
  %cmp50 = icmp ne i64 %42, %44
  br i1 %cmp50, label %if.then.51, label %if.end.52

if.then.51:                                       ; preds = %if.then.45
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.52:                                        ; preds = %if.then.45
  br label %if.end.241

if.else:                                          ; preds = %lor.lhs.false.41
  %45 = load %struct.gx_hl_saved_color_s*, %struct.gx_hl_saved_color_s** %psc1.addr, align 8, !tbaa !1
  %saved_dev_color53 = getelementptr inbounds %struct.gx_hl_saved_color_s, %struct.gx_hl_saved_color_s* %45, i32 0, i32 4
  %type54 = getelementptr inbounds %struct.gx_device_color_saved_s, %struct.gx_device_color_saved_s* %saved_dev_color53, i32 0, i32 0
  %46 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type54, align 8, !tbaa !51
  %cmp55 = icmp eq %struct.gx_device_color_type_s* %46, @gx_dc_type_data_ht_binary
  br i1 %cmp55, label %if.then.56, label %if.else.98

if.then.56:                                       ; preds = %if.else
  %47 = load %struct.gx_hl_saved_color_s*, %struct.gx_hl_saved_color_s** %psc1.addr, align 8, !tbaa !1
  %saved_dev_color57 = getelementptr inbounds %struct.gx_hl_saved_color_s, %struct.gx_hl_saved_color_s* %47, i32 0, i32 4
  %colors58 = getelementptr inbounds %struct.gx_device_color_saved_s, %struct.gx_device_color_saved_s* %saved_dev_color57, i32 0, i32 1
  %binary = bitcast %union._svc* %colors58 to %struct._svbin*
  %b_color = getelementptr inbounds %struct._svbin, %struct._svbin* %binary, i32 0, i32 0
  %arrayidx59 = getelementptr inbounds [2 x i64], [2 x i64]* %b_color, i32 0, i64 0
  %48 = load i64, i64* %arrayidx59, align 8, !tbaa !52
  %49 = load %struct.gx_hl_saved_color_s*, %struct.gx_hl_saved_color_s** %psc2.addr, align 8, !tbaa !1
  %saved_dev_color60 = getelementptr inbounds %struct.gx_hl_saved_color_s, %struct.gx_hl_saved_color_s* %49, i32 0, i32 4
  %colors61 = getelementptr inbounds %struct.gx_device_color_saved_s, %struct.gx_device_color_saved_s* %saved_dev_color60, i32 0, i32 1
  %binary62 = bitcast %union._svc* %colors61 to %struct._svbin*
  %b_color63 = getelementptr inbounds %struct._svbin, %struct._svbin* %binary62, i32 0, i32 0
  %arrayidx64 = getelementptr inbounds [2 x i64], [2 x i64]* %b_color63, i32 0, i64 0
  %50 = load i64, i64* %arrayidx64, align 8, !tbaa !52
  %cmp65 = icmp ne i64 %48, %50
  br i1 %cmp65, label %if.then.96, label %lor.lhs.false.66

lor.lhs.false.66:                                 ; preds = %if.then.56
  %51 = load %struct.gx_hl_saved_color_s*, %struct.gx_hl_saved_color_s** %psc1.addr, align 8, !tbaa !1
  %saved_dev_color67 = getelementptr inbounds %struct.gx_hl_saved_color_s, %struct.gx_hl_saved_color_s* %51, i32 0, i32 4
  %colors68 = getelementptr inbounds %struct.gx_device_color_saved_s, %struct.gx_device_color_saved_s* %saved_dev_color67, i32 0, i32 1
  %binary69 = bitcast %union._svc* %colors68 to %struct._svbin*
  %b_color70 = getelementptr inbounds %struct._svbin, %struct._svbin* %binary69, i32 0, i32 0
  %arrayidx71 = getelementptr inbounds [2 x i64], [2 x i64]* %b_color70, i32 0, i64 1
  %52 = load i64, i64* %arrayidx71, align 8, !tbaa !52
  %53 = load %struct.gx_hl_saved_color_s*, %struct.gx_hl_saved_color_s** %psc2.addr, align 8, !tbaa !1
  %saved_dev_color72 = getelementptr inbounds %struct.gx_hl_saved_color_s, %struct.gx_hl_saved_color_s* %53, i32 0, i32 4
  %colors73 = getelementptr inbounds %struct.gx_device_color_saved_s, %struct.gx_device_color_saved_s* %saved_dev_color72, i32 0, i32 1
  %binary74 = bitcast %union._svc* %colors73 to %struct._svbin*
  %b_color75 = getelementptr inbounds %struct._svbin, %struct._svbin* %binary74, i32 0, i32 0
  %arrayidx76 = getelementptr inbounds [2 x i64], [2 x i64]* %b_color75, i32 0, i64 1
  %54 = load i64, i64* %arrayidx76, align 8, !tbaa !52
  %cmp77 = icmp ne i64 %52, %54
  br i1 %cmp77, label %if.then.96, label %lor.lhs.false.78

lor.lhs.false.78:                                 ; preds = %lor.lhs.false.66
  %55 = load %struct.gx_hl_saved_color_s*, %struct.gx_hl_saved_color_s** %psc1.addr, align 8, !tbaa !1
  %saved_dev_color79 = getelementptr inbounds %struct.gx_hl_saved_color_s, %struct.gx_hl_saved_color_s* %55, i32 0, i32 4
  %colors80 = getelementptr inbounds %struct.gx_device_color_saved_s, %struct.gx_device_color_saved_s* %saved_dev_color79, i32 0, i32 1
  %binary81 = bitcast %union._svc* %colors80 to %struct._svbin*
  %b_level = getelementptr inbounds %struct._svbin, %struct._svbin* %binary81, i32 0, i32 1
  %56 = load i32, i32* %b_level, align 4, !tbaa !53
  %57 = load %struct.gx_hl_saved_color_s*, %struct.gx_hl_saved_color_s** %psc2.addr, align 8, !tbaa !1
  %saved_dev_color82 = getelementptr inbounds %struct.gx_hl_saved_color_s, %struct.gx_hl_saved_color_s* %57, i32 0, i32 4
  %colors83 = getelementptr inbounds %struct.gx_device_color_saved_s, %struct.gx_device_color_saved_s* %saved_dev_color82, i32 0, i32 1
  %binary84 = bitcast %union._svc* %colors83 to %struct._svbin*
  %b_level85 = getelementptr inbounds %struct._svbin, %struct._svbin* %binary84, i32 0, i32 1
  %58 = load i32, i32* %b_level85, align 4, !tbaa !53
  %cmp86 = icmp ne i32 %56, %58
  br i1 %cmp86, label %if.then.96, label %lor.lhs.false.87

lor.lhs.false.87:                                 ; preds = %lor.lhs.false.78
  %59 = load %struct.gx_hl_saved_color_s*, %struct.gx_hl_saved_color_s** %psc1.addr, align 8, !tbaa !1
  %saved_dev_color88 = getelementptr inbounds %struct.gx_hl_saved_color_s, %struct.gx_hl_saved_color_s* %59, i32 0, i32 4
  %colors89 = getelementptr inbounds %struct.gx_device_color_saved_s, %struct.gx_device_color_saved_s* %saved_dev_color88, i32 0, i32 1
  %binary90 = bitcast %union._svc* %colors89 to %struct._svbin*
  %b_index = getelementptr inbounds %struct._svbin, %struct._svbin* %binary90, i32 0, i32 2
  %60 = load i32, i32* %b_index, align 4, !tbaa !55
  %61 = load %struct.gx_hl_saved_color_s*, %struct.gx_hl_saved_color_s** %psc2.addr, align 8, !tbaa !1
  %saved_dev_color91 = getelementptr inbounds %struct.gx_hl_saved_color_s, %struct.gx_hl_saved_color_s* %61, i32 0, i32 4
  %colors92 = getelementptr inbounds %struct.gx_device_color_saved_s, %struct.gx_device_color_saved_s* %saved_dev_color91, i32 0, i32 1
  %binary93 = bitcast %union._svc* %colors92 to %struct._svbin*
  %b_index94 = getelementptr inbounds %struct._svbin, %struct._svbin* %binary93, i32 0, i32 2
  %62 = load i32, i32* %b_index94, align 4, !tbaa !55
  %cmp95 = icmp ne i32 %60, %62
  br i1 %cmp95, label %if.then.96, label %if.end.97

if.then.96:                                       ; preds = %lor.lhs.false.87, %lor.lhs.false.78, %lor.lhs.false.66, %if.then.56
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.97:                                        ; preds = %lor.lhs.false.87
  br label %if.end.240

if.else.98:                                       ; preds = %if.else
  %63 = load %struct.gx_hl_saved_color_s*, %struct.gx_hl_saved_color_s** %psc1.addr, align 8, !tbaa !1
  %saved_dev_color99 = getelementptr inbounds %struct.gx_hl_saved_color_s, %struct.gx_hl_saved_color_s* %63, i32 0, i32 4
  %type100 = getelementptr inbounds %struct.gx_device_color_saved_s, %struct.gx_device_color_saved_s* %saved_dev_color99, i32 0, i32 0
  %64 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type100, align 8, !tbaa !51
  %cmp101 = icmp eq %struct.gx_device_color_type_s* %64, @gx_dc_type_data_ht_colored
  br i1 %cmp101, label %if.then.102, label %if.else.138

if.then.102:                                      ; preds = %if.else.98
  store i32 0, i32* %i, align 4, !tbaa !37
  br label %for.cond.103

for.cond.103:                                     ; preds = %for.inc.135, %if.then.102
  %65 = load i32, i32* %i, align 4, !tbaa !37
  %cmp104 = icmp slt i32 %65, 64
  br i1 %cmp104, label %for.body.105, label %for.end.137

for.body.105:                                     ; preds = %for.cond.103
  %66 = load i32, i32* %i, align 4, !tbaa !37
  %idxprom106 = sext i32 %66 to i64
  %67 = load %struct.gx_hl_saved_color_s*, %struct.gx_hl_saved_color_s** %psc1.addr, align 8, !tbaa !1
  %saved_dev_color107 = getelementptr inbounds %struct.gx_hl_saved_color_s, %struct.gx_hl_saved_color_s* %67, i32 0, i32 4
  %colors108 = getelementptr inbounds %struct.gx_device_color_saved_s, %struct.gx_device_color_saved_s* %saved_dev_color107, i32 0, i32 1
  %colored = bitcast %union._svc* %colors108 to %struct._svcol*
  %c_base = getelementptr inbounds %struct._svcol, %struct._svcol* %colored, i32 0, i32 0
  %arrayidx109 = getelementptr inbounds [64 x i8], [64 x i8]* %c_base, i32 0, i64 %idxprom106
  %68 = load i8, i8* %arrayidx109, align 1, !tbaa !56
  %conv = zext i8 %68 to i32
  %69 = load i32, i32* %i, align 4, !tbaa !37
  %idxprom110 = sext i32 %69 to i64
  %70 = load %struct.gx_hl_saved_color_s*, %struct.gx_hl_saved_color_s** %psc2.addr, align 8, !tbaa !1
  %saved_dev_color111 = getelementptr inbounds %struct.gx_hl_saved_color_s, %struct.gx_hl_saved_color_s* %70, i32 0, i32 4
  %colors112 = getelementptr inbounds %struct.gx_device_color_saved_s, %struct.gx_device_color_saved_s* %saved_dev_color111, i32 0, i32 1
  %colored113 = bitcast %union._svc* %colors112 to %struct._svcol*
  %c_base114 = getelementptr inbounds %struct._svcol, %struct._svcol* %colored113, i32 0, i32 0
  %arrayidx115 = getelementptr inbounds [64 x i8], [64 x i8]* %c_base114, i32 0, i64 %idxprom110
  %71 = load i8, i8* %arrayidx115, align 1, !tbaa !56
  %conv116 = zext i8 %71 to i32
  %cmp117 = icmp ne i32 %conv, %conv116
  br i1 %cmp117, label %if.then.133, label %lor.lhs.false.119

lor.lhs.false.119:                                ; preds = %for.body.105
  %72 = load i32, i32* %i, align 4, !tbaa !37
  %idxprom120 = sext i32 %72 to i64
  %73 = load %struct.gx_hl_saved_color_s*, %struct.gx_hl_saved_color_s** %psc1.addr, align 8, !tbaa !1
  %saved_dev_color121 = getelementptr inbounds %struct.gx_hl_saved_color_s, %struct.gx_hl_saved_color_s* %73, i32 0, i32 4
  %colors122 = getelementptr inbounds %struct.gx_device_color_saved_s, %struct.gx_device_color_saved_s* %saved_dev_color121, i32 0, i32 1
  %colored123 = bitcast %union._svc* %colors122 to %struct._svcol*
  %c_level = getelementptr inbounds %struct._svcol, %struct._svcol* %colored123, i32 0, i32 1
  %arrayidx124 = getelementptr inbounds [64 x i32], [64 x i32]* %c_level, i32 0, i64 %idxprom120
  %74 = load i32, i32* %arrayidx124, align 4, !tbaa !37
  %75 = load i32, i32* %i, align 4, !tbaa !37
  %idxprom125 = sext i32 %75 to i64
  %76 = load %struct.gx_hl_saved_color_s*, %struct.gx_hl_saved_color_s** %psc2.addr, align 8, !tbaa !1
  %saved_dev_color126 = getelementptr inbounds %struct.gx_hl_saved_color_s, %struct.gx_hl_saved_color_s* %76, i32 0, i32 4
  %colors127 = getelementptr inbounds %struct.gx_device_color_saved_s, %struct.gx_device_color_saved_s* %saved_dev_color126, i32 0, i32 1
  %colored128 = bitcast %union._svc* %colors127 to %struct._svcol*
  %c_level129 = getelementptr inbounds %struct._svcol, %struct._svcol* %colored128, i32 0, i32 1
  %arrayidx130 = getelementptr inbounds [64 x i32], [64 x i32]* %c_level129, i32 0, i64 %idxprom125
  %77 = load i32, i32* %arrayidx130, align 4, !tbaa !37
  %cmp131 = icmp ne i32 %74, %77
  br i1 %cmp131, label %if.then.133, label %if.end.134

if.then.133:                                      ; preds = %lor.lhs.false.119, %for.body.105
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.134:                                       ; preds = %lor.lhs.false.119
  br label %for.inc.135

for.inc.135:                                      ; preds = %if.end.134
  %78 = load i32, i32* %i, align 4, !tbaa !37
  %inc136 = add nsw i32 %78, 1
  store i32 %inc136, i32* %i, align 4, !tbaa !37
  br label %for.cond.103

for.end.137:                                      ; preds = %for.cond.103
  br label %if.end.239

if.else.138:                                      ; preds = %if.else.98
  %79 = load %struct.gx_hl_saved_color_s*, %struct.gx_hl_saved_color_s** %psc1.addr, align 8, !tbaa !1
  %saved_dev_color139 = getelementptr inbounds %struct.gx_hl_saved_color_s, %struct.gx_hl_saved_color_s* %79, i32 0, i32 4
  %type140 = getelementptr inbounds %struct.gx_device_color_saved_s, %struct.gx_device_color_saved_s* %saved_dev_color139, i32 0, i32 0
  %80 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type140, align 8, !tbaa !51
  %cmp141 = icmp eq %struct.gx_device_color_type_s* %80, @gx_dc_type_data_devn
  br i1 %cmp141, label %if.then.143, label %if.else.168

if.then.143:                                      ; preds = %if.else.138
  store i32 0, i32* %i, align 4, !tbaa !37
  br label %for.cond.144

for.cond.144:                                     ; preds = %for.inc.165, %if.then.143
  %81 = load i32, i32* %i, align 4, !tbaa !37
  %cmp145 = icmp slt i32 %81, 64
  br i1 %cmp145, label %for.body.147, label %for.end.167

for.body.147:                                     ; preds = %for.cond.144
  %82 = load i32, i32* %i, align 4, !tbaa !37
  %idxprom148 = sext i32 %82 to i64
  %83 = load %struct.gx_hl_saved_color_s*, %struct.gx_hl_saved_color_s** %psc1.addr, align 8, !tbaa !1
  %saved_dev_color149 = getelementptr inbounds %struct.gx_hl_saved_color_s, %struct.gx_hl_saved_color_s* %83, i32 0, i32 4
  %colors150 = getelementptr inbounds %struct.gx_device_color_saved_s, %struct.gx_device_color_saved_s* %saved_dev_color149, i32 0, i32 1
  %devn = bitcast %union._svc* %colors150 to %struct._svdevn*
  %values151 = getelementptr inbounds %struct._svdevn, %struct._svdevn* %devn, i32 0, i32 0
  %arrayidx152 = getelementptr inbounds [64 x i16], [64 x i16]* %values151, i32 0, i64 %idxprom148
  %84 = load i16, i16* %arrayidx152, align 2, !tbaa !57
  %conv153 = zext i16 %84 to i32
  %85 = load i32, i32* %i, align 4, !tbaa !37
  %idxprom154 = sext i32 %85 to i64
  %86 = load %struct.gx_hl_saved_color_s*, %struct.gx_hl_saved_color_s** %psc2.addr, align 8, !tbaa !1
  %saved_dev_color155 = getelementptr inbounds %struct.gx_hl_saved_color_s, %struct.gx_hl_saved_color_s* %86, i32 0, i32 4
  %colors156 = getelementptr inbounds %struct.gx_device_color_saved_s, %struct.gx_device_color_saved_s* %saved_dev_color155, i32 0, i32 1
  %devn157 = bitcast %union._svc* %colors156 to %struct._svdevn*
  %values158 = getelementptr inbounds %struct._svdevn, %struct._svdevn* %devn157, i32 0, i32 0
  %arrayidx159 = getelementptr inbounds [64 x i16], [64 x i16]* %values158, i32 0, i64 %idxprom154
  %87 = load i16, i16* %arrayidx159, align 2, !tbaa !57
  %conv160 = zext i16 %87 to i32
  %cmp161 = icmp ne i32 %conv153, %conv160
  br i1 %cmp161, label %if.then.163, label %if.end.164

if.then.163:                                      ; preds = %for.body.147
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.164:                                       ; preds = %for.body.147
  br label %for.inc.165

for.inc.165:                                      ; preds = %if.end.164
  %88 = load i32, i32* %i, align 4, !tbaa !37
  %inc166 = add nsw i32 %88, 1
  store i32 %inc166, i32* %i, align 4, !tbaa !37
  br label %for.cond.144

for.end.167:                                      ; preds = %for.cond.144
  br label %if.end.238

if.else.168:                                      ; preds = %if.else.138
  %89 = load %struct.gx_hl_saved_color_s*, %struct.gx_hl_saved_color_s** %psc1.addr, align 8, !tbaa !1
  %saved_dev_color169 = getelementptr inbounds %struct.gx_hl_saved_color_s, %struct.gx_hl_saved_color_s* %89, i32 0, i32 4
  %type170 = getelementptr inbounds %struct.gx_device_color_saved_s, %struct.gx_device_color_saved_s* %saved_dev_color169, i32 0, i32 0
  %90 = bitcast %struct.gx_device_color_type_s** %type170 to %struct.gx_device_color_s*
  %call = call i32 @gx_dc_is_pattern1_color(%struct.gx_device_color_s* %90) #5
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then.171, label %if.else.209

if.then.171:                                      ; preds = %if.else.168
  %91 = load %struct.gx_hl_saved_color_s*, %struct.gx_hl_saved_color_s** %psc1.addr, align 8, !tbaa !1
  %saved_dev_color172 = getelementptr inbounds %struct.gx_hl_saved_color_s, %struct.gx_hl_saved_color_s* %91, i32 0, i32 4
  %colors173 = getelementptr inbounds %struct.gx_device_color_saved_s, %struct.gx_device_color_saved_s* %saved_dev_color172, i32 0, i32 1
  %pattern174 = bitcast %union._svc* %colors173 to %struct._pattern*
  %id = getelementptr inbounds %struct._pattern, %struct._pattern* %pattern174, i32 0, i32 0
  %92 = load i64, i64* %id, align 8, !tbaa !58
  %93 = load %struct.gx_hl_saved_color_s*, %struct.gx_hl_saved_color_s** %psc2.addr, align 8, !tbaa !1
  %saved_dev_color175 = getelementptr inbounds %struct.gx_hl_saved_color_s, %struct.gx_hl_saved_color_s* %93, i32 0, i32 4
  %colors176 = getelementptr inbounds %struct.gx_device_color_saved_s, %struct.gx_device_color_saved_s* %saved_dev_color175, i32 0, i32 1
  %pattern177 = bitcast %union._svc* %colors176 to %struct._pattern*
  %id178 = getelementptr inbounds %struct._pattern, %struct._pattern* %pattern177, i32 0, i32 0
  %94 = load i64, i64* %id178, align 8, !tbaa !58
  %cmp179 = icmp ne i64 %92, %94
  br i1 %cmp179, label %if.then.207, label %lor.lhs.false.181

lor.lhs.false.181:                                ; preds = %if.then.171
  %95 = load %struct.gx_hl_saved_color_s*, %struct.gx_hl_saved_color_s** %psc1.addr, align 8, !tbaa !1
  %saved_dev_color182 = getelementptr inbounds %struct.gx_hl_saved_color_s, %struct.gx_hl_saved_color_s* %95, i32 0, i32 4
  %colors183 = getelementptr inbounds %struct.gx_device_color_saved_s, %struct.gx_device_color_saved_s* %saved_dev_color182, i32 0, i32 1
  %pattern184 = bitcast %union._svc* %colors183 to %struct._pattern*
  %phase185 = getelementptr inbounds %struct._pattern, %struct._pattern* %pattern184, i32 0, i32 1
  %x186 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %phase185, i32 0, i32 0
  %96 = load i32, i32* %x186, align 4, !tbaa !60
  %97 = load %struct.gx_hl_saved_color_s*, %struct.gx_hl_saved_color_s** %psc2.addr, align 8, !tbaa !1
  %saved_dev_color187 = getelementptr inbounds %struct.gx_hl_saved_color_s, %struct.gx_hl_saved_color_s* %97, i32 0, i32 4
  %colors188 = getelementptr inbounds %struct.gx_device_color_saved_s, %struct.gx_device_color_saved_s* %saved_dev_color187, i32 0, i32 1
  %pattern189 = bitcast %union._svc* %colors188 to %struct._pattern*
  %phase190 = getelementptr inbounds %struct._pattern, %struct._pattern* %pattern189, i32 0, i32 1
  %x191 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %phase190, i32 0, i32 0
  %98 = load i32, i32* %x191, align 4, !tbaa !60
  %cmp192 = icmp ne i32 %96, %98
  br i1 %cmp192, label %if.then.207, label %lor.lhs.false.194

lor.lhs.false.194:                                ; preds = %lor.lhs.false.181
  %99 = load %struct.gx_hl_saved_color_s*, %struct.gx_hl_saved_color_s** %psc1.addr, align 8, !tbaa !1
  %saved_dev_color195 = getelementptr inbounds %struct.gx_hl_saved_color_s, %struct.gx_hl_saved_color_s* %99, i32 0, i32 4
  %colors196 = getelementptr inbounds %struct.gx_device_color_saved_s, %struct.gx_device_color_saved_s* %saved_dev_color195, i32 0, i32 1
  %pattern197 = bitcast %union._svc* %colors196 to %struct._pattern*
  %phase198 = getelementptr inbounds %struct._pattern, %struct._pattern* %pattern197, i32 0, i32 1
  %y199 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %phase198, i32 0, i32 1
  %100 = load i32, i32* %y199, align 4, !tbaa !61
  %101 = load %struct.gx_hl_saved_color_s*, %struct.gx_hl_saved_color_s** %psc2.addr, align 8, !tbaa !1
  %saved_dev_color200 = getelementptr inbounds %struct.gx_hl_saved_color_s, %struct.gx_hl_saved_color_s* %101, i32 0, i32 4
  %colors201 = getelementptr inbounds %struct.gx_device_color_saved_s, %struct.gx_device_color_saved_s* %saved_dev_color200, i32 0, i32 1
  %pattern202 = bitcast %union._svc* %colors201 to %struct._pattern*
  %phase203 = getelementptr inbounds %struct._pattern, %struct._pattern* %pattern202, i32 0, i32 1
  %y204 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %phase203, i32 0, i32 1
  %102 = load i32, i32* %y204, align 4, !tbaa !61
  %cmp205 = icmp ne i32 %100, %102
  br i1 %cmp205, label %if.then.207, label %if.end.208

if.then.207:                                      ; preds = %lor.lhs.false.194, %lor.lhs.false.181, %if.then.171
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.208:                                       ; preds = %lor.lhs.false.194
  br label %if.end.237

if.else.209:                                      ; preds = %if.else.168
  %103 = load %struct.gx_hl_saved_color_s*, %struct.gx_hl_saved_color_s** %psc1.addr, align 8, !tbaa !1
  %saved_dev_color210 = getelementptr inbounds %struct.gx_hl_saved_color_s, %struct.gx_hl_saved_color_s* %103, i32 0, i32 4
  %type211 = getelementptr inbounds %struct.gx_device_color_saved_s, %struct.gx_device_color_saved_s* %saved_dev_color210, i32 0, i32 0
  %104 = bitcast %struct.gx_device_color_type_s** %type211 to %struct.gx_device_color_s*
  %call212 = call i32 @gx_dc_is_pattern2_color(%struct.gx_device_color_s* %104) #5
  %tobool213 = icmp ne i32 %call212, 0
  br i1 %tobool213, label %if.then.214, label %if.end.236

if.then.214:                                      ; preds = %if.else.209
  %105 = load %struct.gx_hl_saved_color_s*, %struct.gx_hl_saved_color_s** %psc1.addr, align 8, !tbaa !1
  %saved_dev_color215 = getelementptr inbounds %struct.gx_hl_saved_color_s, %struct.gx_hl_saved_color_s* %105, i32 0, i32 4
  %colors216 = getelementptr inbounds %struct.gx_device_color_saved_s, %struct.gx_device_color_saved_s* %saved_dev_color215, i32 0, i32 1
  %pattern2 = bitcast %union._svc* %colors216 to %struct._pattern2*
  %id217 = getelementptr inbounds %struct._pattern2, %struct._pattern2* %pattern2, i32 0, i32 0
  %106 = load i64, i64* %id217, align 8, !tbaa !62
  %107 = load %struct.gx_hl_saved_color_s*, %struct.gx_hl_saved_color_s** %psc2.addr, align 8, !tbaa !1
  %saved_dev_color218 = getelementptr inbounds %struct.gx_hl_saved_color_s, %struct.gx_hl_saved_color_s* %107, i32 0, i32 4
  %colors219 = getelementptr inbounds %struct.gx_device_color_saved_s, %struct.gx_device_color_saved_s* %saved_dev_color218, i32 0, i32 1
  %pattern2220 = bitcast %union._svc* %colors219 to %struct._pattern2*
  %id221 = getelementptr inbounds %struct._pattern2, %struct._pattern2* %pattern2220, i32 0, i32 0
  %108 = load i64, i64* %id221, align 8, !tbaa !62
  %cmp222 = icmp ne i64 %106, %108
  br i1 %cmp222, label %if.then.234, label %lor.lhs.false.224

lor.lhs.false.224:                                ; preds = %if.then.214
  %109 = load %struct.gx_hl_saved_color_s*, %struct.gx_hl_saved_color_s** %psc1.addr, align 8, !tbaa !1
  %saved_dev_color225 = getelementptr inbounds %struct.gx_hl_saved_color_s, %struct.gx_hl_saved_color_s* %109, i32 0, i32 4
  %colors226 = getelementptr inbounds %struct.gx_device_color_saved_s, %struct.gx_device_color_saved_s* %saved_dev_color225, i32 0, i32 1
  %pattern2227 = bitcast %union._svc* %colors226 to %struct._pattern2*
  %shfill = getelementptr inbounds %struct._pattern2, %struct._pattern2* %pattern2227, i32 0, i32 1
  %110 = load i32, i32* %shfill, align 4, !tbaa !64
  %111 = load %struct.gx_hl_saved_color_s*, %struct.gx_hl_saved_color_s** %psc2.addr, align 8, !tbaa !1
  %saved_dev_color228 = getelementptr inbounds %struct.gx_hl_saved_color_s, %struct.gx_hl_saved_color_s* %111, i32 0, i32 4
  %colors229 = getelementptr inbounds %struct.gx_device_color_saved_s, %struct.gx_device_color_saved_s* %saved_dev_color228, i32 0, i32 1
  %pattern2230 = bitcast %union._svc* %colors229 to %struct._pattern2*
  %shfill231 = getelementptr inbounds %struct._pattern2, %struct._pattern2* %pattern2230, i32 0, i32 1
  %112 = load i32, i32* %shfill231, align 4, !tbaa !64
  %cmp232 = icmp ne i32 %110, %112
  br i1 %cmp232, label %if.then.234, label %if.end.235

if.then.234:                                      ; preds = %lor.lhs.false.224, %if.then.214
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.235:                                       ; preds = %lor.lhs.false.224
  br label %if.end.236

if.end.236:                                       ; preds = %if.end.235, %if.else.209
  br label %if.end.237

if.end.237:                                       ; preds = %if.end.236, %if.end.208
  br label %if.end.238

if.end.238:                                       ; preds = %if.end.237, %for.end.167
  br label %if.end.239

if.end.239:                                       ; preds = %if.end.238, %for.end.137
  br label %if.end.240

if.end.240:                                       ; preds = %if.end.239, %if.end.97
  br label %if.end.241

if.end.241:                                       ; preds = %if.end.240, %if.end.52
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.241, %if.then.234, %if.then.207, %if.then.163, %if.then.133, %if.then.96, %if.then.51, %if.then.36, %if.then
  %113 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %113) #1
  %114 = load i32, i32* %retval
  ret i32 %114
}

declare i32 @gx_dc_is_pattern1_color(%struct.gx_device_color_s*) #3

declare i32 @gx_dc_is_pattern2_color(%struct.gx_device_color_s*) #3

; Function Attrs: nounwind uwtable
define i32 @gx_hld_saved_color_same_cspace(%struct.gx_hl_saved_color_s* %psc1, %struct.gx_hl_saved_color_s* %psc2) #0 {
entry:
  %retval = alloca i32, align 4
  %psc1.addr = alloca %struct.gx_hl_saved_color_s*, align 8
  %psc2.addr = alloca %struct.gx_hl_saved_color_s*, align 8
  store %struct.gx_hl_saved_color_s* %psc1, %struct.gx_hl_saved_color_s** %psc1.addr, align 8, !tbaa !1
  store %struct.gx_hl_saved_color_s* %psc2, %struct.gx_hl_saved_color_s** %psc2.addr, align 8, !tbaa !1
  %0 = load %struct.gx_hl_saved_color_s*, %struct.gx_hl_saved_color_s** %psc1.addr, align 8, !tbaa !1
  %color_space_id = getelementptr inbounds %struct.gx_hl_saved_color_s, %struct.gx_hl_saved_color_s* %0, i32 0, i32 0
  %1 = load i64, i64* %color_space_id, align 8, !tbaa !13
  %2 = load %struct.gx_hl_saved_color_s*, %struct.gx_hl_saved_color_s** %psc2.addr, align 8, !tbaa !1
  %color_space_id1 = getelementptr inbounds %struct.gx_hl_saved_color_s, %struct.gx_hl_saved_color_s* %2, i32 0, i32 0
  %3 = load i64, i64* %color_space_id1, align 8, !tbaa !13
  %cmp = icmp ne i64 %1, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct.gx_hl_saved_color_s*, %struct.gx_hl_saved_color_s** %psc1.addr, align 8, !tbaa !1
  %pattern_id = getelementptr inbounds %struct.gx_hl_saved_color_s, %struct.gx_hl_saved_color_s* %4, i32 0, i32 1
  %5 = load i64, i64* %pattern_id, align 8, !tbaa !5
  %6 = load %struct.gx_hl_saved_color_s*, %struct.gx_hl_saved_color_s** %psc2.addr, align 8, !tbaa !1
  %pattern_id2 = getelementptr inbounds %struct.gx_hl_saved_color_s, %struct.gx_hl_saved_color_s* %6, i32 0, i32 1
  %7 = load i64, i64* %pattern_id2, align 8, !tbaa !5
  %cmp3 = icmp ne i64 %5, %7
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  %8 = load %struct.gx_hl_saved_color_s*, %struct.gx_hl_saved_color_s** %psc1.addr, align 8, !tbaa !1
  %ccolor_valid = getelementptr inbounds %struct.gx_hl_saved_color_s, %struct.gx_hl_saved_color_s* %8, i32 0, i32 2
  %9 = load i32, i32* %ccolor_valid, align 4, !tbaa !47
  %10 = load %struct.gx_hl_saved_color_s*, %struct.gx_hl_saved_color_s** %psc2.addr, align 8, !tbaa !1
  %ccolor_valid6 = getelementptr inbounds %struct.gx_hl_saved_color_s, %struct.gx_hl_saved_color_s* %10, i32 0, i32 2
  %11 = load i32, i32* %ccolor_valid6, align 4, !tbaa !47
  %cmp7 = icmp ne i32 %9, %11
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end.5
  store i32 0, i32* %retval
  br label %return

if.end.9:                                         ; preds = %if.end.5
  %12 = load %struct.gx_hl_saved_color_s*, %struct.gx_hl_saved_color_s** %psc1.addr, align 8, !tbaa !1
  %color_space_id10 = getelementptr inbounds %struct.gx_hl_saved_color_s, %struct.gx_hl_saved_color_s* %12, i32 0, i32 0
  %13 = load i64, i64* %color_space_id10, align 8, !tbaa !13
  %14 = load %struct.gx_hl_saved_color_s*, %struct.gx_hl_saved_color_s** %psc2.addr, align 8, !tbaa !1
  %color_space_id11 = getelementptr inbounds %struct.gx_hl_saved_color_s, %struct.gx_hl_saved_color_s* %14, i32 0, i32 0
  %15 = load i64, i64* %color_space_id11, align 8, !tbaa !13
  %cmp12 = icmp ne i64 %13, %15
  br i1 %cmp12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.end.9
  store i32 0, i32* %retval
  br label %return

if.end.14:                                        ; preds = %if.end.9
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.14, %if.then.13, %if.then.8, %if.then.4, %if.then
  %16 = load i32, i32* %retval
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define i32 @gx_hld_is_hl_color_available(%struct.gs_imager_state_s* %pis, %struct.gx_device_color_s* %pdevc) #0 {
entry:
  %retval = alloca i32, align 4
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %pdevc.addr = alloca %struct.gx_device_color_s*, align 8
  %pgs = alloca %struct.gs_state_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gx_device_color_s* %pdevc, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_state_s** %pgs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %call = call %struct.gs_state_s* @gx_hld_get_gstate_ptr(%struct.gs_imager_state_s* %1) #5
  store %struct.gs_state_s* %call, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %2 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %cmp = icmp ne %struct.gs_state_s* %2, null
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %3 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %cmp1 = icmp ne %struct.gx_device_color_s* %3, null
  br i1 %cmp1, label %land.lhs.true.2, label %if.end

land.lhs.true.2:                                  ; preds = %land.lhs.true
  %4 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %ccolor_valid = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %4, i32 0, i32 3
  %5 = load i32, i32* %ccolor_valid, align 4, !tbaa !42
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.2
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.2, %land.lhs.true, %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %6 = bitcast %struct.gs_state_s** %pgs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %6) #1
  %7 = load i32, i32* %retval
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define i32 @gx_hld_get_color_space_and_ccolor(%struct.gs_imager_state_s* %pis, %struct.gx_device_color_s* %pdevc, %struct.gs_color_space_s** %ppcs, %struct.gs_client_color_s** %ppcc) #0 {
entry:
  %retval = alloca i32, align 4
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %pdevc.addr = alloca %struct.gx_device_color_s*, align 8
  %ppcs.addr = alloca %struct.gs_color_space_s**, align 8
  %ppcc.addr = alloca %struct.gs_client_color_s**, align 8
  %pgs = alloca %struct.gs_state_s*, align 8
  %pcs = alloca %struct.gs_color_space_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gx_device_color_s* %pdevc, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  store %struct.gs_color_space_s** %ppcs, %struct.gs_color_space_s*** %ppcs.addr, align 8, !tbaa !1
  store %struct.gs_client_color_s** %ppcc, %struct.gs_client_color_s*** %ppcc.addr, align 8, !tbaa !1
  %0 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %1 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %call = call i32 @gx_hld_is_hl_color_available(%struct.gs_imager_state_s* %0, %struct.gx_device_color_s* %1) #5
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = bitcast %struct.gs_state_s** %pgs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %call1 = call %struct.gs_state_s* @gx_hld_get_gstate_ptr(%struct.gs_imager_state_s* %3) #5
  store %struct.gs_state_s* %call1, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %4 = bitcast %struct.gs_color_space_s** %pcs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %color = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %5, i32 0, i32 69
  %arrayidx = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* %color, i32 0, i64 0
  %color_space = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx, i32 0, i32 0
  %6 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %color_space, align 8, !tbaa !35
  store %struct.gs_color_space_s* %6, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %7 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %8 = load %struct.gs_color_space_s**, %struct.gs_color_space_s*** %ppcs.addr, align 8, !tbaa !1
  store %struct.gs_color_space_s* %7, %struct.gs_color_space_s** %8, align 8, !tbaa !1
  %9 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %ccolor = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %9, i32 0, i32 4
  %10 = load %struct.gs_client_color_s**, %struct.gs_client_color_s*** %ppcc.addr, align 8, !tbaa !1
  store %struct.gs_client_color_s* %ccolor, %struct.gs_client_color_s** %10, align 8, !tbaa !1
  %11 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %11, i32 0, i32 0
  %12 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type, align 8, !tbaa !14
  %cmp = icmp eq %struct.gx_device_color_type_s* %12, @gx_dc_pattern
  br i1 %cmp, label %if.then.7, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %13 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %type2 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %13, i32 0, i32 0
  %14 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type2, align 8, !tbaa !14
  %cmp3 = icmp eq %struct.gx_device_color_type_s* %14, @gx_dc_pure_masked
  br i1 %cmp3, label %if.then.7, label %lor.lhs.false.4

lor.lhs.false.4:                                  ; preds = %lor.lhs.false
  %15 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %type5 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %15, i32 0, i32 0
  %16 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type5, align 8, !tbaa !14
  %cmp6 = icmp eq %struct.gx_device_color_type_s* %16, @gx_dc_pattern2
  br i1 %cmp6, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %lor.lhs.false.4, %lor.lhs.false, %if.then
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %lor.lhs.false.4
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then.7
  %17 = bitcast %struct.gs_color_space_s** %pcs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %17) #1
  %18 = bitcast %struct.gs_state_s** %pgs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %18) #1
  br label %return

if.end:                                           ; preds = %entry
  %19 = load %struct.gs_color_space_s**, %struct.gs_color_space_s*** %ppcs.addr, align 8, !tbaa !1
  store %struct.gs_color_space_s* null, %struct.gs_color_space_s** %19, align 8, !tbaa !1
  %20 = load %struct.gs_client_color_s**, %struct.gs_client_color_s*** %ppcc.addr, align 8, !tbaa !1
  store %struct.gs_client_color_s* null, %struct.gs_client_color_s** %20, align 8, !tbaa !1
  store i32 2, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %cleanup
  %21 = load i32, i32* %retval
  ret i32 %21
}

; Function Attrs: nounwind uwtable
define i32 @gx_hld_get_number_color_components(%struct.gs_imager_state_s* %pis) #0 {
entry:
  %retval = alloca i32, align 4
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %pgs = alloca %struct.gs_state_s*, align 8
  %pcs = alloca %struct.gs_color_space_s*, align 8
  %n = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_state_s** %pgs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %call = call %struct.gs_state_s* @gx_hld_get_gstate_ptr(%struct.gs_imager_state_s* %1) #5
  store %struct.gs_state_s* %call, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %2 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %cmp = icmp ne %struct.gs_state_s* %2, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = bitcast %struct.gs_color_space_s** %pcs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %color = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %4, i32 0, i32 69
  %arrayidx = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* %color, i32 0, i64 0
  %color_space = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx, i32 0, i32 0
  %5 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %color_space, align 8, !tbaa !35
  store %struct.gs_color_space_s* %5, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %6 = bitcast i32* %n to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %call1 = call i32 @gs_color_space_num_components(%struct.gs_color_space_s* %7) #5
  store i32 %call1, i32* %n, align 4, !tbaa !37
  %8 = load i32, i32* %n, align 4, !tbaa !37
  %cmp2 = icmp sge i32 %8, 0
  br i1 %cmp2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %9 = load i32, i32* %n, align 4, !tbaa !37
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %10 = load i32, i32* %n, align 4, !tbaa !37
  %sub = sub nsw i32 0, %10
  %sub3 = sub nsw i32 %sub, 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %9, %cond.true ], [ %sub3, %cond.false ]
  store i32 %cond, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  %11 = bitcast i32* %n to i8*
  call void @llvm.lifetime.end(i64 4, i8* %11) #1
  %12 = bitcast %struct.gs_color_space_s** %pcs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %12) #1
  br label %cleanup

if.else:                                          ; preds = %entry
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.else, %cond.end
  %13 = bitcast %struct.gs_state_s** %pgs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %13) #1
  %14 = load i32, i32* %retval
  ret i32 %14
}

; Function Attrs: nounwind uwtable
define i32 @gx_hld_get_color_component(%struct.gs_imager_state_s* %pis, %struct.gx_device_color_s* %pdevc, i32 %comp_num, float* %output) #0 {
entry:
  %retval = alloca i32, align 4
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %pdevc.addr = alloca %struct.gx_device_color_s*, align 8
  %comp_num.addr = alloca i32, align 4
  %output.addr = alloca float*, align 8
  %ncomp = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gx_device_color_s* %pdevc, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  store i32 %comp_num, i32* %comp_num.addr, align 4, !tbaa !37
  store float* %output, float** %output.addr, align 8, !tbaa !1
  %0 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %cmp = icmp ne %struct.gx_device_color_s* %0, null
  br i1 %cmp, label %land.lhs.true, label %if.end.7

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %ccolor_valid = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %1, i32 0, i32 3
  %2 = load i32, i32* %ccolor_valid, align 4, !tbaa !42
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.end.7

if.then:                                          ; preds = %land.lhs.true
  %3 = bitcast i32* %ncomp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %call = call i32 @gx_hld_get_number_color_components(%struct.gs_imager_state_s* %4) #5
  store i32 %call, i32* %ncomp, align 4, !tbaa !37
  %5 = load i32, i32* %ncomp, align 4, !tbaa !37
  %cmp1 = icmp slt i32 %5, 0
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  store i32 2, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  %6 = load i32, i32* %comp_num.addr, align 4, !tbaa !37
  %cmp3 = icmp slt i32 %6, 0
  br i1 %cmp3, label %if.then.5, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %7 = load i32, i32* %comp_num.addr, align 4, !tbaa !37
  %8 = load i32, i32* %ncomp, align 4, !tbaa !37
  %cmp4 = icmp sge i32 %7, %8
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %lor.lhs.false, %if.end
  store i32 3, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.6:                                         ; preds = %lor.lhs.false
  %9 = load i32, i32* %comp_num.addr, align 4, !tbaa !37
  %idxprom = sext i32 %9 to i64
  %10 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %ccolor = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %10, i32 0, i32 4
  %paint = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %ccolor, i32 0, i32 1
  %values = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint, i32 0, i32 0
  %arrayidx = getelementptr inbounds [64 x float], [64 x float]* %values, i32 0, i64 %idxprom
  %11 = load float, float* %arrayidx, align 4, !tbaa !41
  %12 = load float*, float** %output.addr, align 8, !tbaa !1
  store float %11, float* %12, align 4, !tbaa !41
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.6, %if.then.5, %if.then.2
  %13 = bitcast i32* %ncomp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %13) #1
  br label %return

if.end.7:                                         ; preds = %land.lhs.true, %entry
  store i32 2, i32* %retval
  br label %return

return:                                           ; preds = %if.end.7, %cleanup
  %14 = load i32, i32* %retval
  ret i32 %14
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nobuiltin nounwind }
attributes #5 = { nobuiltin }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !7, i64 8}
!6 = !{!"gx_hl_saved_color_s", !7, i64 0, !7, i64 8, !8, i64 16, !9, i64 24, !11, i64 288}
!7 = !{!"long", !3, i64 0}
!8 = !{!"int", !3, i64 0}
!9 = !{!"gs_client_color_s", !2, i64 0, !10, i64 8}
!10 = !{!"gs_paint_color_s", !3, i64 0}
!11 = !{!"gx_device_color_saved_s", !2, i64 0, !3, i64 8, !12, i64 336}
!12 = !{!"gs_int_point_s", !8, i64 0, !8, i64 4}
!13 = !{!6, !7, i64 0}
!14 = !{!15, !2, i64 0}
!15 = !{!"gx_device_color_s", !2, i64 0, !3, i64 8, !12, i64 352, !8, i64 360, !9, i64 368, !16, i64 632}
!16 = !{!"_mask", !17, i64 0, !7, i64 8, !2, i64 16}
!17 = !{!"mp_", !8, i64 0, !8, i64 4}
!18 = !{!19, !2, i64 8}
!19 = !{!"gx_device_color_type_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80}
!20 = !{!21, !8, i64 0}
!21 = !{!"gs_imager_state_s", !8, i64 0, !2, i64 8, !2, i64 16, !22, i64 24, !8, i64 128, !26, i64 132, !8, i64 168, !27, i64 176, !27, i64 192, !8, i64 208, !8, i64 212, !29, i64 216, !3, i64 220, !30, i64 224, !30, i64 228, !31, i64 232, !7, i64 240, !8, i64 248, !8, i64 252, !8, i64 256, !2, i64 264, !8, i64 272, !8, i64 276, !8, i64 280, !8, i64 284, !8, i64 288, !8, i64 292, !23, i64 296, !32, i64 300, !8, i64 308, !8, i64 312, !8, i64 316, !23, i64 320, !8, i64 324, !8, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !3, i64 376, !2, i64 392, !2, i64 400, !8, i64 408, !2, i64 416, !2, i64 424, !33, i64 432, !3, i64 496, !2, i64 1008, !2, i64 1016, !34, i64 1024, !2, i64 1304, !2, i64 1312, !2, i64 1320, !2, i64 1328, !34, i64 1336}
!22 = !{!"gx_line_params_s", !23, i64 0, !3, i64 4, !3, i64 8, !3, i64 12, !3, i64 16, !8, i64 20, !23, i64 24, !23, i64 28, !23, i64 32, !8, i64 36, !24, i64 40, !25, i64 64}
!23 = !{!"float", !3, i64 0}
!24 = !{!"gs_matrix_s", !23, i64 0, !23, i64 4, !23, i64 8, !23, i64 12, !23, i64 16, !23, i64 20}
!25 = !{!"gx_dash_params_s", !2, i64 0, !8, i64 8, !23, i64 12, !8, i64 16, !23, i64 20, !8, i64 24, !8, i64 28, !23, i64 32}
!26 = !{!"gs_matrix_fixed_s", !23, i64 0, !23, i64 4, !23, i64 8, !23, i64 12, !23, i64 16, !23, i64 20, !8, i64 24, !8, i64 28, !8, i64 32}
!27 = !{!"gs_point_s", !28, i64 0, !28, i64 8}
!28 = !{!"double", !3, i64 0}
!29 = !{!"short", !3, i64 0}
!30 = !{!"gs_transparency_source_s", !23, i64 0}
!31 = !{!"gs_xstate_trans_flags", !8, i64 0, !8, i64 4}
!32 = !{!"gs_fixed_point_s", !8, i64 0, !8, i64 4}
!33 = !{!"gx_transfer_s", !8, i64 0, !2, i64 8, !8, i64 16, !2, i64 24, !8, i64 32, !2, i64 40, !8, i64 48, !2, i64 56}
!34 = !{!"gs_devicen_color_map_s", !8, i64 0, !3, i64 4, !8, i64 8, !8, i64 12, !7, i64 16, !3, i64 24}
!35 = !{!36, !2, i64 0}
!36 = !{!"", !2, i64 0, !2, i64 8, !2, i64 16}
!37 = !{!8, !8, i64 0}
!38 = !{!39, !7, i64 32}
!39 = !{!"gs_color_space_s", !2, i64 0, !40, i64 8, !7, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !3, i64 72}
!40 = !{!"rc_header_s", !7, i64 0, !2, i64 8, !2, i64 16}
!41 = !{!23, !23, i64 0}
!42 = !{!15, !8, i64 360}
!43 = !{!15, !2, i64 368}
!44 = !{!45, !7, i64 40}
!45 = !{!"gs_pattern_instance_s", !40, i64 0, !2, i64 24, !2, i64 32, !7, i64 40}
!46 = !{!6, !2, i64 288}
!47 = !{!6, !8, i64 16}
!48 = !{!6, !2, i64 24}
!49 = !{!6, !8, i64 624}
!50 = !{!6, !8, i64 628}
!51 = !{!11, !2, i64 0}
!52 = !{!7, !7, i64 0}
!53 = !{!54, !8, i64 16}
!54 = !{!"_svbin", !3, i64 0, !8, i64 16, !8, i64 20}
!55 = !{!54, !8, i64 20}
!56 = !{!3, !3, i64 0}
!57 = !{!29, !29, i64 0}
!58 = !{!59, !7, i64 0}
!59 = !{!"_pattern", !7, i64 0, !12, i64 8}
!60 = !{!59, !8, i64 8}
!61 = !{!59, !8, i64 12}
!62 = !{!63, !7, i64 0}
!63 = !{!"_pattern2", !7, i64 0, !8, i64 8}
!64 = !{!63, !8, i64 8}
