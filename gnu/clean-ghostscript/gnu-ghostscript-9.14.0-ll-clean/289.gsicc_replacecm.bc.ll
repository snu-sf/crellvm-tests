; ModuleID = './gsicc_replacecm.bc'
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
%struct.rcm_link_s = type { i8, i8, i32, %struct.gs_memory_s*, %struct.gx_cm_color_map_procs_s, i8* }

@.str = private unnamed_addr constant [19 x i8] c"gsicc_rcm_get_link\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"gsicc_rcm_freelink\00", align 1

; Function Attrs: nounwind uwtable
define %struct.gsicc_link_s* @gsicc_rcm_get_link(%struct.gs_imager_state_s* %pis, %struct.gx_device_s* %dev, i32 %data_cs) #0 {
entry:
  %retval = alloca %struct.gsicc_link_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %data_cs.addr = alloca i32, align 4
  %result = alloca %struct.gsicc_link_s*, align 8
  %hash = alloca %struct.gsicc_hashlink_s, align 8
  %rcm_link = alloca %struct.rcm_link_s*, align 8
  %mem = alloca %struct.gs_memory_s*, align 8
  %cm_procs = alloca %struct.gx_cm_color_map_procs_s*, align 8
  %pageneutralcolor = alloca i32, align 4
  %dev_profile = alloca %struct.cmm_dev_profile_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i32 %data_cs, i32* %data_cs.addr, align 4, !tbaa !5
  %0 = bitcast %struct.gsicc_link_s** %result to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast %struct.gsicc_hashlink_s* %hash to i8*
  call void @llvm.lifetime.start(i64 32, i8* %1) #1
  %2 = bitcast %struct.rcm_link_s** %rcm_link to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %4, i32 0, i32 3
  %5 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !6
  %non_gc_memory = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %5, i32 0, i32 3
  %6 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory, align 8, !tbaa !20
  store %struct.gs_memory_s* %6, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %7 = bitcast %struct.gx_cm_color_map_procs_s** %cm_procs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = bitcast i32* %pageneutralcolor to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  store i32 0, i32* %pageneutralcolor, align 4, !tbaa !23
  %9 = bitcast %struct.cmm_dev_profile_s** %dev_profile to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %cmp = icmp ne %struct.gx_device_s* %11, null
  br i1 %cmp, label %if.then, label %if.end.4

if.then:                                          ; preds = %entry
  %12 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %12, i32 0, i32 42
  %get_profile = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 67
  %13 = load i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)*, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)** %get_profile, align 8, !tbaa !24
  %14 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call = call i32 %13(%struct.gx_device_s* %14, %struct.cmm_dev_profile_s** %dev_profile) #3
  store i32 %call, i32* %code, align 4, !tbaa !23
  %15 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %dev_profile, align 8, !tbaa !1
  %cmp1 = icmp ne %struct.cmm_dev_profile_s* %15, null
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %16 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %dev_profile, align 8, !tbaa !1
  %pageneutralcolor3 = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %16, i32 0, i32 7
  %17 = load i32, i32* %pageneutralcolor3, align 4, !tbaa !25
  store i32 %17, i32* %pageneutralcolor, align 4, !tbaa !23
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %entry
  %18 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call5 = call i32 @fwd_uses_fwd_cmap_procs(%struct.gx_device_s* %18) #3
  %tobool = icmp ne i32 %call5, 0
  br i1 %tobool, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %if.end.4
  %19 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call7 = call %struct.gx_cm_color_map_procs_s* @fwd_get_target_cmap_procs(%struct.gx_device_s* %19) #3
  store %struct.gx_cm_color_map_procs_s* %call7, %struct.gx_cm_color_map_procs_s** %cm_procs, align 8, !tbaa !1
  br label %if.end.10

if.else:                                          ; preds = %if.end.4
  %20 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs8 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %20, i32 0, i32 42
  %get_color_mapping_procs = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs8, i32 0, i32 49
  %21 = load %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)*, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)** %get_color_mapping_procs, align 8, !tbaa !27
  %22 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call9 = call %struct.gx_cm_color_map_procs_s* %21(%struct.gx_device_s* %22) #3
  store %struct.gx_cm_color_map_procs_s* %call9, %struct.gx_cm_color_map_procs_s** %cm_procs, align 8, !tbaa !1
  br label %if.end.10

if.end.10:                                        ; preds = %if.else, %if.then.6
  %rend_hash = getelementptr inbounds %struct.gsicc_hashlink_s, %struct.gsicc_hashlink_s* %hash, i32 0, i32 3
  store i64 2, i64* %rend_hash, align 8, !tbaa !28
  %23 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %23, i32 0, i32 11
  %num_components = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 1
  %24 = load i32, i32* %num_components, align 4, !tbaa !30
  %conv = sext i32 %24 to i64
  %des_hash = getelementptr inbounds %struct.gsicc_hashlink_s, %struct.gsicc_hashlink_s* %hash, i32 0, i32 2
  store i64 %conv, i64* %des_hash, align 8, !tbaa !31
  %25 = load i32, i32* %data_cs.addr, align 4, !tbaa !5
  %conv11 = zext i32 %25 to i64
  %src_hash = getelementptr inbounds %struct.gsicc_hashlink_s, %struct.gsicc_hashlink_s* %hash, i32 0, i32 1
  store i64 %conv11, i64* %src_hash, align 8, !tbaa !32
  %26 = load i32, i32* %data_cs.addr, align 4, !tbaa !5
  %conv12 = zext i32 %26 to i64
  %des_hash13 = getelementptr inbounds %struct.gsicc_hashlink_s, %struct.gsicc_hashlink_s* %hash, i32 0, i32 2
  %27 = load i64, i64* %des_hash13, align 8, !tbaa !31
  %mul = mul nsw i64 %27, 256
  %add = add nsw i64 %conv12, %mul
  %rend_hash14 = getelementptr inbounds %struct.gsicc_hashlink_s, %struct.gsicc_hashlink_s* %hash, i32 0, i32 3
  %28 = load i64, i64* %rend_hash14, align 8, !tbaa !28
  %mul15 = mul nsw i64 %28, 4096
  %add16 = add nsw i64 %add, %mul15
  %link_hashcode = getelementptr inbounds %struct.gsicc_hashlink_s, %struct.gsicc_hashlink_s* %hash, i32 0, i32 0
  store i64 %add16, i64* %link_hashcode, align 8, !tbaa !33
  %29 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %icc_link_cache = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %29, i32 0, i32 36
  %30 = load %struct.gsicc_link_cache_s*, %struct.gsicc_link_cache_s** %icc_link_cache, align 8, !tbaa !34
  %call17 = call %struct.gsicc_link_s* @gsicc_findcachelink(%struct.gsicc_hashlink_s* byval align 8 %hash, %struct.gsicc_link_cache_s* %30, i32 0, i32 0) #3
  store %struct.gsicc_link_s* %call17, %struct.gsicc_link_s** %result, align 8, !tbaa !1
  %31 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %result, align 8, !tbaa !1
  %cmp18 = icmp ne %struct.gsicc_link_s* %31, null
  br i1 %cmp18, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %if.end.10
  %32 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %result, align 8, !tbaa !1
  store %struct.gsicc_link_s* %32, %struct.gsicc_link_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.21:                                        ; preds = %if.end.10
  %33 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %icc_link_cache22 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %33, i32 0, i32 36
  %34 = load %struct.gsicc_link_cache_s*, %struct.gsicc_link_cache_s** %icc_link_cache22, align 8, !tbaa !34
  %call23 = call i32 @gsicc_alloc_link_entry(%struct.gsicc_link_cache_s* %34, %struct.gsicc_link_s** %result, %struct.gsicc_hashlink_s* byval align 8 %hash, i32 0, i32 0) #3
  %tobool24 = icmp ne i32 %call23, 0
  br i1 %tobool24, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %if.end.21
  %35 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %result, align 8, !tbaa !1
  store %struct.gsicc_link_s* %35, %struct.gsicc_link_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.26:                                        ; preds = %if.end.21
  %36 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %result, align 8, !tbaa !1
  %cmp27 = icmp eq %struct.gsicc_link_s* %36, null
  br i1 %cmp27, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %if.end.26
  %37 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %result, align 8, !tbaa !1
  store %struct.gsicc_link_s* %37, %struct.gsicc_link_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.30:                                        ; preds = %if.end.26
  %38 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %icc_link_cache31 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %38, i32 0, i32 36
  %39 = load %struct.gsicc_link_cache_s*, %struct.gsicc_link_cache_s** %icc_link_cache31, align 8, !tbaa !34
  %lock = getelementptr inbounds %struct.gsicc_link_cache_s, %struct.gsicc_link_cache_s* %39, i32 0, i32 4
  %40 = load %struct.gx_monitor_s*, %struct.gx_monitor_s** %lock, align 8, !tbaa !48
  %native = getelementptr inbounds %struct.gx_monitor_s, %struct.gx_monitor_s* %40, i32 0, i32 1
  %call32 = call i32 @gp_monitor_enter(%union.gp_monitor* %native) #3
  %41 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %result, align 8, !tbaa !1
  %procs33 = getelementptr inbounds %struct.gsicc_link_s, %struct.gsicc_link_s* %41, i32 0, i32 1
  %map_buffer = getelementptr inbounds %struct.gscms_procs_s, %struct.gscms_procs_s* %procs33, i32 0, i32 0
  store void (%struct.gx_device_s*, %struct.gsicc_link_s*, %struct.gsicc_bufferdesc_s*, %struct.gsicc_bufferdesc_s*, i8*, i8*)* @gsicc_rcm_transform_color_buffer, void (%struct.gx_device_s*, %struct.gsicc_link_s*, %struct.gsicc_bufferdesc_s*, %struct.gsicc_bufferdesc_s*, i8*, i8*)** %map_buffer, align 8, !tbaa !50
  %42 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %result, align 8, !tbaa !1
  %procs34 = getelementptr inbounds %struct.gsicc_link_s, %struct.gsicc_link_s* %42, i32 0, i32 1
  %map_color = getelementptr inbounds %struct.gscms_procs_s, %struct.gscms_procs_s* %procs34, i32 0, i32 1
  store void (%struct.gx_device_s*, %struct.gsicc_link_s*, i8*, i8*, i32)* @gsicc_rcm_transform_color, void (%struct.gx_device_s*, %struct.gsicc_link_s*, i8*, i8*, i32)** %map_color, align 8, !tbaa !53
  %43 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %result, align 8, !tbaa !1
  %procs35 = getelementptr inbounds %struct.gsicc_link_s, %struct.gsicc_link_s* %43, i32 0, i32 1
  %free_link = getelementptr inbounds %struct.gscms_procs_s, %struct.gscms_procs_s* %procs35, i32 0, i32 2
  store void (%struct.gsicc_link_s*)* @gsicc_rcm_freelink, void (%struct.gsicc_link_s*)** %free_link, align 8, !tbaa !54
  %44 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %result, align 8, !tbaa !1
  %hashcode = getelementptr inbounds %struct.gsicc_link_s, %struct.gsicc_link_s* %44, i32 0, i32 2
  %45 = bitcast %struct.gsicc_hashlink_s* %hashcode to i8*
  %46 = bitcast %struct.gsicc_hashlink_s* %hash to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %45, i8* %46, i64 32, i32 8, i1 false), !tbaa.struct !55
  %47 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %result, align 8, !tbaa !1
  %is_identity = getelementptr inbounds %struct.gsicc_link_s, %struct.gsicc_link_s* %47, i32 0, i32 10
  store i32 0, i32* %is_identity, align 4, !tbaa !57
  %48 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs36 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %48, i32 0, i32 1
  %alloc_bytes = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs36, i32 0, i32 7
  %49 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes, align 8, !tbaa !58
  %50 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %call37 = call i8* %49(%struct.gs_memory_s* %50, i32 48, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i32 0, i32 0)) #3
  %51 = bitcast i8* %call37 to %struct.rcm_link_s*
  store %struct.rcm_link_s* %51, %struct.rcm_link_s** %rcm_link, align 8, !tbaa !1
  %52 = load %struct.rcm_link_s*, %struct.rcm_link_s** %rcm_link, align 8, !tbaa !1
  %cmp38 = icmp eq %struct.rcm_link_s* %52, null
  br i1 %cmp38, label %if.then.40, label %if.end.41

