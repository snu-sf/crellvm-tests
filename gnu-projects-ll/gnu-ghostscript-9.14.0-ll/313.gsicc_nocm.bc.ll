; ModuleID = './gsicc_nocm.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gsicc_link_s = type { i8*, %struct.gscms_procs_s, %struct.gsicc_hashlink_s, %struct.gsicc_link_cache_s*, i32, %struct.gsicc_link_s*, %struct.gx_semaphore_s*, i32, i32, i32, i32, i32, i32, %struct.gscms_procs_s, i32, i32, i32 }
%struct.gsicc_hashlink_s = type { i64, i64, i64, i64 }
%struct.gsicc_link_cache_s = type { %struct.gsicc_link_s*, i32, %struct.rc_header_s, %struct.gs_memory_s*, %struct.gx_monitor_s*, %struct.gx_semaphore_s*, i32 }
%struct.rc_header_s = type { i64, %struct.gs_memory_s*, void (%struct.gs_memory_s*, i8*, i8*)* }
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
%struct.gx_monitor_s = type { %struct.gs_memory_s*, %union.gp_monitor }
%union.gp_monitor = type { i8* }
%struct.gx_semaphore_s = type { %struct.gs_memory_s*, %union.gp_semaphore }
%union.gp_semaphore = type { i8* }
%struct.gscms_procs_s = type { void (%struct.gx_device_s*, %struct.gsicc_link_s*, %struct.gsicc_bufferdesc_s*, %struct.gsicc_bufferdesc_s*, i8*, i8*)*, void (%struct.gx_device_s*, %struct.gsicc_link_s*, i8*, i8*, i32)*, void (%struct.gsicc_link_s*)*, i32 (i8*, i32)* }
%struct.gsicc_bufferdesc_s = type { i8, i8, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.gs_imager_state_s = type { i32, %struct.gs_memory_s*, i8*, %struct.gx_line_params_s, i32, %struct.gs_matrix_fixed_s, i32, %struct.gs_point_s, %struct.gs_point_s, i32, i32, i16, i32, %struct.gs_transparency_source_s, %struct.gs_transparency_source_s, %struct.gs_xstate_trans_flags, i64, i32, i32, i32, %struct.gx_device_s*, i32, i32, i32, i32, i32, i32, float, %struct.gs_fixed_point_s, i32, i32, i32, float, i32, i32, %struct.gsicc_manager_s*, %struct.gsicc_link_cache_s*, %struct.gsicc_profile_cache_s*, %struct.gx_color_map_procs_s* (%struct.gs_imager_state_s*, %struct.gx_device_s*)*, %struct.gs_halftone_s*, [2 x %struct.gs_int_point_s], %struct.gx_device_halftone_s*, %struct.gs_cie_render_s*, i32, %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s*, %struct.gx_transfer_s, [64 x %struct.gx_transfer_map_s*], %struct.gx_cie_joint_caches_s*, %struct.gx_color_map_procs_s*, %struct.gs_devicen_color_map_s, %struct.gx_pattern_cache_s*, %struct.gs_color_space_s*, %struct.gs_color_space_s*, %struct.gx_cie_joint_caches_s*, %struct.gs_devicen_color_map_s }
%struct.gx_line_params_s = type { float, i32, i32, i32, i32, i32, float, float, float, i32, %struct.gs_matrix_s, %struct.gx_dash_params_s }
%struct.gs_matrix_s = type { float, float, float, float, float, float }
%struct.gx_dash_params_s = type { float*, i32, float, i32, float, i32, i32, float }
%struct.gs_matrix_fixed_s = type { float, float, float, float, float, float, i32, i32, i32 }
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
%struct.gsicc_devicen_s = type { %struct.gsicc_devicen_entry_s*, %struct.gsicc_devicen_entry_s*, i32 }
%struct.gsicc_devicen_entry_s = type { %struct.cmm_profile_s*, %struct.gsicc_devicen_entry_s* }
%struct.gsicc_smask_s = type { %struct.cmm_profile_s*, %struct.cmm_profile_s*, %struct.cmm_profile_s*, %struct.gs_memory_s*, i32 }
%struct.cmm_srcgtag_profile_s = type { [3 x %struct.cmm_profile_s*], [3 x %struct.gsicc_rendering_param_s], [3 x %struct.cmm_profile_s*], [3 x %struct.gsicc_rendering_param_s], %struct.cmm_profile_s*, %struct.gs_memory_s*, i32, i8*, %struct.rc_header_s }
%struct.gsicc_profile_cache_s = type { %struct.gsicc_profile_entry_s*, i32, %struct.rc_header_s, %struct.gs_memory_s* }
%struct.gsicc_profile_entry_s = type { %struct.gs_color_space_s*, %struct.gsicc_profile_entry_s*, i64 }
%struct.gs_halftone_s = type opaque
%struct.gs_int_point_s = type { i32, i32 }
%struct.gx_device_halftone_s = type opaque
%struct.gs_cie_render_s = type opaque
%struct.gx_transfer_map_s = type { %struct.rc_header_s, float (double, %struct.gx_transfer_map_s*)*, %struct.gs_mapping_closure_s, i64, [256 x i16] }
%struct.gs_mapping_closure_s = type { float (double, %struct.gx_transfer_map_s*, i8*)*, i8* }
%struct.gx_transfer_s = type { i32, %struct.gx_transfer_map_s*, i32, %struct.gx_transfer_map_s*, i32, %struct.gx_transfer_map_s*, i32, %struct.gx_transfer_map_s* }
%struct.gx_color_map_procs_s = type { void (i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, void (i16, i16, i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, void (i16, i16, i16, i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32, %struct.gs_color_space_s*)*, void (i16, i16, i16, i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, void (i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, void (i16*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_imager_state_s*, %struct.gx_device_s*)* }
%struct.gx_device_color_s = type { %struct.gx_device_color_type_s*, %union._c, %struct.gs_int_point_s, i32, %struct.gs_client_color_s, %struct._mask }
%struct.gx_device_color_type_s = type opaque
%union._c = type { %struct._col }
%struct._col = type { %struct.gx_device_halftone_s*, i16, [64 x i8], [64 x i32], i16, i64 }
%struct.gs_client_color_s = type { %struct.gs_pattern_instance_s*, %struct.gs_paint_color_s }
%struct.gs_pattern_instance_s = type opaque
%struct.gs_paint_color_s = type { [64 x float] }
%struct._mask = type { %struct.mp_, i64, %struct.gx_color_tile_s* }
%struct.mp_ = type { i32, i32 }
%struct.gx_color_tile_s = type opaque
%struct.gx_pattern_cache_s = type opaque
%struct.gs_color_space_s = type { %struct.gs_color_space_type_s*, %struct.rc_header_s, i64, %struct.gs_color_space_s*, %struct.gs_color_space_s*, %struct.client_color_space_data_s*, %struct.cmm_profile_s*, %union.anon }
%struct.gs_color_space_type_s = type { i32, i32, i32, %struct.gs_memory_struct_type_s*, i32 (%struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*)*, %struct.gs_color_space_s* (%struct.gs_color_space_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i16*, %struct.gs_imager_state_s*, %struct.gx_device_s*)*, i32 (i16*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)*, i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)*, void (%struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i32)*, i32 (%struct.gs_color_space_s*, %struct.stream_s*)*, i32 (%struct.gs_color_space_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, float, %struct.gsicc_link_s*)*, i32 (%struct.gs_color_space_s*)* }
%struct.gs_state_s = type opaque
%struct.stream_s = type opaque
%struct.client_color_space_data_s = type { void (%struct.gs_color_space_s*, i32)* }
%union.anon = type { %struct.gs_device_n_params_s }
%struct.gs_device_n_params_s = type { i64*, i32, %struct.gs_device_n_map_s*, %struct.gs_device_n_attributes_s*, i32, i32 (%struct.gs_memory_s*, i64, i8**, i32*)* }
%struct.gs_device_n_map_s = type opaque
%struct.gs_device_n_attributes_s = type opaque
%struct.gx_cie_joint_caches_s = type opaque
%struct.gs_devicen_color_map_s = type { i32, i32, i32, i32, i64, [64 x i32] }
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
%struct.gs_int_rect_s = type { %struct.gs_int_point_s, %struct.gs_int_point_s }
%struct.gx_image_enum_common_s = type opaque
%struct.gx_strip_bitmap_s = type { i8*, i32, %struct.gs_int_point_s, i64, i16, i16, i16, i16, i32 }
%struct.gs_fixed_rect_s = type { %struct.gs_fixed_point_s, %struct.gs_fixed_point_s }
%struct.gs_image_common_s = type { %struct.gx_image_type_s*, %struct.gs_matrix_s }
%struct.gs_get_bits_params_s = type opaque
%struct.gs_composite_s = type { %struct.gs_composite_type_s*, i64, i32, %struct.gs_composite_s*, %struct.gs_composite_s* }
%struct.gs_composite_type_s = type { i8, %struct.gs_composite_type_procs_s }
%struct.gs_composite_type_procs_s = type { i32 (%struct.gs_composite_s*, %struct.gx_device_s**, %struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gs_composite_s*, %struct.gs_composite_s*)*, i32 (%struct.gs_composite_s*, i8*, i32*, %struct.gx_device_clist_writer_s*)*, i32 (%struct.gs_composite_s**, i8*, i32, %struct.gs_memory_s*)*, i32 (%struct.gs_composite_s*, i32, i32, %struct.gs_imager_state_s*)*, i32 (%struct.gs_composite_s*, %struct.gs_composite_s**, %struct.gx_device_s*)*, i32 (%struct.gs_composite_s*, i8, i8)*, i32 (%struct.gs_composite_s*, %struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gs_composite_s*, %struct.gx_device_s*, %struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gs_composite_s*, i32*, i32*, i32, i32)* }
%struct.gx_device_clist_writer_s = type opaque
%struct.gs_param_list_s = type opaque
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
%struct.gs_rect_s = type { %struct.gs_point_s, %struct.gs_point_s }
%struct.gx_transparency_mask_params_s = type { i32, i32, i32, i32, [64 x float], float, i32, i32, i32, i32, [256 x i8], i64, %struct.cmm_profile_s* }
%struct.gx_cm_color_map_procs_s = type { void (%struct.gx_device_s*, i16, i16*)*, void (%struct.gx_device_s*, %struct.gs_imager_state_s*, i16, i16, i16, i16*)*, void (%struct.gx_device_s*, i16, i16, i16, i16, i16*)* }
%struct.gs_pattern1_instance_s = type opaque
%struct.gs_fill_attributes_s = type { %struct.gs_fixed_rect_s*, i32, %struct.gx_device_halftone_s*, i32, i32, i32, %struct.patch_fill_state_s* }
%struct.patch_fill_state_s = type opaque
%struct.gs_devn_params_s = type opaque
%struct.gx_process_page_options_s = type { i32 (i8*, %struct.gx_device_s*, %struct.gs_memory_s*, i32, i32, i8**)*, void (i8*, %struct.gx_device_s*, %struct.gs_memory_s*, i8*)*, i32 (i8*, %struct.gx_device_s*, %struct.gx_device_s*, %struct.gs_int_rect_s*, i8*)*, i32 (i8*, %struct.gx_device_s*, i8*)*, i8*, i32 }
%struct.nocm_link_s = type { %struct.gx_cm_color_map_procs_s, %struct.gs_imager_state_s*, i8, i8, %struct.gs_memory_s* }

@.str = private unnamed_addr constant [20 x i8] c"gsicc_nocm_get_link\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"gsicc_nocm_freelink\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"gsicc_nocm_copy_curve\00", align 1

; Function Attrs: nounwind uwtable
define %struct.gsicc_link_s* @gsicc_nocm_get_link(%struct.gs_imager_state_s* %pis, %struct.gx_device_s* %dev, i32 %src_index) #0 {
entry:
  %retval = alloca %struct.gsicc_link_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %src_index.addr = alloca i32, align 4
  %result = alloca %struct.gsicc_link_s*, align 8
  %hash = alloca %struct.gsicc_hashlink_s, align 8
  %nocm_link = alloca %struct.nocm_link_s*, align 8
  %mem = alloca %struct.gs_memory_s*, align 8
  %cm_procs = alloca %struct.gx_cm_color_map_procs_s*, align 8
  %pageneutralcolor = alloca i32, align 4
  %dev_profile = alloca %struct.cmm_dev_profile_s*, align 8
  %code = alloca i32, align 4
  %data_cs = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i32 %src_index, i32* %src_index.addr, align 4, !tbaa !5
  %0 = bitcast %struct.gsicc_link_s** %result to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast %struct.gsicc_hashlink_s* %hash to i8*
  call void @llvm.lifetime.start(i64 32, i8* %1) #1
  %2 = bitcast %struct.nocm_link_s** %nocm_link to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %4, i32 0, i32 1
  %5 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !6
  %non_gc_memory = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %5, i32 0, i32 3
  %6 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory, align 8, !tbaa !23
  store %struct.gs_memory_s* %6, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %7 = bitcast %struct.gx_cm_color_map_procs_s** %cm_procs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = bitcast i32* %pageneutralcolor to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  store i32 0, i32* %pageneutralcolor, align 4, !tbaa !26
  %9 = bitcast %struct.cmm_dev_profile_s** %dev_profile to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = bitcast i32* %data_cs to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  store i32 2, i32* %data_cs, align 4, !tbaa !5
  %12 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %cmp = icmp ne %struct.gx_device_s* %12, null
  br i1 %cmp, label %if.then, label %if.end.7

if.then:                                          ; preds = %entry
  %13 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %13, i32 0, i32 42
  %get_profile = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 67
  %14 = load i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)*, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)** %get_profile, align 8, !tbaa !27
  %15 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call = call i32 %14(%struct.gx_device_s* %15, %struct.cmm_dev_profile_s** %dev_profile) #4
  store i32 %call, i32* %code, align 4, !tbaa !26
  %16 = load i32, i32* %code, align 4, !tbaa !26
  %cmp1 = icmp slt i32 %16, 0
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  store %struct.gsicc_link_s* null, %struct.gsicc_link_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  %17 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %dev_profile, align 8, !tbaa !1
  %cmp3 = icmp ne %struct.cmm_dev_profile_s* %17, null
  br i1 %cmp3, label %if.then.4, label %if.end.6

if.then.4:                                        ; preds = %if.end
  %18 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %dev_profile, align 8, !tbaa !1
  %pageneutralcolor5 = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %18, i32 0, i32 7
  %19 = load i32, i32* %pageneutralcolor5, align 4, !tbaa !38
  store i32 %19, i32* %pageneutralcolor, align 4, !tbaa !26
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.4, %if.end
  br label %if.end.7

if.end.7:                                         ; preds = %if.end.6, %entry
  %20 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call8 = call i32 @fwd_uses_fwd_cmap_procs(%struct.gx_device_s* %20) #4
  %tobool = icmp ne i32 %call8, 0
  br i1 %tobool, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %if.end.7
  %21 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call10 = call %struct.gx_cm_color_map_procs_s* @fwd_get_target_cmap_procs(%struct.gx_device_s* %21) #4
  store %struct.gx_cm_color_map_procs_s* %call10, %struct.gx_cm_color_map_procs_s** %cm_procs, align 8, !tbaa !1
  br label %if.end.13

if.else:                                          ; preds = %if.end.7
  %22 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs11 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %22, i32 0, i32 42
  %get_color_mapping_procs = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs11, i32 0, i32 49
  %23 = load %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)*, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)** %get_color_mapping_procs, align 8, !tbaa !40
  %24 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call12 = call %struct.gx_cm_color_map_procs_s* %23(%struct.gx_device_s* %24) #4
  store %struct.gx_cm_color_map_procs_s* %call12, %struct.gx_cm_color_map_procs_s** %cm_procs, align 8, !tbaa !1
  br label %if.end.13

if.end.13:                                        ; preds = %if.else, %if.then.9
  %rend_hash = getelementptr inbounds %struct.gsicc_hashlink_s, %struct.gsicc_hashlink_s* %hash, i32 0, i32 3
  store i64 1, i64* %rend_hash, align 8, !tbaa !41
  %25 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %25, i32 0, i32 11
  %num_components = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 1
  %26 = load i32, i32* %num_components, align 4, !tbaa !43
  %conv = sext i32 %26 to i64
  %des_hash = getelementptr inbounds %struct.gsicc_hashlink_s, %struct.gsicc_hashlink_s* %hash, i32 0, i32 2
  store i64 %conv, i64* %des_hash, align 8, !tbaa !44
  %27 = load i32, i32* %src_index.addr, align 4, !tbaa !5
  %conv14 = zext i32 %27 to i64
  %src_hash = getelementptr inbounds %struct.gsicc_hashlink_s, %struct.gsicc_hashlink_s* %hash, i32 0, i32 1
  store i64 %conv14, i64* %src_hash, align 8, !tbaa !45
  %28 = load i32, i32* %src_index.addr, align 4, !tbaa !5
  %conv15 = zext i32 %28 to i64
  %des_hash16 = getelementptr inbounds %struct.gsicc_hashlink_s, %struct.gsicc_hashlink_s* %hash, i32 0, i32 2
  %29 = load i64, i64* %des_hash16, align 8, !tbaa !44
  %mul = mul nsw i64 %29, 256
  %add = add nsw i64 %conv15, %mul
  %rend_hash17 = getelementptr inbounds %struct.gsicc_hashlink_s, %struct.gsicc_hashlink_s* %hash, i32 0, i32 3
  %30 = load i64, i64* %rend_hash17, align 8, !tbaa !41
  %mul18 = mul nsw i64 %30, 4096
  %add19 = add nsw i64 %add, %mul18
  %link_hashcode = getelementptr inbounds %struct.gsicc_hashlink_s, %struct.gsicc_hashlink_s* %hash, i32 0, i32 0
  store i64 %add19, i64* %link_hashcode, align 8, !tbaa !46
  %31 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %icc_link_cache = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %31, i32 0, i32 36
  %32 = load %struct.gsicc_link_cache_s*, %struct.gsicc_link_cache_s** %icc_link_cache, align 8, !tbaa !47
  %call20 = call %struct.gsicc_link_s* @gsicc_findcachelink(%struct.gsicc_hashlink_s* byval align 8 %hash, %struct.gsicc_link_cache_s* %32, i32 0, i32 0) #4
  store %struct.gsicc_link_s* %call20, %struct.gsicc_link_s** %result, align 8, !tbaa !1
  %33 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %result, align 8, !tbaa !1
  %cmp21 = icmp ne %struct.gsicc_link_s* %33, null
  br i1 %cmp21, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %if.end.13
  %34 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %result, align 8, !tbaa !1
  store %struct.gsicc_link_s* %34, %struct.gsicc_link_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.24:                                        ; preds = %if.end.13
  %35 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %icc_link_cache25 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %35, i32 0, i32 36
  %36 = load %struct.gsicc_link_cache_s*, %struct.gsicc_link_cache_s** %icc_link_cache25, align 8, !tbaa !47
  %call26 = call i32 @gsicc_alloc_link_entry(%struct.gsicc_link_cache_s* %36, %struct.gsicc_link_s** %result, %struct.gsicc_hashlink_s* byval align 8 %hash, i32 0, i32 0) #4
  %tobool27 = icmp ne i32 %call26, 0
  br i1 %tobool27, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %if.end.24
  %37 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %result, align 8, !tbaa !1
  store %struct.gsicc_link_s* %37, %struct.gsicc_link_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.29:                                        ; preds = %if.end.24
  %38 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %result, align 8, !tbaa !1
  %cmp30 = icmp eq %struct.gsicc_link_s* %38, null
  br i1 %cmp30, label %if.then.32, label %if.end.33