if.then.40:                                       ; preds = %if.end.30
  store %struct.gsicc_link_s* null, %struct.gsicc_link_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.41:                                        ; preds = %if.end.30
  %53 = load %struct.rcm_link_s*, %struct.rcm_link_s** %rcm_link, align 8, !tbaa !1
  %54 = bitcast %struct.rcm_link_s* %53 to i8*
  %55 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %result, align 8, !tbaa !1
  %link_handle = getelementptr inbounds %struct.gsicc_link_s, %struct.gsicc_link_s* %55, i32 0, i32 0
  store i8* %54, i8** %link_handle, align 8, !tbaa !59
  %56 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %57 = load %struct.rcm_link_s*, %struct.rcm_link_s** %rcm_link, align 8, !tbaa !1
  %memory42 = getelementptr inbounds %struct.rcm_link_s, %struct.rcm_link_s* %57, i32 0, i32 3
  store %struct.gs_memory_s* %56, %struct.gs_memory_s** %memory42, align 8, !tbaa !60
  %58 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info43 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %58, i32 0, i32 11
  %num_components44 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info43, i32 0, i32 1
  %59 = load i32, i32* %num_components44, align 4, !tbaa !30
  %cmp45 = icmp slt i32 %59, 64
  br i1 %cmp45, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.41
  %60 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info47 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %60, i32 0, i32 11
  %num_components48 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info47, i32 0, i32 1
  %61 = load i32, i32* %num_components48, align 4, !tbaa !30
  br label %cond.end

cond.false:                                       ; preds = %if.end.41
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %61, %cond.true ], [ 64, %cond.false ]
  %conv49 = trunc i32 %cond to i8
  %62 = load %struct.rcm_link_s*, %struct.rcm_link_s** %rcm_link, align 8, !tbaa !1
  %num_out = getelementptr inbounds %struct.rcm_link_s, %struct.rcm_link_s* %62, i32 0, i32 0
  store i8 %conv49, i8* %num_out, align 1, !tbaa !63
  %63 = load i32, i32* %data_cs.addr, align 4, !tbaa !5
  %64 = load %struct.rcm_link_s*, %struct.rcm_link_s** %rcm_link, align 8, !tbaa !1
  %data_cs_in = getelementptr inbounds %struct.rcm_link_s, %struct.rcm_link_s* %64, i32 0, i32 2
  store i32 %63, i32* %data_cs_in, align 4, !tbaa !64
  %65 = load %struct.gx_cm_color_map_procs_s*, %struct.gx_cm_color_map_procs_s** %cm_procs, align 8, !tbaa !1
  %map_cmyk = getelementptr inbounds %struct.gx_cm_color_map_procs_s, %struct.gx_cm_color_map_procs_s* %65, i32 0, i32 2
  %66 = load void (%struct.gx_device_s*, i16, i16, i16, i16, i16*)*, void (%struct.gx_device_s*, i16, i16, i16, i16, i16*)** %map_cmyk, align 8, !tbaa !65
  %67 = load %struct.rcm_link_s*, %struct.rcm_link_s** %rcm_link, align 8, !tbaa !1
  %cm_procs50 = getelementptr inbounds %struct.rcm_link_s, %struct.rcm_link_s* %67, i32 0, i32 4
  %map_cmyk51 = getelementptr inbounds %struct.gx_cm_color_map_procs_s, %struct.gx_cm_color_map_procs_s* %cm_procs50, i32 0, i32 2
  store void (%struct.gx_device_s*, i16, i16, i16, i16, i16*)* %66, void (%struct.gx_device_s*, i16, i16, i16, i16, i16*)** %map_cmyk51, align 8, !tbaa !66
  %68 = load %struct.gx_cm_color_map_procs_s*, %struct.gx_cm_color_map_procs_s** %cm_procs, align 8, !tbaa !1
  %map_rgb = getelementptr inbounds %struct.gx_cm_color_map_procs_s, %struct.gx_cm_color_map_procs_s* %68, i32 0, i32 1
  %69 = load void (%struct.gx_device_s*, %struct.gs_imager_state_s*, i16, i16, i16, i16*)*, void (%struct.gx_device_s*, %struct.gs_imager_state_s*, i16, i16, i16, i16*)** %map_rgb, align 8, !tbaa !67
  %70 = load %struct.rcm_link_s*, %struct.rcm_link_s** %rcm_link, align 8, !tbaa !1
  %cm_procs52 = getelementptr inbounds %struct.rcm_link_s, %struct.rcm_link_s* %70, i32 0, i32 4
  %map_rgb53 = getelementptr inbounds %struct.gx_cm_color_map_procs_s, %struct.gx_cm_color_map_procs_s* %cm_procs52, i32 0, i32 1
  store void (%struct.gx_device_s*, %struct.gs_imager_state_s*, i16, i16, i16, i16*)* %69, void (%struct.gx_device_s*, %struct.gs_imager_state_s*, i16, i16, i16, i16*)** %map_rgb53, align 8, !tbaa !68
  %71 = load %struct.gx_cm_color_map_procs_s*, %struct.gx_cm_color_map_procs_s** %cm_procs, align 8, !tbaa !1
  %map_gray = getelementptr inbounds %struct.gx_cm_color_map_procs_s, %struct.gx_cm_color_map_procs_s* %71, i32 0, i32 0
  %72 = load void (%struct.gx_device_s*, i16, i16*)*, void (%struct.gx_device_s*, i16, i16*)** %map_gray, align 8, !tbaa !69
  %73 = load %struct.rcm_link_s*, %struct.rcm_link_s** %rcm_link, align 8, !tbaa !1
  %cm_procs54 = getelementptr inbounds %struct.rcm_link_s, %struct.rcm_link_s* %73, i32 0, i32 4
  %map_gray55 = getelementptr inbounds %struct.gx_cm_color_map_procs_s, %struct.gx_cm_color_map_procs_s* %cm_procs54, i32 0, i32 0
  store void (%struct.gx_device_s*, i16, i16*)* %72, void (%struct.gx_device_s*, i16, i16*)** %map_gray55, align 8, !tbaa !70
  %74 = load i32, i32* %data_cs.addr, align 4, !tbaa !5
  switch i32 %74, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.56
    i32 6, label %sw.bb.56
    i32 3, label %sw.bb.58
  ]

sw.bb:                                            ; preds = %cond.end
  %75 = load %struct.rcm_link_s*, %struct.rcm_link_s** %rcm_link, align 8, !tbaa !1
  %num_in = getelementptr inbounds %struct.rcm_link_s, %struct.rcm_link_s* %75, i32 0, i32 1
  store i8 1, i8* %num_in, align 1, !tbaa !71
  br label %sw.epilog

sw.bb.56:                                         ; preds = %cond.end, %cond.end
  %76 = load %struct.rcm_link_s*, %struct.rcm_link_s** %rcm_link, align 8, !tbaa !1
  %num_in57 = getelementptr inbounds %struct.rcm_link_s, %struct.rcm_link_s* %76, i32 0, i32 1
  store i8 3, i8* %num_in57, align 1, !tbaa !71
  br label %sw.epilog

sw.bb.58:                                         ; preds = %cond.end
  %77 = load %struct.rcm_link_s*, %struct.rcm_link_s** %rcm_link, align 8, !tbaa !1
  %num_in59 = getelementptr inbounds %struct.rcm_link_s, %struct.rcm_link_s* %77, i32 0, i32 1
  store i8 4, i8* %num_in59, align 1, !tbaa !71
  br label %sw.epilog

sw.default:                                       ; preds = %cond.end
  %78 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %result, align 8, !tbaa !1
  %procs60 = getelementptr inbounds %struct.gsicc_link_s, %struct.gsicc_link_s* %78, i32 0, i32 1
  %free_link61 = getelementptr inbounds %struct.gscms_procs_s, %struct.gscms_procs_s* %procs60, i32 0, i32 2
  %79 = load void (%struct.gsicc_link_s*)*, void (%struct.gsicc_link_s*)** %free_link61, align 8, !tbaa !54
  %80 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %result, align 8, !tbaa !1
  call void %79(%struct.gsicc_link_s* %80) #3
  store %struct.gsicc_link_s* null, %struct.gsicc_link_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb.58, %sw.bb.56, %sw.bb
  %81 = load %struct.rcm_link_s*, %struct.rcm_link_s** %rcm_link, align 8, !tbaa !1
  %context = getelementptr inbounds %struct.rcm_link_s, %struct.rcm_link_s* %81, i32 0, i32 5
  store i8* null, i8** %context, align 8, !tbaa !72
  %82 = load %struct.rcm_link_s*, %struct.rcm_link_s** %rcm_link, align 8, !tbaa !1
  %num_in62 = getelementptr inbounds %struct.rcm_link_s, %struct.rcm_link_s* %82, i32 0, i32 1
  %83 = load i8, i8* %num_in62, align 1, !tbaa !71
  %conv63 = zext i8 %83 to i32
  %84 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %result, align 8, !tbaa !1
  %num_input = getelementptr inbounds %struct.gsicc_link_s, %struct.gsicc_link_s* %84, i32 0, i32 15
  store i32 %conv63, i32* %num_input, align 4, !tbaa !73
  %85 = load %struct.rcm_link_s*, %struct.rcm_link_s** %rcm_link, align 8, !tbaa !1
  %num_out64 = getelementptr inbounds %struct.rcm_link_s, %struct.rcm_link_s* %85, i32 0, i32 0
  %86 = load i8, i8* %num_out64, align 1, !tbaa !63
  %conv65 = zext i8 %86 to i32
  %87 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %result, align 8, !tbaa !1
  %num_output = getelementptr inbounds %struct.gsicc_link_s, %struct.gsicc_link_s* %87, i32 0, i32 16
  store i32 %conv65, i32* %num_output, align 4, !tbaa !74
  %88 = load %struct.rcm_link_s*, %struct.rcm_link_s** %rcm_link, align 8, !tbaa !1
  %89 = bitcast %struct.rcm_link_s* %88 to i8*
  %90 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %result, align 8, !tbaa !1
  %link_handle66 = getelementptr inbounds %struct.gsicc_link_s, %struct.gsicc_link_s* %90, i32 0, i32 0
  store i8* %89, i8** %link_handle66, align 8, !tbaa !59
  %link_hashcode67 = getelementptr inbounds %struct.gsicc_hashlink_s, %struct.gsicc_hashlink_s* %hash, i32 0, i32 0
  %91 = load i64, i64* %link_hashcode67, align 8, !tbaa !33
  %92 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %result, align 8, !tbaa !1
  %hashcode68 = getelementptr inbounds %struct.gsicc_link_s, %struct.gsicc_link_s* %92, i32 0, i32 2
  %link_hashcode69 = getelementptr inbounds %struct.gsicc_hashlink_s, %struct.gsicc_hashlink_s* %hashcode68, i32 0, i32 0
  store i64 %91, i64* %link_hashcode69, align 8, !tbaa !75
  %des_hash70 = getelementptr inbounds %struct.gsicc_hashlink_s, %struct.gsicc_hashlink_s* %hash, i32 0, i32 2
  %93 = load i64, i64* %des_hash70, align 8, !tbaa !31
  %94 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %result, align 8, !tbaa !1
  %hashcode71 = getelementptr inbounds %struct.gsicc_link_s, %struct.gsicc_link_s* %94, i32 0, i32 2
  %des_hash72 = getelementptr inbounds %struct.gsicc_hashlink_s, %struct.gsicc_hashlink_s* %hashcode71, i32 0, i32 2
  store i64 %93, i64* %des_hash72, align 8, !tbaa !76
  %src_hash73 = getelementptr inbounds %struct.gsicc_hashlink_s, %struct.gsicc_hashlink_s* %hash, i32 0, i32 1
  %95 = load i64, i64* %src_hash73, align 8, !tbaa !32
  %96 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %result, align 8, !tbaa !1
  %hashcode74 = getelementptr inbounds %struct.gsicc_link_s, %struct.gsicc_link_s* %96, i32 0, i32 2
  %src_hash75 = getelementptr inbounds %struct.gsicc_hashlink_s, %struct.gsicc_hashlink_s* %hashcode74, i32 0, i32 1
  store i64 %95, i64* %src_hash75, align 8, !tbaa !77
  %rend_hash76 = getelementptr inbounds %struct.gsicc_hashlink_s, %struct.gsicc_hashlink_s* %hash, i32 0, i32 3
  %97 = load i64, i64* %rend_hash76, align 8, !tbaa !28
  %98 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %result, align 8, !tbaa !1
  %hashcode77 = getelementptr inbounds %struct.gsicc_link_s, %struct.gsicc_link_s* %98, i32 0, i32 2
  %rend_hash78 = getelementptr inbounds %struct.gsicc_hashlink_s, %struct.gsicc_hashlink_s* %hashcode77, i32 0, i32 3
  store i64 %97, i64* %rend_hash78, align 8, !tbaa !78
  %99 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %result, align 8, !tbaa !1
  %includes_softproof = getelementptr inbounds %struct.gsicc_link_s, %struct.gsicc_link_s* %99, i32 0, i32 8
  store i32 0, i32* %includes_softproof, align 4, !tbaa !79
  %100 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %result, align 8, !tbaa !1
  %includes_devlink = getelementptr inbounds %struct.gsicc_link_s, %struct.gsicc_link_s* %100, i32 0, i32 9
  store i32 0, i32* %includes_devlink, align 4, !tbaa !80
  %src_hash79 = getelementptr inbounds %struct.gsicc_hashlink_s, %struct.gsicc_hashlink_s* %hash, i32 0, i32 1
  %101 = load i64, i64* %src_hash79, align 8, !tbaa !32
  %des_hash80 = getelementptr inbounds %struct.gsicc_hashlink_s, %struct.gsicc_hashlink_s* %hash, i32 0, i32 2
  %102 = load i64, i64* %des_hash80, align 8, !tbaa !31
  %cmp81 = icmp eq i64 %101, %102
  br i1 %cmp81, label %if.then.83, label %if.else.85

if.then.83:                                       ; preds = %sw.epilog
  %103 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %result, align 8, !tbaa !1
  %is_identity84 = getelementptr inbounds %struct.gsicc_link_s, %struct.gsicc_link_s* %103, i32 0, i32 10
  store i32 1, i32* %is_identity84, align 4, !tbaa !57
  br label %if.end.87

if.else.85:                                       ; preds = %sw.epilog
  %104 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %result, align 8, !tbaa !1
  %is_identity86 = getelementptr inbounds %struct.gsicc_link_s, %struct.gsicc_link_s* %104, i32 0, i32 10
  store i32 0, i32* %is_identity86, align 4, !tbaa !57
  br label %if.end.87

if.end.87:                                        ; preds = %if.else.85, %if.then.83
  %105 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %result, align 8, !tbaa !1
  %valid = getelementptr inbounds %struct.gsicc_link_s, %struct.gsicc_link_s* %105, i32 0, i32 11
  store i32 1, i32* %valid, align 4, !tbaa !81
  %106 = load i32, i32* %pageneutralcolor, align 4, !tbaa !23
  %tobool88 = icmp ne i32 %106, 0
  br i1 %tobool88, label %land.lhs.true, label %if.end.92

land.lhs.true:                                    ; preds = %if.end.87
  %107 = load i32, i32* %data_cs.addr, align 4, !tbaa !5
  %cmp89 = icmp ne i32 %107, 1
  br i1 %cmp89, label %if.then.91, label %if.end.92

if.then.91:                                       ; preds = %land.lhs.true
  %108 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %result, align 8, !tbaa !1
  call void @gsicc_mcm_set_link(%struct.gsicc_link_s* %108) #3
  br label %if.end.92

if.end.92:                                        ; preds = %if.then.91, %land.lhs.true, %if.end.87
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.92
  %109 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %result, align 8, !tbaa !1
  %num_waiting = getelementptr inbounds %struct.gsicc_link_s, %struct.gsicc_link_s* %109, i32 0, i32 7
  %110 = load i32, i32* %num_waiting, align 4, !tbaa !82
  %cmp93 = icmp sgt i32 %110, 0
  br i1 %cmp93, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %111 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %result, align 8, !tbaa !1
  %wait = getelementptr inbounds %struct.gsicc_link_s, %struct.gsicc_link_s* %111, i32 0, i32 6
  %112 = load %struct.gx_semaphore_s*, %struct.gx_semaphore_s** %wait, align 8, !tbaa !83
  %native95 = getelementptr inbounds %struct.gx_semaphore_s, %struct.gx_semaphore_s* %112, i32 0, i32 1
  %call96 = call i32 @gp_semaphore_signal(%union.gp_semaphore* %native95) #3
  %113 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %result, align 8, !tbaa !1
  %num_waiting97 = getelementptr inbounds %struct.gsicc_link_s, %struct.gsicc_link_s* %113, i32 0, i32 7
  %114 = load i32, i32* %num_waiting97, align 4, !tbaa !82
  %dec = add nsw i32 %114, -1
  store i32 %dec, i32* %num_waiting97, align 4, !tbaa !82
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %115 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %icc_link_cache98 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %115, i32 0, i32 36
  %116 = load %struct.gsicc_link_cache_s*, %struct.gsicc_link_cache_s** %icc_link_cache98, align 8, !tbaa !34
  %lock99 = getelementptr inbounds %struct.gsicc_link_cache_s, %struct.gsicc_link_cache_s* %116, i32 0, i32 4
  %117 = load %struct.gx_monitor_s*, %struct.gx_monitor_s** %lock99, align 8, !tbaa !48
  %native100 = getelementptr inbounds %struct.gx_monitor_s, %struct.gx_monitor_s* %117, i32 0, i32 1
  %call101 = call i32 @gp_monitor_leave(%union.gp_monitor* %native100) #3
  %118 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %result, align 8, !tbaa !1
  store %struct.gsicc_link_s* %118, %struct.gsicc_link_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %while.end, %sw.default, %if.then.40, %if.then.29, %if.then.25, %if.then.20
  %119 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %119) #1
  %120 = bitcast %struct.cmm_dev_profile_s** %dev_profile to i8*
  call void @llvm.lifetime.end(i64 8, i8* %120) #1
  %121 = bitcast i32* %pageneutralcolor to i8*
  call void @llvm.lifetime.end(i64 4, i8* %121) #1
  %122 = bitcast %struct.gx_cm_color_map_procs_s** %cm_procs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %122) #1
  %123 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %123) #1
  %124 = bitcast %struct.rcm_link_s** %rcm_link to i8*
  call void @llvm.lifetime.end(i64 8, i8* %124) #1
  %125 = bitcast %struct.gsicc_hashlink_s* %hash to i8*
  call void @llvm.lifetime.end(i64 32, i8* %125) #1
  %126 = bitcast %struct.gsicc_link_s** %result to i8*
  call void @llvm.lifetime.end(i64 8, i8* %126) #1
  %127 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %retval
  ret %struct.gsicc_link_s* %127
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

declare i32 @fwd_uses_fwd_cmap_procs(%struct.gx_device_s*) #2

declare %struct.gx_cm_color_map_procs_s* @fwd_get_target_cmap_procs(%struct.gx_device_s*) #2

declare %struct.gsicc_link_s* @gsicc_findcachelink(%struct.gsicc_hashlink_s* byval align 8, %struct.gsicc_link_cache_s*, i32, i32) #2

declare i32 @gsicc_alloc_link_entry(%struct.gsicc_link_cache_s*, %struct.gsicc_link_s**, %struct.gsicc_hashlink_s* byval align 8, i32, i32) #2

declare i32 @gp_monitor_enter(%union.gp_monitor*) #2

; Function Attrs: nounwind uwtable
define internal void @gsicc_rcm_transform_color_buffer(%struct.gx_device_s* %dev, %struct.gsicc_link_s* %icclink, %struct.gsicc_bufferdesc_s* %input_buff_desc, %struct.gsicc_bufferdesc_s* %output_buff_desc, i8* %inputbuffer, i8* %outputbuffer) #0 {
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
  %1 = load i32, i32* %is_planar, align 4, !tbaa !84
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.else.4

if.then:                                          ; preds = %entry
  %2 = load %struct.gsicc_bufferdesc_s*, %struct.gsicc_bufferdesc_s** %output_buff_desc.addr, align 8, !tbaa !1
  %is_planar1 = getelementptr inbounds %struct.gsicc_bufferdesc_s, %struct.gsicc_bufferdesc_s* %2, i32 0, i32 5
  %3 = load i32, i32* %is_planar1, align 4, !tbaa !84
  %tobool2 = icmp ne i32 %3, 0
  br i1 %tobool2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.then
  %4 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %5 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %icclink.addr, align 8, !tbaa !1
  %6 = load %struct.gsicc_bufferdesc_s*, %struct.gsicc_bufferdesc_s** %input_buff_desc.addr, align 8, !tbaa !1
  %7 = load %struct.gsicc_bufferdesc_s*, %struct.gsicc_bufferdesc_s** %output_buff_desc.addr, align 8, !tbaa !1
  %8 = load i8*, i8** %inputbuffer.addr, align 8, !tbaa !1
  %9 = load i8*, i8** %outputbuffer.addr, align 8, !tbaa !1
  call void @gsicc_rcm_planar_to_planar(%struct.gx_device_s* %4, %struct.gsicc_link_s* %5, %struct.gsicc_bufferdesc_s* %6, %struct.gsicc_bufferdesc_s* %7, i8* %8, i8* %9) #3
  br label %if.end

if.else:                                          ; preds = %if.then
  %10 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %11 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %icclink.addr, align 8, !tbaa !1
  %12 = load %struct.gsicc_bufferdesc_s*, %struct.gsicc_bufferdesc_s** %input_buff_desc.addr, align 8, !tbaa !1
  %13 = load %struct.gsicc_bufferdesc_s*, %struct.gsicc_bufferdesc_s** %output_buff_desc.addr, align 8, !tbaa !1
  %14 = load i8*, i8** %inputbuffer.addr, align 8, !tbaa !1
  %15 = load i8*, i8** %outputbuffer.addr, align 8, !tbaa !1
  call void @gsicc_rcm_planar_to_chunky(%struct.gx_device_s* %10, %struct.gsicc_link_s* %11, %struct.gsicc_bufferdesc_s* %12, %struct.gsicc_bufferdesc_s* %13, i8* %14, i8* %15) #3
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.3
  br label %if.end.10

if.else.4:                                        ; preds = %entry
  %16 = load %struct.gsicc_bufferdesc_s*, %struct.gsicc_bufferdesc_s** %output_buff_desc.addr, align 8, !tbaa !1
  %is_planar5 = getelementptr inbounds %struct.gsicc_bufferdesc_s, %struct.gsicc_bufferdesc_s* %16, i32 0, i32 5
  %17 = load i32, i32* %is_planar5, align 4, !tbaa !84
  %tobool6 = icmp ne i32 %17, 0
  br i1 %tobool6, label %if.then.7, label %if.else.8

if.then.7:                                        ; preds = %if.else.4
  %18 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %19 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %icclink.addr, align 8, !tbaa !1
  %20 = load %struct.gsicc_bufferdesc_s*, %struct.gsicc_bufferdesc_s** %input_buff_desc.addr, align 8, !tbaa !1
  %21 = load %struct.gsicc_bufferdesc_s*, %struct.gsicc_bufferdesc_s** %output_buff_desc.addr, align 8, !tbaa !1
  %22 = load i8*, i8** %inputbuffer.addr, align 8, !tbaa !1
  %23 = load i8*, i8** %outputbuffer.addr, align 8, !tbaa !1
  call void @gsicc_rcm_chunky_to_planar(%struct.gx_device_s* %18, %struct.gsicc_link_s* %19, %struct.gsicc_bufferdesc_s* %20, %struct.gsicc_bufferdesc_s* %21, i8* %22, i8* %23) #3
  br label %if.end.9

if.else.8:                                        ; preds = %if.else.4
  %24 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %25 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %icclink.addr, align 8, !tbaa !1
  %26 = load %struct.gsicc_bufferdesc_s*, %struct.gsicc_bufferdesc_s** %input_buff_desc.addr, align 8, !tbaa !1
  %27 = load %struct.gsicc_bufferdesc_s*, %struct.gsicc_bufferdesc_s** %output_buff_desc.addr, align 8, !tbaa !1
  %28 = load i8*, i8** %inputbuffer.addr, align 8, !tbaa !1
  %29 = load i8*, i8** %outputbuffer.addr, align 8, !tbaa !1
  call void @gsicc_rcm_chunky_to_chunky(%struct.gx_device_s* %24, %struct.gsicc_link_s* %25, %struct.gsicc_bufferdesc_s* %26, %struct.gsicc_bufferdesc_s* %27, i8* %28, i8* %29) #3
  br label %if.end.9

if.end.9:                                         ; preds = %if.else.8, %if.then.7
  br label %if.end.10

if.end.10:                                        ; preds = %if.end.9, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gsicc_rcm_transform_color(%struct.gx_device_s* %dev, %struct.gsicc_link_s* %icclink, i8* %inputcolor, i8* %outputcolor, i32 %num_bytes) #0 {
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
  store i32 %num_bytes, i32* %num_bytes.addr, align 4, !tbaa !23
  %0 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %1 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %icclink.addr, align 8, !tbaa !1
  %2 = load i8*, i8** %inputcolor.addr, align 8, !tbaa !1
  %3 = load i8*, i8** %outputcolor.addr, align 8, !tbaa !1
  %4 = load i32, i32* %num_bytes.addr, align 4, !tbaa !23
  %5 = load i32, i32* %num_bytes.addr, align 4, !tbaa !23
  call void @gsicc_rcm_transform_general(%struct.gx_device_s* %0, %struct.gsicc_link_s* %1, i8* %2, i8* %3, i32 %4, i32 %5) #3
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gsicc_rcm_freelink(%struct.gsicc_link_s* %icclink) #0 {
entry:
  %icclink.addr = alloca %struct.gsicc_link_s*, align 8
  %rcm_link = alloca %struct.rcm_link_s*, align 8
  store %struct.gsicc_link_s* %icclink, %struct.gsicc_link_s** %icclink.addr, align 8, !tbaa !1
  %0 = bitcast %struct.rcm_link_s** %rcm_link to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %icclink.addr, align 8, !tbaa !1
  %link_handle = getelementptr inbounds %struct.gsicc_link_s, %struct.gsicc_link_s* %1, i32 0, i32 0
  %2 = load i8*, i8** %link_handle, align 8, !tbaa !59
  %3 = bitcast i8* %2 to %struct.rcm_link_s*
  store %struct.rcm_link_s* %3, %struct.rcm_link_s** %rcm_link, align 8, !tbaa !1
  %4 = load %struct.rcm_link_s*, %struct.rcm_link_s** %rcm_link, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.rcm_link_s, %struct.rcm_link_s* %4, i32 0, i32 3
  %5 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !60
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %5, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %6 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !86
  %7 = load %struct.rcm_link_s*, %struct.rcm_link_s** %rcm_link, align 8, !tbaa !1
  %memory1 = getelementptr inbounds %struct.rcm_link_s, %struct.rcm_link_s* %7, i32 0, i32 3
  %8 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory1, align 8, !tbaa !60
  %9 = load %struct.rcm_link_s*, %struct.rcm_link_s** %rcm_link, align 8, !tbaa !1
  %10 = bitcast %struct.rcm_link_s* %9 to i8*
  call void %6(%struct.gs_memory_s* %8, i8* %10, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i32 0, i32 0)) #3
  %11 = bitcast %struct.rcm_link_s** %rcm_link to i8*
  call void @llvm.lifetime.end(i64 8, i8* %11) #1
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