if.then.32:                                       ; preds = %if.end.29
  store %struct.gsicc_link_s* null, %struct.gsicc_link_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.33:                                        ; preds = %if.end.29
  %39 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %icc_link_cache34 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %39, i32 0, i32 36
  %40 = load %struct.gsicc_link_cache_s*, %struct.gsicc_link_cache_s** %icc_link_cache34, align 8, !tbaa !47
  %lock = getelementptr inbounds %struct.gsicc_link_cache_s, %struct.gsicc_link_cache_s* %40, i32 0, i32 4
  %41 = load %struct.gx_monitor_s*, %struct.gx_monitor_s** %lock, align 8, !tbaa !48
  %native = getelementptr inbounds %struct.gx_monitor_s, %struct.gx_monitor_s* %41, i32 0, i32 1
  %call35 = call i32 @gp_monitor_enter(%union.gp_monitor* %native) #4
  %42 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %result, align 8, !tbaa !1
  %procs36 = getelementptr inbounds %struct.gsicc_link_s, %struct.gsicc_link_s* %42, i32 0, i32 1
  %map_buffer = getelementptr inbounds %struct.gscms_procs_s, %struct.gscms_procs_s* %procs36, i32 0, i32 0
  store void (%struct.gx_device_s*, %struct.gsicc_link_s*, %struct.gsicc_bufferdesc_s*, %struct.gsicc_bufferdesc_s*, i8*, i8*)* @gsicc_nocm_transform_color_buffer, void (%struct.gx_device_s*, %struct.gsicc_link_s*, %struct.gsicc_bufferdesc_s*, %struct.gsicc_bufferdesc_s*, i8*, i8*)** %map_buffer, align 8, !tbaa !50
  %43 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %result, align 8, !tbaa !1
  %procs37 = getelementptr inbounds %struct.gsicc_link_s, %struct.gsicc_link_s* %43, i32 0, i32 1
  %map_color = getelementptr inbounds %struct.gscms_procs_s, %struct.gscms_procs_s* %procs37, i32 0, i32 1
  store void (%struct.gx_device_s*, %struct.gsicc_link_s*, i8*, i8*, i32)* @gsicc_nocm_transform_color, void (%struct.gx_device_s*, %struct.gsicc_link_s*, i8*, i8*, i32)** %map_color, align 8, !tbaa !53
  %44 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %result, align 8, !tbaa !1
  %procs38 = getelementptr inbounds %struct.gsicc_link_s, %struct.gsicc_link_s* %44, i32 0, i32 1
  %free_link = getelementptr inbounds %struct.gscms_procs_s, %struct.gscms_procs_s* %procs38, i32 0, i32 2
  store void (%struct.gsicc_link_s*)* @gsicc_nocm_freelink, void (%struct.gsicc_link_s*)** %free_link, align 8, !tbaa !54
  %45 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %result, align 8, !tbaa !1
  %hashcode = getelementptr inbounds %struct.gsicc_link_s, %struct.gsicc_link_s* %45, i32 0, i32 2
  %46 = bitcast %struct.gsicc_hashlink_s* %hashcode to i8*
  %47 = bitcast %struct.gsicc_hashlink_s* %hash to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %46, i8* %47, i64 32, i32 8, i1 false), !tbaa.struct !55
  %48 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs39 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %48, i32 0, i32 1
  %alloc_bytes = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs39, i32 0, i32 7
  %49 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes, align 8, !tbaa !57
  %50 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %call40 = call i8* %49(%struct.gs_memory_s* %50, i32 48, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0)) #4
  %51 = bitcast i8* %call40 to %struct.nocm_link_s*
  store %struct.nocm_link_s* %51, %struct.nocm_link_s** %nocm_link, align 8, !tbaa !1
  %52 = load %struct.nocm_link_s*, %struct.nocm_link_s** %nocm_link, align 8, !tbaa !1
  %cmp41 = icmp eq %struct.nocm_link_s* %52, null
  br i1 %cmp41, label %if.then.43, label %if.end.44

if.then.43:                                       ; preds = %if.end.33
  store %struct.gsicc_link_s* null, %struct.gsicc_link_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.44:                                        ; preds = %if.end.33
  %53 = load %struct.nocm_link_s*, %struct.nocm_link_s** %nocm_link, align 8, !tbaa !1
  %54 = bitcast %struct.nocm_link_s* %53 to i8*
  %55 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %result, align 8, !tbaa !1
  %link_handle = getelementptr inbounds %struct.gsicc_link_s, %struct.gsicc_link_s* %55, i32 0, i32 0
  store i8* %54, i8** %link_handle, align 8, !tbaa !58
  %56 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %57 = load %struct.nocm_link_s*, %struct.nocm_link_s** %nocm_link, align 8, !tbaa !1
  %memory45 = getelementptr inbounds %struct.nocm_link_s, %struct.nocm_link_s* %57, i32 0, i32 4
  store %struct.gs_memory_s* %56, %struct.gs_memory_s** %memory45, align 8, !tbaa !59
  %58 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %cmp46 = icmp eq %struct.gs_imager_state_s* %58, null
  br i1 %cmp46, label %if.then.52, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.44
  %59 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %black_generation = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %59, i32 0, i32 44
  %60 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %black_generation, align 8, !tbaa !62
  %cmp48 = icmp eq %struct.gx_transfer_map_s* %60, null
  br i1 %cmp48, label %land.lhs.true, label %if.else.54

land.lhs.true:                                    ; preds = %lor.lhs.false
  %61 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %undercolor_removal = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %61, i32 0, i32 45
  %62 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %undercolor_removal, align 8, !tbaa !63
  %cmp50 = icmp eq %struct.gx_transfer_map_s* %62, null
  br i1 %cmp50, label %if.then.52, label %if.else.54

if.then.52:                                       ; preds = %land.lhs.true, %if.end.44
  %63 = load %struct.nocm_link_s*, %struct.nocm_link_s** %nocm_link, align 8, !tbaa !1
  %pis53 = getelementptr inbounds %struct.nocm_link_s, %struct.nocm_link_s* %63, i32 0, i32 1
  store %struct.gs_imager_state_s* null, %struct.gs_imager_state_s** %pis53, align 8, !tbaa !64
  br label %if.end.72

if.else.54:                                       ; preds = %land.lhs.true, %lor.lhs.false
  %64 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs55 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %64, i32 0, i32 1
  %alloc_bytes56 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs55, i32 0, i32 7
  %65 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes56, align 8, !tbaa !57
  %66 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %call57 = call i8* %65(%struct.gs_memory_s* %66, i32 1616, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0)) #4
  %67 = bitcast i8* %call57 to %struct.gs_imager_state_s*
  %68 = load %struct.nocm_link_s*, %struct.nocm_link_s** %nocm_link, align 8, !tbaa !1
  %pis58 = getelementptr inbounds %struct.nocm_link_s, %struct.nocm_link_s* %68, i32 0, i32 1
  store %struct.gs_imager_state_s* %67, %struct.gs_imager_state_s** %pis58, align 8, !tbaa !64
  %69 = load %struct.nocm_link_s*, %struct.nocm_link_s** %nocm_link, align 8, !tbaa !1
  %pis59 = getelementptr inbounds %struct.nocm_link_s, %struct.nocm_link_s* %69, i32 0, i32 1
  %70 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis59, align 8, !tbaa !64
  %cmp60 = icmp eq %struct.gs_imager_state_s* %70, null
  br i1 %cmp60, label %if.then.62, label %if.end.63

if.then.62:                                       ; preds = %if.else.54
  store %struct.gsicc_link_s* null, %struct.gsicc_link_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.63:                                        ; preds = %if.else.54
  %71 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %black_generation64 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %71, i32 0, i32 44
  %72 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %black_generation64, align 8, !tbaa !62
  %73 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %call65 = call %struct.gx_transfer_map_s* @gsicc_nocm_copy_curve(%struct.gx_transfer_map_s* %72, %struct.gs_memory_s* %73) #4
  %74 = load %struct.nocm_link_s*, %struct.nocm_link_s** %nocm_link, align 8, !tbaa !1
  %pis66 = getelementptr inbounds %struct.nocm_link_s, %struct.nocm_link_s* %74, i32 0, i32 1
  %75 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis66, align 8, !tbaa !64
  %black_generation67 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %75, i32 0, i32 44
  store %struct.gx_transfer_map_s* %call65, %struct.gx_transfer_map_s** %black_generation67, align 8, !tbaa !62
  %76 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %undercolor_removal68 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %76, i32 0, i32 45
  %77 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %undercolor_removal68, align 8, !tbaa !63
  %78 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %call69 = call %struct.gx_transfer_map_s* @gsicc_nocm_copy_curve(%struct.gx_transfer_map_s* %77, %struct.gs_memory_s* %78) #4
  %79 = load %struct.nocm_link_s*, %struct.nocm_link_s** %nocm_link, align 8, !tbaa !1
  %pis70 = getelementptr inbounds %struct.nocm_link_s, %struct.nocm_link_s* %79, i32 0, i32 1
  %80 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis70, align 8, !tbaa !64
  %undercolor_removal71 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %80, i32 0, i32 45
  store %struct.gx_transfer_map_s* %call69, %struct.gx_transfer_map_s** %undercolor_removal71, align 8, !tbaa !63
  br label %if.end.72

if.end.72:                                        ; preds = %if.end.63, %if.then.52
  %81 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info73 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %81, i32 0, i32 11
  %num_components74 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info73, i32 0, i32 1
  %82 = load i32, i32* %num_components74, align 4, !tbaa !43
  %cmp75 = icmp slt i32 %82, 64
  br i1 %cmp75, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.72
  %83 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info77 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %83, i32 0, i32 11
  %num_components78 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info77, i32 0, i32 1
  %84 = load i32, i32* %num_components78, align 4, !tbaa !43
  br label %cond.end

cond.false:                                       ; preds = %if.end.72
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %84, %cond.true ], [ 64, %cond.false ]
  %conv79 = trunc i32 %cond to i8
  %85 = load %struct.nocm_link_s*, %struct.nocm_link_s** %nocm_link, align 8, !tbaa !1
  %num_out = getelementptr inbounds %struct.nocm_link_s, %struct.nocm_link_s* %85, i32 0, i32 3
  store i8 %conv79, i8* %num_out, align 1, !tbaa !65
  %86 = load %struct.gx_cm_color_map_procs_s*, %struct.gx_cm_color_map_procs_s** %cm_procs, align 8, !tbaa !1
  %map_cmyk = getelementptr inbounds %struct.gx_cm_color_map_procs_s, %struct.gx_cm_color_map_procs_s* %86, i32 0, i32 2
  %87 = load void (%struct.gx_device_s*, i16, i16, i16, i16, i16*)*, void (%struct.gx_device_s*, i16, i16, i16, i16, i16*)** %map_cmyk, align 8, !tbaa !66
  %88 = load %struct.nocm_link_s*, %struct.nocm_link_s** %nocm_link, align 8, !tbaa !1
  %cm_procs80 = getelementptr inbounds %struct.nocm_link_s, %struct.nocm_link_s* %88, i32 0, i32 0
  %map_cmyk81 = getelementptr inbounds %struct.gx_cm_color_map_procs_s, %struct.gx_cm_color_map_procs_s* %cm_procs80, i32 0, i32 2
  store void (%struct.gx_device_s*, i16, i16, i16, i16, i16*)* %87, void (%struct.gx_device_s*, i16, i16, i16, i16, i16*)** %map_cmyk81, align 8, !tbaa !67
  %89 = load %struct.gx_cm_color_map_procs_s*, %struct.gx_cm_color_map_procs_s** %cm_procs, align 8, !tbaa !1
  %map_rgb = getelementptr inbounds %struct.gx_cm_color_map_procs_s, %struct.gx_cm_color_map_procs_s* %89, i32 0, i32 1
  %90 = load void (%struct.gx_device_s*, %struct.gs_imager_state_s*, i16, i16, i16, i16*)*, void (%struct.gx_device_s*, %struct.gs_imager_state_s*, i16, i16, i16, i16*)** %map_rgb, align 8, !tbaa !68
  %91 = load %struct.nocm_link_s*, %struct.nocm_link_s** %nocm_link, align 8, !tbaa !1
  %cm_procs82 = getelementptr inbounds %struct.nocm_link_s, %struct.nocm_link_s* %91, i32 0, i32 0
  %map_rgb83 = getelementptr inbounds %struct.gx_cm_color_map_procs_s, %struct.gx_cm_color_map_procs_s* %cm_procs82, i32 0, i32 1
  store void (%struct.gx_device_s*, %struct.gs_imager_state_s*, i16, i16, i16, i16*)* %90, void (%struct.gx_device_s*, %struct.gs_imager_state_s*, i16, i16, i16, i16*)** %map_rgb83, align 8, !tbaa !69
  %92 = load %struct.gx_cm_color_map_procs_s*, %struct.gx_cm_color_map_procs_s** %cm_procs, align 8, !tbaa !1
  %map_gray = getelementptr inbounds %struct.gx_cm_color_map_procs_s, %struct.gx_cm_color_map_procs_s* %92, i32 0, i32 0
  %93 = load void (%struct.gx_device_s*, i16, i16*)*, void (%struct.gx_device_s*, i16, i16*)** %map_gray, align 8, !tbaa !70
  %94 = load %struct.nocm_link_s*, %struct.nocm_link_s** %nocm_link, align 8, !tbaa !1
  %cm_procs84 = getelementptr inbounds %struct.nocm_link_s, %struct.nocm_link_s* %94, i32 0, i32 0
  %map_gray85 = getelementptr inbounds %struct.gx_cm_color_map_procs_s, %struct.gx_cm_color_map_procs_s* %cm_procs84, i32 0, i32 0
  store void (%struct.gx_device_s*, i16, i16*)* %93, void (%struct.gx_device_s*, i16, i16*)** %map_gray85, align 8, !tbaa !71
  %95 = load i32, i32* %src_index.addr, align 4, !tbaa !5
  %conv86 = trunc i32 %95 to i8
  %96 = load %struct.nocm_link_s*, %struct.nocm_link_s** %nocm_link, align 8, !tbaa !1
  %num_in = getelementptr inbounds %struct.nocm_link_s, %struct.nocm_link_s* %96, i32 0, i32 2
  store i8 %conv86, i8* %num_in, align 1, !tbaa !72
  %97 = load %struct.nocm_link_s*, %struct.nocm_link_s** %nocm_link, align 8, !tbaa !1
  %num_in87 = getelementptr inbounds %struct.nocm_link_s, %struct.nocm_link_s* %97, i32 0, i32 2
  %98 = load i8, i8* %num_in87, align 1, !tbaa !72
  %conv88 = zext i8 %98 to i32
  %99 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %result, align 8, !tbaa !1
  %num_input = getelementptr inbounds %struct.gsicc_link_s, %struct.gsicc_link_s* %99, i32 0, i32 15
  store i32 %conv88, i32* %num_input, align 4, !tbaa !73
  %100 = load %struct.nocm_link_s*, %struct.nocm_link_s** %nocm_link, align 8, !tbaa !1
  %num_out89 = getelementptr inbounds %struct.nocm_link_s, %struct.nocm_link_s* %100, i32 0, i32 3
  %101 = load i8, i8* %num_out89, align 1, !tbaa !65
  %conv90 = zext i8 %101 to i32
  %102 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %result, align 8, !tbaa !1
  %num_output = getelementptr inbounds %struct.gsicc_link_s, %struct.gsicc_link_s* %102, i32 0, i32 16
  store i32 %conv90, i32* %num_output, align 4, !tbaa !74
  %103 = load %struct.nocm_link_s*, %struct.nocm_link_s** %nocm_link, align 8, !tbaa !1
  %104 = bitcast %struct.nocm_link_s* %103 to i8*
  %105 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %result, align 8, !tbaa !1
  %link_handle91 = getelementptr inbounds %struct.gsicc_link_s, %struct.gsicc_link_s* %105, i32 0, i32 0
  store i8* %104, i8** %link_handle91, align 8, !tbaa !58
  %link_hashcode92 = getelementptr inbounds %struct.gsicc_hashlink_s, %struct.gsicc_hashlink_s* %hash, i32 0, i32 0
  %106 = load i64, i64* %link_hashcode92, align 8, !tbaa !46
  %107 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %result, align 8, !tbaa !1
  %hashcode93 = getelementptr inbounds %struct.gsicc_link_s, %struct.gsicc_link_s* %107, i32 0, i32 2
  %link_hashcode94 = getelementptr inbounds %struct.gsicc_hashlink_s, %struct.gsicc_hashlink_s* %hashcode93, i32 0, i32 0
  store i64 %106, i64* %link_hashcode94, align 8, !tbaa !75
  %des_hash95 = getelementptr inbounds %struct.gsicc_hashlink_s, %struct.gsicc_hashlink_s* %hash, i32 0, i32 2
  %108 = load i64, i64* %des_hash95, align 8, !tbaa !44
  %109 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %result, align 8, !tbaa !1
  %hashcode96 = getelementptr inbounds %struct.gsicc_link_s, %struct.gsicc_link_s* %109, i32 0, i32 2
  %des_hash97 = getelementptr inbounds %struct.gsicc_hashlink_s, %struct.gsicc_hashlink_s* %hashcode96, i32 0, i32 2
  store i64 %108, i64* %des_hash97, align 8, !tbaa !76
  %src_hash98 = getelementptr inbounds %struct.gsicc_hashlink_s, %struct.gsicc_hashlink_s* %hash, i32 0, i32 1
  %110 = load i64, i64* %src_hash98, align 8, !tbaa !45
  %111 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %result, align 8, !tbaa !1
  %hashcode99 = getelementptr inbounds %struct.gsicc_link_s, %struct.gsicc_link_s* %111, i32 0, i32 2
  %src_hash100 = getelementptr inbounds %struct.gsicc_hashlink_s, %struct.gsicc_hashlink_s* %hashcode99, i32 0, i32 1
  store i64 %110, i64* %src_hash100, align 8, !tbaa !77
  %rend_hash101 = getelementptr inbounds %struct.gsicc_hashlink_s, %struct.gsicc_hashlink_s* %hash, i32 0, i32 3
  %112 = load i64, i64* %rend_hash101, align 8, !tbaa !41
  %113 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %result, align 8, !tbaa !1
  %hashcode102 = getelementptr inbounds %struct.gsicc_link_s, %struct.gsicc_link_s* %113, i32 0, i32 2
  %rend_hash103 = getelementptr inbounds %struct.gsicc_hashlink_s, %struct.gsicc_hashlink_s* %hashcode102, i32 0, i32 3
  store i64 %112, i64* %rend_hash103, align 8, !tbaa !78
  %114 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %result, align 8, !tbaa !1
  %includes_softproof = getelementptr inbounds %struct.gsicc_link_s, %struct.gsicc_link_s* %114, i32 0, i32 8
  store i32 0, i32* %includes_softproof, align 4, !tbaa !79
  %115 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %result, align 8, !tbaa !1
  %includes_devlink = getelementptr inbounds %struct.gsicc_link_s, %struct.gsicc_link_s* %115, i32 0, i32 9
  store i32 0, i32* %includes_devlink, align 4, !tbaa !80
  %src_hash104 = getelementptr inbounds %struct.gsicc_hashlink_s, %struct.gsicc_hashlink_s* %hash, i32 0, i32 1
  %116 = load i64, i64* %src_hash104, align 8, !tbaa !45
  %des_hash105 = getelementptr inbounds %struct.gsicc_hashlink_s, %struct.gsicc_hashlink_s* %hash, i32 0, i32 2
  %117 = load i64, i64* %des_hash105, align 8, !tbaa !44
  %cmp106 = icmp eq i64 %116, %117
  br i1 %cmp106, label %if.then.108, label %if.else.109