declare void @gsicc_mcm_set_link(%struct.gsicc_link_s*) #2

declare i32 @gp_semaphore_signal(%union.gp_semaphore*) #2

declare i32 @gp_monitor_leave(%union.gp_monitor*) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define internal void @gsicc_rcm_planar_to_planar(%struct.gx_device_s* %dev, %struct.gsicc_link_s* %icclink, %struct.gsicc_bufferdesc_s* %input_buff_desc, %struct.gsicc_bufferdesc_s* %output_buff_desc, i8* %inputbuffer, i8* %outputbuffer) #0 {
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
  store i32 0, i32* %k, align 4, !tbaa !23
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %10 = load i32, i32* %k, align 4, !tbaa !23
  %11 = load %struct.gsicc_bufferdesc_s*, %struct.gsicc_bufferdesc_s** %input_buff_desc.addr, align 8, !tbaa !1
  %num_chan = getelementptr inbounds %struct.gsicc_bufferdesc_s, %struct.gsicc_bufferdesc_s* %11, i32 0, i32 0
  %12 = load i8, i8* %num_chan, align 1, !tbaa !87
  %conv = zext i8 %12 to i32
  %cmp = icmp slt i32 %10, %conv
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load i8*, i8** %in_buffer_ptr, align 8, !tbaa !1
  %14 = load i32, i32* %k, align 4, !tbaa !23
  %15 = load %struct.gsicc_bufferdesc_s*, %struct.gsicc_bufferdesc_s** %input_buff_desc.addr, align 8, !tbaa !1
  %plane_stride = getelementptr inbounds %struct.gsicc_bufferdesc_s, %struct.gsicc_bufferdesc_s* %15, i32 0, i32 6
  %16 = load i32, i32* %plane_stride, align 4, !tbaa !88
  %mul = mul nsw i32 %14, %16
  %idx.ext = sext i32 %mul to i64
  %add.ptr = getelementptr inbounds i8, i8* %13, i64 %idx.ext
  %17 = load i32, i32* %k, align 4, !tbaa !23
  %idxprom = sext i32 %17 to i64
  %arrayidx = getelementptr inbounds [4 x i8*], [4 x i8*]* %inputpos, i32 0, i64 %idxprom
  store i8* %add.ptr, i8** %arrayidx, align 8, !tbaa !1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %18 = load i32, i32* %k, align 4, !tbaa !23
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %k, align 4, !tbaa !23
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %k, align 4, !tbaa !23
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc.14, %for.end
  %19 = load i32, i32* %k, align 4, !tbaa !23
  %20 = load %struct.gsicc_bufferdesc_s*, %struct.gsicc_bufferdesc_s** %output_buff_desc.addr, align 8, !tbaa !1
  %num_chan3 = getelementptr inbounds %struct.gsicc_bufferdesc_s, %struct.gsicc_bufferdesc_s* %20, i32 0, i32 0
  %21 = load i8, i8* %num_chan3, align 1, !tbaa !87
  %conv4 = zext i8 %21 to i32
  %cmp5 = icmp slt i32 %19, %conv4
  br i1 %cmp5, label %for.body.7, label %for.end.16

for.body.7:                                       ; preds = %for.cond.2
  %22 = load i8*, i8** %out_buffer_ptr, align 8, !tbaa !1
  %23 = load i32, i32* %k, align 4, !tbaa !23
  %24 = load %struct.gsicc_bufferdesc_s*, %struct.gsicc_bufferdesc_s** %input_buff_desc.addr, align 8, !tbaa !1
  %plane_stride8 = getelementptr inbounds %struct.gsicc_bufferdesc_s, %struct.gsicc_bufferdesc_s* %24, i32 0, i32 6
  %25 = load i32, i32* %plane_stride8, align 4, !tbaa !88
  %mul9 = mul nsw i32 %23, %25
  %idx.ext10 = sext i32 %mul9 to i64
  %add.ptr11 = getelementptr inbounds i8, i8* %22, i64 %idx.ext10
  %26 = load i32, i32* %k, align 4, !tbaa !23
  %idxprom12 = sext i32 %26 to i64
  %arrayidx13 = getelementptr inbounds [4 x i8*], [4 x i8*]* %outputpos, i32 0, i64 %idxprom12
  store i8* %add.ptr11, i8** %arrayidx13, align 8, !tbaa !1
  br label %for.inc.14

for.inc.14:                                       ; preds = %for.body.7
  %27 = load i32, i32* %k, align 4, !tbaa !23
  %inc15 = add nsw i32 %27, 1
  store i32 %inc15, i32* %k, align 4, !tbaa !23
  br label %for.cond.2

for.end.16:                                       ; preds = %for.cond.2
  store i32 0, i32* %k, align 4, !tbaa !23
  br label %for.cond.17

for.cond.17:                                      ; preds = %for.inc.61, %for.end.16
  %28 = load i32, i32* %k, align 4, !tbaa !23
  %29 = load %struct.gsicc_bufferdesc_s*, %struct.gsicc_bufferdesc_s** %input_buff_desc.addr, align 8, !tbaa !1
  %plane_stride18 = getelementptr inbounds %struct.gsicc_bufferdesc_s, %struct.gsicc_bufferdesc_s* %29, i32 0, i32 6
  %30 = load i32, i32* %plane_stride18, align 4, !tbaa !88
  %cmp19 = icmp slt i32 %28, %30
  br i1 %cmp19, label %for.body.21, label %for.end.63

for.body.21:                                      ; preds = %for.cond.17
  store i32 0, i32* %j, align 4, !tbaa !23
  br label %for.cond.22

for.cond.22:                                      ; preds = %for.inc.37, %for.body.21
  %31 = load i32, i32* %j, align 4, !tbaa !23
  %32 = load %struct.gsicc_bufferdesc_s*, %struct.gsicc_bufferdesc_s** %input_buff_desc.addr, align 8, !tbaa !1
  %num_chan23 = getelementptr inbounds %struct.gsicc_bufferdesc_s, %struct.gsicc_bufferdesc_s* %32, i32 0, i32 0
  %33 = load i8, i8* %num_chan23, align 1, !tbaa !87
  %conv24 = zext i8 %33 to i32
  %cmp25 = icmp slt i32 %31, %conv24
  br i1 %cmp25, label %for.body.27, label %for.end.39

for.body.27:                                      ; preds = %for.cond.22
  %34 = load i32, i32* %j, align 4, !tbaa !23
  %idxprom28 = sext i32 %34 to i64
  %arrayidx29 = getelementptr inbounds [4 x i8*], [4 x i8*]* %inputpos, i32 0, i64 %idxprom28
  %35 = load i8*, i8** %arrayidx29, align 8, !tbaa !1
  %36 = load i8, i8* %35, align 1, !tbaa !5
  %37 = load i32, i32* %j, align 4, !tbaa !23
  %idxprom30 = sext i32 %37 to i64
  %arrayidx31 = getelementptr inbounds [4 x i8], [4 x i8]* %in_color, i32 0, i64 %idxprom30
  store i8 %36, i8* %arrayidx31, align 1, !tbaa !5
  %38 = load %struct.gsicc_bufferdesc_s*, %struct.gsicc_bufferdesc_s** %input_buff_desc.addr, align 8, !tbaa !1
  %bytes_per_chan = getelementptr inbounds %struct.gsicc_bufferdesc_s, %struct.gsicc_bufferdesc_s* %38, i32 0, i32 1
  %39 = load i8, i8* %bytes_per_chan, align 1, !tbaa !89
  %conv32 = zext i8 %39 to i32
  %40 = load i32, i32* %j, align 4, !tbaa !23
  %idxprom33 = sext i32 %40 to i64
  %arrayidx34 = getelementptr inbounds [4 x i8*], [4 x i8*]* %inputpos, i32 0, i64 %idxprom33
  %41 = load i8*, i8** %arrayidx34, align 8, !tbaa !1
  %idx.ext35 = sext i32 %conv32 to i64
  %add.ptr36 = getelementptr inbounds i8, i8* %41, i64 %idx.ext35
  store i8* %add.ptr36, i8** %arrayidx34, align 8, !tbaa !1
  br label %for.inc.37

for.inc.37:                                       ; preds = %for.body.27
  %42 = load i32, i32* %j, align 4, !tbaa !23
  %inc38 = add nsw i32 %42, 1
  store i32 %inc38, i32* %j, align 4, !tbaa !23
  br label %for.cond.22

for.end.39:                                       ; preds = %for.cond.22
  %43 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %44 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %icclink.addr, align 8, !tbaa !1
  %arrayidx40 = getelementptr inbounds [4 x i8], [4 x i8]* %in_color, i32 0, i64 0
  %arrayidx41 = getelementptr inbounds [4 x i8], [4 x i8]* %out_color, i32 0, i64 0
  call void @gsicc_rcm_transform_general(%struct.gx_device_s* %43, %struct.gsicc_link_s* %44, i8* %arrayidx40, i8* %arrayidx41, i32 1, i32 1) #3
  store i32 0, i32* %j, align 4, !tbaa !23
  br label %for.cond.42

for.cond.42:                                      ; preds = %for.inc.58, %for.end.39
  %45 = load i32, i32* %j, align 4, !tbaa !23
  %46 = load %struct.gsicc_bufferdesc_s*, %struct.gsicc_bufferdesc_s** %output_buff_desc.addr, align 8, !tbaa !1
  %num_chan43 = getelementptr inbounds %struct.gsicc_bufferdesc_s, %struct.gsicc_bufferdesc_s* %46, i32 0, i32 0
  %47 = load i8, i8* %num_chan43, align 1, !tbaa !87
  %conv44 = zext i8 %47 to i32
  %cmp45 = icmp slt i32 %45, %conv44
  br i1 %cmp45, label %for.body.47, label %for.end.60

for.body.47:                                      ; preds = %for.cond.42
  %48 = load i32, i32* %j, align 4, !tbaa !23
  %idxprom48 = sext i32 %48 to i64
  %arrayidx49 = getelementptr inbounds [4 x i8], [4 x i8]* %out_color, i32 0, i64 %idxprom48
  %49 = load i8, i8* %arrayidx49, align 1, !tbaa !5
  %50 = load i32, i32* %j, align 4, !tbaa !23
  %idxprom50 = sext i32 %50 to i64
  %arrayidx51 = getelementptr inbounds [4 x i8*], [4 x i8*]* %outputpos, i32 0, i64 %idxprom50
  %51 = load i8*, i8** %arrayidx51, align 8, !tbaa !1
  store i8 %49, i8* %51, align 1, !tbaa !5
  %52 = load %struct.gsicc_bufferdesc_s*, %struct.gsicc_bufferdesc_s** %output_buff_desc.addr, align 8, !tbaa !1
  %bytes_per_chan52 = getelementptr inbounds %struct.gsicc_bufferdesc_s, %struct.gsicc_bufferdesc_s* %52, i32 0, i32 1
  %53 = load i8, i8* %bytes_per_chan52, align 1, !tbaa !89
  %conv53 = zext i8 %53 to i32
  %54 = load i32, i32* %j, align 4, !tbaa !23
  %idxprom54 = sext i32 %54 to i64
  %arrayidx55 = getelementptr inbounds [4 x i8*], [4 x i8*]* %outputpos, i32 0, i64 %idxprom54
  %55 = load i8*, i8** %arrayidx55, align 8, !tbaa !1
  %idx.ext56 = sext i32 %conv53 to i64
  %add.ptr57 = getelementptr inbounds i8, i8* %55, i64 %idx.ext56
  store i8* %add.ptr57, i8** %arrayidx55, align 8, !tbaa !1
  br label %for.inc.58

for.inc.58:                                       ; preds = %for.body.47
  %56 = load i32, i32* %j, align 4, !tbaa !23
  %inc59 = add nsw i32 %56, 1
  store i32 %inc59, i32* %j, align 4, !tbaa !23
  br label %for.cond.42

for.end.60:                                       ; preds = %for.cond.42
  br label %for.inc.61

for.inc.61:                                       ; preds = %for.end.60
  %57 = load i32, i32* %k, align 4, !tbaa !23
  %inc62 = add nsw i32 %57, 1
  store i32 %inc62, i32* %k, align 4, !tbaa !23
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
define internal void @gsicc_rcm_planar_to_chunky(%struct.gx_device_s* %dev, %struct.gsicc_link_s* %icclink, %struct.gsicc_bufferdesc_s* %input_buff_desc, %struct.gsicc_bufferdesc_s* %output_buff_desc, i8* %inputbuffer, i8* %outputbuffer) #0 {
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
define internal void @gsicc_rcm_chunky_to_planar(%struct.gx_device_s* %dev, %struct.gsicc_link_s* %icclink, %struct.gsicc_bufferdesc_s* %input_buff_desc, %struct.gsicc_bufferdesc_s* %output_buff_desc, i8* %inputbuffer, i8* %outputbuffer) #0 {
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
  %14 = load i8, i8* %bytes_per_chan, align 1, !tbaa !89
  %conv = zext i8 %14 to i32
  store i32 %conv, i32* %num_bytes_in, align 4, !tbaa !23
  %15 = bitcast i32* %num_bytes_out to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  %16 = load %struct.gsicc_bufferdesc_s*, %struct.gsicc_bufferdesc_s** %output_buff_desc.addr, align 8, !tbaa !1
  %bytes_per_chan1 = getelementptr inbounds %struct.gsicc_bufferdesc_s, %struct.gsicc_bufferdesc_s* %16, i32 0, i32 1
  %17 = load i8, i8* %bytes_per_chan1, align 1, !tbaa !89
  %conv2 = zext i8 %17 to i32
  store i32 %conv2, i32* %num_bytes_out, align 4, !tbaa !23
  %18 = bitcast i32* %pixel_in_step to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #1
  %19 = load i32, i32* %num_bytes_in, align 4, !tbaa !23
  %20 = load %struct.gsicc_bufferdesc_s*, %struct.gsicc_bufferdesc_s** %input_buff_desc.addr, align 8, !tbaa !1
  %num_chan = getelementptr inbounds %struct.gsicc_bufferdesc_s, %struct.gsicc_bufferdesc_s* %20, i32 0, i32 0
  %21 = load i8, i8* %num_chan, align 1, !tbaa !87
  %conv3 = zext i8 %21 to i32
  %mul = mul nsw i32 %19, %conv3
  store i32 %mul, i32* %pixel_in_step, align 4, !tbaa !23
  %22 = bitcast i32* %plane_stride to i8*
  call void @llvm.lifetime.start(i64 4, i8* %22) #1
  %23 = load %struct.gsicc_bufferdesc_s*, %struct.gsicc_bufferdesc_s** %output_buff_desc.addr, align 8, !tbaa !1
  %plane_stride4 = getelementptr inbounds %struct.gsicc_bufferdesc_s, %struct.gsicc_bufferdesc_s* %23, i32 0, i32 6
  %24 = load i32, i32* %plane_stride4, align 4, !tbaa !88
  store i32 %24, i32* %plane_stride, align 4, !tbaa !23
  store i32 0, i32* %k, align 4, !tbaa !23
  br label %for.cond

for.cond:                                         ; preds = %for.inc.68, %entry
  %25 = load i32, i32* %k, align 4, !tbaa !23
  %26 = load %struct.gsicc_bufferdesc_s*, %struct.gsicc_bufferdesc_s** %input_buff_desc.addr, align 8, !tbaa !1
  %num_rows = getelementptr inbounds %struct.gsicc_bufferdesc_s, %struct.gsicc_bufferdesc_s* %26, i32 0, i32 8
  %27 = load i32, i32* %num_rows, align 4, !tbaa !90
  %cmp = icmp slt i32 %25, %27
  br i1 %cmp, label %for.body, label %for.end.70

for.body:                                         ; preds = %for.cond
  %28 = load i8*, i8** %inputpos, align 8, !tbaa !1
  store i8* %28, i8** %inputcolor, align 8, !tbaa !1
  %29 = load i8*, i8** %outputpos, align 8, !tbaa !1
  store i8* %29, i8** %output_loc, align 8, !tbaa !1
  %30 = load %struct.gsicc_bufferdesc_s*, %struct.gsicc_bufferdesc_s** %output_buff_desc.addr, align 8, !tbaa !1
  %bytes_per_chan6 = getelementptr inbounds %struct.gsicc_bufferdesc_s, %struct.gsicc_bufferdesc_s* %30, i32 0, i32 1
  %31 = load i8, i8* %bytes_per_chan6, align 1, !tbaa !89
  %conv7 = zext i8 %31 to i32
  %cmp8 = icmp eq i32 %conv7, 1
  br i1 %cmp8, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  store i32 0, i32* %j, align 4, !tbaa !23
  br label %for.cond.10

for.cond.10:                                      ; preds = %for.inc.26, %if.then
  %32 = load i32, i32* %j, align 4, !tbaa !23
  %33 = load %struct.gsicc_bufferdesc_s*, %struct.gsicc_bufferdesc_s** %input_buff_desc.addr, align 8, !tbaa !1
  %pixels_per_row = getelementptr inbounds %struct.gsicc_bufferdesc_s, %struct.gsicc_bufferdesc_s* %33, i32 0, i32 9
  %34 = load i32, i32* %pixels_per_row, align 4, !tbaa !91
  %cmp11 = icmp slt i32 %32, %34
  br i1 %cmp11, label %for.body.13, label %for.end.28

for.body.13:                                      ; preds = %for.cond.10
  %35 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %36 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %icclink.addr, align 8, !tbaa !1
  %37 = load i8*, i8** %inputcolor, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds [8 x i8], [8 x i8]* %outputcolor, i32 0, i64 0
  %38 = load i32, i32* %num_bytes_in, align 4, !tbaa !23
  %39 = load i32, i32* %num_bytes_out, align 4, !tbaa !23
  call void @gsicc_rcm_transform_general(%struct.gx_device_s* %35, %struct.gsicc_link_s* %36, i8* %37, i8* %arrayidx, i32 %38, i32 %39) #3
  store i32 0, i32* %m, align 4, !tbaa !23
  br label %for.cond.14

for.cond.14:                                      ; preds = %for.inc, %for.body.13
  %40 = load i32, i32* %m, align 4, !tbaa !23
  %41 = load %struct.gsicc_bufferdesc_s*, %struct.gsicc_bufferdesc_s** %output_buff_desc.addr, align 8, !tbaa !1
  %num_chan15 = getelementptr inbounds %struct.gsicc_bufferdesc_s, %struct.gsicc_bufferdesc_s* %41, i32 0, i32 0
  %42 = load i8, i8* %num_chan15, align 1, !tbaa !87
  %conv16 = zext i8 %42 to i32
  %cmp17 = icmp slt i32 %40, %conv16
  br i1 %cmp17, label %for.body.19, label %for.end

for.body.19:                                      ; preds = %for.cond.14
  %43 = load i32, i32* %m, align 4, !tbaa !23
  %idxprom = sext i32 %43 to i64
  %arrayidx20 = getelementptr inbounds [8 x i8], [8 x i8]* %outputcolor, i32 0, i64 %idxprom
  %44 = load i8, i8* %arrayidx20, align 1, !tbaa !5
  %45 = load i8*, i8** %output_loc, align 8, !tbaa !1
  %46 = load i32, i32* %m, align 4, !tbaa !23
  %47 = load i32, i32* %plane_stride, align 4, !tbaa !23
  %mul21 = mul nsw i32 %46, %47
  %idx.ext = sext i32 %mul21 to i64
  %add.ptr = getelementptr inbounds i8, i8* %45, i64 %idx.ext
  %48 = load i32, i32* %j, align 4, !tbaa !23
  %idx.ext22 = sext i32 %48 to i64
  %add.ptr23 = getelementptr inbounds i8, i8* %add.ptr, i64 %idx.ext22
  store i8 %44, i8* %add.ptr23, align 1, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.body.19
  %49 = load i32, i32* %m, align 4, !tbaa !23
  %inc = add nsw i32 %49, 1
  store i32 %inc, i32* %m, align 4, !tbaa !23
  br label %for.cond.14

for.end:                                          ; preds = %for.cond.14
  %50 = load i32, i32* %pixel_in_step, align 4, !tbaa !23
  %51 = load i8*, i8** %inputcolor, align 8, !tbaa !1
  %idx.ext24 = sext i32 %50 to i64
  %add.ptr25 = getelementptr inbounds i8, i8* %51, i64 %idx.ext24
  store i8* %add.ptr25, i8** %inputcolor, align 8, !tbaa !1
  br label %for.inc.26

for.inc.26:                                       ; preds = %for.end
  %52 = load i32, i32* %j, align 4, !tbaa !23
  %inc27 = add nsw i32 %52, 1
  store i32 %inc27, i32* %j, align 4, !tbaa !23
  br label %for.cond.10

for.end.28:                                       ; preds = %for.cond.10
  %53 = load %struct.gsicc_bufferdesc_s*, %struct.gsicc_bufferdesc_s** %input_buff_desc.addr, align 8, !tbaa !1
  %row_stride = getelementptr inbounds %struct.gsicc_bufferdesc_s, %struct.gsicc_bufferdesc_s* %53, i32 0, i32 7
  %54 = load i32, i32* %row_stride, align 4, !tbaa !92
  %55 = load i8*, i8** %inputpos, align 8, !tbaa !1
  %idx.ext29 = sext i32 %54 to i64
  %add.ptr30 = getelementptr inbounds i8, i8* %55, i64 %idx.ext29
  store i8* %add.ptr30, i8** %inputpos, align 8, !tbaa !1
  %56 = load %struct.gsicc_bufferdesc_s*, %struct.gsicc_bufferdesc_s** %output_buff_desc.addr, align 8, !tbaa !1
  %row_stride31 = getelementptr inbounds %struct.gsicc_bufferdesc_s, %struct.gsicc_bufferdesc_s* %56, i32 0, i32 7
  %57 = load i32, i32* %row_stride31, align 4, !tbaa !92
  %58 = load i8*, i8** %outputpos, align 8, !tbaa !1
  %idx.ext32 = sext i32 %57 to i64
  %add.ptr33 = getelementptr inbounds i8, i8* %58, i64 %idx.ext32
  store i8* %add.ptr33, i8** %outputpos, align 8, !tbaa !1
  br label %if.end

if.else:                                          ; preds = %for.body
  store i32 0, i32* %j, align 4, !tbaa !23
  br label %for.cond.34

for.cond.34:                                      ; preds = %for.inc.59, %if.else
  %59 = load i32, i32* %j, align 4, !tbaa !23
  %60 = load %struct.gsicc_bufferdesc_s*, %struct.gsicc_bufferdesc_s** %input_buff_desc.addr, align 8, !tbaa !1
  %pixels_per_row35 = getelementptr inbounds %struct.gsicc_bufferdesc_s, %struct.gsicc_bufferdesc_s* %60, i32 0, i32 9
  %61 = load i32, i32* %pixels_per_row35, align 4, !tbaa !91
  %cmp36 = icmp slt i32 %59, %61
  br i1 %cmp36, label %for.body.38, label %for.end.61

for.body.38:                                      ; preds = %for.cond.34
  %62 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %63 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %icclink.addr, align 8, !tbaa !1
  %64 = load i8*, i8** %inputcolor, align 8, !tbaa !1
  %arrayidx39 = getelementptr inbounds [8 x i8], [8 x i8]* %outputcolor, i32 0, i64 0
  %65 = load i32, i32* %num_bytes_in, align 4, !tbaa !23
  %66 = load i32, i32* %num_bytes_out, align 4, !tbaa !23
  call void @gsicc_rcm_transform_general(%struct.gx_device_s* %62, %struct.gsicc_link_s* %63, i8* %64, i8* %arrayidx39, i32 %65, i32 %66) #3
  %arrayidx40 = getelementptr inbounds [8 x i8], [8 x i8]* %outputcolor, i32 0, i64 0
  %67 = bitcast i8* %arrayidx40 to i16*
  store i16* %67, i16** %pos_in_short, align 8, !tbaa !1
  %68 = load i8*, i8** %output_loc, align 8, !tbaa !1
  %69 = bitcast i8* %68 to i16*
  store i16* %69, i16** %pos_out_short, align 8, !tbaa !1
  store i32 0, i32* %m, align 4, !tbaa !23
  br label %for.cond.41

for.cond.41:                                      ; preds = %for.inc.54, %for.body.38
  %70 = load i32, i32* %m, align 4, !tbaa !23
  %71 = load %struct.gsicc_bufferdesc_s*, %struct.gsicc_bufferdesc_s** %output_buff_desc.addr, align 8, !tbaa !1
  %num_chan42 = getelementptr inbounds %struct.gsicc_bufferdesc_s, %struct.gsicc_bufferdesc_s* %71, i32 0, i32 0
  %72 = load i8, i8* %num_chan42, align 1, !tbaa !87
  %conv43 = zext i8 %72 to i32
  %cmp44 = icmp slt i32 %70, %conv43
  br i1 %cmp44, label %for.body.46, label %for.end.56