if.then.108:                                      ; preds = %cond.end
  %118 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %result, align 8, !tbaa !1
  %is_identity = getelementptr inbounds %struct.gsicc_link_s, %struct.gsicc_link_s* %118, i32 0, i32 10
  store i32 1, i32* %is_identity, align 4, !tbaa !81
  br label %if.end.111

if.else.109:                                      ; preds = %cond.end
  %119 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %result, align 8, !tbaa !1
  %is_identity110 = getelementptr inbounds %struct.gsicc_link_s, %struct.gsicc_link_s* %119, i32 0, i32 10
  store i32 0, i32* %is_identity110, align 4, !tbaa !81
  br label %if.end.111

if.end.111:                                       ; preds = %if.else.109, %if.then.108
  %120 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %result, align 8, !tbaa !1
  %valid = getelementptr inbounds %struct.gsicc_link_s, %struct.gsicc_link_s* %120, i32 0, i32 11
  store i32 1, i32* %valid, align 4, !tbaa !82
  %121 = load %struct.nocm_link_s*, %struct.nocm_link_s** %nocm_link, align 8, !tbaa !1
  %num_in112 = getelementptr inbounds %struct.nocm_link_s, %struct.nocm_link_s* %121, i32 0, i32 2
  %122 = load i8, i8* %num_in112, align 1, !tbaa !72
  %conv113 = zext i8 %122 to i32
  %cmp114 = icmp eq i32 %conv113, 4
  br i1 %cmp114, label %if.then.116, label %if.else.117

if.then.116:                                      ; preds = %if.end.111
  store i32 3, i32* %data_cs, align 4, !tbaa !5
  br label %if.end.124

if.else.117:                                      ; preds = %if.end.111
  %123 = load %struct.nocm_link_s*, %struct.nocm_link_s** %nocm_link, align 8, !tbaa !1
  %num_in118 = getelementptr inbounds %struct.nocm_link_s, %struct.nocm_link_s* %123, i32 0, i32 2
  %124 = load i8, i8* %num_in118, align 1, !tbaa !72
  %conv119 = zext i8 %124 to i32
  %cmp120 = icmp eq i32 %conv119, 1
  br i1 %cmp120, label %if.then.122, label %if.end.123

if.then.122:                                      ; preds = %if.else.117
  store i32 1, i32* %data_cs, align 4, !tbaa !5
  br label %if.end.123

if.end.123:                                       ; preds = %if.then.122, %if.else.117
  br label %if.end.124

if.end.124:                                       ; preds = %if.end.123, %if.then.116
  %125 = load i32, i32* %data_cs, align 4, !tbaa !5
  %126 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %result, align 8, !tbaa !1
  %data_cs125 = getelementptr inbounds %struct.gsicc_link_s, %struct.gsicc_link_s* %126, i32 0, i32 14
  store i32 %125, i32* %data_cs125, align 4, !tbaa !83
  %127 = load i32, i32* %pageneutralcolor, align 4, !tbaa !26
  %tobool126 = icmp ne i32 %127, 0
  br i1 %tobool126, label %land.lhs.true.127, label %if.end.133

land.lhs.true.127:                                ; preds = %if.end.124
  %128 = load %struct.nocm_link_s*, %struct.nocm_link_s** %nocm_link, align 8, !tbaa !1
  %num_in128 = getelementptr inbounds %struct.nocm_link_s, %struct.nocm_link_s* %128, i32 0, i32 2
  %129 = load i8, i8* %num_in128, align 1, !tbaa !72
  %conv129 = zext i8 %129 to i32
  %cmp130 = icmp ne i32 %conv129, 1
  br i1 %cmp130, label %if.then.132, label %if.end.133

if.then.132:                                      ; preds = %land.lhs.true.127
  %130 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %result, align 8, !tbaa !1
  call void @gsicc_mcm_set_link(%struct.gsicc_link_s* %130) #4
  br label %if.end.133

if.end.133:                                       ; preds = %if.then.132, %land.lhs.true.127, %if.end.124
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.133
  %131 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %result, align 8, !tbaa !1
  %num_waiting = getelementptr inbounds %struct.gsicc_link_s, %struct.gsicc_link_s* %131, i32 0, i32 7
  %132 = load i32, i32* %num_waiting, align 4, !tbaa !84
  %cmp134 = icmp sgt i32 %132, 0
  br i1 %cmp134, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %133 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %result, align 8, !tbaa !1
  %wait = getelementptr inbounds %struct.gsicc_link_s, %struct.gsicc_link_s* %133, i32 0, i32 6
  %134 = load %struct.gx_semaphore_s*, %struct.gx_semaphore_s** %wait, align 8, !tbaa !85
  %native136 = getelementptr inbounds %struct.gx_semaphore_s, %struct.gx_semaphore_s* %134, i32 0, i32 1
  %call137 = call i32 @gp_semaphore_signal(%union.gp_semaphore* %native136) #4
  %135 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %result, align 8, !tbaa !1
  %num_waiting138 = getelementptr inbounds %struct.gsicc_link_s, %struct.gsicc_link_s* %135, i32 0, i32 7
  %136 = load i32, i32* %num_waiting138, align 4, !tbaa !84
  %dec = add nsw i32 %136, -1
  store i32 %dec, i32* %num_waiting138, align 4, !tbaa !84
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %137 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %icc_link_cache139 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %137, i32 0, i32 36
  %138 = load %struct.gsicc_link_cache_s*, %struct.gsicc_link_cache_s** %icc_link_cache139, align 8, !tbaa !47
  %lock140 = getelementptr inbounds %struct.gsicc_link_cache_s, %struct.gsicc_link_cache_s* %138, i32 0, i32 4
  %139 = load %struct.gx_monitor_s*, %struct.gx_monitor_s** %lock140, align 8, !tbaa !48
  %native141 = getelementptr inbounds %struct.gx_monitor_s, %struct.gx_monitor_s* %139, i32 0, i32 1
  %call142 = call i32 @gp_monitor_leave(%union.gp_monitor* %native141) #4
  %140 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %result, align 8, !tbaa !1
  store %struct.gsicc_link_s* %140, %struct.gsicc_link_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.then.62, %if.then.43, %if.then.32, %if.then.28, %if.then.23, %if.then.2
  %141 = bitcast i32* %data_cs to i8*
  call void @llvm.lifetime.end(i64 4, i8* %141) #1
  %142 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %142) #1
  %143 = bitcast %struct.cmm_dev_profile_s** %dev_profile to i8*
  call void @llvm.lifetime.end(i64 8, i8* %143) #1
  %144 = bitcast i32* %pageneutralcolor to i8*
  call void @llvm.lifetime.end(i64 4, i8* %144) #1
  %145 = bitcast %struct.gx_cm_color_map_procs_s** %cm_procs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %145) #1
  %146 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %146) #1
  %147 = bitcast %struct.nocm_link_s** %nocm_link to i8*
  call void @llvm.lifetime.end(i64 8, i8* %147) #1
  %148 = bitcast %struct.gsicc_hashlink_s* %hash to i8*
  call void @llvm.lifetime.end(i64 32, i8* %148) #1
  %149 = bitcast %struct.gsicc_link_s** %result to i8*
  call void @llvm.lifetime.end(i64 8, i8* %149) #1
  %150 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %retval
  ret %struct.gsicc_link_s* %150
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

declare i32 @fwd_uses_fwd_cmap_procs(%struct.gx_device_s*) #2

declare %struct.gx_cm_color_map_procs_s* @fwd_get_target_cmap_procs(%struct.gx_device_s*) #2

declare %struct.gsicc_link_s* @gsicc_findcachelink(%struct.gsicc_hashlink_s* byval align 8, %struct.gsicc_link_cache_s*, i32, i32) #2

declare i32 @gsicc_alloc_link_entry(%struct.gsicc_link_cache_s*, %struct.gsicc_link_s**, %struct.gsicc_hashlink_s* byval align 8, i32, i32) #2

declare i32 @gp_monitor_enter(%union.gp_monitor*) #2

; Function Attrs: nounwind uwtable
define internal void @gsicc_nocm_transform_color_buffer(%struct.gx_device_s* %dev, %struct.gsicc_link_s* %icclink, %struct.gsicc_bufferdesc_s* %input_buff_desc, %struct.gsicc_bufferdesc_s* %output_buff_desc, i8* %inputbuffer, i8* %outputbuffer) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %icclink.addr = alloca %struct.gsicc_link_s*, align 8
  %input_buff_desc.addr = alloca %struct.gsicc_bufferdesc_s*, align 8
  %output_buff_desc.addr = alloca %struct.gsicc_bufferdesc_s*, align 8
  %inputbuffer.addr = alloca i8*, align 8
  %outputbuffer.addr = alloca i8*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gsicc_link_s* %icclink, %struct.gsicc_link_s** %icclink.addr, align 8, !tbaa !1
  store %struct.gsicc_bufferdesc_s* %input_buff_desc, %struct.gsicc_bufferdesc_s** %input_buff_desc.addr, align 8, !tbaa !1
  store %struct.gsicc_bufferdesc_s* %output_buff_desc, %struct.gsicc_bufferdesc_s** %output_buff_desc.addr, align 8, !tbaa !1
  store i8* %inputbuffer, i8** %inputbuffer.addr, align 8, !tbaa !1
  store i8* %outputbuffer, i8** %outputbuffer.addr, align 8, !tbaa !1
  %0 = load %struct.gsicc_bufferdesc_s*, %struct.gsicc_bufferdesc_s** %input_buff_desc.addr, align 8, !tbaa !1
  %is_planar = getelementptr inbounds %struct.gsicc_bufferdesc_s, %struct.gsicc_bufferdesc_s* %0, i32 0, i32 5
  %1 = load i32, i32* %is_planar, align 4, !tbaa !86
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.else.4

if.then:                                          ; preds = %entry
  %2 = load %struct.gsicc_bufferdesc_s*, %struct.gsicc_bufferdesc_s** %output_buff_desc.addr, align 8, !tbaa !1
  %is_planar1 = getelementptr inbounds %struct.gsicc_bufferdesc_s, %struct.gsicc_bufferdesc_s* %2, i32 0, i32 5
  %3 = load i32, i32* %is_planar1, align 4, !tbaa !86
  %tobool2 = icmp ne i32 %3, 0
  br i1 %tobool2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.then
  %4 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %5 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %icclink.addr, align 8, !tbaa !1
  %6 = load %struct.gsicc_bufferdesc_s*, %struct.gsicc_bufferdesc_s** %input_buff_desc.addr, align 8, !tbaa !1
  %7 = load %struct.gsicc_bufferdesc_s*, %struct.gsicc_bufferdesc_s** %output_buff_desc.addr, align 8, !tbaa !1
  %8 = load i8*, i8** %inputbuffer.addr, align 8, !tbaa !1
  %9 = load i8*, i8** %outputbuffer.addr, align 8, !tbaa !1
  call void @gsicc_nocm_planar_to_planar(%struct.gx_device_s* %4, %struct.gsicc_link_s* %5, %struct.gsicc_bufferdesc_s* %6, %struct.gsicc_bufferdesc_s* %7, i8* %8, i8* %9) #4
  br label %if.end

if.else:                                          ; preds = %if.then
  %10 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %11 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %icclink.addr, align 8, !tbaa !1
  %12 = load %struct.gsicc_bufferdesc_s*, %struct.gsicc_bufferdesc_s** %input_buff_desc.addr, align 8, !tbaa !1
  %13 = load %struct.gsicc_bufferdesc_s*, %struct.gsicc_bufferdesc_s** %output_buff_desc.addr, align 8, !tbaa !1
  %14 = load i8*, i8** %inputbuffer.addr, align 8, !tbaa !1
  %15 = load i8*, i8** %outputbuffer.addr, align 8, !tbaa !1
  call void @gsicc_nocm_planar_to_chunky(%struct.gx_device_s* %10, %struct.gsicc_link_s* %11, %struct.gsicc_bufferdesc_s* %12, %struct.gsicc_bufferdesc_s* %13, i8* %14, i8* %15) #4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.3
  br label %if.end.10

if.else.4:                                        ; preds = %entry
  %16 = load %struct.gsicc_bufferdesc_s*, %struct.gsicc_bufferdesc_s** %output_buff_desc.addr, align 8, !tbaa !1
  %is_planar5 = getelementptr inbounds %struct.gsicc_bufferdesc_s, %struct.gsicc_bufferdesc_s* %16, i32 0, i32 5
  %17 = load i32, i32* %is_planar5, align 4, !tbaa !86
  %tobool6 = icmp ne i32 %17, 0
  br i1 %tobool6, label %if.then.7, label %if.else.8

if.then.7:                                        ; preds = %if.else.4
  %18 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %19 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %icclink.addr, align 8, !tbaa !1
  %20 = load %struct.gsicc_bufferdesc_s*, %struct.gsicc_bufferdesc_s** %input_buff_desc.addr, align 8, !tbaa !1
  %21 = load %struct.gsicc_bufferdesc_s*, %struct.gsicc_bufferdesc_s** %output_buff_desc.addr, align 8, !tbaa !1
  %22 = load i8*, i8** %inputbuffer.addr, align 8, !tbaa !1
  %23 = load i8*, i8** %outputbuffer.addr, align 8, !tbaa !1
  call void @gsicc_nocm_chunky_to_planar(%struct.gx_device_s* %18, %struct.gsicc_link_s* %19, %struct.gsicc_bufferdesc_s* %20, %struct.gsicc_bufferdesc_s* %21, i8* %22, i8* %23) #4
  br label %if.end.9

if.else.8:                                        ; preds = %if.else.4
  %24 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %25 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %icclink.addr, align 8, !tbaa !1
  %26 = load %struct.gsicc_bufferdesc_s*, %struct.gsicc_bufferdesc_s** %input_buff_desc.addr, align 8, !tbaa !1
  %27 = load %struct.gsicc_bufferdesc_s*, %struct.gsicc_bufferdesc_s** %output_buff_desc.addr, align 8, !tbaa !1
  %28 = load i8*, i8** %inputbuffer.addr, align 8, !tbaa !1
  %29 = load i8*, i8** %outputbuffer.addr, align 8, !tbaa !1
  call void @gsicc_nocm_chunky_to_chunky(%struct.gx_device_s* %24, %struct.gsicc_link_s* %25, %struct.gsicc_bufferdesc_s* %26, %struct.gsicc_bufferdesc_s* %27, i8* %28, i8* %29) #4
  br label %if.end.9