for.body.46:                                      ; preds = %for.cond.41
  %73 = load i32, i32* %m, align 4, !tbaa !23
  %idxprom47 = sext i32 %73 to i64
  %74 = load i16*, i16** %pos_in_short, align 8, !tbaa !1
  %arrayidx48 = getelementptr inbounds i16, i16* %74, i64 %idxprom47
  %75 = load i16, i16* %arrayidx48, align 2, !tbaa !93
  %76 = load i16*, i16** %pos_out_short, align 8, !tbaa !1
  %77 = load i32, i32* %m, align 4, !tbaa !23
  %78 = load i32, i32* %plane_stride, align 4, !tbaa !23
  %mul49 = mul nsw i32 %77, %78
  %idx.ext50 = sext i32 %mul49 to i64
  %add.ptr51 = getelementptr inbounds i16, i16* %76, i64 %idx.ext50
  %79 = load i32, i32* %j, align 4, !tbaa !23
  %idx.ext52 = sext i32 %79 to i64
  %add.ptr53 = getelementptr inbounds i16, i16* %add.ptr51, i64 %idx.ext52
  store i16 %75, i16* %add.ptr53, align 2, !tbaa !93
  br label %for.inc.54

for.inc.54:                                       ; preds = %for.body.46
  %80 = load i32, i32* %m, align 4, !tbaa !23
  %inc55 = add nsw i32 %80, 1
  store i32 %inc55, i32* %m, align 4, !tbaa !23
  br label %for.cond.41

for.end.56:                                       ; preds = %for.cond.41
  %81 = load i32, i32* %pixel_in_step, align 4, !tbaa !23
  %82 = load i8*, i8** %inputcolor, align 8, !tbaa !1
  %idx.ext57 = sext i32 %81 to i64
  %add.ptr58 = getelementptr inbounds i8, i8* %82, i64 %idx.ext57
  store i8* %add.ptr58, i8** %inputcolor, align 8, !tbaa !1
  br label %for.inc.59

for.inc.59:                                       ; preds = %for.end.56
  %83 = load i32, i32* %j, align 4, !tbaa !23
  %inc60 = add nsw i32 %83, 1
  store i32 %inc60, i32* %j, align 4, !tbaa !23
  br label %for.cond.34

for.end.61:                                       ; preds = %for.cond.34
  %84 = load %struct.gsicc_bufferdesc_s*, %struct.gsicc_bufferdesc_s** %input_buff_desc.addr, align 8, !tbaa !1
  %row_stride62 = getelementptr inbounds %struct.gsicc_bufferdesc_s, %struct.gsicc_bufferdesc_s* %84, i32 0, i32 7
  %85 = load i32, i32* %row_stride62, align 4, !tbaa !92
  %86 = load i8*, i8** %inputpos, align 8, !tbaa !1
  %idx.ext63 = sext i32 %85 to i64
  %add.ptr64 = getelementptr inbounds i8, i8* %86, i64 %idx.ext63
  store i8* %add.ptr64, i8** %inputpos, align 8, !tbaa !1
  %87 = load %struct.gsicc_bufferdesc_s*, %struct.gsicc_bufferdesc_s** %output_buff_desc.addr, align 8, !tbaa !1
  %row_stride65 = getelementptr inbounds %struct.gsicc_bufferdesc_s, %struct.gsicc_bufferdesc_s* %87, i32 0, i32 7
  %88 = load i32, i32* %row_stride65, align 4, !tbaa !92
  %89 = load i8*, i8** %outputpos, align 8, !tbaa !1
  %idx.ext66 = sext i32 %88 to i64
  %add.ptr67 = getelementptr inbounds i8, i8* %89, i64 %idx.ext66
  store i8* %add.ptr67, i8** %outputpos, align 8, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %for.end.61, %for.end.28
  br label %for.inc.68

for.inc.68:                                       ; preds = %if.end
  %90 = load i32, i32* %k, align 4, !tbaa !23
  %inc69 = add nsw i32 %90, 1
  store i32 %inc69, i32* %k, align 4, !tbaa !23
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
define internal void @gsicc_rcm_chunky_to_chunky(%struct.gx_device_s* %dev, %struct.gsicc_link_s* %icclink, %struct.gsicc_bufferdesc_s* %input_buff_desc, %struct.gsicc_bufferdesc_s* %output_buff_desc, i8* %inputbuffer, i8* %outputbuffer) #0 {
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
  %10 = load i8, i8* %bytes_per_chan, align 1, !tbaa !89
  %conv = zext i8 %10 to i32
  store i32 %conv, i32* %num_bytes_in, align 4, !tbaa !23
  %11 = bitcast i32* %num_bytes_out to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  %12 = load %struct.gsicc_bufferdesc_s*, %struct.gsicc_bufferdesc_s** %output_buff_desc.addr, align 8, !tbaa !1
  %bytes_per_chan1 = getelementptr inbounds %struct.gsicc_bufferdesc_s, %struct.gsicc_bufferdesc_s* %12, i32 0, i32 1
  %13 = load i8, i8* %bytes_per_chan1, align 1, !tbaa !89
  %conv2 = zext i8 %13 to i32
  store i32 %conv2, i32* %num_bytes_out, align 4, !tbaa !23
  %14 = bitcast i32* %pixel_in_step to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  %15 = load i32, i32* %num_bytes_in, align 4, !tbaa !23
  %16 = load %struct.gsicc_bufferdesc_s*, %struct.gsicc_bufferdesc_s** %input_buff_desc.addr, align 8, !tbaa !1
  %num_chan = getelementptr inbounds %struct.gsicc_bufferdesc_s, %struct.gsicc_bufferdesc_s* %16, i32 0, i32 0
  %17 = load i8, i8* %num_chan, align 1, !tbaa !87
  %conv3 = zext i8 %17 to i32
  %mul = mul nsw i32 %15, %conv3
  store i32 %mul, i32* %pixel_in_step, align 4, !tbaa !23
  %18 = bitcast i32* %pixel_out_step to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #1
  %19 = load i32, i32* %num_bytes_out, align 4, !tbaa !23
  %20 = load %struct.gsicc_bufferdesc_s*, %struct.gsicc_bufferdesc_s** %output_buff_desc.addr, align 8, !tbaa !1
  %num_chan4 = getelementptr inbounds %struct.gsicc_bufferdesc_s, %struct.gsicc_bufferdesc_s* %20, i32 0, i32 0
  %21 = load i8, i8* %num_chan4, align 1, !tbaa !87
  %conv5 = zext i8 %21 to i32
  %mul6 = mul nsw i32 %19, %conv5
  store i32 %mul6, i32* %pixel_out_step, align 4, !tbaa !23
  store i32 0, i32* %k, align 4, !tbaa !23
  br label %for.cond

for.cond:                                         ; preds = %for.inc.19, %entry
  %22 = load i32, i32* %k, align 4, !tbaa !23
  %23 = load %struct.gsicc_bufferdesc_s*, %struct.gsicc_bufferdesc_s** %input_buff_desc.addr, align 8, !tbaa !1
  %num_rows = getelementptr inbounds %struct.gsicc_bufferdesc_s, %struct.gsicc_bufferdesc_s* %23, i32 0, i32 8
  %24 = load i32, i32* %num_rows, align 4, !tbaa !90
  %cmp = icmp slt i32 %22, %24
  br i1 %cmp, label %for.body, label %for.end.21

for.body:                                         ; preds = %for.cond
  %25 = load i8*, i8** %inputpos, align 8, !tbaa !1
  store i8* %25, i8** %inputcolor, align 8, !tbaa !1
  %26 = load i8*, i8** %outputpos, align 8, !tbaa !1
  store i8* %26, i8** %outputcolor, align 8, !tbaa !1
  store i32 0, i32* %j, align 4, !tbaa !23
  br label %for.cond.8

for.cond.8:                                       ; preds = %for.inc, %for.body
  %27 = load i32, i32* %j, align 4, !tbaa !23
  %28 = load %struct.gsicc_bufferdesc_s*, %struct.gsicc_bufferdesc_s** %input_buff_desc.addr, align 8, !tbaa !1
  %pixels_per_row = getelementptr inbounds %struct.gsicc_bufferdesc_s, %struct.gsicc_bufferdesc_s* %28, i32 0, i32 9
  %29 = load i32, i32* %pixels_per_row, align 4, !tbaa !91
  %cmp9 = icmp slt i32 %27, %29
  br i1 %cmp9, label %for.body.11, label %for.end

for.body.11:                                      ; preds = %for.cond.8
  %30 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %31 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %icclink.addr, align 8, !tbaa !1
  %32 = load i8*, i8** %inputcolor, align 8, !tbaa !1
  %33 = load i8*, i8** %outputcolor, align 8, !tbaa !1
  %34 = load i32, i32* %num_bytes_in, align 4, !tbaa !23
  %35 = load i32, i32* %num_bytes_out, align 4, !tbaa !23
  call void @gsicc_rcm_transform_general(%struct.gx_device_s* %30, %struct.gsicc_link_s* %31, i8* %32, i8* %33, i32 %34, i32 %35) #3
  %36 = load i32, i32* %pixel_in_step, align 4, !tbaa !23
  %37 = load i8*, i8** %inputcolor, align 8, !tbaa !1
  %idx.ext = sext i32 %36 to i64
  %add.ptr = getelementptr inbounds i8, i8* %37, i64 %idx.ext
  store i8* %add.ptr, i8** %inputcolor, align 8, !tbaa !1
  %38 = load i32, i32* %pixel_out_step, align 4, !tbaa !23
  %39 = load i8*, i8** %outputcolor, align 8, !tbaa !1
  %idx.ext12 = sext i32 %38 to i64
  %add.ptr13 = getelementptr inbounds i8, i8* %39, i64 %idx.ext12
  store i8* %add.ptr13, i8** %outputcolor, align 8, !tbaa !1
  br label %for.inc

for.inc:                                          ; preds = %for.body.11
  %40 = load i32, i32* %j, align 4, !tbaa !23
  %inc = add nsw i32 %40, 1
  store i32 %inc, i32* %j, align 4, !tbaa !23
  br label %for.cond.8

for.end:                                          ; preds = %for.cond.8
  %41 = load %struct.gsicc_bufferdesc_s*, %struct.gsicc_bufferdesc_s** %input_buff_desc.addr, align 8, !tbaa !1
  %row_stride = getelementptr inbounds %struct.gsicc_bufferdesc_s, %struct.gsicc_bufferdesc_s* %41, i32 0, i32 7
  %42 = load i32, i32* %row_stride, align 4, !tbaa !92
  %43 = load i8*, i8** %inputpos, align 8, !tbaa !1
  %idx.ext14 = sext i32 %42 to i64
  %add.ptr15 = getelementptr inbounds i8, i8* %43, i64 %idx.ext14
  store i8* %add.ptr15, i8** %inputpos, align 8, !tbaa !1
  %44 = load %struct.gsicc_bufferdesc_s*, %struct.gsicc_bufferdesc_s** %output_buff_desc.addr, align 8, !tbaa !1
  %row_stride16 = getelementptr inbounds %struct.gsicc_bufferdesc_s, %struct.gsicc_bufferdesc_s* %44, i32 0, i32 7
  %45 = load i32, i32* %row_stride16, align 4, !tbaa !92
  %46 = load i8*, i8** %outputpos, align 8, !tbaa !1
  %idx.ext17 = sext i32 %45 to i64
  %add.ptr18 = getelementptr inbounds i8, i8* %46, i64 %idx.ext17
  store i8* %add.ptr18, i8** %outputpos, align 8, !tbaa !1
  br label %for.inc.19