if.end.9:                                         ; preds = %if.else.8, %if.then.7
  br label %if.end.10

if.end.10:                                        ; preds = %if.end.9, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gsicc_nocm_transform_color(%struct.gx_device_s* %dev, %struct.gsicc_link_s* %icclink, i8* %inputcolor, i8* %outputcolor, i32 %num_bytes) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %icclink.addr = alloca %struct.gsicc_link_s*, align 8
  %inputcolor.addr = alloca i8*, align 8
  %outputcolor.addr = alloca i8*, align 8
  %num_bytes.addr = alloca i32, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gsicc_link_s* %icclink, %struct.gsicc_link_s** %icclink.addr, align 8, !tbaa !1
  store i8* %inputcolor, i8** %inputcolor.addr, align 8, !tbaa !1
  store i8* %outputcolor, i8** %outputcolor.addr, align 8, !tbaa !1
  store i32 %num_bytes, i32* %num_bytes.addr, align 4, !tbaa !26
  %0 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %1 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %icclink.addr, align 8, !tbaa !1
  %2 = load i8*, i8** %inputcolor.addr, align 8, !tbaa !1
  %3 = load i8*, i8** %outputcolor.addr, align 8, !tbaa !1
  %4 = load i32, i32* %num_bytes.addr, align 4, !tbaa !26
  %5 = load i32, i32* %num_bytes.addr, align 4, !tbaa !26
  call void @gsicc_nocm_transform_general(%struct.gx_device_s* %0, %struct.gsicc_link_s* %1, i8* %2, i8* %3, i32 %4, i32 %5) #4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gsicc_nocm_freelink(%struct.gsicc_link_s* %icclink) #0 {
entry:
  %icclink.addr = alloca %struct.gsicc_link_s*, align 8
  %nocm_link = alloca %struct.nocm_link_s*, align 8
  store %struct.gsicc_link_s* %icclink, %struct.gsicc_link_s** %icclink.addr, align 8, !tbaa !1
  %0 = bitcast %struct.nocm_link_s** %nocm_link to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %icclink.addr, align 8, !tbaa !1
  %link_handle = getelementptr inbounds %struct.gsicc_link_s, %struct.gsicc_link_s* %1, i32 0, i32 0
  %2 = load i8*, i8** %link_handle, align 8, !tbaa !58
  %3 = bitcast i8* %2 to %struct.nocm_link_s*
  store %struct.nocm_link_s* %3, %struct.nocm_link_s** %nocm_link, align 8, !tbaa !1
  %4 = load %struct.nocm_link_s*, %struct.nocm_link_s** %nocm_link, align 8, !tbaa !1
  %pis = getelementptr inbounds %struct.nocm_link_s, %struct.nocm_link_s* %4, i32 0, i32 1
  %5 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis, align 8, !tbaa !64
  %cmp = icmp ne %struct.gs_imager_state_s* %5, null
  br i1 %cmp, label %if.then, label %if.end.22

if.then:                                          ; preds = %entry
  %6 = load %struct.nocm_link_s*, %struct.nocm_link_s** %nocm_link, align 8, !tbaa !1
  %pis1 = getelementptr inbounds %struct.nocm_link_s, %struct.nocm_link_s* %6, i32 0, i32 1
  %7 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis1, align 8, !tbaa !64
  %black_generation = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %7, i32 0, i32 44
  %8 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %black_generation, align 8, !tbaa !62
  %cmp2 = icmp ne %struct.gx_transfer_map_s* %8, null
  br i1 %cmp2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  %9 = load %struct.nocm_link_s*, %struct.nocm_link_s** %nocm_link, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.nocm_link_s, %struct.nocm_link_s* %9, i32 0, i32 4
  %10 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !59
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %10, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %11 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !88
  %12 = load %struct.nocm_link_s*, %struct.nocm_link_s** %nocm_link, align 8, !tbaa !1
  %memory4 = getelementptr inbounds %struct.nocm_link_s, %struct.nocm_link_s* %12, i32 0, i32 4
  %13 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory4, align 8, !tbaa !59
  %14 = load %struct.nocm_link_s*, %struct.nocm_link_s** %nocm_link, align 8, !tbaa !1
  %pis5 = getelementptr inbounds %struct.nocm_link_s, %struct.nocm_link_s* %14, i32 0, i32 1
  %15 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis5, align 8, !tbaa !64
  %black_generation6 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %15, i32 0, i32 44
  %16 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %black_generation6, align 8, !tbaa !62
  %17 = bitcast %struct.gx_transfer_map_s* %16 to i8*
  call void %11(%struct.gs_memory_s* %13, i8* %17, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0)) #4
  br label %if.end

if.end:                                           ; preds = %if.then.3, %if.then
  %18 = load %struct.nocm_link_s*, %struct.nocm_link_s** %nocm_link, align 8, !tbaa !1
  %pis7 = getelementptr inbounds %struct.nocm_link_s, %struct.nocm_link_s* %18, i32 0, i32 1
  %19 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis7, align 8, !tbaa !64
  %undercolor_removal = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %19, i32 0, i32 45
  %20 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %undercolor_removal, align 8, !tbaa !63
  %cmp8 = icmp ne %struct.gx_transfer_map_s* %20, null
  br i1 %cmp8, label %if.then.9, label %if.end.16

if.then.9:                                        ; preds = %if.end
  %21 = load %struct.nocm_link_s*, %struct.nocm_link_s** %nocm_link, align 8, !tbaa !1
  %memory10 = getelementptr inbounds %struct.nocm_link_s, %struct.nocm_link_s* %21, i32 0, i32 4
  %22 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory10, align 8, !tbaa !59
  %procs11 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %22, i32 0, i32 1
  %free_object12 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs11, i32 0, i32 2
  %23 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object12, align 8, !tbaa !88
  %24 = load %struct.nocm_link_s*, %struct.nocm_link_s** %nocm_link, align 8, !tbaa !1
  %memory13 = getelementptr inbounds %struct.nocm_link_s, %struct.nocm_link_s* %24, i32 0, i32 4
  %25 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory13, align 8, !tbaa !59
  %26 = load %struct.nocm_link_s*, %struct.nocm_link_s** %nocm_link, align 8, !tbaa !1
  %pis14 = getelementptr inbounds %struct.nocm_link_s, %struct.nocm_link_s* %26, i32 0, i32 1
  %27 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis14, align 8, !tbaa !64
  %undercolor_removal15 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %27, i32 0, i32 45
  %28 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %undercolor_removal15, align 8, !tbaa !63
  %29 = bitcast %struct.gx_transfer_map_s* %28 to i8*
  call void %23(%struct.gs_memory_s* %25, i8* %29, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0)) #4
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.9, %if.end
  %30 = load %struct.nocm_link_s*, %struct.nocm_link_s** %nocm_link, align 8, !tbaa !1
  %memory17 = getelementptr inbounds %struct.nocm_link_s, %struct.nocm_link_s* %30, i32 0, i32 4
  %31 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory17, align 8, !tbaa !59
  %procs18 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %31, i32 0, i32 1
  %free_object19 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs18, i32 0, i32 2
  %32 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object19, align 8, !tbaa !88
  %33 = load %struct.nocm_link_s*, %struct.nocm_link_s** %nocm_link, align 8, !tbaa !1
  %memory20 = getelementptr inbounds %struct.nocm_link_s, %struct.nocm_link_s* %33, i32 0, i32 4
  %34 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory20, align 8, !tbaa !59
  %35 = load %struct.nocm_link_s*, %struct.nocm_link_s** %nocm_link, align 8, !tbaa !1
  %pis21 = getelementptr inbounds %struct.nocm_link_s, %struct.nocm_link_s* %35, i32 0, i32 1
  %36 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis21, align 8, !tbaa !64
  %37 = bitcast %struct.gs_imager_state_s* %36 to i8*
  call void %32(%struct.gs_memory_s* %34, i8* %37, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0)) #4
  br label %if.end.22

if.end.22:                                        ; preds = %if.end.16, %entry
  %38 = load %struct.nocm_link_s*, %struct.nocm_link_s** %nocm_link, align 8, !tbaa !1
  %memory23 = getelementptr inbounds %struct.nocm_link_s, %struct.nocm_link_s* %38, i32 0, i32 4
  %39 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory23, align 8, !tbaa !59
  %procs24 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %39, i32 0, i32 1
  %free_object25 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs24, i32 0, i32 2
  %40 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object25, align 8, !tbaa !88
  %41 = load %struct.nocm_link_s*, %struct.nocm_link_s** %nocm_link, align 8, !tbaa !1
  %memory26 = getelementptr inbounds %struct.nocm_link_s, %struct.nocm_link_s* %41, i32 0, i32 4
  %42 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory26, align 8, !tbaa !59
  %43 = load %struct.nocm_link_s*, %struct.nocm_link_s** %nocm_link, align 8, !tbaa !1
  %44 = bitcast %struct.nocm_link_s* %43 to i8*
  call void %40(%struct.gs_memory_s* %42, i8* %44, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0)) #4
  %45 = bitcast %struct.nocm_link_s** %nocm_link to i8*
  call void @llvm.lifetime.end(i64 8, i8* %45) #1
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind uwtable
define internal %struct.gx_transfer_map_s* @gsicc_nocm_copy_curve(%struct.gx_transfer_map_s* %in_map, %struct.gs_memory_s* %mem) #0 {
entry:
  %retval = alloca %struct.gx_transfer_map_s*, align 8
  %in_map.addr = alloca %struct.gx_transfer_map_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %out_map = alloca %struct.gx_transfer_map_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gx_transfer_map_s* %in_map, %struct.gx_transfer_map_s** %in_map.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_transfer_map_s** %out_map to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %in_map.addr, align 8, !tbaa !1
  %cmp = icmp eq %struct.gx_transfer_map_s* %1, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store %struct.gx_transfer_map_s* null, %struct.gx_transfer_map_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %entry
  %2 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %2, i32 0, i32 1
  %alloc_bytes = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 7
  %3 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes, align 8, !tbaa !57
  %4 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call = call i8* %3(%struct.gs_memory_s* %4, i32 568, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i32 0, i32 0)) #4
  %5 = bitcast i8* %call to %struct.gx_transfer_map_s*
  store %struct.gx_transfer_map_s* %5, %struct.gx_transfer_map_s** %out_map, align 8, !tbaa !1
  %6 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %out_map, align 8, !tbaa !1
  %tobool = icmp ne %struct.gx_transfer_map_s* %6, null
  br i1 %tobool, label %if.then.1, label %if.end

if.then.1:                                        ; preds = %if.else
  %7 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %in_map.addr, align 8, !tbaa !1
  %proc = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %7, i32 0, i32 1
  %8 = load float (double, %struct.gx_transfer_map_s*)*, float (double, %struct.gx_transfer_map_s*)** %proc, align 8, !tbaa !89
  %9 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %out_map, align 8, !tbaa !1
  %proc2 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %9, i32 0, i32 1
  store float (double, %struct.gx_transfer_map_s*)* %8, float (double, %struct.gx_transfer_map_s*)** %proc2, align 8, !tbaa !89
  %10 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %out_map, align 8, !tbaa !1
  %values = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %10, i32 0, i32 4
  %arrayidx = getelementptr inbounds [256 x i16], [256 x i16]* %values, i32 0, i64 0
  %11 = bitcast i16* %arrayidx to i8*
  %12 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %in_map.addr, align 8, !tbaa !1
  %values3 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %12, i32 0, i32 4
  %arrayidx4 = getelementptr inbounds [256 x i16], [256 x i16]* %values3, i32 0, i64 0
  %13 = bitcast i16* %arrayidx4 to i8*
  %call5 = call i8* @memcpy(i8* %11, i8* %13, i64 512) #5
  %14 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %out_map, align 8, !tbaa !1
  %id = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %14, i32 0, i32 3
  store i64 0, i64* %id, align 8, !tbaa !92
  br label %if.end

if.end:                                           ; preds = %if.then.1, %if.else
  %15 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %out_map, align 8, !tbaa !1
  store %struct.gx_transfer_map_s* %15, %struct.gx_transfer_map_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %16 = bitcast %struct.gx_transfer_map_s** %out_map to i8*
  call void @llvm.lifetime.end(i64 8, i8* %16) #1
  %17 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %retval
  ret %struct.gx_transfer_map_s* %17
}

declare void @gsicc_mcm_set_link(%struct.gsicc_link_s*) #2

declare i32 @gp_semaphore_signal(%union.gp_semaphore*) #2

declare i32 @gp_monitor_leave(%union.gp_monitor*) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define internal void @gsicc_nocm_planar_to_planar(%struct.gx_device_s* %dev, %struct.gsicc_link_s* %icclink, %struct.gsicc_bufferdesc_s* %input_buff_desc, %struct.gsicc_bufferdesc_s* %output_buff_desc, i8* %inputbuffer, i8* %outputbuffer) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %icclink.addr = alloca %struct.gsicc_link_s*, align 8
  %input_buff_desc.addr = alloca %struct.gsicc_bufferdesc_s*, align 8
  %output_buff_desc.addr = alloca %struct.gsicc_bufferdesc_s*, align 8
  %inputbuffer.addr = alloca i8*, align 8
  %outputbuffer.addr = alloca i8*, align 8
  %k = alloca i32, align 4
  %j = alloca i32, align 4
  %inputpos = alloca [4 x i8*], align 16
  %outputpos = alloca [4 x i8*], align 16
  %in_buffer_ptr = alloca i8*, align 8
  %out_buffer_ptr = alloca i8*, align 8
  %in_color = alloca [4 x i8], align 1
  %out_color = alloca [4 x i8], align 1
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gsicc_link_s* %icclink, %struct.gsicc_link_s** %icclink.addr, align 8, !tbaa !1
  store %struct.gsicc_bufferdesc_s* %input_buff_desc, %struct.gsicc_bufferdesc_s** %input_buff_desc.addr, align 8, !tbaa !1
  store %struct.gsicc_bufferdesc_s* %output_buff_desc, %struct.gsicc_bufferdesc_s** %output_buff_desc.addr, align 8, !tbaa !1
  store i8* %inputbuffer, i8** %inputbuffer.addr, align 8, !tbaa !1
  store i8* %outputbuffer, i8** %outputbuffer.addr, align 8, !tbaa !1
  %0 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast [4 x i8*]* %inputpos to i8*
  call void @llvm.lifetime.start(i64 32, i8* %2) #1
  %3 = bitcast [4 x i8*]* %outputpos to i8*
  call void @llvm.lifetime.start(i64 32, i8* %3) #1
  %4 = bitcast i8** %in_buffer_ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load i8*, i8** %inputbuffer.addr, align 8, !tbaa !1
  store i8* %5, i8** %in_buffer_ptr, align 8, !tbaa !1
  %6 = bitcast i8** %out_buffer_ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = load i8*, i8** %outputbuffer.addr, align 8, !tbaa !1
  store i8* %7, i8** %out_buffer_ptr, align 8, !tbaa !1
  %8 = bitcast [4 x i8]* %in_color to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = bitcast [4 x i8]* %out_color to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  store i32 0, i32* %k, align 4, !tbaa !26
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %10 = load i32, i32* %k, align 4, !tbaa !26
  %11 = load %struct.gsicc_bufferdesc_s*, %struct.gsicc_bufferdesc_s** %input_buff_desc.addr, align 8, !tbaa !1
  %num_chan = getelementptr inbounds %struct.gsicc_bufferdesc_s, %struct.gsicc_bufferdesc_s* %11, i32 0, i32 0
  %12 = load i8, i8* %num_chan, align 1, !tbaa !93
  %conv = zext i8 %12 to i32
  %cmp = icmp slt i32 %10, %conv
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load i8*, i8** %in_buffer_ptr, align 8, !tbaa !1
  %14 = load i32, i32* %k, align 4, !tbaa !26
  %15 = load %struct.gsicc_bufferdesc_s*, %struct.gsicc_bufferdesc_s** %input_buff_desc.addr, align 8, !tbaa !1
  %plane_stride = getelementptr inbounds %struct.gsicc_bufferdesc_s, %struct.gsicc_bufferdesc_s* %15, i32 0, i32 6
  %16 = load i32, i32* %plane_stride, align 4, !tbaa !94
  %mul = mul nsw i32 %14, %16
  %idx.ext = sext i32 %mul to i64
  %add.ptr = getelementptr inbounds i8, i8* %13, i64 %idx.ext
  %17 = load i32, i32* %k, align 4, !tbaa !26
  %idxprom = sext i32 %17 to i64
  %arrayidx = getelementptr inbounds [4 x i8*], [4 x i8*]* %inputpos, i32 0, i64 %idxprom
  store i8* %add.ptr, i8** %arrayidx, align 8, !tbaa !1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %18 = load i32, i32* %k, align 4, !tbaa !26
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %k, align 4, !tbaa !26
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %k, align 4, !tbaa !26
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc.14, %for.end
  %19 = load i32, i32* %k, align 4, !tbaa !26
  %20 = load %struct.gsicc_bufferdesc_s*, %struct.gsicc_bufferdesc_s** %output_buff_desc.addr, align 8, !tbaa !1
  %num_chan3 = getelementptr inbounds %struct.gsicc_bufferdesc_s, %struct.gsicc_bufferdesc_s* %20, i32 0, i32 0
  %21 = load i8, i8* %num_chan3, align 1, !tbaa !93
  %conv4 = zext i8 %21 to i32
  %cmp5 = icmp slt i32 %19, %conv4
  br i1 %cmp5, label %for.body.7, label %for.end.16

for.body.7:                                       ; preds = %for.cond.2
  %22 = load i8*, i8** %out_buffer_ptr, align 8, !tbaa !1
  %23 = load i32, i32* %k, align 4, !tbaa !26
  %24 = load %struct.gsicc_bufferdesc_s*, %struct.gsicc_bufferdesc_s** %input_buff_desc.addr, align 8, !tbaa !1
  %plane_stride8 = getelementptr inbounds %struct.gsicc_bufferdesc_s, %struct.gsicc_bufferdesc_s* %24, i32 0, i32 6
  %25 = load i32, i32* %plane_stride8, align 4, !tbaa !94
  %mul9 = mul nsw i32 %23, %25
  %idx.ext10 = sext i32 %mul9 to i64
  %add.ptr11 = getelementptr inbounds i8, i8* %22, i64 %idx.ext10
  %26 = load i32, i32* %k, align 4, !tbaa !26
  %idxprom12 = sext i32 %26 to i64
  %arrayidx13 = getelementptr inbounds [4 x i8*], [4 x i8*]* %outputpos, i32 0, i64 %idxprom12
  store i8* %add.ptr11, i8** %arrayidx13, align 8, !tbaa !1
  br label %for.inc.14

for.inc.14:                                       ; preds = %for.body.7
  %27 = load i32, i32* %k, align 4, !tbaa !26
  %inc15 = add nsw i32 %27, 1
  store i32 %inc15, i32* %k, align 4, !tbaa !26
  br label %for.cond.2

for.end.16:                                       ; preds = %for.cond.2
  store i32 0, i32* %k, align 4, !tbaa !26
  br label %for.cond.17

for.cond.17:                                      ; preds = %for.inc.61, %for.end.16
  %28 = load i32, i32* %k, align 4, !tbaa !26
  %29 = load %struct.gsicc_bufferdesc_s*, %struct.gsicc_bufferdesc_s** %input_buff_desc.addr, align 8, !tbaa !1
  %plane_stride18 = getelementptr inbounds %struct.gsicc_bufferdesc_s, %struct.gsicc_bufferdesc_s* %29, i32 0, i32 6
  %30 = load i32, i32* %plane_stride18, align 4, !tbaa !94
  %cmp19 = icmp slt i32 %28, %30
  br i1 %cmp19, label %for.body.21, label %for.end.63

for.body.21:                                      ; preds = %for.cond.17
  store i32 0, i32* %j, align 4, !tbaa !26
  br label %for.cond.22

for.cond.22:                                      ; preds = %for.inc.37, %for.body.21
  %31 = load i32, i32* %j, align 4, !tbaa !26
  %32 = load %struct.gsicc_bufferdesc_s*, %struct.gsicc_bufferdesc_s** %input_buff_desc.addr, align 8, !tbaa !1
  %num_chan23 = getelementptr inbounds %struct.gsicc_bufferdesc_s, %struct.gsicc_bufferdesc_s* %32, i32 0, i32 0
  %33 = load i8, i8* %num_chan23, align 1, !tbaa !93
  %conv24 = zext i8 %33 to i32
  %cmp25 = icmp slt i32 %31, %conv24
  br i1 %cmp25, label %for.body.27, label %for.end.39

for.body.27:                                      ; preds = %for.cond.22
  %34 = load i32, i32* %j, align 4, !tbaa !26
  %idxprom28 = sext i32 %34 to i64
  %arrayidx29 = getelementptr inbounds [4 x i8*], [4 x i8*]* %inputpos, i32 0, i64 %idxprom28
  %35 = load i8*, i8** %arrayidx29, align 8, !tbaa !1
  %36 = load i8, i8* %35, align 1, !tbaa !5
  %37 = load i32, i32* %j, align 4, !tbaa !26
  %idxprom30 = sext i32 %37 to i64
  %arrayidx31 = getelementptr inbounds [4 x i8], [4 x i8]* %in_color, i32 0, i64 %idxprom30
  store i8 %36, i8* %arrayidx31, align 1, !tbaa !5
  %38 = load %struct.gsicc_bufferdesc_s*, %struct.gsicc_bufferdesc_s** %input_buff_desc.addr, align 8, !tbaa !1
  %bytes_per_chan = getelementptr inbounds %struct.gsicc_bufferdesc_s, %struct.gsicc_bufferdesc_s* %38, i32 0, i32 1
  %39 = load i8, i8* %bytes_per_chan, align 1, !tbaa !95
  %conv32 = zext i8 %39 to i32
  %40 = load i32, i32* %j, align 4, !tbaa !26
  %idxprom33 = sext i32 %40 to i64
  %arrayidx34 = getelementptr inbounds [4 x i8*], [4 x i8*]* %inputpos, i32 0, i64 %idxprom33
  %41 = load i8*, i8** %arrayidx34, align 8, !tbaa !1
  %idx.ext35 = sext i32 %conv32 to i64
  %add.ptr36 = getelementptr inbounds i8, i8* %41, i64 %idx.ext35
  store i8* %add.ptr36, i8** %arrayidx34, align 8, !tbaa !1
  br label %for.inc.37

for.inc.37:                                       ; preds = %for.body.27
  %42 = load i32, i32* %j, align 4, !tbaa !26
  %inc38 = add nsw i32 %42, 1
  store i32 %inc38, i32* %j, align 4, !tbaa !26
  br label %for.cond.22

for.end.39:                                       ; preds = %for.cond.22
  %43 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %44 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %icclink.addr, align 8, !tbaa !1
  %arrayidx40 = getelementptr inbounds [4 x i8], [4 x i8]* %in_color, i32 0, i64 0
  %arrayidx41 = getelementptr inbounds [4 x i8], [4 x i8]* %out_color, i32 0, i64 0
  call void @gsicc_nocm_transform_general(%struct.gx_device_s* %43, %struct.gsicc_link_s* %44, i8* %arrayidx40, i8* %arrayidx41, i32 1, i32 1) #4
  store i32 0, i32* %j, align 4, !tbaa !26
  br label %for.cond.42

for.cond.42:                                      ; preds = %for.inc.58, %for.end.39
  %45 = load i32, i32* %j, align 4, !tbaa !26
  %46 = load %struct.gsicc_bufferdesc_s*, %struct.gsicc_bufferdesc_s** %output_buff_desc.addr, align 8, !tbaa !1
  %num_chan43 = getelementptr inbounds %struct.gsicc_bufferdesc_s, %struct.gsicc_bufferdesc_s* %46, i32 0, i32 0
  %47 = load i8, i8* %num_chan43, align 1, !tbaa !93
  %conv44 = zext i8 %47 to i32
  %cmp45 = icmp slt i32 %45, %conv44
  br i1 %cmp45, label %for.body.47, label %for.end.60

for.body.47:                                      ; preds = %for.cond.42
  %48 = load i32, i32* %j, align 4, !tbaa !26
  %idxprom48 = sext i32 %48 to i64
  %arrayidx49 = getelementptr inbounds [4 x i8], [4 x i8]* %out_color, i32 0, i64 %idxprom48
  %49 = load i8, i8* %arrayidx49, align 1, !tbaa !5
  %50 = load i32, i32* %j, align 4, !tbaa !26
  %idxprom50 = sext i32 %50 to i64
  %arrayidx51 = getelementptr inbounds [4 x i8*], [4 x i8*]* %outputpos, i32 0, i64 %idxprom50
  %51 = load i8*, i8** %arrayidx51, align 8, !tbaa !1
  store i8 %49, i8* %51, align 1, !tbaa !5
  %52 = load %struct.gsicc_bufferdesc_s*, %struct.gsicc_bufferdesc_s** %output_buff_desc.addr, align 8, !tbaa !1
  %bytes_per_chan52 = getelementptr inbounds %struct.gsicc_bufferdesc_s, %struct.gsicc_bufferdesc_s* %52, i32 0, i32 1
  %53 = load i8, i8* %bytes_per_chan52, align 1, !tbaa !95
  %conv53 = zext i8 %53 to i32
  %54 = load i32, i32* %j, align 4, !tbaa !26
  %idxprom54 = sext i32 %54 to i64
  %arrayidx55 = getelementptr inbounds [4 x i8*], [4 x i8*]* %outputpos, i32 0, i64 %idxprom54
  %55 = load i8*, i8** %arrayidx55, align 8, !tbaa !1
  %idx.ext56 = sext i32 %conv53 to i64
  %add.ptr57 = getelementptr inbounds i8, i8* %55, i64 %idx.ext56
  store i8* %add.ptr57, i8** %arrayidx55, align 8, !tbaa !1
  br label %for.inc.58

for.inc.58:                                       ; preds = %for.body.47
  %56 = load i32, i32* %j, align 4, !tbaa !26
  %inc59 = add nsw i32 %56, 1
  store i32 %inc59, i32* %j, align 4, !tbaa !26
  br label %for.cond.42

for.end.60:                                       ; preds = %for.cond.42
  br label %for.inc.61

for.inc.61:                                       ; preds = %for.end.60
  %57 = load i32, i32* %k, align 4, !tbaa !26
  %inc62 = add nsw i32 %57, 1
  store i32 %inc62, i32* %k, align 4, !tbaa !26
  br label %for.cond.17

for.end.63:                                       ; preds = %for.cond.17
  %58 = bitcast [4 x i8]* %out_color to i8*
  call void @llvm.lifetime.end(i64 4, i8* %58) #1
  %59 = bitcast [4 x i8]* %in_color to i8*
  call void @llvm.lifetime.end(i64 4, i8* %59) #1
  %60 = bitcast i8** %out_buffer_ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %60) #1
  %61 = bitcast i8** %in_buffer_ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %61) #1
  %62 = bitcast [4 x i8*]* %outputpos to i8*
  call void @llvm.lifetime.end(i64 32, i8* %62) #1
  %63 = bitcast [4 x i8*]* %inputpos to i8*
  call void @llvm.lifetime.end(i64 32, i8* %63) #1
  %64 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %64) #1
  %65 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %65) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gsicc_nocm_planar_to_chunky(%struct.gx_device_s* %dev, %struct.gsicc_link_s* %icclink, %struct.gsicc_bufferdesc_s* %input_buff_desc, %struct.gsicc_bufferdesc_s* %output_buff_desc, i8* %inputbuffer, i8* %outputbuffer) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %icclink.addr = alloca %struct.gsicc_link_s*, align 8
  %input_buff_desc.addr = alloca %struct.gsicc_bufferdesc_s*, align 8
  %output_buff_desc.addr = alloca %struct.gsicc_bufferdesc_s*, align 8
  %inputbuffer.addr = alloca i8*, align 8
  %outputbuffer.addr = alloca i8*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gsicc_link_s* %icclink, %struct.gsicc_link_s** %icclink.addr, align 8, !tbaa !1
  store %struct.gsicc_bufferdesc_s* %input_buff_desc, %struct.gsicc_bufferdesc_s** %input_buff_desc.addr, align 8, !tbaa !1
  store %struct.gsicc_bufferdesc_s* %output_buff_desc, %struct.gsicc_bufferdesc_s** %output_buff_desc.addr, align 8, !tbaa !1
  store i8* %inputbuffer, i8** %inputbuffer.addr, align 8, !tbaa !1
  store i8* %outputbuffer, i8** %outputbuffer.addr, align 8, !tbaa !1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gsicc_nocm_chunky_to_planar(%struct.gx_device_s* %dev, %struct.gsicc_link_s* %icclink, %struct.gsicc_bufferdesc_s* %input_buff_desc, %struct.gsicc_bufferdesc_s* %output_buff_desc, i8* %inputbuffer, i8* %outputbuffer) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %icclink.addr = alloca %struct.gsicc_link_s*, align 8
  %input_buff_desc.addr = alloca %struct.gsicc_bufferdesc_s*, align 8
  %output_buff_desc.addr = alloca %struct.gsicc_bufferdesc_s*, align 8
  %inputbuffer.addr = alloca i8*, align 8
  %outputbuffer.addr = alloca i8*, align 8
  %k = alloca i32, align 4
  %j = alloca i32, align 4
  %m = alloca i32, align 4
  %inputpos = alloca i8*, align 8
  %outputpos = alloca i8*, align 8
  %output_loc = alloca i8*, align 8
  %inputcolor = alloca i8*, align 8
  %outputcolor = alloca [8 x i8], align 1
  %pos_in_short = alloca i16*, align 8
  %pos_out_short = alloca i16*, align 8
  %num_bytes_in = alloca i32, align 4
  %num_bytes_out = alloca i32, align 4
  %pixel_in_step = alloca i32, align 4
  %plane_stride = alloca i32, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gsicc_link_s* %icclink, %struct.gsicc_link_s** %icclink.addr, align 8, !tbaa !1
  store %struct.gsicc_bufferdesc_s* %input_buff_desc, %struct.gsicc_bufferdesc_s** %input_buff_desc.addr, align 8, !tbaa !1
  store %struct.gsicc_bufferdesc_s* %output_buff_desc, %struct.gsicc_bufferdesc_s** %output_buff_desc.addr, align 8, !tbaa !1
  store i8* %inputbuffer, i8** %inputbuffer.addr, align 8, !tbaa !1
  store i8* %outputbuffer, i8** %outputbuffer.addr, align 8, !tbaa !1
  %0 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %m to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i8** %inputpos to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load i8*, i8** %inputbuffer.addr, align 8, !tbaa !1
  store i8* %4, i8** %inputpos, align 8, !tbaa !1
  %5 = bitcast i8** %outputpos to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = load i8*, i8** %outputbuffer.addr, align 8, !tbaa !1
  store i8* %6, i8** %outputpos, align 8, !tbaa !1
  %7 = bitcast i8** %output_loc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = bitcast i8** %inputcolor to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  %9 = bitcast [8 x i8]* %outputcolor to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = bitcast i16** %pos_in_short to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  %11 = bitcast i16** %pos_out_short to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  %12 = bitcast i32* %num_bytes_in to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  %13 = load %struct.gsicc_bufferdesc_s*, %struct.gsicc_bufferdesc_s** %input_buff_desc.addr, align 8, !tbaa !1
  %bytes_per_chan = getelementptr inbounds %struct.gsicc_bufferdesc_s, %struct.gsicc_bufferdesc_s* %13, i32 0, i32 1
  %14 = load i8, i8* %bytes_per_chan, align 1, !tbaa !95
  %conv = zext i8 %14 to i32
  store i32 %conv, i32* %num_bytes_in, align 4, !tbaa !26
  %15 = bitcast i32* %num_bytes_out to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  %16 = load %struct.gsicc_bufferdesc_s*, %struct.gsicc_bufferdesc_s** %output_buff_desc.addr, align 8, !tbaa !1
  %bytes_per_chan1 = getelementptr inbounds %struct.gsicc_bufferdesc_s, %struct.gsicc_bufferdesc_s* %16, i32 0, i32 1
  %17 = load i8, i8* %bytes_per_chan1, align 1, !tbaa !95
  %conv2 = zext i8 %17 to i32
  store i32 %conv2, i32* %num_bytes_out, align 4, !tbaa !26
  %18 = bitcast i32* %pixel_in_step to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #1
  %19 = load i32, i32* %num_bytes_in, align 4, !tbaa !26
  %20 = load %struct.gsicc_bufferdesc_s*, %struct.gsicc_bufferdesc_s** %input_buff_desc.addr, align 8, !tbaa !1
  %num_chan = getelementptr inbounds %struct.gsicc_bufferdesc_s, %struct.gsicc_bufferdesc_s* %20, i32 0, i32 0
  %21 = load i8, i8* %num_chan, align 1, !tbaa !93
  %conv3 = zext i8 %21 to i32
  %mul = mul nsw i32 %19, %conv3
  store i32 %mul, i32* %pixel_in_step, align 4, !tbaa !26
  %22 = bitcast i32* %plane_stride to i8*
  call void @llvm.lifetime.start(i64 4, i8* %22) #1
  %23 = load %struct.gsicc_bufferdesc_s*, %struct.gsicc_bufferdesc_s** %output_buff_desc.addr, align 8, !tbaa !1
  %plane_stride4 = getelementptr inbounds %struct.gsicc_bufferdesc_s, %struct.gsicc_bufferdesc_s* %23, i32 0, i32 6
  %24 = load i32, i32* %plane_stride4, align 4, !tbaa !94
  store i32 %24, i32* %plane_stride, align 4, !tbaa !26
  store i32 0, i32* %k, align 4, !tbaa !26
  br label %for.cond

for.cond:                                         ; preds = %for.inc.68, %entry
  %25 = load i32, i32* %k, align 4, !tbaa !26
  %26 = load %struct.gsicc_bufferdesc_s*, %struct.gsicc_bufferdesc_s** %input_buff_desc.addr, align 8, !tbaa !1
  %num_rows = getelementptr inbounds %struct.gsicc_bufferdesc_s, %struct.gsicc_bufferdesc_s* %26, i32 0, i32 8
  %27 = load i32, i32* %num_rows, align 4, !tbaa !96
  %cmp = icmp slt i32 %25, %27
  br i1 %cmp, label %for.body, label %for.end.70

for.body:                                         ; preds = %for.cond
  %28 = load i8*, i8** %inputpos, align 8, !tbaa !1
  store i8* %28, i8** %inputcolor, align 8, !tbaa !1
  %29 = load i8*, i8** %outputpos, align 8, !tbaa !1
  store i8* %29, i8** %output_loc, align 8, !tbaa !1
  %30 = load %struct.gsicc_bufferdesc_s*, %struct.gsicc_bufferdesc_s** %output_buff_desc.addr, align 8, !tbaa !1
  %bytes_per_chan6 = getelementptr inbounds %struct.gsicc_bufferdesc_s, %struct.gsicc_bufferdesc_s* %30, i32 0, i32 1
  %31 = load i8, i8* %bytes_per_chan6, align 1, !tbaa !95
  %conv7 = zext i8 %31 to i32
  %cmp8 = icmp eq i32 %conv7, 1
  br i1 %cmp8, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  store i32 0, i32* %j, align 4, !tbaa !26
  br label %for.cond.10