for.inc.19:                                       ; preds = %for.end
  %47 = load i32, i32* %k, align 4, !tbaa !23
  %inc20 = add nsw i32 %47, 1
  store i32 %inc20, i32* %k, align 4, !tbaa !23
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
define internal void @gsicc_rcm_transform_general(%struct.gx_device_s* %dev, %struct.gsicc_link_s* %icclink, i8* %inputcolor, i8* %outputcolor, i32 %num_bytes_in, i32 %num_bytes_out) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %icclink.addr = alloca %struct.gsicc_link_s*, align 8
  %inputcolor.addr = alloca i8*, align 8
  %outputcolor.addr = alloca i8*, align 8
  %num_bytes_in.addr = alloca i32, align 4
  %num_bytes_out.addr = alloca i32, align 4
  %link = alloca %struct.rcm_link_s*, align 8
  %num_in = alloca i8, align 1
  %num_out = alloca i8, align 1
  %frac_in = alloca [4 x i16], align 2
  %frac_out = alloca [64 x i16], align 16
  %k = alloca i32, align 4
  %data = alloca i16*, align 8
  %data16 = alloca i8*, align 8
  %data62 = alloca i16*, align 8
  %data84 = alloca i8*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gsicc_link_s* %icclink, %struct.gsicc_link_s** %icclink.addr, align 8, !tbaa !1
  store i8* %inputcolor, i8** %inputcolor.addr, align 8, !tbaa !1
  store i8* %outputcolor, i8** %outputcolor.addr, align 8, !tbaa !1
  store i32 %num_bytes_in, i32* %num_bytes_in.addr, align 4, !tbaa !23
  store i32 %num_bytes_out, i32* %num_bytes_out.addr, align 4, !tbaa !23
  %0 = bitcast %struct.rcm_link_s** %link to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %icclink.addr, align 8, !tbaa !1
  %link_handle = getelementptr inbounds %struct.gsicc_link_s, %struct.gsicc_link_s* %1, i32 0, i32 0
  %2 = load i8*, i8** %link_handle, align 8, !tbaa !59
  %3 = bitcast i8* %2 to %struct.rcm_link_s*
  store %struct.rcm_link_s* %3, %struct.rcm_link_s** %link, align 8, !tbaa !1
  call void @llvm.lifetime.start(i64 1, i8* %num_in) #1
  %4 = load %struct.rcm_link_s*, %struct.rcm_link_s** %link, align 8, !tbaa !1
  %num_in1 = getelementptr inbounds %struct.rcm_link_s, %struct.rcm_link_s* %4, i32 0, i32 1
  %5 = load i8, i8* %num_in1, align 1, !tbaa !71
  store i8 %5, i8* %num_in, align 1, !tbaa !5
  call void @llvm.lifetime.start(i64 1, i8* %num_out) #1
  %6 = load %struct.rcm_link_s*, %struct.rcm_link_s** %link, align 8, !tbaa !1
  %num_out2 = getelementptr inbounds %struct.rcm_link_s, %struct.rcm_link_s* %6, i32 0, i32 0
  %7 = load i8, i8* %num_out2, align 1, !tbaa !63
  store i8 %7, i8* %num_out, align 1, !tbaa !5
  %8 = bitcast [4 x i16]* %frac_in to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  %9 = bitcast [64 x i16]* %frac_out to i8*
  call void @llvm.lifetime.start(i64 128, i8* %9) #1
  %10 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = load i32, i32* %num_bytes_in.addr, align 4, !tbaa !23
  %cmp = icmp eq i32 %11, 2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %12 = bitcast i16** %data to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  %13 = load i8*, i8** %inputcolor.addr, align 8, !tbaa !1
  %14 = bitcast i8* %13 to i16*
  store i16* %14, i16** %data, align 8, !tbaa !1
  store i32 0, i32* %k, align 4, !tbaa !23
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %15 = load i32, i32* %k, align 4, !tbaa !23
  %16 = load i8, i8* %num_in, align 1, !tbaa !5
  %conv = zext i8 %16 to i32
  %cmp3 = icmp slt i32 %15, %conv
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %17 = load i32, i32* %k, align 4, !tbaa !23
  %idxprom = sext i32 %17 to i64
  %18 = load i16*, i16** %data, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %18, i64 %idxprom
  %19 = load i16, i16* %arrayidx, align 2, !tbaa !93
  %conv5 = zext i16 %19 to i32
  %shr = ashr i32 %conv5, 1
  %20 = load i32, i32* %k, align 4, !tbaa !23
  %idxprom6 = sext i32 %20 to i64
  %21 = load i16*, i16** %data, align 8, !tbaa !1
  %arrayidx7 = getelementptr inbounds i16, i16* %21, i64 %idxprom6
  %22 = load i16, i16* %arrayidx7, align 2, !tbaa !93
  %conv8 = zext i16 %22 to i32
  %shr9 = ashr i32 %conv8, 13
  %sub = sub nsw i32 %shr, %shr9
  %conv10 = trunc i32 %sub to i16
  %conv11 = sext i16 %conv10 to i32
  %sub12 = sub nsw i32 32760, %conv11
  %conv13 = trunc i32 %sub12 to i16
  %23 = load i32, i32* %k, align 4, !tbaa !23
  %idxprom14 = sext i32 %23 to i64
  %arrayidx15 = getelementptr inbounds [4 x i16], [4 x i16]* %frac_in, i32 0, i64 %idxprom14
  store i16 %conv13, i16* %arrayidx15, align 2, !tbaa !93
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %24 = load i32, i32* %k, align 4, !tbaa !23
  %inc = add nsw i32 %24, 1
  store i32 %inc, i32* %k, align 4, !tbaa !23
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %25 = bitcast i16** %data to i8*
  call void @llvm.lifetime.end(i64 8, i8* %25) #1
  br label %if.end

if.else:                                          ; preds = %entry
  %26 = bitcast i8** %data16 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %26) #1
  %27 = load i8*, i8** %inputcolor.addr, align 8, !tbaa !1
  store i8* %27, i8** %data16, align 8, !tbaa !1
  store i32 0, i32* %k, align 4, !tbaa !23
  br label %for.cond.17

for.cond.17:                                      ; preds = %for.inc.41, %if.else
  %28 = load i32, i32* %k, align 4, !tbaa !23
  %29 = load i8, i8* %num_in, align 1, !tbaa !5
  %conv18 = zext i8 %29 to i32
  %cmp19 = icmp slt i32 %28, %conv18
  br i1 %cmp19, label %for.body.21, label %for.end.43

for.body.21:                                      ; preds = %for.cond.17
  %30 = load i32, i32* %k, align 4, !tbaa !23
  %idxprom22 = sext i32 %30 to i64
  %31 = load i8*, i8** %data16, align 8, !tbaa !1
  %arrayidx23 = getelementptr inbounds i8, i8* %31, i64 %idxprom22
  %32 = load i8, i8* %arrayidx23, align 1, !tbaa !5
  %conv24 = zext i8 %32 to i16
  %conv25 = sext i16 %conv24 to i32
  %shl = shl i32 %conv25, 7
  %33 = load i32, i32* %k, align 4, !tbaa !23
  %idxprom26 = sext i32 %33 to i64
  %34 = load i8*, i8** %data16, align 8, !tbaa !1
  %arrayidx27 = getelementptr inbounds i8, i8* %34, i64 %idxprom26
  %35 = load i8, i8* %arrayidx27, align 1, !tbaa !5
  %conv28 = zext i8 %35 to i32
  %shr29 = ashr i32 %conv28, 1
  %add = add nsw i32 %shl, %shr29
  %36 = load i32, i32* %k, align 4, !tbaa !23
  %idxprom30 = sext i32 %36 to i64
  %37 = load i8*, i8** %data16, align 8, !tbaa !1
  %arrayidx31 = getelementptr inbounds i8, i8* %37, i64 %idxprom30
  %38 = load i8, i8* %arrayidx31, align 1, !tbaa !5
  %conv32 = zext i8 %38 to i32
  %shr33 = ashr i32 %conv32, 5
  %sub34 = sub nsw i32 %add, %shr33
  %conv35 = trunc i32 %sub34 to i16
  %conv36 = sext i16 %conv35 to i32
  %sub37 = sub nsw i32 32760, %conv36
  %conv38 = trunc i32 %sub37 to i16
  %39 = load i32, i32* %k, align 4, !tbaa !23
  %idxprom39 = sext i32 %39 to i64
  %arrayidx40 = getelementptr inbounds [4 x i16], [4 x i16]* %frac_in, i32 0, i64 %idxprom39
  store i16 %conv38, i16* %arrayidx40, align 2, !tbaa !93
  br label %for.inc.41

for.inc.41:                                       ; preds = %for.body.21
  %40 = load i32, i32* %k, align 4, !tbaa !23
  %inc42 = add nsw i32 %40, 1
  store i32 %inc42, i32* %k, align 4, !tbaa !23
  br label %for.cond.17

for.end.43:                                       ; preds = %for.cond.17
  %41 = bitcast i8** %data16 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %41) #1
  br label %if.end

if.end:                                           ; preds = %for.end.43, %for.end
  %42 = load i8, i8* %num_in, align 1, !tbaa !5
  %conv44 = zext i8 %42 to i32
  switch i32 %conv44, label %sw.default [
    i32 1, label %sw.bb
    i32 3, label %sw.bb.46
    i32 4, label %sw.bb.52
  ]

sw.bb:                                            ; preds = %if.end
  %43 = load %struct.rcm_link_s*, %struct.rcm_link_s** %link, align 8, !tbaa !1
  %cm_procs = getelementptr inbounds %struct.rcm_link_s, %struct.rcm_link_s* %43, i32 0, i32 4
  %map_gray = getelementptr inbounds %struct.gx_cm_color_map_procs_s, %struct.gx_cm_color_map_procs_s* %cm_procs, i32 0, i32 0
  %44 = load void (%struct.gx_device_s*, i16, i16*)*, void (%struct.gx_device_s*, i16, i16*)** %map_gray, align 8, !tbaa !70
  %45 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %arrayidx45 = getelementptr inbounds [4 x i16], [4 x i16]* %frac_in, i32 0, i64 0
  %46 = load i16, i16* %arrayidx45, align 2, !tbaa !93
  %arraydecay = getelementptr inbounds [64 x i16], [64 x i16]* %frac_out, i32 0, i32 0
  call void %44(%struct.gx_device_s* %45, i16 signext %46, i16* %arraydecay) #3
  br label %sw.epilog

sw.bb.46:                                         ; preds = %if.end
  %47 = load %struct.rcm_link_s*, %struct.rcm_link_s** %link, align 8, !tbaa !1
  %cm_procs47 = getelementptr inbounds %struct.rcm_link_s, %struct.rcm_link_s* %47, i32 0, i32 4
  %map_rgb = getelementptr inbounds %struct.gx_cm_color_map_procs_s, %struct.gx_cm_color_map_procs_s* %cm_procs47, i32 0, i32 1
  %48 = load void (%struct.gx_device_s*, %struct.gs_imager_state_s*, i16, i16, i16, i16*)*, void (%struct.gx_device_s*, %struct.gs_imager_state_s*, i16, i16, i16, i16*)** %map_rgb, align 8, !tbaa !68
  %49 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %arrayidx48 = getelementptr inbounds [4 x i16], [4 x i16]* %frac_in, i32 0, i64 0
  %50 = load i16, i16* %arrayidx48, align 2, !tbaa !93
  %arrayidx49 = getelementptr inbounds [4 x i16], [4 x i16]* %frac_in, i32 0, i64 1
  %51 = load i16, i16* %arrayidx49, align 2, !tbaa !93
  %arrayidx50 = getelementptr inbounds [4 x i16], [4 x i16]* %frac_in, i32 0, i64 2
  %52 = load i16, i16* %arrayidx50, align 2, !tbaa !93
  %arraydecay51 = getelementptr inbounds [64 x i16], [64 x i16]* %frac_out, i32 0, i32 0
  call void %48(%struct.gx_device_s* %49, %struct.gs_imager_state_s* null, i16 signext %50, i16 signext %51, i16 signext %52, i16* %arraydecay51) #3
  br label %sw.epilog

sw.bb.52:                                         ; preds = %if.end
  %53 = load %struct.rcm_link_s*, %struct.rcm_link_s** %link, align 8, !tbaa !1
  %cm_procs53 = getelementptr inbounds %struct.rcm_link_s, %struct.rcm_link_s* %53, i32 0, i32 4
  %map_cmyk = getelementptr inbounds %struct.gx_cm_color_map_procs_s, %struct.gx_cm_color_map_procs_s* %cm_procs53, i32 0, i32 2
  %54 = load void (%struct.gx_device_s*, i16, i16, i16, i16, i16*)*, void (%struct.gx_device_s*, i16, i16, i16, i16, i16*)** %map_cmyk, align 8, !tbaa !66
  %55 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %arrayidx54 = getelementptr inbounds [4 x i16], [4 x i16]* %frac_in, i32 0, i64 0
  %56 = load i16, i16* %arrayidx54, align 2, !tbaa !93
  %arrayidx55 = getelementptr inbounds [4 x i16], [4 x i16]* %frac_in, i32 0, i64 1
  %57 = load i16, i16* %arrayidx55, align 2, !tbaa !93
  %arrayidx56 = getelementptr inbounds [4 x i16], [4 x i16]* %frac_in, i32 0, i64 2
  %58 = load i16, i16* %arrayidx56, align 2, !tbaa !93
  %arrayidx57 = getelementptr inbounds [4 x i16], [4 x i16]* %frac_in, i32 0, i64 3
  %59 = load i16, i16* %arrayidx57, align 2, !tbaa !93
  %arraydecay58 = getelementptr inbounds [64 x i16], [64 x i16]* %frac_out, i32 0, i32 0
  call void %54(%struct.gx_device_s* %55, i16 signext %56, i16 signext %57, i16 signext %58, i16 signext %59, i16* %arraydecay58) #3
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.52, %sw.bb.46, %sw.bb
  %60 = load i32, i32* %num_bytes_out.addr, align 4, !tbaa !23
  %cmp59 = icmp eq i32 %60, 2
  br i1 %cmp59, label %if.then.61, label %if.else.83

if.then.61:                                       ; preds = %sw.epilog
  %61 = bitcast i16** %data62 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %61) #1
  %62 = load i8*, i8** %outputcolor.addr, align 8, !tbaa !1
  %63 = bitcast i8* %62 to i16*
  store i16* %63, i16** %data62, align 8, !tbaa !1
  store i32 0, i32* %k, align 4, !tbaa !23
  br label %for.cond.63