for.cond.10:                                      ; preds = %for.inc.26, %if.then
  %32 = load i32, i32* %j, align 4, !tbaa !26
  %33 = load %struct.gsicc_bufferdesc_s*, %struct.gsicc_bufferdesc_s** %input_buff_desc.addr, align 8, !tbaa !1
  %pixels_per_row = getelementptr inbounds %struct.gsicc_bufferdesc_s, %struct.gsicc_bufferdesc_s* %33, i32 0, i32 9
  %34 = load i32, i32* %pixels_per_row, align 4, !tbaa !97
  %cmp11 = icmp slt i32 %32, %34
  br i1 %cmp11, label %for.body.13, label %for.end.28

for.body.13:                                      ; preds = %for.cond.10
  %35 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %36 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %icclink.addr, align 8, !tbaa !1
  %37 = load i8*, i8** %inputcolor, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds [8 x i8], [8 x i8]* %outputcolor, i32 0, i64 0
  %38 = load i32, i32* %num_bytes_in, align 4, !tbaa !26
  %39 = load i32, i32* %num_bytes_out, align 4, !tbaa !26
  call void @gsicc_nocm_transform_general(%struct.gx_device_s* %35, %struct.gsicc_link_s* %36, i8* %37, i8* %arrayidx, i32 %38, i32 %39) #4
  store i32 0, i32* %m, align 4, !tbaa !26
  br label %for.cond.14

for.cond.14:                                      ; preds = %for.inc, %for.body.13
  %40 = load i32, i32* %m, align 4, !tbaa !26
  %41 = load %struct.gsicc_bufferdesc_s*, %struct.gsicc_bufferdesc_s** %output_buff_desc.addr, align 8, !tbaa !1
  %num_chan15 = getelementptr inbounds %struct.gsicc_bufferdesc_s, %struct.gsicc_bufferdesc_s* %41, i32 0, i32 0
  %42 = load i8, i8* %num_chan15, align 1, !tbaa !93
  %conv16 = zext i8 %42 to i32
  %cmp17 = icmp slt i32 %40, %conv16
  br i1 %cmp17, label %for.body.19, label %for.end

for.body.19:                                      ; preds = %for.cond.14
  %43 = load i32, i32* %m, align 4, !tbaa !26
  %idxprom = sext i32 %43 to i64
  %arrayidx20 = getelementptr inbounds [8 x i8], [8 x i8]* %outputcolor, i32 0, i64 %idxprom
  %44 = load i8, i8* %arrayidx20, align 1, !tbaa !5
  %45 = load i8*, i8** %output_loc, align 8, !tbaa !1
  %46 = load i32, i32* %m, align 4, !tbaa !26
  %47 = load i32, i32* %plane_stride, align 4, !tbaa !26
  %mul21 = mul nsw i32 %46, %47
  %idx.ext = sext i32 %mul21 to i64
  %add.ptr = getelementptr inbounds i8, i8* %45, i64 %idx.ext
  %48 = load i32, i32* %j, align 4, !tbaa !26
  %idx.ext22 = sext i32 %48 to i64
  %add.ptr23 = getelementptr inbounds i8, i8* %add.ptr, i64 %idx.ext22
  store i8 %44, i8* %add.ptr23, align 1, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.body.19
  %49 = load i32, i32* %m, align 4, !tbaa !26
  %inc = add nsw i32 %49, 1
  store i32 %inc, i32* %m, align 4, !tbaa !26
  br label %for.cond.14

for.end:                                          ; preds = %for.cond.14
  %50 = load i32, i32* %pixel_in_step, align 4, !tbaa !26
  %51 = load i8*, i8** %inputcolor, align 8, !tbaa !1
  %idx.ext24 = sext i32 %50 to i64
  %add.ptr25 = getelementptr inbounds i8, i8* %51, i64 %idx.ext24
  store i8* %add.ptr25, i8** %inputcolor, align 8, !tbaa !1
  br label %for.inc.26

for.inc.26:                                       ; preds = %for.end
  %52 = load i32, i32* %j, align 4, !tbaa !26
  %inc27 = add nsw i32 %52, 1
  store i32 %inc27, i32* %j, align 4, !tbaa !26
  br label %for.cond.10

for.end.28:                                       ; preds = %for.cond.10
  %53 = load %struct.gsicc_bufferdesc_s*, %struct.gsicc_bufferdesc_s** %input_buff_desc.addr, align 8, !tbaa !1
  %row_stride = getelementptr inbounds %struct.gsicc_bufferdesc_s, %struct.gsicc_bufferdesc_s* %53, i32 0, i32 7
  %54 = load i32, i32* %row_stride, align 4, !tbaa !98
  %55 = load i8*, i8** %inputpos, align 8, !tbaa !1
  %idx.ext29 = sext i32 %54 to i64
  %add.ptr30 = getelementptr inbounds i8, i8* %55, i64 %idx.ext29
  store i8* %add.ptr30, i8** %inputpos, align 8, !tbaa !1
  %56 = load %struct.gsicc_bufferdesc_s*, %struct.gsicc_bufferdesc_s** %output_buff_desc.addr, align 8, !tbaa !1
  %row_stride31 = getelementptr inbounds %struct.gsicc_bufferdesc_s, %struct.gsicc_bufferdesc_s* %56, i32 0, i32 7
  %57 = load i32, i32* %row_stride31, align 4, !tbaa !98
  %58 = load i8*, i8** %outputpos, align 8, !tbaa !1
  %idx.ext32 = sext i32 %57 to i64
  %add.ptr33 = getelementptr inbounds i8, i8* %58, i64 %idx.ext32
  store i8* %add.ptr33, i8** %outputpos, align 8, !tbaa !1
  br label %if.end

if.else:                                          ; preds = %for.body
  store i32 0, i32* %j, align 4, !tbaa !26
  br label %for.cond.34

for.cond.34:                                      ; preds = %for.inc.59, %if.else
  %59 = load i32, i32* %j, align 4, !tbaa !26
  %60 = load %struct.gsicc_bufferdesc_s*, %struct.gsicc_bufferdesc_s** %input_buff_desc.addr, align 8, !tbaa !1
  %pixels_per_row35 = getelementptr inbounds %struct.gsicc_bufferdesc_s, %struct.gsicc_bufferdesc_s* %60, i32 0, i32 9
  %61 = load i32, i32* %pixels_per_row35, align 4, !tbaa !97
  %cmp36 = icmp slt i32 %59, %61
  br i1 %cmp36, label %for.body.38, label %for.end.61

for.body.38:                                      ; preds = %for.cond.34
  %62 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %63 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %icclink.addr, align 8, !tbaa !1
  %64 = load i8*, i8** %inputcolor, align 8, !tbaa !1
  %arrayidx39 = getelementptr inbounds [8 x i8], [8 x i8]* %outputcolor, i32 0, i64 0
  %65 = load i32, i32* %num_bytes_in, align 4, !tbaa !26
  %66 = load i32, i32* %num_bytes_out, align 4, !tbaa !26
  call void @gsicc_nocm_transform_general(%struct.gx_device_s* %62, %struct.gsicc_link_s* %63, i8* %64, i8* %arrayidx39, i32 %65, i32 %66) #4
  %arrayidx40 = getelementptr inbounds [8 x i8], [8 x i8]* %outputcolor, i32 0, i64 0
  %67 = bitcast i8* %arrayidx40 to i16*
  store i16* %67, i16** %pos_in_short, align 8, !tbaa !1
  %68 = load i8*, i8** %output_loc, align 8, !tbaa !1
  %69 = bitcast i8* %68 to i16*
  store i16* %69, i16** %pos_out_short, align 8, !tbaa !1
  store i32 0, i32* %m, align 4, !tbaa !26
  br label %for.cond.41

for.cond.41:                                      ; preds = %for.inc.54, %for.body.38
  %70 = load i32, i32* %m, align 4, !tbaa !26
  %71 = load %struct.gsicc_bufferdesc_s*, %struct.gsicc_bufferdesc_s** %output_buff_desc.addr, align 8, !tbaa !1
  %num_chan42 = getelementptr inbounds %struct.gsicc_bufferdesc_s, %struct.gsicc_bufferdesc_s* %71, i32 0, i32 0
  %72 = load i8, i8* %num_chan42, align 1, !tbaa !93
  %conv43 = zext i8 %72 to i32
  %cmp44 = icmp slt i32 %70, %conv43
  br i1 %cmp44, label %for.body.46, label %for.end.56

for.body.46:                                      ; preds = %for.cond.41
  %73 = load i32, i32* %m, align 4, !tbaa !26
  %idxprom47 = sext i32 %73 to i64
  %74 = load i16*, i16** %pos_in_short, align 8, !tbaa !1
  %arrayidx48 = getelementptr inbounds i16, i16* %74, i64 %idxprom47
  %75 = load i16, i16* %arrayidx48, align 2, !tbaa !99
  %76 = load i16*, i16** %pos_out_short, align 8, !tbaa !1
  %77 = load i32, i32* %m, align 4, !tbaa !26
  %78 = load i32, i32* %plane_stride, align 4, !tbaa !26
  %mul49 = mul nsw i32 %77, %78
  %idx.ext50 = sext i32 %mul49 to i64
  %add.ptr51 = getelementptr inbounds i16, i16* %76, i64 %idx.ext50
  %79 = load i32, i32* %j, align 4, !tbaa !26
  %idx.ext52 = sext i32 %79 to i64
  %add.ptr53 = getelementptr inbounds i16, i16* %add.ptr51, i64 %idx.ext52
  store i16 %75, i16* %add.ptr53, align 2, !tbaa !99
  br label %for.inc.54

for.inc.54:                                       ; preds = %for.body.46
  %80 = load i32, i32* %m, align 4, !tbaa !26
  %inc55 = add nsw i32 %80, 1
  store i32 %inc55, i32* %m, align 4, !tbaa !26
  br label %for.cond.41

for.end.56:                                       ; preds = %for.cond.41
  %81 = load i32, i32* %pixel_in_step, align 4, !tbaa !26
  %82 = load i8*, i8** %inputcolor, align 8, !tbaa !1
  %idx.ext57 = sext i32 %81 to i64
  %add.ptr58 = getelementptr inbounds i8, i8* %82, i64 %idx.ext57
  store i8* %add.ptr58, i8** %inputcolor, align 8, !tbaa !1
  br label %for.inc.59

for.inc.59:                                       ; preds = %for.end.56
  %83 = load i32, i32* %j, align 4, !tbaa !26
  %inc60 = add nsw i32 %83, 1
  store i32 %inc60, i32* %j, align 4, !tbaa !26
  br label %for.cond.34

for.end.61:                                       ; preds = %for.cond.34
  %84 = load %struct.gsicc_bufferdesc_s*, %struct.gsicc_bufferdesc_s** %input_buff_desc.addr, align 8, !tbaa !1
  %row_stride62 = getelementptr inbounds %struct.gsicc_bufferdesc_s, %struct.gsicc_bufferdesc_s* %84, i32 0, i32 7
  %85 = load i32, i32* %row_stride62, align 4, !tbaa !98
  %86 = load i8*, i8** %inputpos, align 8, !tbaa !1
  %idx.ext63 = sext i32 %85 to i64
  %add.ptr64 = getelementptr inbounds i8, i8* %86, i64 %idx.ext63
  store i8* %add.ptr64, i8** %inputpos, align 8, !tbaa !1
  %87 = load %struct.gsicc_bufferdesc_s*, %struct.gsicc_bufferdesc_s** %output_buff_desc.addr, align 8, !tbaa !1
  %row_stride65 = getelementptr inbounds %struct.gsicc_bufferdesc_s, %struct.gsicc_bufferdesc_s* %87, i32 0, i32 7
  %88 = load i32, i32* %row_stride65, align 4, !tbaa !98
  %89 = load i8*, i8** %outputpos, align 8, !tbaa !1
  %idx.ext66 = sext i32 %88 to i64
  %add.ptr67 = getelementptr inbounds i8, i8* %89, i64 %idx.ext66
  store i8* %add.ptr67, i8** %outputpos, align 8, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %for.end.61, %for.end.28
  br label %for.inc.68

for.inc.68:                                       ; preds = %if.end
  %90 = load i32, i32* %k, align 4, !tbaa !26
  %inc69 = add nsw i32 %90, 1
  store i32 %inc69, i32* %k, align 4, !tbaa !26
  br label %for.cond

for.end.70:                                       ; preds = %for.cond
  %91 = bitcast i32* %plane_stride to i8*
  call void @llvm.lifetime.end(i64 4, i8* %91) #1
  %92 = bitcast i32* %pixel_in_step to i8*
  call void @llvm.lifetime.end(i64 4, i8* %92) #1
  %93 = bitcast i32* %num_bytes_out to i8*
  call void @llvm.lifetime.end(i64 4, i8* %93) #1
  %94 = bitcast i32* %num_bytes_in to i8*
  call void @llvm.lifetime.end(i64 4, i8* %94) #1
  %95 = bitcast i16** %pos_out_short to i8*
  call void @llvm.lifetime.end(i64 8, i8* %95) #1
  %96 = bitcast i16** %pos_in_short to i8*
  call void @llvm.lifetime.end(i64 8, i8* %96) #1
  %97 = bitcast [8 x i8]* %outputcolor to i8*
  call void @llvm.lifetime.end(i64 8, i8* %97) #1
  %98 = bitcast i8** %inputcolor to i8*
  call void @llvm.lifetime.end(i64 8, i8* %98) #1
  %99 = bitcast i8** %output_loc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %99) #1
  %100 = bitcast i8** %outputpos to i8*
  call void @llvm.lifetime.end(i64 8, i8* %100) #1
  %101 = bitcast i8** %inputpos to i8*
  call void @llvm.lifetime.end(i64 8, i8* %101) #1
  %102 = bitcast i32* %m to i8*
  call void @llvm.lifetime.end(i64 4, i8* %102) #1
  %103 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %103) #1
  %104 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %104) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gsicc_nocm_chunky_to_chunky(%struct.gx_device_s* %dev, %struct.gsicc_link_s* %icclink, %struct.gsicc_bufferdesc_s* %input_buff_desc, %struct.gsicc_bufferdesc_s* %output_buff_desc, i8* %inputbuffer, i8* %outputbuffer) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %icclink.addr = alloca %struct.gsicc_link_s*, align 8
  %input_buff_desc.addr = alloca %struct.gsicc_bufferdesc_s*, align 8
  %output_buff_desc.addr = alloca %struct.gsicc_bufferdesc_s*, align 8
  %inputbuffer.addr = alloca i8*, align 8
  %outputbuffer.addr = alloca i8*, align 8
  %k = alloca i32, align 4
  %j = alloca i32, align 4
  %inputpos = alloca i8*, align 8
  %outputpos = alloca i8*, align 8
  %inputcolor = alloca i8*, align 8
  %outputcolor = alloca i8*, align 8
  %num_bytes_in = alloca i32, align 4
  %num_bytes_out = alloca i32, align 4
  %pixel_in_step = alloca i32, align 4
  %pixel_out_step = alloca i32, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gsicc_link_s* %icclink, %struct.gsicc_link_s** %icclink.addr, align 8, !tbaa !1
  store %struct.gsicc_bufferdesc_s* %input_buff_desc, %struct.gsicc_bufferdesc_s** %input_buff_desc.addr, align 8, !tbaa !1
  store %struct.gsicc_bufferdesc_s* %output_buff_desc, %struct.gsicc_bufferdesc_s** %output_buff_desc.addr, align 8, !tbaa !1
  store i8* %inputbuffer, i8** %inputbuffer.addr, align 8, !tbaa !1
  store i8* %outputbuffer, i8** %outputbuffer.addr, align 8, !tbaa !1
  %0 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i8** %inputpos to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load i8*, i8** %inputbuffer.addr, align 8, !tbaa !1
  store i8* %3, i8** %inputpos, align 8, !tbaa !1
  %4 = bitcast i8** %outputpos to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load i8*, i8** %outputbuffer.addr, align 8, !tbaa !1
  store i8* %5, i8** %outputpos, align 8, !tbaa !1
  %6 = bitcast i8** %inputcolor to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = bitcast i8** %outputcolor to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = bitcast i32* %num_bytes_in to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = load %struct.gsicc_bufferdesc_s*, %struct.gsicc_bufferdesc_s** %input_buff_desc.addr, align 8, !tbaa !1
  %bytes_per_chan = getelementptr inbounds %struct.gsicc_bufferdesc_s, %struct.gsicc_bufferdesc_s* %9, i32 0, i32 1
  %10 = load i8, i8* %bytes_per_chan, align 1, !tbaa !95
  %conv = zext i8 %10 to i32
  store i32 %conv, i32* %num_bytes_in, align 4, !tbaa !26
  %11 = bitcast i32* %num_bytes_out to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  %12 = load %struct.gsicc_bufferdesc_s*, %struct.gsicc_bufferdesc_s** %output_buff_desc.addr, align 8, !tbaa !1
  %bytes_per_chan1 = getelementptr inbounds %struct.gsicc_bufferdesc_s, %struct.gsicc_bufferdesc_s* %12, i32 0, i32 1
  %13 = load i8, i8* %bytes_per_chan1, align 1, !tbaa !95
  %conv2 = zext i8 %13 to i32
  store i32 %conv2, i32* %num_bytes_out, align 4, !tbaa !26
  %14 = bitcast i32* %pixel_in_step to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  %15 = load i32, i32* %num_bytes_in, align 4, !tbaa !26
  %16 = load %struct.gsicc_bufferdesc_s*, %struct.gsicc_bufferdesc_s** %input_buff_desc.addr, align 8, !tbaa !1
  %num_chan = getelementptr inbounds %struct.gsicc_bufferdesc_s, %struct.gsicc_bufferdesc_s* %16, i32 0, i32 0
  %17 = load i8, i8* %num_chan, align 1, !tbaa !93
  %conv3 = zext i8 %17 to i32
  %mul = mul nsw i32 %15, %conv3
  store i32 %mul, i32* %pixel_in_step, align 4, !tbaa !26
  %18 = bitcast i32* %pixel_out_step to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #1
  %19 = load i32, i32* %num_bytes_out, align 4, !tbaa !26
  %20 = load %struct.gsicc_bufferdesc_s*, %struct.gsicc_bufferdesc_s** %output_buff_desc.addr, align 8, !tbaa !1
  %num_chan4 = getelementptr inbounds %struct.gsicc_bufferdesc_s, %struct.gsicc_bufferdesc_s* %20, i32 0, i32 0
  %21 = load i8, i8* %num_chan4, align 1, !tbaa !93
  %conv5 = zext i8 %21 to i32
  %mul6 = mul nsw i32 %19, %conv5
  store i32 %mul6, i32* %pixel_out_step, align 4, !tbaa !26
  store i32 0, i32* %k, align 4, !tbaa !26
  br label %for.cond

for.cond:                                         ; preds = %for.inc.19, %entry
  %22 = load i32, i32* %k, align 4, !tbaa !26
  %23 = load %struct.gsicc_bufferdesc_s*, %struct.gsicc_bufferdesc_s** %input_buff_desc.addr, align 8, !tbaa !1
  %num_rows = getelementptr inbounds %struct.gsicc_bufferdesc_s, %struct.gsicc_bufferdesc_s* %23, i32 0, i32 8
  %24 = load i32, i32* %num_rows, align 4, !tbaa !96
  %cmp = icmp slt i32 %22, %24
  br i1 %cmp, label %for.body, label %for.end.21

for.body:                                         ; preds = %for.cond
  %25 = load i8*, i8** %inputpos, align 8, !tbaa !1
  store i8* %25, i8** %inputcolor, align 8, !tbaa !1
  %26 = load i8*, i8** %outputpos, align 8, !tbaa !1
  store i8* %26, i8** %outputcolor, align 8, !tbaa !1
  store i32 0, i32* %j, align 4, !tbaa !26
  br label %for.cond.8

for.cond.8:                                       ; preds = %for.inc, %for.body
  %27 = load i32, i32* %j, align 4, !tbaa !26
  %28 = load %struct.gsicc_bufferdesc_s*, %struct.gsicc_bufferdesc_s** %input_buff_desc.addr, align 8, !tbaa !1
  %pixels_per_row = getelementptr inbounds %struct.gsicc_bufferdesc_s, %struct.gsicc_bufferdesc_s* %28, i32 0, i32 9
  %29 = load i32, i32* %pixels_per_row, align 4, !tbaa !97
  %cmp9 = icmp slt i32 %27, %29
  br i1 %cmp9, label %for.body.11, label %for.end

for.body.11:                                      ; preds = %for.cond.8
  %30 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %31 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %icclink.addr, align 8, !tbaa !1
  %32 = load i8*, i8** %inputcolor, align 8, !tbaa !1
  %33 = load i8*, i8** %outputcolor, align 8, !tbaa !1
  %34 = load i32, i32* %num_bytes_in, align 4, !tbaa !26
  %35 = load i32, i32* %num_bytes_out, align 4, !tbaa !26
  call void @gsicc_nocm_transform_general(%struct.gx_device_s* %30, %struct.gsicc_link_s* %31, i8* %32, i8* %33, i32 %34, i32 %35) #4
  %36 = load i32, i32* %pixel_in_step, align 4, !tbaa !26
  %37 = load i8*, i8** %inputcolor, align 8, !tbaa !1
  %idx.ext = sext i32 %36 to i64
  %add.ptr = getelementptr inbounds i8, i8* %37, i64 %idx.ext
  store i8* %add.ptr, i8** %inputcolor, align 8, !tbaa !1
  %38 = load i32, i32* %pixel_out_step, align 4, !tbaa !26
  %39 = load i8*, i8** %outputcolor, align 8, !tbaa !1
  %idx.ext12 = sext i32 %38 to i64
  %add.ptr13 = getelementptr inbounds i8, i8* %39, i64 %idx.ext12
  store i8* %add.ptr13, i8** %outputcolor, align 8, !tbaa !1
  br label %for.inc

for.inc:                                          ; preds = %for.body.11
  %40 = load i32, i32* %j, align 4, !tbaa !26
  %inc = add nsw i32 %40, 1
  store i32 %inc, i32* %j, align 4, !tbaa !26
  br label %for.cond.8

for.end:                                          ; preds = %for.cond.8
  %41 = load %struct.gsicc_bufferdesc_s*, %struct.gsicc_bufferdesc_s** %input_buff_desc.addr, align 8, !tbaa !1
  %row_stride = getelementptr inbounds %struct.gsicc_bufferdesc_s, %struct.gsicc_bufferdesc_s* %41, i32 0, i32 7
  %42 = load i32, i32* %row_stride, align 4, !tbaa !98
  %43 = load i8*, i8** %inputpos, align 8, !tbaa !1
  %idx.ext14 = sext i32 %42 to i64
  %add.ptr15 = getelementptr inbounds i8, i8* %43, i64 %idx.ext14
  store i8* %add.ptr15, i8** %inputpos, align 8, !tbaa !1
  %44 = load %struct.gsicc_bufferdesc_s*, %struct.gsicc_bufferdesc_s** %output_buff_desc.addr, align 8, !tbaa !1
  %row_stride16 = getelementptr inbounds %struct.gsicc_bufferdesc_s, %struct.gsicc_bufferdesc_s* %44, i32 0, i32 7
  %45 = load i32, i32* %row_stride16, align 4, !tbaa !98
  %46 = load i8*, i8** %outputpos, align 8, !tbaa !1
  %idx.ext17 = sext i32 %45 to i64
  %add.ptr18 = getelementptr inbounds i8, i8* %46, i64 %idx.ext17
  store i8* %add.ptr18, i8** %outputpos, align 8, !tbaa !1
  br label %for.inc.19

for.inc.19:                                       ; preds = %for.end
  %47 = load i32, i32* %k, align 4, !tbaa !26
  %inc20 = add nsw i32 %47, 1
  store i32 %inc20, i32* %k, align 4, !tbaa !26
  br label %for.cond

for.end.21:                                       ; preds = %for.cond
  %48 = bitcast i32* %pixel_out_step to i8*
  call void @llvm.lifetime.end(i64 4, i8* %48) #1
  %49 = bitcast i32* %pixel_in_step to i8*
  call void @llvm.lifetime.end(i64 4, i8* %49) #1
  %50 = bitcast i32* %num_bytes_out to i8*
  call void @llvm.lifetime.end(i64 4, i8* %50) #1
  %51 = bitcast i32* %num_bytes_in to i8*
  call void @llvm.lifetime.end(i64 4, i8* %51) #1
  %52 = bitcast i8** %outputcolor to i8*
  call void @llvm.lifetime.end(i64 8, i8* %52) #1
  %53 = bitcast i8** %inputcolor to i8*
  call void @llvm.lifetime.end(i64 8, i8* %53) #1
  %54 = bitcast i8** %outputpos to i8*
  call void @llvm.lifetime.end(i64 8, i8* %54) #1
  %55 = bitcast i8** %inputpos to i8*
  call void @llvm.lifetime.end(i64 8, i8* %55) #1
  %56 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %56) #1
  %57 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %57) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gsicc_nocm_transform_general(%struct.gx_device_s* %dev, %struct.gsicc_link_s* %icclink, i8* %inputcolor, i8* %outputcolor, i32 %num_bytes_in, i32 %num_bytes_out) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %icclink.addr = alloca %struct.gsicc_link_s*, align 8
  %inputcolor.addr = alloca i8*, align 8
  %outputcolor.addr = alloca i8*, align 8
  %num_bytes_in.addr = alloca i32, align 4
  %num_bytes_out.addr = alloca i32, align 4
  %link = alloca %struct.nocm_link_s*, align 8
  %num_in = alloca i8, align 1
  %num_out = alloca i8, align 1
  %frac_in = alloca [4 x i16], align 2
  %frac_out = alloca [64 x i16], align 16
  %k = alloca i32, align 4
  %data = alloca i16*, align 8
  %data13 = alloca i8*, align 8
  %data56 = alloca i16*, align 8
  %data78 = alloca i8*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gsicc_link_s* %icclink, %struct.gsicc_link_s** %icclink.addr, align 8, !tbaa !1
  store i8* %inputcolor, i8** %inputcolor.addr, align 8, !tbaa !1
  store i8* %outputcolor, i8** %outputcolor.addr, align 8, !tbaa !1
  store i32 %num_bytes_in, i32* %num_bytes_in.addr, align 4, !tbaa !26
  store i32 %num_bytes_out, i32* %num_bytes_out.addr, align 4, !tbaa !26
  %0 = bitcast %struct.nocm_link_s** %link to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %icclink.addr, align 8, !tbaa !1
  %link_handle = getelementptr inbounds %struct.gsicc_link_s, %struct.gsicc_link_s* %1, i32 0, i32 0
  %2 = load i8*, i8** %link_handle, align 8, !tbaa !58
  %3 = bitcast i8* %2 to %struct.nocm_link_s*
  store %struct.nocm_link_s* %3, %struct.nocm_link_s** %link, align 8, !tbaa !1
  call void @llvm.lifetime.start(i64 1, i8* %num_in) #1
  %4 = load %struct.nocm_link_s*, %struct.nocm_link_s** %link, align 8, !tbaa !1
  %num_in1 = getelementptr inbounds %struct.nocm_link_s, %struct.nocm_link_s* %4, i32 0, i32 2
  %5 = load i8, i8* %num_in1, align 1, !tbaa !72
  store i8 %5, i8* %num_in, align 1, !tbaa !5
  call void @llvm.lifetime.start(i64 1, i8* %num_out) #1
  %6 = load %struct.nocm_link_s*, %struct.nocm_link_s** %link, align 8, !tbaa !1
  %num_out2 = getelementptr inbounds %struct.nocm_link_s, %struct.nocm_link_s* %6, i32 0, i32 3
  %7 = load i8, i8* %num_out2, align 1, !tbaa !65
  store i8 %7, i8* %num_out, align 1, !tbaa !5
  %8 = bitcast [4 x i16]* %frac_in to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  %9 = bitcast [64 x i16]* %frac_out to i8*
  call void @llvm.lifetime.start(i64 128, i8* %9) #1
  %10 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = load i32, i32* %num_bytes_in.addr, align 4, !tbaa !26
  %cmp = icmp eq i32 %11, 2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %12 = bitcast i16** %data to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  %13 = load i8*, i8** %inputcolor.addr, align 8, !tbaa !1
  %14 = bitcast i8* %13 to i16*
  store i16* %14, i16** %data, align 8, !tbaa !1
  store i32 0, i32* %k, align 4, !tbaa !26
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %15 = load i32, i32* %k, align 4, !tbaa !26
  %16 = load i8, i8* %num_in, align 1, !tbaa !5
  %conv = zext i8 %16 to i32
  %cmp3 = icmp slt i32 %15, %conv
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %17 = load i32, i32* %k, align 4, !tbaa !26
  %idxprom = sext i32 %17 to i64
  %18 = load i16*, i16** %data, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %18, i64 %idxprom
  %19 = load i16, i16* %arrayidx, align 2, !tbaa !99
  %conv5 = zext i16 %19 to i32
  %shr = ashr i32 %conv5, 1
  %20 = load i32, i32* %k, align 4, !tbaa !26
  %idxprom6 = sext i32 %20 to i64
  %21 = load i16*, i16** %data, align 8, !tbaa !1
  %arrayidx7 = getelementptr inbounds i16, i16* %21, i64 %idxprom6
  %22 = load i16, i16* %arrayidx7, align 2, !tbaa !99
  %conv8 = zext i16 %22 to i32
  %shr9 = ashr i32 %conv8, 13
  %sub = sub nsw i32 %shr, %shr9
  %conv10 = trunc i32 %sub to i16
  %23 = load i32, i32* %k, align 4, !tbaa !26
  %idxprom11 = sext i32 %23 to i64
  %arrayidx12 = getelementptr inbounds [4 x i16], [4 x i16]* %frac_in, i32 0, i64 %idxprom11
  store i16 %conv10, i16* %arrayidx12, align 2, !tbaa !99
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %24 = load i32, i32* %k, align 4, !tbaa !26
  %inc = add nsw i32 %24, 1
  store i32 %inc, i32* %k, align 4, !tbaa !26
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %25 = bitcast i16** %data to i8*
  call void @llvm.lifetime.end(i64 8, i8* %25) #1
  br label %if.end

if.else:                                          ; preds = %entry
  %26 = bitcast i8** %data13 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %26) #1
  %27 = load i8*, i8** %inputcolor.addr, align 8, !tbaa !1
  store i8* %27, i8** %data13, align 8, !tbaa !1
  store i32 0, i32* %k, align 4, !tbaa !26
  br label %for.cond.14

for.cond.14:                                      ; preds = %for.inc.35, %if.else
  %28 = load i32, i32* %k, align 4, !tbaa !26
  %29 = load i8, i8* %num_in, align 1, !tbaa !5
  %conv15 = zext i8 %29 to i32
  %cmp16 = icmp slt i32 %28, %conv15
  br i1 %cmp16, label %for.body.18, label %for.end.37

for.body.18:                                      ; preds = %for.cond.14
  %30 = load i32, i32* %k, align 4, !tbaa !26
  %idxprom19 = sext i32 %30 to i64
  %31 = load i8*, i8** %data13, align 8, !tbaa !1
  %arrayidx20 = getelementptr inbounds i8, i8* %31, i64 %idxprom19
  %32 = load i8, i8* %arrayidx20, align 1, !tbaa !5
  %conv21 = zext i8 %32 to i16
  %conv22 = sext i16 %conv21 to i32
  %shl = shl i32 %conv22, 7
  %33 = load i32, i32* %k, align 4, !tbaa !26
  %idxprom23 = sext i32 %33 to i64
  %34 = load i8*, i8** %data13, align 8, !tbaa !1
  %arrayidx24 = getelementptr inbounds i8, i8* %34, i64 %idxprom23
  %35 = load i8, i8* %arrayidx24, align 1, !tbaa !5
  %conv25 = zext i8 %35 to i32
  %shr26 = ashr i32 %conv25, 1
  %add = add nsw i32 %shl, %shr26
  %36 = load i32, i32* %k, align 4, !tbaa !26
  %idxprom27 = sext i32 %36 to i64
  %37 = load i8*, i8** %data13, align 8, !tbaa !1
  %arrayidx28 = getelementptr inbounds i8, i8* %37, i64 %idxprom27
  %38 = load i8, i8* %arrayidx28, align 1, !tbaa !5
  %conv29 = zext i8 %38 to i32
  %shr30 = ashr i32 %conv29, 5
  %sub31 = sub nsw i32 %add, %shr30
  %conv32 = trunc i32 %sub31 to i16
  %39 = load i32, i32* %k, align 4, !tbaa !26
  %idxprom33 = sext i32 %39 to i64
  %arrayidx34 = getelementptr inbounds [4 x i16], [4 x i16]* %frac_in, i32 0, i64 %idxprom33
  store i16 %conv32, i16* %arrayidx34, align 2, !tbaa !99
  br label %for.inc.35

for.inc.35:                                       ; preds = %for.body.18
  %40 = load i32, i32* %k, align 4, !tbaa !26
  %inc36 = add nsw i32 %40, 1
  store i32 %inc36, i32* %k, align 4, !tbaa !26
  br label %for.cond.14

for.end.37:                                       ; preds = %for.cond.14
  %41 = bitcast i8** %data13 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %41) #1
  br label %if.end

if.end:                                           ; preds = %for.end.37, %for.end
  %42 = load i8, i8* %num_in, align 1, !tbaa !5
  %conv38 = zext i8 %42 to i32
  switch i32 %conv38, label %sw.default [
    i32 1, label %sw.bb
    i32 3, label %sw.bb.40
    i32 4, label %sw.bb.46
  ]

sw.bb:                                            ; preds = %if.end
  %43 = load %struct.nocm_link_s*, %struct.nocm_link_s** %link, align 8, !tbaa !1
  %cm_procs = getelementptr inbounds %struct.nocm_link_s, %struct.nocm_link_s* %43, i32 0, i32 0
  %map_gray = getelementptr inbounds %struct.gx_cm_color_map_procs_s, %struct.gx_cm_color_map_procs_s* %cm_procs, i32 0, i32 0
  %44 = load void (%struct.gx_device_s*, i16, i16*)*, void (%struct.gx_device_s*, i16, i16*)** %map_gray, align 8, !tbaa !71
  %45 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %arrayidx39 = getelementptr inbounds [4 x i16], [4 x i16]* %frac_in, i32 0, i64 0
  %46 = load i16, i16* %arrayidx39, align 2, !tbaa !99
  %arraydecay = getelementptr inbounds [64 x i16], [64 x i16]* %frac_out, i32 0, i32 0
  call void %44(%struct.gx_device_s* %45, i16 signext %46, i16* %arraydecay) #4
  br label %sw.epilog