for.cond.63:                                      ; preds = %for.inc.80, %if.then.61
  %64 = load i32, i32* %k, align 4, !tbaa !23
  %65 = load i8, i8* %num_out, align 1, !tbaa !5
  %conv64 = zext i8 %65 to i32
  %cmp65 = icmp slt i32 %64, %conv64
  br i1 %cmp65, label %for.body.67, label %for.end.82

for.body.67:                                      ; preds = %for.cond.63
  %66 = load i32, i32* %k, align 4, !tbaa !23
  %idxprom68 = sext i32 %66 to i64
  %arrayidx69 = getelementptr inbounds [64 x i16], [64 x i16]* %frac_out, i32 0, i64 %idxprom68
  %67 = load i16, i16* %arrayidx69, align 2, !tbaa !93
  %conv70 = sext i16 %67 to i32
  %shl71 = shl i32 %conv70, 1
  %68 = load i32, i32* %k, align 4, !tbaa !23
  %idxprom72 = sext i32 %68 to i64
  %arrayidx73 = getelementptr inbounds [64 x i16], [64 x i16]* %frac_out, i32 0, i64 %idxprom72
  %69 = load i16, i16* %arrayidx73, align 2, !tbaa !93
  %conv74 = sext i16 %69 to i32
  %shr75 = ashr i32 %conv74, 11
  %add76 = add nsw i32 %shl71, %shr75
  %conv77 = trunc i32 %add76 to i16
  %70 = load i32, i32* %k, align 4, !tbaa !23
  %idxprom78 = sext i32 %70 to i64
  %71 = load i16*, i16** %data62, align 8, !tbaa !1
  %arrayidx79 = getelementptr inbounds i16, i16* %71, i64 %idxprom78
  store i16 %conv77, i16* %arrayidx79, align 2, !tbaa !93
  br label %for.inc.80

for.inc.80:                                       ; preds = %for.body.67
  %72 = load i32, i32* %k, align 4, !tbaa !23
  %inc81 = add nsw i32 %72, 1
  store i32 %inc81, i32* %k, align 4, !tbaa !23
  br label %for.cond.63

for.end.82:                                       ; preds = %for.cond.63
  %73 = bitcast i16** %data62 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %73) #1
  br label %if.end.105

if.else.83:                                       ; preds = %sw.epilog
  %74 = bitcast i8** %data84 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %74) #1
  %75 = load i8*, i8** %outputcolor.addr, align 8, !tbaa !1
  store i8* %75, i8** %data84, align 8, !tbaa !1
  store i32 0, i32* %k, align 4, !tbaa !23
  br label %for.cond.85

for.cond.85:                                      ; preds = %for.inc.102, %if.else.83
  %76 = load i32, i32* %k, align 4, !tbaa !23
  %77 = load i8, i8* %num_out, align 1, !tbaa !5
  %conv86 = zext i8 %77 to i32
  %cmp87 = icmp slt i32 %76, %conv86
  br i1 %cmp87, label %for.body.89, label %for.end.104

for.body.89:                                      ; preds = %for.cond.85
  %78 = load i32, i32* %k, align 4, !tbaa !23
  %idxprom90 = sext i32 %78 to i64
  %arrayidx91 = getelementptr inbounds [64 x i16], [64 x i16]* %frac_out, i32 0, i64 %idxprom90
  %79 = load i16, i16* %arrayidx91, align 2, !tbaa !93
  %conv92 = sext i16 %79 to i32
  %shr93 = ashr i32 %conv92, 12
  %80 = load i32, i32* %k, align 4, !tbaa !23
  %idxprom94 = sext i32 %80 to i64
  %arrayidx95 = getelementptr inbounds [64 x i16], [64 x i16]* %frac_out, i32 0, i64 %idxprom94
  %81 = load i16, i16* %arrayidx95, align 2, !tbaa !93
  %conv96 = sext i16 %81 to i32
  %add97 = add nsw i32 %shr93, %conv96
  %shr98 = ashr i32 %add97, 7
  %conv99 = trunc i32 %shr98 to i8
  %82 = load i32, i32* %k, align 4, !tbaa !23
  %idxprom100 = sext i32 %82 to i64
  %83 = load i8*, i8** %data84, align 8, !tbaa !1
  %arrayidx101 = getelementptr inbounds i8, i8* %83, i64 %idxprom100
  store i8 %conv99, i8* %arrayidx101, align 1, !tbaa !5
  br label %for.inc.102

for.inc.102:                                      ; preds = %for.body.89
  %84 = load i32, i32* %k, align 4, !tbaa !23
  %inc103 = add nsw i32 %84, 1
  store i32 %inc103, i32* %k, align 4, !tbaa !23
  br label %for.cond.85

for.end.104:                                      ; preds = %for.cond.85
  %85 = bitcast i8** %data84 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %85) #1
  br label %if.end.105

if.end.105:                                       ; preds = %for.end.104, %for.end.82
  %86 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %86) #1
  %87 = bitcast [64 x i16]* %frac_out to i8*
  call void @llvm.lifetime.end(i64 128, i8* %87) #1
  %88 = bitcast [4 x i16]* %frac_in to i8*
  call void @llvm.lifetime.end(i64 8, i8* %88) #1
  call void @llvm.lifetime.end(i64 1, i8* %num_out) #1
  call void @llvm.lifetime.end(i64 1, i8* %num_in) #1
  %89 = bitcast %struct.rcm_link_s** %link to i8*
  call void @llvm.lifetime.end(i64 8, i8* %89) #1
  ret void
}

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
!5 = !{!3, !3, i64 0}
!6 = !{!7, !2, i64 24}
!7 = !{!"gx_device_s", !8, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !8, i64 40, !2, i64 48, !9, i64 56, !8, i64 80, !8, i64 84, !8, i64 88, !11, i64 96, !14, i64 816, !8, i64 832, !8, i64 836, !8, i64 840, !8, i64 844, !8, i64 848, !8, i64 852, !3, i64 856, !3, i64 864, !8, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !10, i64 928, !10, i64 936, !8, i64 944, !8, i64 948, !8, i64 952, !8, i64 956, !8, i64 960, !10, i64 968, !10, i64 976, !15, i64 984, !8, i64 1052, !8, i64 1056, !16, i64 1064, !2, i64 1104, !3, i64 1112, !18, i64 1120, !19, i64 1144}
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
!20 = !{!21, !2, i64 200}
!21 = !{!"gs_memory_s", !2, i64 0, !22, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!22 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!23 = !{!8, !8, i64 0}
!24 = !{!7, !2, i64 1680}
!25 = !{!26, !8, i64 160}
!26 = !{!"cmm_dev_profile_s", !3, i64 0, !2, i64 32, !2, i64 40, !2, i64 48, !3, i64 56, !8, i64 152, !8, i64 156, !8, i64 160, !8, i64 164, !8, i64 168, !8, i64 172, !2, i64 176, !8, i64 184, !2, i64 192, !9, i64 200}
!27 = !{!7, !2, i64 1536}
!28 = !{!29, !10, i64 24}
!29 = !{!"gsicc_hashlink_s", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24}
!30 = !{!7, !8, i64 100}
!31 = !{!29, !10, i64 16}
!32 = !{!29, !10, i64 8}
!33 = !{!29, !10, i64 0}
!34 = !{!35, !2, i64 344}
!35 = !{!"gs_imager_state_s", !8, i64 0, !2, i64 8, !2, i64 16, !36, i64 24, !8, i64 128, !40, i64 132, !8, i64 168, !41, i64 176, !41, i64 192, !8, i64 208, !8, i64 212, !12, i64 216, !3, i64 220, !43, i64 224, !43, i64 228, !44, i64 232, !10, i64 240, !8, i64 248, !8, i64 252, !8, i64 256, !2, i64 264, !8, i64 272, !8, i64 276, !8, i64 280, !8, i64 284, !8, i64 288, !8, i64 292, !37, i64 296, !45, i64 300, !8, i64 308, !8, i64 312, !8, i64 316, !37, i64 320, !8, i64 324, !8, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !3, i64 376, !2, i64 392, !2, i64 400, !8, i64 408, !2, i64 416, !2, i64 424, !46, i64 432, !3, i64 496, !2, i64 1008, !2, i64 1016, !47, i64 1024, !2, i64 1304, !2, i64 1312, !2, i64 1320, !2, i64 1328, !47, i64 1336}
!36 = !{!"gx_line_params_s", !37, i64 0, !3, i64 4, !3, i64 8, !3, i64 12, !3, i64 16, !8, i64 20, !37, i64 24, !37, i64 28, !37, i64 32, !8, i64 36, !38, i64 40, !39, i64 64}
!37 = !{!"float", !3, i64 0}
!38 = !{!"gs_matrix_s", !37, i64 0, !37, i64 4, !37, i64 8, !37, i64 12, !37, i64 16, !37, i64 20}
!39 = !{!"gx_dash_params_s", !2, i64 0, !8, i64 8, !37, i64 12, !8, i64 16, !37, i64 20, !8, i64 24, !8, i64 28, !37, i64 32}
!40 = !{!"gs_matrix_fixed_s", !37, i64 0, !37, i64 4, !37, i64 8, !37, i64 12, !37, i64 16, !37, i64 20, !8, i64 24, !8, i64 28, !8, i64 32}
!41 = !{!"gs_point_s", !42, i64 0, !42, i64 8}
!42 = !{!"double", !3, i64 0}
!43 = !{!"gs_transparency_source_s", !37, i64 0}
!44 = !{!"gs_xstate_trans_flags", !8, i64 0, !8, i64 4}
!45 = !{!"gs_fixed_point_s", !8, i64 0, !8, i64 4}
!46 = !{!"gx_transfer_s", !8, i64 0, !2, i64 8, !8, i64 16, !2, i64 24, !8, i64 32, !2, i64 40, !8, i64 48, !2, i64 56}
!47 = !{!"gs_devicen_color_map_s", !8, i64 0, !3, i64 4, !8, i64 8, !8, i64 12, !10, i64 16, !3, i64 24}
!48 = !{!49, !2, i64 48}
!49 = !{!"gsicc_link_cache_s", !2, i64 0, !8, i64 8, !9, i64 16, !2, i64 40, !2, i64 48, !2, i64 56, !8, i64 64}
!50 = !{!51, !2, i64 8}
!51 = !{!"gsicc_link_s", !2, i64 0, !52, i64 8, !29, i64 40, !2, i64 72, !8, i64 80, !2, i64 88, !2, i64 96, !8, i64 104, !8, i64 108, !8, i64 112, !8, i64 116, !8, i64 120, !8, i64 124, !52, i64 128, !3, i64 160, !8, i64 164, !8, i64 168}
!52 = !{!"gscms_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24}
!53 = !{!51, !2, i64 16}
!54 = !{!51, !2, i64 24}
!55 = !{i64 0, i64 8, !56, i64 8, i64 8, !56, i64 16, i64 8, !56, i64 24, i64 8, !56}
!56 = !{!10, !10, i64 0}
!57 = !{!51, !8, i64 116}
!58 = !{!21, !2, i64 64}
!59 = !{!51, !2, i64 0}
!60 = !{!61, !2, i64 8}
!61 = !{!"rcm_link_s", !3, i64 0, !3, i64 1, !3, i64 4, !2, i64 8, !62, i64 16, !2, i64 40}
!62 = !{!"gx_cm_color_map_procs_s", !2, i64 0, !2, i64 8, !2, i64 16}
!63 = !{!61, !3, i64 0}
!64 = !{!61, !3, i64 4}
!65 = !{!62, !2, i64 16}
!66 = !{!61, !2, i64 32}
!67 = !{!62, !2, i64 8}
!68 = !{!61, !2, i64 24}
!69 = !{!62, !2, i64 0}
!70 = !{!61, !2, i64 16}
!71 = !{!61, !3, i64 1}
!72 = !{!61, !2, i64 40}
!73 = !{!51, !8, i64 164}
!74 = !{!51, !8, i64 168}
!75 = !{!51, !10, i64 40}
!76 = !{!51, !10, i64 56}
!77 = !{!51, !10, i64 48}
!78 = !{!51, !10, i64 64}
!79 = !{!51, !8, i64 108}
!80 = !{!51, !8, i64 112}
!81 = !{!51, !8, i64 120}
!82 = !{!51, !8, i64 104}
!83 = !{!51, !2, i64 96}
!84 = !{!85, !8, i64 16}
!85 = !{!"gsicc_bufferdesc_s", !3, i64 0, !3, i64 1, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !8, i64 32}
!86 = !{!21, !2, i64 24}
!87 = !{!85, !3, i64 0}
!88 = !{!85, !8, i64 20}
!89 = !{!85, !3, i64 1}
!90 = !{!85, !8, i64 28}
!91 = !{!85, !8, i64 32}
!92 = !{!85, !8, i64 24}
!93 = !{!12, !12, i64 0}