sw.bb.40:                                         ; preds = %if.end
  %47 = load %struct.nocm_link_s*, %struct.nocm_link_s** %link, align 8, !tbaa !1
  %cm_procs41 = getelementptr inbounds %struct.nocm_link_s, %struct.nocm_link_s* %47, i32 0, i32 0
  %map_rgb = getelementptr inbounds %struct.gx_cm_color_map_procs_s, %struct.gx_cm_color_map_procs_s* %cm_procs41, i32 0, i32 1
  %48 = load void (%struct.gx_device_s*, %struct.gs_imager_state_s*, i16, i16, i16, i16*)*, void (%struct.gx_device_s*, %struct.gs_imager_state_s*, i16, i16, i16, i16*)** %map_rgb, align 8, !tbaa !69
  %49 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %50 = load %struct.nocm_link_s*, %struct.nocm_link_s** %link, align 8, !tbaa !1
  %pis = getelementptr inbounds %struct.nocm_link_s, %struct.nocm_link_s* %50, i32 0, i32 1
  %51 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis, align 8, !tbaa !64
  %arrayidx42 = getelementptr inbounds [4 x i16], [4 x i16]* %frac_in, i32 0, i64 0
  %52 = load i16, i16* %arrayidx42, align 2, !tbaa !99
  %arrayidx43 = getelementptr inbounds [4 x i16], [4 x i16]* %frac_in, i32 0, i64 1
  %53 = load i16, i16* %arrayidx43, align 2, !tbaa !99
  %arrayidx44 = getelementptr inbounds [4 x i16], [4 x i16]* %frac_in, i32 0, i64 2
  %54 = load i16, i16* %arrayidx44, align 2, !tbaa !99
  %arraydecay45 = getelementptr inbounds [64 x i16], [64 x i16]* %frac_out, i32 0, i32 0
  call void %48(%struct.gx_device_s* %49, %struct.gs_imager_state_s* %51, i16 signext %52, i16 signext %53, i16 signext %54, i16* %arraydecay45) #4
  br label %sw.epilog

sw.bb.46:                                         ; preds = %if.end
  %55 = load %struct.nocm_link_s*, %struct.nocm_link_s** %link, align 8, !tbaa !1
  %cm_procs47 = getelementptr inbounds %struct.nocm_link_s, %struct.nocm_link_s* %55, i32 0, i32 0
  %map_cmyk = getelementptr inbounds %struct.gx_cm_color_map_procs_s, %struct.gx_cm_color_map_procs_s* %cm_procs47, i32 0, i32 2
  %56 = load void (%struct.gx_device_s*, i16, i16, i16, i16, i16*)*, void (%struct.gx_device_s*, i16, i16, i16, i16, i16*)** %map_cmyk, align 8, !tbaa !67
  %57 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %arrayidx48 = getelementptr inbounds [4 x i16], [4 x i16]* %frac_in, i32 0, i64 0
  %58 = load i16, i16* %arrayidx48, align 2, !tbaa !99
  %arrayidx49 = getelementptr inbounds [4 x i16], [4 x i16]* %frac_in, i32 0, i64 1
  %59 = load i16, i16* %arrayidx49, align 2, !tbaa !99
  %arrayidx50 = getelementptr inbounds [4 x i16], [4 x i16]* %frac_in, i32 0, i64 2
  %60 = load i16, i16* %arrayidx50, align 2, !tbaa !99
  %arrayidx51 = getelementptr inbounds [4 x i16], [4 x i16]* %frac_in, i32 0, i64 3
  %61 = load i16, i16* %arrayidx51, align 2, !tbaa !99
  %arraydecay52 = getelementptr inbounds [64 x i16], [64 x i16]* %frac_out, i32 0, i32 0
  call void %56(%struct.gx_device_s* %57, i16 signext %58, i16 signext %59, i16 signext %60, i16 signext %61, i16* %arraydecay52) #4
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.46, %sw.bb.40, %sw.bb
  %62 = load i32, i32* %num_bytes_out.addr, align 4, !tbaa !26
  %cmp53 = icmp eq i32 %62, 2
  br i1 %cmp53, label %if.then.55, label %if.else.77

if.then.55:                                       ; preds = %sw.epilog
  %63 = bitcast i16** %data56 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %63) #1
  %64 = load i8*, i8** %outputcolor.addr, align 8, !tbaa !1
  %65 = bitcast i8* %64 to i16*
  store i16* %65, i16** %data56, align 8, !tbaa !1
  store i32 0, i32* %k, align 4, !tbaa !26
  br label %for.cond.57

for.cond.57:                                      ; preds = %for.inc.74, %if.then.55
  %66 = load i32, i32* %k, align 4, !tbaa !26
  %67 = load i8, i8* %num_out, align 1, !tbaa !5
  %conv58 = zext i8 %67 to i32
  %cmp59 = icmp slt i32 %66, %conv58
  br i1 %cmp59, label %for.body.61, label %for.end.76

for.body.61:                                      ; preds = %for.cond.57
  %68 = load i32, i32* %k, align 4, !tbaa !26
  %idxprom62 = sext i32 %68 to i64
  %arrayidx63 = getelementptr inbounds [64 x i16], [64 x i16]* %frac_out, i32 0, i64 %idxprom62
  %69 = load i16, i16* %arrayidx63, align 2, !tbaa !99
  %conv64 = sext i16 %69 to i32
  %shl65 = shl i32 %conv64, 1
  %70 = load i32, i32* %k, align 4, !tbaa !26
  %idxprom66 = sext i32 %70 to i64
  %arrayidx67 = getelementptr inbounds [64 x i16], [64 x i16]* %frac_out, i32 0, i64 %idxprom66
  %71 = load i16, i16* %arrayidx67, align 2, !tbaa !99
  %conv68 = sext i16 %71 to i32
  %shr69 = ashr i32 %conv68, 11
  %add70 = add nsw i32 %shl65, %shr69
  %conv71 = trunc i32 %add70 to i16
  %72 = load i32, i32* %k, align 4, !tbaa !26
  %idxprom72 = sext i32 %72 to i64
  %73 = load i16*, i16** %data56, align 8, !tbaa !1
  %arrayidx73 = getelementptr inbounds i16, i16* %73, i64 %idxprom72
  store i16 %conv71, i16* %arrayidx73, align 2, !tbaa !99
  br label %for.inc.74

for.inc.74:                                       ; preds = %for.body.61
  %74 = load i32, i32* %k, align 4, !tbaa !26
  %inc75 = add nsw i32 %74, 1
  store i32 %inc75, i32* %k, align 4, !tbaa !26
  br label %for.cond.57

for.end.76:                                       ; preds = %for.cond.57
  %75 = bitcast i16** %data56 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %75) #1
  br label %if.end.99

if.else.77:                                       ; preds = %sw.epilog
  %76 = bitcast i8** %data78 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %76) #1
  %77 = load i8*, i8** %outputcolor.addr, align 8, !tbaa !1
  store i8* %77, i8** %data78, align 8, !tbaa !1
  store i32 0, i32* %k, align 4, !tbaa !26
  br label %for.cond.79

for.cond.79:                                      ; preds = %for.inc.96, %if.else.77
  %78 = load i32, i32* %k, align 4, !tbaa !26
  %79 = load i8, i8* %num_out, align 1, !tbaa !5
  %conv80 = zext i8 %79 to i32
  %cmp81 = icmp slt i32 %78, %conv80
  br i1 %cmp81, label %for.body.83, label %for.end.98

for.body.83:                                      ; preds = %for.cond.79
  %80 = load i32, i32* %k, align 4, !tbaa !26
  %idxprom84 = sext i32 %80 to i64
  %arrayidx85 = getelementptr inbounds [64 x i16], [64 x i16]* %frac_out, i32 0, i64 %idxprom84
  %81 = load i16, i16* %arrayidx85, align 2, !tbaa !99
  %conv86 = sext i16 %81 to i32
  %shr87 = ashr i32 %conv86, 12
  %82 = load i32, i32* %k, align 4, !tbaa !26
  %idxprom88 = sext i32 %82 to i64
  %arrayidx89 = getelementptr inbounds [64 x i16], [64 x i16]* %frac_out, i32 0, i64 %idxprom88
  %83 = load i16, i16* %arrayidx89, align 2, !tbaa !99
  %conv90 = sext i16 %83 to i32
  %add91 = add nsw i32 %shr87, %conv90
  %shr92 = ashr i32 %add91, 7
  %conv93 = trunc i32 %shr92 to i8
  %84 = load i32, i32* %k, align 4, !tbaa !26
  %idxprom94 = sext i32 %84 to i64
  %85 = load i8*, i8** %data78, align 8, !tbaa !1
  %arrayidx95 = getelementptr inbounds i8, i8* %85, i64 %idxprom94
  store i8 %conv93, i8* %arrayidx95, align 1, !tbaa !5
  br label %for.inc.96

for.inc.96:                                       ; preds = %for.body.83
  %86 = load i32, i32* %k, align 4, !tbaa !26
  %inc97 = add nsw i32 %86, 1
  store i32 %inc97, i32* %k, align 4, !tbaa !26
  br label %for.cond.79

for.end.98:                                       ; preds = %for.cond.79
  %87 = bitcast i8** %data78 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %87) #1
  br label %if.end.99

if.end.99:                                        ; preds = %for.end.98, %for.end.76
  %88 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %88) #1
  %89 = bitcast [64 x i16]* %frac_out to i8*
  call void @llvm.lifetime.end(i64 128, i8* %89) #1
  %90 = bitcast [4 x i16]* %frac_in to i8*
  call void @llvm.lifetime.end(i64 8, i8* %90) #1
  call void @llvm.lifetime.end(i64 1, i8* %num_out) #1
  call void @llvm.lifetime.end(i64 1, i8* %num_in) #1
  %91 = bitcast %struct.nocm_link_s** %link to i8*
  call void @llvm.lifetime.end(i64 8, i8* %91) #1
  ret void
}

; Function Attrs: nounwind
declare i8* @memcpy(i8*, i8*, i64) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nobuiltin }
attributes #5 = { nobuiltin nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!3, !3, i64 0}
!6 = !{!7, !2, i64 8}
!7 = !{!"gs_imager_state_s", !8, i64 0, !2, i64 8, !2, i64 16, !9, i64 24, !8, i64 128, !13, i64 132, !8, i64 168, !14, i64 176, !14, i64 192, !8, i64 208, !8, i64 212, !16, i64 216, !3, i64 220, !17, i64 224, !17, i64 228, !18, i64 232, !19, i64 240, !8, i64 248, !8, i64 252, !8, i64 256, !2, i64 264, !8, i64 272, !8, i64 276, !8, i64 280, !8, i64 284, !8, i64 288, !8, i64 292, !10, i64 296, !20, i64 300, !8, i64 308, !8, i64 312, !8, i64 316, !10, i64 320, !8, i64 324, !8, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !3, i64 376, !2, i64 392, !2, i64 400, !8, i64 408, !2, i64 416, !2, i64 424, !21, i64 432, !3, i64 496, !2, i64 1008, !2, i64 1016, !22, i64 1024, !2, i64 1304, !2, i64 1312, !2, i64 1320, !2, i64 1328, !22, i64 1336}
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
!23 = !{!24, !2, i64 200}
!24 = !{!"gs_memory_s", !2, i64 0, !25, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!25 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!26 = !{!8, !8, i64 0}
!27 = !{!28, !2, i64 1680}
!28 = !{!"gx_device_s", !8, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !8, i64 40, !2, i64 48, !29, i64 56, !8, i64 80, !8, i64 84, !8, i64 88, !30, i64 96, !32, i64 816, !8, i64 832, !8, i64 836, !8, i64 840, !8, i64 844, !8, i64 848, !8, i64 852, !3, i64 856, !3, i64 864, !8, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !19, i64 928, !19, i64 936, !8, i64 944, !8, i64 948, !8, i64 952, !8, i64 956, !8, i64 960, !19, i64 968, !19, i64 976, !33, i64 984, !8, i64 1052, !8, i64 1056, !34, i64 1064, !2, i64 1104, !3, i64 1112, !36, i64 1120, !37, i64 1144}
!29 = !{!"rc_header_s", !19, i64 0, !2, i64 8, !2, i64 16}
!30 = !{!"gx_device_color_info_s", !8, i64 0, !8, i64 4, !3, i64 8, !16, i64 12, !3, i64 14, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !31, i64 32, !3, i64 40, !3, i64 44, !3, i64 108, !3, i64 176, !2, i64 688, !3, i64 696, !19, i64 704, !8, i64 712}
!31 = !{!"gx_device_anti_alias_info_s", !8, i64 0, !8, i64 4}
!32 = !{!"gx_device_cached_colors_s", !19, i64 0, !19, i64 8}
!33 = !{!"gx_stroked_gradient_recognizer_s", !8, i64 0, !3, i64 4, !3, i64 36}
!34 = !{!"gdev_space_params_s", !19, i64 0, !19, i64 8, !35, i64 16, !8, i64 32, !3, i64 36}
!35 = !{!"gx_band_params_s", !8, i64 0, !8, i64 4, !19, i64 8}
!36 = !{!"gx_page_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16}
!37 = !{!"gx_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176, !2, i64 184, !2, i64 192, !2, i64 200, !2, i64 208, !2, i64 216, !2, i64 224, !2, i64 232, !2, i64 240, !2, i64 248, !2, i64 256, !2, i64 264, !2, i64 272, !2, i64 280, !2, i64 288, !2, i64 296, !2, i64 304, !2, i64 312, !2, i64 320, !2, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !2, i64 376, !2, i64 384, !2, i64 392, !2, i64 400, !2, i64 408, !2, i64 416, !2, i64 424, !2, i64 432, !2, i64 440, !2, i64 448, !2, i64 456, !2, i64 464, !2, i64 472, !2, i64 480, !2, i64 488, !2, i64 496, !2, i64 504, !2, i64 512, !2, i64 520, !2, i64 528, !2, i64 536, !2, i64 544, !2, i64 552, !2, i64 560, !2, i64 568, !2, i64 576}
!38 = !{!39, !8, i64 160}
!39 = !{!"cmm_dev_profile_s", !3, i64 0, !2, i64 32, !2, i64 40, !2, i64 48, !3, i64 56, !8, i64 152, !8, i64 156, !8, i64 160, !8, i64 164, !8, i64 168, !8, i64 172, !2, i64 176, !8, i64 184, !2, i64 192, !29, i64 200}
!40 = !{!28, !2, i64 1536}
!41 = !{!42, !19, i64 24}
!42 = !{!"gsicc_hashlink_s", !19, i64 0, !19, i64 8, !19, i64 16, !19, i64 24}
!43 = !{!28, !8, i64 100}
!44 = !{!42, !19, i64 16}
!45 = !{!42, !19, i64 8}
!46 = !{!42, !19, i64 0}
!47 = !{!7, !2, i64 344}
!48 = !{!49, !2, i64 48}
!49 = !{!"gsicc_link_cache_s", !2, i64 0, !8, i64 8, !29, i64 16, !2, i64 40, !2, i64 48, !2, i64 56, !8, i64 64}
!50 = !{!51, !2, i64 8}
!51 = !{!"gsicc_link_s", !2, i64 0, !52, i64 8, !42, i64 40, !2, i64 72, !8, i64 80, !2, i64 88, !2, i64 96, !8, i64 104, !8, i64 108, !8, i64 112, !8, i64 116, !8, i64 120, !8, i64 124, !52, i64 128, !3, i64 160, !8, i64 164, !8, i64 168}
!52 = !{!"gscms_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24}
!53 = !{!51, !2, i64 16}
!54 = !{!51, !2, i64 24}
!55 = !{i64 0, i64 8, !56, i64 8, i64 8, !56, i64 16, i64 8, !56, i64 24, i64 8, !56}
!56 = !{!19, !19, i64 0}
!57 = !{!24, !2, i64 64}
!58 = !{!51, !2, i64 0}
!59 = !{!60, !2, i64 40}
!60 = !{!"nocm_link_s", !61, i64 0, !2, i64 24, !3, i64 32, !3, i64 33, !2, i64 40}
!61 = !{!"gx_cm_color_map_procs_s", !2, i64 0, !2, i64 8, !2, i64 16}
!62 = !{!7, !2, i64 416}
!63 = !{!7, !2, i64 424}
!64 = !{!60, !2, i64 24}
!65 = !{!60, !3, i64 33}
!66 = !{!61, !2, i64 16}
!67 = !{!60, !2, i64 16}
!68 = !{!61, !2, i64 8}
!69 = !{!60, !2, i64 8}
!70 = !{!61, !2, i64 0}
!71 = !{!60, !2, i64 0}
!72 = !{!60, !3, i64 32}
!73 = !{!51, !8, i64 164}
!74 = !{!51, !8, i64 168}
!75 = !{!51, !19, i64 40}
!76 = !{!51, !19, i64 56}
!77 = !{!51, !19, i64 48}
!78 = !{!51, !19, i64 64}
!79 = !{!51, !8, i64 108}
!80 = !{!51, !8, i64 112}
!81 = !{!51, !8, i64 116}
!82 = !{!51, !8, i64 120}
!83 = !{!51, !3, i64 160}
!84 = !{!51, !8, i64 104}
!85 = !{!51, !2, i64 96}
!86 = !{!87, !8, i64 16}
!87 = !{!"gsicc_bufferdesc_s", !3, i64 0, !3, i64 1, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !8, i64 32}
!88 = !{!24, !2, i64 24}
!89 = !{!90, !2, i64 24}
!90 = !{!"gx_transfer_map_s", !29, i64 0, !2, i64 24, !91, i64 32, !19, i64 48, !3, i64 56}
!91 = !{!"gs_mapping_closure_s", !2, i64 0, !2, i64 8}
!92 = !{!90, !19, i64 48}
!93 = !{!87, !3, i64 0}
!94 = !{!87, !8, i64 20}
!95 = !{!87, !3, i64 1}
!96 = !{!87, !8, i64 28}
!97 = !{!87, !8, i64 32}
!98 = !{!87, !8, i64 24}
!99 = !{!16, !16, i64 0}
