; ModuleID = './gdevcd8.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gx_device_procs_s = type { i32 (%struct.gx_device_s*)*, void (%struct.gx_device_s*, %struct.gs_matrix_s*)*, i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i32, i32)*, i32 (%struct.gx_device_s*)*, i64 (%struct.gx_device_s*, i16*)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, i32, i8*, i8**)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i64 (%struct.gx_device_s*, i16*)*, %struct.gx_xfont_procs_s* (%struct.gx_device_s*)*, %struct.gx_device_s* (%struct.gx_device_s*)*, i64 (%struct.gx_device_s*, i16, i16, i16, i16)*, %struct.gx_device_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)*, i32 (%struct.gx_device_s*, i32, i32*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)*, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)*, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)*, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)*, i32 (%struct.gx_device_s*, %struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_transparency_group_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gx_transparency_mask_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32)*, i64 (%struct.gx_device_s*, i16*)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i64, %struct.gs_pattern1_instance_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)*, i32 (%struct.gx_device_s*, %struct.gs_state_s*)*, %struct.gs_devn_params_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i32, i8*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)*, void (%struct.gx_device_s*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gx_process_page_options_s*)* }
%struct.gx_device_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s }
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
%struct.gs_memory_struct_type_s = type { i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }
%struct.struct_shared_procs_s = type opaque
%struct.rc_header_s = type { i64, %struct.gs_memory_s*, void (%struct.gs_memory_s*, i8*, i8*)* }
%struct.gx_device_color_info_s = type { i32, i32, i32, i16, i8, i32, i32, i32, i32, %struct.gx_device_anti_alias_info_s, i32, [64 x i8], [64 x i8], [64 x i64], i8*, i32, i64, i32 }
%struct.gx_device_anti_alias_info_s = type { i32, i32 }
%struct.gx_device_cached_colors_s = type { i64, i64 }
%struct.gx_stroked_gradient_recognizer_s = type { i32, [4 x %struct.gs_fixed_point_s], [4 x %struct.gs_fixed_point_s] }
%struct.gs_fixed_point_s = type { i32, i32 }
%struct.gdev_space_params_s = type { i64, i64, %struct.gx_band_params_s, i32, i32 }
%struct.gx_band_params_s = type { i32, i32, i64 }
%struct.cmm_dev_profile_s = type { [4 x %struct.cmm_profile_s*], %struct.cmm_profile_s*, %struct.cmm_profile_s*, %struct.cmm_profile_s*, [4 x %struct.gsicc_rendering_param_s], i32, i32, i32, i32, i32, i32, %struct.gsicc_namelist_s*, i32, %struct.gs_memory_s*, %struct.rc_header_s }
%struct.cmm_profile_s = type { i8, i8, i32, i32, i32, i32, %struct.gs_range_icc_s, i64, i32, [15 x i32], i32, i32, i32, %struct.gsicc_rendering_param_s, i8*, %struct.gx_device_s*, %struct.gsicc_namelist_s*, i8*, %struct.rc_header_s, i32, i8*, %struct.gs_memory_s*, %struct.gx_monitor_s* }
%struct.gs_range_icc_s = type { [15 x %struct.gs_range_s] }
%struct.gs_range_s = type { float, float }
%struct.gsicc_rendering_param_s = type { i32, i32, i32, i32, i32, i32 }
%struct.gx_monitor_s = type { %struct.gs_memory_s*, %union.gp_monitor }
%union.gp_monitor = type { i8* }
%struct.gsicc_namelist_s = type { i32, %struct.gsicc_colorname_s*, i8*, %struct.gs_devicen_color_map_s*, i32 }
%struct.gsicc_colorname_s = type { i8*, i32, %struct.gsicc_colorname_s* }
%struct.gs_devicen_color_map_s = type { i32, i32, i32, i32, i64, [64 x i32] }
%struct.gx_page_device_procs_s = type { i32 (%struct.gx_device_s*, %struct.gs_state_s*)*, i32 (%struct.gx_device_s*, %struct.gs_state_s*)*, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* }
%struct.gs_state_s = type opaque
%struct.gs_matrix_s = type { float, float, float, float, float, float }
%struct.gx_tile_bitmap_s = type { i8*, i32, %struct.gs_int_point_s, i64, i16, i16 }
%struct.gs_int_point_s = type { i32, i32 }
%struct.gx_xfont_procs_s = type opaque
%struct.gs_imager_state_s = type { i32, %struct.gs_memory_s*, i8*, %struct.gx_line_params_s, i32, %struct.gs_matrix_fixed_s, i32, %struct.gs_point_s, %struct.gs_point_s, i32, i32, i16, i32, %struct.gs_transparency_source_s, %struct.gs_transparency_source_s, %struct.gs_xstate_trans_flags, i64, i32, i32, i32, %struct.gx_device_s*, i32, i32, i32, i32, i32, i32, float, %struct.gs_fixed_point_s, i32, i32, i32, float, i32, i32, %struct.gsicc_manager_s*, %struct.gsicc_link_cache_s*, %struct.gsicc_profile_cache_s*, %struct.gx_color_map_procs_s* (%struct.gs_imager_state_s*, %struct.gx_device_s*)*, %struct.gs_halftone_s*, [2 x %struct.gs_int_point_s], %struct.gx_device_halftone_s*, %struct.gs_cie_render_s*, i32, %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s*, %struct.gx_transfer_s, [64 x %struct.gx_transfer_map_s*], %struct.gx_cie_joint_caches_s*, %struct.gx_color_map_procs_s*, %struct.gs_devicen_color_map_s, %struct.gx_pattern_cache_s*, %struct.gs_color_space_s*, %struct.gs_color_space_s*, %struct.gx_cie_joint_caches_s*, %struct.gs_devicen_color_map_s }
%struct.gx_line_params_s = type { float, i32, i32, i32, i32, i32, float, float, float, i32, %struct.gs_matrix_s, %struct.gx_dash_params_s }
%struct.gx_dash_params_s = type { float*, i32, float, i32, float, i32, i32, float }
%struct.gs_matrix_fixed_s = type { float, float, float, float, float, float, i32, i32, i32 }
%struct.gs_point_s = type { double, double }
%struct.gs_transparency_source_s = type { float }
%struct.gs_xstate_trans_flags = type { i32, i32 }
%struct.gsicc_manager_s = type { %struct.cmm_profile_s*, %struct.cmm_profile_s*, %struct.cmm_profile_s*, %struct.cmm_profile_s*, %struct.cmm_profile_s*, %struct.cmm_profile_s*, %struct.gsicc_devicen_s*, %struct.gsicc_smask_s*, i32, %struct.cmm_srcgtag_profile_s*, %struct.gs_memory_s*, %struct.rc_header_s }
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
%struct.gs_halftone_s = type opaque
%struct.gx_device_halftone_s = type opaque
%struct.gs_cie_render_s = type opaque
%struct.gx_transfer_map_s = type { %struct.rc_header_s, float (double, %struct.gx_transfer_map_s*)*, %struct.gs_mapping_closure_s, i64, [256 x i16] }
%struct.gs_mapping_closure_s = type { float (double, %struct.gx_transfer_map_s*, i8*)*, i8* }
%struct.gx_transfer_s = type { i32, %struct.gx_transfer_map_s*, i32, %struct.gx_transfer_map_s*, i32, %struct.gx_transfer_map_s*, i32, %struct.gx_transfer_map_s* }
%struct.gx_color_map_procs_s = type { void (i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, void (i16, i16, i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, void (i16, i16, i16, i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32, %struct.gs_color_space_s*)*, void (i16, i16, i16, i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, void (i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, void (i16*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_imager_state_s*, %struct.gx_device_s*)* }
%struct.gx_pattern_cache_s = type opaque
%struct.gs_color_space_s = type { %struct.gs_color_space_type_s*, %struct.rc_header_s, i64, %struct.gs_color_space_s*, %struct.gs_color_space_s*, %struct.client_color_space_data_s*, %struct.cmm_profile_s*, %union.anon }
%struct.gs_color_space_type_s = type { i32, i32, i32, %struct.gs_memory_struct_type_s*, i32 (%struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*)*, %struct.gs_color_space_s* (%struct.gs_color_space_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i16*, %struct.gs_imager_state_s*, %struct.gx_device_s*)*, i32 (i16*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)*, i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)*, void (%struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i32)*, i32 (%struct.gs_color_space_s*, %struct.stream_s*)*, i32 (%struct.gs_color_space_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, float, %struct.gsicc_link_s*)*, i32 (%struct.gs_color_space_s*)* }
%struct.gs_client_color_s = type { %struct.gs_pattern_instance_s*, %struct.gs_paint_color_s }
%struct.gs_pattern_instance_s = type { %struct.rc_header_s, %struct.gs_pattern_type_s*, %struct.gs_state_s*, i64 }
%struct.gs_pattern_type_s = type opaque
%struct.gs_paint_color_s = type { [64 x float] }
%struct.stream_s = type opaque
%struct.client_color_space_data_s = type { void (%struct.gs_color_space_s*, i32)* }
%union.anon = type { %struct.gs_device_n_params_s }
%struct.gs_device_n_params_s = type { i64*, i32, %struct.gs_device_n_map_s*, %struct.gs_device_n_attributes_s*, i32, i32 (%struct.gs_memory_s*, i64, i8**, i32*)* }
%struct.gs_device_n_map_s = type opaque
%struct.gs_device_n_attributes_s = type opaque
%struct.gx_cie_joint_caches_s = type opaque
%struct.gx_path_s = type opaque
%struct.gx_fill_params_s = type opaque
%struct.gx_device_color_s = type { %struct.gx_device_color_type_s*, %union._c, %struct.gs_int_point_s, i32, %struct.gs_client_color_s, %struct._mask }
%struct.gx_device_color_type_s = type opaque
%union._c = type { %struct._col }
%struct._col = type { %struct.gx_device_halftone_s*, i16, [64 x i8], [64 x i32], i16, i64 }
%struct._mask = type { %struct.mp_, i64, %struct.gx_color_tile_s* }
%struct.mp_ = type { i32, i32 }
%struct.gx_color_tile_s = type opaque
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
%struct.gx_device_clist_writer_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, %struct.gx_device_s*, %struct.gx_device_buf_procs_s, %struct.gs_memory_s*, i8*, i32, %struct.gx_band_params_s, i32, i32, %struct.gx_bits_cache_chunk_s, %struct.gx_bits_cache_s, i32, i32, %struct.tile_hash*, i32, i32, %struct.gx_band_page_info_s, i32, i64, %struct.clist_icctable_s*, %struct.gsicc_link_cache_s*, i32, %struct.gsicc_link_cache_s**, i32, %struct.gx_clist_state_s*, i8*, i8*, i8*, %struct.cmd_list_s*, %struct.cmd_list_s, i32, i32, i32, i32, %struct.gx_strip_bitmap_s, i32, i32, i32, %struct.gs_imager_state_s, i32, i32, i32, i32, [11 x float], %struct.gx_clip_path_s*, i64, %struct.clist_color_space_s, [4 x i64], i64, i64, i64, i64, i32, i32, i32, i32, i32 (%struct.gx_device_s*, i32)*, i32, %struct.gs_pattern1_instance_s*, i32, i32, i32, i32, i32, i32, %struct.clist_writer_cropping_buffer_s*, i64, i32, i32, i32, i32, %struct.gx_device_color_info_s }
%struct.gx_device_buf_procs_s = type { i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, %struct.gx_render_plane_s*, %struct.gs_memory_s*, %struct.gx_colors_usage_s*)*, i32 (%struct.gx_device_buf_space_s*, %struct.gx_device_s*, %struct.gx_render_plane_s*, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i8**, i32, i32, i32)*, void (%struct.gx_device_s*)* }
%struct.gx_render_plane_s = type { i32, i32, i32 }
%struct.gx_colors_usage_s = type { i64, i32, %struct.gs_int_rect_s }
%struct.gx_device_buf_space_s = type { i64, i64, i32 }
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
%struct.gs_uid_s = type { i64, i64* }
%struct.gs_rect_s = type { %struct.gs_point_s, %struct.gs_point_s }
%struct.clist_writer_cropping_buffer_s = type { i32, i32, i32, i32, %struct.clist_writer_cropping_buffer_s* }
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
%struct.gs_devn_params_s = type opaque
%struct.gx_process_page_options_s = type { i32 (i8*, %struct.gx_device_s*, %struct.gs_memory_s*, i32, i32, i8**)*, void (i8*, %struct.gx_device_s*, %struct.gs_memory_s*, i8*)*, i32 (i8*, %struct.gx_device_s*, %struct.gx_device_s*, %struct.gs_int_rect_s*, i8*)*, i32 (i8*, %struct.gx_device_s*, i8*)*, i8*, i32 }
%struct.gdev_prn_start_render_params_s = type opaque
%struct.gx_page_queue_s = type opaque
%struct.gx_device_printer_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [11240 x i8], %struct.gx_printer_device_procs_s, [4096 x i8], i32, i32, i32, i32, i32, i32, %struct._IO_FILE*, i64, i8*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s*, i32)*, %struct.gx_page_queue_s*, i32, %struct.gx_device_printer_s*, i32, i32, %struct.bg_print_s, i32, %struct.gx_saved_pages_list_s*, %struct.gx_device_procs_s, %struct.gx_device_procs_s }
%struct.gx_printer_device_procs_s = type { {}*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* }
%struct.bg_print_s = type { %struct.gx_semaphore_s*, %struct.gx_device_s*, i8*, i32, i32 }
%struct.gx_saved_pages_list_s = type { i32, i32, i32, i32, %struct.gx_saved_pages_list_element_s*, %struct.gx_saved_pages_list_element_s*, %struct.gs_memory_s* }
%struct.gx_saved_pages_list_element_s = type { i32, %struct.gx_saved_pages_list_element_s*, %struct.gx_saved_pages_list_element_s*, %struct.gx_saved_page_s* }
%struct.gx_saved_page_s = type { [32 x i8], %struct.gx_device_color_info_s, [4096 x i8], [4096 x i8], %struct.clist_io_procs_s*, i32, i64, %struct.gx_band_params_s, %struct.gs_memory_s*, i32, i8* }
%struct.ptr_arrays = type { [4 x i8*], [4 x i8*], [4 x [4 x i8*]], [4 x [8 x i8*]], i8*, [4 x i8*], [2 x i32*], [2 x i32*], i64*, i64*, i64*, i64* }
%struct.misc_struct = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.error_val_field = type { i32, i32, i32, i32 }
%struct.Gamma = type { [256 x i8], [256 x i8], [256 x i8], [256 x i8], [256 x i32] }
%struct.hp850_cmyk_init_s = type { [26 x i8] }
%struct.gx_device_cdj850_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [11240 x i8], %struct.gx_printer_device_procs_s, [4096 x i8], i32, i32, i32, i32, i32, i32, %struct._IO_FILE*, i64, i8*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s*, i32)*, %struct.gx_page_queue_s*, i32, %struct.gx_device_printer_s*, i32, i32, %struct.bg_print_s, i32, %struct.gx_saved_pages_list_s*, %struct.gx_device_procs_s, %struct.gx_device_procs_s, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, float, float, float, float, float, float, void (%struct.gx_device_printer_s*, i32, %struct._IO_FILE*)*, void (%struct.gx_device_printer_s*, %struct.ptr_arrays*, %struct.misc_struct*, %struct.error_val_field*, %struct.Gamma*, %struct._IO_FILE*)*, void (%struct.gx_device_printer_s*, %struct._IO_FILE*)* }
%struct.gx_device_colour_prn = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [11240 x i8], %struct.gx_printer_device_procs_s, [4096 x i8], i32, i32, i32, i32, i32, i32, %struct._IO_FILE*, i64, i8*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s*, i32)*, %struct.gx_page_queue_s*, i32, %struct.gx_device_printer_s*, i32, i32, %struct.bg_print_s, i32, %struct.gx_saved_pages_list_s*, %struct.gx_device_procs_s, %struct.gx_device_procs_s, i32, i32, i32 }

@cdj670_procs = internal constant %struct.gx_device_procs_s { i32 (%struct.gx_device_s*)* @hp_colour_open, void (%struct.gx_device_s*, %struct.gs_matrix_s*)* @gx_default_get_initial_matrix, i32 (%struct.gx_device_s*)* @gx_default_sync_output, i32 (%struct.gx_device_s*, i32, i32)* @gdev_prn_output_page, i32 (%struct.gx_device_s*)* @gdev_prn_close, i64 (%struct.gx_device_s*, i16*)* null, i32 (%struct.gx_device_s*, i64, i16*)* @gdev_cmyk_map_color_rgb, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* null, i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* null, i32 (%struct.gx_device_s*, i32, i8*, i8**)* @gx_default_get_bits, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @cdj850_get_params, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @cdj850_put_params, i64 (%struct.gx_device_s*, i16*)* @gdev_cmyk_map_cmyk_color, %struct.gx_xfont_procs_s* (%struct.gx_device_s*)* null, %struct.gx_device_s* (%struct.gx_device_s*)* null, i64 (%struct.gx_device_s*, i16, i16, i16, i16)* null, %struct.gx_device_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)* null, i32 (%struct.gx_device_s*, i32, i32*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* null, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)* null, i32 (%struct.gx_device_s*, i64, i16*)* null, i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)* null, i32 (%struct.gx_device_s*, %struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_transparency_group_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gx_transparency_mask_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32)* null, i64 (%struct.gx_device_s*, i16*)* null, i32 (%struct.gx_device_s*, i64, i16*)* null, i32 (%struct.gx_device_s*, i64, %struct.gs_pattern1_instance_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* null, %struct.gs_devn_params_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i8*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)* null, void (%struct.gx_device_s*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_process_page_options_s*)* null }, align 8
@.str = private unnamed_addr constant [7 x i8] c"cdj670\00", align 1
@st_device_printer = external constant %struct.gs_memory_struct_type_s, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"DeviceCMYK\00", align 1
@gs_cdj670_device = constant { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [11240 x i8], { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* }, [4096 x i8], i32, i32, i32, i32, i32, i32, %struct._IO_FILE*, i64, i8*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s*, i32)*, %struct.gx_page_queue_s*, i32, %struct.gx_device_printer_s*, i32, i32, %struct.bg_print_s, i32, %struct.gx_saved_pages_list_s*, %struct.gx_device_procs_s, %struct.gx_device_procs_s, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, float, float, float, float, float, float, void (%struct.gx_device_printer_s*, i32, %struct._IO_FILE*)*, void (%struct.gx_device_printer_s*, %struct.ptr_arrays*, %struct.misc_struct*, %struct.error_val_field*, %struct.Gamma*, %struct._IO_FILE*)*, void (%struct.gx_device_printer_s*, %struct._IO_FILE*)* } { i32 18560, %struct.gx_device_procs_s* @cdj670_procs, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), %struct.gs_memory_s* null, %struct.gs_memory_struct_type_s* @st_device_printer, i32 0, void (%struct.gx_device_s*)* null, %struct.rc_header_s zeroinitializer, i32 0, i32 0, i32 0, %struct.gx_device_color_info_s { i32 4, i32 4, i32 0, i16 32, i8 3, i32 255, i32 255, i32 5, i32 5, %struct.gx_device_anti_alias_info_s { i32 1, i32 1 }, i32 -1, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [64 x i64] zeroinitializer, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 -1, i64 0, i32 0 }, %struct.gx_device_cached_colors_s { i64 -1, i64 -1 }, i32 5100, i32 6600, i32 0, i32 0, i32 0, i32 0, [2 x float] [float 6.120000e+02, float 7.920000e+02], [4 x float] zeroinitializer, i32 0, [2 x float] [float 6.000000e+02, float 6.000000e+02], [2 x float] [float 6.000000e+02, float 6.000000e+02], [2 x float] zeroinitializer, [4 x float] zeroinitializer, i64 0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, %struct.gx_stroked_gradient_recognizer_s zeroinitializer, i32 0, i32 0, %struct.gdev_space_params_s { i64 10000000, i64 4000000, %struct.gx_band_params_s zeroinitializer, i32 0, i32 0 }, %struct.cmm_dev_profile_s* null, i32 0, %struct.gx_page_device_procs_s { i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_install, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_begin_page, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* @gx_default_end_page }, %struct.gx_device_procs_s zeroinitializer, [11240 x i8] zeroinitializer, { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* } { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)* @cdj850_print_page, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_print_page_copies, %struct.gx_device_buf_procs_s { i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, %struct.gx_render_plane_s*, %struct.gs_memory_s*, %struct.gx_colors_usage_s*)* @gx_default_create_buf_device, i32 (%struct.gx_device_buf_space_s*, %struct.gx_device_s*, %struct.gx_render_plane_s*, i32, i32)* @gx_default_size_buf_device, i32 (%struct.gx_device_s*, i8*, i32, i8**, i32, i32, i32)* @gx_default_setup_buf_device, void (%struct.gx_device_s*)* @gx_default_destroy_buf_device }, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)* @gx_default_get_space_params, i32 (%struct.gdev_prn_start_render_params_s*)* @gx_default_start_render_thread, i32 (%struct.gx_device_printer_s*)* @gx_default_open_render_device, i32 (%struct.gx_device_printer_s*)* @gx_default_close_render_device, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_buffer_page }, [4096 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 -1, i32 0, %struct._IO_FILE* null, i64 0, i8* null, %struct.gs_memory_s* null, %struct.gs_memory_s* null, i32 (%struct.gx_device_s*, i32)* null, %struct.gx_page_queue_s* null, i32 0, %struct.gx_device_printer_s* null, i32 0, i32 0, %struct.bg_print_s zeroinitializer, i32 0, %struct.gx_saved_pages_list_s* null, %struct.gx_device_procs_s zeroinitializer, %struct.gx_device_procs_s zeroinitializer, i32 1, i32 32, i32 0, i32 1, i32 0, i32 2, i32 0, i32 0, i32 0, i32 9, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, void (%struct.gx_device_printer_s*, i32, %struct._IO_FILE*)* @cdj850_start_raster_mode, void (%struct.gx_device_printer_s*, %struct.ptr_arrays*, %struct.misc_struct*, %struct.error_val_field*, %struct.Gamma*, %struct._IO_FILE*)* @cdj850_print_non_blank_lines, void (%struct.gx_device_printer_s*, %struct._IO_FILE*)* @cdj850_terminate_page }, align 8
@cdj850_procs = internal constant %struct.gx_device_procs_s { i32 (%struct.gx_device_s*)* @hp_colour_open, void (%struct.gx_device_s*, %struct.gs_matrix_s*)* @gx_default_get_initial_matrix, i32 (%struct.gx_device_s*)* @gx_default_sync_output, i32 (%struct.gx_device_s*, i32, i32)* @gdev_prn_output_page, i32 (%struct.gx_device_s*)* @gdev_prn_close, i64 (%struct.gx_device_s*, i16*)* null, i32 (%struct.gx_device_s*, i64, i16*)* @gdev_cmyk_map_color_rgb, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* null, i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* null, i32 (%struct.gx_device_s*, i32, i8*, i8**)* @gx_default_get_bits, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @cdj850_get_params, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @cdj850_put_params, i64 (%struct.gx_device_s*, i16*)* @gdev_cmyk_map_cmyk_color, %struct.gx_xfont_procs_s* (%struct.gx_device_s*)* null, %struct.gx_device_s* (%struct.gx_device_s*)* null, i64 (%struct.gx_device_s*, i16, i16, i16, i16)* null, %struct.gx_device_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)* null, i32 (%struct.gx_device_s*, i32, i32*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* null, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)* null, i32 (%struct.gx_device_s*, i64, i16*)* null, i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)* null, i32 (%struct.gx_device_s*, %struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_transparency_group_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gx_transparency_mask_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32)* null, i64 (%struct.gx_device_s*, i16*)* null, i32 (%struct.gx_device_s*, i64, i16*)* null, i32 (%struct.gx_device_s*, i64, %struct.gs_pattern1_instance_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* null, %struct.gs_devn_params_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i8*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)* null, void (%struct.gx_device_s*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_process_page_options_s*)* null }, align 8
@.str.2 = private unnamed_addr constant [7 x i8] c"cdj850\00", align 1
@gs_cdj850_device = constant { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [11240 x i8], { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* }, [4096 x i8], i32, i32, i32, i32, i32, i32, %struct._IO_FILE*, i64, i8*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s*, i32)*, %struct.gx_page_queue_s*, i32, %struct.gx_device_printer_s*, i32, i32, %struct.bg_print_s, i32, %struct.gx_saved_pages_list_s*, %struct.gx_device_procs_s, %struct.gx_device_procs_s, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, float, float, float, float, float, float, void (%struct.gx_device_printer_s*, i32, %struct._IO_FILE*)*, void (%struct.gx_device_printer_s*, %struct.ptr_arrays*, %struct.misc_struct*, %struct.error_val_field*, %struct.Gamma*, %struct._IO_FILE*)*, void (%struct.gx_device_printer_s*, %struct._IO_FILE*)* } { i32 18560, %struct.gx_device_procs_s* @cdj850_procs, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), %struct.gs_memory_s* null, %struct.gs_memory_struct_type_s* @st_device_printer, i32 0, void (%struct.gx_device_s*)* null, %struct.rc_header_s zeroinitializer, i32 0, i32 0, i32 0, %struct.gx_device_color_info_s { i32 4, i32 4, i32 0, i16 32, i8 3, i32 255, i32 255, i32 5, i32 5, %struct.gx_device_anti_alias_info_s { i32 1, i32 1 }, i32 -1, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [64 x i64] zeroinitializer, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 -1, i64 0, i32 0 }, %struct.gx_device_cached_colors_s { i64 -1, i64 -1 }, i32 5100, i32 6600, i32 0, i32 0, i32 0, i32 0, [2 x float] [float 6.120000e+02, float 7.920000e+02], [4 x float] zeroinitializer, i32 0, [2 x float] [float 6.000000e+02, float 6.000000e+02], [2 x float] [float 6.000000e+02, float 6.000000e+02], [2 x float] zeroinitializer, [4 x float] zeroinitializer, i64 0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, %struct.gx_stroked_gradient_recognizer_s zeroinitializer, i32 0, i32 0, %struct.gdev_space_params_s { i64 10000000, i64 4000000, %struct.gx_band_params_s zeroinitializer, i32 0, i32 0 }, %struct.cmm_dev_profile_s* null, i32 0, %struct.gx_page_device_procs_s { i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_install, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_begin_page, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* @gx_default_end_page }, %struct.gx_device_procs_s zeroinitializer, [11240 x i8] zeroinitializer, { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* } { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)* @cdj850_print_page, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_print_page_copies, %struct.gx_device_buf_procs_s { i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, %struct.gx_render_plane_s*, %struct.gs_memory_s*, %struct.gx_colors_usage_s*)* @gx_default_create_buf_device, i32 (%struct.gx_device_buf_space_s*, %struct.gx_device_s*, %struct.gx_render_plane_s*, i32, i32)* @gx_default_size_buf_device, i32 (%struct.gx_device_s*, i8*, i32, i8**, i32, i32, i32)* @gx_default_setup_buf_device, void (%struct.gx_device_s*)* @gx_default_destroy_buf_device }, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)* @gx_default_get_space_params, i32 (%struct.gdev_prn_start_render_params_s*)* @gx_default_start_render_thread, i32 (%struct.gx_device_printer_s*)* @gx_default_open_render_device, i32 (%struct.gx_device_printer_s*)* @gx_default_close_render_device, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_buffer_page }, [4096 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 -1, i32 0, %struct._IO_FILE* null, i64 0, i8* null, %struct.gs_memory_s* null, %struct.gs_memory_s* null, i32 (%struct.gx_device_s*, i32)* null, %struct.gx_page_queue_s* null, i32 0, %struct.gx_device_printer_s* null, i32 0, i32 0, %struct.bg_print_s zeroinitializer, i32 0, %struct.gx_saved_pages_list_s* null, %struct.gx_device_procs_s zeroinitializer, %struct.gx_device_procs_s zeroinitializer, i32 1, i32 32, i32 0, i32 1, i32 0, i32 4, i32 0, i32 0, i32 1, i32 9, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, void (%struct.gx_device_printer_s*, i32, %struct._IO_FILE*)* @cdj850_start_raster_mode, void (%struct.gx_device_printer_s*, %struct.ptr_arrays*, %struct.misc_struct*, %struct.error_val_field*, %struct.Gamma*, %struct._IO_FILE*)* @cdj850_print_non_blank_lines, void (%struct.gx_device_printer_s*, %struct._IO_FILE*)* @cdj850_terminate_page }, align 8
@cdj880_procs = internal constant %struct.gx_device_procs_s { i32 (%struct.gx_device_s*)* @hp_colour_open, void (%struct.gx_device_s*, %struct.gs_matrix_s*)* @gx_default_get_initial_matrix, i32 (%struct.gx_device_s*)* @gx_default_sync_output, i32 (%struct.gx_device_s*, i32, i32)* @gdev_prn_output_page, i32 (%struct.gx_device_s*)* @gdev_prn_close, i64 (%struct.gx_device_s*, i16*)* null, i32 (%struct.gx_device_s*, i64, i16*)* @gdev_cmyk_map_color_rgb, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* null, i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* null, i32 (%struct.gx_device_s*, i32, i8*, i8**)* @gx_default_get_bits, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @cdj850_get_params, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @cdj850_put_params, i64 (%struct.gx_device_s*, i16*)* @gdev_cmyk_map_cmyk_color, %struct.gx_xfont_procs_s* (%struct.gx_device_s*)* null, %struct.gx_device_s* (%struct.gx_device_s*)* null, i64 (%struct.gx_device_s*, i16, i16, i16, i16)* null, %struct.gx_device_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)* null, i32 (%struct.gx_device_s*, i32, i32*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* null, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)* null, i32 (%struct.gx_device_s*, i64, i16*)* null, i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)* null, i32 (%struct.gx_device_s*, %struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_transparency_group_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gx_transparency_mask_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32)* null, i64 (%struct.gx_device_s*, i16*)* null, i32 (%struct.gx_device_s*, i64, i16*)* null, i32 (%struct.gx_device_s*, i64, %struct.gs_pattern1_instance_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* null, %struct.gs_devn_params_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i8*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)* null, void (%struct.gx_device_s*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_process_page_options_s*)* null }, align 8
@.str.3 = private unnamed_addr constant [7 x i8] c"cdj880\00", align 1
@gs_cdj880_device = constant { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [11240 x i8], { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* }, [4096 x i8], i32, i32, i32, i32, i32, i32, %struct._IO_FILE*, i64, i8*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s*, i32)*, %struct.gx_page_queue_s*, i32, %struct.gx_device_printer_s*, i32, i32, %struct.bg_print_s, i32, %struct.gx_saved_pages_list_s*, %struct.gx_device_procs_s, %struct.gx_device_procs_s, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, float, float, float, float, float, float, void (%struct.gx_device_printer_s*, i32, %struct._IO_FILE*)*, void (%struct.gx_device_printer_s*, %struct.ptr_arrays*, %struct.misc_struct*, %struct.error_val_field*, %struct.Gamma*, %struct._IO_FILE*)*, void (%struct.gx_device_printer_s*, %struct._IO_FILE*)* } { i32 18560, %struct.gx_device_procs_s* @cdj880_procs, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), %struct.gs_memory_s* null, %struct.gs_memory_struct_type_s* @st_device_printer, i32 0, void (%struct.gx_device_s*)* null, %struct.rc_header_s zeroinitializer, i32 0, i32 0, i32 0, %struct.gx_device_color_info_s { i32 4, i32 4, i32 0, i16 32, i8 3, i32 255, i32 255, i32 5, i32 5, %struct.gx_device_anti_alias_info_s { i32 1, i32 1 }, i32 -1, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [64 x i64] zeroinitializer, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 -1, i64 0, i32 0 }, %struct.gx_device_cached_colors_s { i64 -1, i64 -1 }, i32 5100, i32 6600, i32 0, i32 0, i32 0, i32 0, [2 x float] [float 6.120000e+02, float 7.920000e+02], [4 x float] zeroinitializer, i32 0, [2 x float] [float 6.000000e+02, float 6.000000e+02], [2 x float] [float 6.000000e+02, float 6.000000e+02], [2 x float] zeroinitializer, [4 x float] zeroinitializer, i64 0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, %struct.gx_stroked_gradient_recognizer_s zeroinitializer, i32 0, i32 0, %struct.gdev_space_params_s { i64 10000000, i64 4000000, %struct.gx_band_params_s zeroinitializer, i32 0, i32 0 }, %struct.cmm_dev_profile_s* null, i32 0, %struct.gx_page_device_procs_s { i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_install, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_begin_page, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* @gx_default_end_page }, %struct.gx_device_procs_s zeroinitializer, [11240 x i8] zeroinitializer, { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* } { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)* @cdj850_print_page, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_print_page_copies, %struct.gx_device_buf_procs_s { i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, %struct.gx_render_plane_s*, %struct.gs_memory_s*, %struct.gx_colors_usage_s*)* @gx_default_create_buf_device, i32 (%struct.gx_device_buf_space_s*, %struct.gx_device_s*, %struct.gx_render_plane_s*, i32, i32)* @gx_default_size_buf_device, i32 (%struct.gx_device_s*, i8*, i32, i8**, i32, i32, i32)* @gx_default_setup_buf_device, void (%struct.gx_device_s*)* @gx_default_destroy_buf_device }, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)* @gx_default_get_space_params, i32 (%struct.gdev_prn_start_render_params_s*)* @gx_default_start_render_thread, i32 (%struct.gx_device_printer_s*)* @gx_default_open_render_device, i32 (%struct.gx_device_printer_s*)* @gx_default_close_render_device, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_buffer_page }, [4096 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 -1, i32 0, %struct._IO_FILE* null, i64 0, i8* null, %struct.gs_memory_s* null, %struct.gs_memory_s* null, i32 (%struct.gx_device_s*, i32)* null, %struct.gx_page_queue_s* null, i32 0, %struct.gx_device_printer_s* null, i32 0, i32 0, %struct.bg_print_s zeroinitializer, i32 0, %struct.gx_saved_pages_list_s* null, %struct.gx_device_procs_s zeroinitializer, %struct.gx_device_procs_s zeroinitializer, i32 1, i32 32, i32 0, i32 1, i32 0, i32 4, i32 0, i32 0, i32 2, i32 2, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, void (%struct.gx_device_printer_s*, i32, %struct._IO_FILE*)* @cdj880_start_raster_mode, void (%struct.gx_device_printer_s*, %struct.ptr_arrays*, %struct.misc_struct*, %struct.error_val_field*, %struct.Gamma*, %struct._IO_FILE*)* @cdj880_print_non_blank_lines, void (%struct.gx_device_printer_s*, %struct._IO_FILE*)* @cdj880_terminate_page }, align 8
@cdj890_procs = internal constant %struct.gx_device_procs_s { i32 (%struct.gx_device_s*)* @hp_colour_open, void (%struct.gx_device_s*, %struct.gs_matrix_s*)* @gx_default_get_initial_matrix, i32 (%struct.gx_device_s*)* @gx_default_sync_output, i32 (%struct.gx_device_s*, i32, i32)* @gdev_prn_output_page, i32 (%struct.gx_device_s*)* @gdev_prn_close, i64 (%struct.gx_device_s*, i16*)* null, i32 (%struct.gx_device_s*, i64, i16*)* @gdev_cmyk_map_color_rgb, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* null, i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* null, i32 (%struct.gx_device_s*, i32, i8*, i8**)* @gx_default_get_bits, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @cdj850_get_params, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @cdj850_put_params, i64 (%struct.gx_device_s*, i16*)* @gdev_cmyk_map_cmyk_color, %struct.gx_xfont_procs_s* (%struct.gx_device_s*)* null, %struct.gx_device_s* (%struct.gx_device_s*)* null, i64 (%struct.gx_device_s*, i16, i16, i16, i16)* null, %struct.gx_device_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)* null, i32 (%struct.gx_device_s*, i32, i32*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* null, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)* null, i32 (%struct.gx_device_s*, i64, i16*)* null, i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)* null, i32 (%struct.gx_device_s*, %struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_transparency_group_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gx_transparency_mask_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32)* null, i64 (%struct.gx_device_s*, i16*)* null, i32 (%struct.gx_device_s*, i64, i16*)* null, i32 (%struct.gx_device_s*, i64, %struct.gs_pattern1_instance_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* null, %struct.gs_devn_params_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i8*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)* null, void (%struct.gx_device_s*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_process_page_options_s*)* null }, align 8
@.str.4 = private unnamed_addr constant [7 x i8] c"cdj890\00", align 1
@gs_cdj890_device = constant { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [11240 x i8], { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* }, [4096 x i8], i32, i32, i32, i32, i32, i32, %struct._IO_FILE*, i64, i8*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s*, i32)*, %struct.gx_page_queue_s*, i32, %struct.gx_device_printer_s*, i32, i32, %struct.bg_print_s, i32, %struct.gx_saved_pages_list_s*, %struct.gx_device_procs_s, %struct.gx_device_procs_s, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, float, float, float, float, float, float, void (%struct.gx_device_printer_s*, i32, %struct._IO_FILE*)*, void (%struct.gx_device_printer_s*, %struct.ptr_arrays*, %struct.misc_struct*, %struct.error_val_field*, %struct.Gamma*, %struct._IO_FILE*)*, void (%struct.gx_device_printer_s*, %struct._IO_FILE*)* } { i32 18560, %struct.gx_device_procs_s* @cdj890_procs, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), %struct.gs_memory_s* null, %struct.gs_memory_struct_type_s* @st_device_printer, i32 0, void (%struct.gx_device_s*)* null, %struct.rc_header_s zeroinitializer, i32 0, i32 0, i32 0, %struct.gx_device_color_info_s { i32 4, i32 4, i32 0, i16 32, i8 3, i32 255, i32 255, i32 5, i32 5, %struct.gx_device_anti_alias_info_s { i32 1, i32 1 }, i32 -1, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [64 x i64] zeroinitializer, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 -1, i64 0, i32 0 }, %struct.gx_device_cached_colors_s { i64 -1, i64 -1 }, i32 5100, i32 6600, i32 0, i32 0, i32 0, i32 0, [2 x float] [float 6.120000e+02, float 7.920000e+02], [4 x float] zeroinitializer, i32 0, [2 x float] [float 6.000000e+02, float 6.000000e+02], [2 x float] [float 6.000000e+02, float 6.000000e+02], [2 x float] zeroinitializer, [4 x float] zeroinitializer, i64 0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, %struct.gx_stroked_gradient_recognizer_s zeroinitializer, i32 0, i32 0, %struct.gdev_space_params_s { i64 10000000, i64 4000000, %struct.gx_band_params_s zeroinitializer, i32 0, i32 0 }, %struct.cmm_dev_profile_s* null, i32 0, %struct.gx_page_device_procs_s { i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_install, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_begin_page, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* @gx_default_end_page }, %struct.gx_device_procs_s zeroinitializer, [11240 x i8] zeroinitializer, { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* } { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)* @cdj850_print_page, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_print_page_copies, %struct.gx_device_buf_procs_s { i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, %struct.gx_render_plane_s*, %struct.gs_memory_s*, %struct.gx_colors_usage_s*)* @gx_default_create_buf_device, i32 (%struct.gx_device_buf_space_s*, %struct.gx_device_s*, %struct.gx_render_plane_s*, i32, i32)* @gx_default_size_buf_device, i32 (%struct.gx_device_s*, i8*, i32, i8**, i32, i32, i32)* @gx_default_setup_buf_device, void (%struct.gx_device_s*)* @gx_default_destroy_buf_device }, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)* @gx_default_get_space_params, i32 (%struct.gdev_prn_start_render_params_s*)* @gx_default_start_render_thread, i32 (%struct.gx_device_printer_s*)* @gx_default_open_render_device, i32 (%struct.gx_device_printer_s*)* @gx_default_close_render_device, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_buffer_page }, [4096 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 -1, i32 0, %struct._IO_FILE* null, i64 0, i8* null, %struct.gs_memory_s* null, %struct.gs_memory_s* null, i32 (%struct.gx_device_s*, i32)* null, %struct.gx_page_queue_s* null, i32 0, %struct.gx_device_printer_s* null, i32 0, i32 0, %struct.bg_print_s zeroinitializer, i32 0, %struct.gx_saved_pages_list_s* null, %struct.gx_device_procs_s zeroinitializer, %struct.gx_device_procs_s zeroinitializer, i32 1, i32 32, i32 0, i32 1, i32 0, i32 4, i32 0, i32 0, i32 3, i32 9, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, void (%struct.gx_device_printer_s*, i32, %struct._IO_FILE*)* @cdj850_start_raster_mode, void (%struct.gx_device_printer_s*, %struct.ptr_arrays*, %struct.misc_struct*, %struct.error_val_field*, %struct.Gamma*, %struct._IO_FILE*)* @cdj850_print_non_blank_lines, void (%struct.gx_device_printer_s*, %struct._IO_FILE*)* @cdj850_terminate_page }, align 8
@cdj1600_procs = internal constant %struct.gx_device_procs_s { i32 (%struct.gx_device_s*)* @hp_colour_open, void (%struct.gx_device_s*, %struct.gs_matrix_s*)* @gx_default_get_initial_matrix, i32 (%struct.gx_device_s*)* @gx_default_sync_output, i32 (%struct.gx_device_s*, i32, i32)* @gdev_prn_output_page, i32 (%struct.gx_device_s*)* @gdev_prn_close, i64 (%struct.gx_device_s*, i16*)* @gdev_pcl_map_rgb_color, i32 (%struct.gx_device_s*, i64, i16*)* @gdev_pcl_map_color_rgb, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* null, i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* null, i32 (%struct.gx_device_s*, i32, i8*, i8**)* @gx_default_get_bits, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @cdj850_get_params, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @cdj850_put_params, i64 (%struct.gx_device_s*, i16*)* null, %struct.gx_xfont_procs_s* (%struct.gx_device_s*)* null, %struct.gx_device_s* (%struct.gx_device_s*)* null, i64 (%struct.gx_device_s*, i16, i16, i16, i16)* null, %struct.gx_device_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)* null, i32 (%struct.gx_device_s*, i32, i32*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* null, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)* null, i32 (%struct.gx_device_s*, i64, i16*)* null, i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)* null, i32 (%struct.gx_device_s*, %struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_transparency_group_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gx_transparency_mask_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32)* null, i64 (%struct.gx_device_s*, i16*)* null, i32 (%struct.gx_device_s*, i64, i16*)* null, i32 (%struct.gx_device_s*, i64, %struct.gs_pattern1_instance_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* null, %struct.gs_devn_params_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i8*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)* null, void (%struct.gx_device_s*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_process_page_options_s*)* null }, align 8
@.str.5 = private unnamed_addr constant [8 x i8] c"cdj1600\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"DeviceRGB\00", align 1
@gs_cdj1600_device = constant { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [11240 x i8], { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* }, [4096 x i8], i32, i32, i32, i32, i32, i32, %struct._IO_FILE*, i64, i8*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s*, i32)*, %struct.gx_page_queue_s*, i32, %struct.gx_device_printer_s*, i32, i32, %struct.bg_print_s, i32, %struct.gx_saved_pages_list_s*, %struct.gx_device_procs_s, %struct.gx_device_procs_s, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, float, float, float, float, float, float, void (%struct.gx_device_printer_s*, i32, %struct._IO_FILE*)*, void (%struct.gx_device_printer_s*, %struct.ptr_arrays*, %struct.misc_struct*, %struct.error_val_field*, %struct.Gamma*, %struct._IO_FILE*)*, void (%struct.gx_device_printer_s*, %struct._IO_FILE*)* } { i32 18560, %struct.gx_device_procs_s* @cdj1600_procs, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), %struct.gs_memory_s* null, %struct.gs_memory_struct_type_s* @st_device_printer, i32 0, void (%struct.gx_device_s*)* null, %struct.rc_header_s zeroinitializer, i32 0, i32 0, i32 0, %struct.gx_device_color_info_s { i32 3, i32 3, i32 1, i16 24, i8 -1, i32 255, i32 255, i32 5, i32 5, %struct.gx_device_anti_alias_info_s { i32 1, i32 1 }, i32 -1, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [64 x i64] zeroinitializer, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i32 0, i32 0), i32 -1, i64 0, i32 0 }, %struct.gx_device_cached_colors_s { i64 -1, i64 -1 }, i32 2550, i32 3300, i32 0, i32 0, i32 0, i32 0, [2 x float] [float 6.120000e+02, float 7.920000e+02], [4 x float] zeroinitializer, i32 0, [2 x float] [float 3.000000e+02, float 3.000000e+02], [2 x float] [float 3.000000e+02, float 3.000000e+02], [2 x float] zeroinitializer, [4 x float] zeroinitializer, i64 0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, %struct.gx_stroked_gradient_recognizer_s zeroinitializer, i32 0, i32 0, %struct.gdev_space_params_s { i64 10000000, i64 4000000, %struct.gx_band_params_s zeroinitializer, i32 0, i32 0 }, %struct.cmm_dev_profile_s* null, i32 0, %struct.gx_page_device_procs_s { i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_install, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_begin_page, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* @gx_default_end_page }, %struct.gx_device_procs_s zeroinitializer, [11240 x i8] zeroinitializer, { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* } { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)* @cdj850_print_page, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_print_page_copies, %struct.gx_device_buf_procs_s { i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, %struct.gx_render_plane_s*, %struct.gs_memory_s*, %struct.gx_colors_usage_s*)* @gx_default_create_buf_device, i32 (%struct.gx_device_buf_space_s*, %struct.gx_device_s*, %struct.gx_render_plane_s*, i32, i32)* @gx_default_size_buf_device, i32 (%struct.gx_device_s*, i8*, i32, i8**, i32, i32, i32)* @gx_default_setup_buf_device, void (%struct.gx_device_s*)* @gx_default_destroy_buf_device }, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)* @gx_default_get_space_params, i32 (%struct.gdev_prn_start_render_params_s*)* @gx_default_start_render_thread, i32 (%struct.gx_device_printer_s*)* @gx_default_open_render_device, i32 (%struct.gx_device_printer_s*)* @gx_default_close_render_device, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_buffer_page }, [4096 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 -1, i32 0, %struct._IO_FILE* null, i64 0, i8* null, %struct.gs_memory_s* null, %struct.gs_memory_s* null, i32 (%struct.gx_device_s*, i32)* null, %struct.gx_page_queue_s* null, i32 0, %struct.gx_device_printer_s* null, i32 0, i32 0, %struct.bg_print_s zeroinitializer, i32 0, %struct.gx_saved_pages_list_s* null, %struct.gx_device_procs_s zeroinitializer, %struct.gx_device_procs_s zeroinitializer, i32 -1, i32 24, i32 0, i32 1, i32 0, i32 2, i32 0, i32 0, i32 4, i32 3, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, void (%struct.gx_device_printer_s*, i32, %struct._IO_FILE*)* @cdj1600_start_raster_mode, void (%struct.gx_device_printer_s*, %struct.ptr_arrays*, %struct.misc_struct*, %struct.error_val_field*, %struct.Gamma*, %struct._IO_FILE*)* @cdj1600_print_non_blank_lines, void (%struct.gx_device_printer_s*, %struct._IO_FILE*)* @cdj1600_terminate_page }, align 8
@chp2200_procs = internal constant %struct.gx_device_procs_s { i32 (%struct.gx_device_s*)* @hp_colour_open, void (%struct.gx_device_s*, %struct.gs_matrix_s*)* @gx_default_get_initial_matrix, i32 (%struct.gx_device_s*)* @gx_default_sync_output, i32 (%struct.gx_device_s*, i32, i32)* @gdev_prn_output_page, i32 (%struct.gx_device_s*)* @gdev_prn_close, i64 (%struct.gx_device_s*, i16*)* @gx_default_rgb_map_rgb_color, i32 (%struct.gx_device_s*, i64, i16*)* @gx_default_rgb_map_color_rgb, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* null, i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* null, i32 (%struct.gx_device_s*, i32, i8*, i8**)* @gx_default_get_bits, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @cdj850_get_params, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @cdj850_put_params, i64 (%struct.gx_device_s*, i16*)* null, %struct.gx_xfont_procs_s* (%struct.gx_device_s*)* null, %struct.gx_device_s* (%struct.gx_device_s*)* null, i64 (%struct.gx_device_s*, i16, i16, i16, i16)* null, %struct.gx_device_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)* null, i32 (%struct.gx_device_s*, i32, i32*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* null, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)* null, i32 (%struct.gx_device_s*, i64, i16*)* null, i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)* null, i32 (%struct.gx_device_s*, %struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_transparency_group_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gx_transparency_mask_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32)* null, i64 (%struct.gx_device_s*, i16*)* null, i32 (%struct.gx_device_s*, i64, i16*)* null, i32 (%struct.gx_device_s*, i64, %struct.gs_pattern1_instance_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* null, %struct.gs_devn_params_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i8*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)* null, void (%struct.gx_device_s*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_process_page_options_s*)* null }, align 8
@.str.7 = private unnamed_addr constant [8 x i8] c"chp2200\00", align 1
@gs_chp2200_device = constant { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [11240 x i8], { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* }, [4096 x i8], i32, i32, i32, i32, i32, i32, %struct._IO_FILE*, i64, i8*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s*, i32)*, %struct.gx_page_queue_s*, i32, %struct.gx_device_printer_s*, i32, i32, %struct.bg_print_s, i32, %struct.gx_saved_pages_list_s*, %struct.gx_device_procs_s, %struct.gx_device_procs_s, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, float, float, float, float, float, float, void (%struct.gx_device_printer_s*, i32, %struct._IO_FILE*)*, void (%struct.gx_device_printer_s*, %struct.ptr_arrays*, %struct.misc_struct*, %struct.error_val_field*, %struct.Gamma*, %struct._IO_FILE*)*, void (%struct.gx_device_printer_s*, %struct._IO_FILE*)* } { i32 18560, %struct.gx_device_procs_s* @chp2200_procs, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i32 0), %struct.gs_memory_s* null, %struct.gs_memory_struct_type_s* @st_device_printer, i32 0, void (%struct.gx_device_s*)* null, %struct.rc_header_s zeroinitializer, i32 0, i32 0, i32 0, %struct.gx_device_color_info_s { i32 3, i32 3, i32 1, i16 24, i8 -1, i32 255, i32 255, i32 256, i32 256, %struct.gx_device_anti_alias_info_s { i32 1, i32 1 }, i32 -1, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [64 x i64] zeroinitializer, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i32 0, i32 0), i32 -1, i64 0, i32 0 }, %struct.gx_device_cached_colors_s { i64 -1, i64 -1 }, i32 2550, i32 3300, i32 0, i32 0, i32 0, i32 0, [2 x float] [float 6.120000e+02, float 7.920000e+02], [4 x float] zeroinitializer, i32 0, [2 x float] [float 3.000000e+02, float 3.000000e+02], [2 x float] [float 3.000000e+02, float 3.000000e+02], [2 x float] zeroinitializer, [4 x float] zeroinitializer, i64 0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, %struct.gx_stroked_gradient_recognizer_s zeroinitializer, i32 0, i32 0, %struct.gdev_space_params_s { i64 10000000, i64 4000000, %struct.gx_band_params_s zeroinitializer, i32 0, i32 0 }, %struct.cmm_dev_profile_s* null, i32 0, %struct.gx_page_device_procs_s { i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_install, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_begin_page, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* @gx_default_end_page }, %struct.gx_device_procs_s zeroinitializer, [11240 x i8] zeroinitializer, { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* } { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)* @chp2200_print_page, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_print_page_copies, %struct.gx_device_buf_procs_s { i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, %struct.gx_render_plane_s*, %struct.gs_memory_s*, %struct.gx_colors_usage_s*)* @gx_default_create_buf_device, i32 (%struct.gx_device_buf_space_s*, %struct.gx_device_s*, %struct.gx_render_plane_s*, i32, i32)* @gx_default_size_buf_device, i32 (%struct.gx_device_s*, i8*, i32, i8**, i32, i32, i32)* @gx_default_setup_buf_device, void (%struct.gx_device_s*)* @gx_default_destroy_buf_device }, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)* @gx_default_get_space_params, i32 (%struct.gdev_prn_start_render_params_s*)* @gx_default_start_render_thread, i32 (%struct.gx_device_printer_s*)* @gx_default_open_render_device, i32 (%struct.gx_device_printer_s*)* @gx_default_close_render_device, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_buffer_page }, [4096 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 -1, i32 0, %struct._IO_FILE* null, i64 0, i8* null, %struct.gs_memory_s* null, %struct.gs_memory_s* null, i32 (%struct.gx_device_s*, i32)* null, %struct.gx_page_queue_s* null, i32 0, %struct.gx_device_printer_s* null, i32 0, i32 0, %struct.bg_print_s zeroinitializer, i32 0, %struct.gx_saved_pages_list_s* null, %struct.gx_device_procs_s zeroinitializer, %struct.gx_device_procs_s zeroinitializer, i32 0, i32 24, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 5, i32 10, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, void (%struct.gx_device_printer_s*, i32, %struct._IO_FILE*)* @chp2200_start_raster_mode, void (%struct.gx_device_printer_s*, %struct.ptr_arrays*, %struct.misc_struct*, %struct.error_val_field*, %struct.Gamma*, %struct._IO_FILE*)* null, void (%struct.gx_device_printer_s*, %struct._IO_FILE*)* @chp2200_terminate_page }, align 8
@.str.8 = private unnamed_addr constant [8 x i8] c"cdnj500\00", align 1
@gs_cdnj500_device = constant { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [11240 x i8], { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* }, [4096 x i8], i32, i32, i32, i32, i32, i32, %struct._IO_FILE*, i64, i8*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s*, i32)*, %struct.gx_page_queue_s*, i32, %struct.gx_device_printer_s*, i32, i32, %struct.bg_print_s, i32, %struct.gx_saved_pages_list_s*, %struct.gx_device_procs_s, %struct.gx_device_procs_s, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, float, float, float, float, float, float, void (%struct.gx_device_printer_s*, i32, %struct._IO_FILE*)*, void (%struct.gx_device_printer_s*, %struct.ptr_arrays*, %struct.misc_struct*, %struct.error_val_field*, %struct.Gamma*, %struct._IO_FILE*)*, void (%struct.gx_device_printer_s*, %struct._IO_FILE*)* } { i32 18560, %struct.gx_device_procs_s* @chp2200_procs, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0), %struct.gs_memory_s* null, %struct.gs_memory_struct_type_s* @st_device_printer, i32 0, void (%struct.gx_device_s*)* null, %struct.rc_header_s zeroinitializer, i32 0, i32 0, i32 0, %struct.gx_device_color_info_s { i32 3, i32 3, i32 1, i16 24, i8 -1, i32 255, i32 255, i32 256, i32 256, %struct.gx_device_anti_alias_info_s { i32 1, i32 1 }, i32 -1, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [64 x i64] zeroinitializer, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i32 0, i32 0), i32 -1, i64 0, i32 0 }, %struct.gx_device_cached_colors_s { i64 -1, i64 -1 }, i32 2550, i32 3300, i32 0, i32 0, i32 0, i32 0, [2 x float] [float 6.120000e+02, float 7.920000e+02], [4 x float] zeroinitializer, i32 0, [2 x float] [float 3.000000e+02, float 3.000000e+02], [2 x float] [float 3.000000e+02, float 3.000000e+02], [2 x float] zeroinitializer, [4 x float] zeroinitializer, i64 0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, %struct.gx_stroked_gradient_recognizer_s zeroinitializer, i32 0, i32 0, %struct.gdev_space_params_s { i64 10000000, i64 4000000, %struct.gx_band_params_s zeroinitializer, i32 0, i32 0 }, %struct.cmm_dev_profile_s* null, i32 0, %struct.gx_page_device_procs_s { i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_install, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_begin_page, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* @gx_default_end_page }, %struct.gx_device_procs_s zeroinitializer, [11240 x i8] zeroinitializer, { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* } { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)* @cdnj500_print_page, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_print_page_copies, %struct.gx_device_buf_procs_s { i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, %struct.gx_render_plane_s*, %struct.gs_memory_s*, %struct.gx_colors_usage_s*)* @gx_default_create_buf_device, i32 (%struct.gx_device_buf_space_s*, %struct.gx_device_s*, %struct.gx_render_plane_s*, i32, i32)* @gx_default_size_buf_device, i32 (%struct.gx_device_s*, i8*, i32, i8**, i32, i32, i32)* @gx_default_setup_buf_device, void (%struct.gx_device_s*)* @gx_default_destroy_buf_device }, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)* @gx_default_get_space_params, i32 (%struct.gdev_prn_start_render_params_s*)* @gx_default_start_render_thread, i32 (%struct.gx_device_printer_s*)* @gx_default_open_render_device, i32 (%struct.gx_device_printer_s*)* @gx_default_close_render_device, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_buffer_page }, [4096 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 -1, i32 0, %struct._IO_FILE* null, i64 0, i8* null, %struct.gs_memory_s* null, %struct.gs_memory_s* null, i32 (%struct.gx_device_s*, i32)* null, %struct.gx_page_queue_s* null, i32 0, %struct.gx_device_printer_s* null, i32 0, i32 0, %struct.bg_print_s zeroinitializer, i32 0, %struct.gx_saved_pages_list_s* null, %struct.gx_device_procs_s zeroinitializer, %struct.gx_device_procs_s zeroinitializer, i32 0, i32 24, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 6, i32 10, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, void (%struct.gx_device_printer_s*, i32, %struct._IO_FILE*)* @cdnj500_start_raster_mode, void (%struct.gx_device_printer_s*, %struct.ptr_arrays*, %struct.misc_struct*, %struct.error_val_field*, %struct.Gamma*, %struct._IO_FILE*)* null, void (%struct.gx_device_printer_s*, %struct._IO_FILE*)* @cdnj500_terminate_page }, align 8
@hp_colour_open.dj_a4 = internal constant [4 x float] [float 0x3FC0A3D700000000, float 0x3FDD70A3E0000000, float 0x3FC0A3D700000000, float 0x3FA47AE140000000], align 16
@hp_colour_open.dj_letter = internal constant [4 x float] [float 2.500000e-01, float 5.000000e-01, float 2.500000e-01, float 0x3FC5604180000000], align 16
@hp_colour_open.m_cdj1600 = internal constant [4 x float] [float 2.500000e-01, float 5.000000e-01, float 2.500000e-01, float 5.000000e-01], align 16
@hp_colour_open.chp2200_a4 = internal constant [4 x float] [float 0x3FC0A3D700000000, float 0x3FDD70A3E0000000, float 0x3FC0A3D700000000, float 0x3FB47AE140000000], align 16
@hp_colour_open.chp2200_letter = internal constant [4 x float] [float 2.500000e-01, float 0x3FDD70A3E0000000, float 2.500000e-01, float 0x3FB47AE140000000], align 16
@hp_colour_open.cdnj500 = internal constant [4 x float] zeroinitializer, align 16
@.str.9 = private unnamed_addr constant [8 x i8] c"Quality\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"Papertype\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"MasterGamma\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"GammaValC\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"GammaValM\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"GammaValY\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"GammaValK\00", align 1
@.str.16 = private unnamed_addr constant [13 x i8] c"BlackCorrect\00", align 1
@.str.17 = private unnamed_addr constant [13 x i8] c"BitsPerPixel\00", align 1
@.str.18 = private unnamed_addr constant [18 x i8] c"ProcessColorModel\00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c"0M\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"\1B*rC\1BE\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"\1B&l0H\00", align 1
@.str.22 = private unnamed_addr constant [8 x i8] c"\1B*rC\0C\1BE\00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c"\1B%-12345X\00", align 1
@.str.24 = private unnamed_addr constant [28 x i8] c"\1B%-12345X@PJL EOJ\0A\1B%-12345X\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"\1B*rC\00", align 1
@.str.26 = private unnamed_addr constant [20 x i8] c"\1B%-12345X@PJL EOJ \0A\00", align 1
@gammat = internal constant [5 x %struct.Gamma*] [%struct.Gamma* @gammat850, %struct.Gamma* @gammat850, %struct.Gamma* @gammat850, %struct.Gamma* @gammat890, %struct.Gamma* @gammat850], align 16
@.str.27 = private unnamed_addr constant [18 x i8] c"cdj850_print_page\00", align 1
@.str.28 = private unnamed_addr constant [17 x i8] c"hp850_print_page\00", align 1
@gammat850 = internal constant %struct.Gamma { [256 x i8] c"\00\00\00\02\02\02\03\03\03\05\05\05\07\07\06\07\07\06\07\07\07\08\08\08\08\08\08\09\09\09\09\09\0A\0A\0A\0A\0A\0A\0B\0B\0C\0C\0C\0C\0C\0C\0D\0D\0E\0E\0E\0F\0F\10\10\0F\10\10\11\11\11\11\11\12\12\12\13\13\14\14\14\14\14\15\15\15\16\16\17\17\17\17\17\18\18\19\19\1A\1A\1A\1A\1A\1B\1B\1B\1B\1C\1C\1D\1C\1C\1D\1D\1E\1E\1F\1F  !\22##$$%%&&''(())***+++,--..//00122334456667789::;<<=>>?AABCCDEEFHIIJKKLMOOPQRSSTVWXXYZ[\5C]^_`aacdefghijlmnoprsuwxz|}\7F\81\83\84\87\88\8A\8C\8E\90\92\93\96\98\9A\9D\9F\A2\A4\A6\A8\AB\AE\B0\B4\B6\BB\C0\C5\CC\D7\FF", [256 x i8] c"\00\00\00\01\01\01\03\03\03\04\04\04\05\05\05\06\06\06\07\07\07\07\07\07\08\08\08\09\09\0A\0A\09\0A\0A\0A\0B\0B\0B\0B\0B\0C\0C\0C\0D\0D\0D\0E\0E\0F\0F\0F\10\10\10\10\10\11\11\11\11\11\12\12\13\13\13\13\13\14\14\14\15\15\16\16\16\17\17\18\18\19\19\19\1A\1A\1B\1B\1C\1D\1D\1D\1D\1E\1E\1F\1E\1F\1F \1F\1F  !!\22\22##$$%%&&''(())**++,,--../001122334556677899::;<<==>?@ABBCDDFGGHIIJLMMNOOPQRSTUVWWXYZ[[\5C]^_`abcddefgijklmpqrstvwy{|}\80\81\82\85\86\87\8A\8B\8E\90\91\94\96\98\9A\9D\9F\A2\A4\A8\A9\AA\AC\AF\B1\B3\B6\B9\BD\C1\C6\CC\D7\FF", [256 x i8] c"\00\00\00\02\02\02\03\03\03\05\05\05\07\07\06\07\07\06\07\07\07\08\08\08\08\08\08\09\09\09\09\09\0A\09\09\0A\0A\0A\0A\0A\0B\0B\0B\0C\0C\0D\0D\0E\0E\0F\0F\10\10\10\10\10\11\11\12\12\12\13\12\13\13\13\14\14\15\15\15\16\16\16\16\16\17\17\18\18\19\19\19\1A\1B\1C\1C\1D\1D\1D\1E\1E\1E\1E\1F\1F  !! !!\22\22##$$%%&&''(())**++,,----../00112233455667789:;;<==>>?@ABCCDEEFGHIJJKLMMNOOPQRSTUVWWXYZ[[]^_`abdeffghjklmnoqrstuvwy{|~\80\82\83\86\87\89\8B\8C\8F\91\92\94\96\98\9A\9C\9E\A0\A3\A6\A7\A9\AB\AD\B0\B2\B5\B8\BC\C0\C6\CC\D7\FF", [256 x i8] c"\00\00\00\01\01\01\01\01\01\03\03\03\03\03\02\04\03\03\03\03\03\04\04\04\05\05\05\05\05\06\06\06\06\06\06\07\07\07\07\07\08\08\08\09\09\08\08\08\09\09\09\0A\0A\0A\0A\0A\0B\0B\0B\0B\0C\0C\0C\0D\0D\0C\0C\0C\0D\0D\0D\0D\0D\0E\0E\0E\0E\0E\0F\0F\10\10\10\11\11\11\11\12\12\12\13\13\14\14\14\14\14\15\15\15\15\16\16\16\16\17\16\17\17\18\18\18\18\19\19\1A\1A\1A\1A\1B\1B\1C\1C\1C\1C\1D\1D\1E\1E\1F\1F\1F  !!\22\22#$$$%%%&&((())*++++,--.//011244566889:;<<=>??@ABCDEFGHHIKKLMNPQRRSTUVXYZ[^_`bcdegijknopstvxy|~\7F\83\85\86\8A\8C\8D\92\94\97\9A\9C\A0\A3\A6\A9\AE\B1\B6\BB\C2\CB\D7\FF", [256 x i32] zeroinitializer }, align 4
@gammat890 = internal constant %struct.Gamma { [256 x i8] c"\00\02\03\05\07\08\0A\0C\0D\0F\10\12\14\15\17\19\1A\1C\1D\1F \22$%'(*+-.0235689;<>?ABDEFHIKLNOQRSUVXY[\5C]_`acdfghjklnoprstvwxy{|}\7F\80\81\82\84\85\86\87\89\8A\8B\8C\8D\8F\90\91\92\93\95\96\97\98\99\9A\9B\9D\9E\9F\A0\A1\A2\A3\A4\A6\A7\A8\A9\AA\AB\AC\AD\AE\AF\B0\B1\B2\B3\B4\B5\B6\B7\B8\B9\BA\BB\BC\BD\BE\BF\C0\C1\C2\C3\C4\C5\C6\C7\C8\C9\C9\CA\CB\CC\CD\CE\CF\D0\D0\D1\D2\D3\D4\D5\D5\D6\D7\D8\D9\D9\DA\DB\DC\DC\DD\DE\DF\DF\E0\E1\E1\E2\E3\E4\E4\E5\E6\E6\E7\E7\E8\E9\E9\EA\EB\EB\EC\EC\ED\EE\EE\EF\EF\F0\F0\F1\F1\F2\F2\F3\F3\F4\F4\F5\F5\F6\F6\F7\F7\F7\F8\F8\F9\F9\F9\FA\FA\FA\FB\FB\FB\FC\FC\FC\FC\FD\FD\FD\FD\FE\FE\FE\FE\FE\FF\FF\FF\FF\FF\FF\FF", [256 x i8] c"\00\01\02\03\04\05\06\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\19\1A\1B\1C\1D\1E\1F !\22#$%&'()*+,-./012456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVVWXYZ[\5C]^_`abcdefghijklmmnopqrstuvwxyzz{|}~\7F\80\81\82\83\84\84\85\86\87\88\89\8A\8B\8C\8C\8D\8E\8F\90\91\92\93\93\94\95\96\97\98\99\99\9A\9B\9C\9D\9E\9E\9F\A0\A1\A2\A3\A3\A4\A5\A6\A7\A8\A8\A9\AA\AB\AC\AC\AD\AE\AF\B0\B0\B1\B2\B3\B3\B4\B5\B6\B6\B7\B8\B9\B9\BA\BB\BC\BC\BD\BE\BF\BF\C0\C1\C1\C2\C3\C4\C4\C5\C6\C6\C7\C8\C8\C9\CA\CA\CB\CC\CC\CD\CD\CE\CF\CF\D0\D1\D1\D2\D2\D3\D3\D4\D5\D5\D6\D6\D7\D7\D8\D8\D9\D9\DA\DA\DA\DB\DB\DB\DC\DC", [256 x i8] c"\00\01\03\04\06\07\09\0A\0B\0D\0E\10\11\12\14\15\17\18\19\1B\1C\1D\1F \22#$&'(*+,./0234678:;<>?@BCDFGHIKLMOPQRTUVXYZ[]^_`acdefhijkmnopqstuvwxz{|}~\7F\81\82\83\84\85\86\88\89\8A\8B\8C\8D\8E\8F\91\92\93\94\95\96\97\98\99\9A\9B\9D\9E\9F\A0\A1\A2\A3\A4\A5\A6\A7\A8\A9\AA\AB\AC\AD\AE\AF\B0\B1\B2\B3\B4\B5\B6\B7\B8\B9\BA\BB\BC\BD\BE\BF\C0\C1\C2\C3\C4\C4\C5\C6\C7\C8\C9\CA\CB\CC\CD\CD\CE\CF\D0\D1\D2\D3\D3\D4\D5\D6\D7\D8\D8\D9\DA\DB\DC\DC\DD\DE\DF\DF\E0\E1\E2\E2\E3\E4\E5\E5\E6\E7\E8\E8\E9\EA\EA\EB\EC\EC\ED\EE\EE\EF\EF\F0\F1\F1\F2\F2\F3\F4\F4\F5\F5\F6\F6\F7\F7\F8\F8\F9\F9\FA\FA\FB\FB\FB\FC\FC\FD\FD\FD\FE\FE\FE\FE\FF\FF\FF\FF", [256 x i8] c"\00\00\01\01\01\02\02\02\02\03\03\03\04\04\04\05\05\05\06\06\06\07\07\07\08\08\08\09\09\09\09\0A\0A\0A\0B\0B\0B\0C\0C\0D\0D\0D\0E\0E\0E\0F\0F\0F\10\10\10\11\11\11\12\12\12\13\13\14\14\14\15\15\15\16\16\16\17\17\18\18\18\19\19\1A\1A\1A\1B\1B\1B\1C\1C\1D\1D\1D\1E\1E\1F\1F   !!\22\22\22##$$%%%&&''(()))**++,,--..//00112233445566778899::;<<==>>?@@AABCCDDEFFGHHIJJKLLMNNOPPQRSSTUVVWXYZ[[\5C]^_`aabcdefghijklnopqrsuvwxz{|~\7F\81\82\84\86\87\89\8B\8D\8F\91\93\95\98\9A\9D\9F\A2\A6\A9\AD\B2\B7\BD\C4\CF\FF", [256 x i32] zeroinitializer }, align 4
@.str.29 = private unnamed_addr constant [7 x i8] c"\1B*b%dY\00", align 1
@.str.30 = private unnamed_addr constant [6 x i8] c"\1B*b0V\00", align 1
@.str.31 = private unnamed_addr constant [26 x i8] c"(input)chp2200_print_page\00", align 1
@.str.32 = private unnamed_addr constant [25 x i8] c"(seed)chp2200_print_page\00", align 1
@.str.33 = private unnamed_addr constant [27 x i8] c"(output)chp2200_print_page\00", align 1
@.str.34 = private unnamed_addr constant [4 x i8] c"\1B*b\00", align 1
@.str.35 = private unnamed_addr constant [4 x i8] c"%dy\00", align 1
@.str.36 = private unnamed_addr constant [4 x i8] c"%dw\00", align 1
@.str.37 = private unnamed_addr constant [3 x i8] c"0w\00", align 1
@.str.38 = private unnamed_addr constant [3 x i8] c"0Y\00", align 1
@cdnj500_print_page.CRD_SeqC = private unnamed_addr constant [18 x i8] c"\1B*g12W\06\1F\00\01\00\00\00\00\0A\01 \01", align 16
@.str.39 = private unnamed_addr constant [26 x i8] c"(input)cdnj500_print_page\00", align 1
@.str.40 = private unnamed_addr constant [25 x i8] c"(seed)cdnj500_print_page\00", align 1
@.str.41 = private unnamed_addr constant [27 x i8] c"(output)cdnj500_print_page\00", align 1
@.str.42 = private unnamed_addr constant [6 x i8] c"\1B*r1A\00", align 1
@cdj850_print_non_blank_lines.plane_code = internal constant [2 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.44, i32 0, i32 0)], align 16
@.str.43 = private unnamed_addr constant [5 x i8] c"wvvv\00", align 1
@.str.44 = private unnamed_addr constant [5 x i8] c"vvvv\00", align 1
@rescale_color_plane = internal constant [2 x [2 x i32 (i32, i8*, i8*, i8*)*]] [[2 x i32 (i32, i8*, i8*, i8*)*] [i32 (i32, i8*, i8*, i8*)* @rescale_byte_wise1x1, i32 (i32, i8*, i8*, i8*)* @rescale_byte_wise1x2], [2 x i32 (i32, i8*, i8*, i8*)*] [i32 (i32, i8*, i8*, i8*)* @rescale_byte_wise2x1, i32 (i32, i8*, i8*, i8*)* @rescale_byte_wise2x2]], align 16
@.str.45 = private unnamed_addr constant [5 x i8] c"%d%c\00", align 1
@cdj880_print_non_blank_lines.plane_code = internal constant [2 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.46, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.47, i32 0, i32 0)], align 16
@.str.46 = private unnamed_addr constant [5 x i8] c"WVVV\00", align 1
@.str.47 = private unnamed_addr constant [5 x i8] c"VVVV\00", align 1
@hp850_cmyk_init = internal constant %struct.hp850_cmyk_init_s { [26 x i8] c"\02\04\01,\01,\00\02\01,\01,\00\02\01,\01,\00\02\01,\01,\00\02" }, align 1
@.str.48 = private unnamed_addr constant [6 x i8] c"\1B*rbC\00", align 1
@.str.49 = private unnamed_addr constant [3 x i8] c"\1BE\00", align 1
@.str.50 = private unnamed_addr constant [10 x i8] c"\1B&l%daolE\00", align 1
@.str.51 = private unnamed_addr constant [7 x i8] c"\1B*o%dM\00", align 1
@.str.52 = private unnamed_addr constant [7 x i8] c"\1B&l%dM\00", align 1
@.str.53 = private unnamed_addr constant [7 x i8] c"\1B*p%dY\00", align 1
@.str.54 = private unnamed_addr constant [7 x i8] c"\1B*g%dW\00", align 1
@.str.55 = private unnamed_addr constant [4 x i8] c"%dm\00", align 1
@.str.56 = private unnamed_addr constant [39 x i8] c"\1B%%-12345X@PJL ENTER LANGUAGE=PCL3GUI\0A\00", align 1
@.str.57 = private unnamed_addr constant [7 x i8] c"\1B*b%dm\00", align 1
@chp2200_start_raster_mode.CRD_SeqC = private unnamed_addr constant [18 x i8] c"\1B*g12W\06\07\00\01\00\00\00\00\0A\01 \01", align 16
@.str.58 = private unnamed_addr constant [11 x i8] c"\1B%%-12345X\00", align 1
@.str.59 = private unnamed_addr constant [33 x i8] c"@PJL JOB NAME=\22ghostscript job\22\0A\00", align 1
@.str.60 = private unnamed_addr constant [21 x i8] c"@PJL SET TIMEOUT=90\0A\00", align 1
@.str.61 = private unnamed_addr constant [29 x i8] c"@PJL ENTER LANGUAGE=PCL3GUI\0A\00", align 1
@.str.62 = private unnamed_addr constant [6 x i8] c"\1B&l7H\00", align 1
@.str.63 = private unnamed_addr constant [7 x i8] c"\1B*r%dS\00", align 1
@.str.64 = private unnamed_addr constant [7 x i8] c"\1B&l%dA\00", align 1
@.str.65 = private unnamed_addr constant [7 x i8] c"\1B&l-2H\00", align 1
@.str.66 = private unnamed_addr constant [7 x i8] c"\1B&u%dD\00", align 1
@.str.67 = private unnamed_addr constant [31 x i8] c"@PJL JOB NAME=\22GS %.2fx%.2f\22 \0A\00", align 1
@.str.68 = private unnamed_addr constant [30 x i8] c"@PJL SET RENDERMODE = COLOR \0A\00", align 1
@.str.69 = private unnamed_addr constant [29 x i8] c"@PJL SET COLORSPACE = SRGB \0A\00", align 1
@.str.70 = private unnamed_addr constant [37 x i8] c"@PJL SET RENDERINTENT = PERCEPTUAL \0A\00", align 1
@.str.71 = private unnamed_addr constant [20 x i8] c"@PJL SET RET = ON \0A\00", align 1
@.str.72 = private unnamed_addr constant [27 x i8] c"@PJL SET MAXDETAIL = OFF \0A\00", align 1
@.str.73 = private unnamed_addr constant [26 x i8] c"@PJL SET MAXDETAIL = ON \0A\00", align 1
@.str.74 = private unnamed_addr constant [21 x i8] c"@PJL SET RET = OFF \0A\00", align 1
@.str.75 = private unnamed_addr constant [30 x i8] c"@PJL ENTER LANGUAGE=PCL3GUI \0A\00", align 1
@.str.76 = private unnamed_addr constant [36 x i8] c"\1B%-12345X@PJL enter language = PCL\0A\00", align 1
@.str.77 = private unnamed_addr constant [7 x i8] c"\1B*t%dR\00", align 1
@.str.78 = private unnamed_addr constant [6 x i8] c"\1B&a1N\00", align 1
@.str.79 = private unnamed_addr constant [7 x i8] c"\1B*o%dQ\00", align 1
@.str.80 = private unnamed_addr constant [13 x i8] c"\1B*r%ds-%du0A\00", align 1
@.str.81 = private unnamed_addr constant [4 x i8] c"wvv\00", align 1

declare i32 @gx_default_install(%struct.gx_device_s*, %struct.gs_state_s*) #0

declare i32 @gx_default_begin_page(%struct.gx_device_s*, %struct.gs_state_s*) #0

declare i32 @gx_default_end_page(%struct.gx_device_s*, i32, %struct.gs_state_s*) #0

; Function Attrs: nounwind uwtable
define internal i32 @cdj850_print_page(%struct.gx_device_printer_s* %pdev, %struct._IO_FILE* %prn_stream) #1 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_printer_s*, align 8
  %prn_stream.addr = alloca %struct._IO_FILE*, align 8
  %error_values = alloca %struct.error_val_field, align 4
  %data_ptrs = alloca %struct.ptr_arrays, align 8
  %misc_vars = alloca %struct.misc_struct, align 4
  %i = alloca i32, align 4
  %gamma = alloca %struct.Gamma, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_printer_s* %pdev, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  store %struct._IO_FILE* %prn_stream, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %0 = bitcast %struct.error_val_field* %error_values to i8*
  call void @llvm.lifetime.start(i64 16, i8* %0) #2
  %1 = bitcast %struct.ptr_arrays* %data_ptrs to i8*
  call void @llvm.lifetime.start(i64 552, i8* %1) #2
  %2 = bitcast %struct.misc_struct* %misc_vars to i8*
  call void @llvm.lifetime.start(i64 88, i8* %2) #2
  %3 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = bitcast %struct.Gamma* %gamma to i8*
  call void @llvm.lifetime.start(i64 2048, i8* %4) #2
  %5 = bitcast %struct.Gamma* %gamma to i8*
  %6 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %7 = bitcast %struct.gx_device_printer_s* %6 to %struct.gx_device_cdj850_s*
  %ptype = getelementptr inbounds %struct.gx_device_cdj850_s, %struct.gx_device_cdj850_s* %7, i32 0, i32 76
  %8 = load i32, i32* %ptype, align 4, !tbaa !5
  %idxprom = sext i32 %8 to i64
  %arrayidx = getelementptr inbounds [5 x %struct.Gamma*], [5 x %struct.Gamma*]* @gammat, i32 0, i64 %idxprom
  %9 = load %struct.Gamma*, %struct.Gamma** %arrayidx, align 8, !tbaa !1
  %10 = bitcast %struct.Gamma* %9 to i8*
  %call = call i8* @memcpy(i8* %5, i8* %10, i64 2048) #5
  store i32 0, i32* %i, align 4, !tbaa !23
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %11 = load i32, i32* %i, align 4, !tbaa !23
  %cmp = icmp slt i32 %11, 256
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load i32, i32* %i, align 4, !tbaa !23
  %13 = load i32, i32* %i, align 4, !tbaa !23
  %mul = mul nsw i32 %12, %13
  %14 = load i32, i32* %i, align 4, !tbaa !23
  %mul1 = mul nsw i32 %mul, %14
  %conv = sitofp i32 %mul1 to float
  %conv2 = fpext float %conv to double
  %div = fdiv double %conv2, 6.553600e+04
  %conv3 = fptosi double %div to i32
  %conv4 = trunc i32 %conv3 to i8
  %15 = load i32, i32* %i, align 4, !tbaa !23
  %idxprom5 = sext i32 %15 to i64
  %k = getelementptr inbounds %struct.Gamma, %struct.Gamma* %gamma, i32 0, i32 3
  %arrayidx6 = getelementptr inbounds [256 x i8], [256 x i8]* %k, i32 0, i64 %idxprom5
  store i8 %conv4, i8* %arrayidx6, align 1, !tbaa !24
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %16 = load i32, i32* %i, align 4, !tbaa !23
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %i, align 4, !tbaa !23
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4, !tbaa !23
  br label %for.cond.7

for.cond.7:                                       ; preds = %for.inc.20, %for.end
  %17 = load i32, i32* %i, align 4, !tbaa !23
  %cmp8 = icmp slt i32 %17, 256
  br i1 %cmp8, label %for.body.10, label %for.end.22

for.body.10:                                      ; preds = %for.cond.7
  %18 = load i32, i32* %i, align 4, !tbaa !23
  %19 = load i32, i32* %i, align 4, !tbaa !23
  %mul11 = mul nsw i32 %18, %19
  %20 = load i32, i32* %i, align 4, !tbaa !23
  %mul12 = mul nsw i32 %mul11, %20
  %conv13 = sitofp i32 %mul12 to float
  %conv14 = fpext float %conv13 to double
  %div15 = fdiv double %conv14, 6.553600e+04
  %conv16 = fptosi double %div15 to i32
  %conv17 = trunc i32 %conv16 to i8
  %21 = load i32, i32* %i, align 4, !tbaa !23
  %idxprom18 = sext i32 %21 to i64
  %c = getelementptr inbounds %struct.Gamma, %struct.Gamma* %gamma, i32 0, i32 0
  %arrayidx19 = getelementptr inbounds [256 x i8], [256 x i8]* %c, i32 0, i64 %idxprom18
  store i8 %conv17, i8* %arrayidx19, align 1, !tbaa !24
  br label %for.inc.20

for.inc.20:                                       ; preds = %for.body.10
  %22 = load i32, i32* %i, align 4, !tbaa !23
  %inc21 = add nsw i32 %22, 1
  store i32 %inc21, i32* %i, align 4, !tbaa !23
  br label %for.cond.7

for.end.22:                                       ; preds = %for.cond.7
  store i32 0, i32* %i, align 4, !tbaa !23
  br label %for.cond.23

for.cond.23:                                      ; preds = %for.inc.36, %for.end.22
  %23 = load i32, i32* %i, align 4, !tbaa !23
  %cmp24 = icmp slt i32 %23, 256
  br i1 %cmp24, label %for.body.26, label %for.end.38

for.body.26:                                      ; preds = %for.cond.23
  %24 = load i32, i32* %i, align 4, !tbaa !23
  %25 = load i32, i32* %i, align 4, !tbaa !23
  %mul27 = mul nsw i32 %24, %25
  %26 = load i32, i32* %i, align 4, !tbaa !23
  %mul28 = mul nsw i32 %mul27, %26
  %conv29 = sitofp i32 %mul28 to float
  %conv30 = fpext float %conv29 to double
  %div31 = fdiv double %conv30, 6.553600e+04
  %conv32 = fptosi double %div31 to i32
  %conv33 = trunc i32 %conv32 to i8
  %27 = load i32, i32* %i, align 4, !tbaa !23
  %idxprom34 = sext i32 %27 to i64
  %m = getelementptr inbounds %struct.Gamma, %struct.Gamma* %gamma, i32 0, i32 1
  %arrayidx35 = getelementptr inbounds [256 x i8], [256 x i8]* %m, i32 0, i64 %idxprom34
  store i8 %conv33, i8* %arrayidx35, align 1, !tbaa !24
  br label %for.inc.36

for.inc.36:                                       ; preds = %for.body.26
  %28 = load i32, i32* %i, align 4, !tbaa !23
  %inc37 = add nsw i32 %28, 1
  store i32 %inc37, i32* %i, align 4, !tbaa !23
  br label %for.cond.23

for.end.38:                                       ; preds = %for.cond.23
  store i32 0, i32* %i, align 4, !tbaa !23
  br label %for.cond.39

for.cond.39:                                      ; preds = %for.inc.52, %for.end.38
  %29 = load i32, i32* %i, align 4, !tbaa !23
  %cmp40 = icmp slt i32 %29, 256
  br i1 %cmp40, label %for.body.42, label %for.end.54

for.body.42:                                      ; preds = %for.cond.39
  %30 = load i32, i32* %i, align 4, !tbaa !23
  %31 = load i32, i32* %i, align 4, !tbaa !23
  %mul43 = mul nsw i32 %30, %31
  %32 = load i32, i32* %i, align 4, !tbaa !23
  %mul44 = mul nsw i32 %mul43, %32
  %conv45 = sitofp i32 %mul44 to float
  %conv46 = fpext float %conv45 to double
  %div47 = fdiv double %conv46, 6.553600e+04
  %conv48 = fptosi double %div47 to i32
  %conv49 = trunc i32 %conv48 to i8
  %33 = load i32, i32* %i, align 4, !tbaa !23
  %idxprom50 = sext i32 %33 to i64
  %y = getelementptr inbounds %struct.Gamma, %struct.Gamma* %gamma, i32 0, i32 2
  %arrayidx51 = getelementptr inbounds [256 x i8], [256 x i8]* %y, i32 0, i64 %idxprom50
  store i8 %conv49, i8* %arrayidx51, align 1, !tbaa !24
  br label %for.inc.52

for.inc.52:                                       ; preds = %for.body.42
  %34 = load i32, i32* %i, align 4, !tbaa !23
  %inc53 = add nsw i32 %34, 1
  store i32 %inc53, i32* %i, align 4, !tbaa !23
  br label %for.cond.39

for.end.54:                                       ; preds = %for.cond.39
  %35 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %36 = bitcast %struct.gx_device_printer_s* %35 to %struct.gx_device_cdj850_s*
  %blackcorrect = getelementptr inbounds %struct.gx_device_cdj850_s, %struct.gx_device_cdj850_s* %36, i32 0, i32 83
  %37 = load float, float* %blackcorrect, align 4, !tbaa !25
  %correct = getelementptr inbounds %struct.Gamma, %struct.Gamma* %gamma, i32 0, i32 4
  %arraydecay = getelementptr inbounds [256 x i32], [256 x i32]* %correct, i32 0, i32 0
  call void @do_black_correction(float %37, i32* %arraydecay) #6
  %38 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  call void @calculate_memory_size(%struct.gx_device_printer_s* %38, %struct.misc_struct* %misc_vars) #6
  %39 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %39, i32 0, i32 3
  %40 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !26
  %non_gc_memory = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %40, i32 0, i32 3
  %41 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory, align 8, !tbaa !28
  %non_gc_memory55 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %41, i32 0, i32 3
  %42 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory55, align 8, !tbaa !28
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %42, i32 0, i32 1
  %alloc_byte_array = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 10
  %43 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array, align 8, !tbaa !31
  %44 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory56 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %44, i32 0, i32 3
  %45 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory56, align 8, !tbaa !26
  %non_gc_memory57 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %45, i32 0, i32 3
  %46 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory57, align 8, !tbaa !28
  %non_gc_memory58 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %46, i32 0, i32 3
  %47 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory58, align 8, !tbaa !28
  %storage_size_words = getelementptr inbounds %struct.misc_struct, %struct.misc_struct* %misc_vars, i32 0, i32 19
  %48 = load i32, i32* %storage_size_words, align 4, !tbaa !32
  %call59 = call i8* %43(%struct.gs_memory_s* %47, i32 %48, i32 8, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.27, i32 0, i32 0)) #6
  %49 = bitcast i8* %call59 to i64*
  %storage = getelementptr inbounds %struct.ptr_arrays, %struct.ptr_arrays* %data_ptrs, i32 0, i32 8
  store i64* %49, i64** %storage, align 8, !tbaa !34
  %storage60 = getelementptr inbounds %struct.ptr_arrays, %struct.ptr_arrays* %data_ptrs, i32 0, i32 8
  %50 = load i64*, i64** %storage60, align 8, !tbaa !34
  %cmp61 = icmp eq i64* %50, null
  br i1 %cmp61, label %if.then, label %if.end

if.then:                                          ; preds = %for.end.54
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %for.end.54
  %51 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  call void @init_data_structure(%struct.gx_device_printer_s* %51, %struct.ptr_arrays* %data_ptrs, %struct.misc_struct* %misc_vars) #6
  %52 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %53 = bitcast %struct.gx_device_printer_s* %52 to %struct.gx_device_cdj850_s*
  %start_raster_mode = getelementptr inbounds %struct.gx_device_cdj850_s, %struct.gx_device_cdj850_s* %53, i32 0, i32 84
  %54 = load void (%struct.gx_device_printer_s*, i32, %struct._IO_FILE*)*, void (%struct.gx_device_printer_s*, i32, %struct._IO_FILE*)** %start_raster_mode, align 8, !tbaa !36
  %55 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %paper_size = getelementptr inbounds %struct.misc_struct, %struct.misc_struct* %misc_vars, i32 0, i32 3
  %56 = load i32, i32* %paper_size, align 4, !tbaa !37
  %57 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  call void %54(%struct.gx_device_printer_s* %55, i32 %56, %struct._IO_FILE* %57) #6
  %58 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %59 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  call void @send_scan_lines(%struct.gx_device_printer_s* %58, %struct.ptr_arrays* %data_ptrs, %struct.misc_struct* %misc_vars, %struct.error_val_field* %error_values, %struct.Gamma* %gamma, %struct._IO_FILE* %59) #6
  %60 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %61 = bitcast %struct.gx_device_printer_s* %60 to %struct.gx_device_cdj850_s*
  %terminate_page = getelementptr inbounds %struct.gx_device_cdj850_s, %struct.gx_device_cdj850_s* %61, i32 0, i32 86
  %62 = load void (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, void (%struct.gx_device_printer_s*, %struct._IO_FILE*)** %terminate_page, align 8, !tbaa !38
  %63 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %64 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  call void %62(%struct.gx_device_printer_s* %63, %struct._IO_FILE* %64) #6
  %65 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory63 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %65, i32 0, i32 3
  %66 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory63, align 8, !tbaa !26
  %non_gc_memory64 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %66, i32 0, i32 3
  %67 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory64, align 8, !tbaa !28
  %non_gc_memory65 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %67, i32 0, i32 3
  %68 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory65, align 8, !tbaa !28
  %procs66 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %68, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs66, i32 0, i32 2
  %69 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !39
  %70 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory67 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %70, i32 0, i32 3
  %71 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory67, align 8, !tbaa !26
  %non_gc_memory68 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %71, i32 0, i32 3
  %72 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory68, align 8, !tbaa !28
  %non_gc_memory69 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %72, i32 0, i32 3
  %73 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory69, align 8, !tbaa !28
  %storage70 = getelementptr inbounds %struct.ptr_arrays, %struct.ptr_arrays* %data_ptrs, i32 0, i32 8
  %74 = load i64*, i64** %storage70, align 8, !tbaa !34
  %75 = bitcast i64* %74 to i8*
  call void %69(%struct.gs_memory_s* %73, i8* %75, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.28, i32 0, i32 0)) #6
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %76 = bitcast %struct.Gamma* %gamma to i8*
  call void @llvm.lifetime.end(i64 2048, i8* %76) #2
  %77 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %77) #2
  %78 = bitcast %struct.misc_struct* %misc_vars to i8*
  call void @llvm.lifetime.end(i64 88, i8* %78) #2
  %79 = bitcast %struct.ptr_arrays* %data_ptrs to i8*
  call void @llvm.lifetime.end(i64 552, i8* %79) #2
  %80 = bitcast %struct.error_val_field* %error_values to i8*
  call void @llvm.lifetime.end(i64 16, i8* %80) #2
  %81 = load i32, i32* %retval
  ret i32 %81
}

declare i32 @gx_default_print_page_copies(%struct.gx_device_printer_s*, %struct._IO_FILE*, i32) #0

declare i32 @gx_default_create_buf_device(%struct.gx_device_s**, %struct.gx_device_s*, i32, %struct.gx_render_plane_s*, %struct.gs_memory_s*, %struct.gx_colors_usage_s*) #0

declare i32 @gx_default_size_buf_device(%struct.gx_device_buf_space_s*, %struct.gx_device_s*, %struct.gx_render_plane_s*, i32, i32) #0

declare i32 @gx_default_setup_buf_device(%struct.gx_device_s*, i8*, i32, i8**, i32, i32, i32) #0

declare void @gx_default_destroy_buf_device(%struct.gx_device_s*) #0

declare void @gx_default_get_space_params(%struct.gx_device_printer_s*, %struct.gdev_space_params_s*) #0

declare i32 @gx_default_start_render_thread(%struct.gdev_prn_start_render_params_s*) #0

declare i32 @gx_default_open_render_device(%struct.gx_device_printer_s*) #0

declare i32 @gx_default_close_render_device(%struct.gx_device_printer_s*) #0

declare i32 @gx_default_buffer_page(%struct.gx_device_printer_s*, %struct._IO_FILE*, i32) #0

; Function Attrs: nounwind uwtable
define internal void @cdj850_start_raster_mode(%struct.gx_device_printer_s* %pdev, i32 %paper_size, %struct._IO_FILE* %prn_stream) #1 {
entry:
  %pdev.addr = alloca %struct.gx_device_printer_s*, align 8
  %paper_size.addr = alloca i32, align 4
  %prn_stream.addr = alloca %struct._IO_FILE*, align 8
  %xres = alloca i32, align 4
  %yres = alloca i32, align 4
  %init = alloca %struct.hp850_cmyk_init_s, align 1
  store %struct.gx_device_printer_s* %pdev, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  store i32 %paper_size, i32* %paper_size.addr, align 4, !tbaa !23
  store %struct._IO_FILE* %prn_stream, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %0 = bitcast i32* %xres to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast i32* %yres to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = bitcast %struct.hp850_cmyk_init_s* %init to i8*
  call void @llvm.lifetime.start(i64 26, i8* %2) #2
  %3 = bitcast %struct.hp850_cmyk_init_s* %init to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* getelementptr inbounds (%struct.hp850_cmyk_init_s, %struct.hp850_cmyk_init_s* @hp850_cmyk_init, i32 0, i32 0, i32 0), i64 26, i32 1, i1 false), !tbaa.struct !40
  %4 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %5 = bitcast %struct.gx_device_printer_s* %4 to %struct.gx_device_cdj850_s*
  %intensities = getelementptr inbounds %struct.gx_device_cdj850_s, %struct.gx_device_cdj850_s* %5, i32 0, i32 73
  %6 = load i32, i32* %intensities, align 4, !tbaa !41
  %conv = trunc i32 %6 to i8
  %a = getelementptr inbounds %struct.hp850_cmyk_init_s, %struct.hp850_cmyk_init_s* %init, i32 0, i32 0
  %arrayidx = getelementptr inbounds [26 x i8], [26 x i8]* %a, i32 0, i64 13
  store i8 %conv, i8* %arrayidx, align 1, !tbaa !24
  %7 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %8 = bitcast %struct.gx_device_printer_s* %7 to %struct.gx_device_cdj850_s*
  %intensities1 = getelementptr inbounds %struct.gx_device_cdj850_s, %struct.gx_device_cdj850_s* %8, i32 0, i32 73
  %9 = load i32, i32* %intensities1, align 4, !tbaa !41
  %conv2 = trunc i32 %9 to i8
  %a3 = getelementptr inbounds %struct.hp850_cmyk_init_s, %struct.hp850_cmyk_init_s* %init, i32 0, i32 0
  %arrayidx4 = getelementptr inbounds [26 x i8], [26 x i8]* %a3, i32 0, i64 19
  store i8 %conv2, i8* %arrayidx4, align 1, !tbaa !24
  %10 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %11 = bitcast %struct.gx_device_printer_s* %10 to %struct.gx_device_cdj850_s*
  %intensities5 = getelementptr inbounds %struct.gx_device_cdj850_s, %struct.gx_device_cdj850_s* %11, i32 0, i32 73
  %12 = load i32, i32* %intensities5, align 4, !tbaa !41
  %conv6 = trunc i32 %12 to i8
  %a7 = getelementptr inbounds %struct.hp850_cmyk_init_s, %struct.hp850_cmyk_init_s* %init, i32 0, i32 0
  %arrayidx8 = getelementptr inbounds [26 x i8], [26 x i8]* %a7, i32 0, i64 25
  store i8 %conv6, i8* %arrayidx8, align 1, !tbaa !24
  %13 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %14 = bitcast %struct.gx_device_printer_s* %13 to %struct.gx_device_cdj850_s*
  %HWResolution = getelementptr inbounds %struct.gx_device_cdj850_s, %struct.gx_device_cdj850_s* %14, i32 0, i32 22
  %arrayidx9 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution, i32 0, i64 0
  %15 = load float, float* %arrayidx9, align 4, !tbaa !42
  %conv10 = fptosi float %15 to i32
  %a11 = getelementptr inbounds %struct.hp850_cmyk_init_s, %struct.hp850_cmyk_init_s* %init, i32 0, i32 0
  %arraydecay = getelementptr inbounds [26 x i8], [26 x i8]* %a11, i32 0, i32 0
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay, i64 2
  call void @assign_dpi(i32 %conv10, i8* %add.ptr) #6
  %16 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %17 = bitcast %struct.gx_device_printer_s* %16 to %struct.gx_device_cdj850_s*
  %HWResolution12 = getelementptr inbounds %struct.gx_device_cdj850_s, %struct.gx_device_cdj850_s* %17, i32 0, i32 22
  %arrayidx13 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution12, i32 0, i64 1
  %18 = load float, float* %arrayidx13, align 4, !tbaa !42
  %conv14 = fptosi float %18 to i32
  %a15 = getelementptr inbounds %struct.hp850_cmyk_init_s, %struct.hp850_cmyk_init_s* %init, i32 0, i32 0
  %arraydecay16 = getelementptr inbounds [26 x i8], [26 x i8]* %a15, i32 0, i32 0
  %add.ptr17 = getelementptr inbounds i8, i8* %arraydecay16, i64 4
  call void @assign_dpi(i32 %conv14, i8* %add.ptr17) #6
  %19 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %20 = bitcast %struct.gx_device_printer_s* %19 to %struct.gx_device_cdj850_s*
  %HWResolution18 = getelementptr inbounds %struct.gx_device_cdj850_s, %struct.gx_device_cdj850_s* %20, i32 0, i32 22
  %arrayidx19 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution18, i32 0, i64 0
  %21 = load float, float* %arrayidx19, align 4, !tbaa !42
  %22 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %23 = bitcast %struct.gx_device_printer_s* %22 to %struct.gx_device_cdj850_s*
  %xscal = getelementptr inbounds %struct.gx_device_cdj850_s, %struct.gx_device_cdj850_s* %23, i32 0, i32 74
  %24 = load i32, i32* %xscal, align 4, !tbaa !43
  %add = add nsw i32 %24, 1
  %conv20 = sitofp i32 %add to float
  %div = fdiv float %21, %conv20
  %conv21 = fptosi float %div to i32
  store i32 %conv21, i32* %xres, align 4, !tbaa !23
  %25 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %26 = bitcast %struct.gx_device_printer_s* %25 to %struct.gx_device_cdj850_s*
  %HWResolution22 = getelementptr inbounds %struct.gx_device_cdj850_s, %struct.gx_device_cdj850_s* %26, i32 0, i32 22
  %arrayidx23 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution22, i32 0, i64 1
  %27 = load float, float* %arrayidx23, align 4, !tbaa !42
  %28 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %29 = bitcast %struct.gx_device_printer_s* %28 to %struct.gx_device_cdj850_s*
  %yscal = getelementptr inbounds %struct.gx_device_cdj850_s, %struct.gx_device_cdj850_s* %29, i32 0, i32 75
  %30 = load i32, i32* %yscal, align 4, !tbaa !44
  %add24 = add nsw i32 %30, 1
  %conv25 = sitofp i32 %add24 to float
  %div26 = fdiv float %27, %conv25
  %conv27 = fptosi float %div26 to i32
  store i32 %conv27, i32* %yres, align 4, !tbaa !23
  %31 = load i32, i32* %xres, align 4, !tbaa !23
  %a28 = getelementptr inbounds %struct.hp850_cmyk_init_s, %struct.hp850_cmyk_init_s* %init, i32 0, i32 0
  %arraydecay29 = getelementptr inbounds [26 x i8], [26 x i8]* %a28, i32 0, i32 0
  %add.ptr30 = getelementptr inbounds i8, i8* %arraydecay29, i64 8
  call void @assign_dpi(i32 %31, i8* %add.ptr30) #6
  %32 = load i32, i32* %yres, align 4, !tbaa !23
  %a31 = getelementptr inbounds %struct.hp850_cmyk_init_s, %struct.hp850_cmyk_init_s* %init, i32 0, i32 0
  %arraydecay32 = getelementptr inbounds [26 x i8], [26 x i8]* %a31, i32 0, i32 0
  %add.ptr33 = getelementptr inbounds i8, i8* %arraydecay32, i64 10
  call void @assign_dpi(i32 %32, i8* %add.ptr33) #6
  %33 = load i32, i32* %xres, align 4, !tbaa !23
  %a34 = getelementptr inbounds %struct.hp850_cmyk_init_s, %struct.hp850_cmyk_init_s* %init, i32 0, i32 0
  %arraydecay35 = getelementptr inbounds [26 x i8], [26 x i8]* %a34, i32 0, i32 0
  %add.ptr36 = getelementptr inbounds i8, i8* %arraydecay35, i64 14
  call void @assign_dpi(i32 %33, i8* %add.ptr36) #6
  %34 = load i32, i32* %yres, align 4, !tbaa !23
  %a37 = getelementptr inbounds %struct.hp850_cmyk_init_s, %struct.hp850_cmyk_init_s* %init, i32 0, i32 0
  %arraydecay38 = getelementptr inbounds [26 x i8], [26 x i8]* %a37, i32 0, i32 0
  %add.ptr39 = getelementptr inbounds i8, i8* %arraydecay38, i64 16
  call void @assign_dpi(i32 %34, i8* %add.ptr39) #6
  %35 = load i32, i32* %xres, align 4, !tbaa !23
  %a40 = getelementptr inbounds %struct.hp850_cmyk_init_s, %struct.hp850_cmyk_init_s* %init, i32 0, i32 0
  %arraydecay41 = getelementptr inbounds [26 x i8], [26 x i8]* %a40, i32 0, i32 0
  %add.ptr42 = getelementptr inbounds i8, i8* %arraydecay41, i64 20
  call void @assign_dpi(i32 %35, i8* %add.ptr42) #6
  %36 = load i32, i32* %yres, align 4, !tbaa !23
  %a43 = getelementptr inbounds %struct.hp850_cmyk_init_s, %struct.hp850_cmyk_init_s* %init, i32 0, i32 0
  %arraydecay44 = getelementptr inbounds [26 x i8], [26 x i8]* %a43, i32 0, i32 0
  %add.ptr45 = getelementptr inbounds i8, i8* %arraydecay44, i64 22
  call void @assign_dpi(i32 %36, i8* %add.ptr45) #6
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call = call i32 @fputs(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.48, i32 0, i32 0), %struct._IO_FILE* %37) #6
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call46 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.49, i32 0, i32 0), %struct._IO_FILE* %38) #6
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %40 = load i32, i32* %paper_size.addr, align 4, !tbaa !23
  %call47 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %39, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.50, i32 0, i32 0), i32 %40) #6
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %42 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %43 = bitcast %struct.gx_device_printer_s* %42 to %struct.gx_device_cdj850_s*
  %quality = getelementptr inbounds %struct.gx_device_cdj850_s, %struct.gx_device_cdj850_s* %43, i32 0, i32 71
  %44 = load i32, i32* %quality, align 4, !tbaa !45
  %call48 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %41, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.51, i32 0, i32 0), i32 %44) #6
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %46 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %47 = bitcast %struct.gx_device_printer_s* %46 to %struct.gx_device_cdj850_s*
  %papertype = getelementptr inbounds %struct.gx_device_cdj850_s, %struct.gx_device_cdj850_s* %47, i32 0, i32 72
  %48 = load i32, i32* %papertype, align 4, !tbaa !46
  %call49 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %45, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.52, i32 0, i32 0), i32 %48) #6
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %50 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %HWMargins = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %50, i32 0, i32 25
  %arrayidx50 = getelementptr inbounds [4 x float], [4 x float]* %HWMargins, i32 0, i64 3
  %51 = load float, float* %arrayidx50, align 4, !tbaa !42
  %conv51 = fpext float %51 to double
  %div52 = fdiv double %conv51, 7.200000e+01
  %sub = fsub double %div52, 4.000000e-02
  %mul = fmul double 6.000000e+02, %sub
  %conv53 = fptosi double %mul to i32
  %call54 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %49, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.53, i32 0, i32 0), i32 %conv53) #6
  %52 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call55 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %52, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.54, i32 0, i32 0), i32 26) #6
  %a56 = getelementptr inbounds %struct.hp850_cmyk_init_s, %struct.hp850_cmyk_init_s* %init, i32 0, i32 0
  %arraydecay57 = getelementptr inbounds [26 x i8], [26 x i8]* %a56, i32 0, i32 0
  %53 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call58 = call i64 @fwrite(i8* %arraydecay57, i64 1, i64 26, %struct._IO_FILE* %53) #6
  %54 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call59 = call i32 @fputs(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.34, i32 0, i32 0), %struct._IO_FILE* %54) #6
  %55 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %56 = bitcast %struct.gx_device_printer_s* %55 to %struct.gx_device_cdj850_s*
  %compression = getelementptr inbounds %struct.gx_device_cdj850_s, %struct.gx_device_cdj850_s* %56, i32 0, i32 77
  %57 = load i32, i32* %compression, align 4, !tbaa !47
  %tobool = icmp ne i32 %57, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %58 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %59 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %60 = bitcast %struct.gx_device_printer_s* %59 to %struct.gx_device_cdj850_s*
  %compression60 = getelementptr inbounds %struct.gx_device_cdj850_s, %struct.gx_device_cdj850_s* %60, i32 0, i32 77
  %61 = load i32, i32* %compression60, align 4, !tbaa !47
  %call61 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %58, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.55, i32 0, i32 0), i32 %61) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %62 = bitcast %struct.hp850_cmyk_init_s* %init to i8*
  call void @llvm.lifetime.end(i64 26, i8* %62) #2
  %63 = bitcast i32* %yres to i8*
  call void @llvm.lifetime.end(i64 4, i8* %63) #2
  %64 = bitcast i32* %xres to i8*
  call void @llvm.lifetime.end(i64 4, i8* %64) #2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @cdj850_print_non_blank_lines(%struct.gx_device_printer_s* %pdev, %struct.ptr_arrays* %data_ptrs, %struct.misc_struct* %misc_vars, %struct.error_val_field* %error_values, %struct.Gamma* %gamma, %struct._IO_FILE* %prn_stream) #1 {
entry:
  %pdev.addr = alloca %struct.gx_device_printer_s*, align 8
  %data_ptrs.addr = alloca %struct.ptr_arrays*, align 8
  %misc_vars.addr = alloca %struct.misc_struct*, align 8
  %error_values.addr = alloca %struct.error_val_field*, align 8
  %gamma.addr = alloca %struct.Gamma*, align 8
  %prn_stream.addr = alloca %struct._IO_FILE*, align 8
  %i = alloca i32, align 4
  %kP = alloca i8*, align 8
  %dp = alloca i8*, align 8
  %ep = alloca i32*, align 8
  %plane_size_c = alloca i32, align 4
  store %struct.gx_device_printer_s* %pdev, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  store %struct.ptr_arrays* %data_ptrs, %struct.ptr_arrays** %data_ptrs.addr, align 8, !tbaa !1
  store %struct.misc_struct* %misc_vars, %struct.misc_struct** %misc_vars.addr, align 8, !tbaa !1
  store %struct.error_val_field* %error_values, %struct.error_val_field** %error_values.addr, align 8, !tbaa !1
  store %struct.Gamma* %gamma, %struct.Gamma** %gamma.addr, align 8, !tbaa !1
  store %struct._IO_FILE* %prn_stream, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast i8** %kP to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #2
  %2 = load %struct.misc_struct*, %struct.misc_struct** %misc_vars.addr, align 8, !tbaa !1
  %scan = getelementptr inbounds %struct.misc_struct, %struct.misc_struct* %2, i32 0, i32 15
  %3 = load i32, i32* %scan, align 4, !tbaa !48
  %add = add nsw i32 %3, 2
  %idxprom = sext i32 %add to i64
  %4 = load %struct.ptr_arrays*, %struct.ptr_arrays** %data_ptrs.addr, align 8, !tbaa !1
  %plane_data = getelementptr inbounds %struct.ptr_arrays, %struct.ptr_arrays* %4, i32 0, i32 2
  %arrayidx = getelementptr inbounds [4 x [4 x i8*]], [4 x [4 x i8*]]* %plane_data, i32 0, i64 %idxprom
  %arrayidx1 = getelementptr inbounds [4 x i8*], [4 x i8*]* %arrayidx, i32 0, i64 3
  %5 = load i8*, i8** %arrayidx1, align 8, !tbaa !1
  store i8* %5, i8** %kP, align 8, !tbaa !1
  %6 = bitcast i8** %dp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #2
  %7 = load %struct.misc_struct*, %struct.misc_struct** %misc_vars.addr, align 8, !tbaa !1
  %scan2 = getelementptr inbounds %struct.misc_struct, %struct.misc_struct* %7, i32 0, i32 15
  %8 = load i32, i32* %scan2, align 4, !tbaa !48
  %add3 = add nsw i32 %8, 2
  %idxprom4 = sext i32 %add3 to i64
  %9 = load %struct.ptr_arrays*, %struct.ptr_arrays** %data_ptrs.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.ptr_arrays, %struct.ptr_arrays* %9, i32 0, i32 0
  %arrayidx5 = getelementptr inbounds [4 x i8*], [4 x i8*]* %data, i32 0, i64 %idxprom4
  %10 = load i8*, i8** %arrayidx5, align 8, !tbaa !1
  store i8* %10, i8** %dp, align 8, !tbaa !1
  %11 = bitcast i32** %ep to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #2
  %12 = load %struct.misc_struct*, %struct.misc_struct** %misc_vars.addr, align 8, !tbaa !1
  %scan6 = getelementptr inbounds %struct.misc_struct, %struct.misc_struct* %12, i32 0, i32 15
  %13 = load i32, i32* %scan6, align 4, !tbaa !48
  %idxprom7 = sext i32 %13 to i64
  %14 = load %struct.ptr_arrays*, %struct.ptr_arrays** %data_ptrs.addr, align 8, !tbaa !1
  %errors = getelementptr inbounds %struct.ptr_arrays, %struct.ptr_arrays* %14, i32 0, i32 6
  %arrayidx8 = getelementptr inbounds [2 x i32*], [2 x i32*]* %errors, i32 0, i64 %idxprom7
  %15 = load i32*, i32** %arrayidx8, align 8, !tbaa !1
  store i32* %15, i32** %ep, align 8, !tbaa !1
  %16 = load %struct.misc_struct*, %struct.misc_struct** %misc_vars.addr, align 8, !tbaa !1
  %databuff_size = getelementptr inbounds %struct.misc_struct, %struct.misc_struct* %16, i32 0, i32 10
  %17 = load i32, i32* %databuff_size, align 4, !tbaa !49
  %18 = load %struct.misc_struct*, %struct.misc_struct** %misc_vars.addr, align 8, !tbaa !1
  %scan9 = getelementptr inbounds %struct.misc_struct, %struct.misc_struct* %18, i32 0, i32 15
  %19 = load i32, i32* %scan9, align 4, !tbaa !48
  %idxprom10 = sext i32 %19 to i64
  %20 = load %struct.ptr_arrays*, %struct.ptr_arrays** %data_ptrs.addr, align 8, !tbaa !1
  %data11 = getelementptr inbounds %struct.ptr_arrays, %struct.ptr_arrays* %20, i32 0, i32 0
  %arrayidx12 = getelementptr inbounds [4 x i8*], [4 x i8*]* %data11, i32 0, i64 %idxprom10
  %21 = load i8*, i8** %arrayidx12, align 8, !tbaa !1
  %22 = load %struct.Gamma*, %struct.Gamma** %gamma.addr, align 8, !tbaa !1
  %k = getelementptr inbounds %struct.Gamma, %struct.Gamma* %22, i32 0, i32 3
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %k, i32 0, i32 0
  %23 = load %struct.Gamma*, %struct.Gamma** %gamma.addr, align 8, !tbaa !1
  %c = getelementptr inbounds %struct.Gamma, %struct.Gamma* %23, i32 0, i32 0
  %arraydecay13 = getelementptr inbounds [256 x i8], [256 x i8]* %c, i32 0, i32 0
  %24 = load %struct.Gamma*, %struct.Gamma** %gamma.addr, align 8, !tbaa !1
  %m = getelementptr inbounds %struct.Gamma, %struct.Gamma* %24, i32 0, i32 1
  %arraydecay14 = getelementptr inbounds [256 x i8], [256 x i8]* %m, i32 0, i32 0
  %25 = load %struct.Gamma*, %struct.Gamma** %gamma.addr, align 8, !tbaa !1
  %y = getelementptr inbounds %struct.Gamma, %struct.Gamma* %25, i32 0, i32 2
  %arraydecay15 = getelementptr inbounds [256 x i8], [256 x i8]* %y, i32 0, i32 0
  %26 = load %struct.Gamma*, %struct.Gamma** %gamma.addr, align 8, !tbaa !1
  %correct = getelementptr inbounds %struct.Gamma, %struct.Gamma* %26, i32 0, i32 4
  %arraydecay16 = getelementptr inbounds [256 x i32], [256 x i32]* %correct, i32 0, i32 0
  %27 = load %struct.misc_struct*, %struct.misc_struct** %misc_vars.addr, align 8, !tbaa !1
  %scan17 = getelementptr inbounds %struct.misc_struct, %struct.misc_struct* %27, i32 0, i32 15
  %28 = load i32, i32* %scan17, align 4, !tbaa !48
  %idxprom18 = sext i32 %28 to i64
  %29 = load %struct.ptr_arrays*, %struct.ptr_arrays** %data_ptrs.addr, align 8, !tbaa !1
  %data19 = getelementptr inbounds %struct.ptr_arrays, %struct.ptr_arrays* %29, i32 0, i32 0
  %arrayidx20 = getelementptr inbounds [4 x i8*], [4 x i8*]* %data19, i32 0, i64 %idxprom18
  %30 = load i8*, i8** %arrayidx20, align 8, !tbaa !1
  %31 = bitcast i8* %30 to i64*
  %call = call i32 @do_gcr(i32 %17, i8* %21, i8* %arraydecay, i8* %arraydecay13, i8* %arraydecay14, i8* %arraydecay15, i32* %arraydecay16, i64* %31) #6
  %32 = load %struct.misc_struct*, %struct.misc_struct** %misc_vars.addr, align 8, !tbaa !1
  %is_color_data = getelementptr inbounds %struct.misc_struct, %struct.misc_struct* %32, i32 0, i32 21
  store i32 %call, i32* %is_color_data, align 4, !tbaa !50
  %33 = load %struct.misc_struct*, %struct.misc_struct** %misc_vars.addr, align 8, !tbaa !1
  %scan21 = getelementptr inbounds %struct.misc_struct, %struct.misc_struct* %33, i32 0, i32 15
  %34 = load i32, i32* %scan21, align 4, !tbaa !48
  %35 = load %struct.misc_struct*, %struct.misc_struct** %misc_vars.addr, align 8, !tbaa !1
  %plane_size = getelementptr inbounds %struct.misc_struct, %struct.misc_struct* %35, i32 0, i32 8
  %36 = load i32, i32* %plane_size, align 4, !tbaa !51
  %37 = load %struct.error_val_field*, %struct.error_val_field** %error_values.addr, align 8, !tbaa !1
  %38 = load i8*, i8** %kP, align 8, !tbaa !1
  %39 = load %struct.misc_struct*, %struct.misc_struct** %misc_vars.addr, align 8, !tbaa !1
  %num_comps = getelementptr inbounds %struct.misc_struct, %struct.misc_struct* %39, i32 0, i32 4
  %40 = load i32, i32* %num_comps, align 4, !tbaa !52
  %41 = load i32*, i32** %ep, align 8, !tbaa !1
  %42 = load i8*, i8** %dp, align 8, !tbaa !1
  call void @FSDlinebw(i32 %34, i32 %36, %struct.error_val_field* %37, i8* %38, i32 %40, i32* %41, i8* %42) #6
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %44 = load %struct.misc_struct*, %struct.misc_struct** %misc_vars.addr, align 8, !tbaa !1
  %plane_size22 = getelementptr inbounds %struct.misc_struct, %struct.misc_struct* %44, i32 0, i32 8
  %45 = load i32, i32* %plane_size22, align 4, !tbaa !51
  %46 = load %struct.misc_struct*, %struct.misc_struct** %misc_vars.addr, align 8, !tbaa !1
  %scan23 = getelementptr inbounds %struct.misc_struct, %struct.misc_struct* %46, i32 0, i32 15
  %47 = load i32, i32* %scan23, align 4, !tbaa !48
  %idxprom24 = sext i32 %47 to i64
  %48 = load %struct.ptr_arrays*, %struct.ptr_arrays** %data_ptrs.addr, align 8, !tbaa !1
  %plane_data25 = getelementptr inbounds %struct.ptr_arrays, %struct.ptr_arrays* %48, i32 0, i32 2
  %arrayidx26 = getelementptr inbounds [4 x [4 x i8*]], [4 x [4 x i8*]]* %plane_data25, i32 0, i64 %idxprom24
  %arrayidx27 = getelementptr inbounds [4 x i8*], [4 x i8*]* %arrayidx26, i32 0, i64 3
  %49 = load i8*, i8** %arrayidx27, align 8, !tbaa !1
  %50 = load %struct.misc_struct*, %struct.misc_struct** %misc_vars.addr, align 8, !tbaa !1
  %scan28 = getelementptr inbounds %struct.misc_struct, %struct.misc_struct* %50, i32 0, i32 15
  %51 = load i32, i32* %scan28, align 4, !tbaa !48
  %sub = sub nsw i32 1, %51
  %idxprom29 = sext i32 %sub to i64
  %52 = load %struct.ptr_arrays*, %struct.ptr_arrays** %data_ptrs.addr, align 8, !tbaa !1
  %plane_data30 = getelementptr inbounds %struct.ptr_arrays, %struct.ptr_arrays* %52, i32 0, i32 2
  %arrayidx31 = getelementptr inbounds [4 x [4 x i8*]], [4 x [4 x i8*]]* %plane_data30, i32 0, i64 %idxprom29
  %arrayidx32 = getelementptr inbounds [4 x i8*], [4 x i8*]* %arrayidx31, i32 0, i64 3
  %53 = load i8*, i8** %arrayidx32, align 8, !tbaa !1
  %54 = load %struct.ptr_arrays*, %struct.ptr_arrays** %data_ptrs.addr, align 8, !tbaa !1
  %out_data = getelementptr inbounds %struct.ptr_arrays, %struct.ptr_arrays* %54, i32 0, i32 4
  %55 = load i8*, i8** %out_data, align 8, !tbaa !53
  call void @print_c9plane(%struct._IO_FILE* %43, i8 signext 118, i32 %45, i8* %49, i8* %53, i8* %55) #6
  %56 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %57 = bitcast %struct.gx_device_printer_s* %56 to %struct.gx_device_cdj850_s*
  %yscal = getelementptr inbounds %struct.gx_device_cdj850_s, %struct.gx_device_cdj850_s* %57, i32 0, i32 75
  %58 = load i32, i32* %yscal, align 4, !tbaa !44
  %tobool = icmp ne i32 %58, 0
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %59 = load %struct.misc_struct*, %struct.misc_struct** %misc_vars.addr, align 8, !tbaa !1
  %is_two_pass = getelementptr inbounds %struct.misc_struct, %struct.misc_struct* %59, i32 0, i32 17
  %60 = load i32, i32* %is_two_pass, align 4, !tbaa !54
  %tobool33 = icmp ne i32 %60, 0
  br i1 %tobool33, label %if.then, label %if.end.101

if.then:                                          ; preds = %lor.lhs.false, %entry
  %61 = bitcast i32* %plane_size_c to i8*
  call void @llvm.lifetime.start(i64 4, i8* %61) #2
  %62 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %63 = bitcast %struct.gx_device_printer_s* %62 to %struct.gx_device_cdj850_s*
  %yscal34 = getelementptr inbounds %struct.gx_device_cdj850_s, %struct.gx_device_cdj850_s* %63, i32 0, i32 75
  %64 = load i32, i32* %yscal34, align 4, !tbaa !44
  %idxprom35 = sext i32 %64 to i64
  %65 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %66 = bitcast %struct.gx_device_printer_s* %65 to %struct.gx_device_cdj850_s*
  %xscal = getelementptr inbounds %struct.gx_device_cdj850_s, %struct.gx_device_cdj850_s* %66, i32 0, i32 74
  %67 = load i32, i32* %xscal, align 4, !tbaa !43
  %idxprom36 = sext i32 %67 to i64
  %arrayidx37 = getelementptr inbounds [2 x [2 x i32 (i32, i8*, i8*, i8*)*]], [2 x [2 x i32 (i32, i8*, i8*, i8*)*]]* @rescale_color_plane, i32 0, i64 %idxprom36
  %arrayidx38 = getelementptr inbounds [2 x i32 (i32, i8*, i8*, i8*)*], [2 x i32 (i32, i8*, i8*, i8*)*]* %arrayidx37, i32 0, i64 %idxprom35
  %68 = load i32 (i32, i8*, i8*, i8*)*, i32 (i32, i8*, i8*, i8*)** %arrayidx38, align 8, !tbaa !1
  %69 = load %struct.misc_struct*, %struct.misc_struct** %misc_vars.addr, align 8, !tbaa !1
  %databuff_size39 = getelementptr inbounds %struct.misc_struct, %struct.misc_struct* %69, i32 0, i32 10
  %70 = load i32, i32* %databuff_size39, align 4, !tbaa !49
  %71 = load %struct.misc_struct*, %struct.misc_struct** %misc_vars.addr, align 8, !tbaa !1
  %scan40 = getelementptr inbounds %struct.misc_struct, %struct.misc_struct* %71, i32 0, i32 15
  %72 = load i32, i32* %scan40, align 4, !tbaa !48
  %idxprom41 = sext i32 %72 to i64
  %73 = load %struct.ptr_arrays*, %struct.ptr_arrays** %data_ptrs.addr, align 8, !tbaa !1
  %data42 = getelementptr inbounds %struct.ptr_arrays, %struct.ptr_arrays* %73, i32 0, i32 0
  %arrayidx43 = getelementptr inbounds [4 x i8*], [4 x i8*]* %data42, i32 0, i64 %idxprom41
  %74 = load i8*, i8** %arrayidx43, align 8, !tbaa !1
  %75 = load %struct.misc_struct*, %struct.misc_struct** %misc_vars.addr, align 8, !tbaa !1
  %scan44 = getelementptr inbounds %struct.misc_struct, %struct.misc_struct* %75, i32 0, i32 15
  %76 = load i32, i32* %scan44, align 4, !tbaa !48
  %tobool45 = icmp ne i32 %76, 0
  %lnot = xor i1 %tobool45, true
  %lnot.ext = zext i1 %lnot to i32
  %idxprom46 = sext i32 %lnot.ext to i64
  %77 = load %struct.ptr_arrays*, %struct.ptr_arrays** %data_ptrs.addr, align 8, !tbaa !1
  %data47 = getelementptr inbounds %struct.ptr_arrays, %struct.ptr_arrays* %77, i32 0, i32 0
  %arrayidx48 = getelementptr inbounds [4 x i8*], [4 x i8*]* %data47, i32 0, i64 %idxprom46
  %78 = load i8*, i8** %arrayidx48, align 8, !tbaa !1
  %79 = load %struct.misc_struct*, %struct.misc_struct** %misc_vars.addr, align 8, !tbaa !1
  %cscan = getelementptr inbounds %struct.misc_struct, %struct.misc_struct* %79, i32 0, i32 16
  %80 = load i32, i32* %cscan, align 4, !tbaa !55
  %idxprom49 = sext i32 %80 to i64
  %81 = load %struct.ptr_arrays*, %struct.ptr_arrays** %data_ptrs.addr, align 8, !tbaa !1
  %data_c = getelementptr inbounds %struct.ptr_arrays, %struct.ptr_arrays* %81, i32 0, i32 1
  %arrayidx50 = getelementptr inbounds [4 x i8*], [4 x i8*]* %data_c, i32 0, i64 %idxprom49
  %82 = load i8*, i8** %arrayidx50, align 8, !tbaa !1
  %call51 = call i32 %68(i32 %70, i8* %74, i8* %78, i8* %82) #6
  %83 = load %struct.misc_struct*, %struct.misc_struct** %misc_vars.addr, align 8, !tbaa !1
  %storage_bpp = getelementptr inbounds %struct.misc_struct, %struct.misc_struct* %83, i32 0, i32 6
  %84 = load i32, i32* %storage_bpp, align 4, !tbaa !56
  %div = sdiv i32 %call51, %84
  store i32 %div, i32* %plane_size_c, align 4, !tbaa !23
  %85 = load %struct.misc_struct*, %struct.misc_struct** %misc_vars.addr, align 8, !tbaa !1
  %scan52 = getelementptr inbounds %struct.misc_struct, %struct.misc_struct* %85, i32 0, i32 15
  %86 = load i32, i32* %scan52, align 4, !tbaa !48
  %87 = load %struct.misc_struct*, %struct.misc_struct** %misc_vars.addr, align 8, !tbaa !1
  %cscan53 = getelementptr inbounds %struct.misc_struct, %struct.misc_struct* %87, i32 0, i32 16
  %88 = load i32, i32* %cscan53, align 4, !tbaa !55
  %89 = load %struct.misc_struct*, %struct.misc_struct** %misc_vars.addr, align 8, !tbaa !1
  %plane_size54 = getelementptr inbounds %struct.misc_struct, %struct.misc_struct* %89, i32 0, i32 8
  %90 = load i32, i32* %plane_size54, align 4, !tbaa !51
  %91 = load i32, i32* %plane_size_c, align 4, !tbaa !23
  %92 = load %struct.misc_struct*, %struct.misc_struct** %misc_vars.addr, align 8, !tbaa !1
  %num_comps55 = getelementptr inbounds %struct.misc_struct, %struct.misc_struct* %92, i32 0, i32 4
  %93 = load i32, i32* %num_comps55, align 4, !tbaa !52
  %94 = load %struct.ptr_arrays*, %struct.ptr_arrays** %data_ptrs.addr, align 8, !tbaa !1
  %95 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %96 = load %struct.error_val_field*, %struct.error_val_field** %error_values.addr, align 8, !tbaa !1
  call void @do_floyd_steinberg(i32 %86, i32 %88, i32 %90, i32 %91, i32 %93, %struct.ptr_arrays* %94, %struct.gx_device_printer_s* %95, %struct.error_val_field* %96) #6
  %97 = load %struct.misc_struct*, %struct.misc_struct** %misc_vars.addr, align 8, !tbaa !1
  %num_comps56 = getelementptr inbounds %struct.misc_struct, %struct.misc_struct* %97, i32 0, i32 4
  %98 = load i32, i32* %num_comps56, align 4, !tbaa !52
  %sub57 = sub nsw i32 %98, 2
  store i32 %sub57, i32* %i, align 4, !tbaa !23
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %99 = load i32, i32* %i, align 4, !tbaa !23
  %cmp = icmp sge i32 %99, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %100 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %101 = load i32, i32* %i, align 4, !tbaa !23
  %idxprom58 = sext i32 %101 to i64
  %102 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %103 = bitcast %struct.gx_device_printer_s* %102 to %struct.gx_device_cdj850_s*
  %intensities = getelementptr inbounds %struct.gx_device_cdj850_s, %struct.gx_device_cdj850_s* %103, i32 0, i32 73
  %104 = load i32, i32* %intensities, align 4, !tbaa !41
  %cmp59 = icmp sgt i32 %104, 2
  %conv = zext i1 %cmp59 to i32
  %idxprom60 = sext i32 %conv to i64
  %arrayidx61 = getelementptr inbounds [2 x i8*], [2 x i8*]* @cdj850_print_non_blank_lines.plane_code, i32 0, i64 %idxprom60
  %105 = load i8*, i8** %arrayidx61, align 8, !tbaa !1
  %arrayidx62 = getelementptr inbounds i8, i8* %105, i64 %idxprom58
  %106 = load i8, i8* %arrayidx62, align 1, !tbaa !24
  %107 = load i32, i32* %plane_size_c, align 4, !tbaa !23
  %108 = load i32, i32* %i, align 4, !tbaa !23
  %idxprom63 = sext i32 %108 to i64
  %109 = load %struct.misc_struct*, %struct.misc_struct** %misc_vars.addr, align 8, !tbaa !1
  %cscan64 = getelementptr inbounds %struct.misc_struct, %struct.misc_struct* %109, i32 0, i32 16
  %110 = load i32, i32* %cscan64, align 4, !tbaa !55
  %idxprom65 = sext i32 %110 to i64
  %111 = load %struct.ptr_arrays*, %struct.ptr_arrays** %data_ptrs.addr, align 8, !tbaa !1
  %plane_data_c = getelementptr inbounds %struct.ptr_arrays, %struct.ptr_arrays* %111, i32 0, i32 3
  %arrayidx66 = getelementptr inbounds [4 x [8 x i8*]], [4 x [8 x i8*]]* %plane_data_c, i32 0, i64 %idxprom65
  %arrayidx67 = getelementptr inbounds [8 x i8*], [8 x i8*]* %arrayidx66, i32 0, i64 %idxprom63
  %112 = load i8*, i8** %arrayidx67, align 8, !tbaa !1
  %113 = load i32, i32* %i, align 4, !tbaa !23
  %idxprom68 = sext i32 %113 to i64
  %114 = load %struct.misc_struct*, %struct.misc_struct** %misc_vars.addr, align 8, !tbaa !1
  %cscan69 = getelementptr inbounds %struct.misc_struct, %struct.misc_struct* %114, i32 0, i32 16
  %115 = load i32, i32* %cscan69, align 4, !tbaa !55
  %sub70 = sub nsw i32 1, %115
  %idxprom71 = sext i32 %sub70 to i64
  %116 = load %struct.ptr_arrays*, %struct.ptr_arrays** %data_ptrs.addr, align 8, !tbaa !1
  %plane_data_c72 = getelementptr inbounds %struct.ptr_arrays, %struct.ptr_arrays* %116, i32 0, i32 3
  %arrayidx73 = getelementptr inbounds [4 x [8 x i8*]], [4 x [8 x i8*]]* %plane_data_c72, i32 0, i64 %idxprom71
  %arrayidx74 = getelementptr inbounds [8 x i8*], [8 x i8*]* %arrayidx73, i32 0, i64 %idxprom68
  %117 = load i8*, i8** %arrayidx74, align 8, !tbaa !1
  %118 = load %struct.ptr_arrays*, %struct.ptr_arrays** %data_ptrs.addr, align 8, !tbaa !1
  %out_data75 = getelementptr inbounds %struct.ptr_arrays, %struct.ptr_arrays* %118, i32 0, i32 4
  %119 = load i8*, i8** %out_data75, align 8, !tbaa !53
  call void @print_c9plane(%struct._IO_FILE* %100, i8 signext %106, i32 %107, i8* %112, i8* %117, i8* %119) #6
  %120 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %121 = bitcast %struct.gx_device_printer_s* %120 to %struct.gx_device_cdj850_s*
  %intensities76 = getelementptr inbounds %struct.gx_device_cdj850_s, %struct.gx_device_cdj850_s* %121, i32 0, i32 73
  %122 = load i32, i32* %intensities76, align 4, !tbaa !41
  %cmp77 = icmp sgt i32 %122, 2
  br i1 %cmp77, label %if.then.79, label %if.end

if.then.79:                                       ; preds = %for.body
  %123 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %124 = load i32, i32* %i, align 4, !tbaa !23
  %idxprom80 = sext i32 %124 to i64
  %125 = load i8*, i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @cdj850_print_non_blank_lines.plane_code, i32 0, i64 0), align 8, !tbaa !1
  %arrayidx81 = getelementptr inbounds i8, i8* %125, i64 %idxprom80
  %126 = load i8, i8* %arrayidx81, align 1, !tbaa !24
  %127 = load i32, i32* %plane_size_c, align 4, !tbaa !23
  %128 = load i32, i32* %i, align 4, !tbaa !23
  %add82 = add nsw i32 %128, 4
  %idxprom83 = sext i32 %add82 to i64
  %129 = load %struct.misc_struct*, %struct.misc_struct** %misc_vars.addr, align 8, !tbaa !1
  %cscan84 = getelementptr inbounds %struct.misc_struct, %struct.misc_struct* %129, i32 0, i32 16
  %130 = load i32, i32* %cscan84, align 4, !tbaa !55
  %idxprom85 = sext i32 %130 to i64
  %131 = load %struct.ptr_arrays*, %struct.ptr_arrays** %data_ptrs.addr, align 8, !tbaa !1
  %plane_data_c86 = getelementptr inbounds %struct.ptr_arrays, %struct.ptr_arrays* %131, i32 0, i32 3
  %arrayidx87 = getelementptr inbounds [4 x [8 x i8*]], [4 x [8 x i8*]]* %plane_data_c86, i32 0, i64 %idxprom85
  %arrayidx88 = getelementptr inbounds [8 x i8*], [8 x i8*]* %arrayidx87, i32 0, i64 %idxprom83
  %132 = load i8*, i8** %arrayidx88, align 8, !tbaa !1
  %133 = load i32, i32* %i, align 4, !tbaa !23
  %add89 = add nsw i32 %133, 4
  %idxprom90 = sext i32 %add89 to i64
  %134 = load %struct.misc_struct*, %struct.misc_struct** %misc_vars.addr, align 8, !tbaa !1
  %cscan91 = getelementptr inbounds %struct.misc_struct, %struct.misc_struct* %134, i32 0, i32 16
  %135 = load i32, i32* %cscan91, align 4, !tbaa !55
  %sub92 = sub nsw i32 1, %135
  %idxprom93 = sext i32 %sub92 to i64
  %136 = load %struct.ptr_arrays*, %struct.ptr_arrays** %data_ptrs.addr, align 8, !tbaa !1
  %plane_data_c94 = getelementptr inbounds %struct.ptr_arrays, %struct.ptr_arrays* %136, i32 0, i32 3
  %arrayidx95 = getelementptr inbounds [4 x [8 x i8*]], [4 x [8 x i8*]]* %plane_data_c94, i32 0, i64 %idxprom93
  %arrayidx96 = getelementptr inbounds [8 x i8*], [8 x i8*]* %arrayidx95, i32 0, i64 %idxprom90
  %137 = load i8*, i8** %arrayidx96, align 8, !tbaa !1
  %138 = load %struct.ptr_arrays*, %struct.ptr_arrays** %data_ptrs.addr, align 8, !tbaa !1
  %out_data97 = getelementptr inbounds %struct.ptr_arrays, %struct.ptr_arrays* %138, i32 0, i32 4
  %139 = load i8*, i8** %out_data97, align 8, !tbaa !53
  call void @print_c9plane(%struct._IO_FILE* %123, i8 signext %126, i32 %127, i8* %132, i8* %137, i8* %139) #6
  br label %if.end

if.end:                                           ; preds = %if.then.79, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %140 = load i32, i32* %i, align 4, !tbaa !23
  %dec = add nsw i32 %140, -1
  store i32 %dec, i32* %i, align 4, !tbaa !23
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %141 = load %struct.misc_struct*, %struct.misc_struct** %misc_vars.addr, align 8, !tbaa !1
  %cscan98 = getelementptr inbounds %struct.misc_struct, %struct.misc_struct* %141, i32 0, i32 16
  %142 = load i32, i32* %cscan98, align 4, !tbaa !55
  %sub99 = sub nsw i32 1, %142
  %143 = load %struct.misc_struct*, %struct.misc_struct** %misc_vars.addr, align 8, !tbaa !1
  %cscan100 = getelementptr inbounds %struct.misc_struct, %struct.misc_struct* %143, i32 0, i32 16
  store i32 %sub99, i32* %cscan100, align 4, !tbaa !55
  %144 = bitcast i32* %plane_size_c to i8*
  call void @llvm.lifetime.end(i64 4, i8* %144) #2
  br label %if.end.101

if.end.101:                                       ; preds = %for.end, %lor.lhs.false
  %145 = bitcast i32** %ep to i8*
  call void @llvm.lifetime.end(i64 8, i8* %145) #2
  %146 = bitcast i8** %dp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %146) #2
  %147 = bitcast i8** %kP to i8*
  call void @llvm.lifetime.end(i64 8, i8* %147) #2
  %148 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %148) #2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @cdj850_terminate_page(%struct.gx_device_printer_s* %pdev, %struct._IO_FILE* %prn_stream) #1 {
entry:
  %pdev.addr = alloca %struct.gx_device_printer_s*, align 8
  %prn_stream.addr = alloca %struct._IO_FILE*, align 8
  store %struct.gx_device_printer_s* %pdev, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  store %struct._IO_FILE* %prn_stream, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i32 0, i32 0), %struct._IO_FILE* %0) #6
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call1 = call i32 @fputs(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i32 0, i32 0), %struct._IO_FILE* %1) #6
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call2 = call i32 @fputs(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i32 0, i32 0), %struct._IO_FILE* %2) #6
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @cdj880_start_raster_mode(%struct.gx_device_printer_s* %pdev, i32 %paper_size, %struct._IO_FILE* %prn_stream) #1 {
entry:
  %pdev.addr = alloca %struct.gx_device_printer_s*, align 8
  %paper_size.addr = alloca i32, align 4
  %prn_stream.addr = alloca %struct._IO_FILE*, align 8
  %xres = alloca i32, align 4
  %yres = alloca i32, align 4
  %init = alloca %struct.hp850_cmyk_init_s, align 1
  store %struct.gx_device_printer_s* %pdev, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  store i32 %paper_size, i32* %paper_size.addr, align 4, !tbaa !23
  store %struct._IO_FILE* %prn_stream, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %0 = bitcast i32* %xres to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast i32* %yres to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = bitcast %struct.hp850_cmyk_init_s* %init to i8*
  call void @llvm.lifetime.start(i64 26, i8* %2) #2
  %3 = bitcast %struct.hp850_cmyk_init_s* %init to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* getelementptr inbounds (%struct.hp850_cmyk_init_s, %struct.hp850_cmyk_init_s* @hp850_cmyk_init, i32 0, i32 0, i32 0), i64 26, i32 1, i1 false), !tbaa.struct !40
  %4 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %5 = bitcast %struct.gx_device_printer_s* %4 to %struct.gx_device_cdj850_s*
  %intensities = getelementptr inbounds %struct.gx_device_cdj850_s, %struct.gx_device_cdj850_s* %5, i32 0, i32 73
  %6 = load i32, i32* %intensities, align 4, !tbaa !41
  %conv = trunc i32 %6 to i8
  %a = getelementptr inbounds %struct.hp850_cmyk_init_s, %struct.hp850_cmyk_init_s* %init, i32 0, i32 0
  %arrayidx = getelementptr inbounds [26 x i8], [26 x i8]* %a, i32 0, i64 13
  store i8 %conv, i8* %arrayidx, align 1, !tbaa !24
  %7 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %8 = bitcast %struct.gx_device_printer_s* %7 to %struct.gx_device_cdj850_s*
  %intensities1 = getelementptr inbounds %struct.gx_device_cdj850_s, %struct.gx_device_cdj850_s* %8, i32 0, i32 73
  %9 = load i32, i32* %intensities1, align 4, !tbaa !41
  %conv2 = trunc i32 %9 to i8
  %a3 = getelementptr inbounds %struct.hp850_cmyk_init_s, %struct.hp850_cmyk_init_s* %init, i32 0, i32 0
  %arrayidx4 = getelementptr inbounds [26 x i8], [26 x i8]* %a3, i32 0, i64 19
  store i8 %conv2, i8* %arrayidx4, align 1, !tbaa !24
  %10 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %11 = bitcast %struct.gx_device_printer_s* %10 to %struct.gx_device_cdj850_s*
  %intensities5 = getelementptr inbounds %struct.gx_device_cdj850_s, %struct.gx_device_cdj850_s* %11, i32 0, i32 73
  %12 = load i32, i32* %intensities5, align 4, !tbaa !41
  %conv6 = trunc i32 %12 to i8
  %a7 = getelementptr inbounds %struct.hp850_cmyk_init_s, %struct.hp850_cmyk_init_s* %init, i32 0, i32 0
  %arrayidx8 = getelementptr inbounds [26 x i8], [26 x i8]* %a7, i32 0, i64 25
  store i8 %conv6, i8* %arrayidx8, align 1, !tbaa !24
  %13 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %14 = bitcast %struct.gx_device_printer_s* %13 to %struct.gx_device_cdj850_s*
  %HWResolution = getelementptr inbounds %struct.gx_device_cdj850_s, %struct.gx_device_cdj850_s* %14, i32 0, i32 22
  %arrayidx9 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution, i32 0, i64 0
  %15 = load float, float* %arrayidx9, align 4, !tbaa !42
  %conv10 = fptosi float %15 to i32
  %a11 = getelementptr inbounds %struct.hp850_cmyk_init_s, %struct.hp850_cmyk_init_s* %init, i32 0, i32 0
  %arraydecay = getelementptr inbounds [26 x i8], [26 x i8]* %a11, i32 0, i32 0
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay, i64 2
  call void @assign_dpi(i32 %conv10, i8* %add.ptr) #6
  %16 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %17 = bitcast %struct.gx_device_printer_s* %16 to %struct.gx_device_cdj850_s*
  %HWResolution12 = getelementptr inbounds %struct.gx_device_cdj850_s, %struct.gx_device_cdj850_s* %17, i32 0, i32 22
  %arrayidx13 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution12, i32 0, i64 1
  %18 = load float, float* %arrayidx13, align 4, !tbaa !42
  %conv14 = fptosi float %18 to i32
  %a15 = getelementptr inbounds %struct.hp850_cmyk_init_s, %struct.hp850_cmyk_init_s* %init, i32 0, i32 0
  %arraydecay16 = getelementptr inbounds [26 x i8], [26 x i8]* %a15, i32 0, i32 0
  %add.ptr17 = getelementptr inbounds i8, i8* %arraydecay16, i64 4
  call void @assign_dpi(i32 %conv14, i8* %add.ptr17) #6
  %19 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %20 = bitcast %struct.gx_device_printer_s* %19 to %struct.gx_device_cdj850_s*
  %HWResolution18 = getelementptr inbounds %struct.gx_device_cdj850_s, %struct.gx_device_cdj850_s* %20, i32 0, i32 22
  %arrayidx19 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution18, i32 0, i64 0
  %21 = load float, float* %arrayidx19, align 4, !tbaa !42
  %22 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %23 = bitcast %struct.gx_device_printer_s* %22 to %struct.gx_device_cdj850_s*
  %xscal = getelementptr inbounds %struct.gx_device_cdj850_s, %struct.gx_device_cdj850_s* %23, i32 0, i32 74
  %24 = load i32, i32* %xscal, align 4, !tbaa !43
  %add = add nsw i32 %24, 1
  %conv20 = sitofp i32 %add to float
  %div = fdiv float %21, %conv20
  %conv21 = fptosi float %div to i32
  store i32 %conv21, i32* %xres, align 4, !tbaa !23
  %25 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %26 = bitcast %struct.gx_device_printer_s* %25 to %struct.gx_device_cdj850_s*
  %HWResolution22 = getelementptr inbounds %struct.gx_device_cdj850_s, %struct.gx_device_cdj850_s* %26, i32 0, i32 22
  %arrayidx23 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution22, i32 0, i64 1
  %27 = load float, float* %arrayidx23, align 4, !tbaa !42
  %28 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %29 = bitcast %struct.gx_device_printer_s* %28 to %struct.gx_device_cdj850_s*
  %yscal = getelementptr inbounds %struct.gx_device_cdj850_s, %struct.gx_device_cdj850_s* %29, i32 0, i32 75
  %30 = load i32, i32* %yscal, align 4, !tbaa !44
  %add24 = add nsw i32 %30, 1
  %conv25 = sitofp i32 %add24 to float
  %div26 = fdiv float %27, %conv25
  %conv27 = fptosi float %div26 to i32
  store i32 %conv27, i32* %yres, align 4, !tbaa !23
  %31 = load i32, i32* %xres, align 4, !tbaa !23
  %a28 = getelementptr inbounds %struct.hp850_cmyk_init_s, %struct.hp850_cmyk_init_s* %init, i32 0, i32 0
  %arraydecay29 = getelementptr inbounds [26 x i8], [26 x i8]* %a28, i32 0, i32 0
  %add.ptr30 = getelementptr inbounds i8, i8* %arraydecay29, i64 8
  call void @assign_dpi(i32 %31, i8* %add.ptr30) #6
  %32 = load i32, i32* %yres, align 4, !tbaa !23
  %a31 = getelementptr inbounds %struct.hp850_cmyk_init_s, %struct.hp850_cmyk_init_s* %init, i32 0, i32 0
  %arraydecay32 = getelementptr inbounds [26 x i8], [26 x i8]* %a31, i32 0, i32 0
  %add.ptr33 = getelementptr inbounds i8, i8* %arraydecay32, i64 10
  call void @assign_dpi(i32 %32, i8* %add.ptr33) #6
  %33 = load i32, i32* %xres, align 4, !tbaa !23
  %a34 = getelementptr inbounds %struct.hp850_cmyk_init_s, %struct.hp850_cmyk_init_s* %init, i32 0, i32 0
  %arraydecay35 = getelementptr inbounds [26 x i8], [26 x i8]* %a34, i32 0, i32 0
  %add.ptr36 = getelementptr inbounds i8, i8* %arraydecay35, i64 14
  call void @assign_dpi(i32 %33, i8* %add.ptr36) #6
  %34 = load i32, i32* %yres, align 4, !tbaa !23
  %a37 = getelementptr inbounds %struct.hp850_cmyk_init_s, %struct.hp850_cmyk_init_s* %init, i32 0, i32 0
  %arraydecay38 = getelementptr inbounds [26 x i8], [26 x i8]* %a37, i32 0, i32 0
  %add.ptr39 = getelementptr inbounds i8, i8* %arraydecay38, i64 16
  call void @assign_dpi(i32 %34, i8* %add.ptr39) #6
  %35 = load i32, i32* %xres, align 4, !tbaa !23
  %a40 = getelementptr inbounds %struct.hp850_cmyk_init_s, %struct.hp850_cmyk_init_s* %init, i32 0, i32 0
  %arraydecay41 = getelementptr inbounds [26 x i8], [26 x i8]* %a40, i32 0, i32 0
  %add.ptr42 = getelementptr inbounds i8, i8* %arraydecay41, i64 20
  call void @assign_dpi(i32 %35, i8* %add.ptr42) #6
  %36 = load i32, i32* %yres, align 4, !tbaa !23
  %a43 = getelementptr inbounds %struct.hp850_cmyk_init_s, %struct.hp850_cmyk_init_s* %init, i32 0, i32 0
  %arraydecay44 = getelementptr inbounds [26 x i8], [26 x i8]* %a43, i32 0, i32 0
  %add.ptr45 = getelementptr inbounds i8, i8* %arraydecay44, i64 22
  call void @assign_dpi(i32 %36, i8* %add.ptr45) #6
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call = call i32 @fputs(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.48, i32 0, i32 0), %struct._IO_FILE* %37) #6
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call46 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.49, i32 0, i32 0), %struct._IO_FILE* %38) #6
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call47 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %39, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.56, i32 0, i32 0)) #6
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %41 = load i32, i32* %paper_size.addr, align 4, !tbaa !23
  %call48 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %40, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.50, i32 0, i32 0), i32 %41) #6
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %43 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %44 = bitcast %struct.gx_device_printer_s* %43 to %struct.gx_device_cdj850_s*
  %quality = getelementptr inbounds %struct.gx_device_cdj850_s, %struct.gx_device_cdj850_s* %44, i32 0, i32 71
  %45 = load i32, i32* %quality, align 4, !tbaa !45
  %call49 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %42, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.51, i32 0, i32 0), i32 %45) #6
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %47 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %48 = bitcast %struct.gx_device_printer_s* %47 to %struct.gx_device_cdj850_s*
  %papertype = getelementptr inbounds %struct.gx_device_cdj850_s, %struct.gx_device_cdj850_s* %48, i32 0, i32 72
  %49 = load i32, i32* %papertype, align 4, !tbaa !46
  %call50 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %46, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.52, i32 0, i32 0), i32 %49) #6
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %51 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %HWMargins = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %51, i32 0, i32 25
  %arrayidx51 = getelementptr inbounds [4 x float], [4 x float]* %HWMargins, i32 0, i64 3
  %52 = load float, float* %arrayidx51, align 4, !tbaa !42
  %conv52 = fpext float %52 to double
  %div53 = fdiv double %conv52, 7.200000e+01
  %sub = fsub double %div53, 4.000000e-02
  %mul = fmul double 6.000000e+02, %sub
  %conv54 = fptosi double %mul to i32
  %call55 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %50, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.53, i32 0, i32 0), i32 %conv54) #6
  %53 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call56 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %53, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.54, i32 0, i32 0), i32 26) #6
  %a57 = getelementptr inbounds %struct.hp850_cmyk_init_s, %struct.hp850_cmyk_init_s* %init, i32 0, i32 0
  %arraydecay58 = getelementptr inbounds [26 x i8], [26 x i8]* %a57, i32 0, i32 0
  %54 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call59 = call i64 @fwrite(i8* %arraydecay58, i64 1, i64 26, %struct._IO_FILE* %54) #6
  %55 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call60 = call i32 @fputs(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.42, i32 0, i32 0), %struct._IO_FILE* %55) #6
  %56 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %57 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %58 = bitcast %struct.gx_device_printer_s* %57 to %struct.gx_device_cdj850_s*
  %compression = getelementptr inbounds %struct.gx_device_cdj850_s, %struct.gx_device_cdj850_s* %58, i32 0, i32 77
  %59 = load i32, i32* %compression, align 4, !tbaa !47
  %call61 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %56, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.57, i32 0, i32 0), i32 %59) #6
  %60 = bitcast %struct.hp850_cmyk_init_s* %init to i8*
  call void @llvm.lifetime.end(i64 26, i8* %60) #2
  %61 = bitcast i32* %yres to i8*
  call void @llvm.lifetime.end(i64 4, i8* %61) #2
  %62 = bitcast i32* %xres to i8*
  call void @llvm.lifetime.end(i64 4, i8* %62) #2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @cdj880_print_non_blank_lines(%struct.gx_device_printer_s* %pdev, %struct.ptr_arrays* %data_ptrs, %struct.misc_struct* %misc_vars, %struct.error_val_field* %error_values, %struct.Gamma* %gamma, %struct._IO_FILE* %prn_stream) #1 {
entry:
  %pdev.addr = alloca %struct.gx_device_printer_s*, align 8
  %data_ptrs.addr = alloca %struct.ptr_arrays*, align 8
  %misc_vars.addr = alloca %struct.misc_struct*, align 8
  %error_values.addr = alloca %struct.error_val_field*, align 8
  %gamma.addr = alloca %struct.Gamma*, align 8
  %prn_stream.addr = alloca %struct._IO_FILE*, align 8
  %i = alloca i32, align 4
  %kP = alloca i8*, align 8
  %dp = alloca i8*, align 8
  %ep = alloca i32*, align 8
  %plane_size_c = alloca i32, align 4
  store %struct.gx_device_printer_s* %pdev, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  store %struct.ptr_arrays* %data_ptrs, %struct.ptr_arrays** %data_ptrs.addr, align 8, !tbaa !1
  store %struct.misc_struct* %misc_vars, %struct.misc_struct** %misc_vars.addr, align 8, !tbaa !1
  store %struct.error_val_field* %error_values, %struct.error_val_field** %error_values.addr, align 8, !tbaa !1
  store %struct.Gamma* %gamma, %struct.Gamma** %gamma.addr, align 8, !tbaa !1
  store %struct._IO_FILE* %prn_stream, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast i8** %kP to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #2
  %2 = load %struct.misc_struct*, %struct.misc_struct** %misc_vars.addr, align 8, !tbaa !1
  %scan = getelementptr inbounds %struct.misc_struct, %struct.misc_struct* %2, i32 0, i32 15
  %3 = load i32, i32* %scan, align 4, !tbaa !48
  %add = add nsw i32 %3, 2
  %idxprom = sext i32 %add to i64
  %4 = load %struct.ptr_arrays*, %struct.ptr_arrays** %data_ptrs.addr, align 8, !tbaa !1
  %plane_data = getelementptr inbounds %struct.ptr_arrays, %struct.ptr_arrays* %4, i32 0, i32 2
  %arrayidx = getelementptr inbounds [4 x [4 x i8*]], [4 x [4 x i8*]]* %plane_data, i32 0, i64 %idxprom
  %arrayidx1 = getelementptr inbounds [4 x i8*], [4 x i8*]* %arrayidx, i32 0, i64 3
  %5 = load i8*, i8** %arrayidx1, align 8, !tbaa !1
  store i8* %5, i8** %kP, align 8, !tbaa !1
  %6 = bitcast i8** %dp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #2
  %7 = load %struct.misc_struct*, %struct.misc_struct** %misc_vars.addr, align 8, !tbaa !1
  %scan2 = getelementptr inbounds %struct.misc_struct, %struct.misc_struct* %7, i32 0, i32 15
  %8 = load i32, i32* %scan2, align 4, !tbaa !48
  %add3 = add nsw i32 %8, 2
  %idxprom4 = sext i32 %add3 to i64
  %9 = load %struct.ptr_arrays*, %struct.ptr_arrays** %data_ptrs.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.ptr_arrays, %struct.ptr_arrays* %9, i32 0, i32 0
  %arrayidx5 = getelementptr inbounds [4 x i8*], [4 x i8*]* %data, i32 0, i64 %idxprom4
  %10 = load i8*, i8** %arrayidx5, align 8, !tbaa !1
  store i8* %10, i8** %dp, align 8, !tbaa !1
  %11 = bitcast i32** %ep to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #2
  %12 = load %struct.misc_struct*, %struct.misc_struct** %misc_vars.addr, align 8, !tbaa !1
  %scan6 = getelementptr inbounds %struct.misc_struct, %struct.misc_struct* %12, i32 0, i32 15
  %13 = load i32, i32* %scan6, align 4, !tbaa !48
  %idxprom7 = sext i32 %13 to i64
  %14 = load %struct.ptr_arrays*, %struct.ptr_arrays** %data_ptrs.addr, align 8, !tbaa !1
  %errors = getelementptr inbounds %struct.ptr_arrays, %struct.ptr_arrays* %14, i32 0, i32 6
  %arrayidx8 = getelementptr inbounds [2 x i32*], [2 x i32*]* %errors, i32 0, i64 %idxprom7
  %15 = load i32*, i32** %arrayidx8, align 8, !tbaa !1
  store i32* %15, i32** %ep, align 8, !tbaa !1
  %16 = load %struct.misc_struct*, %struct.misc_struct** %misc_vars.addr, align 8, !tbaa !1
  %databuff_size = getelementptr inbounds %struct.misc_struct, %struct.misc_struct* %16, i32 0, i32 10
  %17 = load i32, i32* %databuff_size, align 4, !tbaa !49
  %18 = load %struct.misc_struct*, %struct.misc_struct** %misc_vars.addr, align 8, !tbaa !1
  %scan9 = getelementptr inbounds %struct.misc_struct, %struct.misc_struct* %18, i32 0, i32 15
  %19 = load i32, i32* %scan9, align 4, !tbaa !48
  %idxprom10 = sext i32 %19 to i64
  %20 = load %struct.ptr_arrays*, %struct.ptr_arrays** %data_ptrs.addr, align 8, !tbaa !1
  %data11 = getelementptr inbounds %struct.ptr_arrays, %struct.ptr_arrays* %20, i32 0, i32 0
  %arrayidx12 = getelementptr inbounds [4 x i8*], [4 x i8*]* %data11, i32 0, i64 %idxprom10
  %21 = load i8*, i8** %arrayidx12, align 8, !tbaa !1
  %22 = load %struct.Gamma*, %struct.Gamma** %gamma.addr, align 8, !tbaa !1
  %k = getelementptr inbounds %struct.Gamma, %struct.Gamma* %22, i32 0, i32 3
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %k, i32 0, i32 0
  %23 = load %struct.Gamma*, %struct.Gamma** %gamma.addr, align 8, !tbaa !1
  %c = getelementptr inbounds %struct.Gamma, %struct.Gamma* %23, i32 0, i32 0
  %arraydecay13 = getelementptr inbounds [256 x i8], [256 x i8]* %c, i32 0, i32 0
  %24 = load %struct.Gamma*, %struct.Gamma** %gamma.addr, align 8, !tbaa !1
  %m = getelementptr inbounds %struct.Gamma, %struct.Gamma* %24, i32 0, i32 1
  %arraydecay14 = getelementptr inbounds [256 x i8], [256 x i8]* %m, i32 0, i32 0
  %25 = load %struct.Gamma*, %struct.Gamma** %gamma.addr, align 8, !tbaa !1
  %y = getelementptr inbounds %struct.Gamma, %struct.Gamma* %25, i32 0, i32 2
  %arraydecay15 = getelementptr inbounds [256 x i8], [256 x i8]* %y, i32 0, i32 0
  %26 = load %struct.Gamma*, %struct.Gamma** %gamma.addr, align 8, !tbaa !1
  %correct = getelementptr inbounds %struct.Gamma, %struct.Gamma* %26, i32 0, i32 4
  %arraydecay16 = getelementptr inbounds [256 x i32], [256 x i32]* %correct, i32 0, i32 0
  %27 = load %struct.misc_struct*, %struct.misc_struct** %misc_vars.addr, align 8, !tbaa !1
  %scan17 = getelementptr inbounds %struct.misc_struct, %struct.misc_struct* %27, i32 0, i32 15
  %28 = load i32, i32* %scan17, align 4, !tbaa !48
  %idxprom18 = sext i32 %28 to i64
  %29 = load %struct.ptr_arrays*, %struct.ptr_arrays** %data_ptrs.addr, align 8, !tbaa !1
  %data19 = getelementptr inbounds %struct.ptr_arrays, %struct.ptr_arrays* %29, i32 0, i32 0
  %arrayidx20 = getelementptr inbounds [4 x i8*], [4 x i8*]* %data19, i32 0, i64 %idxprom18
  %30 = load i8*, i8** %arrayidx20, align 8, !tbaa !1
  %31 = bitcast i8* %30 to i64*
  %call = call i32 @do_gcr(i32 %17, i8* %21, i8* %arraydecay, i8* %arraydecay13, i8* %arraydecay14, i8* %arraydecay15, i32* %arraydecay16, i64* %31) #6
  %32 = load %struct.misc_struct*, %struct.misc_struct** %misc_vars.addr, align 8, !tbaa !1
  %is_color_data = getelementptr inbounds %struct.misc_struct, %struct.misc_struct* %32, i32 0, i32 21
  store i32 %call, i32* %is_color_data, align 4, !tbaa !50
  %33 = load %struct.misc_struct*, %struct.misc_struct** %misc_vars.addr, align 8, !tbaa !1
  %scan21 = getelementptr inbounds %struct.misc_struct, %struct.misc_struct* %33, i32 0, i32 15
  %34 = load i32, i32* %scan21, align 4, !tbaa !48
  %35 = load %struct.misc_struct*, %struct.misc_struct** %misc_vars.addr, align 8, !tbaa !1
  %plane_size = getelementptr inbounds %struct.misc_struct, %struct.misc_struct* %35, i32 0, i32 8
  %36 = load i32, i32* %plane_size, align 4, !tbaa !51
  %37 = load %struct.error_val_field*, %struct.error_val_field** %error_values.addr, align 8, !tbaa !1
  %38 = load i8*, i8** %kP, align 8, !tbaa !1
  %39 = load %struct.misc_struct*, %struct.misc_struct** %misc_vars.addr, align 8, !tbaa !1
  %num_comps = getelementptr inbounds %struct.misc_struct, %struct.misc_struct* %39, i32 0, i32 4
  %40 = load i32, i32* %num_comps, align 4, !tbaa !52
  %41 = load i32*, i32** %ep, align 8, !tbaa !1
  %42 = load i8*, i8** %dp, align 8, !tbaa !1
  call void @FSDlinebw(i32 %34, i32 %36, %struct.error_val_field* %37, i8* %38, i32 %40, i32* %41, i8* %42) #6
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call22 = call i32 @fputs(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.34, i32 0, i32 0), %struct._IO_FILE* %43) #6
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %45 = load %struct.misc_struct*, %struct.misc_struct** %misc_vars.addr, align 8, !tbaa !1
  %plane_size23 = getelementptr inbounds %struct.misc_struct, %struct.misc_struct* %45, i32 0, i32 8
  %46 = load i32, i32* %plane_size23, align 4, !tbaa !51
  %47 = load %struct.misc_struct*, %struct.misc_struct** %misc_vars.addr, align 8, !tbaa !1
  %scan24 = getelementptr inbounds %struct.misc_struct, %struct.misc_struct* %47, i32 0, i32 15
  %48 = load i32, i32* %scan24, align 4, !tbaa !48
  %idxprom25 = sext i32 %48 to i64
  %49 = load %struct.ptr_arrays*, %struct.ptr_arrays** %data_ptrs.addr, align 8, !tbaa !1
  %plane_data26 = getelementptr inbounds %struct.ptr_arrays, %struct.ptr_arrays* %49, i32 0, i32 2
  %arrayidx27 = getelementptr inbounds [4 x [4 x i8*]], [4 x [4 x i8*]]* %plane_data26, i32 0, i64 %idxprom25
  %arrayidx28 = getelementptr inbounds [4 x i8*], [4 x i8*]* %arrayidx27, i32 0, i64 3
  %50 = load i8*, i8** %arrayidx28, align 8, !tbaa !1
  %51 = load %struct.ptr_arrays*, %struct.ptr_arrays** %data_ptrs.addr, align 8, !tbaa !1
  %out_data = getelementptr inbounds %struct.ptr_arrays, %struct.ptr_arrays* %51, i32 0, i32 4
  %52 = load i8*, i8** %out_data, align 8, !tbaa !53
  call void @print_c2plane(%struct._IO_FILE* %44, i8 signext 86, i32 %46, i8* %50, i8* %52) #6
  %53 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %54 = bitcast %struct.gx_device_printer_s* %53 to %struct.gx_device_cdj850_s*
  %yscal = getelementptr inbounds %struct.gx_device_cdj850_s, %struct.gx_device_cdj850_s* %54, i32 0, i32 75
  %55 = load i32, i32* %yscal, align 4, !tbaa !44
  %tobool = icmp ne i32 %55, 0
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %56 = load %struct.misc_struct*, %struct.misc_struct** %misc_vars.addr, align 8, !tbaa !1
  %is_two_pass = getelementptr inbounds %struct.misc_struct, %struct.misc_struct* %56, i32 0, i32 17
  %57 = load i32, i32* %is_two_pass, align 4, !tbaa !54
  %tobool29 = icmp ne i32 %57, 0
  br i1 %tobool29, label %if.then, label %if.end.83

if.then:                                          ; preds = %lor.lhs.false, %entry
  %58 = bitcast i32* %plane_size_c to i8*
  call void @llvm.lifetime.start(i64 4, i8* %58) #2
  %59 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %60 = bitcast %struct.gx_device_printer_s* %59 to %struct.gx_device_cdj850_s*
  %yscal30 = getelementptr inbounds %struct.gx_device_cdj850_s, %struct.gx_device_cdj850_s* %60, i32 0, i32 75
  %61 = load i32, i32* %yscal30, align 4, !tbaa !44
  %idxprom31 = sext i32 %61 to i64
  %62 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %63 = bitcast %struct.gx_device_printer_s* %62 to %struct.gx_device_cdj850_s*
  %xscal = getelementptr inbounds %struct.gx_device_cdj850_s, %struct.gx_device_cdj850_s* %63, i32 0, i32 74
  %64 = load i32, i32* %xscal, align 4, !tbaa !43
  %idxprom32 = sext i32 %64 to i64
  %arrayidx33 = getelementptr inbounds [2 x [2 x i32 (i32, i8*, i8*, i8*)*]], [2 x [2 x i32 (i32, i8*, i8*, i8*)*]]* @rescale_color_plane, i32 0, i64 %idxprom32
  %arrayidx34 = getelementptr inbounds [2 x i32 (i32, i8*, i8*, i8*)*], [2 x i32 (i32, i8*, i8*, i8*)*]* %arrayidx33, i32 0, i64 %idxprom31
  %65 = load i32 (i32, i8*, i8*, i8*)*, i32 (i32, i8*, i8*, i8*)** %arrayidx34, align 8, !tbaa !1
  %66 = load %struct.misc_struct*, %struct.misc_struct** %misc_vars.addr, align 8, !tbaa !1
  %databuff_size35 = getelementptr inbounds %struct.misc_struct, %struct.misc_struct* %66, i32 0, i32 10
  %67 = load i32, i32* %databuff_size35, align 4, !tbaa !49
  %68 = load %struct.misc_struct*, %struct.misc_struct** %misc_vars.addr, align 8, !tbaa !1
  %scan36 = getelementptr inbounds %struct.misc_struct, %struct.misc_struct* %68, i32 0, i32 15
  %69 = load i32, i32* %scan36, align 4, !tbaa !48
  %idxprom37 = sext i32 %69 to i64
  %70 = load %struct.ptr_arrays*, %struct.ptr_arrays** %data_ptrs.addr, align 8, !tbaa !1
  %data38 = getelementptr inbounds %struct.ptr_arrays, %struct.ptr_arrays* %70, i32 0, i32 0
  %arrayidx39 = getelementptr inbounds [4 x i8*], [4 x i8*]* %data38, i32 0, i64 %idxprom37
  %71 = load i8*, i8** %arrayidx39, align 8, !tbaa !1
  %72 = load %struct.misc_struct*, %struct.misc_struct** %misc_vars.addr, align 8, !tbaa !1
  %scan40 = getelementptr inbounds %struct.misc_struct, %struct.misc_struct* %72, i32 0, i32 15
  %73 = load i32, i32* %scan40, align 4, !tbaa !48
  %tobool41 = icmp ne i32 %73, 0
  %lnot = xor i1 %tobool41, true
  %lnot.ext = zext i1 %lnot to i32
  %idxprom42 = sext i32 %lnot.ext to i64
  %74 = load %struct.ptr_arrays*, %struct.ptr_arrays** %data_ptrs.addr, align 8, !tbaa !1
  %data43 = getelementptr inbounds %struct.ptr_arrays, %struct.ptr_arrays* %74, i32 0, i32 0
  %arrayidx44 = getelementptr inbounds [4 x i8*], [4 x i8*]* %data43, i32 0, i64 %idxprom42
  %75 = load i8*, i8** %arrayidx44, align 8, !tbaa !1
  %76 = load %struct.misc_struct*, %struct.misc_struct** %misc_vars.addr, align 8, !tbaa !1
  %cscan = getelementptr inbounds %struct.misc_struct, %struct.misc_struct* %76, i32 0, i32 16
  %77 = load i32, i32* %cscan, align 4, !tbaa !55
  %idxprom45 = sext i32 %77 to i64
  %78 = load %struct.ptr_arrays*, %struct.ptr_arrays** %data_ptrs.addr, align 8, !tbaa !1
  %data_c = getelementptr inbounds %struct.ptr_arrays, %struct.ptr_arrays* %78, i32 0, i32 1
  %arrayidx46 = getelementptr inbounds [4 x i8*], [4 x i8*]* %data_c, i32 0, i64 %idxprom45
  %79 = load i8*, i8** %arrayidx46, align 8, !tbaa !1
  %call47 = call i32 %65(i32 %67, i8* %71, i8* %75, i8* %79) #6
  %80 = load %struct.misc_struct*, %struct.misc_struct** %misc_vars.addr, align 8, !tbaa !1
  %storage_bpp = getelementptr inbounds %struct.misc_struct, %struct.misc_struct* %80, i32 0, i32 6
  %81 = load i32, i32* %storage_bpp, align 4, !tbaa !56
  %div = sdiv i32 %call47, %81
  store i32 %div, i32* %plane_size_c, align 4, !tbaa !23
  %82 = load %struct.misc_struct*, %struct.misc_struct** %misc_vars.addr, align 8, !tbaa !1
  %scan48 = getelementptr inbounds %struct.misc_struct, %struct.misc_struct* %82, i32 0, i32 15
  %83 = load i32, i32* %scan48, align 4, !tbaa !48
  %84 = load %struct.misc_struct*, %struct.misc_struct** %misc_vars.addr, align 8, !tbaa !1
  %cscan49 = getelementptr inbounds %struct.misc_struct, %struct.misc_struct* %84, i32 0, i32 16
  %85 = load i32, i32* %cscan49, align 4, !tbaa !55
  %86 = load %struct.misc_struct*, %struct.misc_struct** %misc_vars.addr, align 8, !tbaa !1
  %plane_size50 = getelementptr inbounds %struct.misc_struct, %struct.misc_struct* %86, i32 0, i32 8
  %87 = load i32, i32* %plane_size50, align 4, !tbaa !51
  %88 = load i32, i32* %plane_size_c, align 4, !tbaa !23
  %89 = load %struct.misc_struct*, %struct.misc_struct** %misc_vars.addr, align 8, !tbaa !1
  %num_comps51 = getelementptr inbounds %struct.misc_struct, %struct.misc_struct* %89, i32 0, i32 4
  %90 = load i32, i32* %num_comps51, align 4, !tbaa !52
  %91 = load %struct.ptr_arrays*, %struct.ptr_arrays** %data_ptrs.addr, align 8, !tbaa !1
  %92 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %93 = load %struct.error_val_field*, %struct.error_val_field** %error_values.addr, align 8, !tbaa !1
  call void @do_floyd_steinberg(i32 %83, i32 %85, i32 %87, i32 %88, i32 %90, %struct.ptr_arrays* %91, %struct.gx_device_printer_s* %92, %struct.error_val_field* %93) #6
  %94 = load %struct.misc_struct*, %struct.misc_struct** %misc_vars.addr, align 8, !tbaa !1
  %num_comps52 = getelementptr inbounds %struct.misc_struct, %struct.misc_struct* %94, i32 0, i32 4
  %95 = load i32, i32* %num_comps52, align 4, !tbaa !52
  %sub = sub nsw i32 %95, 2
  store i32 %sub, i32* %i, align 4, !tbaa !23
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %96 = load i32, i32* %i, align 4, !tbaa !23
  %cmp = icmp sge i32 %96, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %97 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call53 = call i32 @fputs(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.34, i32 0, i32 0), %struct._IO_FILE* %97) #6
  %98 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %99 = load i32, i32* %i, align 4, !tbaa !23
  %idxprom54 = sext i32 %99 to i64
  %100 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %101 = bitcast %struct.gx_device_printer_s* %100 to %struct.gx_device_cdj850_s*
  %intensities = getelementptr inbounds %struct.gx_device_cdj850_s, %struct.gx_device_cdj850_s* %101, i32 0, i32 73
  %102 = load i32, i32* %intensities, align 4, !tbaa !41
  %cmp55 = icmp sgt i32 %102, 2
  %conv = zext i1 %cmp55 to i32
  %idxprom56 = sext i32 %conv to i64
  %arrayidx57 = getelementptr inbounds [2 x i8*], [2 x i8*]* @cdj880_print_non_blank_lines.plane_code, i32 0, i64 %idxprom56
  %103 = load i8*, i8** %arrayidx57, align 8, !tbaa !1
  %arrayidx58 = getelementptr inbounds i8, i8* %103, i64 %idxprom54
  %104 = load i8, i8* %arrayidx58, align 1, !tbaa !24
  %105 = load i32, i32* %plane_size_c, align 4, !tbaa !23
  %106 = load i32, i32* %i, align 4, !tbaa !23
  %idxprom59 = sext i32 %106 to i64
  %107 = load %struct.misc_struct*, %struct.misc_struct** %misc_vars.addr, align 8, !tbaa !1
  %cscan60 = getelementptr inbounds %struct.misc_struct, %struct.misc_struct* %107, i32 0, i32 16
  %108 = load i32, i32* %cscan60, align 4, !tbaa !55
  %idxprom61 = sext i32 %108 to i64
  %109 = load %struct.ptr_arrays*, %struct.ptr_arrays** %data_ptrs.addr, align 8, !tbaa !1
  %plane_data_c = getelementptr inbounds %struct.ptr_arrays, %struct.ptr_arrays* %109, i32 0, i32 3
  %arrayidx62 = getelementptr inbounds [4 x [8 x i8*]], [4 x [8 x i8*]]* %plane_data_c, i32 0, i64 %idxprom61
  %arrayidx63 = getelementptr inbounds [8 x i8*], [8 x i8*]* %arrayidx62, i32 0, i64 %idxprom59
  %110 = load i8*, i8** %arrayidx63, align 8, !tbaa !1
  %111 = load %struct.ptr_arrays*, %struct.ptr_arrays** %data_ptrs.addr, align 8, !tbaa !1
  %out_data64 = getelementptr inbounds %struct.ptr_arrays, %struct.ptr_arrays* %111, i32 0, i32 4
  %112 = load i8*, i8** %out_data64, align 8, !tbaa !53
  call void @print_c2plane(%struct._IO_FILE* %98, i8 signext %104, i32 %105, i8* %110, i8* %112) #6
  %113 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %114 = bitcast %struct.gx_device_printer_s* %113 to %struct.gx_device_cdj850_s*
  %intensities65 = getelementptr inbounds %struct.gx_device_cdj850_s, %struct.gx_device_cdj850_s* %114, i32 0, i32 73
  %115 = load i32, i32* %intensities65, align 4, !tbaa !41
  %cmp66 = icmp sgt i32 %115, 2
  br i1 %cmp66, label %if.then.68, label %if.end

if.then.68:                                       ; preds = %for.body
  %116 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call69 = call i32 @fputs(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.34, i32 0, i32 0), %struct._IO_FILE* %116) #6
  %117 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %118 = load i32, i32* %i, align 4, !tbaa !23
  %idxprom70 = sext i32 %118 to i64
  %119 = load i8*, i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @cdj880_print_non_blank_lines.plane_code, i32 0, i64 0), align 8, !tbaa !1
  %arrayidx71 = getelementptr inbounds i8, i8* %119, i64 %idxprom70
  %120 = load i8, i8* %arrayidx71, align 1, !tbaa !24
  %121 = load i32, i32* %plane_size_c, align 4, !tbaa !23
  %122 = load i32, i32* %i, align 4, !tbaa !23
  %add72 = add nsw i32 %122, 4
  %idxprom73 = sext i32 %add72 to i64
  %123 = load %struct.misc_struct*, %struct.misc_struct** %misc_vars.addr, align 8, !tbaa !1
  %cscan74 = getelementptr inbounds %struct.misc_struct, %struct.misc_struct* %123, i32 0, i32 16
  %124 = load i32, i32* %cscan74, align 4, !tbaa !55
  %idxprom75 = sext i32 %124 to i64
  %125 = load %struct.ptr_arrays*, %struct.ptr_arrays** %data_ptrs.addr, align 8, !tbaa !1
  %plane_data_c76 = getelementptr inbounds %struct.ptr_arrays, %struct.ptr_arrays* %125, i32 0, i32 3
  %arrayidx77 = getelementptr inbounds [4 x [8 x i8*]], [4 x [8 x i8*]]* %plane_data_c76, i32 0, i64 %idxprom75
  %arrayidx78 = getelementptr inbounds [8 x i8*], [8 x i8*]* %arrayidx77, i32 0, i64 %idxprom73
  %126 = load i8*, i8** %arrayidx78, align 8, !tbaa !1
  %127 = load %struct.ptr_arrays*, %struct.ptr_arrays** %data_ptrs.addr, align 8, !tbaa !1
  %out_data79 = getelementptr inbounds %struct.ptr_arrays, %struct.ptr_arrays* %127, i32 0, i32 4
  %128 = load i8*, i8** %out_data79, align 8, !tbaa !53
  call void @print_c2plane(%struct._IO_FILE* %117, i8 signext %120, i32 %121, i8* %126, i8* %128) #6
  br label %if.end

if.end:                                           ; preds = %if.then.68, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %129 = load i32, i32* %i, align 4, !tbaa !23
  %dec = add nsw i32 %129, -1
  store i32 %dec, i32* %i, align 4, !tbaa !23
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %130 = load %struct.misc_struct*, %struct.misc_struct** %misc_vars.addr, align 8, !tbaa !1
  %cscan80 = getelementptr inbounds %struct.misc_struct, %struct.misc_struct* %130, i32 0, i32 16
  %131 = load i32, i32* %cscan80, align 4, !tbaa !55
  %sub81 = sub nsw i32 1, %131
  %132 = load %struct.misc_struct*, %struct.misc_struct** %misc_vars.addr, align 8, !tbaa !1
  %cscan82 = getelementptr inbounds %struct.misc_struct, %struct.misc_struct* %132, i32 0, i32 16
  store i32 %sub81, i32* %cscan82, align 4, !tbaa !55
  %133 = bitcast i32* %plane_size_c to i8*
  call void @llvm.lifetime.end(i64 4, i8* %133) #2
  br label %if.end.83

if.end.83:                                        ; preds = %for.end, %lor.lhs.false
  %134 = bitcast i32** %ep to i8*
  call void @llvm.lifetime.end(i64 8, i8* %134) #2
  %135 = bitcast i8** %dp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %135) #2
  %136 = bitcast i8** %kP to i8*
  call void @llvm.lifetime.end(i64 8, i8* %136) #2
  %137 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %137) #2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @cdj880_terminate_page(%struct.gx_device_printer_s* %pdev, %struct._IO_FILE* %prn_stream) #1 {
entry:
  %pdev.addr = alloca %struct.gx_device_printer_s*, align 8
  %prn_stream.addr = alloca %struct._IO_FILE*, align 8
  store %struct.gx_device_printer_s* %pdev, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  store %struct._IO_FILE* %prn_stream, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call = call i32 @fputs(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.22, i32 0, i32 0), %struct._IO_FILE* %0) #6
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call1 = call i32 @fputs(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.23, i32 0, i32 0), %struct._IO_FILE* %1) #6
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @cdj1600_start_raster_mode(%struct.gx_device_printer_s* %pdev, i32 %paper_size, %struct._IO_FILE* %prn_stream) #1 {
entry:
  %pdev.addr = alloca %struct.gx_device_printer_s*, align 8
  %paper_size.addr = alloca i32, align 4
  %prn_stream.addr = alloca %struct._IO_FILE*, align 8
  %raster_width = alloca i32, align 4
  store %struct.gx_device_printer_s* %pdev, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  store i32 %paper_size, i32* %paper_size.addr, align 4, !tbaa !23
  store %struct._IO_FILE* %prn_stream, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %0 = bitcast i32* %raster_width to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %1, i32 0, i32 13
  %2 = load i32, i32* %width, align 4, !tbaa !57
  %conv = sitofp i32 %2 to double
  %3 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %HWResolution = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %3, i32 0, i32 22
  %arrayidx = getelementptr inbounds [2 x float], [2 x float]* %HWResolution, i32 0, i64 0
  %4 = load float, float* %arrayidx, align 4, !tbaa !42
  %conv1 = fpext float %4 to double
  %5 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %HWMargins = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %5, i32 0, i32 25
  %arrayidx2 = getelementptr inbounds [4 x float], [4 x float]* %HWMargins, i32 0, i64 0
  %6 = load float, float* %arrayidx2, align 4, !tbaa !42
  %conv3 = fpext float %6 to double
  %div = fdiv double %conv3, 7.200000e+01
  %7 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %HWMargins4 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %7, i32 0, i32 25
  %arrayidx5 = getelementptr inbounds [4 x float], [4 x float]* %HWMargins4, i32 0, i64 2
  %8 = load float, float* %arrayidx5, align 4, !tbaa !42
  %conv6 = fpext float %8 to double
  %div7 = fdiv double %conv6, 7.200000e+01
  %add = fadd double %div, %div7
  %mul = fmul double %conv1, %add
  %sub = fsub double %conv, %mul
  %conv8 = fptoui double %sub to i32
  store i32 %conv8, i32* %raster_width, align 4, !tbaa !23
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call = call i32 @fputs(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.76, i32 0, i32 0), %struct._IO_FILE* %9) #6
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call9 = call i32 @fputs(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.48, i32 0, i32 0), %struct._IO_FILE* %10) #6
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call10 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.49, i32 0, i32 0), %struct._IO_FILE* %11) #6
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %13 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %14 = bitcast %struct.gx_device_printer_s* %13 to %struct.gx_device_cdj850_s*
  %HWResolution11 = getelementptr inbounds %struct.gx_device_cdj850_s, %struct.gx_device_cdj850_s* %14, i32 0, i32 22
  %arrayidx12 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution11, i32 0, i64 0
  %15 = load float, float* %arrayidx12, align 4, !tbaa !42
  %conv13 = fptosi float %15 to i32
  %call14 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.77, i32 0, i32 0), i32 %conv13) #6
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %17 = load i32, i32* %paper_size.addr, align 4, !tbaa !23
  %call15 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %16, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.50, i32 0, i32 0), i32 %17) #6
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call16 = call i32 @fputs(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.78, i32 0, i32 0), %struct._IO_FILE* %18) #6
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %20 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %21 = bitcast %struct.gx_device_printer_s* %20 to %struct.gx_device_cdj850_s*
  %quality = getelementptr inbounds %struct.gx_device_cdj850_s, %struct.gx_device_cdj850_s* %21, i32 0, i32 71
  %22 = load i32, i32* %quality, align 4, !tbaa !45
  %call17 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %19, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.79, i32 0, i32 0), i32 %22) #6
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %24 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %25 = bitcast %struct.gx_device_printer_s* %24 to %struct.gx_device_cdj850_s*
  %papertype = getelementptr inbounds %struct.gx_device_cdj850_s, %struct.gx_device_cdj850_s* %25, i32 0, i32 72
  %26 = load i32, i32* %papertype, align 4, !tbaa !46
  %call18 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %23, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.52, i32 0, i32 0), i32 %26) #6
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %28 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %HWMargins19 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %28, i32 0, i32 25
  %arrayidx20 = getelementptr inbounds [4 x float], [4 x float]* %HWMargins19, i32 0, i64 3
  %29 = load float, float* %arrayidx20, align 4, !tbaa !42
  %conv21 = fpext float %29 to double
  %div22 = fdiv double %conv21, 7.200000e+01
  %sub23 = fsub double %div22, 4.000000e-02
  %mul24 = fmul double 3.000000e+02, %sub23
  %conv25 = fptosi double %mul24 to i32
  %call26 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %27, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.53, i32 0, i32 0), i32 %conv25) #6
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %31 = load i32, i32* %raster_width, align 4, !tbaa !23
  %32 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %32, i32 0, i32 11
  %num_components = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 1
  %33 = load i32, i32* %num_components, align 4, !tbaa !58
  %call27 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %30, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.80, i32 0, i32 0), i32 %31, i32 %33) #6
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call28 = call i32 @fputs(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.42, i32 0, i32 0), %struct._IO_FILE* %34) #6
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call29 = call i32 @fputs(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.34, i32 0, i32 0), %struct._IO_FILE* %35) #6
  %36 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %37 = bitcast %struct.gx_device_printer_s* %36 to %struct.gx_device_cdj850_s*
  %compression = getelementptr inbounds %struct.gx_device_cdj850_s, %struct.gx_device_cdj850_s* %37, i32 0, i32 77
  %38 = load i32, i32* %compression, align 4, !tbaa !47
  %tobool = icmp ne i32 %38, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %40 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %41 = bitcast %struct.gx_device_printer_s* %40 to %struct.gx_device_cdj850_s*
  %compression30 = getelementptr inbounds %struct.gx_device_cdj850_s, %struct.gx_device_cdj850_s* %41, i32 0, i32 77
  %42 = load i32, i32* %compression30, align 4, !tbaa !47
  %call31 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %39, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.55, i32 0, i32 0), i32 %42) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %43 = bitcast i32* %raster_width to i8*
  call void @llvm.lifetime.end(i64 4, i8* %43) #2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @cdj1600_print_non_blank_lines(%struct.gx_device_printer_s* %pdev, %struct.ptr_arrays* %data_ptrs, %struct.misc_struct* %misc_vars, %struct.error_val_field* %error_values, %struct.Gamma* %gamma, %struct._IO_FILE* %prn_stream) #1 {
entry:
  %pdev.addr = alloca %struct.gx_device_printer_s*, align 8
  %data_ptrs.addr = alloca %struct.ptr_arrays*, align 8
  %misc_vars.addr = alloca %struct.misc_struct*, align 8
  %error_values.addr = alloca %struct.error_val_field*, align 8
  %gamma.addr = alloca %struct.Gamma*, align 8
  %prn_stream.addr = alloca %struct._IO_FILE*, align 8
  %i = alloca i32, align 4
  %plane_size_c = alloca i32, align 4
  store %struct.gx_device_printer_s* %pdev, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  store %struct.ptr_arrays* %data_ptrs, %struct.ptr_arrays** %data_ptrs.addr, align 8, !tbaa !1
  store %struct.misc_struct* %misc_vars, %struct.misc_struct** %misc_vars.addr, align 8, !tbaa !1
  store %struct.error_val_field* %error_values, %struct.error_val_field** %error_values.addr, align 8, !tbaa !1
  store %struct.Gamma* %gamma, %struct.Gamma** %gamma.addr, align 8, !tbaa !1
  store %struct._IO_FILE* %prn_stream, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast i32* %plane_size_c to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = load %struct.misc_struct*, %struct.misc_struct** %misc_vars.addr, align 8, !tbaa !1
  %cscan = getelementptr inbounds %struct.misc_struct, %struct.misc_struct* %2, i32 0, i32 16
  %3 = load i32, i32* %cscan, align 4, !tbaa !55
  %idxprom = sext i32 %3 to i64
  %4 = load %struct.ptr_arrays*, %struct.ptr_arrays** %data_ptrs.addr, align 8, !tbaa !1
  %data_c = getelementptr inbounds %struct.ptr_arrays, %struct.ptr_arrays* %4, i32 0, i32 1
  %arrayidx = getelementptr inbounds [4 x i8*], [4 x i8*]* %data_c, i32 0, i64 %idxprom
  %5 = load i8*, i8** %arrayidx, align 8, !tbaa !1
  %6 = load %struct.misc_struct*, %struct.misc_struct** %misc_vars.addr, align 8, !tbaa !1
  %scan = getelementptr inbounds %struct.misc_struct, %struct.misc_struct* %6, i32 0, i32 15
  %7 = load i32, i32* %scan, align 4, !tbaa !48
  %idxprom1 = sext i32 %7 to i64
  %8 = load %struct.ptr_arrays*, %struct.ptr_arrays** %data_ptrs.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.ptr_arrays, %struct.ptr_arrays* %8, i32 0, i32 0
  %arrayidx2 = getelementptr inbounds [4 x i8*], [4 x i8*]* %data, i32 0, i64 %idxprom1
  %9 = load i8*, i8** %arrayidx2, align 8, !tbaa !1
  %10 = load %struct.misc_struct*, %struct.misc_struct** %misc_vars.addr, align 8, !tbaa !1
  %databuff_size = getelementptr inbounds %struct.misc_struct, %struct.misc_struct* %10, i32 0, i32 10
  %11 = load i32, i32* %databuff_size, align 4, !tbaa !49
  %call = call i32 @copy_color_data(i8* %5, i8* %9, i32 %11) #6
  %12 = load %struct.misc_struct*, %struct.misc_struct** %misc_vars.addr, align 8, !tbaa !1
  %storage_bpp = getelementptr inbounds %struct.misc_struct, %struct.misc_struct* %12, i32 0, i32 6
  %13 = load i32, i32* %storage_bpp, align 4, !tbaa !56
  %div = sdiv i32 %call, %13
  store i32 %div, i32* %plane_size_c, align 4, !tbaa !23
  %14 = load %struct.misc_struct*, %struct.misc_struct** %misc_vars.addr, align 8, !tbaa !1
  %scan3 = getelementptr inbounds %struct.misc_struct, %struct.misc_struct* %14, i32 0, i32 15
  %15 = load i32, i32* %scan3, align 4, !tbaa !48
  %16 = load %struct.misc_struct*, %struct.misc_struct** %misc_vars.addr, align 8, !tbaa !1
  %cscan4 = getelementptr inbounds %struct.misc_struct, %struct.misc_struct* %16, i32 0, i32 16
  %17 = load i32, i32* %cscan4, align 4, !tbaa !55
  %18 = load %struct.misc_struct*, %struct.misc_struct** %misc_vars.addr, align 8, !tbaa !1
  %plane_size = getelementptr inbounds %struct.misc_struct, %struct.misc_struct* %18, i32 0, i32 8
  %19 = load i32, i32* %plane_size, align 4, !tbaa !51
  %20 = load i32, i32* %plane_size_c, align 4, !tbaa !23
  %21 = load %struct.misc_struct*, %struct.misc_struct** %misc_vars.addr, align 8, !tbaa !1
  %num_comps = getelementptr inbounds %struct.misc_struct, %struct.misc_struct* %21, i32 0, i32 4
  %22 = load i32, i32* %num_comps, align 4, !tbaa !52
  %23 = load %struct.ptr_arrays*, %struct.ptr_arrays** %data_ptrs.addr, align 8, !tbaa !1
  %24 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %25 = load %struct.error_val_field*, %struct.error_val_field** %error_values.addr, align 8, !tbaa !1
  call void @do_floyd_steinberg(i32 %15, i32 %17, i32 %19, i32 %20, i32 %22, %struct.ptr_arrays* %23, %struct.gx_device_printer_s* %24, %struct.error_val_field* %25) #6
  %26 = load %struct.misc_struct*, %struct.misc_struct** %misc_vars.addr, align 8, !tbaa !1
  %num_comps5 = getelementptr inbounds %struct.misc_struct, %struct.misc_struct* %26, i32 0, i32 4
  %27 = load i32, i32* %num_comps5, align 4, !tbaa !52
  %sub = sub nsw i32 %27, 1
  store i32 %sub, i32* %i, align 4, !tbaa !23
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %28 = load i32, i32* %i, align 4, !tbaa !23
  %cmp = icmp sge i32 %28, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %30 = load i32, i32* %i, align 4, !tbaa !23
  %idxprom6 = sext i32 %30 to i64
  %arrayidx7 = getelementptr inbounds [4 x i8], [4 x i8]* @.str.81, i32 0, i64 %idxprom6
  %31 = load i8, i8* %arrayidx7, align 1, !tbaa !24
  %32 = load i32, i32* %plane_size_c, align 4, !tbaa !23
  %33 = load i32, i32* %i, align 4, !tbaa !23
  %idxprom8 = sext i32 %33 to i64
  %34 = load %struct.misc_struct*, %struct.misc_struct** %misc_vars.addr, align 8, !tbaa !1
  %cscan9 = getelementptr inbounds %struct.misc_struct, %struct.misc_struct* %34, i32 0, i32 16
  %35 = load i32, i32* %cscan9, align 4, !tbaa !55
  %idxprom10 = sext i32 %35 to i64
  %36 = load %struct.ptr_arrays*, %struct.ptr_arrays** %data_ptrs.addr, align 8, !tbaa !1
  %plane_data_c = getelementptr inbounds %struct.ptr_arrays, %struct.ptr_arrays* %36, i32 0, i32 3
  %arrayidx11 = getelementptr inbounds [4 x [8 x i8*]], [4 x [8 x i8*]]* %plane_data_c, i32 0, i64 %idxprom10
  %arrayidx12 = getelementptr inbounds [8 x i8*], [8 x i8*]* %arrayidx11, i32 0, i64 %idxprom8
  %37 = load i8*, i8** %arrayidx12, align 8, !tbaa !1
  %38 = load i32, i32* %i, align 4, !tbaa !23
  %idxprom13 = sext i32 %38 to i64
  %39 = load %struct.misc_struct*, %struct.misc_struct** %misc_vars.addr, align 8, !tbaa !1
  %cscan14 = getelementptr inbounds %struct.misc_struct, %struct.misc_struct* %39, i32 0, i32 16
  %40 = load i32, i32* %cscan14, align 4, !tbaa !55
  %sub15 = sub nsw i32 1, %40
  %idxprom16 = sext i32 %sub15 to i64
  %41 = load %struct.ptr_arrays*, %struct.ptr_arrays** %data_ptrs.addr, align 8, !tbaa !1
  %plane_data_c17 = getelementptr inbounds %struct.ptr_arrays, %struct.ptr_arrays* %41, i32 0, i32 3
  %arrayidx18 = getelementptr inbounds [4 x [8 x i8*]], [4 x [8 x i8*]]* %plane_data_c17, i32 0, i64 %idxprom16
  %arrayidx19 = getelementptr inbounds [8 x i8*], [8 x i8*]* %arrayidx18, i32 0, i64 %idxprom13
  %42 = load i8*, i8** %arrayidx19, align 8, !tbaa !1
  %43 = load %struct.ptr_arrays*, %struct.ptr_arrays** %data_ptrs.addr, align 8, !tbaa !1
  %out_data = getelementptr inbounds %struct.ptr_arrays, %struct.ptr_arrays* %43, i32 0, i32 4
  %44 = load i8*, i8** %out_data, align 8, !tbaa !53
  call void @print_c3plane(%struct._IO_FILE* %29, i8 signext %31, i32 %32, i8* %37, i8* %42, i8* %44) #6
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %45 = load i32, i32* %i, align 4, !tbaa !23
  %dec = add nsw i32 %45, -1
  store i32 %dec, i32* %i, align 4, !tbaa !23
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %46 = load %struct.misc_struct*, %struct.misc_struct** %misc_vars.addr, align 8, !tbaa !1
  %cscan20 = getelementptr inbounds %struct.misc_struct, %struct.misc_struct* %46, i32 0, i32 16
  %47 = load i32, i32* %cscan20, align 4, !tbaa !55
  %sub21 = sub nsw i32 1, %47
  %48 = load %struct.misc_struct*, %struct.misc_struct** %misc_vars.addr, align 8, !tbaa !1
  %cscan22 = getelementptr inbounds %struct.misc_struct, %struct.misc_struct* %48, i32 0, i32 16
  store i32 %sub21, i32* %cscan22, align 4, !tbaa !55
  %49 = bitcast i32* %plane_size_c to i8*
  call void @llvm.lifetime.end(i64 4, i8* %49) #2
  %50 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %50) #2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @cdj1600_terminate_page(%struct.gx_device_printer_s* %pdev, %struct._IO_FILE* %prn_stream) #1 {
entry:
  %pdev.addr = alloca %struct.gx_device_printer_s*, align 8
  %prn_stream.addr = alloca %struct._IO_FILE*, align 8
  store %struct.gx_device_printer_s* %pdev, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  store %struct._IO_FILE* %prn_stream, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %0 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  call void @cdj850_terminate_page(%struct.gx_device_printer_s* %0, %struct._IO_FILE* %1) #6
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call = call i32 @fputs(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.23, i32 0, i32 0), %struct._IO_FILE* %2) #6
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @chp2200_print_page(%struct.gx_device_printer_s* %pdev, %struct._IO_FILE* %prn_stream) #1 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_printer_s*, align 8
  %prn_stream.addr = alloca %struct._IO_FILE*, align 8
  %mem = alloca %struct.gs_memory_s*, align 8
  %width_in_pixels = alloca i32, align 4
  %width_in_bytes = alloca i32, align 4
  %lbuf = alloca i8*, align 8
  %lseedbuf = alloca i8*, align 8
  %loutputbuf = alloca i8*, align 8
  %lnum = alloca i32, align 4
  %iEmptyRows = alloca i32, align 4
  %data = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  %result = alloca i32, align 4
  %OutputLen = alloca i32, align 4
  store %struct.gx_device_printer_s* %pdev, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  store %struct._IO_FILE* %prn_stream, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %1, i32 0, i32 3
  %2 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !26
  store %struct.gs_memory_s* %2, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %3 = bitcast i32* %width_in_pixels to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %4, i32 0, i32 13
  %5 = load i32, i32* %width, align 4, !tbaa !57
  store i32 %5, i32* %width_in_pixels, align 4, !tbaa !23
  %6 = bitcast i32* %width_in_bytes to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = load i32, i32* %width_in_pixels, align 4, !tbaa !23
  %mul = mul nsw i32 %7, 3
  store i32 %mul, i32* %width_in_bytes, align 4, !tbaa !23
  %8 = bitcast i8** %lbuf to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #2
  %9 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %9, i32 0, i32 1
  %alloc_bytes = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 7
  %10 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes, align 8, !tbaa !59
  %11 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %12 = load i32, i32* %width_in_bytes, align 4, !tbaa !23
  %call = call i8* %10(%struct.gs_memory_s* %11, i32 %12, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.31, i32 0, i32 0)) #6
  store i8* %call, i8** %lbuf, align 8, !tbaa !1
  %13 = bitcast i8** %lseedbuf to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #2
  %14 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs1 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %14, i32 0, i32 1
  %alloc_bytes2 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs1, i32 0, i32 7
  %15 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes2, align 8, !tbaa !59
  %16 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %17 = load i32, i32* %width_in_bytes, align 4, !tbaa !23
  %call3 = call i8* %15(%struct.gs_memory_s* %16, i32 %17, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.32, i32 0, i32 0)) #6
  store i8* %call3, i8** %lseedbuf, align 8, !tbaa !1
  %18 = bitcast i8** %loutputbuf to i8*
  call void @llvm.lifetime.start(i64 8, i8* %18) #2
  %19 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs4 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %19, i32 0, i32 1
  %alloc_bytes5 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs4, i32 0, i32 7
  %20 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes5, align 8, !tbaa !59
  %21 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %22 = load i32, i32* %width_in_bytes, align 4, !tbaa !23
  %mul6 = mul nsw i32 %22, 2
  %call7 = call i8* %20(%struct.gs_memory_s* %21, i32 %mul6, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.33, i32 0, i32 0)) #6
  store i8* %call7, i8** %loutputbuf, align 8, !tbaa !1
  %23 = bitcast i32* %lnum to i8*
  call void @llvm.lifetime.start(i64 4, i8* %23) #2
  store i32 0, i32* %lnum, align 4, !tbaa !23
  %24 = bitcast i32* %iEmptyRows to i8*
  call void @llvm.lifetime.start(i64 4, i8* %24) #2
  store i32 0, i32* %iEmptyRows, align 4, !tbaa !23
  %25 = bitcast i8** %data to i8*
  call void @llvm.lifetime.start(i64 8, i8* %25) #2
  %26 = load i8*, i8** %lbuf, align 8, !tbaa !1
  store i8* %26, i8** %data, align 8, !tbaa !1
  %27 = load i8*, i8** %lbuf, align 8, !tbaa !1
  %cmp = icmp eq i8* %27, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %28 = load i8*, i8** %lseedbuf, align 8, !tbaa !1
  %cmp8 = icmp eq i8* %28, null
  br i1 %cmp8, label %if.then, label %lor.lhs.false.9

lor.lhs.false.9:                                  ; preds = %lor.lhs.false
  %29 = load i8*, i8** %loutputbuf, align 8, !tbaa !1
  %cmp10 = icmp eq i8* %29, null
  br i1 %cmp10, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.9, %lor.lhs.false, %entry
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false.9
  %30 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %31 = bitcast %struct.gx_device_printer_s* %30 to %struct.gx_device_cdj850_s*
  %start_raster_mode = getelementptr inbounds %struct.gx_device_cdj850_s, %struct.gx_device_cdj850_s* %31, i32 0, i32 84
  %32 = load void (%struct.gx_device_printer_s*, i32, %struct._IO_FILE*)*, void (%struct.gx_device_printer_s*, i32, %struct._IO_FILE*)** %start_raster_mode, align 8, !tbaa !36
  %33 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %34 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %35 = bitcast %struct.gx_device_printer_s* %34 to %struct.gx_device_s*
  %call11 = call i32 @gdev_pcl_paper_size(%struct.gx_device_s* %35) #6
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  call void %32(%struct.gx_device_printer_s* %33, i32 %call11, %struct._IO_FILE* %36) #6
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call12 = call i32 @fputs(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.34, i32 0, i32 0), %struct._IO_FILE* %37) #6
  %38 = load i8*, i8** %lseedbuf, align 8, !tbaa !1
  %39 = load i32, i32* %width_in_bytes, align 4, !tbaa !23
  %conv = sext i32 %39 to i64
  %call13 = call i8* @memset(i8* %38, i32 255, i64 %conv) #5
  store i32 0, i32* %lnum, align 4, !tbaa !23
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %40 = load i32, i32* %lnum, align 4, !tbaa !23
  %41 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %41, i32 0, i32 14
  %42 = load i32, i32* %height, align 4, !tbaa !60
  %cmp14 = icmp slt i32 %40, %42
  br i1 %cmp14, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %43 = bitcast i32* %result to i8*
  call void @llvm.lifetime.start(i64 4, i8* %43) #2
  store i32 -1, i32* %result, align 4, !tbaa !23
  %44 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %45 = load i32, i32* %lnum, align 4, !tbaa !23
  %46 = load i8*, i8** %data, align 8, !tbaa !1
  %47 = load i32, i32* %width_in_bytes, align 4, !tbaa !23
  %call16 = call i32 @gdev_prn_copy_scan_lines(%struct.gx_device_printer_s* %44, i32 %45, i8* %46, i32 %47) #6
  store i32 %call16, i32* %result, align 4, !tbaa !23
  %48 = load i32, i32* %result, align 4, !tbaa !23
  %cmp17 = icmp eq i32 %48, 1
  br i1 %cmp17, label %land.lhs.true, label %if.else.37

land.lhs.true:                                    ; preds = %for.body
  %49 = load i8*, i8** %data, align 8, !tbaa !1
  %50 = load i32, i32* %width_in_bytes, align 4, !tbaa !23
  %call19 = call i32 @IsScanlineDirty(i8* %49, i32 %50) #6
  %tobool = icmp ne i32 %call19, 0
  br i1 %tobool, label %if.then.20, label %if.else.37

if.then.20:                                       ; preds = %land.lhs.true
  %51 = bitcast i32* %OutputLen to i8*
  call void @llvm.lifetime.start(i64 4, i8* %51) #2
  store i32 0, i32* %OutputLen, align 4, !tbaa !23
  %52 = load i32, i32* %iEmptyRows, align 4, !tbaa !23
  %tobool21 = icmp ne i32 %52, 0
  br i1 %tobool21, label %if.then.22, label %if.end.26

if.then.22:                                       ; preds = %if.then.20
  %53 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %54 = load i32, i32* %iEmptyRows, align 4, !tbaa !23
  %call23 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %53, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.35, i32 0, i32 0), i32 %54) #6
  store i32 0, i32* %iEmptyRows, align 4, !tbaa !23
  %55 = load i8*, i8** %lseedbuf, align 8, !tbaa !1
  %56 = load i32, i32* %width_in_bytes, align 4, !tbaa !23
  %conv24 = sext i32 %56 to i64
  %call25 = call i8* @memset(i8* %55, i32 255, i64 %conv24) #5
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.22, %if.then.20
  %57 = load i32, i32* %width_in_pixels, align 4, !tbaa !23
  %58 = load i8*, i8** %data, align 8, !tbaa !1
  %59 = load i8*, i8** %lseedbuf, align 8, !tbaa !1
  %60 = load i8*, i8** %loutputbuf, align 8, !tbaa !1
  %call27 = call i32 @Mode10(i32 %57, i8* %58, i8* %59, i8* %60) #6
  store i32 %call27, i32* %OutputLen, align 4, !tbaa !23
  %61 = load i32, i32* %OutputLen, align 4, !tbaa !23
  %tobool28 = icmp ne i32 %61, 0
  br i1 %tobool28, label %if.then.29, label %if.else

if.then.29:                                       ; preds = %if.end.26
  %62 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %63 = load i32, i32* %OutputLen, align 4, !tbaa !23
  %call30 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %62, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.36, i32 0, i32 0), i32 %63) #6
  %64 = load i8*, i8** %loutputbuf, align 8, !tbaa !1
  %65 = load i32, i32* %OutputLen, align 4, !tbaa !23
  %conv31 = zext i32 %65 to i64
  %66 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call32 = call i64 @fwrite(i8* %64, i64 1, i64 %conv31, %struct._IO_FILE* %66) #6
  %67 = load i8*, i8** %lseedbuf, align 8, !tbaa !1
  %68 = load i8*, i8** %data, align 8, !tbaa !1
  %69 = load i32, i32* %width_in_bytes, align 4, !tbaa !23
  %conv33 = sext i32 %69 to i64
  %call34 = call i8* @memcpy(i8* %67, i8* %68, i64 %conv33) #5
  br label %if.end.36

if.else:                                          ; preds = %if.end.26
  %70 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call35 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.37, i32 0, i32 0), %struct._IO_FILE* %70) #6
  br label %if.end.36

if.end.36:                                        ; preds = %if.else, %if.then.29
  %71 = bitcast i32* %OutputLen to i8*
  call void @llvm.lifetime.end(i64 4, i8* %71) #2
  br label %if.end.38

if.else.37:                                       ; preds = %land.lhs.true, %for.body
  %72 = load i32, i32* %iEmptyRows, align 4, !tbaa !23
  %inc = add nsw i32 %72, 1
  store i32 %inc, i32* %iEmptyRows, align 4, !tbaa !23
  br label %if.end.38

if.end.38:                                        ; preds = %if.else.37, %if.end.36
  %73 = bitcast i32* %result to i8*
  call void @llvm.lifetime.end(i64 4, i8* %73) #2
  br label %for.inc

for.inc:                                          ; preds = %if.end.38
  %74 = load i32, i32* %lnum, align 4, !tbaa !23
  %inc39 = add nsw i32 %74, 1
  store i32 %inc39, i32* %lnum, align 4, !tbaa !23
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %75 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call40 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.38, i32 0, i32 0), %struct._IO_FILE* %75) #6
  %76 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %77 = bitcast %struct.gx_device_printer_s* %76 to %struct.gx_device_cdj850_s*
  %terminate_page = getelementptr inbounds %struct.gx_device_cdj850_s, %struct.gx_device_cdj850_s* %77, i32 0, i32 86
  %78 = load void (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, void (%struct.gx_device_printer_s*, %struct._IO_FILE*)** %terminate_page, align 8, !tbaa !38
  %79 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %80 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  call void %78(%struct.gx_device_printer_s* %79, %struct._IO_FILE* %80) #6
  %81 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs41 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %81, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs41, i32 0, i32 2
  %82 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !39
  %83 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %84 = load i8*, i8** %lbuf, align 8, !tbaa !1
  call void %82(%struct.gs_memory_s* %83, i8* %84, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.31, i32 0, i32 0)) #6
  %85 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs42 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %85, i32 0, i32 1
  %free_object43 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs42, i32 0, i32 2
  %86 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object43, align 8, !tbaa !39
  %87 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %88 = load i8*, i8** %lseedbuf, align 8, !tbaa !1
  call void %86(%struct.gs_memory_s* %87, i8* %88, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.32, i32 0, i32 0)) #6
  %89 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs44 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %89, i32 0, i32 1
  %free_object45 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs44, i32 0, i32 2
  %90 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object45, align 8, !tbaa !39
  %91 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %92 = load i8*, i8** %loutputbuf, align 8, !tbaa !1
  call void %90(%struct.gs_memory_s* %91, i8* %92, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.33, i32 0, i32 0)) #6
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  %93 = bitcast i8** %data to i8*
  call void @llvm.lifetime.end(i64 8, i8* %93) #2
  %94 = bitcast i32* %iEmptyRows to i8*
  call void @llvm.lifetime.end(i64 4, i8* %94) #2
  %95 = bitcast i32* %lnum to i8*
  call void @llvm.lifetime.end(i64 4, i8* %95) #2
  %96 = bitcast i8** %loutputbuf to i8*
  call void @llvm.lifetime.end(i64 8, i8* %96) #2
  %97 = bitcast i8** %lseedbuf to i8*
  call void @llvm.lifetime.end(i64 8, i8* %97) #2
  %98 = bitcast i8** %lbuf to i8*
  call void @llvm.lifetime.end(i64 8, i8* %98) #2
  %99 = bitcast i32* %width_in_bytes to i8*
  call void @llvm.lifetime.end(i64 4, i8* %99) #2
  %100 = bitcast i32* %width_in_pixels to i8*
  call void @llvm.lifetime.end(i64 4, i8* %100) #2
  %101 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %101) #2
  %102 = load i32, i32* %retval
  ret i32 %102
}

; Function Attrs: nounwind uwtable
define internal void @chp2200_start_raster_mode(%struct.gx_device_printer_s* %pdev, i32 %paper_size, %struct._IO_FILE* %prn_stream) #1 {
entry:
  %pdev.addr = alloca %struct.gx_device_printer_s*, align 8
  %paper_size.addr = alloca i32, align 4
  %prn_stream.addr = alloca %struct._IO_FILE*, align 8
  %CRD_SeqC = alloca [18 x i8], align 16
  %xres = alloca i32, align 4
  %yres = alloca i32, align 4
  %width_in_pixels = alloca i32, align 4
  store %struct.gx_device_printer_s* %pdev, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  store i32 %paper_size, i32* %paper_size.addr, align 4, !tbaa !23
  store %struct._IO_FILE* %prn_stream, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %0 = bitcast [18 x i8]* %CRD_SeqC to i8*
  call void @llvm.lifetime.start(i64 18, i8* %0) #2
  %1 = bitcast [18 x i8]* %CRD_SeqC to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @chp2200_start_raster_mode.CRD_SeqC, i32 0, i32 0), i64 18, i32 16, i1 false)
  %2 = bitcast i32* %xres to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  %3 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %4 = bitcast %struct.gx_device_printer_s* %3 to %struct.gx_device_cdj850_s*
  %HWResolution = getelementptr inbounds %struct.gx_device_cdj850_s, %struct.gx_device_cdj850_s* %4, i32 0, i32 22
  %arrayidx = getelementptr inbounds [2 x float], [2 x float]* %HWResolution, i32 0, i64 0
  %5 = load float, float* %arrayidx, align 4, !tbaa !42
  %conv = fptosi float %5 to i32
  store i32 %conv, i32* %xres, align 4, !tbaa !23
  %6 = bitcast i32* %yres to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %8 = bitcast %struct.gx_device_printer_s* %7 to %struct.gx_device_cdj850_s*
  %HWResolution1 = getelementptr inbounds %struct.gx_device_cdj850_s, %struct.gx_device_cdj850_s* %8, i32 0, i32 22
  %arrayidx2 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution1, i32 0, i64 1
  %9 = load float, float* %arrayidx2, align 4, !tbaa !42
  %conv3 = fptosi float %9 to i32
  store i32 %conv3, i32* %yres, align 4, !tbaa !23
  %10 = bitcast i32* %width_in_pixels to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #2
  %11 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %12 = bitcast %struct.gx_device_printer_s* %11 to %struct.gx_device_cdj850_s*
  %width = getelementptr inbounds %struct.gx_device_cdj850_s, %struct.gx_device_cdj850_s* %12, i32 0, i32 13
  %13 = load i32, i32* %width, align 4, !tbaa !61
  store i32 %13, i32* %width_in_pixels, align 4, !tbaa !23
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %14, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.58, i32 0, i32 0)) #6
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call4 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.59, i32 0, i32 0)) #6
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %16, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.60, i32 0, i32 0)) #6
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %17, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.61, i32 0, i32 0)) #6
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.62, i32 0, i32 0)) #6
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %20 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %21 = bitcast %struct.gx_device_printer_s* %20 to %struct.gx_device_cdj850_s*
  %papertype = getelementptr inbounds %struct.gx_device_cdj850_s, %struct.gx_device_cdj850_s* %21, i32 0, i32 72
  %22 = load i32, i32* %papertype, align 4, !tbaa !46
  %call8 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %19, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.52, i32 0, i32 0), i32 %22) #6
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %24 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %25 = bitcast %struct.gx_device_printer_s* %24 to %struct.gx_device_cdj850_s*
  %quality = getelementptr inbounds %struct.gx_device_cdj850_s, %struct.gx_device_cdj850_s* %25, i32 0, i32 71
  %26 = load i32, i32* %quality, align 4, !tbaa !45
  %call9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %23, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.51, i32 0, i32 0), i32 %26) #6
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %28 = load i32, i32* %width_in_pixels, align 4, !tbaa !23
  %call10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %27, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.63, i32 0, i32 0), i32 %28) #6
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %30 = load i32, i32* %paper_size.addr, align 4, !tbaa !23
  %call11 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %29, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.64, i32 0, i32 0), i32 %30) #6
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call12 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %31, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.65, i32 0, i32 0)) #6
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %33 = load i32, i32* %xres, align 4, !tbaa !23
  %call13 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %32, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.66, i32 0, i32 0), i32 %33) #6
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %35 = load i32, i32* %yres, align 4, !tbaa !23
  %conv14 = sitofp i32 %35 to double
  %36 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %HWMargins = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %36, i32 0, i32 25
  %arrayidx15 = getelementptr inbounds [4 x float], [4 x float]* %HWMargins, i32 0, i64 3
  %37 = load float, float* %arrayidx15, align 4, !tbaa !42
  %conv16 = fpext float %37 to double
  %div = fdiv double %conv16, 7.200000e+01
  %sub = fsub double %div, 4.000000e-02
  %mul = fmul double %conv14, %sub
  %conv17 = fptosi double %mul to i32
  %call18 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %34, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.53, i32 0, i32 0), i32 %conv17) #6
  %38 = load i32, i32* %xres, align 4, !tbaa !23
  %shr = lshr i32 %38, 8
  %and = and i32 %shr, 255
  %conv19 = trunc i32 %and to i8
  %arrayidx20 = getelementptr inbounds [18 x i8], [18 x i8]* %CRD_SeqC, i32 0, i64 10
  store i8 %conv19, i8* %arrayidx20, align 1, !tbaa !24
  %39 = load i32, i32* %xres, align 4, !tbaa !23
  %conv21 = trunc i32 %39 to i8
  %arrayidx22 = getelementptr inbounds [18 x i8], [18 x i8]* %CRD_SeqC, i32 0, i64 11
  store i8 %conv21, i8* %arrayidx22, align 1, !tbaa !24
  %40 = load i32, i32* %yres, align 4, !tbaa !23
  %shr23 = lshr i32 %40, 8
  %and24 = and i32 %shr23, 255
  %conv25 = trunc i32 %and24 to i8
  %arrayidx26 = getelementptr inbounds [18 x i8], [18 x i8]* %CRD_SeqC, i32 0, i64 12
  store i8 %conv25, i8* %arrayidx26, align 1, !tbaa !24
  %41 = load i32, i32* %yres, align 4, !tbaa !23
  %conv27 = trunc i32 %41 to i8
  %arrayidx28 = getelementptr inbounds [18 x i8], [18 x i8]* %CRD_SeqC, i32 0, i64 13
  store i8 %conv27, i8* %arrayidx28, align 1, !tbaa !24
  %arraydecay = getelementptr inbounds [18 x i8], [18 x i8]* %CRD_SeqC, i32 0, i32 0
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call29 = call i64 @fwrite(i8* %arraydecay, i64 1, i64 18, %struct._IO_FILE* %42) #6
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call30 = call i32 @fputs(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.42, i32 0, i32 0), %struct._IO_FILE* %43) #6
  %44 = bitcast i32* %width_in_pixels to i8*
  call void @llvm.lifetime.end(i64 4, i8* %44) #2
  %45 = bitcast i32* %yres to i8*
  call void @llvm.lifetime.end(i64 4, i8* %45) #2
  %46 = bitcast i32* %xres to i8*
  call void @llvm.lifetime.end(i64 4, i8* %46) #2
  %47 = bitcast [18 x i8]* %CRD_SeqC to i8*
  call void @llvm.lifetime.end(i64 18, i8* %47) #2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @chp2200_terminate_page(%struct.gx_device_printer_s* %pdev, %struct._IO_FILE* %prn_stream) #1 {
entry:
  %pdev.addr = alloca %struct.gx_device_printer_s*, align 8
  %prn_stream.addr = alloca %struct._IO_FILE*, align 8
  store %struct.gx_device_printer_s* %pdev, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  store %struct._IO_FILE* %prn_stream, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call = call i32 @fputs(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.22, i32 0, i32 0), %struct._IO_FILE* %0) #6
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call1 = call i32 @fputs(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.24, i32 0, i32 0), %struct._IO_FILE* %1) #6
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @cdnj500_print_page(%struct.gx_device_printer_s* %pdev, %struct._IO_FILE* %prn_stream) #1 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_printer_s*, align 8
  %prn_stream.addr = alloca %struct._IO_FILE*, align 8
  %CRD_SeqC = alloca [18 x i8], align 16
  %xres = alloca i32, align 4
  %yres = alloca i32, align 4
  %mem = alloca %struct.gs_memory_s*, align 8
  %width_in_pixels = alloca i32, align 4
  %width_in_bytes = alloca i32, align 4
  %lbuf = alloca i8*, align 8
  %lseedbuf = alloca i8*, align 8
  %loutputbuf = alloca i8*, align 8
  %lnum = alloca i32, align 4
  %iEmptyRows = alloca i32, align 4
  %iBlock = alloca i32, align 4
  %begin = alloca i32, align 4
  %data = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  %result = alloca i32, align 4
  %OutputLen = alloca i32, align 4
  store %struct.gx_device_printer_s* %pdev, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  store %struct._IO_FILE* %prn_stream, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %0 = bitcast [18 x i8]* %CRD_SeqC to i8*
  call void @llvm.lifetime.start(i64 18, i8* %0) #2
  %1 = bitcast [18 x i8]* %CRD_SeqC to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @cdnj500_print_page.CRD_SeqC, i32 0, i32 0), i64 18, i32 16, i1 false)
  %2 = bitcast i32* %xres to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  %3 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %4 = bitcast %struct.gx_device_printer_s* %3 to %struct.gx_device_cdj850_s*
  %HWResolution = getelementptr inbounds %struct.gx_device_cdj850_s, %struct.gx_device_cdj850_s* %4, i32 0, i32 22
  %arrayidx = getelementptr inbounds [2 x float], [2 x float]* %HWResolution, i32 0, i64 0
  %5 = load float, float* %arrayidx, align 4, !tbaa !42
  %conv = fptosi float %5 to i32
  store i32 %conv, i32* %xres, align 4, !tbaa !23
  %6 = bitcast i32* %yres to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %8 = bitcast %struct.gx_device_printer_s* %7 to %struct.gx_device_cdj850_s*
  %HWResolution1 = getelementptr inbounds %struct.gx_device_cdj850_s, %struct.gx_device_cdj850_s* %8, i32 0, i32 22
  %arrayidx2 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution1, i32 0, i64 1
  %9 = load float, float* %arrayidx2, align 4, !tbaa !42
  %conv3 = fptosi float %9 to i32
  store i32 %conv3, i32* %yres, align 4, !tbaa !23
  %10 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #2
  %11 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %11, i32 0, i32 3
  %12 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !26
  store %struct.gs_memory_s* %12, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %13 = bitcast i32* %width_in_pixels to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #2
  %14 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %14, i32 0, i32 13
  %15 = load i32, i32* %width, align 4, !tbaa !57
  store i32 %15, i32* %width_in_pixels, align 4, !tbaa !23
  %16 = bitcast i32* %width_in_bytes to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #2
  %17 = load i32, i32* %width_in_pixels, align 4, !tbaa !23
  %mul = mul nsw i32 %17, 3
  store i32 %mul, i32* %width_in_bytes, align 4, !tbaa !23
  %18 = bitcast i8** %lbuf to i8*
  call void @llvm.lifetime.start(i64 8, i8* %18) #2
  %19 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %19, i32 0, i32 1
  %alloc_bytes = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 7
  %20 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes, align 8, !tbaa !59
  %21 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %22 = load i32, i32* %width_in_bytes, align 4, !tbaa !23
  %call = call i8* %20(%struct.gs_memory_s* %21, i32 %22, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.39, i32 0, i32 0)) #6
  store i8* %call, i8** %lbuf, align 8, !tbaa !1
  %23 = bitcast i8** %lseedbuf to i8*
  call void @llvm.lifetime.start(i64 8, i8* %23) #2
  %24 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs4 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %24, i32 0, i32 1
  %alloc_bytes5 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs4, i32 0, i32 7
  %25 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes5, align 8, !tbaa !59
  %26 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %27 = load i32, i32* %width_in_bytes, align 4, !tbaa !23
  %call6 = call i8* %25(%struct.gs_memory_s* %26, i32 %27, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.40, i32 0, i32 0)) #6
  store i8* %call6, i8** %lseedbuf, align 8, !tbaa !1
  %28 = bitcast i8** %loutputbuf to i8*
  call void @llvm.lifetime.start(i64 8, i8* %28) #2
  %29 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs7 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %29, i32 0, i32 1
  %alloc_bytes8 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs7, i32 0, i32 7
  %30 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes8, align 8, !tbaa !59
  %31 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %32 = load i32, i32* %width_in_bytes, align 4, !tbaa !23
  %mul9 = mul nsw i32 %32, 2
  %call10 = call i8* %30(%struct.gs_memory_s* %31, i32 %mul9, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.41, i32 0, i32 0)) #6
  store i8* %call10, i8** %loutputbuf, align 8, !tbaa !1
  %33 = bitcast i32* %lnum to i8*
  call void @llvm.lifetime.start(i64 4, i8* %33) #2
  store i32 0, i32* %lnum, align 4, !tbaa !23
  %34 = bitcast i32* %iEmptyRows to i8*
  call void @llvm.lifetime.start(i64 4, i8* %34) #2
  store i32 0, i32* %iEmptyRows, align 4, !tbaa !23
  %35 = bitcast i32* %iBlock to i8*
  call void @llvm.lifetime.start(i64 4, i8* %35) #2
  store i32 0, i32* %iBlock, align 4, !tbaa !23
  %36 = bitcast i32* %begin to i8*
  call void @llvm.lifetime.start(i64 4, i8* %36) #2
  store i32 1, i32* %begin, align 4, !tbaa !23
  %37 = bitcast i8** %data to i8*
  call void @llvm.lifetime.start(i64 8, i8* %37) #2
  %38 = load i8*, i8** %lbuf, align 8, !tbaa !1
  store i8* %38, i8** %data, align 8, !tbaa !1
  %39 = load i8*, i8** %lbuf, align 8, !tbaa !1
  %cmp = icmp eq i8* %39, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %40 = load i8*, i8** %lseedbuf, align 8, !tbaa !1
  %cmp12 = icmp eq i8* %40, null
  br i1 %cmp12, label %if.then, label %lor.lhs.false.14

lor.lhs.false.14:                                 ; preds = %lor.lhs.false
  %41 = load i8*, i8** %loutputbuf, align 8, !tbaa !1
  %cmp15 = icmp eq i8* %41, null
  br i1 %cmp15, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.14, %lor.lhs.false, %entry
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false.14
  %42 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %43 = bitcast %struct.gx_device_printer_s* %42 to %struct.gx_device_cdj850_s*
  %start_raster_mode = getelementptr inbounds %struct.gx_device_cdj850_s, %struct.gx_device_cdj850_s* %43, i32 0, i32 84
  %44 = load void (%struct.gx_device_printer_s*, i32, %struct._IO_FILE*)*, void (%struct.gx_device_printer_s*, i32, %struct._IO_FILE*)** %start_raster_mode, align 8, !tbaa !36
  %45 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %46 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %47 = bitcast %struct.gx_device_printer_s* %46 to %struct.gx_device_s*
  %call17 = call i32 @gdev_pcl_paper_size(%struct.gx_device_s* %47) #6
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  call void %44(%struct.gx_device_printer_s* %45, i32 %call17, %struct._IO_FILE* %48) #6
  %49 = load i32, i32* %xres, align 4, !tbaa !23
  %shr = lshr i32 %49, 8
  %and = and i32 %shr, 255
  %conv18 = trunc i32 %and to i8
  %arrayidx19 = getelementptr inbounds [18 x i8], [18 x i8]* %CRD_SeqC, i32 0, i64 10
  store i8 %conv18, i8* %arrayidx19, align 1, !tbaa !24
  %50 = load i32, i32* %xres, align 4, !tbaa !23
  %conv20 = trunc i32 %50 to i8
  %arrayidx21 = getelementptr inbounds [18 x i8], [18 x i8]* %CRD_SeqC, i32 0, i64 11
  store i8 %conv20, i8* %arrayidx21, align 1, !tbaa !24
  %51 = load i32, i32* %yres, align 4, !tbaa !23
  %shr22 = lshr i32 %51, 8
  %and23 = and i32 %shr22, 255
  %conv24 = trunc i32 %and23 to i8
  %arrayidx25 = getelementptr inbounds [18 x i8], [18 x i8]* %CRD_SeqC, i32 0, i64 12
  store i8 %conv24, i8* %arrayidx25, align 1, !tbaa !24
  %52 = load i32, i32* %yres, align 4, !tbaa !23
  %conv26 = trunc i32 %52 to i8
  %arrayidx27 = getelementptr inbounds [18 x i8], [18 x i8]* %CRD_SeqC, i32 0, i64 13
  store i8 %conv26, i8* %arrayidx27, align 1, !tbaa !24
  store i32 0, i32* %lnum, align 4, !tbaa !23
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %53 = load i32, i32* %lnum, align 4, !tbaa !23
  %54 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %54, i32 0, i32 14
  %55 = load i32, i32* %height, align 4, !tbaa !60
  %cmp28 = icmp slt i32 %53, %55
  br i1 %cmp28, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %56 = bitcast i32* %result to i8*
  call void @llvm.lifetime.start(i64 4, i8* %56) #2
  store i32 -1, i32* %result, align 4, !tbaa !23
  %57 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %58 = load i32, i32* %lnum, align 4, !tbaa !23
  %59 = load i8*, i8** %data, align 8, !tbaa !1
  %60 = load i32, i32* %width_in_bytes, align 4, !tbaa !23
  %call30 = call i32 @gdev_prn_copy_scan_lines(%struct.gx_device_printer_s* %57, i32 %58, i8* %59, i32 %60) #6
  store i32 %call30, i32* %result, align 4, !tbaa !23
  %61 = load i32, i32* %result, align 4, !tbaa !23
  %cmp31 = icmp eq i32 %61, 1
  br i1 %cmp31, label %land.lhs.true, label %if.else.66

land.lhs.true:                                    ; preds = %for.body
  %62 = load i8*, i8** %data, align 8, !tbaa !1
  %63 = load i32, i32* %width_in_bytes, align 4, !tbaa !23
  %call33 = call i32 @IsScanlineDirty(i8* %62, i32 %63) #6
  %tobool = icmp ne i32 %call33, 0
  br i1 %tobool, label %if.then.34, label %if.else.66

if.then.34:                                       ; preds = %land.lhs.true
  %64 = bitcast i32* %OutputLen to i8*
  call void @llvm.lifetime.start(i64 4, i8* %64) #2
  store i32 0, i32* %OutputLen, align 4, !tbaa !23
  %65 = load i32, i32* %iBlock, align 4, !tbaa !23
  %cmp35 = icmp eq i32 %65, 448
  br i1 %cmp35, label %if.then.37, label %if.end.40

if.then.37:                                       ; preds = %if.then.34
  %66 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call38 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.38, i32 0, i32 0), %struct._IO_FILE* %66) #6
  %67 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call39 = call i32 @fputs(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i32 0, i32 0), %struct._IO_FILE* %67) #6
  store i32 0, i32* %iBlock, align 4, !tbaa !23
  br label %if.end.40

if.end.40:                                        ; preds = %if.then.37, %if.then.34
  %68 = load i32, i32* %iBlock, align 4, !tbaa !23
  %cmp41 = icmp eq i32 %68, 0
  br i1 %cmp41, label %if.then.43, label %if.end.49

if.then.43:                                       ; preds = %if.end.40
  %arraydecay = getelementptr inbounds [18 x i8], [18 x i8]* %CRD_SeqC, i32 0, i32 0
  %69 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call44 = call i64 @fwrite(i8* %arraydecay, i64 1, i64 18, %struct._IO_FILE* %69) #6
  %70 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call45 = call i32 @fputs(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.42, i32 0, i32 0), %struct._IO_FILE* %70) #6
  %71 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call46 = call i32 @fputs(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.34, i32 0, i32 0), %struct._IO_FILE* %71) #6
  %72 = load i8*, i8** %lseedbuf, align 8, !tbaa !1
  %73 = load i32, i32* %width_in_bytes, align 4, !tbaa !23
  %conv47 = sext i32 %73 to i64
  %call48 = call i8* @memset(i8* %72, i32 255, i64 %conv47) #5
  br label %if.end.49

if.end.49:                                        ; preds = %if.then.43, %if.end.40
  %74 = load i32, i32* %iBlock, align 4, !tbaa !23
  %inc = add nsw i32 %74, 1
  store i32 %inc, i32* %iBlock, align 4, !tbaa !23
  %75 = load i32, i32* %iEmptyRows, align 4, !tbaa !23
  %tobool50 = icmp ne i32 %75, 0
  br i1 %tobool50, label %if.then.51, label %if.end.55

if.then.51:                                       ; preds = %if.end.49
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %77 = load i32, i32* %iEmptyRows, align 4, !tbaa !23
  %call52 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %76, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.35, i32 0, i32 0), i32 %77) #6
  store i32 0, i32* %iEmptyRows, align 4, !tbaa !23
  %78 = load i8*, i8** %lseedbuf, align 8, !tbaa !1
  %79 = load i32, i32* %width_in_bytes, align 4, !tbaa !23
  %conv53 = sext i32 %79 to i64
  %call54 = call i8* @memset(i8* %78, i32 255, i64 %conv53) #5
  br label %if.end.55

if.end.55:                                        ; preds = %if.then.51, %if.end.49
  %80 = load i32, i32* %width_in_pixels, align 4, !tbaa !23
  %81 = load i8*, i8** %data, align 8, !tbaa !1
  %82 = load i8*, i8** %lseedbuf, align 8, !tbaa !1
  %83 = load i8*, i8** %loutputbuf, align 8, !tbaa !1
  %call56 = call i32 @Mode10(i32 %80, i8* %81, i8* %82, i8* %83) #6
  store i32 %call56, i32* %OutputLen, align 4, !tbaa !23
  %84 = load i32, i32* %OutputLen, align 4, !tbaa !23
  %tobool57 = icmp ne i32 %84, 0
  br i1 %tobool57, label %if.then.58, label %if.else

if.then.58:                                       ; preds = %if.end.55
  %85 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %86 = load i32, i32* %OutputLen, align 4, !tbaa !23
  %call59 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %85, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.36, i32 0, i32 0), i32 %86) #6
  %87 = load i8*, i8** %loutputbuf, align 8, !tbaa !1
  %88 = load i32, i32* %OutputLen, align 4, !tbaa !23
  %conv60 = zext i32 %88 to i64
  %89 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call61 = call i64 @fwrite(i8* %87, i64 1, i64 %conv60, %struct._IO_FILE* %89) #6
  %90 = load i8*, i8** %lseedbuf, align 8, !tbaa !1
  %91 = load i8*, i8** %data, align 8, !tbaa !1
  %92 = load i32, i32* %width_in_bytes, align 4, !tbaa !23
  %conv62 = sext i32 %92 to i64
  %call63 = call i8* @memcpy(i8* %90, i8* %91, i64 %conv62) #5
  br label %if.end.65

if.else:                                          ; preds = %if.end.55
  %93 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call64 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.37, i32 0, i32 0), %struct._IO_FILE* %93) #6
  br label %if.end.65

if.end.65:                                        ; preds = %if.else, %if.then.58
  store i32 0, i32* %begin, align 4, !tbaa !23
  %94 = bitcast i32* %OutputLen to i8*
  call void @llvm.lifetime.end(i64 4, i8* %94) #2
  br label %if.end.72

if.else.66:                                       ; preds = %land.lhs.true, %for.body
  %95 = load i32, i32* %begin, align 4, !tbaa !23
  %cmp67 = icmp eq i32 %95, 0
  br i1 %cmp67, label %if.then.69, label %if.end.71

if.then.69:                                       ; preds = %if.else.66
  %96 = load i32, i32* %iEmptyRows, align 4, !tbaa !23
  %inc70 = add nsw i32 %96, 1
  store i32 %inc70, i32* %iEmptyRows, align 4, !tbaa !23
  br label %if.end.71

if.end.71:                                        ; preds = %if.then.69, %if.else.66
  br label %if.end.72

if.end.72:                                        ; preds = %if.end.71, %if.end.65
  %97 = bitcast i32* %result to i8*
  call void @llvm.lifetime.end(i64 4, i8* %97) #2
  br label %for.inc

for.inc:                                          ; preds = %if.end.72
  %98 = load i32, i32* %lnum, align 4, !tbaa !23
  %inc73 = add nsw i32 %98, 1
  store i32 %inc73, i32* %lnum, align 4, !tbaa !23
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %99 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call74 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.38, i32 0, i32 0), %struct._IO_FILE* %99) #6
  %100 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %101 = bitcast %struct.gx_device_printer_s* %100 to %struct.gx_device_cdj850_s*
  %terminate_page = getelementptr inbounds %struct.gx_device_cdj850_s, %struct.gx_device_cdj850_s* %101, i32 0, i32 86
  %102 = load void (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, void (%struct.gx_device_printer_s*, %struct._IO_FILE*)** %terminate_page, align 8, !tbaa !38
  %103 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %104 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  call void %102(%struct.gx_device_printer_s* %103, %struct._IO_FILE* %104) #6
  %105 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs75 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %105, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs75, i32 0, i32 2
  %106 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !39
  %107 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %108 = load i8*, i8** %lbuf, align 8, !tbaa !1
  call void %106(%struct.gs_memory_s* %107, i8* %108, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.39, i32 0, i32 0)) #6
  %109 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs76 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %109, i32 0, i32 1
  %free_object77 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs76, i32 0, i32 2
  %110 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object77, align 8, !tbaa !39
  %111 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %112 = load i8*, i8** %lseedbuf, align 8, !tbaa !1
  call void %110(%struct.gs_memory_s* %111, i8* %112, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.40, i32 0, i32 0)) #6
  %113 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs78 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %113, i32 0, i32 1
  %free_object79 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs78, i32 0, i32 2
  %114 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object79, align 8, !tbaa !39
  %115 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %116 = load i8*, i8** %loutputbuf, align 8, !tbaa !1
  call void %114(%struct.gs_memory_s* %115, i8* %116, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.41, i32 0, i32 0)) #6
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  %117 = bitcast i8** %data to i8*
  call void @llvm.lifetime.end(i64 8, i8* %117) #2
  %118 = bitcast i32* %begin to i8*
  call void @llvm.lifetime.end(i64 4, i8* %118) #2
  %119 = bitcast i32* %iBlock to i8*
  call void @llvm.lifetime.end(i64 4, i8* %119) #2
  %120 = bitcast i32* %iEmptyRows to i8*
  call void @llvm.lifetime.end(i64 4, i8* %120) #2
  %121 = bitcast i32* %lnum to i8*
  call void @llvm.lifetime.end(i64 4, i8* %121) #2
  %122 = bitcast i8** %loutputbuf to i8*
  call void @llvm.lifetime.end(i64 8, i8* %122) #2
  %123 = bitcast i8** %lseedbuf to i8*
  call void @llvm.lifetime.end(i64 8, i8* %123) #2
  %124 = bitcast i8** %lbuf to i8*
  call void @llvm.lifetime.end(i64 8, i8* %124) #2
  %125 = bitcast i32* %width_in_bytes to i8*
  call void @llvm.lifetime.end(i64 4, i8* %125) #2
  %126 = bitcast i32* %width_in_pixels to i8*
  call void @llvm.lifetime.end(i64 4, i8* %126) #2
  %127 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %127) #2
  %128 = bitcast i32* %yres to i8*
  call void @llvm.lifetime.end(i64 4, i8* %128) #2
  %129 = bitcast i32* %xres to i8*
  call void @llvm.lifetime.end(i64 4, i8* %129) #2
  %130 = bitcast [18 x i8]* %CRD_SeqC to i8*
  call void @llvm.lifetime.end(i64 18, i8* %130) #2
  %131 = load i32, i32* %retval
  ret i32 %131
}

; Function Attrs: nounwind uwtable
define internal void @cdnj500_start_raster_mode(%struct.gx_device_printer_s* %pdev, i32 %paper_size, %struct._IO_FILE* %prn_stream) #1 {
entry:
  %pdev.addr = alloca %struct.gx_device_printer_s*, align 8
  %paper_size.addr = alloca i32, align 4
  %prn_stream.addr = alloca %struct._IO_FILE*, align 8
  %xres = alloca i32, align 4
  %yres = alloca i32, align 4
  %x = alloca float, align 4
  %y = alloca float, align 4
  store %struct.gx_device_printer_s* %pdev, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  store i32 %paper_size, i32* %paper_size.addr, align 4, !tbaa !23
  store %struct._IO_FILE* %prn_stream, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %0 = bitcast i32* %xres to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_printer_s* %1 to %struct.gx_device_cdj850_s*
  %HWResolution = getelementptr inbounds %struct.gx_device_cdj850_s, %struct.gx_device_cdj850_s* %2, i32 0, i32 22
  %arrayidx = getelementptr inbounds [2 x float], [2 x float]* %HWResolution, i32 0, i64 0
  %3 = load float, float* %arrayidx, align 4, !tbaa !42
  %conv = fptosi float %3 to i32
  store i32 %conv, i32* %xres, align 4, !tbaa !23
  %4 = bitcast i32* %yres to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %6 = bitcast %struct.gx_device_printer_s* %5 to %struct.gx_device_cdj850_s*
  %HWResolution1 = getelementptr inbounds %struct.gx_device_cdj850_s, %struct.gx_device_cdj850_s* %6, i32 0, i32 22
  %arrayidx2 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution1, i32 0, i64 1
  %7 = load float, float* %arrayidx2, align 4, !tbaa !42
  %conv3 = fptosi float %7 to i32
  store i32 %conv3, i32* %yres, align 4, !tbaa !23
  %8 = bitcast float* %x to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #2
  %9 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %9, i32 0, i32 13
  %10 = load i32, i32* %width, align 4, !tbaa !57
  %conv4 = sitofp i32 %10 to float
  %11 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %HWResolution5 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %11, i32 0, i32 22
  %arrayidx6 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution5, i32 0, i64 0
  %12 = load float, float* %arrayidx6, align 4, !tbaa !42
  %div = fdiv float %conv4, %12
  %mul = fmul float %div, 1.000000e+01
  store float %mul, float* %x, align 4, !tbaa !42
  %13 = bitcast float* %y to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #2
  %14 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %14, i32 0, i32 14
  %15 = load i32, i32* %height, align 4, !tbaa !60
  %conv7 = sitofp i32 %15 to float
  %16 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %HWResolution8 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %16, i32 0, i32 22
  %arrayidx9 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution8, i32 0, i64 1
  %17 = load float, float* %arrayidx9, align 4, !tbaa !42
  %div10 = fdiv float %conv7, %17
  %mul11 = fmul float %div10, 1.000000e+01
  store float %mul11, float* %y, align 4, !tbaa !42
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.58, i32 0, i32 0)) #6
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %20 = load float, float* %x, align 4, !tbaa !42
  %conv12 = fpext float %20 to double
  %mul13 = fmul double %conv12, 2.540000e+00
  %21 = load float, float* %y, align 4, !tbaa !42
  %conv14 = fpext float %21 to double
  %mul15 = fmul double %conv14, 2.540000e+00
  %call16 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %19, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.67, i32 0, i32 0), double %mul13, double %mul15) #6
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call17 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %22, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.68, i32 0, i32 0)) #6
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call18 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %23, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.69, i32 0, i32 0)) #6
  %24 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %25 = bitcast %struct.gx_device_printer_s* %24 to %struct.gx_device_cdj850_s*
  %quality = getelementptr inbounds %struct.gx_device_cdj850_s, %struct.gx_device_cdj850_s* %25, i32 0, i32 71
  %26 = load i32, i32* %quality, align 4, !tbaa !45
  %cmp = icmp eq i32 %26, -1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call20 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %27, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.70, i32 0, i32 0)) #6
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call21 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %28, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.71, i32 0, i32 0)) #6
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call22 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %29, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.72, i32 0, i32 0)) #6
  br label %if.end.34

if.else:                                          ; preds = %entry
  %30 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %31 = bitcast %struct.gx_device_printer_s* %30 to %struct.gx_device_cdj850_s*
  %quality23 = getelementptr inbounds %struct.gx_device_cdj850_s, %struct.gx_device_cdj850_s* %31, i32 0, i32 71
  %32 = load i32, i32* %quality23, align 4, !tbaa !45
  %cmp24 = icmp eq i32 %32, 0
  br i1 %cmp24, label %if.then.26, label %if.else.30

if.then.26:                                       ; preds = %if.else
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call27 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %33, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.70, i32 0, i32 0)) #6
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call28 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %34, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.71, i32 0, i32 0)) #6
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call29 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %35, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.73, i32 0, i32 0)) #6
  br label %if.end

if.else.30:                                       ; preds = %if.else
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call31 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %36, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.70, i32 0, i32 0)) #6
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call32 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %37, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.74, i32 0, i32 0)) #6
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call33 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %38, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.73, i32 0, i32 0)) #6
  br label %if.end

if.end:                                           ; preds = %if.else.30, %if.then.26
  br label %if.end.34

if.end.34:                                        ; preds = %if.end, %if.then
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call35 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %39, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.75, i32 0, i32 0)) #6
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %41 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %42 = bitcast %struct.gx_device_printer_s* %41 to %struct.gx_device_cdj850_s*
  %quality36 = getelementptr inbounds %struct.gx_device_cdj850_s, %struct.gx_device_cdj850_s* %42, i32 0, i32 71
  %43 = load i32, i32* %quality36, align 4, !tbaa !45
  %call37 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %40, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.51, i32 0, i32 0), i32 %43) #6
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %45 = load i32, i32* %xres, align 4, !tbaa !23
  %call38 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %44, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.66, i32 0, i32 0), i32 %45) #6
  %46 = bitcast float* %y to i8*
  call void @llvm.lifetime.end(i64 4, i8* %46) #2
  %47 = bitcast float* %x to i8*
  call void @llvm.lifetime.end(i64 4, i8* %47) #2
  %48 = bitcast i32* %yres to i8*
  call void @llvm.lifetime.end(i64 4, i8* %48) #2
  %49 = bitcast i32* %xres to i8*
  call void @llvm.lifetime.end(i64 4, i8* %49) #2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @cdnj500_terminate_page(%struct.gx_device_printer_s* %pdev, %struct._IO_FILE* %prn_stream) #1 {
entry:
  %pdev.addr = alloca %struct.gx_device_printer_s*, align 8
  %prn_stream.addr = alloca %struct._IO_FILE*, align 8
  store %struct.gx_device_printer_s* %pdev, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  store %struct._IO_FILE* %prn_stream, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call = call i32 @fputs(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i32 0, i32 0), %struct._IO_FILE* %0) #6
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call1 = call i32 @fputs(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.26, i32 0, i32 0), %struct._IO_FILE* %1) #6
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @hp_colour_open(%struct.gx_device_s* %pdev) #1 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_s*, align 8
  %m = alloca float*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %pdev, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %0 = bitcast float** %m to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  store float* null, float** %m, align 8, !tbaa !1
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %1, i32 0, i32 11
  %num_components = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 1
  %2 = load i32, i32* %num_components, align 4, !tbaa !62
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end.7

if.then:                                          ; preds = %entry
  %3 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %color_info1 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %5, i32 0, i32 11
  %depth = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info1, i32 0, i32 3
  %6 = load i16, i16* %depth, align 2, !tbaa !64
  %conv = zext i16 %6 to i32
  %7 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %color_info2 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %7, i32 0, i32 11
  %num_components3 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info2, i32 0, i32 1
  %8 = load i32, i32* %num_components3, align 4, !tbaa !62
  %call = call i32 @cdj_set_bpp(%struct.gx_device_s* %4, i32 %conv, i32 %8) #6
  store i32 %call, i32* %code, align 4, !tbaa !23
  %9 = load i32, i32* %code, align 4, !tbaa !23
  %cmp4 = icmp slt i32 %9, 0
  br i1 %cmp4, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %if.then
  %10 = load i32, i32* %code, align 4, !tbaa !23
  store i32 %10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then.6
  %11 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %11) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.160 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.7

if.end.7:                                         ; preds = %cleanup.cont, %entry
  %12 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %13 = bitcast %struct.gx_device_s* %12 to %struct.gx_device_cdj850_s*
  %ptype = getelementptr inbounds %struct.gx_device_cdj850_s, %struct.gx_device_cdj850_s* %13, i32 0, i32 76
  %14 = load i32, i32* %ptype, align 4, !tbaa !5
  switch i32 %14, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.32
    i32 2, label %sw.bb.61
    i32 3, label %sw.bb.92
    i32 4, label %sw.bb.122
    i32 5, label %sw.bb.123
    i32 6, label %sw.bb.143
  ]

sw.bb:                                            ; preds = %if.end.7
  %15 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %16 = bitcast %struct.gx_device_s* %15 to %struct.gx_device_cdj850_s*
  %papertype = getelementptr inbounds %struct.gx_device_cdj850_s, %struct.gx_device_cdj850_s* %16, i32 0, i32 72
  %17 = load i32, i32* %papertype, align 4, !tbaa !46
  %cmp8 = icmp sle i32 %17, 2
  br i1 %cmp8, label %if.then.10, label %if.else.25

if.then.10:                                       ; preds = %sw.bb
  %18 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %19 = bitcast %struct.gx_device_s* %18 to %struct.gx_device_cdj850_s*
  %quality = getelementptr inbounds %struct.gx_device_cdj850_s, %struct.gx_device_cdj850_s* %19, i32 0, i32 71
  %20 = load i32, i32* %quality, align 4, !tbaa !45
  %cmp11 = icmp eq i32 %20, -1
  br i1 %cmp11, label %if.then.13, label %if.else

if.then.13:                                       ; preds = %if.then.10
  %21 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  call void @gx_device_set_resolution(%struct.gx_device_s* %21, double 3.000000e+02, double 3.000000e+02) #6
  %22 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %23 = bitcast %struct.gx_device_s* %22 to %struct.gx_device_cdj850_s*
  %xscal = getelementptr inbounds %struct.gx_device_cdj850_s, %struct.gx_device_cdj850_s* %23, i32 0, i32 74
  store i32 0, i32* %xscal, align 4, !tbaa !43
  %24 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %25 = bitcast %struct.gx_device_s* %24 to %struct.gx_device_cdj850_s*
  %yscal = getelementptr inbounds %struct.gx_device_cdj850_s, %struct.gx_device_cdj850_s* %25, i32 0, i32 75
  store i32 0, i32* %yscal, align 4, !tbaa !44
  br label %if.end.24

if.else:                                          ; preds = %if.then.10
  %26 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %27 = bitcast %struct.gx_device_s* %26 to %struct.gx_device_cdj850_s*
  %quality14 = getelementptr inbounds %struct.gx_device_cdj850_s, %struct.gx_device_cdj850_s* %27, i32 0, i32 71
  %28 = load i32, i32* %quality14, align 4, !tbaa !45
  %cmp15 = icmp eq i32 %28, 0
  br i1 %cmp15, label %if.then.17, label %if.else.20

if.then.17:                                       ; preds = %if.else
  %29 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  call void @gx_device_set_resolution(%struct.gx_device_s* %29, double 6.000000e+02, double 3.000000e+02) #6
  %30 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %31 = bitcast %struct.gx_device_s* %30 to %struct.gx_device_cdj850_s*
  %xscal18 = getelementptr inbounds %struct.gx_device_cdj850_s, %struct.gx_device_cdj850_s* %31, i32 0, i32 74
  store i32 1, i32* %xscal18, align 4, !tbaa !43
  %32 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %33 = bitcast %struct.gx_device_s* %32 to %struct.gx_device_cdj850_s*
  %yscal19 = getelementptr inbounds %struct.gx_device_cdj850_s, %struct.gx_device_cdj850_s* %33, i32 0, i32 75
  store i32 0, i32* %yscal19, align 4, !tbaa !44
  br label %if.end.23

if.else.20:                                       ; preds = %if.else
  %34 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  call void @gx_device_set_resolution(%struct.gx_device_s* %34, double 6.000000e+02, double 6.000000e+02) #6
  %35 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %36 = bitcast %struct.gx_device_s* %35 to %struct.gx_device_cdj850_s*
  %xscal21 = getelementptr inbounds %struct.gx_device_cdj850_s, %struct.gx_device_cdj850_s* %36, i32 0, i32 74
  store i32 1, i32* %xscal21, align 4, !tbaa !43
  %37 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %38 = bitcast %struct.gx_device_s* %37 to %struct.gx_device_cdj850_s*
  %yscal22 = getelementptr inbounds %struct.gx_device_cdj850_s, %struct.gx_device_cdj850_s* %38, i32 0, i32 75
  store i32 1, i32* %yscal22, align 4, !tbaa !44
  br label %if.end.23

if.end.23:                                        ; preds = %if.else.20, %if.then.17
  br label %if.end.24

if.end.24:                                        ; preds = %if.end.23, %if.then.13
  br label %if.end.28

if.else.25:                                       ; preds = %sw.bb
  %39 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  call void @gx_device_set_resolution(%struct.gx_device_s* %39, double 6.000000e+02, double 3.000000e+02) #6
  %40 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %41 = bitcast %struct.gx_device_s* %40 to %struct.gx_device_cdj850_s*
  %xscal26 = getelementptr inbounds %struct.gx_device_cdj850_s, %struct.gx_device_cdj850_s* %41, i32 0, i32 74
  store i32 1, i32* %xscal26, align 4, !tbaa !43
  %42 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %43 = bitcast %struct.gx_device_s* %42 to %struct.gx_device_cdj850_s*
  %yscal27 = getelementptr inbounds %struct.gx_device_cdj850_s, %struct.gx_device_cdj850_s* %43, i32 0, i32 75
  store i32 0, i32* %yscal27, align 4, !tbaa !44
  br label %if.end.28

if.end.28:                                        ; preds = %if.else.25, %if.end.24
  %44 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %call29 = call i32 @gdev_pcl_paper_size(%struct.gx_device_s* %44) #6
  %cmp30 = icmp eq i32 %call29, 26
  %cond = select i1 %cmp30, float* getelementptr inbounds ([4 x float], [4 x float]* @hp_colour_open.dj_a4, i32 0, i32 0), float* getelementptr inbounds ([4 x float], [4 x float]* @hp_colour_open.dj_letter, i32 0, i32 0)
  store float* %cond, float** %m, align 8, !tbaa !1
  br label %sw.epilog

sw.bb.32:                                         ; preds = %if.end.7
  %45 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %46 = bitcast %struct.gx_device_s* %45 to %struct.gx_device_cdj850_s*
  %quality33 = getelementptr inbounds %struct.gx_device_cdj850_s, %struct.gx_device_cdj850_s* %46, i32 0, i32 71
  %47 = load i32, i32* %quality33, align 4, !tbaa !45
  %cmp34 = icmp eq i32 %47, -1
  br i1 %cmp34, label %if.then.36, label %if.else.39

if.then.36:                                       ; preds = %sw.bb.32
  %48 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  call void @gx_device_set_resolution(%struct.gx_device_s* %48, double 3.000000e+02, double 3.000000e+02) #6
  %49 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %50 = bitcast %struct.gx_device_s* %49 to %struct.gx_device_cdj850_s*
  %xscal37 = getelementptr inbounds %struct.gx_device_cdj850_s, %struct.gx_device_cdj850_s* %50, i32 0, i32 74
  store i32 0, i32* %xscal37, align 4, !tbaa !43
  %51 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %52 = bitcast %struct.gx_device_s* %51 to %struct.gx_device_cdj850_s*
  %yscal38 = getelementptr inbounds %struct.gx_device_cdj850_s, %struct.gx_device_cdj850_s* %52, i32 0, i32 75
  store i32 0, i32* %yscal38, align 4, !tbaa !44
  %53 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %54 = bitcast %struct.gx_device_s* %53 to %struct.gx_device_cdj850_s*
  %intensities = getelementptr inbounds %struct.gx_device_cdj850_s, %struct.gx_device_cdj850_s* %54, i32 0, i32 73
  store i32 2, i32* %intensities, align 4, !tbaa !41
  br label %if.end.56

if.else.39:                                       ; preds = %sw.bb.32
  %55 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %56 = bitcast %struct.gx_device_s* %55 to %struct.gx_device_cdj850_s*
  %quality40 = getelementptr inbounds %struct.gx_device_cdj850_s, %struct.gx_device_cdj850_s* %56, i32 0, i32 71
  %57 = load i32, i32* %quality40, align 4, !tbaa !45
  %cmp41 = icmp eq i32 %57, 0
  br i1 %cmp41, label %if.then.43, label %if.else.52

if.then.43:                                       ; preds = %if.else.39
  %58 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  call void @gx_device_set_resolution(%struct.gx_device_s* %58, double 6.000000e+02, double 6.000000e+02) #6
  %59 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %60 = bitcast %struct.gx_device_s* %59 to %struct.gx_device_cdj850_s*
  %xscal44 = getelementptr inbounds %struct.gx_device_cdj850_s, %struct.gx_device_cdj850_s* %60, i32 0, i32 74
  store i32 1, i32* %xscal44, align 4, !tbaa !43
  %61 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %62 = bitcast %struct.gx_device_s* %61 to %struct.gx_device_cdj850_s*
  %yscal45 = getelementptr inbounds %struct.gx_device_cdj850_s, %struct.gx_device_cdj850_s* %62, i32 0, i32 75
  store i32 1, i32* %yscal45, align 4, !tbaa !44
  %63 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %64 = bitcast %struct.gx_device_s* %63 to %struct.gx_device_cdj850_s*
  %papertype46 = getelementptr inbounds %struct.gx_device_cdj850_s, %struct.gx_device_cdj850_s* %64, i32 0, i32 72
  %65 = load i32, i32* %papertype46, align 4, !tbaa !46
  %cmp47 = icmp sle i32 %65, 0
  br i1 %cmp47, label %if.then.49, label %if.end.51

if.then.49:                                       ; preds = %if.then.43
  %66 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %67 = bitcast %struct.gx_device_s* %66 to %struct.gx_device_cdj850_s*
  %intensities50 = getelementptr inbounds %struct.gx_device_cdj850_s, %struct.gx_device_cdj850_s* %67, i32 0, i32 73
  store i32 3, i32* %intensities50, align 4, !tbaa !41
  br label %if.end.51

if.end.51:                                        ; preds = %if.then.49, %if.then.43
  br label %if.end.55

if.else.52:                                       ; preds = %if.else.39
  %68 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  call void @gx_device_set_resolution(%struct.gx_device_s* %68, double 6.000000e+02, double 6.000000e+02) #6
  %69 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %70 = bitcast %struct.gx_device_s* %69 to %struct.gx_device_cdj850_s*
  %xscal53 = getelementptr inbounds %struct.gx_device_cdj850_s, %struct.gx_device_cdj850_s* %70, i32 0, i32 74
  store i32 1, i32* %xscal53, align 4, !tbaa !43
  %71 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %72 = bitcast %struct.gx_device_s* %71 to %struct.gx_device_cdj850_s*
  %yscal54 = getelementptr inbounds %struct.gx_device_cdj850_s, %struct.gx_device_cdj850_s* %72, i32 0, i32 75
  store i32 1, i32* %yscal54, align 4, !tbaa !44
  br label %if.end.55

if.end.55:                                        ; preds = %if.else.52, %if.end.51
  br label %if.end.56

if.end.56:                                        ; preds = %if.end.55, %if.then.36
  %73 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %call57 = call i32 @gdev_pcl_paper_size(%struct.gx_device_s* %73) #6
  %cmp58 = icmp eq i32 %call57, 26
  %cond60 = select i1 %cmp58, float* getelementptr inbounds ([4 x float], [4 x float]* @hp_colour_open.dj_a4, i32 0, i32 0), float* getelementptr inbounds ([4 x float], [4 x float]* @hp_colour_open.dj_letter, i32 0, i32 0)
  store float* %cond60, float** %m, align 8, !tbaa !1
  br label %sw.epilog

sw.bb.61:                                         ; preds = %if.end.7
  %74 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %75 = bitcast %struct.gx_device_s* %74 to %struct.gx_device_cdj850_s*
  %quality62 = getelementptr inbounds %struct.gx_device_cdj850_s, %struct.gx_device_cdj850_s* %75, i32 0, i32 71
  %76 = load i32, i32* %quality62, align 4, !tbaa !45
  %cmp63 = icmp eq i32 %76, -1
  br i1 %cmp63, label %if.then.65, label %if.else.69

if.then.65:                                       ; preds = %sw.bb.61
  %77 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  call void @gx_device_set_resolution(%struct.gx_device_s* %77, double 3.000000e+02, double 3.000000e+02) #6
  %78 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %79 = bitcast %struct.gx_device_s* %78 to %struct.gx_device_cdj850_s*
  %xscal66 = getelementptr inbounds %struct.gx_device_cdj850_s, %struct.gx_device_cdj850_s* %79, i32 0, i32 74
  store i32 0, i32* %xscal66, align 4, !tbaa !43
  %80 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %81 = bitcast %struct.gx_device_s* %80 to %struct.gx_device_cdj850_s*
  %yscal67 = getelementptr inbounds %struct.gx_device_cdj850_s, %struct.gx_device_cdj850_s* %81, i32 0, i32 75
  store i32 0, i32* %yscal67, align 4, !tbaa !44
  %82 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %83 = bitcast %struct.gx_device_s* %82 to %struct.gx_device_cdj850_s*
  %intensities68 = getelementptr inbounds %struct.gx_device_cdj850_s, %struct.gx_device_cdj850_s* %83, i32 0, i32 73
  store i32 2, i32* %intensities68, align 4, !tbaa !41
  br label %if.end.87

if.else.69:                                       ; preds = %sw.bb.61
  %84 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %85 = bitcast %struct.gx_device_s* %84 to %struct.gx_device_cdj850_s*
  %quality70 = getelementptr inbounds %struct.gx_device_cdj850_s, %struct.gx_device_cdj850_s* %85, i32 0, i32 71
  %86 = load i32, i32* %quality70, align 4, !tbaa !45
  %cmp71 = icmp eq i32 %86, 0
  br i1 %cmp71, label %if.then.73, label %if.else.82

if.then.73:                                       ; preds = %if.else.69
  %87 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  call void @gx_device_set_resolution(%struct.gx_device_s* %87, double 6.000000e+02, double 3.000000e+02) #6
  %88 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %89 = bitcast %struct.gx_device_s* %88 to %struct.gx_device_cdj850_s*
  %xscal74 = getelementptr inbounds %struct.gx_device_cdj850_s, %struct.gx_device_cdj850_s* %89, i32 0, i32 74
  store i32 1, i32* %xscal74, align 4, !tbaa !43
  %90 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %91 = bitcast %struct.gx_device_s* %90 to %struct.gx_device_cdj850_s*
  %yscal75 = getelementptr inbounds %struct.gx_device_cdj850_s, %struct.gx_device_cdj850_s* %91, i32 0, i32 75
  store i32 0, i32* %yscal75, align 4, !tbaa !44
  %92 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %93 = bitcast %struct.gx_device_s* %92 to %struct.gx_device_cdj850_s*
  %papertype76 = getelementptr inbounds %struct.gx_device_cdj850_s, %struct.gx_device_cdj850_s* %93, i32 0, i32 72
  %94 = load i32, i32* %papertype76, align 4, !tbaa !46
  %cmp77 = icmp sle i32 %94, 0
  br i1 %cmp77, label %if.then.79, label %if.end.81

if.then.79:                                       ; preds = %if.then.73
  %95 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %96 = bitcast %struct.gx_device_s* %95 to %struct.gx_device_cdj850_s*
  %intensities80 = getelementptr inbounds %struct.gx_device_cdj850_s, %struct.gx_device_cdj850_s* %96, i32 0, i32 73
  store i32 4, i32* %intensities80, align 4, !tbaa !41
  br label %if.end.81

if.end.81:                                        ; preds = %if.then.79, %if.then.73
  br label %if.end.86

if.else.82:                                       ; preds = %if.else.69
  %97 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  call void @gx_device_set_resolution(%struct.gx_device_s* %97, double 6.000000e+02, double 6.000000e+02) #6
  %98 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %99 = bitcast %struct.gx_device_s* %98 to %struct.gx_device_cdj850_s*
  %xscal83 = getelementptr inbounds %struct.gx_device_cdj850_s, %struct.gx_device_cdj850_s* %99, i32 0, i32 74
  store i32 0, i32* %xscal83, align 4, !tbaa !43
  %100 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %101 = bitcast %struct.gx_device_s* %100 to %struct.gx_device_cdj850_s*
  %yscal84 = getelementptr inbounds %struct.gx_device_cdj850_s, %struct.gx_device_cdj850_s* %101, i32 0, i32 75
  store i32 0, i32* %yscal84, align 4, !tbaa !44
  %102 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %103 = bitcast %struct.gx_device_s* %102 to %struct.gx_device_cdj850_s*
  %intensities85 = getelementptr inbounds %struct.gx_device_cdj850_s, %struct.gx_device_cdj850_s* %103, i32 0, i32 73
  store i32 4, i32* %intensities85, align 4, !tbaa !41
  br label %if.end.86

if.end.86:                                        ; preds = %if.else.82, %if.end.81
  br label %if.end.87

if.end.87:                                        ; preds = %if.end.86, %if.then.65
  %104 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %call88 = call i32 @gdev_pcl_paper_size(%struct.gx_device_s* %104) #6
  %cmp89 = icmp eq i32 %call88, 26
  %cond91 = select i1 %cmp89, float* getelementptr inbounds ([4 x float], [4 x float]* @hp_colour_open.dj_a4, i32 0, i32 0), float* getelementptr inbounds ([4 x float], [4 x float]* @hp_colour_open.dj_letter, i32 0, i32 0)
  store float* %cond91, float** %m, align 8, !tbaa !1
  br label %sw.epilog

sw.bb.92:                                         ; preds = %if.end.7
  %105 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %106 = bitcast %struct.gx_device_s* %105 to %struct.gx_device_cdj850_s*
  %quality93 = getelementptr inbounds %struct.gx_device_cdj850_s, %struct.gx_device_cdj850_s* %106, i32 0, i32 71
  %107 = load i32, i32* %quality93, align 4, !tbaa !45
  %cmp94 = icmp eq i32 %107, -1
  br i1 %cmp94, label %if.then.96, label %if.else.100

if.then.96:                                       ; preds = %sw.bb.92
  %108 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  call void @gx_device_set_resolution(%struct.gx_device_s* %108, double 3.000000e+02, double 3.000000e+02) #6
  %109 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %110 = bitcast %struct.gx_device_s* %109 to %struct.gx_device_cdj850_s*
  %xscal97 = getelementptr inbounds %struct.gx_device_cdj850_s, %struct.gx_device_cdj850_s* %110, i32 0, i32 74
  store i32 0, i32* %xscal97, align 4, !tbaa !43
  %111 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %112 = bitcast %struct.gx_device_s* %111 to %struct.gx_device_cdj850_s*
  %yscal98 = getelementptr inbounds %struct.gx_device_cdj850_s, %struct.gx_device_cdj850_s* %112, i32 0, i32 75
  store i32 0, i32* %yscal98, align 4, !tbaa !44
  %113 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %114 = bitcast %struct.gx_device_s* %113 to %struct.gx_device_cdj850_s*
  %intensities99 = getelementptr inbounds %struct.gx_device_cdj850_s, %struct.gx_device_cdj850_s* %114, i32 0, i32 73
  store i32 2, i32* %intensities99, align 4, !tbaa !41
  br label %if.end.117

if.else.100:                                      ; preds = %sw.bb.92
  %115 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %116 = bitcast %struct.gx_device_s* %115 to %struct.gx_device_cdj850_s*
  %quality101 = getelementptr inbounds %struct.gx_device_cdj850_s, %struct.gx_device_cdj850_s* %116, i32 0, i32 71
  %117 = load i32, i32* %quality101, align 4, !tbaa !45
  %cmp102 = icmp eq i32 %117, 0
  br i1 %cmp102, label %if.then.104, label %if.else.113

if.then.104:                                      ; preds = %if.else.100
  %118 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  call void @gx_device_set_resolution(%struct.gx_device_s* %118, double 6.000000e+02, double 3.000000e+02) #6
  %119 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %120 = bitcast %struct.gx_device_s* %119 to %struct.gx_device_cdj850_s*
  %xscal105 = getelementptr inbounds %struct.gx_device_cdj850_s, %struct.gx_device_cdj850_s* %120, i32 0, i32 74
  store i32 1, i32* %xscal105, align 4, !tbaa !43
  %121 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %122 = bitcast %struct.gx_device_s* %121 to %struct.gx_device_cdj850_s*
  %yscal106 = getelementptr inbounds %struct.gx_device_cdj850_s, %struct.gx_device_cdj850_s* %122, i32 0, i32 75
  store i32 0, i32* %yscal106, align 4, !tbaa !44
  %123 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %124 = bitcast %struct.gx_device_s* %123 to %struct.gx_device_cdj850_s*
  %papertype107 = getelementptr inbounds %struct.gx_device_cdj850_s, %struct.gx_device_cdj850_s* %124, i32 0, i32 72
  %125 = load i32, i32* %papertype107, align 4, !tbaa !46
  %cmp108 = icmp sle i32 %125, 0
  br i1 %cmp108, label %if.then.110, label %if.end.112

if.then.110:                                      ; preds = %if.then.104
  %126 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %127 = bitcast %struct.gx_device_s* %126 to %struct.gx_device_cdj850_s*
  %intensities111 = getelementptr inbounds %struct.gx_device_cdj850_s, %struct.gx_device_cdj850_s* %127, i32 0, i32 73
  store i32 3, i32* %intensities111, align 4, !tbaa !41
  br label %if.end.112

if.end.112:                                       ; preds = %if.then.110, %if.then.104
  br label %if.end.116

if.else.113:                                      ; preds = %if.else.100
  %128 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  call void @gx_device_set_resolution(%struct.gx_device_s* %128, double 6.000000e+02, double 6.000000e+02) #6
  %129 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %130 = bitcast %struct.gx_device_s* %129 to %struct.gx_device_cdj850_s*
  %xscal114 = getelementptr inbounds %struct.gx_device_cdj850_s, %struct.gx_device_cdj850_s* %130, i32 0, i32 74
  store i32 1, i32* %xscal114, align 4, !tbaa !43
  %131 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %132 = bitcast %struct.gx_device_s* %131 to %struct.gx_device_cdj850_s*
  %yscal115 = getelementptr inbounds %struct.gx_device_cdj850_s, %struct.gx_device_cdj850_s* %132, i32 0, i32 75
  store i32 1, i32* %yscal115, align 4, !tbaa !44
  br label %if.end.116

if.end.116:                                       ; preds = %if.else.113, %if.end.112
  br label %if.end.117

if.end.117:                                       ; preds = %if.end.116, %if.then.96
  %133 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %call118 = call i32 @gdev_pcl_paper_size(%struct.gx_device_s* %133) #6
  %cmp119 = icmp eq i32 %call118, 26
  %cond121 = select i1 %cmp119, float* getelementptr inbounds ([4 x float], [4 x float]* @hp_colour_open.dj_a4, i32 0, i32 0), float* getelementptr inbounds ([4 x float], [4 x float]* @hp_colour_open.dj_letter, i32 0, i32 0)
  store float* %cond121, float** %m, align 8, !tbaa !1
  br label %sw.epilog

sw.bb.122:                                        ; preds = %if.end.7
  %134 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  call void @gx_device_set_resolution(%struct.gx_device_s* %134, double 3.000000e+02, double 3.000000e+02) #6
  store float* getelementptr inbounds ([4 x float], [4 x float]* @hp_colour_open.m_cdj1600, i32 0, i32 0), float** %m, align 8, !tbaa !1
  br label %sw.epilog

sw.bb.123:                                        ; preds = %if.end.7
  %135 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %136 = bitcast %struct.gx_device_s* %135 to %struct.gx_device_cdj850_s*
  %xscal124 = getelementptr inbounds %struct.gx_device_cdj850_s, %struct.gx_device_cdj850_s* %136, i32 0, i32 74
  store i32 0, i32* %xscal124, align 4, !tbaa !43
  %137 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %138 = bitcast %struct.gx_device_s* %137 to %struct.gx_device_cdj850_s*
  %yscal125 = getelementptr inbounds %struct.gx_device_cdj850_s, %struct.gx_device_cdj850_s* %138, i32 0, i32 75
  store i32 0, i32* %yscal125, align 4, !tbaa !44
  %139 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %140 = bitcast %struct.gx_device_s* %139 to %struct.gx_device_cdj850_s*
  %intensities126 = getelementptr inbounds %struct.gx_device_cdj850_s, %struct.gx_device_cdj850_s* %140, i32 0, i32 73
  store i32 0, i32* %intensities126, align 4, !tbaa !41
  %141 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %142 = bitcast %struct.gx_device_s* %141 to %struct.gx_device_cdj850_s*
  %quality127 = getelementptr inbounds %struct.gx_device_cdj850_s, %struct.gx_device_cdj850_s* %142, i32 0, i32 71
  %143 = load i32, i32* %quality127, align 4, !tbaa !45
  %cmp128 = icmp eq i32 %143, -1
  br i1 %cmp128, label %if.then.130, label %if.else.131

if.then.130:                                      ; preds = %sw.bb.123
  %144 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  call void @gx_device_set_resolution(%struct.gx_device_s* %144, double 3.000000e+02, double 3.000000e+02) #6
  br label %if.end.138

if.else.131:                                      ; preds = %sw.bb.123
  %145 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %146 = bitcast %struct.gx_device_s* %145 to %struct.gx_device_cdj850_s*
  %quality132 = getelementptr inbounds %struct.gx_device_cdj850_s, %struct.gx_device_cdj850_s* %146, i32 0, i32 71
  %147 = load i32, i32* %quality132, align 4, !tbaa !45
  %cmp133 = icmp eq i32 %147, 0
  br i1 %cmp133, label %if.then.135, label %if.else.136

if.then.135:                                      ; preds = %if.else.131
  %148 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  call void @gx_device_set_resolution(%struct.gx_device_s* %148, double 3.000000e+02, double 3.000000e+02) #6
  br label %if.end.137

if.else.136:                                      ; preds = %if.else.131
  %149 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  call void @gx_device_set_resolution(%struct.gx_device_s* %149, double 6.000000e+02, double 6.000000e+02) #6
  br label %if.end.137

if.end.137:                                       ; preds = %if.else.136, %if.then.135
  br label %if.end.138

if.end.138:                                       ; preds = %if.end.137, %if.then.130
  %150 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %call139 = call i32 @gdev_pcl_paper_size(%struct.gx_device_s* %150) #6
  %cmp140 = icmp eq i32 %call139, 26
  %cond142 = select i1 %cmp140, float* getelementptr inbounds ([4 x float], [4 x float]* @hp_colour_open.chp2200_a4, i32 0, i32 0), float* getelementptr inbounds ([4 x float], [4 x float]* @hp_colour_open.chp2200_letter, i32 0, i32 0)
  store float* %cond142, float** %m, align 8, !tbaa !1
  br label %sw.epilog

sw.bb.143:                                        ; preds = %if.end.7
  %151 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %152 = bitcast %struct.gx_device_s* %151 to %struct.gx_device_cdj850_s*
  %xscal144 = getelementptr inbounds %struct.gx_device_cdj850_s, %struct.gx_device_cdj850_s* %152, i32 0, i32 74
  store i32 0, i32* %xscal144, align 4, !tbaa !43
  %153 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %154 = bitcast %struct.gx_device_s* %153 to %struct.gx_device_cdj850_s*
  %yscal145 = getelementptr inbounds %struct.gx_device_cdj850_s, %struct.gx_device_cdj850_s* %154, i32 0, i32 75
  store i32 0, i32* %yscal145, align 4, !tbaa !44
  %155 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %156 = bitcast %struct.gx_device_s* %155 to %struct.gx_device_cdj850_s*
  %intensities146 = getelementptr inbounds %struct.gx_device_cdj850_s, %struct.gx_device_cdj850_s* %156, i32 0, i32 73
  store i32 0, i32* %intensities146, align 4, !tbaa !41
  %157 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %158 = bitcast %struct.gx_device_s* %157 to %struct.gx_device_cdj850_s*
  %quality147 = getelementptr inbounds %struct.gx_device_cdj850_s, %struct.gx_device_cdj850_s* %158, i32 0, i32 71
  %159 = load i32, i32* %quality147, align 4, !tbaa !45
  %cmp148 = icmp eq i32 %159, -1
  br i1 %cmp148, label %if.then.150, label %if.else.151

if.then.150:                                      ; preds = %sw.bb.143
  %160 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  call void @gx_device_set_resolution(%struct.gx_device_s* %160, double 3.000000e+02, double 3.000000e+02) #6
  br label %if.end.158

if.else.151:                                      ; preds = %sw.bb.143
  %161 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %162 = bitcast %struct.gx_device_s* %161 to %struct.gx_device_cdj850_s*
  %quality152 = getelementptr inbounds %struct.gx_device_cdj850_s, %struct.gx_device_cdj850_s* %162, i32 0, i32 71
  %163 = load i32, i32* %quality152, align 4, !tbaa !45
  %cmp153 = icmp eq i32 %163, 0
  br i1 %cmp153, label %if.then.155, label %if.else.156

if.then.155:                                      ; preds = %if.else.151
  %164 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  call void @gx_device_set_resolution(%struct.gx_device_s* %164, double 6.000000e+02, double 6.000000e+02) #6
  br label %if.end.157

if.else.156:                                      ; preds = %if.else.151
  %165 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  call void @gx_device_set_resolution(%struct.gx_device_s* %165, double 6.000000e+02, double 6.000000e+02) #6
  br label %if.end.157

if.end.157:                                       ; preds = %if.else.156, %if.then.155
  br label %if.end.158

if.end.158:                                       ; preds = %if.end.157, %if.then.150
  store float* getelementptr inbounds ([4 x float], [4 x float]* @hp_colour_open.cdnj500, i32 0, i32 0), float** %m, align 8, !tbaa !1
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.7
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.158, %if.end.138, %sw.bb.122, %if.end.117, %if.end.87, %if.end.56, %if.end.28
  %166 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %167 = load float*, float** %m, align 8, !tbaa !1
  call void @gx_device_set_margins(%struct.gx_device_s* %166, float* %167, i32 1) #6
  %168 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %call159 = call i32 @gdev_prn_open(%struct.gx_device_s* %168) #6
  store i32 %call159, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.160

cleanup.160:                                      ; preds = %sw.epilog, %cleanup
  %169 = bitcast float** %m to i8*
  call void @llvm.lifetime.end(i64 8, i8* %169) #2
  %170 = load i32, i32* %retval
  ret i32 %170
}

declare void @gx_default_get_initial_matrix(%struct.gx_device_s*, %struct.gs_matrix_s*) #0

declare i32 @gx_default_sync_output(%struct.gx_device_s*) #0

declare i32 @gdev_prn_output_page(%struct.gx_device_s*, i32, i32) #0

declare i32 @gdev_prn_close(%struct.gx_device_s*) #0

; Function Attrs: nounwind uwtable
define internal i32 @gdev_cmyk_map_color_rgb(%struct.gx_device_s* %pdev, i64 %color, i16* %prgb) #1 {
entry:
  %pdev.addr = alloca %struct.gx_device_s*, align 8
  %color.addr = alloca i64, align 8
  %prgb.addr = alloca i16*, align 8
  %value = alloca i16, align 2
  %bcyan = alloca i64, align 8
  %bmagenta = alloca i64, align 8
  %byellow = alloca i64, align 8
  %black = alloca i64, align 8
  %nbits = alloca i32, align 4
  store %struct.gx_device_s* %pdev, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  store i64 %color, i64* %color.addr, align 8, !tbaa !65
  store i16* %prgb, i16** %prgb.addr, align 8, !tbaa !1
  %0 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %0, i32 0, i32 11
  %depth = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 3
  %1 = load i16, i16* %depth, align 2, !tbaa !64
  %conv = zext i16 %1 to i32
  switch i32 %conv, label %sw.default [
    i32 1, label %sw.bb
    i32 8, label %sw.bb.4
  ]

sw.bb:                                            ; preds = %entry
  %2 = load i64, i64* %color.addr, align 8, !tbaa !65
  %sub = sub i64 1, %2
  %mul = mul i64 65535, %sub
  %conv1 = trunc i64 %mul to i16
  %3 = load i16*, i16** %prgb.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %3, i64 2
  store i16 %conv1, i16* %arrayidx, align 2, !tbaa !66
  %4 = load i16*, i16** %prgb.addr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds i16, i16* %4, i64 1
  store i16 %conv1, i16* %arrayidx2, align 2, !tbaa !66
  %5 = load i16*, i16** %prgb.addr, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds i16, i16* %5, i64 0
  store i16 %conv1, i16* %arrayidx3, align 2, !tbaa !66
  br label %sw.epilog

sw.bb.4:                                          ; preds = %entry
  %6 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %color_info5 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %6, i32 0, i32 11
  %num_components = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info5, i32 0, i32 1
  %7 = load i32, i32* %num_components, align 4, !tbaa !62
  %cmp = icmp eq i32 %7, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb.4
  %8 = bitcast i16* %value to i8*
  call void @llvm.lifetime.start(i64 2, i8* %8) #2
  %9 = load i64, i64* %color.addr, align 8, !tbaa !65
  %conv7 = trunc i64 %9 to i16
  %conv8 = zext i16 %conv7 to i32
  %xor = xor i32 %conv8, 255
  %conv9 = trunc i32 %xor to i16
  store i16 %conv9, i16* %value, align 2, !tbaa !66
  %10 = load i16, i16* %value, align 2, !tbaa !66
  %conv10 = zext i16 %10 to i32
  %shl = shl i32 %conv10, 8
  %11 = load i16, i16* %value, align 2, !tbaa !66
  %conv11 = zext i16 %11 to i32
  %add = add nsw i32 %shl, %conv11
  %conv12 = trunc i32 %add to i16
  %12 = load i16*, i16** %prgb.addr, align 8, !tbaa !1
  %arrayidx13 = getelementptr inbounds i16, i16* %12, i64 2
  store i16 %conv12, i16* %arrayidx13, align 2, !tbaa !66
  %13 = load i16*, i16** %prgb.addr, align 8, !tbaa !1
  %arrayidx14 = getelementptr inbounds i16, i16* %13, i64 1
  store i16 %conv12, i16* %arrayidx14, align 2, !tbaa !66
  %14 = load i16*, i16** %prgb.addr, align 8, !tbaa !1
  %arrayidx15 = getelementptr inbounds i16, i16* %14, i64 0
  store i16 %conv12, i16* %arrayidx15, align 2, !tbaa !66
  %15 = bitcast i16* %value to i8*
  call void @llvm.lifetime.end(i64 2, i8* %15) #2
  br label %sw.epilog

if.end:                                           ; preds = %sw.bb.4
  br label %sw.default

sw.default:                                       ; preds = %entry, %if.end
  %16 = bitcast i64* %bcyan to i8*
  call void @llvm.lifetime.start(i64 8, i8* %16) #2
  %17 = bitcast i64* %bmagenta to i8*
  call void @llvm.lifetime.start(i64 8, i8* %17) #2
  %18 = bitcast i64* %byellow to i8*
  call void @llvm.lifetime.start(i64 8, i8* %18) #2
  %19 = bitcast i64* %black to i8*
  call void @llvm.lifetime.start(i64 8, i8* %19) #2
  %20 = bitcast i32* %nbits to i8*
  call void @llvm.lifetime.start(i64 4, i8* %20) #2
  %21 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %color_info16 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %21, i32 0, i32 11
  %depth17 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info16, i32 0, i32 3
  %22 = load i16, i16* %depth17, align 2, !tbaa !64
  %conv18 = zext i16 %22 to i32
  store i32 %conv18, i32* %nbits, align 4, !tbaa !23
  %23 = load i64, i64* %color.addr, align 8, !tbaa !65
  %24 = load i32, i32* %nbits, align 4, !tbaa !23
  %shr = ashr i32 %24, 2
  %mul19 = mul nsw i32 3, %shr
  %sh_prom = zext i32 %mul19 to i64
  %shr20 = lshr i64 %23, %sh_prom
  %25 = load i32, i32* %nbits, align 4, !tbaa !23
  %shr21 = ashr i32 %25, 2
  %shl22 = shl i32 1, %shr21
  %sub23 = sub nsw i32 %shl22, 1
  %conv24 = sext i32 %sub23 to i64
  %and = and i64 %shr20, %conv24
  %26 = load i32, i32* %nbits, align 4, !tbaa !23
  %shr25 = ashr i32 %26, 2
  %conv26 = sext i32 %shr25 to i64
  %sub27 = sub i64 16, %conv26
  %shl28 = shl i64 %and, %sub27
  store i64 %shl28, i64* %black, align 8, !tbaa !65
  %27 = load i64, i64* %color.addr, align 8, !tbaa !65
  %28 = load i32, i32* %nbits, align 4, !tbaa !23
  %shr29 = ashr i32 %28, 2
  %mul30 = mul nsw i32 2, %shr29
  %sh_prom31 = zext i32 %mul30 to i64
  %shr32 = lshr i64 %27, %sh_prom31
  %29 = load i32, i32* %nbits, align 4, !tbaa !23
  %shr33 = ashr i32 %29, 2
  %shl34 = shl i32 1, %shr33
  %sub35 = sub nsw i32 %shl34, 1
  %conv36 = sext i32 %sub35 to i64
  %and37 = and i64 %shr32, %conv36
  %30 = load i32, i32* %nbits, align 4, !tbaa !23
  %shr38 = ashr i32 %30, 2
  %conv39 = sext i32 %shr38 to i64
  %sub40 = sub i64 16, %conv39
  %shl41 = shl i64 %and37, %sub40
  store i64 %shl41, i64* %bcyan, align 8, !tbaa !65
  %31 = load i64, i64* %color.addr, align 8, !tbaa !65
  %32 = load i32, i32* %nbits, align 4, !tbaa !23
  %shr42 = ashr i32 %32, 2
  %sh_prom43 = zext i32 %shr42 to i64
  %shr44 = lshr i64 %31, %sh_prom43
  %33 = load i32, i32* %nbits, align 4, !tbaa !23
  %shr45 = ashr i32 %33, 2
  %shl46 = shl i32 1, %shr45
  %sub47 = sub nsw i32 %shl46, 1
  %conv48 = sext i32 %sub47 to i64
  %and49 = and i64 %shr44, %conv48
  %34 = load i32, i32* %nbits, align 4, !tbaa !23
  %shr50 = ashr i32 %34, 2
  %conv51 = sext i32 %shr50 to i64
  %sub52 = sub i64 16, %conv51
  %shl53 = shl i64 %and49, %sub52
  store i64 %shl53, i64* %bmagenta, align 8, !tbaa !65
  %35 = load i64, i64* %color.addr, align 8, !tbaa !65
  %36 = load i32, i32* %nbits, align 4, !tbaa !23
  %shr54 = ashr i32 %36, 2
  %shl55 = shl i32 1, %shr54
  %sub56 = sub nsw i32 %shl55, 1
  %conv57 = sext i32 %sub56 to i64
  %and58 = and i64 %35, %conv57
  %37 = load i32, i32* %nbits, align 4, !tbaa !23
  %shr59 = ashr i32 %37, 2
  %conv60 = sext i32 %shr59 to i64
  %sub61 = sub i64 16, %conv60
  %shl62 = shl i64 %and58, %sub61
  store i64 %shl62, i64* %byellow, align 8, !tbaa !65
  %38 = load i64, i64* %bcyan, align 8, !tbaa !65
  %sub63 = sub i64 65535, %38
  %39 = load i64, i64* %black, align 8, !tbaa !65
  %sub64 = sub i64 65535, %39
  %mul65 = mul i64 %sub63, %sub64
  %div = udiv i64 %mul65, 65535
  %conv66 = trunc i64 %div to i16
  %40 = load i16*, i16** %prgb.addr, align 8, !tbaa !1
  %arrayidx67 = getelementptr inbounds i16, i16* %40, i64 0
  store i16 %conv66, i16* %arrayidx67, align 2, !tbaa !66
  %41 = load i64, i64* %bmagenta, align 8, !tbaa !65
  %sub68 = sub i64 65535, %41
  %42 = load i64, i64* %black, align 8, !tbaa !65
  %sub69 = sub i64 65535, %42
  %mul70 = mul i64 %sub68, %sub69
  %div71 = udiv i64 %mul70, 65535
  %conv72 = trunc i64 %div71 to i16
  %43 = load i16*, i16** %prgb.addr, align 8, !tbaa !1
  %arrayidx73 = getelementptr inbounds i16, i16* %43, i64 1
  store i16 %conv72, i16* %arrayidx73, align 2, !tbaa !66
  %44 = load i64, i64* %byellow, align 8, !tbaa !65
  %sub74 = sub i64 65535, %44
  %45 = load i64, i64* %black, align 8, !tbaa !65
  %sub75 = sub i64 65535, %45
  %mul76 = mul i64 %sub74, %sub75
  %div77 = udiv i64 %mul76, 65535
  %conv78 = trunc i64 %div77 to i16
  %46 = load i16*, i16** %prgb.addr, align 8, !tbaa !1
  %arrayidx79 = getelementptr inbounds i16, i16* %46, i64 2
  store i16 %conv78, i16* %arrayidx79, align 2, !tbaa !66
  %47 = bitcast i32* %nbits to i8*
  call void @llvm.lifetime.end(i64 4, i8* %47) #2
  %48 = bitcast i64* %black to i8*
  call void @llvm.lifetime.end(i64 8, i8* %48) #2
  %49 = bitcast i64* %byellow to i8*
  call void @llvm.lifetime.end(i64 8, i8* %49) #2
  %50 = bitcast i64* %bmagenta to i8*
  call void @llvm.lifetime.end(i64 8, i8* %50) #2
  %51 = bitcast i64* %bcyan to i8*
  call void @llvm.lifetime.end(i64 8, i8* %51) #2
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.then, %sw.bb
  ret i32 0
}

declare i32 @gx_default_get_bits(%struct.gx_device_s*, i32, i8*, i8**) #0

; Function Attrs: nounwind uwtable
define internal i32 @cdj850_get_params(%struct.gx_device_s* %pdev, %struct.gs_param_list_s* %plist) #1 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_s*, align 8
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %pdev, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %2 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call = call i32 @gdev_prn_get_params(%struct.gx_device_s* %1, %struct.gs_param_list_s* %2) #6
  store i32 %call, i32* %code, align 4, !tbaa !23
  %3 = load i32, i32* %code, align 4, !tbaa !23
  %cmp = icmp slt i32 %3, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %4 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %6 = bitcast %struct.gx_device_s* %5 to %struct.gx_device_cdj850_s*
  %quality = getelementptr inbounds %struct.gx_device_cdj850_s, %struct.gx_device_cdj850_s* %6, i32 0, i32 71
  %call1 = call i32 @param_write_int(%struct.gs_param_list_s* %4, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0), i32* %quality) #6
  store i32 %call1, i32* %code, align 4, !tbaa !23
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.then, label %lor.lhs.false.3

lor.lhs.false.3:                                  ; preds = %lor.lhs.false
  %7 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %8 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %9 = bitcast %struct.gx_device_s* %8 to %struct.gx_device_cdj850_s*
  %papertype = getelementptr inbounds %struct.gx_device_cdj850_s, %struct.gx_device_cdj850_s* %9, i32 0, i32 72
  %call4 = call i32 @param_write_int(%struct.gs_param_list_s* %7, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i32 0, i32 0), i32* %papertype) #6
  store i32 %call4, i32* %code, align 4, !tbaa !23
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %if.then, label %lor.lhs.false.6

lor.lhs.false.6:                                  ; preds = %lor.lhs.false.3
  %10 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %11 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %12 = bitcast %struct.gx_device_s* %11 to %struct.gx_device_cdj850_s*
  %gammavalc = getelementptr inbounds %struct.gx_device_cdj850_s, %struct.gx_device_cdj850_s* %12, i32 0, i32 79
  %call7 = call i32 @param_write_float(%struct.gs_param_list_s* %10, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i32 0, i32 0), float* %gammavalc) #6
  store i32 %call7, i32* %code, align 4, !tbaa !23
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %if.then, label %lor.lhs.false.9

lor.lhs.false.9:                                  ; preds = %lor.lhs.false.6
  %13 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %14 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %15 = bitcast %struct.gx_device_s* %14 to %struct.gx_device_cdj850_s*
  %gammavalc10 = getelementptr inbounds %struct.gx_device_cdj850_s, %struct.gx_device_cdj850_s* %15, i32 0, i32 79
  %call11 = call i32 @param_write_float(%struct.gs_param_list_s* %13, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i32 0, i32 0), float* %gammavalc10) #6
  store i32 %call11, i32* %code, align 4, !tbaa !23
  %cmp12 = icmp slt i32 %call11, 0
  br i1 %cmp12, label %if.then, label %lor.lhs.false.13

lor.lhs.false.13:                                 ; preds = %lor.lhs.false.9
  %16 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %17 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %18 = bitcast %struct.gx_device_s* %17 to %struct.gx_device_cdj850_s*
  %gammavalm = getelementptr inbounds %struct.gx_device_cdj850_s, %struct.gx_device_cdj850_s* %18, i32 0, i32 80
  %call14 = call i32 @param_write_float(%struct.gs_param_list_s* %16, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i32 0, i32 0), float* %gammavalm) #6
  store i32 %call14, i32* %code, align 4, !tbaa !23
  %cmp15 = icmp slt i32 %call14, 0
  br i1 %cmp15, label %if.then, label %lor.lhs.false.16

lor.lhs.false.16:                                 ; preds = %lor.lhs.false.13
  %19 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %20 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %21 = bitcast %struct.gx_device_s* %20 to %struct.gx_device_cdj850_s*
  %gammavaly = getelementptr inbounds %struct.gx_device_cdj850_s, %struct.gx_device_cdj850_s* %21, i32 0, i32 81
  %call17 = call i32 @param_write_float(%struct.gs_param_list_s* %19, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i32 0, i32 0), float* %gammavaly) #6
  store i32 %call17, i32* %code, align 4, !tbaa !23
  %cmp18 = icmp slt i32 %call17, 0
  br i1 %cmp18, label %if.then, label %lor.lhs.false.19

lor.lhs.false.19:                                 ; preds = %lor.lhs.false.16
  %22 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %23 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %24 = bitcast %struct.gx_device_s* %23 to %struct.gx_device_cdj850_s*
  %gammavalk = getelementptr inbounds %struct.gx_device_cdj850_s, %struct.gx_device_cdj850_s* %24, i32 0, i32 82
  %call20 = call i32 @param_write_float(%struct.gs_param_list_s* %22, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i32 0, i32 0), float* %gammavalk) #6
  store i32 %call20, i32* %code, align 4, !tbaa !23
  %cmp21 = icmp slt i32 %call20, 0
  br i1 %cmp21, label %if.then, label %lor.lhs.false.22

lor.lhs.false.22:                                 ; preds = %lor.lhs.false.19
  %25 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %26 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %27 = bitcast %struct.gx_device_s* %26 to %struct.gx_device_cdj850_s*
  %blackcorrect = getelementptr inbounds %struct.gx_device_cdj850_s, %struct.gx_device_cdj850_s* %27, i32 0, i32 83
  %call23 = call i32 @param_write_float(%struct.gs_param_list_s* %25, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i32 0, i32 0), float* %blackcorrect) #6
  store i32 %call23, i32* %code, align 4, !tbaa !23
  %cmp24 = icmp slt i32 %call23, 0
  br i1 %cmp24, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.22, %lor.lhs.false.19, %lor.lhs.false.16, %lor.lhs.false.13, %lor.lhs.false.9, %lor.lhs.false.6, %lor.lhs.false.3, %lor.lhs.false, %entry
  %28 = load i32, i32* %code, align 4, !tbaa !23
  store i32 %28, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false.22
  %29 = load i32, i32* %code, align 4, !tbaa !23
  store i32 %29, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %30 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %30) #2
  %31 = load i32, i32* %retval
  ret i32 %31
}

; Function Attrs: nounwind uwtable
define internal i32 @cdj850_put_params(%struct.gx_device_s* %pdev, %struct.gs_param_list_s* %plist) #1 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_s*, align 8
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %quality = alloca i32, align 4
  %papertype = alloca i32, align 4
  %mastergamma = alloca float, align 4
  %gammavalc = alloca float, align 4
  %gammavalm = alloca float, align 4
  %gammavaly = alloca float, align 4
  %gammavalk = alloca float, align 4
  %blackcorrect = alloca float, align 4
  %bpp = alloca i32, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %pdev, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %0 = bitcast i32* %quality to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_cdj850_s*
  %quality1 = getelementptr inbounds %struct.gx_device_cdj850_s, %struct.gx_device_cdj850_s* %2, i32 0, i32 71
  %3 = load i32, i32* %quality1, align 4, !tbaa !45
  store i32 %3, i32* %quality, align 4, !tbaa !23
  %4 = bitcast i32* %papertype to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %6 = bitcast %struct.gx_device_s* %5 to %struct.gx_device_cdj850_s*
  %papertype2 = getelementptr inbounds %struct.gx_device_cdj850_s, %struct.gx_device_cdj850_s* %6, i32 0, i32 72
  %7 = load i32, i32* %papertype2, align 4, !tbaa !46
  store i32 %7, i32* %papertype, align 4, !tbaa !23
  %8 = bitcast float* %mastergamma to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #2
  %9 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %10 = bitcast %struct.gx_device_s* %9 to %struct.gx_device_cdj850_s*
  %mastergamma3 = getelementptr inbounds %struct.gx_device_cdj850_s, %struct.gx_device_cdj850_s* %10, i32 0, i32 78
  %11 = load float, float* %mastergamma3, align 4, !tbaa !67
  store float %11, float* %mastergamma, align 4, !tbaa !42
  %12 = bitcast float* %gammavalc to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #2
  %13 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %14 = bitcast %struct.gx_device_s* %13 to %struct.gx_device_cdj850_s*
  %gammavalc4 = getelementptr inbounds %struct.gx_device_cdj850_s, %struct.gx_device_cdj850_s* %14, i32 0, i32 79
  %15 = load float, float* %gammavalc4, align 4, !tbaa !68
  store float %15, float* %gammavalc, align 4, !tbaa !42
  %16 = bitcast float* %gammavalm to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #2
  %17 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %18 = bitcast %struct.gx_device_s* %17 to %struct.gx_device_cdj850_s*
  %gammavalm5 = getelementptr inbounds %struct.gx_device_cdj850_s, %struct.gx_device_cdj850_s* %18, i32 0, i32 80
  %19 = load float, float* %gammavalm5, align 4, !tbaa !69
  store float %19, float* %gammavalm, align 4, !tbaa !42
  %20 = bitcast float* %gammavaly to i8*
  call void @llvm.lifetime.start(i64 4, i8* %20) #2
  %21 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %22 = bitcast %struct.gx_device_s* %21 to %struct.gx_device_cdj850_s*
  %gammavaly6 = getelementptr inbounds %struct.gx_device_cdj850_s, %struct.gx_device_cdj850_s* %22, i32 0, i32 81
  %23 = load float, float* %gammavaly6, align 4, !tbaa !70
  store float %23, float* %gammavaly, align 4, !tbaa !42
  %24 = bitcast float* %gammavalk to i8*
  call void @llvm.lifetime.start(i64 4, i8* %24) #2
  %25 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %26 = bitcast %struct.gx_device_s* %25 to %struct.gx_device_cdj850_s*
  %gammavalk7 = getelementptr inbounds %struct.gx_device_cdj850_s, %struct.gx_device_cdj850_s* %26, i32 0, i32 82
  %27 = load float, float* %gammavalk7, align 4, !tbaa !71
  store float %27, float* %gammavalk, align 4, !tbaa !42
  %28 = bitcast float* %blackcorrect to i8*
  call void @llvm.lifetime.start(i64 4, i8* %28) #2
  %29 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %30 = bitcast %struct.gx_device_s* %29 to %struct.gx_device_cdj850_s*
  %blackcorrect8 = getelementptr inbounds %struct.gx_device_cdj850_s, %struct.gx_device_cdj850_s* %30, i32 0, i32 83
  %31 = load float, float* %blackcorrect8, align 4, !tbaa !25
  store float %31, float* %blackcorrect, align 4, !tbaa !42
  %32 = bitcast i32* %bpp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %32) #2
  store i32 0, i32* %bpp, align 4, !tbaa !23
  %33 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %33) #2
  store i32 0, i32* %code, align 4, !tbaa !23
  %34 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %35 = load i32, i32* %code, align 4, !tbaa !23
  %call = call i32 @cdj_put_param_int(%struct.gs_param_list_s* %34, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i32 0, i32 0), i32* %bpp, i32 1, i32 32, i32 %35) #6
  store i32 %call, i32* %code, align 4, !tbaa !23
  %36 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %37 = load i32, i32* %code, align 4, !tbaa !23
  %call9 = call i32 @cdj_put_param_int(%struct.gs_param_list_s* %36, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0), i32* %quality, i32 0, i32 2, i32 %37) #6
  store i32 %call9, i32* %code, align 4, !tbaa !23
  %38 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %39 = load i32, i32* %code, align 4, !tbaa !23
  %call10 = call i32 @cdj_put_param_int(%struct.gs_param_list_s* %38, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i32 0, i32 0), i32* %papertype, i32 0, i32 4, i32 %39) #6
  store i32 %call10, i32* %code, align 4, !tbaa !23
  %40 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %41 = load i32, i32* %code, align 4, !tbaa !23
  %call11 = call i32 @cdj_put_param_float(%struct.gs_param_list_s* %40, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i32 0, i32 0), float* %mastergamma, float 0x3FB99999A0000000, float 9.000000e+00, i32 %41) #6
  store i32 %call11, i32* %code, align 4, !tbaa !23
  %42 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %43 = load i32, i32* %code, align 4, !tbaa !23
  %call12 = call i32 @cdj_put_param_float(%struct.gs_param_list_s* %42, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i32 0, i32 0), float* %gammavalc, float 0.000000e+00, float 9.000000e+00, i32 %43) #6
  store i32 %call12, i32* %code, align 4, !tbaa !23
  %44 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %45 = load i32, i32* %code, align 4, !tbaa !23
  %call13 = call i32 @cdj_put_param_float(%struct.gs_param_list_s* %44, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i32 0, i32 0), float* %gammavalm, float 0.000000e+00, float 9.000000e+00, i32 %45) #6
  store i32 %call13, i32* %code, align 4, !tbaa !23
  %46 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %47 = load i32, i32* %code, align 4, !tbaa !23
  %call14 = call i32 @cdj_put_param_float(%struct.gs_param_list_s* %46, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i32 0, i32 0), float* %gammavaly, float 0.000000e+00, float 9.000000e+00, i32 %47) #6
  store i32 %call14, i32* %code, align 4, !tbaa !23
  %48 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %49 = load i32, i32* %code, align 4, !tbaa !23
  %call15 = call i32 @cdj_put_param_float(%struct.gs_param_list_s* %48, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i32 0, i32 0), float* %gammavalk, float 0.000000e+00, float 9.000000e+00, i32 %49) #6
  store i32 %call15, i32* %code, align 4, !tbaa !23
  %50 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %51 = load i32, i32* %code, align 4, !tbaa !23
  %call16 = call i32 @cdj_put_param_float(%struct.gs_param_list_s* %50, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i32 0, i32 0), float* %blackcorrect, float 0.000000e+00, float 9.000000e+00, i32 %51) #6
  store i32 %call16, i32* %code, align 4, !tbaa !23
  %52 = load i32, i32* %code, align 4, !tbaa !23
  %cmp = icmp slt i32 %52, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %53 = load i32, i32* %code, align 4, !tbaa !23
  store i32 %53, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %54 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %55 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %56 = load i32, i32* %bpp, align 4, !tbaa !23
  %57 = load i32, i32* %bpp, align 4, !tbaa !23
  %call17 = call i32 @cdj_put_param_bpp(%struct.gx_device_s* %54, %struct.gs_param_list_s* %55, i32 %56, i32 %57, i32 0) #6
  store i32 %call17, i32* %code, align 4, !tbaa !23
  %58 = load i32, i32* %code, align 4, !tbaa !23
  %cmp18 = icmp slt i32 %58, 0
  br i1 %cmp18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %if.end
  %59 = load i32, i32* %code, align 4, !tbaa !23
  store i32 %59, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.20:                                        ; preds = %if.end
  %60 = load i32, i32* %quality, align 4, !tbaa !23
  %61 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %62 = bitcast %struct.gx_device_s* %61 to %struct.gx_device_cdj850_s*
  %quality21 = getelementptr inbounds %struct.gx_device_cdj850_s, %struct.gx_device_cdj850_s* %62, i32 0, i32 71
  store i32 %60, i32* %quality21, align 4, !tbaa !45
  %63 = load i32, i32* %papertype, align 4, !tbaa !23
  %64 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %65 = bitcast %struct.gx_device_s* %64 to %struct.gx_device_cdj850_s*
  %papertype22 = getelementptr inbounds %struct.gx_device_cdj850_s, %struct.gx_device_cdj850_s* %65, i32 0, i32 72
  store i32 %63, i32* %papertype22, align 4, !tbaa !46
  %66 = load float, float* %mastergamma, align 4, !tbaa !42
  %67 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %68 = bitcast %struct.gx_device_s* %67 to %struct.gx_device_cdj850_s*
  %mastergamma23 = getelementptr inbounds %struct.gx_device_cdj850_s, %struct.gx_device_cdj850_s* %68, i32 0, i32 78
  store float %66, float* %mastergamma23, align 4, !tbaa !67
  %69 = load float, float* %gammavalc, align 4, !tbaa !42
  %70 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %71 = bitcast %struct.gx_device_s* %70 to %struct.gx_device_cdj850_s*
  %gammavalc24 = getelementptr inbounds %struct.gx_device_cdj850_s, %struct.gx_device_cdj850_s* %71, i32 0, i32 79
  store float %69, float* %gammavalc24, align 4, !tbaa !68
  %72 = load float, float* %gammavalm, align 4, !tbaa !42
  %73 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %74 = bitcast %struct.gx_device_s* %73 to %struct.gx_device_cdj850_s*
  %gammavalm25 = getelementptr inbounds %struct.gx_device_cdj850_s, %struct.gx_device_cdj850_s* %74, i32 0, i32 80
  store float %72, float* %gammavalm25, align 4, !tbaa !69
  %75 = load float, float* %gammavaly, align 4, !tbaa !42
  %76 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %77 = bitcast %struct.gx_device_s* %76 to %struct.gx_device_cdj850_s*
  %gammavaly26 = getelementptr inbounds %struct.gx_device_cdj850_s, %struct.gx_device_cdj850_s* %77, i32 0, i32 81
  store float %75, float* %gammavaly26, align 4, !tbaa !70
  %78 = load float, float* %gammavalk, align 4, !tbaa !42
  %79 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %80 = bitcast %struct.gx_device_s* %79 to %struct.gx_device_cdj850_s*
  %gammavalk27 = getelementptr inbounds %struct.gx_device_cdj850_s, %struct.gx_device_cdj850_s* %80, i32 0, i32 82
  store float %78, float* %gammavalk27, align 4, !tbaa !71
  %81 = load float, float* %blackcorrect, align 4, !tbaa !42
  %82 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %83 = bitcast %struct.gx_device_s* %82 to %struct.gx_device_cdj850_s*
  %blackcorrect28 = getelementptr inbounds %struct.gx_device_cdj850_s, %struct.gx_device_cdj850_s* %83, i32 0, i32 83
  store float %81, float* %blackcorrect28, align 4, !tbaa !25
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.20, %if.then.19, %if.then
  %84 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %84) #2
  %85 = bitcast i32* %bpp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %85) #2
  %86 = bitcast float* %blackcorrect to i8*
  call void @llvm.lifetime.end(i64 4, i8* %86) #2
  %87 = bitcast float* %gammavalk to i8*
  call void @llvm.lifetime.end(i64 4, i8* %87) #2
  %88 = bitcast float* %gammavaly to i8*
  call void @llvm.lifetime.end(i64 4, i8* %88) #2
  %89 = bitcast float* %gammavalm to i8*
  call void @llvm.lifetime.end(i64 4, i8* %89) #2
  %90 = bitcast float* %gammavalc to i8*
  call void @llvm.lifetime.end(i64 4, i8* %90) #2
  %91 = bitcast float* %mastergamma to i8*
  call void @llvm.lifetime.end(i64 4, i8* %91) #2
  %92 = bitcast i32* %papertype to i8*
  call void @llvm.lifetime.end(i64 4, i8* %92) #2
  %93 = bitcast i32* %quality to i8*
  call void @llvm.lifetime.end(i64 4, i8* %93) #2
  %94 = load i32, i32* %retval
  ret i32 %94
}

; Function Attrs: nounwind uwtable
define internal i64 @gdev_cmyk_map_cmyk_color(%struct.gx_device_s* %pdev, i16* %cv) #1 {
entry:
  %pdev.addr = alloca %struct.gx_device_s*, align 8
  %cv.addr = alloca i16*, align 8
  %color = alloca i64, align 8
  %cyan = alloca i16, align 2
  %magenta = alloca i16, align 2
  %yellow = alloca i16, align 2
  %black = alloca i16, align 2
  %nbits = alloca i32, align 4
  %bpart = alloca float, align 4
  store %struct.gx_device_s* %pdev, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  store i16* %cv, i16** %cv.addr, align 8, !tbaa !1
  %0 = bitcast i64* %color to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = bitcast i16* %cyan to i8*
  call void @llvm.lifetime.start(i64 2, i8* %1) #2
  %2 = bitcast i16* %magenta to i8*
  call void @llvm.lifetime.start(i64 2, i8* %2) #2
  %3 = bitcast i16* %yellow to i8*
  call void @llvm.lifetime.start(i64 2, i8* %3) #2
  %4 = bitcast i16* %black to i8*
  call void @llvm.lifetime.start(i64 2, i8* %4) #2
  %5 = load i16*, i16** %cv.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %5, i64 0
  %6 = load i16, i16* %arrayidx, align 2, !tbaa !66
  store i16 %6, i16* %cyan, align 2, !tbaa !66
  %7 = load i16*, i16** %cv.addr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds i16, i16* %7, i64 1
  %8 = load i16, i16* %arrayidx1, align 2, !tbaa !66
  store i16 %8, i16* %magenta, align 2, !tbaa !66
  %9 = load i16*, i16** %cv.addr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds i16, i16* %9, i64 2
  %10 = load i16, i16* %arrayidx2, align 2, !tbaa !66
  store i16 %10, i16* %yellow, align 2, !tbaa !66
  %11 = load i16*, i16** %cv.addr, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds i16, i16* %11, i64 3
  %12 = load i16, i16* %arrayidx3, align 2, !tbaa !66
  store i16 %12, i16* %black, align 2, !tbaa !66
  %13 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %13, i32 0, i32 11
  %depth = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 3
  %14 = load i16, i16* %depth, align 2, !tbaa !64
  %conv = zext i16 %14 to i32
  switch i32 %conv, label %sw.default [
    i32 1, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry
  %15 = load i16, i16* %cyan, align 2, !tbaa !66
  %conv4 = zext i16 %15 to i32
  %16 = load i16, i16* %magenta, align 2, !tbaa !66
  %conv5 = zext i16 %16 to i32
  %or = or i32 %conv4, %conv5
  %17 = load i16, i16* %yellow, align 2, !tbaa !66
  %conv6 = zext i16 %17 to i32
  %or7 = or i32 %or, %conv6
  %18 = load i16, i16* %black, align 2, !tbaa !66
  %conv8 = zext i16 %18 to i32
  %or9 = or i32 %or7, %conv8
  %cmp = icmp sgt i32 %or9, 32767
  %cond = select i1 %cmp, i64 1, i64 0
  store i64 %cond, i64* %color, align 8, !tbaa !65
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %19 = bitcast i32* %nbits to i8*
  call void @llvm.lifetime.start(i64 4, i8* %19) #2
  %20 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %color_info11 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %20, i32 0, i32 11
  %depth12 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info11, i32 0, i32 3
  %21 = load i16, i16* %depth12, align 2, !tbaa !64
  %conv13 = zext i16 %21 to i32
  store i32 %conv13, i32* %nbits, align 4, !tbaa !23
  %22 = load i16, i16* %cyan, align 2, !tbaa !66
  %conv14 = zext i16 %22 to i32
  %23 = load i16, i16* %magenta, align 2, !tbaa !66
  %conv15 = zext i16 %23 to i32
  %cmp16 = icmp eq i32 %conv14, %conv15
  br i1 %cmp16, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %sw.default
  %24 = load i16, i16* %magenta, align 2, !tbaa !66
  %conv18 = zext i16 %24 to i32
  %25 = load i16, i16* %yellow, align 2, !tbaa !66
  %conv19 = zext i16 %25 to i32
  %cmp20 = icmp eq i32 %conv18, %conv19
  br i1 %cmp20, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %26 = bitcast float* %bpart to i8*
  call void @llvm.lifetime.start(i64 4, i8* %26) #2
  %27 = load i16, i16* %cyan, align 2, !tbaa !66
  %conv22 = uitofp i16 %27 to float
  %conv23 = fpext float %conv22 to double
  %mul = fmul double %conv23, 3.000000e-01
  %28 = load i16, i16* %magenta, align 2, !tbaa !66
  %conv24 = uitofp i16 %28 to float
  %conv25 = fpext float %conv24 to double
  %mul26 = fmul double %conv25, 5.900000e-01
  %add = fadd double %mul, %mul26
  %29 = load i16, i16* %yellow, align 2, !tbaa !66
  %conv27 = uitofp i16 %29 to float
  %conv28 = fpext float %conv27 to double
  %mul29 = fmul double %conv28, 1.100000e-01
  %add30 = fadd double %add, %mul29
  %30 = load i16, i16* %black, align 2, !tbaa !66
  %conv31 = uitofp i16 %30 to float
  %conv32 = fpext float %conv31 to double
  %add33 = fadd double %add30, %conv32
  %conv34 = fptrunc double %add33 to float
  store float %conv34, float* %bpart, align 4, !tbaa !42
  store i16 0, i16* %yellow, align 2, !tbaa !66
  store i16 0, i16* %magenta, align 2, !tbaa !66
  store i16 0, i16* %cyan, align 2, !tbaa !66
  %31 = load float, float* %bpart, align 4, !tbaa !42
  %cmp35 = fcmp ogt float %31, 6.553500e+04
  br i1 %cmp35, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %32 = load float, float* %bpart, align 4, !tbaa !42
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond37 = phi float [ 6.553500e+04, %cond.true ], [ %32, %cond.false ]
  %conv38 = fptoui float %cond37 to i64
  %conv39 = trunc i64 %conv38 to i16
  store i16 %conv39, i16* %black, align 2, !tbaa !66
  %33 = bitcast float* %bpart to i8*
  call void @llvm.lifetime.end(i64 4, i8* %33) #2
  br label %if.end

if.end:                                           ; preds = %cond.end, %land.lhs.true, %sw.default
  %34 = load i16, i16* %black, align 2, !tbaa !66
  %conv40 = zext i16 %34 to i32
  %35 = load i32, i32* %nbits, align 4, !tbaa !23
  %shr = ashr i32 %35, 2
  %conv41 = sext i32 %shr to i64
  %sub = sub i64 16, %conv41
  %sh_prom = trunc i64 %sub to i32
  %shr42 = ashr i32 %conv40, %sh_prom
  %36 = load i32, i32* %nbits, align 4, !tbaa !23
  %shr43 = ashr i32 %36, 2
  %mul44 = mul nsw i32 3, %shr43
  %shl = shl i32 %shr42, %mul44
  %37 = load i16, i16* %cyan, align 2, !tbaa !66
  %conv45 = zext i16 %37 to i32
  %38 = load i32, i32* %nbits, align 4, !tbaa !23
  %shr46 = ashr i32 %38, 2
  %conv47 = sext i32 %shr46 to i64
  %sub48 = sub i64 16, %conv47
  %sh_prom49 = trunc i64 %sub48 to i32
  %shr50 = ashr i32 %conv45, %sh_prom49
  %39 = load i32, i32* %nbits, align 4, !tbaa !23
  %shr51 = ashr i32 %39, 2
  %mul52 = mul nsw i32 2, %shr51
  %shl53 = shl i32 %shr50, %mul52
  %or54 = or i32 %shl, %shl53
  %40 = load i16, i16* %magenta, align 2, !tbaa !66
  %conv55 = zext i16 %40 to i32
  %41 = load i32, i32* %nbits, align 4, !tbaa !23
  %shr56 = ashr i32 %41, 2
  %conv57 = sext i32 %shr56 to i64
  %sub58 = sub i64 16, %conv57
  %sh_prom59 = trunc i64 %sub58 to i32
  %shr60 = ashr i32 %conv55, %sh_prom59
  %42 = load i32, i32* %nbits, align 4, !tbaa !23
  %shr61 = ashr i32 %42, 2
  %shl62 = shl i32 %shr60, %shr61
  %or63 = or i32 %or54, %shl62
  %43 = load i16, i16* %yellow, align 2, !tbaa !66
  %conv64 = zext i16 %43 to i32
  %44 = load i32, i32* %nbits, align 4, !tbaa !23
  %shr65 = ashr i32 %44, 2
  %conv66 = sext i32 %shr65 to i64
  %sub67 = sub i64 16, %conv66
  %sh_prom68 = trunc i64 %sub67 to i32
  %shr69 = ashr i32 %conv64, %sh_prom68
  %or70 = or i32 %or63, %shr69
  %conv71 = sext i32 %or70 to i64
  store i64 %conv71, i64* %color, align 8, !tbaa !65
  %45 = bitcast i32* %nbits to i8*
  call void @llvm.lifetime.end(i64 4, i8* %45) #2
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end, %sw.bb
  %46 = load i64, i64* %color, align 8, !tbaa !65
  %47 = bitcast i16* %black to i8*
  call void @llvm.lifetime.end(i64 2, i8* %47) #2
  %48 = bitcast i16* %yellow to i8*
  call void @llvm.lifetime.end(i64 2, i8* %48) #2
  %49 = bitcast i16* %magenta to i8*
  call void @llvm.lifetime.end(i64 2, i8* %49) #2
  %50 = bitcast i16* %cyan to i8*
  call void @llvm.lifetime.end(i64 2, i8* %50) #2
  %51 = bitcast i64* %color to i8*
  call void @llvm.lifetime.end(i64 8, i8* %51) #2
  ret i64 %46
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define internal i32 @cdj_set_bpp(%struct.gx_device_s* %pdev, i32 %bpp, i32 %ccomps) #1 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_s*, align 8
  %bpp.addr = alloca i32, align 4
  %ccomps.addr = alloca i32, align 4
  %ci = alloca %struct.gx_device_color_info_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %pdev, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  store i32 %bpp, i32* %bpp.addr, align 4, !tbaa !23
  store i32 %ccomps, i32* %ccomps.addr, align 4, !tbaa !23
  %0 = bitcast %struct.gx_device_color_info_s** %ci to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %1, i32 0, i32 11
  store %struct.gx_device_color_info_s* %color_info, %struct.gx_device_color_info_s** %ci, align 8, !tbaa !1
  %2 = load i32, i32* %ccomps.addr, align 4, !tbaa !23
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %land.lhs.true, label %if.end.8

land.lhs.true:                                    ; preds = %entry
  %3 = load i32, i32* %bpp.addr, align 4, !tbaa !23
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.then, label %if.end.8

if.then:                                          ; preds = %land.lhs.true
  %4 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %5 = bitcast %struct.gx_device_s* %4 to %struct.gx_device_colour_prn*
  %cmyk = getelementptr inbounds %struct.gx_device_colour_prn, %struct.gx_device_colour_prn* %5, i32 0, i32 68
  %6 = load i32, i32* %cmyk, align 4, !tbaa !72
  %tobool1 = icmp ne i32 %6, 0
  br i1 %tobool1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %7 = load i32, i32* %ccomps.addr, align 4, !tbaa !23
  switch i32 %7, label %sw.default [
    i32 1, label %sw.bb
    i32 3, label %sw.bb.3
    i32 4, label %sw.bb.4
  ]

sw.default:                                       ; preds = %if.then.2
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb:                                            ; preds = %if.then.2
  store i32 1, i32* %bpp.addr, align 4, !tbaa !23
  br label %sw.epilog.7

sw.bb.3:                                          ; preds = %if.then.2
  store i32 24, i32* %bpp.addr, align 4, !tbaa !23
  br label %sw.epilog.7

sw.bb.4:                                          ; preds = %if.then.2
  %8 = load %struct.gx_device_color_info_s*, %struct.gx_device_color_info_s** %ci, align 8, !tbaa !1
  %depth = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %8, i32 0, i32 3
  %9 = load i16, i16* %depth, align 2, !tbaa !74
  %conv = zext i16 %9 to i32
  switch i32 %conv, label %sw.default.6 [
    i32 8, label %sw.bb.5
    i32 16, label %sw.bb.5
    i32 24, label %sw.bb.5
    i32 32, label %sw.bb.5
  ]

sw.bb.5:                                          ; preds = %sw.bb.4, %sw.bb.4, %sw.bb.4, %sw.bb.4
  br label %sw.epilog

sw.default.6:                                     ; preds = %sw.bb.4
  %10 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %11 = bitcast %struct.gx_device_s* %10 to %struct.gx_device_colour_prn*
  %default_depth = getelementptr inbounds %struct.gx_device_colour_prn, %struct.gx_device_colour_prn* %11, i32 0, i32 69
  %12 = load i32, i32* %default_depth, align 4, !tbaa !75
  store i32 %12, i32* %bpp.addr, align 4, !tbaa !23
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default.6, %sw.bb.5
  br label %sw.epilog.7

sw.epilog.7:                                      ; preds = %sw.epilog, %sw.bb.3, %sw.bb
  br label %if.end

if.end:                                           ; preds = %sw.epilog.7, %if.then
  br label %if.end.8

if.end.8:                                         ; preds = %if.end, %land.lhs.true, %entry
  %13 = load i32, i32* %bpp.addr, align 4, !tbaa !23
  %cmp9 = icmp eq i32 %13, 0
  br i1 %cmp9, label %if.then.11, label %if.end.14

if.then.11:                                       ; preds = %if.end.8
  %14 = load %struct.gx_device_color_info_s*, %struct.gx_device_color_info_s** %ci, align 8, !tbaa !1
  %depth12 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %14, i32 0, i32 3
  %15 = load i16, i16* %depth12, align 2, !tbaa !74
  %conv13 = zext i16 %15 to i32
  store i32 %conv13, i32* %bpp.addr, align 4, !tbaa !23
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.11, %if.end.8
  %16 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %17 = bitcast %struct.gx_device_s* %16 to %struct.gx_device_colour_prn*
  %cmyk15 = getelementptr inbounds %struct.gx_device_colour_prn, %struct.gx_device_colour_prn* %17, i32 0, i32 68
  %18 = load i32, i32* %cmyk15, align 4, !tbaa !72
  %cmp16 = icmp slt i32 %18, 0
  br i1 %cmp16, label %if.then.18, label %if.end.24

if.then.18:                                       ; preds = %if.end.14
  %19 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %19, i32 0, i32 42
  %map_cmyk_color = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 15
  store i64 (%struct.gx_device_s*, i16*)* @gdev_cmyk_map_cmyk_color, i64 (%struct.gx_device_s*, i16*)** %map_cmyk_color, align 8, !tbaa !76
  %20 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %procs19 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %20, i32 0, i32 42
  %map_rgb_color = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs19, i32 0, i32 5
  store i64 (%struct.gx_device_s*, i16*)* null, i64 (%struct.gx_device_s*, i16*)** %map_rgb_color, align 8, !tbaa !77
  %21 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %procs20 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %21, i32 0, i32 42
  %map_color_rgb = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs20, i32 0, i32 6
  store i32 (%struct.gx_device_s*, i64, i16*)* @gdev_cmyk_map_color_rgb, i32 (%struct.gx_device_s*, i64, i16*)** %map_color_rgb, align 8, !tbaa !78
  %22 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %is_open = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %22, i32 0, i32 9
  %23 = load i32, i32* %is_open, align 4, !tbaa !79
  %tobool21 = icmp ne i32 %23, 0
  br i1 %tobool21, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %if.then.18
  %24 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %call = call i32 @gs_closedevice(%struct.gx_device_s* %24) #6
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.22, %if.then.18
  br label %if.end.24

if.end.24:                                        ; preds = %if.end.23, %if.end.14
  %25 = load i32, i32* %bpp.addr, align 4, !tbaa !23
  switch i32 %25, label %sw.default.106 [
    i32 16, label %sw.bb.25
    i32 32, label %sw.bb.25
    i32 24, label %sw.bb.35
    i32 8, label %sw.bb.51
    i32 1, label %sw.bb.77
    i32 3, label %sw.bb.101
  ]

sw.bb.25:                                         ; preds = %if.end.24, %if.end.24
  %26 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %27 = bitcast %struct.gx_device_s* %26 to %struct.gx_device_colour_prn*
  %cmyk26 = getelementptr inbounds %struct.gx_device_colour_prn, %struct.gx_device_colour_prn* %27, i32 0, i32 68
  %28 = load i32, i32* %cmyk26, align 4, !tbaa !72
  %tobool27 = icmp ne i32 %28, 0
  br i1 %tobool27, label %land.lhs.true.28, label %if.end.34

land.lhs.true.28:                                 ; preds = %sw.bb.25
  %29 = load i32, i32* %ccomps.addr, align 4, !tbaa !23
  %tobool29 = icmp ne i32 %29, 0
  br i1 %tobool29, label %land.lhs.true.30, label %if.end.34

land.lhs.true.30:                                 ; preds = %land.lhs.true.28
  %30 = load i32, i32* %ccomps.addr, align 4, !tbaa !23
  %cmp31 = icmp ne i32 %30, 4
  br i1 %cmp31, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %land.lhs.true.30
  br label %bppe

if.end.34:                                        ; preds = %land.lhs.true.30, %land.lhs.true.28, %sw.bb.25
  br label %sw.epilog.107

sw.bb.35:                                         ; preds = %if.end.24
  %31 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %32 = bitcast %struct.gx_device_s* %31 to %struct.gx_device_colour_prn*
  %cmyk36 = getelementptr inbounds %struct.gx_device_colour_prn, %struct.gx_device_colour_prn* %32, i32 0, i32 68
  %33 = load i32, i32* %cmyk36, align 4, !tbaa !72
  %tobool37 = icmp ne i32 %33, 0
  br i1 %tobool37, label %lor.lhs.false, label %if.then.43

lor.lhs.false:                                    ; preds = %sw.bb.35
  %34 = load i32, i32* %ccomps.addr, align 4, !tbaa !23
  %cmp38 = icmp eq i32 %34, 0
  br i1 %cmp38, label %if.then.43, label %lor.lhs.false.40

lor.lhs.false.40:                                 ; preds = %lor.lhs.false
  %35 = load i32, i32* %ccomps.addr, align 4, !tbaa !23
  %cmp41 = icmp eq i32 %35, 4
  br i1 %cmp41, label %if.then.43, label %if.else

if.then.43:                                       ; preds = %lor.lhs.false.40, %lor.lhs.false, %sw.bb.35
  br label %sw.epilog.107

if.else:                                          ; preds = %lor.lhs.false.40
  %36 = load i32, i32* %ccomps.addr, align 4, !tbaa !23
  %cmp44 = icmp eq i32 %36, 1
  br i1 %cmp44, label %if.then.46, label %if.else.47

if.then.46:                                       ; preds = %if.else
  br label %bppe

if.else.47:                                       ; preds = %if.else
  %37 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %38 = bitcast %struct.gx_device_s* %37 to %struct.gx_device_colour_prn*
  %cmyk48 = getelementptr inbounds %struct.gx_device_colour_prn, %struct.gx_device_colour_prn* %38, i32 0, i32 68
  store i32 -1, i32* %cmyk48, align 4, !tbaa !72
  br label %if.end.49

if.end.49:                                        ; preds = %if.else.47
  br label %if.end.50

if.end.50:                                        ; preds = %if.end.49
  br label %sw.epilog.107

sw.bb.51:                                         ; preds = %if.end.24
  %39 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %40 = bitcast %struct.gx_device_s* %39 to %struct.gx_device_colour_prn*
  %cmyk52 = getelementptr inbounds %struct.gx_device_colour_prn, %struct.gx_device_colour_prn* %40, i32 0, i32 68
  %41 = load i32, i32* %cmyk52, align 4, !tbaa !72
  %tobool53 = icmp ne i32 %41, 0
  br i1 %tobool53, label %if.then.54, label %if.else.75

if.then.54:                                       ; preds = %sw.bb.51
  %42 = load i32, i32* %ccomps.addr, align 4, !tbaa !23
  %tobool55 = icmp ne i32 %42, 0
  br i1 %tobool55, label %if.then.56, label %if.end.70

if.then.56:                                       ; preds = %if.then.54
  %43 = load i32, i32* %ccomps.addr, align 4, !tbaa !23
  %cmp57 = icmp eq i32 %43, 3
  br i1 %cmp57, label %if.then.59, label %if.else.61

if.then.59:                                       ; preds = %if.then.56
  %44 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %45 = bitcast %struct.gx_device_s* %44 to %struct.gx_device_colour_prn*
  %cmyk60 = getelementptr inbounds %struct.gx_device_colour_prn, %struct.gx_device_colour_prn* %45, i32 0, i32 68
  store i32 -1, i32* %cmyk60, align 4, !tbaa !72
  store i32 3, i32* %bpp.addr, align 4, !tbaa !23
  br label %if.end.69

if.else.61:                                       ; preds = %if.then.56
  %46 = load i32, i32* %ccomps.addr, align 4, !tbaa !23
  %cmp62 = icmp ne i32 %46, 1
  br i1 %cmp62, label %land.lhs.true.64, label %if.end.68

land.lhs.true.64:                                 ; preds = %if.else.61
  %47 = load i32, i32* %ccomps.addr, align 4, !tbaa !23
  %cmp65 = icmp ne i32 %47, 4
  br i1 %cmp65, label %if.then.67, label %if.end.68

if.then.67:                                       ; preds = %land.lhs.true.64
  br label %bppe

if.end.68:                                        ; preds = %land.lhs.true.64, %if.else.61
  br label %if.end.69

if.end.69:                                        ; preds = %if.end.68, %if.then.59
  br label %if.end.70

if.end.70:                                        ; preds = %if.end.69, %if.then.54
  %48 = load i32, i32* %ccomps.addr, align 4, !tbaa !23
  %cmp71 = icmp ne i32 %48, 1
  br i1 %cmp71, label %if.then.73, label %if.end.74

if.then.73:                                       ; preds = %if.end.70
  br label %sw.epilog.107

if.end.74:                                        ; preds = %if.end.70
  br label %if.end.76

if.else.75:                                       ; preds = %sw.bb.51
  br label %sw.epilog.107

if.end.76:                                        ; preds = %if.end.74
  br label %sw.bb.77

sw.bb.77:                                         ; preds = %if.end.24, %if.end.76
  %49 = load i32, i32* %ccomps.addr, align 4, !tbaa !23
  %cmp78 = icmp ne i32 %49, 1
  br i1 %cmp78, label %if.then.80, label %if.end.81

if.then.80:                                       ; preds = %sw.bb.77
  br label %bppe

if.end.81:                                        ; preds = %sw.bb.77
  %50 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %51 = bitcast %struct.gx_device_s* %50 to %struct.gx_device_colour_prn*
  %cmyk82 = getelementptr inbounds %struct.gx_device_colour_prn, %struct.gx_device_colour_prn* %51, i32 0, i32 68
  %52 = load i32, i32* %cmyk82, align 4, !tbaa !72
  %tobool83 = icmp ne i32 %52, 0
  br i1 %tobool83, label %land.lhs.true.84, label %if.end.100

land.lhs.true.84:                                 ; preds = %if.end.81
  %53 = load i32, i32* %bpp.addr, align 4, !tbaa !23
  %54 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %color_info85 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %54, i32 0, i32 11
  %depth86 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info85, i32 0, i32 3
  %55 = load i16, i16* %depth86, align 2, !tbaa !64
  %conv87 = zext i16 %55 to i32
  %cmp88 = icmp ne i32 %53, %conv87
  br i1 %cmp88, label %if.then.90, label %if.end.100

if.then.90:                                       ; preds = %land.lhs.true.84
  %56 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %procs91 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %56, i32 0, i32 42
  %map_cmyk_color92 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs91, i32 0, i32 15
  store i64 (%struct.gx_device_s*, i16*)* null, i64 (%struct.gx_device_s*, i16*)** %map_cmyk_color92, align 8, !tbaa !76
  %57 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %procs93 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %57, i32 0, i32 42
  %map_rgb_color94 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs93, i32 0, i32 5
  store i64 (%struct.gx_device_s*, i16*)* @gdev_cmyk_map_rgb_color, i64 (%struct.gx_device_s*, i16*)** %map_rgb_color94, align 8, !tbaa !77
  %58 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %is_open95 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %58, i32 0, i32 9
  %59 = load i32, i32* %is_open95, align 4, !tbaa !79
  %tobool96 = icmp ne i32 %59, 0
  br i1 %tobool96, label %if.then.97, label %if.end.99

if.then.97:                                       ; preds = %if.then.90
  %60 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %call98 = call i32 @gs_closedevice(%struct.gx_device_s* %60) #6
  br label %if.end.99

if.end.99:                                        ; preds = %if.then.97, %if.then.90
  br label %if.end.100

if.end.100:                                       ; preds = %if.end.99, %land.lhs.true.84, %if.end.81
  br label %sw.epilog.107

sw.bb.101:                                        ; preds = %if.end.24
  %61 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %62 = bitcast %struct.gx_device_s* %61 to %struct.gx_device_colour_prn*
  %cmyk102 = getelementptr inbounds %struct.gx_device_colour_prn, %struct.gx_device_colour_prn* %62, i32 0, i32 68
  %63 = load i32, i32* %cmyk102, align 4, !tbaa !72
  %tobool103 = icmp ne i32 %63, 0
  br i1 %tobool103, label %if.end.105, label %if.then.104

if.then.104:                                      ; preds = %sw.bb.101
  br label %sw.epilog.107

if.end.105:                                       ; preds = %sw.bb.101
  br label %sw.default.106

sw.default.106:                                   ; preds = %if.end.24, %if.end.105
  br label %bppe

bppe:                                             ; preds = %sw.default.106, %if.then.80, %if.then.67, %if.then.46, %if.then.33
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.epilog.107:                                    ; preds = %if.then.104, %if.end.100, %if.else.75, %if.then.73, %if.end.50, %if.then.43, %if.end.34
  %64 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %65 = bitcast %struct.gx_device_s* %64 to %struct.gx_device_colour_prn*
  %cmyk108 = getelementptr inbounds %struct.gx_device_colour_prn, %struct.gx_device_colour_prn* %65, i32 0, i32 68
  %66 = load i32, i32* %cmyk108, align 4, !tbaa !72
  %cmp109 = icmp eq i32 %66, -1
  br i1 %cmp109, label %if.then.111, label %if.end.123

if.then.111:                                      ; preds = %sw.epilog.107
  %67 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %procs112 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %67, i32 0, i32 42
  %map_cmyk_color113 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs112, i32 0, i32 15
  store i64 (%struct.gx_device_s*, i16*)* null, i64 (%struct.gx_device_s*, i16*)** %map_cmyk_color113, align 8, !tbaa !76
  %68 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %procs114 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %68, i32 0, i32 42
  %map_rgb_color115 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs114, i32 0, i32 5
  store i64 (%struct.gx_device_s*, i16*)* @gdev_pcl_map_rgb_color, i64 (%struct.gx_device_s*, i16*)** %map_rgb_color115, align 8, !tbaa !77
  %69 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %procs116 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %69, i32 0, i32 42
  %map_color_rgb117 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs116, i32 0, i32 6
  store i32 (%struct.gx_device_s*, i64, i16*)* @gdev_pcl_map_color_rgb, i32 (%struct.gx_device_s*, i64, i16*)** %map_color_rgb117, align 8, !tbaa !78
  %70 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %is_open118 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %70, i32 0, i32 9
  %71 = load i32, i32* %is_open118, align 4, !tbaa !79
  %tobool119 = icmp ne i32 %71, 0
  br i1 %tobool119, label %if.then.120, label %if.end.122

if.then.120:                                      ; preds = %if.then.111
  %72 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %call121 = call i32 @gs_closedevice(%struct.gx_device_s* %72) #6
  br label %if.end.122

if.end.122:                                       ; preds = %if.then.120, %if.then.111
  br label %if.end.123

if.end.123:                                       ; preds = %if.end.122, %sw.epilog.107
  %73 = load i32, i32* %ccomps.addr, align 4, !tbaa !23
  switch i32 %73, label %sw.default.161 [
    i32 0, label %sw.epilog.162
    i32 1, label %sw.bb.124
    i32 4, label %sw.bb.132
    i32 3, label %sw.bb.141
  ]

sw.bb.124:                                        ; preds = %if.end.123
  %74 = load i32, i32* %bpp.addr, align 4, !tbaa !23
  %cmp125 = icmp ne i32 %74, 1
  br i1 %cmp125, label %land.lhs.true.127, label %if.end.131

land.lhs.true.127:                                ; preds = %sw.bb.124
  %75 = load i32, i32* %bpp.addr, align 4, !tbaa !23
  %cmp128 = icmp ne i32 %75, 8
  br i1 %cmp128, label %if.then.130, label %if.end.131

if.then.130:                                      ; preds = %land.lhs.true.127
  br label %cce

if.end.131:                                       ; preds = %land.lhs.true.127, %sw.bb.124
  br label %sw.epilog.162

sw.bb.132:                                        ; preds = %if.end.123
  %76 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %77 = bitcast %struct.gx_device_s* %76 to %struct.gx_device_colour_prn*
  %cmyk133 = getelementptr inbounds %struct.gx_device_colour_prn, %struct.gx_device_colour_prn* %77, i32 0, i32 68
  %78 = load i32, i32* %cmyk133, align 4, !tbaa !72
  %tobool134 = icmp ne i32 %78, 0
  br i1 %tobool134, label %if.then.135, label %if.end.140

if.then.135:                                      ; preds = %sw.bb.132
  %79 = load i32, i32* %bpp.addr, align 4, !tbaa !23
  %cmp136 = icmp sge i32 %79, 8
  br i1 %cmp136, label %if.then.138, label %if.end.139

if.then.138:                                      ; preds = %if.then.135
  br label %sw.epilog.162

if.end.139:                                       ; preds = %if.then.135
  br label %if.end.140

if.end.140:                                       ; preds = %if.end.139, %sw.bb.132
  br label %sw.bb.141

sw.bb.141:                                        ; preds = %if.end.123, %if.end.140
  %80 = load i32, i32* %bpp.addr, align 4, !tbaa !23
  %cmp142 = icmp eq i32 %80, 1
  br i1 %cmp142, label %if.then.159, label %lor.lhs.false.144

lor.lhs.false.144:                                ; preds = %sw.bb.141
  %81 = load i32, i32* %bpp.addr, align 4, !tbaa !23
  %cmp145 = icmp eq i32 %81, 3
  br i1 %cmp145, label %if.then.159, label %lor.lhs.false.147

lor.lhs.false.147:                                ; preds = %lor.lhs.false.144
  %82 = load i32, i32* %bpp.addr, align 4, !tbaa !23
  %cmp148 = icmp eq i32 %82, 8
  br i1 %cmp148, label %if.then.159, label %lor.lhs.false.150

lor.lhs.false.150:                                ; preds = %lor.lhs.false.147
  %83 = load i32, i32* %bpp.addr, align 4, !tbaa !23
  %cmp151 = icmp eq i32 %83, 16
  br i1 %cmp151, label %if.then.159, label %lor.lhs.false.153

lor.lhs.false.153:                                ; preds = %lor.lhs.false.150
  %84 = load i32, i32* %bpp.addr, align 4, !tbaa !23
  %cmp154 = icmp eq i32 %84, 24
  br i1 %cmp154, label %if.then.159, label %lor.lhs.false.156

lor.lhs.false.156:                                ; preds = %lor.lhs.false.153
  %85 = load i32, i32* %bpp.addr, align 4, !tbaa !23
  %cmp157 = icmp eq i32 %85, 32
  br i1 %cmp157, label %if.then.159, label %if.end.160

if.then.159:                                      ; preds = %lor.lhs.false.156, %lor.lhs.false.153, %lor.lhs.false.150, %lor.lhs.false.147, %lor.lhs.false.144, %sw.bb.141
  br label %sw.epilog.162

if.end.160:                                       ; preds = %lor.lhs.false.156
  br label %cce

cce:                                              ; preds = %if.end.160, %if.then.130
  br label %sw.default.161

sw.default.161:                                   ; preds = %if.end.123, %cce
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.epilog.162:                                    ; preds = %if.then.159, %if.then.138, %if.end.131, %if.end.123
  %86 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %87 = bitcast %struct.gx_device_s* %86 to %struct.gx_device_colour_prn*
  %cmyk163 = getelementptr inbounds %struct.gx_device_colour_prn, %struct.gx_device_colour_prn* %87, i32 0, i32 68
  %88 = load i32, i32* %cmyk163, align 4, !tbaa !72
  %tobool164 = icmp ne i32 %88, 0
  br i1 %tobool164, label %if.then.165, label %if.else.234

if.then.165:                                      ; preds = %sw.epilog.162
  %89 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %90 = bitcast %struct.gx_device_s* %89 to %struct.gx_device_colour_prn*
  %cmyk166 = getelementptr inbounds %struct.gx_device_colour_prn, %struct.gx_device_colour_prn* %90, i32 0, i32 68
  %91 = load i32, i32* %cmyk166, align 4, !tbaa !72
  %cmp167 = icmp sgt i32 %91, 0
  br i1 %cmp167, label %if.then.169, label %if.else.174

if.then.169:                                      ; preds = %if.then.165
  %92 = load i32, i32* %ccomps.addr, align 4, !tbaa !23
  %tobool170 = icmp ne i32 %92, 0
  br i1 %tobool170, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.169
  %93 = load i32, i32* %ccomps.addr, align 4, !tbaa !23
  br label %cond.end

cond.false:                                       ; preds = %if.then.169
  %94 = load i32, i32* %bpp.addr, align 4, !tbaa !23
  %cmp171 = icmp slt i32 %94, 8
  %cond = select i1 %cmp171, i32 1, i32 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond173 = phi i32 [ %93, %cond.true ], [ %cond, %cond.false ]
  %95 = load %struct.gx_device_color_info_s*, %struct.gx_device_color_info_s** %ci, align 8, !tbaa !1
  %num_components = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %95, i32 0, i32 1
  store i32 %cond173, i32* %num_components, align 4, !tbaa !80
  br label %if.end.184

if.else.174:                                      ; preds = %if.then.165
  %96 = load i32, i32* %ccomps.addr, align 4, !tbaa !23
  %tobool175 = icmp ne i32 %96, 0
  br i1 %tobool175, label %cond.true.176, label %cond.false.177

cond.true.176:                                    ; preds = %if.else.174
  %97 = load i32, i32* %ccomps.addr, align 4, !tbaa !23
  br label %cond.end.181

cond.false.177:                                   ; preds = %if.else.174
  %98 = load i32, i32* %bpp.addr, align 4, !tbaa !23
  %cmp178 = icmp slt i32 %98, 8
  %cond180 = select i1 %cmp178, i32 1, i32 3
  br label %cond.end.181

cond.end.181:                                     ; preds = %cond.false.177, %cond.true.176
  %cond182 = phi i32 [ %97, %cond.true.176 ], [ %cond180, %cond.false.177 ]
  %99 = load %struct.gx_device_color_info_s*, %struct.gx_device_color_info_s** %ci, align 8, !tbaa !1
  %num_components183 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %99, i32 0, i32 1
  store i32 %cond182, i32* %num_components183, align 4, !tbaa !80
  br label %if.end.184

if.end.184:                                       ; preds = %cond.end.181, %cond.end
  %100 = load i32, i32* %bpp.addr, align 4, !tbaa !23
  %cmp185 = icmp ne i32 %100, 1
  br i1 %cmp185, label %land.lhs.true.187, label %if.end.198

land.lhs.true.187:                                ; preds = %if.end.184
  %101 = load %struct.gx_device_color_info_s*, %struct.gx_device_color_info_s** %ci, align 8, !tbaa !1
  %num_components188 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %101, i32 0, i32 1
  %102 = load i32, i32* %num_components188, align 4, !tbaa !80
  %cmp189 = icmp eq i32 %102, 1
  br i1 %cmp189, label %if.then.191, label %if.end.198

if.then.191:                                      ; preds = %land.lhs.true.187
  %103 = load i32, i32* %bpp.addr, align 4, !tbaa !23
  %cmp192 = icmp slt i32 %103, 8
  br i1 %cmp192, label %cond.true.194, label %cond.false.195

cond.true.194:                                    ; preds = %if.then.191
  br label %cond.end.196

cond.false.195:                                   ; preds = %if.then.191
  %104 = load i32, i32* %bpp.addr, align 4, !tbaa !23
  br label %cond.end.196

cond.end.196:                                     ; preds = %cond.false.195, %cond.true.194
  %cond197 = phi i32 [ 8, %cond.true.194 ], [ %104, %cond.false.195 ]
  store i32 %cond197, i32* %bpp.addr, align 4, !tbaa !23
  br label %if.end.198

if.end.198:                                       ; preds = %cond.end.196, %land.lhs.true.187, %if.end.184
  %105 = load i32, i32* %bpp.addr, align 4, !tbaa !23
  %shr = ashr i32 %105, 2
  %shl = shl i32 1, %shr
  %sub = sub nsw i32 %shl, 1
  %106 = load %struct.gx_device_color_info_s*, %struct.gx_device_color_info_s** %ci, align 8, !tbaa !1
  %max_color = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %106, i32 0, i32 6
  store i32 %sub, i32* %max_color, align 4, !tbaa !81
  %107 = load i32, i32* %bpp.addr, align 4, !tbaa !23
  %cmp199 = icmp sge i32 %107, 8
  %cond201 = select i1 %cmp199, i32 255, i32 1
  %108 = load %struct.gx_device_color_info_s*, %struct.gx_device_color_info_s** %ci, align 8, !tbaa !1
  %max_gray = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %108, i32 0, i32 5
  store i32 %cond201, i32* %max_gray, align 4, !tbaa !82
  %109 = load %struct.gx_device_color_info_s*, %struct.gx_device_color_info_s** %ci, align 8, !tbaa !1
  %num_components202 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %109, i32 0, i32 1
  %110 = load i32, i32* %num_components202, align 4, !tbaa !80
  %cmp203 = icmp eq i32 %110, 1
  br i1 %cmp203, label %if.then.205, label %if.else.218

if.then.205:                                      ; preds = %if.end.198
  %111 = load i32, i32* %bpp.addr, align 4, !tbaa !23
  %cmp206 = icmp sge i32 %111, 8
  %cond208 = select i1 %cmp206, i32 5, i32 2
  %112 = load %struct.gx_device_color_info_s*, %struct.gx_device_color_info_s** %ci, align 8, !tbaa !1
  %dither_grays = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %112, i32 0, i32 7
  store i32 %cond208, i32* %dither_grays, align 4, !tbaa !83
  %113 = load i32, i32* %bpp.addr, align 4, !tbaa !23
  %cmp209 = icmp sge i32 %113, 8
  br i1 %cmp209, label %cond.true.211, label %cond.false.212

cond.true.211:                                    ; preds = %if.then.205
  br label %cond.end.216

cond.false.212:                                   ; preds = %if.then.205
  %114 = load i32, i32* %bpp.addr, align 4, !tbaa !23
  %cmp213 = icmp sgt i32 %114, 1
  %cond215 = select i1 %cmp213, i32 2, i32 0
  br label %cond.end.216

cond.end.216:                                     ; preds = %cond.false.212, %cond.true.211
  %cond217 = phi i32 [ 5, %cond.true.211 ], [ %cond215, %cond.false.212 ]
  %115 = load %struct.gx_device_color_info_s*, %struct.gx_device_color_info_s** %ci, align 8, !tbaa !1
  %dither_colors = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %115, i32 0, i32 8
  store i32 %cond217, i32* %dither_colors, align 4, !tbaa !84
  br label %if.end.233

if.else.218:                                      ; preds = %if.end.198
  %116 = load i32, i32* %bpp.addr, align 4, !tbaa !23
  %cmp219 = icmp sgt i32 %116, 8
  %cond221 = select i1 %cmp219, i32 5, i32 2
  %117 = load %struct.gx_device_color_info_s*, %struct.gx_device_color_info_s** %ci, align 8, !tbaa !1
  %dither_grays222 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %117, i32 0, i32 7
  store i32 %cond221, i32* %dither_grays222, align 4, !tbaa !83
  %118 = load i32, i32* %bpp.addr, align 4, !tbaa !23
  %cmp223 = icmp sgt i32 %118, 8
  br i1 %cmp223, label %cond.true.225, label %cond.false.226

cond.true.225:                                    ; preds = %if.else.218
  br label %cond.end.230

cond.false.226:                                   ; preds = %if.else.218
  %119 = load i32, i32* %bpp.addr, align 4, !tbaa !23
  %cmp227 = icmp sgt i32 %119, 1
  %cond229 = select i1 %cmp227, i32 2, i32 0
  br label %cond.end.230

cond.end.230:                                     ; preds = %cond.false.226, %cond.true.225
  %cond231 = phi i32 [ 5, %cond.true.225 ], [ %cond229, %cond.false.226 ]
  %120 = load %struct.gx_device_color_info_s*, %struct.gx_device_color_info_s** %ci, align 8, !tbaa !1
  %dither_colors232 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %120, i32 0, i32 8
  store i32 %cond231, i32* %dither_colors232, align 4, !tbaa !84
  br label %if.end.233

if.end.233:                                       ; preds = %cond.end.230, %cond.end.216
  br label %if.end.269

if.else.234:                                      ; preds = %sw.epilog.162
  %121 = load i32, i32* %bpp.addr, align 4, !tbaa !23
  %cmp235 = icmp eq i32 %121, 1
  br i1 %cmp235, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.else.234
  %122 = load i32, i32* %bpp.addr, align 4, !tbaa !23
  %cmp237 = icmp eq i32 %122, 8
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.else.234
  %123 = phi i1 [ true, %if.else.234 ], [ %cmp237, %lor.rhs ]
  %cond239 = select i1 %123, i32 1, i32 3
  %124 = load %struct.gx_device_color_info_s*, %struct.gx_device_color_info_s** %ci, align 8, !tbaa !1
  %num_components240 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %124, i32 0, i32 1
  store i32 %cond239, i32* %num_components240, align 4, !tbaa !80
  %125 = load i32, i32* %bpp.addr, align 4, !tbaa !23
  %cmp241 = icmp sge i32 %125, 8
  br i1 %cmp241, label %cond.true.243, label %cond.false.244

cond.true.243:                                    ; preds = %lor.end
  br label %cond.end.248

cond.false.244:                                   ; preds = %lor.end
  %126 = load i32, i32* %bpp.addr, align 4, !tbaa !23
  %cmp245 = icmp sgt i32 %126, 1
  %cond247 = select i1 %cmp245, i32 1, i32 0
  br label %cond.end.248

cond.end.248:                                     ; preds = %cond.false.244, %cond.true.243
  %cond249 = phi i32 [ 255, %cond.true.243 ], [ %cond247, %cond.false.244 ]
  %127 = load %struct.gx_device_color_info_s*, %struct.gx_device_color_info_s** %ci, align 8, !tbaa !1
  %max_color250 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %127, i32 0, i32 6
  store i32 %cond249, i32* %max_color250, align 4, !tbaa !81
  %128 = load i32, i32* %bpp.addr, align 4, !tbaa !23
  %cmp251 = icmp sge i32 %128, 8
  %cond253 = select i1 %cmp251, i32 255, i32 1
  %129 = load %struct.gx_device_color_info_s*, %struct.gx_device_color_info_s** %ci, align 8, !tbaa !1
  %max_gray254 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %129, i32 0, i32 5
  store i32 %cond253, i32* %max_gray254, align 4, !tbaa !82
  %130 = load i32, i32* %bpp.addr, align 4, !tbaa !23
  %cmp255 = icmp sge i32 %130, 8
  %cond257 = select i1 %cmp255, i32 5, i32 2
  %131 = load %struct.gx_device_color_info_s*, %struct.gx_device_color_info_s** %ci, align 8, !tbaa !1
  %dither_grays258 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %131, i32 0, i32 7
  store i32 %cond257, i32* %dither_grays258, align 4, !tbaa !83
  %132 = load i32, i32* %bpp.addr, align 4, !tbaa !23
  %cmp259 = icmp sge i32 %132, 8
  br i1 %cmp259, label %cond.true.261, label %cond.false.262

cond.true.261:                                    ; preds = %cond.end.248
  br label %cond.end.266

cond.false.262:                                   ; preds = %cond.end.248
  %133 = load i32, i32* %bpp.addr, align 4, !tbaa !23
  %cmp263 = icmp sgt i32 %133, 1
  %cond265 = select i1 %cmp263, i32 2, i32 0
  br label %cond.end.266

cond.end.266:                                     ; preds = %cond.false.262, %cond.true.261
  %cond267 = phi i32 [ 5, %cond.true.261 ], [ %cond265, %cond.false.262 ]
  %134 = load %struct.gx_device_color_info_s*, %struct.gx_device_color_info_s** %ci, align 8, !tbaa !1
  %dither_colors268 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %134, i32 0, i32 8
  store i32 %cond267, i32* %dither_colors268, align 4, !tbaa !84
  br label %if.end.269

if.end.269:                                       ; preds = %cond.end.266, %if.end.233
  %135 = load i32, i32* %bpp.addr, align 4, !tbaa !23
  %cmp270 = icmp sgt i32 %135, 1
  br i1 %cmp270, label %land.lhs.true.272, label %cond.false.276

land.lhs.true.272:                                ; preds = %if.end.269
  %136 = load i32, i32* %bpp.addr, align 4, !tbaa !23
  %cmp273 = icmp slt i32 %136, 8
  br i1 %cmp273, label %cond.true.275, label %cond.false.276

cond.true.275:                                    ; preds = %land.lhs.true.272
  br label %cond.end.277

cond.false.276:                                   ; preds = %land.lhs.true.272, %if.end.269
  %137 = load i32, i32* %bpp.addr, align 4, !tbaa !23
  br label %cond.end.277

cond.end.277:                                     ; preds = %cond.false.276, %cond.true.275
  %cond278 = phi i32 [ 8, %cond.true.275 ], [ %137, %cond.false.276 ]
  %conv279 = trunc i32 %cond278 to i16
  %138 = load %struct.gx_device_color_info_s*, %struct.gx_device_color_info_s** %ci, align 8, !tbaa !1
  %depth280 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %138, i32 0, i32 3
  store i16 %conv279, i16* %depth280, align 2, !tbaa !74
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %cond.end.277, %sw.default.161, %bppe, %sw.default
  %139 = bitcast %struct.gx_device_color_info_s** %ci to i8*
  call void @llvm.lifetime.end(i64 8, i8* %139) #2
  %140 = load i32, i32* %retval
  ret i32 %140
}

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

declare void @gx_device_set_resolution(%struct.gx_device_s*, double, double) #0

declare i32 @gdev_pcl_paper_size(%struct.gx_device_s*) #0

declare void @gx_device_set_margins(%struct.gx_device_s*, float*, i32) #0

declare i32 @gdev_prn_open(%struct.gx_device_s*) #0

declare i32 @gs_closedevice(%struct.gx_device_s*) #0

; Function Attrs: nounwind uwtable
define internal i64 @gdev_cmyk_map_rgb_color(%struct.gx_device_s* %pdev, i16* %cv) #1 {
entry:
  %retval = alloca i64, align 8
  %pdev.addr = alloca %struct.gx_device_s*, align 8
  %cv.addr = alloca i16*, align 8
  %r = alloca i16, align 2
  %g = alloca i16, align 2
  %b = alloca i16, align 2
  %cleanup.dest.slot = alloca i32
  %c = alloca i16, align 2
  %m = alloca i16, align 2
  %y = alloca i16, align 2
  store %struct.gx_device_s* %pdev, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  store i16* %cv, i16** %cv.addr, align 8, !tbaa !1
  %0 = bitcast i16* %r to i8*
  call void @llvm.lifetime.start(i64 2, i8* %0) #2
  %1 = bitcast i16* %g to i8*
  call void @llvm.lifetime.start(i64 2, i8* %1) #2
  %2 = bitcast i16* %b to i8*
  call void @llvm.lifetime.start(i64 2, i8* %2) #2
  %3 = load i16*, i16** %cv.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %3, i64 0
  %4 = load i16, i16* %arrayidx, align 2, !tbaa !66
  store i16 %4, i16* %r, align 2, !tbaa !66
  %5 = load i16*, i16** %cv.addr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds i16, i16* %5, i64 1
  %6 = load i16, i16* %arrayidx1, align 2, !tbaa !66
  store i16 %6, i16* %g, align 2, !tbaa !66
  %7 = load i16*, i16** %cv.addr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds i16, i16* %7, i64 2
  %8 = load i16, i16* %arrayidx2, align 2, !tbaa !66
  store i16 %8, i16* %b, align 2, !tbaa !66
  %9 = load i16, i16* %r, align 2, !tbaa !66
  %conv = zext i16 %9 to i32
  %10 = load i16, i16* %g, align 2, !tbaa !66
  %conv3 = zext i16 %10 to i32
  %and = and i32 %conv, %conv3
  %11 = load i16, i16* %b, align 2, !tbaa !66
  %conv4 = zext i16 %11 to i32
  %and5 = and i32 %and, %conv4
  %mul = mul i32 %and5, 65281
  %add = add i32 %mul, 8388608
  %shr = lshr i32 %add, 24
  %conv6 = trunc i32 %shr to i16
  %conv7 = zext i16 %conv6 to i32
  %cmp = icmp eq i32 %conv7, 255
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i64 0, i64* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.39

if.else:                                          ; preds = %entry
  %12 = bitcast i16* %c to i8*
  call void @llvm.lifetime.start(i64 2, i8* %12) #2
  %13 = load i16, i16* %r, align 2, !tbaa !66
  %conv9 = zext i16 %13 to i32
  %sub = sub nsw i32 65535, %conv9
  %conv10 = trunc i32 %sub to i16
  store i16 %conv10, i16* %c, align 2, !tbaa !66
  %14 = bitcast i16* %m to i8*
  call void @llvm.lifetime.start(i64 2, i8* %14) #2
  %15 = load i16, i16* %g, align 2, !tbaa !66
  %conv11 = zext i16 %15 to i32
  %sub12 = sub nsw i32 65535, %conv11
  %conv13 = trunc i32 %sub12 to i16
  store i16 %conv13, i16* %m, align 2, !tbaa !66
  %16 = bitcast i16* %y to i8*
  call void @llvm.lifetime.start(i64 2, i8* %16) #2
  %17 = load i16, i16* %b, align 2, !tbaa !66
  %conv14 = zext i16 %17 to i32
  %sub15 = sub nsw i32 65535, %conv14
  %conv16 = trunc i32 %sub15 to i16
  store i16 %conv16, i16* %y, align 2, !tbaa !66
  %18 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %18, i32 0, i32 11
  %depth = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 3
  %19 = load i16, i16* %depth, align 2, !tbaa !64
  %conv17 = zext i16 %19 to i32
  switch i32 %conv17, label %sw.epilog [
    i32 1, label %sw.bb
    i32 8, label %sw.bb.24
  ]

sw.bb:                                            ; preds = %if.else
  %20 = load i16, i16* %c, align 2, !tbaa !66
  %conv18 = zext i16 %20 to i32
  %21 = load i16, i16* %m, align 2, !tbaa !66
  %conv19 = zext i16 %21 to i32
  %or = or i32 %conv18, %conv19
  %22 = load i16, i16* %y, align 2, !tbaa !66
  %conv20 = zext i16 %22 to i32
  %or21 = or i32 %or, %conv20
  %cmp22 = icmp sgt i32 %or21, 32767
  %cond = select i1 %cmp22, i64 1, i64 0
  store i64 %cond, i64* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.24:                                         ; preds = %if.else
  %23 = load i16, i16* %c, align 2, !tbaa !66
  %conv25 = zext i16 %23 to i64
  %mul26 = mul i64 %conv25, 30
  %mul27 = mul i64 %mul26, 10
  %24 = load i16, i16* %m, align 2, !tbaa !66
  %conv28 = zext i16 %24 to i64
  %mul29 = mul i64 %conv28, 59
  %mul30 = mul i64 %mul29, 10
  %add31 = add i64 %mul27, %mul30
  %25 = load i16, i16* %y, align 2, !tbaa !66
  %conv32 = zext i16 %25 to i64
  %mul33 = mul i64 %conv32, 11
  %mul34 = mul i64 %mul33, 10
  %add35 = add i64 %add31, %mul34
  %shr36 = lshr i64 %add35, 18
  store i64 %shr36, i64* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.epilog:                                        ; preds = %if.else
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.bb.24, %sw.bb
  %26 = bitcast i16* %y to i8*
  call void @llvm.lifetime.end(i64 2, i8* %26) #2
  %27 = bitcast i16* %m to i8*
  call void @llvm.lifetime.end(i64 2, i8* %27) #2
  %28 = bitcast i16* %c to i8*
  call void @llvm.lifetime.end(i64 2, i8* %28) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.39 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end

if.end:                                           ; preds = %cleanup.cont
  store i64 0, i64* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.39

cleanup.39:                                       ; preds = %if.end, %cleanup, %if.then
  %29 = bitcast i16* %b to i8*
  call void @llvm.lifetime.end(i64 2, i8* %29) #2
  %30 = bitcast i16* %g to i8*
  call void @llvm.lifetime.end(i64 2, i8* %30) #2
  %31 = bitcast i16* %r to i8*
  call void @llvm.lifetime.end(i64 2, i8* %31) #2
  %32 = load i64, i64* %retval
  ret i64 %32
}

; Function Attrs: nounwind uwtable
define internal i64 @gdev_pcl_map_rgb_color(%struct.gx_device_s* %pdev, i16* %cv) #1 {
entry:
  %retval = alloca i64, align 8
  %pdev.addr = alloca %struct.gx_device_s*, align 8
  %cv.addr = alloca i16*, align 8
  %r = alloca i16, align 2
  %g = alloca i16, align 2
  %b = alloca i16, align 2
  %cleanup.dest.slot = alloca i32
  %c = alloca i16, align 2
  %m = alloca i16, align 2
  %y = alloca i16, align 2
  store %struct.gx_device_s* %pdev, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  store i16* %cv, i16** %cv.addr, align 8, !tbaa !1
  %0 = bitcast i16* %r to i8*
  call void @llvm.lifetime.start(i64 2, i8* %0) #2
  %1 = bitcast i16* %g to i8*
  call void @llvm.lifetime.start(i64 2, i8* %1) #2
  %2 = bitcast i16* %b to i8*
  call void @llvm.lifetime.start(i64 2, i8* %2) #2
  %3 = load i16*, i16** %cv.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %3, i64 0
  %4 = load i16, i16* %arrayidx, align 2, !tbaa !66
  store i16 %4, i16* %r, align 2, !tbaa !66
  %5 = load i16*, i16** %cv.addr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds i16, i16* %5, i64 1
  %6 = load i16, i16* %arrayidx1, align 2, !tbaa !66
  store i16 %6, i16* %g, align 2, !tbaa !66
  %7 = load i16*, i16** %cv.addr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds i16, i16* %7, i64 2
  %8 = load i16, i16* %arrayidx2, align 2, !tbaa !66
  store i16 %8, i16* %b, align 2, !tbaa !66
  %9 = load i16, i16* %r, align 2, !tbaa !66
  %conv = zext i16 %9 to i32
  %10 = load i16, i16* %g, align 2, !tbaa !66
  %conv3 = zext i16 %10 to i32
  %and = and i32 %conv, %conv3
  %11 = load i16, i16* %b, align 2, !tbaa !66
  %conv4 = zext i16 %11 to i32
  %and5 = and i32 %and, %conv4
  %mul = mul i32 %and5, 65281
  %add = add i32 %mul, 8388608
  %shr = lshr i32 %add, 24
  %conv6 = trunc i32 %shr to i16
  %conv7 = zext i16 %conv6 to i32
  %cmp = icmp eq i32 %conv7, 255
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i64 0, i64* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.127

if.else:                                          ; preds = %entry
  %12 = bitcast i16* %c to i8*
  call void @llvm.lifetime.start(i64 2, i8* %12) #2
  %13 = load i16, i16* %r, align 2, !tbaa !66
  %conv9 = zext i16 %13 to i32
  %sub = sub nsw i32 65535, %conv9
  %conv10 = trunc i32 %sub to i16
  store i16 %conv10, i16* %c, align 2, !tbaa !66
  %14 = bitcast i16* %m to i8*
  call void @llvm.lifetime.start(i64 2, i8* %14) #2
  %15 = load i16, i16* %g, align 2, !tbaa !66
  %conv11 = zext i16 %15 to i32
  %sub12 = sub nsw i32 65535, %conv11
  %conv13 = trunc i32 %sub12 to i16
  store i16 %conv13, i16* %m, align 2, !tbaa !66
  %16 = bitcast i16* %y to i8*
  call void @llvm.lifetime.start(i64 2, i8* %16) #2
  %17 = load i16, i16* %b, align 2, !tbaa !66
  %conv14 = zext i16 %17 to i32
  %sub15 = sub nsw i32 65535, %conv14
  %conv16 = trunc i32 %sub15 to i16
  store i16 %conv16, i16* %y, align 2, !tbaa !66
  %18 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %18, i32 0, i32 11
  %depth = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 3
  %19 = load i16, i16* %depth, align 2, !tbaa !64
  %conv17 = zext i16 %19 to i32
  switch i32 %conv17, label %sw.epilog [
    i32 1, label %sw.bb
    i32 8, label %sw.bb.24
    i32 16, label %sw.bb.49
    i32 24, label %sw.bb.61
    i32 32, label %sw.bb.85
  ]

sw.bb:                                            ; preds = %if.else
  %20 = load i16, i16* %c, align 2, !tbaa !66
  %conv18 = zext i16 %20 to i32
  %21 = load i16, i16* %m, align 2, !tbaa !66
  %conv19 = zext i16 %21 to i32
  %or = or i32 %conv18, %conv19
  %22 = load i16, i16* %y, align 2, !tbaa !66
  %conv20 = zext i16 %22 to i32
  %or21 = or i32 %or, %conv20
  %cmp22 = icmp sgt i32 %or21, 32767
  %cond = select i1 %cmp22, i64 1, i64 0
  store i64 %cond, i64* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.24:                                         ; preds = %if.else
  %23 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %color_info25 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %23, i32 0, i32 11
  %num_components = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info25, i32 0, i32 1
  %24 = load i32, i32* %num_components, align 4, !tbaa !62
  %cmp26 = icmp sge i32 %24, 3
  br i1 %cmp26, label %if.then.28, label %if.else.39

if.then.28:                                       ; preds = %sw.bb.24
  %25 = load i16, i16* %c, align 2, !tbaa !66
  %conv29 = zext i16 %25 to i32
  %shr30 = ashr i32 %conv29, 15
  %26 = load i16, i16* %m, align 2, !tbaa !66
  %conv31 = zext i16 %26 to i32
  %shr32 = ashr i32 %conv31, 15
  %shl = shl i32 %shr32, 1
  %add33 = add nsw i32 %shr30, %shl
  %27 = load i16, i16* %y, align 2, !tbaa !66
  %conv34 = zext i16 %27 to i32
  %shr35 = ashr i32 %conv34, 15
  %shl36 = shl i32 %shr35, 2
  %add37 = add nsw i32 %add33, %shl36
  %conv38 = sext i32 %add37 to i64
  store i64 %conv38, i64* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else.39:                                       ; preds = %sw.bb.24
  %28 = load i16, i16* %c, align 2, !tbaa !66
  %conv40 = zext i16 %28 to i64
  %mul41 = mul i64 %conv40, 306
  %29 = load i16, i16* %m, align 2, !tbaa !66
  %conv42 = zext i16 %29 to i64
  %mul43 = mul i64 %conv42, 601
  %add44 = add i64 %mul41, %mul43
  %30 = load i16, i16* %y, align 2, !tbaa !66
  %conv45 = zext i16 %30 to i64
  %mul46 = mul i64 %conv45, 117
  %add47 = add i64 %add44, %mul46
  %shr48 = lshr i64 %add47, 18
  store i64 %shr48, i64* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.49:                                         ; preds = %if.else
  %31 = load i16, i16* %y, align 2, !tbaa !66
  %conv50 = zext i16 %31 to i32
  %shr51 = ashr i32 %conv50, 11
  %32 = load i16, i16* %m, align 2, !tbaa !66
  %conv52 = zext i16 %32 to i32
  %shr53 = ashr i32 %conv52, 10
  %shl54 = shl i32 %shr53, 5
  %add55 = add nsw i32 %shr51, %shl54
  %33 = load i16, i16* %c, align 2, !tbaa !66
  %conv56 = zext i16 %33 to i32
  %shr57 = ashr i32 %conv56, 11
  %shl58 = shl i32 %shr57, 11
  %add59 = add nsw i32 %add55, %shl58
  %conv60 = sext i32 %add59 to i64
  store i64 %conv60, i64* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.61:                                         ; preds = %if.else
  %34 = load i16, i16* %y, align 2, !tbaa !66
  %conv62 = zext i16 %34 to i32
  %mul63 = mul i32 %conv62, 65281
  %add64 = add i32 %mul63, 8388608
  %shr65 = lshr i32 %add64, 24
  %conv66 = trunc i32 %shr65 to i16
  %conv67 = zext i16 %conv66 to i32
  %35 = load i16, i16* %m, align 2, !tbaa !66
  %conv68 = zext i16 %35 to i32
  %mul69 = mul i32 %conv68, 65281
  %add70 = add i32 %mul69, 8388608
  %shr71 = lshr i32 %add70, 24
  %conv72 = trunc i32 %shr71 to i16
  %conv73 = zext i16 %conv72 to i32
  %shl74 = shl i32 %conv73, 8
  %add75 = add nsw i32 %conv67, %shl74
  %conv76 = sext i32 %add75 to i64
  %36 = load i16, i16* %c, align 2, !tbaa !66
  %conv77 = zext i16 %36 to i32
  %mul78 = mul i32 %conv77, 65281
  %add79 = add i32 %mul78, 8388608
  %shr80 = lshr i32 %add79, 24
  %conv81 = trunc i32 %shr80 to i16
  %conv82 = zext i16 %conv81 to i64
  %shl83 = shl i64 %conv82, 16
  %add84 = add i64 %conv76, %shl83
  store i64 %add84, i64* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.85:                                         ; preds = %if.else
  %37 = load i16, i16* %c, align 2, !tbaa !66
  %conv86 = zext i16 %37 to i32
  %38 = load i16, i16* %m, align 2, !tbaa !66
  %conv87 = zext i16 %38 to i32
  %cmp88 = icmp eq i32 %conv86, %conv87
  br i1 %cmp88, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %sw.bb.85
  %39 = load i16, i16* %c, align 2, !tbaa !66
  %conv90 = zext i16 %39 to i32
  %40 = load i16, i16* %y, align 2, !tbaa !66
  %conv91 = zext i16 %40 to i32
  %cmp92 = icmp eq i32 %conv90, %conv91
  br i1 %cmp92, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  %41 = load i16, i16* %c, align 2, !tbaa !66
  %conv94 = zext i16 %41 to i32
  %mul95 = mul i32 %conv94, 65281
  %add96 = add i32 %mul95, 8388608
  %shr97 = lshr i32 %add96, 24
  %conv98 = trunc i32 %shr97 to i16
  %conv99 = zext i16 %conv98 to i64
  %shl100 = shl i64 %conv99, 24
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true, %sw.bb.85
  %42 = load i16, i16* %y, align 2, !tbaa !66
  %conv101 = zext i16 %42 to i32
  %mul102 = mul i32 %conv101, 65281
  %add103 = add i32 %mul102, 8388608
  %shr104 = lshr i32 %add103, 24
  %conv105 = trunc i32 %shr104 to i16
  %conv106 = zext i16 %conv105 to i32
  %43 = load i16, i16* %m, align 2, !tbaa !66
  %conv107 = zext i16 %43 to i32
  %mul108 = mul i32 %conv107, 65281
  %add109 = add i32 %mul108, 8388608
  %shr110 = lshr i32 %add109, 24
  %conv111 = trunc i32 %shr110 to i16
  %conv112 = zext i16 %conv111 to i32
  %shl113 = shl i32 %conv112, 8
  %add114 = add nsw i32 %conv106, %shl113
  %conv115 = sext i32 %add114 to i64
  %44 = load i16, i16* %c, align 2, !tbaa !66
  %conv116 = zext i16 %44 to i32
  %mul117 = mul i32 %conv116, 65281
  %add118 = add i32 %mul117, 8388608
  %shr119 = lshr i32 %add118, 24
  %conv120 = trunc i32 %shr119 to i16
  %conv121 = zext i16 %conv120 to i64
  %shl122 = shl i64 %conv121, 16
  %add123 = add i64 %conv115, %shl122
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond124 = phi i64 [ %shl100, %cond.true ], [ %add123, %cond.false ]
  store i64 %cond124, i64* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.epilog:                                        ; preds = %if.else
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %cond.end, %sw.bb.61, %sw.bb.49, %if.else.39, %if.then.28, %sw.bb
  %45 = bitcast i16* %y to i8*
  call void @llvm.lifetime.end(i64 2, i8* %45) #2
  %46 = bitcast i16* %m to i8*
  call void @llvm.lifetime.end(i64 2, i8* %46) #2
  %47 = bitcast i16* %c to i8*
  call void @llvm.lifetime.end(i64 2, i8* %47) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.127 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end

if.end:                                           ; preds = %cleanup.cont
  store i64 0, i64* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.127

cleanup.127:                                      ; preds = %if.end, %cleanup, %if.then
  %48 = bitcast i16* %b to i8*
  call void @llvm.lifetime.end(i64 2, i8* %48) #2
  %49 = bitcast i16* %g to i8*
  call void @llvm.lifetime.end(i64 2, i8* %49) #2
  %50 = bitcast i16* %r to i8*
  call void @llvm.lifetime.end(i64 2, i8* %50) #2
  %51 = load i64, i64* %retval
  ret i64 %51
}

; Function Attrs: nounwind uwtable
define internal i32 @gdev_pcl_map_color_rgb(%struct.gx_device_s* %pdev, i64 %color, i16* %prgb) #1 {
entry:
  %pdev.addr = alloca %struct.gx_device_s*, align 8
  %color.addr = alloca i64, align 8
  %prgb.addr = alloca i16*, align 8
  %c = alloca i16, align 2
  %value = alloca i16, align 2
  %c38 = alloca i16, align 2
  %value43 = alloca i16, align 2
  %c94 = alloca i16, align 2
  %w = alloca i16, align 2
  store %struct.gx_device_s* %pdev, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  store i64 %color, i64* %color.addr, align 8, !tbaa !65
  store i16* %prgb, i16** %prgb.addr, align 8, !tbaa !1
  %0 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %0, i32 0, i32 11
  %depth = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 3
  %1 = load i16, i16* %depth, align 2, !tbaa !64
  %conv = zext i16 %1 to i32
  switch i32 %conv, label %sw.epilog [
    i32 1, label %sw.bb
    i32 8, label %sw.bb.6
    i32 16, label %sw.bb.37
    i32 24, label %sw.bb.93
    i32 32, label %sw.bb.128
  ]

sw.bb:                                            ; preds = %entry
  %2 = load i64, i64* %color.addr, align 8, !tbaa !65
  %conv1 = trunc i64 %2 to i16
  %conv2 = zext i16 %conv1 to i32
  %xor = xor i32 %conv2, 1
  %sub = sub nsw i32 0, %xor
  %conv3 = trunc i32 %sub to i16
  %3 = load i16*, i16** %prgb.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %3, i64 2
  store i16 %conv3, i16* %arrayidx, align 2, !tbaa !66
  %4 = load i16*, i16** %prgb.addr, align 8, !tbaa !1
  %arrayidx4 = getelementptr inbounds i16, i16* %4, i64 1
  store i16 %conv3, i16* %arrayidx4, align 2, !tbaa !66
  %5 = load i16*, i16** %prgb.addr, align 8, !tbaa !1
  %arrayidx5 = getelementptr inbounds i16, i16* %5, i64 0
  store i16 %conv3, i16* %arrayidx5, align 2, !tbaa !66
  br label %sw.epilog

sw.bb.6:                                          ; preds = %entry
  %6 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %color_info7 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %6, i32 0, i32 11
  %num_components = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info7, i32 0, i32 1
  %7 = load i32, i32* %num_components, align 4, !tbaa !62
  %cmp = icmp sge i32 %7, 3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb.6
  %8 = bitcast i16* %c to i8*
  call void @llvm.lifetime.start(i64 2, i8* %8) #2
  %9 = load i64, i64* %color.addr, align 8, !tbaa !65
  %conv9 = trunc i64 %9 to i16
  %conv10 = zext i16 %conv9 to i32
  %xor11 = xor i32 %conv10, 7
  %conv12 = trunc i32 %xor11 to i16
  store i16 %conv12, i16* %c, align 2, !tbaa !66
  %10 = load i16, i16* %c, align 2, !tbaa !66
  %conv13 = zext i16 %10 to i32
  %and = and i32 %conv13, 1
  %sub14 = sub nsw i32 0, %and
  %conv15 = trunc i32 %sub14 to i16
  %11 = load i16*, i16** %prgb.addr, align 8, !tbaa !1
  %arrayidx16 = getelementptr inbounds i16, i16* %11, i64 0
  store i16 %conv15, i16* %arrayidx16, align 2, !tbaa !66
  %12 = load i16, i16* %c, align 2, !tbaa !66
  %conv17 = zext i16 %12 to i32
  %shr = ashr i32 %conv17, 1
  %and18 = and i32 %shr, 1
  %sub19 = sub nsw i32 0, %and18
  %conv20 = trunc i32 %sub19 to i16
  %13 = load i16*, i16** %prgb.addr, align 8, !tbaa !1
  %arrayidx21 = getelementptr inbounds i16, i16* %13, i64 1
  store i16 %conv20, i16* %arrayidx21, align 2, !tbaa !66
  %14 = load i16, i16* %c, align 2, !tbaa !66
  %conv22 = zext i16 %14 to i32
  %shr23 = ashr i32 %conv22, 2
  %sub24 = sub nsw i32 0, %shr23
  %conv25 = trunc i32 %sub24 to i16
  %15 = load i16*, i16** %prgb.addr, align 8, !tbaa !1
  %arrayidx26 = getelementptr inbounds i16, i16* %15, i64 2
  store i16 %conv25, i16* %arrayidx26, align 2, !tbaa !66
  %16 = bitcast i16* %c to i8*
  call void @llvm.lifetime.end(i64 2, i8* %16) #2
  br label %if.end

if.else:                                          ; preds = %sw.bb.6
  %17 = bitcast i16* %value to i8*
  call void @llvm.lifetime.start(i64 2, i8* %17) #2
  %18 = load i64, i64* %color.addr, align 8, !tbaa !65
  %conv27 = trunc i64 %18 to i16
  %conv28 = zext i16 %conv27 to i32
  %xor29 = xor i32 %conv28, 255
  %conv30 = trunc i32 %xor29 to i16
  store i16 %conv30, i16* %value, align 2, !tbaa !66
  %19 = load i16, i16* %value, align 2, !tbaa !66
  %conv31 = zext i16 %19 to i32
  %shl = shl i32 %conv31, 8
  %20 = load i16, i16* %value, align 2, !tbaa !66
  %conv32 = zext i16 %20 to i32
  %add = add nsw i32 %shl, %conv32
  %conv33 = trunc i32 %add to i16
  %21 = load i16*, i16** %prgb.addr, align 8, !tbaa !1
  %arrayidx34 = getelementptr inbounds i16, i16* %21, i64 2
  store i16 %conv33, i16* %arrayidx34, align 2, !tbaa !66
  %22 = load i16*, i16** %prgb.addr, align 8, !tbaa !1
  %arrayidx35 = getelementptr inbounds i16, i16* %22, i64 1
  store i16 %conv33, i16* %arrayidx35, align 2, !tbaa !66
  %23 = load i16*, i16** %prgb.addr, align 8, !tbaa !1
  %arrayidx36 = getelementptr inbounds i16, i16* %23, i64 0
  store i16 %conv33, i16* %arrayidx36, align 2, !tbaa !66
  %24 = bitcast i16* %value to i8*
  call void @llvm.lifetime.end(i64 2, i8* %24) #2
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %sw.epilog

sw.bb.37:                                         ; preds = %entry
  %25 = bitcast i16* %c38 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %25) #2
  %26 = load i64, i64* %color.addr, align 8, !tbaa !65
  %conv39 = trunc i64 %26 to i16
  %conv40 = zext i16 %conv39 to i32
  %xor41 = xor i32 %conv40, 65535
  %conv42 = trunc i32 %xor41 to i16
  store i16 %conv42, i16* %c38, align 2, !tbaa !66
  %27 = bitcast i16* %value43 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %27) #2
  %28 = load i16, i16* %c38, align 2, !tbaa !66
  %conv44 = zext i16 %28 to i32
  %shr45 = ashr i32 %conv44, 11
  %conv46 = trunc i32 %shr45 to i16
  store i16 %conv46, i16* %value43, align 2, !tbaa !66
  %29 = load i16, i16* %value43, align 2, !tbaa !66
  %conv47 = zext i16 %29 to i32
  %shl48 = shl i32 %conv47, 11
  %30 = load i16, i16* %value43, align 2, !tbaa !66
  %conv49 = zext i16 %30 to i32
  %shl50 = shl i32 %conv49, 6
  %add51 = add nsw i32 %shl48, %shl50
  %31 = load i16, i16* %value43, align 2, !tbaa !66
  %conv52 = zext i16 %31 to i32
  %shl53 = shl i32 %conv52, 1
  %add54 = add nsw i32 %add51, %shl53
  %32 = load i16, i16* %value43, align 2, !tbaa !66
  %conv55 = zext i16 %32 to i32
  %shr56 = ashr i32 %conv55, 4
  %add57 = add nsw i32 %add54, %shr56
  %shr58 = ashr i32 %add57, 0
  %conv59 = trunc i32 %shr58 to i16
  %33 = load i16*, i16** %prgb.addr, align 8, !tbaa !1
  %arrayidx60 = getelementptr inbounds i16, i16* %33, i64 0
  store i16 %conv59, i16* %arrayidx60, align 2, !tbaa !66
  %34 = load i16, i16* %c38, align 2, !tbaa !66
  %conv61 = zext i16 %34 to i32
  %shr62 = ashr i32 %conv61, 6
  %and63 = and i32 %shr62, 63
  %conv64 = trunc i32 %and63 to i16
  store i16 %conv64, i16* %value43, align 2, !tbaa !66
  %35 = load i16, i16* %value43, align 2, !tbaa !66
  %conv65 = zext i16 %35 to i32
  %shl66 = shl i32 %conv65, 10
  %36 = load i16, i16* %value43, align 2, !tbaa !66
  %conv67 = zext i16 %36 to i32
  %shl68 = shl i32 %conv67, 4
  %add69 = add nsw i32 %shl66, %shl68
  %37 = load i16, i16* %value43, align 2, !tbaa !66
  %conv70 = zext i16 %37 to i32
  %shr71 = ashr i32 %conv70, 2
  %add72 = add nsw i32 %add69, %shr71
  %shr73 = ashr i32 %add72, 0
  %conv74 = trunc i32 %shr73 to i16
  %38 = load i16*, i16** %prgb.addr, align 8, !tbaa !1
  %arrayidx75 = getelementptr inbounds i16, i16* %38, i64 1
  store i16 %conv74, i16* %arrayidx75, align 2, !tbaa !66
  %39 = load i16, i16* %c38, align 2, !tbaa !66
  %conv76 = zext i16 %39 to i32
  %and77 = and i32 %conv76, 31
  %conv78 = trunc i32 %and77 to i16
  store i16 %conv78, i16* %value43, align 2, !tbaa !66
  %40 = load i16, i16* %value43, align 2, !tbaa !66
  %conv79 = zext i16 %40 to i32
  %shl80 = shl i32 %conv79, 11
  %41 = load i16, i16* %value43, align 2, !tbaa !66
  %conv81 = zext i16 %41 to i32
  %shl82 = shl i32 %conv81, 6
  %add83 = add nsw i32 %shl80, %shl82
  %42 = load i16, i16* %value43, align 2, !tbaa !66
  %conv84 = zext i16 %42 to i32
  %shl85 = shl i32 %conv84, 1
  %add86 = add nsw i32 %add83, %shl85
  %43 = load i16, i16* %value43, align 2, !tbaa !66
  %conv87 = zext i16 %43 to i32
  %shr88 = ashr i32 %conv87, 4
  %add89 = add nsw i32 %add86, %shr88
  %shr90 = ashr i32 %add89, 0
  %conv91 = trunc i32 %shr90 to i16
  %44 = load i16*, i16** %prgb.addr, align 8, !tbaa !1
  %arrayidx92 = getelementptr inbounds i16, i16* %44, i64 2
  store i16 %conv91, i16* %arrayidx92, align 2, !tbaa !66
  %45 = bitcast i16* %value43 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %45) #2
  %46 = bitcast i16* %c38 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %46) #2
  br label %sw.epilog

sw.bb.93:                                         ; preds = %entry
  %47 = bitcast i16* %c94 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %47) #2
  %48 = load i64, i64* %color.addr, align 8, !tbaa !65
  %conv95 = trunc i64 %48 to i16
  %conv96 = zext i16 %conv95 to i32
  %xor97 = xor i32 %conv96, 16777215
  %conv98 = trunc i32 %xor97 to i16
  store i16 %conv98, i16* %c94, align 2, !tbaa !66
  %49 = load i16, i16* %c94, align 2, !tbaa !66
  %conv99 = zext i16 %49 to i32
  %shr100 = ashr i32 %conv99, 16
  %shl101 = shl i32 %shr100, 8
  %50 = load i16, i16* %c94, align 2, !tbaa !66
  %conv102 = zext i16 %50 to i32
  %shr103 = ashr i32 %conv102, 16
  %shr104 = ashr i32 %shr103, 0
  %add105 = add nsw i32 %shl101, %shr104
  %conv106 = trunc i32 %add105 to i16
  %51 = load i16*, i16** %prgb.addr, align 8, !tbaa !1
  %arrayidx107 = getelementptr inbounds i16, i16* %51, i64 0
  store i16 %conv106, i16* %arrayidx107, align 2, !tbaa !66
  %52 = load i16, i16* %c94, align 2, !tbaa !66
  %conv108 = zext i16 %52 to i32
  %shr109 = ashr i32 %conv108, 8
  %and110 = and i32 %shr109, 255
  %shl111 = shl i32 %and110, 8
  %53 = load i16, i16* %c94, align 2, !tbaa !66
  %conv112 = zext i16 %53 to i32
  %shr113 = ashr i32 %conv112, 8
  %and114 = and i32 %shr113, 255
  %shr115 = ashr i32 %and114, 0
  %add116 = add nsw i32 %shl111, %shr115
  %conv117 = trunc i32 %add116 to i16
  %54 = load i16*, i16** %prgb.addr, align 8, !tbaa !1
  %arrayidx118 = getelementptr inbounds i16, i16* %54, i64 1
  store i16 %conv117, i16* %arrayidx118, align 2, !tbaa !66
  %55 = load i16, i16* %c94, align 2, !tbaa !66
  %conv119 = zext i16 %55 to i32
  %and120 = and i32 %conv119, 255
  %shl121 = shl i32 %and120, 8
  %56 = load i16, i16* %c94, align 2, !tbaa !66
  %conv122 = zext i16 %56 to i32
  %and123 = and i32 %conv122, 255
  %shr124 = ashr i32 %and123, 0
  %add125 = add nsw i32 %shl121, %shr124
  %conv126 = trunc i32 %add125 to i16
  %57 = load i16*, i16** %prgb.addr, align 8, !tbaa !1
  %arrayidx127 = getelementptr inbounds i16, i16* %57, i64 2
  store i16 %conv126, i16* %arrayidx127, align 2, !tbaa !66
  %58 = bitcast i16* %c94 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %58) #2
  br label %sw.epilog

sw.bb.128:                                        ; preds = %entry
  %59 = bitcast i16* %w to i8*
  call void @llvm.lifetime.start(i64 2, i8* %59) #2
  %60 = load i64, i64* %color.addr, align 8, !tbaa !65
  %shr129 = lshr i64 %60, 24
  %shl130 = shl i64 %shr129, 8
  %61 = load i64, i64* %color.addr, align 8, !tbaa !65
  %shr131 = lshr i64 %61, 24
  %shr132 = lshr i64 %shr131, 0
  %add133 = add i64 %shl130, %shr132
  %sub134 = sub i64 65535, %add133
  %conv135 = trunc i64 %sub134 to i16
  store i16 %conv135, i16* %w, align 2, !tbaa !66
  %62 = load i16, i16* %w, align 2, !tbaa !66
  %conv136 = zext i16 %62 to i64
  %63 = load i64, i64* %color.addr, align 8, !tbaa !65
  %shr137 = lshr i64 %63, 16
  %and138 = and i64 %shr137, 255
  %shl139 = shl i64 %and138, 8
  %64 = load i64, i64* %color.addr, align 8, !tbaa !65
  %shr140 = lshr i64 %64, 16
  %and141 = and i64 %shr140, 255
  %shr142 = lshr i64 %and141, 0
  %add143 = add i64 %shl139, %shr142
  %sub144 = sub i64 %conv136, %add143
  %conv145 = trunc i64 %sub144 to i16
  %65 = load i16*, i16** %prgb.addr, align 8, !tbaa !1
  %arrayidx146 = getelementptr inbounds i16, i16* %65, i64 0
  store i16 %conv145, i16* %arrayidx146, align 2, !tbaa !66
  %66 = load i16, i16* %w, align 2, !tbaa !66
  %conv147 = zext i16 %66 to i64
  %67 = load i64, i64* %color.addr, align 8, !tbaa !65
  %shr148 = lshr i64 %67, 8
  %and149 = and i64 %shr148, 255
  %shl150 = shl i64 %and149, 8
  %68 = load i64, i64* %color.addr, align 8, !tbaa !65
  %shr151 = lshr i64 %68, 8
  %and152 = and i64 %shr151, 255
  %shr153 = lshr i64 %and152, 0
  %add154 = add i64 %shl150, %shr153
  %sub155 = sub i64 %conv147, %add154
  %conv156 = trunc i64 %sub155 to i16
  %69 = load i16*, i16** %prgb.addr, align 8, !tbaa !1
  %arrayidx157 = getelementptr inbounds i16, i16* %69, i64 1
  store i16 %conv156, i16* %arrayidx157, align 2, !tbaa !66
  %70 = load i16, i16* %w, align 2, !tbaa !66
  %conv158 = zext i16 %70 to i64
  %71 = load i64, i64* %color.addr, align 8, !tbaa !65
  %and159 = and i64 %71, 255
  %shl160 = shl i64 %and159, 8
  %72 = load i64, i64* %color.addr, align 8, !tbaa !65
  %and161 = and i64 %72, 255
  %shr162 = lshr i64 %and161, 0
  %add163 = add i64 %shl160, %shr162
  %sub164 = sub i64 %conv158, %add163
  %conv165 = trunc i64 %sub164 to i16
  %73 = load i16*, i16** %prgb.addr, align 8, !tbaa !1
  %arrayidx166 = getelementptr inbounds i16, i16* %73, i64 2
  store i16 %conv165, i16* %arrayidx166, align 2, !tbaa !66
  %74 = bitcast i16* %w to i8*
  call void @llvm.lifetime.end(i64 2, i8* %74) #2
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %sw.bb.128, %sw.bb.93, %sw.bb.37, %if.end, %sw.bb
  ret i32 0
}

declare i32 @gdev_prn_get_params(%struct.gx_device_s*, %struct.gs_param_list_s*) #0

declare i32 @param_write_int(%struct.gs_param_list_s*, i8*, i32*) #0

declare i32 @param_write_float(%struct.gs_param_list_s*, i8*, float*) #0

; Function Attrs: nounwind uwtable
define internal i32 @cdj_put_param_int(%struct.gs_param_list_s* %plist, i8* %pname, i32* %pvalue, i32 %minval, i32 %maxval, i32 %ecode) #1 {
entry:
  %retval = alloca i32, align 4
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %pname.addr = alloca i8*, align 8
  %pvalue.addr = alloca i32*, align 8
  %minval.addr = alloca i32, align 4
  %maxval.addr = alloca i32, align 4
  %ecode.addr = alloca i32, align 4
  %code = alloca i32, align 4
  %value = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* %pname, i8** %pname.addr, align 8, !tbaa !1
  store i32* %pvalue, i32** %pvalue.addr, align 8, !tbaa !1
  store i32 %minval, i32* %minval.addr, align 4, !tbaa !23
  store i32 %maxval, i32* %maxval.addr, align 4, !tbaa !23
  store i32 %ecode, i32* %ecode.addr, align 4, !tbaa !23
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast i32* %value to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %3 = load i8*, i8** %pname.addr, align 8, !tbaa !1
  %call = call i32 @param_read_int(%struct.gs_param_list_s* %2, i8* %3, i32* %value) #6
  store i32 %call, i32* %code, align 4, !tbaa !23
  switch i32 %call, label %sw.default [
    i32 1, label %sw.bb
    i32 0, label %sw.bb.1
  ]

sw.default:                                       ; preds = %entry
  %4 = load i32, i32* %code, align 4, !tbaa !23
  store i32 %4, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %5 = load i32, i32* %ecode.addr, align 4, !tbaa !23
  store i32 %5, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.1:                                          ; preds = %entry
  %6 = load i32, i32* %value, align 4, !tbaa !23
  %7 = load i32, i32* %minval.addr, align 4, !tbaa !23
  %cmp = icmp slt i32 %6, %7
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.bb.1
  %8 = load i32, i32* %value, align 4, !tbaa !23
  %9 = load i32, i32* %maxval.addr, align 4, !tbaa !23
  %cmp2 = icmp sgt i32 %8, %9
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %sw.bb.1
  %10 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %10, i32 0, i32 0
  %11 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs, align 8, !tbaa !85
  %signal_error = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %11, i32 0, i32 7
  %12 = load i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*, i8*, i32)** %signal_error, align 8, !tbaa !87
  %13 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %14 = load i8*, i8** %pname.addr, align 8, !tbaa !1
  %call3 = call i32 %12(%struct.gs_param_list_s* %13, i8* %14, i32 -15) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %15 = load i32, i32* %value, align 4, !tbaa !23
  %16 = load i32*, i32** %pvalue.addr, align 8, !tbaa !1
  store i32 %15, i32* %16, align 4, !tbaa !23
  %17 = load i32, i32* %ecode.addr, align 4, !tbaa !23
  %cmp4 = icmp slt i32 %17, 0
  br i1 %cmp4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %18 = load i32, i32* %ecode.addr, align 4, !tbaa !23
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %18, %cond.true ], [ 1, %cond.false ]
  store i32 %cond, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %sw.bb, %sw.default
  %19 = bitcast i32* %value to i8*
  call void @llvm.lifetime.end(i64 4, i8* %19) #2
  %20 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %20) #2
  %21 = load i32, i32* %retval
  ret i32 %21
}

; Function Attrs: nounwind uwtable
define internal i32 @cdj_put_param_float(%struct.gs_param_list_s* %plist, i8* %pname, float* %pvalue, float %minval, float %maxval, i32 %ecode) #1 {
entry:
  %retval = alloca i32, align 4
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %pname.addr = alloca i8*, align 8
  %pvalue.addr = alloca float*, align 8
  %minval.addr = alloca float, align 4
  %maxval.addr = alloca float, align 4
  %ecode.addr = alloca i32, align 4
  %code = alloca i32, align 4
  %value = alloca float, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* %pname, i8** %pname.addr, align 8, !tbaa !1
  store float* %pvalue, float** %pvalue.addr, align 8, !tbaa !1
  store float %minval, float* %minval.addr, align 4, !tbaa !42
  store float %maxval, float* %maxval.addr, align 4, !tbaa !42
  store i32 %ecode, i32* %ecode.addr, align 4, !tbaa !23
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast float* %value to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %3 = load i8*, i8** %pname.addr, align 8, !tbaa !1
  %call = call i32 @param_read_float(%struct.gs_param_list_s* %2, i8* %3, float* %value) #6
  store i32 %call, i32* %code, align 4, !tbaa !23
  switch i32 %call, label %sw.default [
    i32 1, label %sw.bb
    i32 0, label %sw.bb.1
  ]

sw.default:                                       ; preds = %entry
  %4 = load i32, i32* %code, align 4, !tbaa !23
  store i32 %4, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %5 = load i32, i32* %ecode.addr, align 4, !tbaa !23
  store i32 %5, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.1:                                          ; preds = %entry
  %6 = load float, float* %value, align 4, !tbaa !42
  %7 = load float, float* %minval.addr, align 4, !tbaa !42
  %cmp = fcmp olt float %6, %7
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.bb.1
  %8 = load float, float* %value, align 4, !tbaa !42
  %9 = load float, float* %maxval.addr, align 4, !tbaa !42
  %cmp2 = fcmp ogt float %8, %9
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %sw.bb.1
  %10 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %10, i32 0, i32 0
  %11 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs, align 8, !tbaa !85
  %signal_error = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %11, i32 0, i32 7
  %12 = load i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*, i8*, i32)** %signal_error, align 8, !tbaa !87
  %13 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %14 = load i8*, i8** %pname.addr, align 8, !tbaa !1
  %call3 = call i32 %12(%struct.gs_param_list_s* %13, i8* %14, i32 -15) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %15 = load float, float* %value, align 4, !tbaa !42
  %16 = load float*, float** %pvalue.addr, align 8, !tbaa !1
  store float %15, float* %16, align 4, !tbaa !42
  %17 = load i32, i32* %ecode.addr, align 4, !tbaa !23
  %cmp4 = icmp slt i32 %17, 0
  br i1 %cmp4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %18 = load i32, i32* %ecode.addr, align 4, !tbaa !23
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %18, %cond.true ], [ 1, %cond.false ]
  store i32 %cond, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %sw.bb, %sw.default
  %19 = bitcast float* %value to i8*
  call void @llvm.lifetime.end(i64 4, i8* %19) #2
  %20 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %20) #2
  %21 = load i32, i32* %retval
  ret i32 %21
}

; Function Attrs: nounwind uwtable
define internal i32 @cdj_put_param_bpp(%struct.gx_device_s* %pdev, %struct.gs_param_list_s* %plist, i32 %new_bpp, i32 %real_bpp, i32 %ccomps) #1 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_s*, align 8
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %new_bpp.addr = alloca i32, align 4
  %real_bpp.addr = alloca i32, align 4
  %ccomps.addr = alloca i32, align 4
  %save_info = alloca %struct.gx_device_color_info_s, align 8
  %save_bpp = alloca i32, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %pdev, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i32 %new_bpp, i32* %new_bpp.addr, align 4, !tbaa !23
  store i32 %real_bpp, i32* %real_bpp.addr, align 4, !tbaa !23
  store i32 %ccomps, i32* %ccomps.addr, align 4, !tbaa !23
  %0 = load i32, i32* %new_bpp.addr, align 4, !tbaa !23
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* %ccomps.addr, align 4, !tbaa !23
  %cmp1 = icmp eq i32 %1, 0
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %2 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %3 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call = call i32 @gdev_prn_put_params(%struct.gx_device_s* %2, %struct.gs_param_list_s* %3) #6
  store i32 %call, i32* %retval
  br label %return

if.else:                                          ; preds = %land.lhs.true, %entry
  %4 = bitcast %struct.gx_device_color_info_s* %save_info to i8*
  call void @llvm.lifetime.start(i64 720, i8* %4) #2
  %5 = bitcast i32* %save_bpp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  %6 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %7, i32 0, i32 11
  %8 = bitcast %struct.gx_device_color_info_s* %save_info to i8*
  %9 = bitcast %struct.gx_device_color_info_s* %color_info to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* %9, i64 720, i32 8, i1 false), !tbaa.struct !89
  %depth = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %save_info, i32 0, i32 3
  %10 = load i16, i16* %depth, align 2, !tbaa !74
  %conv = zext i16 %10 to i32
  store i32 %conv, i32* %save_bpp, align 4, !tbaa !23
  %11 = load i32, i32* %save_bpp, align 4, !tbaa !23
  %cmp2 = icmp eq i32 %11, 8
  br i1 %cmp2, label %land.lhs.true.4, label %if.end

land.lhs.true.4:                                  ; preds = %if.else
  %num_components = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %save_info, i32 0, i32 1
  %12 = load i32, i32* %num_components, align 4, !tbaa !80
  %cmp5 = icmp eq i32 %12, 3
  br i1 %cmp5, label %land.lhs.true.7, label %if.end

land.lhs.true.7:                                  ; preds = %land.lhs.true.4
  %13 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %14 = bitcast %struct.gx_device_s* %13 to %struct.gx_device_colour_prn*
  %cmyk = getelementptr inbounds %struct.gx_device_colour_prn, %struct.gx_device_colour_prn* %14, i32 0, i32 68
  %15 = load i32, i32* %cmyk, align 4, !tbaa !72
  %tobool = icmp ne i32 %15, 0
  br i1 %tobool, label %if.end, label %if.then.8

if.then.8:                                        ; preds = %land.lhs.true.7
  store i32 3, i32* %save_bpp, align 4, !tbaa !23
  br label %if.end

if.end:                                           ; preds = %if.then.8, %land.lhs.true.7, %land.lhs.true.4, %if.else
  %16 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %17 = load i32, i32* %real_bpp.addr, align 4, !tbaa !23
  %18 = load i32, i32* %ccomps.addr, align 4, !tbaa !23
  %call9 = call i32 @cdj_set_bpp(%struct.gx_device_s* %16, i32 %17, i32 %18) #6
  store i32 %call9, i32* %code, align 4, !tbaa !23
  %19 = load i32, i32* %code, align 4, !tbaa !23
  %cmp10 = icmp slt i32 %19, 0
  br i1 %cmp10, label %if.then.12, label %if.end.17

if.then.12:                                       ; preds = %if.end
  %20 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %20, i32 0, i32 0
  %21 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs, align 8, !tbaa !85
  %signal_error = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %21, i32 0, i32 7
  %22 = load i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*, i8*, i32)** %signal_error, align 8, !tbaa !87
  %23 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %24 = load i32, i32* %code, align 4, !tbaa !23
  %call13 = call i32 %22(%struct.gs_param_list_s* %23, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i32 0, i32 0), i32 %24) #6
  %25 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs14 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %25, i32 0, i32 0
  %26 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs14, align 8, !tbaa !85
  %signal_error15 = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %26, i32 0, i32 7
  %27 = load i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*, i8*, i32)** %signal_error15, align 8, !tbaa !87
  %28 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %29 = load i32, i32* %code, align 4, !tbaa !23
  %call16 = call i32 %27(%struct.gs_param_list_s* %28, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.18, i32 0, i32 0), i32 %29) #6
  %30 = load i32, i32* %code, align 4, !tbaa !23
  store i32 %30, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.17:                                        ; preds = %if.end
  %31 = load i32, i32* %new_bpp.addr, align 4, !tbaa !23
  %conv18 = trunc i32 %31 to i16
  %32 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %color_info19 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %32, i32 0, i32 11
  %depth20 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info19, i32 0, i32 3
  store i16 %conv18, i16* %depth20, align 2, !tbaa !64
  %33 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %34 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call21 = call i32 @gdev_prn_put_params(%struct.gx_device_s* %33, %struct.gs_param_list_s* %34) #6
  store i32 %call21, i32* %code, align 4, !tbaa !23
  %35 = load i32, i32* %code, align 4, !tbaa !23
  %cmp22 = icmp slt i32 %35, 0
  br i1 %cmp22, label %if.then.24, label %if.end.27

if.then.24:                                       ; preds = %if.end.17
  %36 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %37 = load i32, i32* %save_bpp, align 4, !tbaa !23
  %num_components25 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %save_info, i32 0, i32 1
  %38 = load i32, i32* %num_components25, align 4, !tbaa !80
  %call26 = call i32 @cdj_set_bpp(%struct.gx_device_s* %36, i32 %37, i32 %38) #6
  %39 = load i32, i32* %code, align 4, !tbaa !23
  store i32 %39, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.27:                                        ; preds = %if.end.17
  %40 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %41 = load i32, i32* %real_bpp.addr, align 4, !tbaa !23
  %42 = load i32, i32* %ccomps.addr, align 4, !tbaa !23
  %call28 = call i32 @cdj_set_bpp(%struct.gx_device_s* %40, i32 %41, i32 %42) #6
  %43 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %44 = bitcast %struct.gx_device_s* %43 to %struct.gx_device_cdj850_s*
  %color_info29 = getelementptr inbounds %struct.gx_device_cdj850_s, %struct.gx_device_cdj850_s* %44, i32 0, i32 11
  %depth30 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info29, i32 0, i32 3
  %45 = load i16, i16* %depth30, align 2, !tbaa !90
  %conv31 = zext i16 %45 to i32
  %46 = load i32, i32* %save_bpp, align 4, !tbaa !23
  %cmp32 = icmp ne i32 %conv31, %46
  br i1 %cmp32, label %land.lhs.true.40, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.27
  %47 = load i32, i32* %ccomps.addr, align 4, !tbaa !23
  %cmp34 = icmp ne i32 %47, 0
  br i1 %cmp34, label %land.lhs.true.36, label %if.end.44

land.lhs.true.36:                                 ; preds = %lor.lhs.false
  %48 = load i32, i32* %ccomps.addr, align 4, !tbaa !23
  %num_components37 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %save_info, i32 0, i32 1
  %49 = load i32, i32* %num_components37, align 4, !tbaa !80
  %cmp38 = icmp ne i32 %48, %49
  br i1 %cmp38, label %land.lhs.true.40, label %if.end.44

land.lhs.true.40:                                 ; preds = %land.lhs.true.36, %if.end.27
  %50 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %is_open = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %50, i32 0, i32 9
  %51 = load i32, i32* %is_open, align 4, !tbaa !79
  %tobool41 = icmp ne i32 %51, 0
  br i1 %tobool41, label %if.then.42, label %if.end.44

if.then.42:                                       ; preds = %land.lhs.true.40
  %52 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %call43 = call i32 @gs_closedevice(%struct.gx_device_s* %52) #6
  store i32 %call43, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.44:                                        ; preds = %land.lhs.true.40, %land.lhs.true.36, %lor.lhs.false
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.44, %if.then.42, %if.then.24, %if.then.12
  %53 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %53) #2
  %54 = bitcast i32* %save_bpp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %54) #2
  %55 = bitcast %struct.gx_device_color_info_s* %save_info to i8*
  call void @llvm.lifetime.end(i64 720, i8* %55) #2
  br label %return

return:                                           ; preds = %cleanup, %if.then
  %56 = load i32, i32* %retval
  ret i32 %56
}

declare i32 @param_read_int(%struct.gs_param_list_s*, i8*, i32*) #0

declare i32 @param_read_float(%struct.gs_param_list_s*, i8*, float*) #0

declare i32 @gdev_prn_put_params(%struct.gx_device_s*, %struct.gs_param_list_s*) #0

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

declare i64 @gx_default_rgb_map_rgb_color(%struct.gx_device_s*, i16*) #0

declare i32 @gx_default_rgb_map_color_rgb(%struct.gx_device_s*, i64, i16*) #0

declare i32 @fputs(i8*, %struct._IO_FILE*) #0

; Function Attrs: nounwind
declare i8* @memcpy(i8*, i8*, i64) #3

; Function Attrs: nounwind uwtable
define internal void @do_black_correction(float %kvalue, i32* %kcorrect) #1 {
entry:
  %kvalue.addr = alloca float, align 4
  %kcorrect.addr = alloca i32*, align 8
  %i = alloca i32, align 4
  store float %kvalue, float* %kvalue.addr, align 4, !tbaa !42
  store i32* %kcorrect, i32** %kcorrect.addr, align 8, !tbaa !1
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  store i32 0, i32* %i, align 4, !tbaa !23
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4, !tbaa !23
  %cmp = icmp slt i32 %1, 256
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4, !tbaa !23
  %idxprom = sext i32 %2 to i64
  %3 = load i32*, i32** %kcorrect.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i32, i32* %3, i64 %idxprom
  store i32 0, i32* %arrayidx, align 4, !tbaa !23
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4, !tbaa !23
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %i, align 4, !tbaa !23
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %5 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %5) #2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @calculate_memory_size(%struct.gx_device_printer_s* %pdev, %struct.misc_struct* %misc_vars) #1 {
entry:
  %pdev.addr = alloca %struct.gx_device_printer_s*, align 8
  %misc_vars.addr = alloca %struct.misc_struct*, align 8
  %xfac = alloca i32, align 4
  store %struct.gx_device_printer_s* %pdev, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  store %struct.misc_struct* %misc_vars, %struct.misc_struct** %misc_vars.addr, align 8, !tbaa !1
  %0 = bitcast i32* %xfac to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_printer_s* %1 to %struct.gx_device_cdj850_s*
  %xscal = getelementptr inbounds %struct.gx_device_cdj850_s, %struct.gx_device_cdj850_s* %2, i32 0, i32 74
  %3 = load i32, i32* %xscal, align 4, !tbaa !43
  %tobool = icmp ne i32 %3, 0
  %cond = select i1 %tobool, i32 2, i32 1
  store i32 %cond, i32* %xfac, align 4, !tbaa !23
  %4 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %5 = bitcast %struct.gx_device_printer_s* %4 to %struct.gx_device_s*
  %call = call i32 @gx_device_raster(%struct.gx_device_s* %5, i32 0) #6
  %6 = load %struct.misc_struct*, %struct.misc_struct** %misc_vars.addr, align 8, !tbaa !1
  %line_size = getelementptr inbounds %struct.misc_struct, %struct.misc_struct* %6, i32 0, i32 0
  store i32 %call, i32* %line_size, align 4, !tbaa !91
  %7 = load %struct.misc_struct*, %struct.misc_struct** %misc_vars.addr, align 8, !tbaa !1
  %line_size1 = getelementptr inbounds %struct.misc_struct, %struct.misc_struct* %7, i32 0, i32 0
  %8 = load i32, i32* %line_size1, align 4, !tbaa !91
  %9 = load i32, i32* %xfac, align 4, !tbaa !23
  %div = sdiv i32 %8, %9
  %10 = load %struct.misc_struct*, %struct.misc_struct** %misc_vars.addr, align 8, !tbaa !1
  %line_size_c = getelementptr inbounds %struct.misc_struct, %struct.misc_struct* %10, i32 0, i32 1
  store i32 %div, i32* %line_size_c, align 4, !tbaa !92
  %11 = load %struct.misc_struct*, %struct.misc_struct** %misc_vars.addr, align 8, !tbaa !1
  %line_size2 = getelementptr inbounds %struct.misc_struct, %struct.misc_struct* %11, i32 0, i32 0
  %12 = load i32, i32* %line_size2, align 4, !tbaa !91
  %conv = sext i32 %12 to i64
  %add = add i64 %conv, 8
  %sub = sub i64 %add, 1
  %div3 = udiv i64 %sub, 8
  %conv4 = trunc i64 %div3 to i32
  %13 = load %struct.misc_struct*, %struct.misc_struct** %misc_vars.addr, align 8, !tbaa !1
  %line_size_words = getelementptr inbounds %struct.misc_struct, %struct.misc_struct* %13, i32 0, i32 2
  store i32 %conv4, i32* %line_size_words, align 4, !tbaa !93
  %14 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %15 = bitcast %struct.gx_device_printer_s* %14 to %struct.gx_device_s*
  %call5 = call i32 @gdev_pcl_paper_size(%struct.gx_device_s* %15) #6
  %16 = load %struct.misc_struct*, %struct.misc_struct** %misc_vars.addr, align 8, !tbaa !1
  %paper_size = getelementptr inbounds %struct.misc_struct, %struct.misc_struct* %16, i32 0, i32 3
  store i32 %call5, i32* %paper_size, align 4, !tbaa !37
  %17 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %17, i32 0, i32 11
  %num_components = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 1
  %18 = load i32, i32* %num_components, align 4, !tbaa !58
  %19 = load %struct.misc_struct*, %struct.misc_struct** %misc_vars.addr, align 8, !tbaa !1
  %num_comps = getelementptr inbounds %struct.misc_struct, %struct.misc_struct* %19, i32 0, i32 4
  store i32 %18, i32* %num_comps, align 4, !tbaa !52
  %20 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %color_info6 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %20, i32 0, i32 11
  %depth = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info6, i32 0, i32 3
  %21 = load i16, i16* %depth, align 2, !tbaa !94
  %conv7 = zext i16 %21 to i32
  %22 = load %struct.misc_struct*, %struct.misc_struct** %misc_vars.addr, align 8, !tbaa !1
  %bits_per_pixel = getelementptr inbounds %struct.misc_struct, %struct.misc_struct* %22, i32 0, i32 5
  store i32 %conv7, i32* %bits_per_pixel, align 4, !tbaa !95
  %23 = load %struct.misc_struct*, %struct.misc_struct** %misc_vars.addr, align 8, !tbaa !1
  %num_comps8 = getelementptr inbounds %struct.misc_struct, %struct.misc_struct* %23, i32 0, i32 4
  %24 = load i32, i32* %num_comps8, align 4, !tbaa !52
  %mul = mul nsw i32 %24, 8
  %25 = load %struct.misc_struct*, %struct.misc_struct** %misc_vars.addr, align 8, !tbaa !1
  %storage_bpp = getelementptr inbounds %struct.misc_struct, %struct.misc_struct* %25, i32 0, i32 6
  store i32 %mul, i32* %storage_bpp, align 4, !tbaa !56
  %26 = load %struct.misc_struct*, %struct.misc_struct** %misc_vars.addr, align 8, !tbaa !1
  %num_comps9 = getelementptr inbounds %struct.misc_struct, %struct.misc_struct* %26, i32 0, i32 4
  %27 = load i32, i32* %num_comps9, align 4, !tbaa !52
  %mul10 = mul nsw i32 %27, 8
  %28 = load %struct.misc_struct*, %struct.misc_struct** %misc_vars.addr, align 8, !tbaa !1
  %expanded_bpp = getelementptr inbounds %struct.misc_struct, %struct.misc_struct* %28, i32 0, i32 7
  store i32 %mul10, i32* %expanded_bpp, align 4, !tbaa !96
  %29 = load %struct.misc_struct*, %struct.misc_struct** %misc_vars.addr, align 8, !tbaa !1
  %errbuff_size = getelementptr inbounds %struct.misc_struct, %struct.misc_struct* %29, i32 0, i32 12
  store i32 0, i32* %errbuff_size, align 4, !tbaa !97
  %30 = load %struct.misc_struct*, %struct.misc_struct** %misc_vars.addr, align 8, !tbaa !1
  %errbuff_size_c = getelementptr inbounds %struct.misc_struct, %struct.misc_struct* %30, i32 0, i32 13
  store i32 0, i32* %errbuff_size_c, align 4, !tbaa !98
  %31 = load %struct.misc_struct*, %struct.misc_struct** %misc_vars.addr, align 8, !tbaa !1
  %line_size11 = getelementptr inbounds %struct.misc_struct, %struct.misc_struct* %31, i32 0, i32 0
  %32 = load i32, i32* %line_size11, align 4, !tbaa !91
  %conv12 = sext i32 %32 to i64
  %33 = load %struct.misc_struct*, %struct.misc_struct** %misc_vars.addr, align 8, !tbaa !1
  %storage_bpp13 = getelementptr inbounds %struct.misc_struct, %struct.misc_struct* %33, i32 0, i32 6
  %34 = load i32, i32* %storage_bpp13, align 4, !tbaa !56
  %conv14 = sext i32 %34 to i64
  %mul15 = mul i64 %conv14, 8
  %add16 = add i64 %conv12, %mul15
  %sub17 = sub i64 %add16, 1
  %35 = load %struct.misc_struct*, %struct.misc_struct** %misc_vars.addr, align 8, !tbaa !1
  %storage_bpp18 = getelementptr inbounds %struct.misc_struct, %struct.misc_struct* %35, i32 0, i32 6
  %36 = load i32, i32* %storage_bpp18, align 4, !tbaa !56
  %conv19 = sext i32 %36 to i64
  %mul20 = mul i64 %conv19, 8
  %div21 = udiv i64 %sub17, %mul20
  %mul22 = mul i64 %div21, 8
  %conv23 = trunc i64 %mul22 to i32
  %37 = load %struct.misc_struct*, %struct.misc_struct** %misc_vars.addr, align 8, !tbaa !1
  %plane_size = getelementptr inbounds %struct.misc_struct, %struct.misc_struct* %37, i32 0, i32 8
  store i32 %conv23, i32* %plane_size, align 4, !tbaa !51
  %38 = load %struct.misc_struct*, %struct.misc_struct** %misc_vars.addr, align 8, !tbaa !1
  %plane_size24 = getelementptr inbounds %struct.misc_struct, %struct.misc_struct* %38, i32 0, i32 8
  %39 = load i32, i32* %plane_size24, align 4, !tbaa !51
  %mul25 = mul nsw i32 2, %39
  %40 = load i32, i32* %xfac, align 4, !tbaa !23
  %div26 = sdiv i32 %mul25, %40
  %41 = load %struct.misc_struct*, %struct.misc_struct** %misc_vars.addr, align 8, !tbaa !1
  %plane_size_c = getelementptr inbounds %struct.misc_struct, %struct.misc_struct* %41, i32 0, i32 9
  store i32 %div26, i32* %plane_size_c, align 4, !tbaa !99
  %42 = load %struct.misc_struct*, %struct.misc_struct** %misc_vars.addr, align 8, !tbaa !1
  %plane_size27 = getelementptr inbounds %struct.misc_struct, %struct.misc_struct* %42, i32 0, i32 8
  %43 = load i32, i32* %plane_size27, align 4, !tbaa !51
  %44 = load %struct.misc_struct*, %struct.misc_struct** %misc_vars.addr, align 8, !tbaa !1
  %expanded_bpp28 = getelementptr inbounds %struct.misc_struct, %struct.misc_struct* %44, i32 0, i32 7
  %45 = load i32, i32* %expanded_bpp28, align 4, !tbaa !96
  %mul29 = mul nsw i32 %43, %45
  %46 = load %struct.misc_struct*, %struct.misc_struct** %misc_vars.addr, align 8, !tbaa !1
  %num_comps30 = getelementptr inbounds %struct.misc_struct, %struct.misc_struct* %46, i32 0, i32 4
  %47 = load i32, i32* %num_comps30, align 4, !tbaa !52
  %mul31 = mul nsw i32 %47, 4
  %add32 = add nsw i32 %mul29, %mul31
  %conv33 = sext i32 %add32 to i64
  %mul34 = mul i64 %conv33, 4
  %add35 = add i64 %mul34, 8
  %sub36 = sub i64 %add35, 1
  %div37 = udiv i64 %sub36, 8
  %mul38 = mul i64 %div37, 8
  %conv39 = trunc i64 %mul38 to i32
  %48 = load %struct.misc_struct*, %struct.misc_struct** %misc_vars.addr, align 8, !tbaa !1
  %errbuff_size40 = getelementptr inbounds %struct.misc_struct, %struct.misc_struct* %48, i32 0, i32 12
  store i32 %conv39, i32* %errbuff_size40, align 4, !tbaa !97
  %49 = load %struct.misc_struct*, %struct.misc_struct** %misc_vars.addr, align 8, !tbaa !1
  %plane_size_c41 = getelementptr inbounds %struct.misc_struct, %struct.misc_struct* %49, i32 0, i32 9
  %50 = load i32, i32* %plane_size_c41, align 4, !tbaa !99
  %div42 = sdiv i32 %50, 2
  %51 = load %struct.misc_struct*, %struct.misc_struct** %misc_vars.addr, align 8, !tbaa !1
  %expanded_bpp43 = getelementptr inbounds %struct.misc_struct, %struct.misc_struct* %51, i32 0, i32 7
  %52 = load i32, i32* %expanded_bpp43, align 4, !tbaa !96
  %mul44 = mul nsw i32 %div42, %52
  %53 = load %struct.misc_struct*, %struct.misc_struct** %misc_vars.addr, align 8, !tbaa !1
  %num_comps45 = getelementptr inbounds %struct.misc_struct, %struct.misc_struct* %53, i32 0, i32 4
  %54 = load i32, i32* %num_comps45, align 4, !tbaa !52
  %mul46 = mul nsw i32 %54, 4
  %add47 = add nsw i32 %mul44, %mul46
  %conv48 = sext i32 %add47 to i64
  %mul49 = mul i64 %conv48, 4
  %add50 = add i64 %mul49, 8
  %sub51 = sub i64 %add50, 1
  %div52 = udiv i64 %sub51, 8
  %mul53 = mul i64 %div52, 8
  %conv54 = trunc i64 %mul53 to i32
  %55 = load %struct.misc_struct*, %struct.misc_struct** %misc_vars.addr, align 8, !tbaa !1
  %errbuff_size_c55 = getelementptr inbounds %struct.misc_struct, %struct.misc_struct* %55, i32 0, i32 13
  store i32 %conv54, i32* %errbuff_size_c55, align 4, !tbaa !98
  %56 = load %struct.misc_struct*, %struct.misc_struct** %misc_vars.addr, align 8, !tbaa !1
  %plane_size56 = getelementptr inbounds %struct.misc_struct, %struct.misc_struct* %56, i32 0, i32 8
  %57 = load i32, i32* %plane_size56, align 4, !tbaa !51
  %58 = load %struct.misc_struct*, %struct.misc_struct** %misc_vars.addr, align 8, !tbaa !1
  %storage_bpp57 = getelementptr inbounds %struct.misc_struct, %struct.misc_struct* %58, i32 0, i32 6
  %59 = load i32, i32* %storage_bpp57, align 4, !tbaa !56
  %mul58 = mul nsw i32 %57, %59
  %60 = load %struct.misc_struct*, %struct.misc_struct** %misc_vars.addr, align 8, !tbaa !1
  %databuff_size = getelementptr inbounds %struct.misc_struct, %struct.misc_struct* %60, i32 0, i32 10
  store i32 %mul58, i32* %databuff_size, align 4, !tbaa !49
  %61 = load %struct.misc_struct*, %struct.misc_struct** %misc_vars.addr, align 8, !tbaa !1
  %plane_size_c59 = getelementptr inbounds %struct.misc_struct, %struct.misc_struct* %61, i32 0, i32 9
  %62 = load i32, i32* %plane_size_c59, align 4, !tbaa !99
  %div60 = sdiv i32 %62, 2
  %63 = load %struct.misc_struct*, %struct.misc_struct** %misc_vars.addr, align 8, !tbaa !1
  %storage_bpp61 = getelementptr inbounds %struct.misc_struct, %struct.misc_struct* %63, i32 0, i32 6
  %64 = load i32, i32* %storage_bpp61, align 4, !tbaa !56
  %mul62 = mul nsw i32 %div60, %64
  %65 = load %struct.misc_struct*, %struct.misc_struct** %misc_vars.addr, align 8, !tbaa !1
  %databuff_size_c = getelementptr inbounds %struct.misc_struct, %struct.misc_struct* %65, i32 0, i32 11
  store i32 %mul62, i32* %databuff_size_c, align 4, !tbaa !100
  %66 = load %struct.misc_struct*, %struct.misc_struct** %misc_vars.addr, align 8, !tbaa !1
  %plane_size63 = getelementptr inbounds %struct.misc_struct, %struct.misc_struct* %66, i32 0, i32 8
  %67 = load i32, i32* %plane_size63, align 4, !tbaa !51
  %mul64 = mul nsw i32 %67, 4
  %68 = load %struct.misc_struct*, %struct.misc_struct** %misc_vars.addr, align 8, !tbaa !1
  %outbuff_size = getelementptr inbounds %struct.misc_struct, %struct.misc_struct* %68, i32 0, i32 14
  store i32 %mul64, i32* %outbuff_size, align 4, !tbaa !101
  %69 = load %struct.misc_struct*, %struct.misc_struct** %misc_vars.addr, align 8, !tbaa !1
  %plane_size65 = getelementptr inbounds %struct.misc_struct, %struct.misc_struct* %69, i32 0, i32 8
  %70 = load i32, i32* %plane_size65, align 4, !tbaa !51
  %mul66 = mul nsw i32 %70, 2
  %71 = load %struct.misc_struct*, %struct.misc_struct** %misc_vars.addr, align 8, !tbaa !1
  %num_comps67 = getelementptr inbounds %struct.misc_struct, %struct.misc_struct* %71, i32 0, i32 4
  %72 = load i32, i32* %num_comps67, align 4, !tbaa !52
  %mul68 = mul nsw i32 %mul66, %72
  %73 = load %struct.misc_struct*, %struct.misc_struct** %misc_vars.addr, align 8, !tbaa !1
  %databuff_size69 = getelementptr inbounds %struct.misc_struct, %struct.misc_struct* %73, i32 0, i32 10
  %74 = load i32, i32* %databuff_size69, align 4, !tbaa !49
  %add70 = add nsw i32 %mul68, %74
  %75 = load %struct.misc_struct*, %struct.misc_struct** %misc_vars.addr, align 8, !tbaa !1
  %errbuff_size71 = getelementptr inbounds %struct.misc_struct, %struct.misc_struct* %75, i32 0, i32 12
  %76 = load i32, i32* %errbuff_size71, align 4, !tbaa !97
  %add72 = add nsw i32 %add70, %76
  %77 = load %struct.misc_struct*, %struct.misc_struct** %misc_vars.addr, align 8, !tbaa !1
  %outbuff_size73 = getelementptr inbounds %struct.misc_struct, %struct.misc_struct* %77, i32 0, i32 14
  %78 = load i32, i32* %outbuff_size73, align 4, !tbaa !101
  %add74 = add nsw i32 %add72, %78
  %79 = load %struct.misc_struct*, %struct.misc_struct** %misc_vars.addr, align 8, !tbaa !1
  %plane_size_c75 = getelementptr inbounds %struct.misc_struct, %struct.misc_struct* %79, i32 0, i32 9
  %80 = load i32, i32* %plane_size_c75, align 4, !tbaa !99
  %mul76 = mul nsw i32 %80, 2
  %81 = load %struct.misc_struct*, %struct.misc_struct** %misc_vars.addr, align 8, !tbaa !1
  %num_comps77 = getelementptr inbounds %struct.misc_struct, %struct.misc_struct* %81, i32 0, i32 4
  %82 = load i32, i32* %num_comps77, align 4, !tbaa !52
  %mul78 = mul nsw i32 %mul76, %82
  %add79 = add nsw i32 %add74, %mul78
  %83 = load %struct.misc_struct*, %struct.misc_struct** %misc_vars.addr, align 8, !tbaa !1
  %databuff_size_c80 = getelementptr inbounds %struct.misc_struct, %struct.misc_struct* %83, i32 0, i32 11
  %84 = load i32, i32* %databuff_size_c80, align 4, !tbaa !100
  %add81 = add nsw i32 %add79, %84
  %85 = load %struct.misc_struct*, %struct.misc_struct** %misc_vars.addr, align 8, !tbaa !1
  %errbuff_size_c82 = getelementptr inbounds %struct.misc_struct, %struct.misc_struct* %85, i32 0, i32 13
  %86 = load i32, i32* %errbuff_size_c82, align 4, !tbaa !98
  %add83 = add nsw i32 %add81, %86
  %87 = load %struct.misc_struct*, %struct.misc_struct** %misc_vars.addr, align 8, !tbaa !1
  %plane_size_c84 = getelementptr inbounds %struct.misc_struct, %struct.misc_struct* %87, i32 0, i32 9
  %88 = load i32, i32* %plane_size_c84, align 4, !tbaa !99
  %mul85 = mul nsw i32 4, %88
  %add86 = add nsw i32 %add83, %mul85
  %conv87 = sext i32 %add86 to i64
  %div88 = udiv i64 %conv87, 8
  %conv89 = trunc i64 %div88 to i32
  %89 = load %struct.misc_struct*, %struct.misc_struct** %misc_vars.addr, align 8, !tbaa !1
  %storage_size_words = getelementptr inbounds %struct.misc_struct, %struct.misc_struct* %89, i32 0, i32 19
  store i32 %conv89, i32* %storage_size_words, align 4, !tbaa !32
  %90 = bitcast i32* %xfac to i8*
  call void @llvm.lifetime.end(i64 4, i8* %90) #2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @init_data_structure(%struct.gx_device_printer_s* %pdev, %struct.ptr_arrays* %data_ptrs, %struct.misc_struct* %misc_vars) #1 {
entry:
  %pdev.addr = alloca %struct.gx_device_printer_s*, align 8
  %data_ptrs.addr = alloca %struct.ptr_arrays*, align 8
  %misc_vars.addr = alloca %struct.misc_struct*, align 8
  %i = alloca i32, align 4
  %p = alloca i8*, align 8
  store %struct.gx_device_printer_s* %pdev, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  store %struct.ptr_arrays* %data_ptrs, %struct.ptr_arrays** %data_ptrs.addr, align 8, !tbaa !1
  store %struct.misc_struct* %misc_vars, %struct.misc_struct** %misc_vars.addr, align 8, !tbaa !1
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #2
  %2 = load %struct.ptr_arrays*, %struct.ptr_arrays** %data_ptrs.addr, align 8, !tbaa !1
  %storage = getelementptr inbounds %struct.ptr_arrays, %struct.ptr_arrays* %2, i32 0, i32 8
  %3 = load i64*, i64** %storage, align 8, !tbaa !34
  %4 = bitcast i64* %3 to i8*
  store i8* %4, i8** %p, align 8, !tbaa !1
  %5 = load %struct.misc_struct*, %struct.misc_struct** %misc_vars.addr, align 8, !tbaa !1
  %scan = getelementptr inbounds %struct.misc_struct, %struct.misc_struct* %5, i32 0, i32 15
  store i32 0, i32* %scan, align 4, !tbaa !48
  %6 = load %struct.misc_struct*, %struct.misc_struct** %misc_vars.addr, align 8, !tbaa !1
  %cscan = getelementptr inbounds %struct.misc_struct, %struct.misc_struct* %6, i32 0, i32 16
  store i32 0, i32* %cscan, align 4, !tbaa !55
  %7 = load %struct.misc_struct*, %struct.misc_struct** %misc_vars.addr, align 8, !tbaa !1
  %is_two_pass = getelementptr inbounds %struct.misc_struct, %struct.misc_struct* %7, i32 0, i32 17
  store i32 0, i32* %is_two_pass, align 4, !tbaa !54
  %8 = load i8*, i8** %p, align 8, !tbaa !1
  %9 = load %struct.ptr_arrays*, %struct.ptr_arrays** %data_ptrs.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.ptr_arrays, %struct.ptr_arrays* %9, i32 0, i32 0
  %arrayidx = getelementptr inbounds [4 x i8*], [4 x i8*]* %data, i32 0, i64 2
  store i8* %8, i8** %arrayidx, align 8, !tbaa !1
  %10 = load %struct.ptr_arrays*, %struct.ptr_arrays** %data_ptrs.addr, align 8, !tbaa !1
  %data1 = getelementptr inbounds %struct.ptr_arrays, %struct.ptr_arrays* %10, i32 0, i32 0
  %arrayidx2 = getelementptr inbounds [4 x i8*], [4 x i8*]* %data1, i32 0, i64 1
  store i8* %8, i8** %arrayidx2, align 8, !tbaa !1
  %11 = load %struct.ptr_arrays*, %struct.ptr_arrays** %data_ptrs.addr, align 8, !tbaa !1
  %data3 = getelementptr inbounds %struct.ptr_arrays, %struct.ptr_arrays* %11, i32 0, i32 0
  %arrayidx4 = getelementptr inbounds [4 x i8*], [4 x i8*]* %data3, i32 0, i64 0
  store i8* %8, i8** %arrayidx4, align 8, !tbaa !1
  %12 = load i8*, i8** %p, align 8, !tbaa !1
  %13 = load %struct.misc_struct*, %struct.misc_struct** %misc_vars.addr, align 8, !tbaa !1
  %databuff_size = getelementptr inbounds %struct.misc_struct, %struct.misc_struct* %13, i32 0, i32 10
  %14 = load i32, i32* %databuff_size, align 4, !tbaa !49
  %idx.ext = sext i32 %14 to i64
  %add.ptr = getelementptr inbounds i8, i8* %12, i64 %idx.ext
  %15 = load %struct.ptr_arrays*, %struct.ptr_arrays** %data_ptrs.addr, align 8, !tbaa !1
  %data5 = getelementptr inbounds %struct.ptr_arrays, %struct.ptr_arrays* %15, i32 0, i32 0
  %arrayidx6 = getelementptr inbounds [4 x i8*], [4 x i8*]* %data5, i32 0, i64 3
  store i8* %add.ptr, i8** %arrayidx6, align 8, !tbaa !1
  %16 = load %struct.misc_struct*, %struct.misc_struct** %misc_vars.addr, align 8, !tbaa !1
  %bits_per_pixel = getelementptr inbounds %struct.misc_struct, %struct.misc_struct* %16, i32 0, i32 5
  %17 = load i32, i32* %bits_per_pixel, align 4, !tbaa !95
  %cmp = icmp sgt i32 %17, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %18 = load %struct.misc_struct*, %struct.misc_struct** %misc_vars.addr, align 8, !tbaa !1
  %databuff_size7 = getelementptr inbounds %struct.misc_struct, %struct.misc_struct* %18, i32 0, i32 10
  %19 = load i32, i32* %databuff_size7, align 4, !tbaa !49
  %20 = load i8*, i8** %p, align 8, !tbaa !1
  %idx.ext8 = sext i32 %19 to i64
  %add.ptr9 = getelementptr inbounds i8, i8* %20, i64 %idx.ext8
  store i8* %add.ptr9, i8** %p, align 8, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %21 = load %struct.misc_struct*, %struct.misc_struct** %misc_vars.addr, align 8, !tbaa !1
  %bits_per_pixel10 = getelementptr inbounds %struct.misc_struct, %struct.misc_struct* %21, i32 0, i32 5
  %22 = load i32, i32* %bits_per_pixel10, align 4, !tbaa !95
  %cmp11 = icmp sgt i32 %22, 4
  br i1 %cmp11, label %if.then.12, label %if.end.25

if.then.12:                                       ; preds = %if.end
  %23 = load i8*, i8** %p, align 8, !tbaa !1
  %24 = bitcast i8* %23 to i32*
  %25 = load %struct.misc_struct*, %struct.misc_struct** %misc_vars.addr, align 8, !tbaa !1
  %num_comps = getelementptr inbounds %struct.misc_struct, %struct.misc_struct* %25, i32 0, i32 4
  %26 = load i32, i32* %num_comps, align 4, !tbaa !52
  %mul = mul nsw i32 %26, 2
  %idx.ext13 = sext i32 %mul to i64
  %add.ptr14 = getelementptr inbounds i32, i32* %24, i64 %idx.ext13
  %27 = load %struct.ptr_arrays*, %struct.ptr_arrays** %data_ptrs.addr, align 8, !tbaa !1
  %errors = getelementptr inbounds %struct.ptr_arrays, %struct.ptr_arrays* %27, i32 0, i32 6
  %arrayidx15 = getelementptr inbounds [2 x i32*], [2 x i32*]* %errors, i32 0, i64 0
  store i32* %add.ptr14, i32** %arrayidx15, align 8, !tbaa !1
  %28 = load %struct.ptr_arrays*, %struct.ptr_arrays** %data_ptrs.addr, align 8, !tbaa !1
  %errors16 = getelementptr inbounds %struct.ptr_arrays, %struct.ptr_arrays* %28, i32 0, i32 6
  %arrayidx17 = getelementptr inbounds [2 x i32*], [2 x i32*]* %errors16, i32 0, i64 0
  %29 = load i32*, i32** %arrayidx17, align 8, !tbaa !1
  %30 = load %struct.misc_struct*, %struct.misc_struct** %misc_vars.addr, align 8, !tbaa !1
  %databuff_size18 = getelementptr inbounds %struct.misc_struct, %struct.misc_struct* %30, i32 0, i32 10
  %31 = load i32, i32* %databuff_size18, align 4, !tbaa !49
  %idx.ext19 = sext i32 %31 to i64
  %add.ptr20 = getelementptr inbounds i32, i32* %29, i64 %idx.ext19
  %32 = load %struct.ptr_arrays*, %struct.ptr_arrays** %data_ptrs.addr, align 8, !tbaa !1
  %errors21 = getelementptr inbounds %struct.ptr_arrays, %struct.ptr_arrays* %32, i32 0, i32 6
  %arrayidx22 = getelementptr inbounds [2 x i32*], [2 x i32*]* %errors21, i32 0, i64 1
  store i32* %add.ptr20, i32** %arrayidx22, align 8, !tbaa !1
  %33 = load %struct.misc_struct*, %struct.misc_struct** %misc_vars.addr, align 8, !tbaa !1
  %errbuff_size = getelementptr inbounds %struct.misc_struct, %struct.misc_struct* %33, i32 0, i32 12
  %34 = load i32, i32* %errbuff_size, align 4, !tbaa !97
  %35 = load i8*, i8** %p, align 8, !tbaa !1
  %idx.ext23 = sext i32 %34 to i64
  %add.ptr24 = getelementptr inbounds i8, i8* %35, i64 %idx.ext23
  store i8* %add.ptr24, i8** %p, align 8, !tbaa !1
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.12, %if.end
  store i32 0, i32* %i, align 4, !tbaa !23
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.25
  %36 = load i32, i32* %i, align 4, !tbaa !23
  %37 = load %struct.misc_struct*, %struct.misc_struct** %misc_vars.addr, align 8, !tbaa !1
  %num_comps26 = getelementptr inbounds %struct.misc_struct, %struct.misc_struct* %37, i32 0, i32 4
  %38 = load i32, i32* %num_comps26, align 4, !tbaa !52
  %cmp27 = icmp slt i32 %36, %38
  br i1 %cmp27, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %39 = load i8*, i8** %p, align 8, !tbaa !1
  %40 = load i32, i32* %i, align 4, !tbaa !23
  %idxprom = sext i32 %40 to i64
  %41 = load %struct.ptr_arrays*, %struct.ptr_arrays** %data_ptrs.addr, align 8, !tbaa !1
  %plane_data = getelementptr inbounds %struct.ptr_arrays, %struct.ptr_arrays* %41, i32 0, i32 2
  %arrayidx28 = getelementptr inbounds [4 x [4 x i8*]], [4 x [4 x i8*]]* %plane_data, i32 0, i64 2
  %arrayidx29 = getelementptr inbounds [4 x i8*], [4 x i8*]* %arrayidx28, i32 0, i64 %idxprom
  store i8* %39, i8** %arrayidx29, align 8, !tbaa !1
  %42 = load i32, i32* %i, align 4, !tbaa !23
  %idxprom30 = sext i32 %42 to i64
  %43 = load %struct.ptr_arrays*, %struct.ptr_arrays** %data_ptrs.addr, align 8, !tbaa !1
  %plane_data31 = getelementptr inbounds %struct.ptr_arrays, %struct.ptr_arrays* %43, i32 0, i32 2
  %arrayidx32 = getelementptr inbounds [4 x [4 x i8*]], [4 x [4 x i8*]]* %plane_data31, i32 0, i64 0
  %arrayidx33 = getelementptr inbounds [4 x i8*], [4 x i8*]* %arrayidx32, i32 0, i64 %idxprom30
  store i8* %39, i8** %arrayidx33, align 8, !tbaa !1
  %44 = load %struct.misc_struct*, %struct.misc_struct** %misc_vars.addr, align 8, !tbaa !1
  %plane_size = getelementptr inbounds %struct.misc_struct, %struct.misc_struct* %44, i32 0, i32 8
  %45 = load i32, i32* %plane_size, align 4, !tbaa !51
  %46 = load i8*, i8** %p, align 8, !tbaa !1
  %idx.ext34 = sext i32 %45 to i64
  %add.ptr35 = getelementptr inbounds i8, i8* %46, i64 %idx.ext34
  store i8* %add.ptr35, i8** %p, align 8, !tbaa !1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %47 = load i32, i32* %i, align 4, !tbaa !23
  %inc = add nsw i32 %47, 1
  store i32 %inc, i32* %i, align 4, !tbaa !23
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4, !tbaa !23
  br label %for.cond.36

for.cond.36:                                      ; preds = %for.inc.54, %for.end
  %48 = load i32, i32* %i, align 4, !tbaa !23
  %49 = load %struct.misc_struct*, %struct.misc_struct** %misc_vars.addr, align 8, !tbaa !1
  %num_comps37 = getelementptr inbounds %struct.misc_struct, %struct.misc_struct* %49, i32 0, i32 4
  %50 = load i32, i32* %num_comps37, align 4, !tbaa !52
  %cmp38 = icmp slt i32 %48, %50
  br i1 %cmp38, label %for.body.39, label %for.end.56

for.body.39:                                      ; preds = %for.cond.36
  %51 = load i8*, i8** %p, align 8, !tbaa !1
  %52 = load i32, i32* %i, align 4, !tbaa !23
  %idxprom40 = sext i32 %52 to i64
  %53 = load %struct.ptr_arrays*, %struct.ptr_arrays** %data_ptrs.addr, align 8, !tbaa !1
  %plane_data41 = getelementptr inbounds %struct.ptr_arrays, %struct.ptr_arrays* %53, i32 0, i32 2
  %arrayidx42 = getelementptr inbounds [4 x [4 x i8*]], [4 x [4 x i8*]]* %plane_data41, i32 0, i64 1
  %arrayidx43 = getelementptr inbounds [4 x i8*], [4 x i8*]* %arrayidx42, i32 0, i64 %idxprom40
  store i8* %51, i8** %arrayidx43, align 8, !tbaa !1
  %54 = load i8*, i8** %p, align 8, !tbaa !1
  %55 = load %struct.misc_struct*, %struct.misc_struct** %misc_vars.addr, align 8, !tbaa !1
  %plane_size44 = getelementptr inbounds %struct.misc_struct, %struct.misc_struct* %55, i32 0, i32 8
  %56 = load i32, i32* %plane_size44, align 4, !tbaa !51
  %idx.ext45 = sext i32 %56 to i64
  %add.ptr46 = getelementptr inbounds i8, i8* %54, i64 %idx.ext45
  %57 = load i32, i32* %i, align 4, !tbaa !23
  %idxprom47 = sext i32 %57 to i64
  %58 = load %struct.ptr_arrays*, %struct.ptr_arrays** %data_ptrs.addr, align 8, !tbaa !1
  %plane_data48 = getelementptr inbounds %struct.ptr_arrays, %struct.ptr_arrays* %58, i32 0, i32 2
  %arrayidx49 = getelementptr inbounds [4 x [4 x i8*]], [4 x [4 x i8*]]* %plane_data48, i32 0, i64 3
  %arrayidx50 = getelementptr inbounds [4 x i8*], [4 x i8*]* %arrayidx49, i32 0, i64 %idxprom47
  store i8* %add.ptr46, i8** %arrayidx50, align 8, !tbaa !1
  %59 = load %struct.misc_struct*, %struct.misc_struct** %misc_vars.addr, align 8, !tbaa !1
  %plane_size51 = getelementptr inbounds %struct.misc_struct, %struct.misc_struct* %59, i32 0, i32 8
  %60 = load i32, i32* %plane_size51, align 4, !tbaa !51
  %61 = load i8*, i8** %p, align 8, !tbaa !1
  %idx.ext52 = sext i32 %60 to i64
  %add.ptr53 = getelementptr inbounds i8, i8* %61, i64 %idx.ext52
  store i8* %add.ptr53, i8** %p, align 8, !tbaa !1
  br label %for.inc.54

for.inc.54:                                       ; preds = %for.body.39
  %62 = load i32, i32* %i, align 4, !tbaa !23
  %inc55 = add nsw i32 %62, 1
  store i32 %inc55, i32* %i, align 4, !tbaa !23
  br label %for.cond.36

for.end.56:                                       ; preds = %for.cond.36
  %63 = load i8*, i8** %p, align 8, !tbaa !1
  %64 = load %struct.ptr_arrays*, %struct.ptr_arrays** %data_ptrs.addr, align 8, !tbaa !1
  %out_data = getelementptr inbounds %struct.ptr_arrays, %struct.ptr_arrays* %64, i32 0, i32 4
  store i8* %63, i8** %out_data, align 8, !tbaa !53
  %65 = load %struct.misc_struct*, %struct.misc_struct** %misc_vars.addr, align 8, !tbaa !1
  %outbuff_size = getelementptr inbounds %struct.misc_struct, %struct.misc_struct* %65, i32 0, i32 14
  %66 = load i32, i32* %outbuff_size, align 4, !tbaa !101
  %67 = load i8*, i8** %p, align 8, !tbaa !1
  %idx.ext57 = sext i32 %66 to i64
  %add.ptr58 = getelementptr inbounds i8, i8* %67, i64 %idx.ext57
  store i8* %add.ptr58, i8** %p, align 8, !tbaa !1
  %68 = load i8*, i8** %p, align 8, !tbaa !1
  %69 = load %struct.ptr_arrays*, %struct.ptr_arrays** %data_ptrs.addr, align 8, !tbaa !1
  %data_c = getelementptr inbounds %struct.ptr_arrays, %struct.ptr_arrays* %69, i32 0, i32 1
  %arrayidx59 = getelementptr inbounds [4 x i8*], [4 x i8*]* %data_c, i32 0, i64 2
  store i8* %68, i8** %arrayidx59, align 8, !tbaa !1
  %70 = load %struct.ptr_arrays*, %struct.ptr_arrays** %data_ptrs.addr, align 8, !tbaa !1
  %data_c60 = getelementptr inbounds %struct.ptr_arrays, %struct.ptr_arrays* %70, i32 0, i32 1
  %arrayidx61 = getelementptr inbounds [4 x i8*], [4 x i8*]* %data_c60, i32 0, i64 1
  store i8* %68, i8** %arrayidx61, align 8, !tbaa !1
  %71 = load %struct.ptr_arrays*, %struct.ptr_arrays** %data_ptrs.addr, align 8, !tbaa !1
  %data_c62 = getelementptr inbounds %struct.ptr_arrays, %struct.ptr_arrays* %71, i32 0, i32 1
  %arrayidx63 = getelementptr inbounds [4 x i8*], [4 x i8*]* %data_c62, i32 0, i64 0
  store i8* %68, i8** %arrayidx63, align 8, !tbaa !1
  %72 = load i8*, i8** %p, align 8, !tbaa !1
  %73 = load %struct.misc_struct*, %struct.misc_struct** %misc_vars.addr, align 8, !tbaa !1
  %databuff_size_c = getelementptr inbounds %struct.misc_struct, %struct.misc_struct* %73, i32 0, i32 11
  %74 = load i32, i32* %databuff_size_c, align 4, !tbaa !100
  %idx.ext64 = sext i32 %74 to i64
  %add.ptr65 = getelementptr inbounds i8, i8* %72, i64 %idx.ext64
  %75 = load %struct.ptr_arrays*, %struct.ptr_arrays** %data_ptrs.addr, align 8, !tbaa !1
  %data_c66 = getelementptr inbounds %struct.ptr_arrays, %struct.ptr_arrays* %75, i32 0, i32 1
  %arrayidx67 = getelementptr inbounds [4 x i8*], [4 x i8*]* %data_c66, i32 0, i64 3
  store i8* %add.ptr65, i8** %arrayidx67, align 8, !tbaa !1
  %76 = load %struct.misc_struct*, %struct.misc_struct** %misc_vars.addr, align 8, !tbaa !1
  %bits_per_pixel68 = getelementptr inbounds %struct.misc_struct, %struct.misc_struct* %76, i32 0, i32 5
  %77 = load i32, i32* %bits_per_pixel68, align 4, !tbaa !95
  %cmp69 = icmp sgt i32 %77, 1
  br i1 %cmp69, label %if.then.70, label %if.end.74

if.then.70:                                       ; preds = %for.end.56
  %78 = load %struct.misc_struct*, %struct.misc_struct** %misc_vars.addr, align 8, !tbaa !1
  %databuff_size_c71 = getelementptr inbounds %struct.misc_struct, %struct.misc_struct* %78, i32 0, i32 11
  %79 = load i32, i32* %databuff_size_c71, align 4, !tbaa !100
  %80 = load i8*, i8** %p, align 8, !tbaa !1
  %idx.ext72 = sext i32 %79 to i64
  %add.ptr73 = getelementptr inbounds i8, i8* %80, i64 %idx.ext72
  store i8* %add.ptr73, i8** %p, align 8, !tbaa !1
  br label %if.end.74

if.end.74:                                        ; preds = %if.then.70, %for.end.56
  %81 = load %struct.misc_struct*, %struct.misc_struct** %misc_vars.addr, align 8, !tbaa !1
  %bits_per_pixel75 = getelementptr inbounds %struct.misc_struct, %struct.misc_struct* %81, i32 0, i32 5
  %82 = load i32, i32* %bits_per_pixel75, align 4, !tbaa !95
  %cmp76 = icmp sgt i32 %82, 4
  br i1 %cmp76, label %if.then.77, label %if.end.92

if.then.77:                                       ; preds = %if.end.74
  %83 = load i8*, i8** %p, align 8, !tbaa !1
  %84 = bitcast i8* %83 to i32*
  %85 = load %struct.misc_struct*, %struct.misc_struct** %misc_vars.addr, align 8, !tbaa !1
  %num_comps78 = getelementptr inbounds %struct.misc_struct, %struct.misc_struct* %85, i32 0, i32 4
  %86 = load i32, i32* %num_comps78, align 4, !tbaa !52
  %mul79 = mul nsw i32 %86, 2
  %idx.ext80 = sext i32 %mul79 to i64
  %add.ptr81 = getelementptr inbounds i32, i32* %84, i64 %idx.ext80
  %87 = load %struct.ptr_arrays*, %struct.ptr_arrays** %data_ptrs.addr, align 8, !tbaa !1
  %errors_c = getelementptr inbounds %struct.ptr_arrays, %struct.ptr_arrays* %87, i32 0, i32 7
  %arrayidx82 = getelementptr inbounds [2 x i32*], [2 x i32*]* %errors_c, i32 0, i64 0
  store i32* %add.ptr81, i32** %arrayidx82, align 8, !tbaa !1
  %88 = load %struct.ptr_arrays*, %struct.ptr_arrays** %data_ptrs.addr, align 8, !tbaa !1
  %errors_c83 = getelementptr inbounds %struct.ptr_arrays, %struct.ptr_arrays* %88, i32 0, i32 7
  %arrayidx84 = getelementptr inbounds [2 x i32*], [2 x i32*]* %errors_c83, i32 0, i64 0
  %89 = load i32*, i32** %arrayidx84, align 8, !tbaa !1
  %90 = load %struct.misc_struct*, %struct.misc_struct** %misc_vars.addr, align 8, !tbaa !1
  %databuff_size_c85 = getelementptr inbounds %struct.misc_struct, %struct.misc_struct* %90, i32 0, i32 11
  %91 = load i32, i32* %databuff_size_c85, align 4, !tbaa !100
  %idx.ext86 = sext i32 %91 to i64
  %add.ptr87 = getelementptr inbounds i32, i32* %89, i64 %idx.ext86
  %92 = load %struct.ptr_arrays*, %struct.ptr_arrays** %data_ptrs.addr, align 8, !tbaa !1
  %errors_c88 = getelementptr inbounds %struct.ptr_arrays, %struct.ptr_arrays* %92, i32 0, i32 7
  %arrayidx89 = getelementptr inbounds [2 x i32*], [2 x i32*]* %errors_c88, i32 0, i64 1
  store i32* %add.ptr87, i32** %arrayidx89, align 8, !tbaa !1
  %93 = load %struct.misc_struct*, %struct.misc_struct** %misc_vars.addr, align 8, !tbaa !1
  %errbuff_size_c = getelementptr inbounds %struct.misc_struct, %struct.misc_struct* %93, i32 0, i32 13
  %94 = load i32, i32* %errbuff_size_c, align 4, !tbaa !98
  %95 = load i8*, i8** %p, align 8, !tbaa !1
  %idx.ext90 = sext i32 %94 to i64
  %add.ptr91 = getelementptr inbounds i8, i8* %95, i64 %idx.ext90
  store i8* %add.ptr91, i8** %p, align 8, !tbaa !1
  br label %if.end.92

if.end.92:                                        ; preds = %if.then.77, %if.end.74
  store i32 0, i32* %i, align 4, !tbaa !23
  br label %for.cond.93

for.cond.93:                                      ; preds = %for.inc.106, %if.end.92
  %96 = load i32, i32* %i, align 4, !tbaa !23
  %97 = load %struct.misc_struct*, %struct.misc_struct** %misc_vars.addr, align 8, !tbaa !1
  %num_comps94 = getelementptr inbounds %struct.misc_struct, %struct.misc_struct* %97, i32 0, i32 4
  %98 = load i32, i32* %num_comps94, align 4, !tbaa !52
  %cmp95 = icmp slt i32 %96, %98
  br i1 %cmp95, label %for.body.96, label %for.end.108

for.body.96:                                      ; preds = %for.cond.93
  %99 = load i8*, i8** %p, align 8, !tbaa !1
  %100 = load i32, i32* %i, align 4, !tbaa !23
  %idxprom97 = sext i32 %100 to i64
  %101 = load %struct.ptr_arrays*, %struct.ptr_arrays** %data_ptrs.addr, align 8, !tbaa !1
  %plane_data_c = getelementptr inbounds %struct.ptr_arrays, %struct.ptr_arrays* %101, i32 0, i32 3
  %arrayidx98 = getelementptr inbounds [4 x [8 x i8*]], [4 x [8 x i8*]]* %plane_data_c, i32 0, i64 2
  %arrayidx99 = getelementptr inbounds [8 x i8*], [8 x i8*]* %arrayidx98, i32 0, i64 %idxprom97
  store i8* %99, i8** %arrayidx99, align 8, !tbaa !1
  %102 = load i32, i32* %i, align 4, !tbaa !23
  %idxprom100 = sext i32 %102 to i64
  %103 = load %struct.ptr_arrays*, %struct.ptr_arrays** %data_ptrs.addr, align 8, !tbaa !1
  %plane_data_c101 = getelementptr inbounds %struct.ptr_arrays, %struct.ptr_arrays* %103, i32 0, i32 3
  %arrayidx102 = getelementptr inbounds [4 x [8 x i8*]], [4 x [8 x i8*]]* %plane_data_c101, i32 0, i64 0
  %arrayidx103 = getelementptr inbounds [8 x i8*], [8 x i8*]* %arrayidx102, i32 0, i64 %idxprom100
  store i8* %99, i8** %arrayidx103, align 8, !tbaa !1
  %104 = load %struct.misc_struct*, %struct.misc_struct** %misc_vars.addr, align 8, !tbaa !1
  %plane_size_c = getelementptr inbounds %struct.misc_struct, %struct.misc_struct* %104, i32 0, i32 9
  %105 = load i32, i32* %plane_size_c, align 4, !tbaa !99
  %div = sdiv i32 %105, 2
  %106 = load i8*, i8** %p, align 8, !tbaa !1
  %idx.ext104 = sext i32 %div to i64
  %add.ptr105 = getelementptr inbounds i8, i8* %106, i64 %idx.ext104
  store i8* %add.ptr105, i8** %p, align 8, !tbaa !1
  br label %for.inc.106

for.inc.106:                                      ; preds = %for.body.96
  %107 = load i32, i32* %i, align 4, !tbaa !23
  %inc107 = add nsw i32 %107, 1
  store i32 %inc107, i32* %i, align 4, !tbaa !23
  br label %for.cond.93

for.end.108:                                      ; preds = %for.cond.93
  store i32 0, i32* %i, align 4, !tbaa !23
  br label %for.cond.109

for.cond.109:                                     ; preds = %for.inc.129, %for.end.108
  %108 = load i32, i32* %i, align 4, !tbaa !23
  %109 = load %struct.misc_struct*, %struct.misc_struct** %misc_vars.addr, align 8, !tbaa !1
  %num_comps110 = getelementptr inbounds %struct.misc_struct, %struct.misc_struct* %109, i32 0, i32 4
  %110 = load i32, i32* %num_comps110, align 4, !tbaa !52
  %cmp111 = icmp slt i32 %108, %110
  br i1 %cmp111, label %for.body.112, label %for.end.131

for.body.112:                                     ; preds = %for.cond.109
  %111 = load i8*, i8** %p, align 8, !tbaa !1
  %112 = load i32, i32* %i, align 4, !tbaa !23
  %idxprom113 = sext i32 %112 to i64
  %113 = load %struct.ptr_arrays*, %struct.ptr_arrays** %data_ptrs.addr, align 8, !tbaa !1
  %plane_data_c114 = getelementptr inbounds %struct.ptr_arrays, %struct.ptr_arrays* %113, i32 0, i32 3
  %arrayidx115 = getelementptr inbounds [4 x [8 x i8*]], [4 x [8 x i8*]]* %plane_data_c114, i32 0, i64 1
  %arrayidx116 = getelementptr inbounds [8 x i8*], [8 x i8*]* %arrayidx115, i32 0, i64 %idxprom113
  store i8* %111, i8** %arrayidx116, align 8, !tbaa !1
  %114 = load i8*, i8** %p, align 8, !tbaa !1
  %115 = load %struct.misc_struct*, %struct.misc_struct** %misc_vars.addr, align 8, !tbaa !1
  %plane_size_c117 = getelementptr inbounds %struct.misc_struct, %struct.misc_struct* %115, i32 0, i32 9
  %116 = load i32, i32* %plane_size_c117, align 4, !tbaa !99
  %div118 = sdiv i32 %116, 2
  %idx.ext119 = sext i32 %div118 to i64
  %add.ptr120 = getelementptr inbounds i8, i8* %114, i64 %idx.ext119
  %117 = load i32, i32* %i, align 4, !tbaa !23
  %idxprom121 = sext i32 %117 to i64
  %118 = load %struct.ptr_arrays*, %struct.ptr_arrays** %data_ptrs.addr, align 8, !tbaa !1
  %plane_data_c122 = getelementptr inbounds %struct.ptr_arrays, %struct.ptr_arrays* %118, i32 0, i32 3
  %arrayidx123 = getelementptr inbounds [4 x [8 x i8*]], [4 x [8 x i8*]]* %plane_data_c122, i32 0, i64 3
  %arrayidx124 = getelementptr inbounds [8 x i8*], [8 x i8*]* %arrayidx123, i32 0, i64 %idxprom121
  store i8* %add.ptr120, i8** %arrayidx124, align 8, !tbaa !1
  %119 = load %struct.misc_struct*, %struct.misc_struct** %misc_vars.addr, align 8, !tbaa !1
  %plane_size_c125 = getelementptr inbounds %struct.misc_struct, %struct.misc_struct* %119, i32 0, i32 9
  %120 = load i32, i32* %plane_size_c125, align 4, !tbaa !99
  %div126 = sdiv i32 %120, 2
  %121 = load i8*, i8** %p, align 8, !tbaa !1
  %idx.ext127 = sext i32 %div126 to i64
  %add.ptr128 = getelementptr inbounds i8, i8* %121, i64 %idx.ext127
  store i8* %add.ptr128, i8** %p, align 8, !tbaa !1
  br label %for.inc.129

for.inc.129:                                      ; preds = %for.body.112
  %122 = load i32, i32* %i, align 4, !tbaa !23
  %inc130 = add nsw i32 %122, 1
  store i32 %inc130, i32* %i, align 4, !tbaa !23
  br label %for.cond.109

for.end.131:                                      ; preds = %for.cond.109
  store i32 0, i32* %i, align 4, !tbaa !23
  br label %for.cond.132

for.cond.132:                                     ; preds = %for.inc.149, %for.end.131
  %123 = load i32, i32* %i, align 4, !tbaa !23
  %124 = load %struct.misc_struct*, %struct.misc_struct** %misc_vars.addr, align 8, !tbaa !1
  %num_comps133 = getelementptr inbounds %struct.misc_struct, %struct.misc_struct* %124, i32 0, i32 4
  %125 = load i32, i32* %num_comps133, align 4, !tbaa !52
  %cmp134 = icmp slt i32 %123, %125
  br i1 %cmp134, label %for.body.135, label %for.end.151

for.body.135:                                     ; preds = %for.cond.132
  %126 = load i8*, i8** %p, align 8, !tbaa !1
  %127 = load i32, i32* %i, align 4, !tbaa !23
  %add = add nsw i32 %127, 4
  %idxprom136 = sext i32 %add to i64
  %128 = load %struct.ptr_arrays*, %struct.ptr_arrays** %data_ptrs.addr, align 8, !tbaa !1
  %plane_data_c137 = getelementptr inbounds %struct.ptr_arrays, %struct.ptr_arrays* %128, i32 0, i32 3
  %arrayidx138 = getelementptr inbounds [4 x [8 x i8*]], [4 x [8 x i8*]]* %plane_data_c137, i32 0, i64 2
  %arrayidx139 = getelementptr inbounds [8 x i8*], [8 x i8*]* %arrayidx138, i32 0, i64 %idxprom136
  store i8* %126, i8** %arrayidx139, align 8, !tbaa !1
  %129 = load i32, i32* %i, align 4, !tbaa !23
  %add140 = add nsw i32 %129, 4
  %idxprom141 = sext i32 %add140 to i64
  %130 = load %struct.ptr_arrays*, %struct.ptr_arrays** %data_ptrs.addr, align 8, !tbaa !1
  %plane_data_c142 = getelementptr inbounds %struct.ptr_arrays, %struct.ptr_arrays* %130, i32 0, i32 3
  %arrayidx143 = getelementptr inbounds [4 x [8 x i8*]], [4 x [8 x i8*]]* %plane_data_c142, i32 0, i64 0
  %arrayidx144 = getelementptr inbounds [8 x i8*], [8 x i8*]* %arrayidx143, i32 0, i64 %idxprom141
  store i8* %126, i8** %arrayidx144, align 8, !tbaa !1
  %131 = load %struct.misc_struct*, %struct.misc_struct** %misc_vars.addr, align 8, !tbaa !1
  %plane_size_c145 = getelementptr inbounds %struct.misc_struct, %struct.misc_struct* %131, i32 0, i32 9
  %132 = load i32, i32* %plane_size_c145, align 4, !tbaa !99
  %div146 = sdiv i32 %132, 2
  %133 = load i8*, i8** %p, align 8, !tbaa !1
  %idx.ext147 = sext i32 %div146 to i64
  %add.ptr148 = getelementptr inbounds i8, i8* %133, i64 %idx.ext147
  store i8* %add.ptr148, i8** %p, align 8, !tbaa !1
  br label %for.inc.149

for.inc.149:                                      ; preds = %for.body.135
  %134 = load i32, i32* %i, align 4, !tbaa !23
  %inc150 = add nsw i32 %134, 1
  store i32 %inc150, i32* %i, align 4, !tbaa !23
  br label %for.cond.132

for.end.151:                                      ; preds = %for.cond.132
  store i32 0, i32* %i, align 4, !tbaa !23
  br label %for.cond.152

for.cond.152:                                     ; preds = %for.inc.174, %for.end.151
  %135 = load i32, i32* %i, align 4, !tbaa !23
  %136 = load %struct.misc_struct*, %struct.misc_struct** %misc_vars.addr, align 8, !tbaa !1
  %num_comps153 = getelementptr inbounds %struct.misc_struct, %struct.misc_struct* %136, i32 0, i32 4
  %137 = load i32, i32* %num_comps153, align 4, !tbaa !52
  %cmp154 = icmp slt i32 %135, %137
  br i1 %cmp154, label %for.body.155, label %for.end.176

for.body.155:                                     ; preds = %for.cond.152
  %138 = load i8*, i8** %p, align 8, !tbaa !1
  %139 = load i32, i32* %i, align 4, !tbaa !23
  %add156 = add nsw i32 %139, 4
  %idxprom157 = sext i32 %add156 to i64
  %140 = load %struct.ptr_arrays*, %struct.ptr_arrays** %data_ptrs.addr, align 8, !tbaa !1
  %plane_data_c158 = getelementptr inbounds %struct.ptr_arrays, %struct.ptr_arrays* %140, i32 0, i32 3
  %arrayidx159 = getelementptr inbounds [4 x [8 x i8*]], [4 x [8 x i8*]]* %plane_data_c158, i32 0, i64 1
  %arrayidx160 = getelementptr inbounds [8 x i8*], [8 x i8*]* %arrayidx159, i32 0, i64 %idxprom157
  store i8* %138, i8** %arrayidx160, align 8, !tbaa !1
  %141 = load i8*, i8** %p, align 8, !tbaa !1
  %142 = load %struct.misc_struct*, %struct.misc_struct** %misc_vars.addr, align 8, !tbaa !1
  %plane_size_c161 = getelementptr inbounds %struct.misc_struct, %struct.misc_struct* %142, i32 0, i32 9
  %143 = load i32, i32* %plane_size_c161, align 4, !tbaa !99
  %div162 = sdiv i32 %143, 2
  %idx.ext163 = sext i32 %div162 to i64
  %add.ptr164 = getelementptr inbounds i8, i8* %141, i64 %idx.ext163
  %144 = load i32, i32* %i, align 4, !tbaa !23
  %add165 = add nsw i32 %144, 4
  %idxprom166 = sext i32 %add165 to i64
  %145 = load %struct.ptr_arrays*, %struct.ptr_arrays** %data_ptrs.addr, align 8, !tbaa !1
  %plane_data_c167 = getelementptr inbounds %struct.ptr_arrays, %struct.ptr_arrays* %145, i32 0, i32 3
  %arrayidx168 = getelementptr inbounds [4 x [8 x i8*]], [4 x [8 x i8*]]* %plane_data_c167, i32 0, i64 3
  %arrayidx169 = getelementptr inbounds [8 x i8*], [8 x i8*]* %arrayidx168, i32 0, i64 %idxprom166
  store i8* %add.ptr164, i8** %arrayidx169, align 8, !tbaa !1
  %146 = load %struct.misc_struct*, %struct.misc_struct** %misc_vars.addr, align 8, !tbaa !1
  %plane_size_c170 = getelementptr inbounds %struct.misc_struct, %struct.misc_struct* %146, i32 0, i32 9
  %147 = load i32, i32* %plane_size_c170, align 4, !tbaa !99
  %div171 = sdiv i32 %147, 2
  %148 = load i8*, i8** %p, align 8, !tbaa !1
  %idx.ext172 = sext i32 %div171 to i64
  %add.ptr173 = getelementptr inbounds i8, i8* %148, i64 %idx.ext172
  store i8* %add.ptr173, i8** %p, align 8, !tbaa !1
  br label %for.inc.174

for.inc.174:                                      ; preds = %for.body.155
  %149 = load i32, i32* %i, align 4, !tbaa !23
  %inc175 = add nsw i32 %149, 1
  store i32 %inc175, i32* %i, align 4, !tbaa !23
  br label %for.cond.152

for.end.176:                                      ; preds = %for.cond.152
  store i32 0, i32* %i, align 4, !tbaa !23
  br label %for.cond.177

for.cond.177:                                     ; preds = %for.inc.187, %for.end.176
  %150 = load i32, i32* %i, align 4, !tbaa !23
  %151 = load %struct.misc_struct*, %struct.misc_struct** %misc_vars.addr, align 8, !tbaa !1
  %num_comps178 = getelementptr inbounds %struct.misc_struct, %struct.misc_struct* %151, i32 0, i32 4
  %152 = load i32, i32* %num_comps178, align 4, !tbaa !52
  %cmp179 = icmp slt i32 %150, %152
  br i1 %cmp179, label %for.body.180, label %for.end.189

for.body.180:                                     ; preds = %for.cond.177
  %153 = load i8*, i8** %p, align 8, !tbaa !1
  %154 = load i32, i32* %i, align 4, !tbaa !23
  %idxprom181 = sext i32 %154 to i64
  %155 = load %struct.ptr_arrays*, %struct.ptr_arrays** %data_ptrs.addr, align 8, !tbaa !1
  %test_data = getelementptr inbounds %struct.ptr_arrays, %struct.ptr_arrays* %155, i32 0, i32 5
  %arrayidx182 = getelementptr inbounds [4 x i8*], [4 x i8*]* %test_data, i32 0, i64 %idxprom181
  store i8* %153, i8** %arrayidx182, align 8, !tbaa !1
  %156 = load %struct.misc_struct*, %struct.misc_struct** %misc_vars.addr, align 8, !tbaa !1
  %plane_size_c183 = getelementptr inbounds %struct.misc_struct, %struct.misc_struct* %156, i32 0, i32 9
  %157 = load i32, i32* %plane_size_c183, align 4, !tbaa !99
  %div184 = sdiv i32 %157, 2
  %158 = load i8*, i8** %p, align 8, !tbaa !1
  %idx.ext185 = sext i32 %div184 to i64
  %add.ptr186 = getelementptr inbounds i8, i8* %158, i64 %idx.ext185
  store i8* %add.ptr186, i8** %p, align 8, !tbaa !1
  br label %for.inc.187

for.inc.187:                                      ; preds = %for.body.180
  %159 = load i32, i32* %i, align 4, !tbaa !23
  %inc188 = add nsw i32 %159, 1
  store i32 %inc188, i32* %i, align 4, !tbaa !23
  br label %for.cond.177

for.end.189:                                      ; preds = %for.cond.177
  %160 = load %struct.ptr_arrays*, %struct.ptr_arrays** %data_ptrs.addr, align 8, !tbaa !1
  %storage190 = getelementptr inbounds %struct.ptr_arrays, %struct.ptr_arrays* %160, i32 0, i32 8
  %161 = load i64*, i64** %storage190, align 8, !tbaa !34
  %162 = bitcast i64* %161 to i8*
  %163 = load %struct.misc_struct*, %struct.misc_struct** %misc_vars.addr, align 8, !tbaa !1
  %storage_size_words = getelementptr inbounds %struct.misc_struct, %struct.misc_struct* %163, i32 0, i32 19
  %164 = load i32, i32* %storage_size_words, align 4, !tbaa !32
  %conv = zext i32 %164 to i64
  %mul191 = mul i64 %conv, 8
  %call = call i8* @memset(i8* %162, i32 0, i64 %mul191) #5
  %165 = bitcast i8** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %165) #2
  %166 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %166) #2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @send_scan_lines(%struct.gx_device_printer_s* %pdev, %struct.ptr_arrays* %data_ptrs, %struct.misc_struct* %misc_vars, %struct.error_val_field* %error_values, %struct.Gamma* %gamma, %struct._IO_FILE* %prn_stream) #1 {
entry:
  %pdev.addr = alloca %struct.gx_device_printer_s*, align 8
  %data_ptrs.addr = alloca %struct.ptr_arrays*, align 8
  %misc_vars.addr = alloca %struct.misc_struct*, align 8
  %error_values.addr = alloca %struct.error_val_field*, align 8
  %gamma.addr = alloca %struct.Gamma*, align 8
  %prn_stream.addr = alloca %struct._IO_FILE*, align 8
  %lnum = alloca i32, align 4
  %lend = alloca i32, align 4
  %llen = alloca i32, align 4
  %num_blank_lines = alloca i32, align 4
  %rmask = alloca i64, align 8
  store %struct.gx_device_printer_s* %pdev, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  store %struct.ptr_arrays* %data_ptrs, %struct.ptr_arrays** %data_ptrs.addr, align 8, !tbaa !1
  store %struct.misc_struct* %misc_vars, %struct.misc_struct** %misc_vars.addr, align 8, !tbaa !1
  store %struct.error_val_field* %error_values, %struct.error_val_field** %error_values.addr, align 8, !tbaa !1
  store %struct.Gamma* %gamma, %struct.Gamma** %gamma.addr, align 8, !tbaa !1
  store %struct._IO_FILE* %prn_stream, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %0 = bitcast i32* %lnum to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast i32* %lend to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = bitcast i32* %llen to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  %3 = bitcast i32* %num_blank_lines to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  store i32 0, i32* %num_blank_lines, align 4, !tbaa !23
  %4 = bitcast i64* %rmask to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #2
  %5 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %5, i32 0, i32 13
  %6 = load i32, i32* %width, align 4, !tbaa !57
  %sub = sub nsw i32 0, %6
  %7 = load %struct.misc_struct*, %struct.misc_struct** %misc_vars.addr, align 8, !tbaa !1
  %storage_bpp = getelementptr inbounds %struct.misc_struct, %struct.misc_struct* %7, i32 0, i32 6
  %8 = load i32, i32* %storage_bpp, align 4, !tbaa !56
  %mul = mul nsw i32 %sub, %8
  %conv = sext i32 %mul to i64
  %and = and i64 %conv, 63
  %shl = shl i64 -1, %and
  store i64 %shl, i64* %rmask, align 8, !tbaa !65
  %9 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %9, i32 0, i32 14
  %10 = load i32, i32* %height, align 4, !tbaa !60
  %conv1 = sitofp i32 %10 to double
  %11 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %HWMargins = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %11, i32 0, i32 25
  %arrayidx = getelementptr inbounds [4 x float], [4 x float]* %HWMargins, i32 0, i64 3
  %12 = load float, float* %arrayidx, align 4, !tbaa !42
  %conv2 = fpext float %12 to double
  %div = fdiv double %conv2, 7.200000e+01
  %13 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %HWMargins3 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %13, i32 0, i32 25
  %arrayidx4 = getelementptr inbounds [4 x float], [4 x float]* %HWMargins3, i32 0, i64 1
  %14 = load float, float* %arrayidx4, align 4, !tbaa !42
  %conv5 = fpext float %14 to double
  %div6 = fdiv double %conv5, 7.200000e+01
  %add = fadd double %div, %div6
  %15 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %HWResolution = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %15, i32 0, i32 22
  %arrayidx7 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution, i32 0, i64 1
  %16 = load float, float* %arrayidx7, align 4, !tbaa !42
  %conv8 = fpext float %16 to double
  %mul9 = fmul double %add, %conv8
  %sub10 = fsub double %conv1, %mul9
  %conv11 = fptosi double %sub10 to i32
  store i32 %conv11, i32* %lend, align 4, !tbaa !23
  %17 = load %struct.error_val_field*, %struct.error_val_field** %error_values.addr, align 8, !tbaa !1
  %k = getelementptr inbounds %struct.error_val_field, %struct.error_val_field* %17, i32 0, i32 3
  store i32 0, i32* %k, align 4, !tbaa !102
  %18 = load %struct.error_val_field*, %struct.error_val_field** %error_values.addr, align 8, !tbaa !1
  %y = getelementptr inbounds %struct.error_val_field, %struct.error_val_field* %18, i32 0, i32 2
  store i32 0, i32* %y, align 4, !tbaa !104
  %19 = load %struct.error_val_field*, %struct.error_val_field** %error_values.addr, align 8, !tbaa !1
  %m = getelementptr inbounds %struct.error_val_field, %struct.error_val_field* %19, i32 0, i32 1
  store i32 0, i32* %m, align 4, !tbaa !105
  %20 = load %struct.error_val_field*, %struct.error_val_field** %error_values.addr, align 8, !tbaa !1
  %c = getelementptr inbounds %struct.error_val_field, %struct.error_val_field* %20, i32 0, i32 0
  store i32 0, i32* %c, align 4, !tbaa !106
  %21 = load %struct.misc_struct*, %struct.misc_struct** %misc_vars.addr, align 8, !tbaa !1
  %22 = load %struct.ptr_arrays*, %struct.ptr_arrays** %data_ptrs.addr, align 8, !tbaa !1
  call void @init_error_buffer(%struct.misc_struct* %21, %struct.ptr_arrays* %22) #6
  %23 = load %struct.misc_struct*, %struct.misc_struct** %misc_vars.addr, align 8, !tbaa !1
  %zero_row_count = getelementptr inbounds %struct.misc_struct, %struct.misc_struct* %23, i32 0, i32 18
  store i32 0, i32* %zero_row_count, align 4, !tbaa !107
  store i32 -1, i32* %lnum, align 4, !tbaa !23
  %24 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %25 = load %struct.ptr_arrays*, %struct.ptr_arrays** %data_ptrs.addr, align 8, !tbaa !1
  %26 = load %struct.misc_struct*, %struct.misc_struct** %misc_vars.addr, align 8, !tbaa !1
  %27 = load i64, i64* %rmask, align 8, !tbaa !65
  %call = call i32 @GetScanLine(%struct.gx_device_printer_s* %24, i32* %lnum, %struct.ptr_arrays* %25, %struct.misc_struct* %26, i64 %27) #6
  store i32 %call, i32* %llen, align 4, !tbaa !23
  br label %while.cond

while.cond:                                       ; preds = %if.end.67, %entry
  %28 = load i32, i32* %lnum, align 4, !tbaa !23
  %29 = load i32, i32* %lend, align 4, !tbaa !23
  %cmp = icmp slt i32 %28, %29
  br i1 %cmp, label %while.body, label %while.end.68

while.body:                                       ; preds = %while.cond
  store i32 0, i32* %num_blank_lines, align 4, !tbaa !23
  br label %while.cond.13

while.cond.13:                                    ; preds = %while.body.18, %while.body
  %30 = load i32, i32* %lnum, align 4, !tbaa !23
  %31 = load i32, i32* %lend, align 4, !tbaa !23
  %cmp14 = icmp slt i32 %30, %31
  br i1 %cmp14, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond.13
  %32 = load i32, i32* %llen, align 4, !tbaa !23
  %cmp16 = icmp eq i32 %32, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond.13
  %33 = phi i1 [ false, %while.cond.13 ], [ %cmp16, %land.rhs ]
  br i1 %33, label %while.body.18, label %while.end

while.body.18:                                    ; preds = %land.end
  %34 = load i32, i32* %num_blank_lines, align 4, !tbaa !23
  %inc = add nsw i32 %34, 1
  store i32 %inc, i32* %num_blank_lines, align 4, !tbaa !23
  %35 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %36 = load %struct.ptr_arrays*, %struct.ptr_arrays** %data_ptrs.addr, align 8, !tbaa !1
  %37 = load %struct.misc_struct*, %struct.misc_struct** %misc_vars.addr, align 8, !tbaa !1
  %38 = load i64, i64* %rmask, align 8, !tbaa !65
  %call19 = call i32 @GetScanLine(%struct.gx_device_printer_s* %35, i32* %lnum, %struct.ptr_arrays* %36, %struct.misc_struct* %37, i64 %38) #6
  store i32 %call19, i32* %llen, align 4, !tbaa !23
  br label %while.cond.13

while.end:                                        ; preds = %land.end
  %39 = load i32, i32* %lnum, align 4, !tbaa !23
  %40 = load i32, i32* %lend, align 4, !tbaa !23
  %cmp20 = icmp sge i32 %39, %40
  br i1 %cmp20, label %if.then, label %if.end

if.then:                                          ; preds = %while.end
  br label %while.end.68

if.end:                                           ; preds = %while.end
  %41 = load i32, i32* %num_blank_lines, align 4, !tbaa !23
  %cmp22 = icmp sgt i32 %41, 0
  br i1 %cmp22, label %if.then.24, label %if.end.41

if.then.24:                                       ; preds = %if.end
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %43 = load i32, i32* %num_blank_lines, align 4, !tbaa !23
  %44 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %45 = bitcast %struct.gx_device_printer_s* %44 to %struct.gx_device_cdj850_s*
  %yscal = getelementptr inbounds %struct.gx_device_cdj850_s, %struct.gx_device_cdj850_s* %45, i32 0, i32 75
  %46 = load i32, i32* %yscal, align 4, !tbaa !44
  %add25 = add nsw i32 %46, 1
  %div26 = sdiv i32 %43, %add25
  %call27 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %42, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.29, i32 0, i32 0), i32 %div26) #6
  %47 = load %struct.ptr_arrays*, %struct.ptr_arrays** %data_ptrs.addr, align 8, !tbaa !1
  %plane_data = getelementptr inbounds %struct.ptr_arrays, %struct.ptr_arrays* %47, i32 0, i32 2
  %arrayidx28 = getelementptr inbounds [4 x [4 x i8*]], [4 x [4 x i8*]]* %plane_data, i32 0, i64 0
  %arrayidx29 = getelementptr inbounds [4 x i8*], [4 x i8*]* %arrayidx28, i32 0, i64 0
  %48 = load i8*, i8** %arrayidx29, align 8, !tbaa !1
  %49 = load %struct.misc_struct*, %struct.misc_struct** %misc_vars.addr, align 8, !tbaa !1
  %plane_size = getelementptr inbounds %struct.misc_struct, %struct.misc_struct* %49, i32 0, i32 8
  %50 = load i32, i32* %plane_size, align 4, !tbaa !51
  %mul30 = mul nsw i32 %50, 2
  %51 = load %struct.misc_struct*, %struct.misc_struct** %misc_vars.addr, align 8, !tbaa !1
  %num_comps = getelementptr inbounds %struct.misc_struct, %struct.misc_struct* %51, i32 0, i32 4
  %52 = load i32, i32* %num_comps, align 4, !tbaa !52
  %mul31 = mul nsw i32 %mul30, %52
  %conv32 = sext i32 %mul31 to i64
  %call33 = call i8* @memset(i8* %48, i32 0, i64 %conv32) #5
  %53 = load %struct.ptr_arrays*, %struct.ptr_arrays** %data_ptrs.addr, align 8, !tbaa !1
  %plane_data_c = getelementptr inbounds %struct.ptr_arrays, %struct.ptr_arrays* %53, i32 0, i32 3
  %arrayidx34 = getelementptr inbounds [4 x [8 x i8*]], [4 x [8 x i8*]]* %plane_data_c, i32 0, i64 0
  %arrayidx35 = getelementptr inbounds [8 x i8*], [8 x i8*]* %arrayidx34, i32 0, i64 0
  %54 = load i8*, i8** %arrayidx35, align 8, !tbaa !1
  %55 = load %struct.misc_struct*, %struct.misc_struct** %misc_vars.addr, align 8, !tbaa !1
  %plane_size_c = getelementptr inbounds %struct.misc_struct, %struct.misc_struct* %55, i32 0, i32 9
  %56 = load i32, i32* %plane_size_c, align 4, !tbaa !99
  %mul36 = mul nsw i32 %56, 2
  %57 = load %struct.misc_struct*, %struct.misc_struct** %misc_vars.addr, align 8, !tbaa !1
  %num_comps37 = getelementptr inbounds %struct.misc_struct, %struct.misc_struct* %57, i32 0, i32 4
  %58 = load i32, i32* %num_comps37, align 4, !tbaa !52
  %mul38 = mul nsw i32 %mul36, %58
  %conv39 = sext i32 %mul38 to i64
  %call40 = call i8* @memset(i8* %54, i32 0, i64 %conv39) #5
  br label %if.end.41

if.end.41:                                        ; preds = %if.then.24, %if.end
  %59 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %60 = bitcast %struct.gx_device_printer_s* %59 to %struct.gx_device_cdj850_s*
  %yscal42 = getelementptr inbounds %struct.gx_device_cdj850_s, %struct.gx_device_cdj850_s* %60, i32 0, i32 75
  %61 = load i32, i32* %yscal42, align 4, !tbaa !44
  %tobool = icmp ne i32 %61, 0
  br i1 %tobool, label %land.lhs.true, label %if.end.48

land.lhs.true:                                    ; preds = %if.end.41
  %62 = load i32, i32* %lnum, align 4, !tbaa !23
  %and43 = and i32 %62, 1
  %cmp44 = icmp ne i32 %and43, 0
  br i1 %cmp44, label %if.then.46, label %if.end.48

if.then.46:                                       ; preds = %land.lhs.true
  %63 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call47 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %63, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30, i32 0, i32 0)) #6
  br label %if.end.48

if.end.48:                                        ; preds = %if.then.46, %land.lhs.true, %if.end.41
  br label %while.cond.49

while.cond.49:                                    ; preds = %while.body.56, %if.end.48
  %64 = load i32, i32* %lnum, align 4, !tbaa !23
  %65 = load i32, i32* %lend, align 4, !tbaa !23
  %cmp50 = icmp slt i32 %64, %65
  br i1 %cmp50, label %land.rhs.52, label %land.end.55

land.rhs.52:                                      ; preds = %while.cond.49
  %66 = load i32, i32* %llen, align 4, !tbaa !23
  %cmp53 = icmp ne i32 %66, 0
  br label %land.end.55

land.end.55:                                      ; preds = %land.rhs.52, %while.cond.49
  %67 = phi i1 [ false, %while.cond.49 ], [ %cmp53, %land.rhs.52 ]
  br i1 %67, label %while.body.56, label %while.end.58

while.body.56:                                    ; preds = %land.end.55
  %68 = load %struct.misc_struct*, %struct.misc_struct** %misc_vars.addr, align 8, !tbaa !1
  %is_color_data = getelementptr inbounds %struct.misc_struct, %struct.misc_struct* %68, i32 0, i32 21
  store i32 0, i32* %is_color_data, align 4, !tbaa !50
  %69 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %70 = bitcast %struct.gx_device_printer_s* %69 to %struct.gx_device_cdj850_s*
  %print_non_blank_lines = getelementptr inbounds %struct.gx_device_cdj850_s, %struct.gx_device_cdj850_s* %70, i32 0, i32 85
  %71 = load void (%struct.gx_device_printer_s*, %struct.ptr_arrays*, %struct.misc_struct*, %struct.error_val_field*, %struct.Gamma*, %struct._IO_FILE*)*, void (%struct.gx_device_printer_s*, %struct.ptr_arrays*, %struct.misc_struct*, %struct.error_val_field*, %struct.Gamma*, %struct._IO_FILE*)** %print_non_blank_lines, align 8, !tbaa !108
  %72 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %73 = load %struct.ptr_arrays*, %struct.ptr_arrays** %data_ptrs.addr, align 8, !tbaa !1
  %74 = load %struct.misc_struct*, %struct.misc_struct** %misc_vars.addr, align 8, !tbaa !1
  %75 = load %struct.error_val_field*, %struct.error_val_field** %error_values.addr, align 8, !tbaa !1
  %76 = load %struct.Gamma*, %struct.Gamma** %gamma.addr, align 8, !tbaa !1
  %77 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  call void %71(%struct.gx_device_printer_s* %72, %struct.ptr_arrays* %73, %struct.misc_struct* %74, %struct.error_val_field* %75, %struct.Gamma* %76, %struct._IO_FILE* %77) #6
  %78 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %79 = load %struct.ptr_arrays*, %struct.ptr_arrays** %data_ptrs.addr, align 8, !tbaa !1
  %80 = load %struct.misc_struct*, %struct.misc_struct** %misc_vars.addr, align 8, !tbaa !1
  %81 = load i64, i64* %rmask, align 8, !tbaa !65
  %call57 = call i32 @GetScanLine(%struct.gx_device_printer_s* %78, i32* %lnum, %struct.ptr_arrays* %79, %struct.misc_struct* %80, i64 %81) #6
  store i32 %call57, i32* %llen, align 4, !tbaa !23
  br label %while.cond.49

while.end.58:                                     ; preds = %land.end.55
  %82 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %83 = bitcast %struct.gx_device_printer_s* %82 to %struct.gx_device_cdj850_s*
  %yscal59 = getelementptr inbounds %struct.gx_device_cdj850_s, %struct.gx_device_cdj850_s* %83, i32 0, i32 75
  %84 = load i32, i32* %yscal59, align 4, !tbaa !44
  %tobool60 = icmp ne i32 %84, 0
  br i1 %tobool60, label %land.lhs.true.61, label %if.end.67

land.lhs.true.61:                                 ; preds = %while.end.58
  %85 = load i32, i32* %lnum, align 4, !tbaa !23
  %and62 = and i32 %85, 1
  %cmp63 = icmp ne i32 %and62, 0
  br i1 %cmp63, label %if.then.65, label %if.end.67

if.then.65:                                       ; preds = %land.lhs.true.61
  %86 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %87 = bitcast %struct.gx_device_printer_s* %86 to %struct.gx_device_cdj850_s*
  %print_non_blank_lines66 = getelementptr inbounds %struct.gx_device_cdj850_s, %struct.gx_device_cdj850_s* %87, i32 0, i32 85
  %88 = load void (%struct.gx_device_printer_s*, %struct.ptr_arrays*, %struct.misc_struct*, %struct.error_val_field*, %struct.Gamma*, %struct._IO_FILE*)*, void (%struct.gx_device_printer_s*, %struct.ptr_arrays*, %struct.misc_struct*, %struct.error_val_field*, %struct.Gamma*, %struct._IO_FILE*)** %print_non_blank_lines66, align 8, !tbaa !108
  %89 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %90 = load %struct.ptr_arrays*, %struct.ptr_arrays** %data_ptrs.addr, align 8, !tbaa !1
  %91 = load %struct.misc_struct*, %struct.misc_struct** %misc_vars.addr, align 8, !tbaa !1
  %92 = load %struct.error_val_field*, %struct.error_val_field** %error_values.addr, align 8, !tbaa !1
  %93 = load %struct.Gamma*, %struct.Gamma** %gamma.addr, align 8, !tbaa !1
  %94 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  call void %88(%struct.gx_device_printer_s* %89, %struct.ptr_arrays* %90, %struct.misc_struct* %91, %struct.error_val_field* %92, %struct.Gamma* %93, %struct._IO_FILE* %94) #6
  br label %if.end.67

if.end.67:                                        ; preds = %if.then.65, %land.lhs.true.61, %while.end.58
  br label %while.cond

while.end.68:                                     ; preds = %if.then, %while.cond
  %95 = bitcast i64* %rmask to i8*
  call void @llvm.lifetime.end(i64 8, i8* %95) #2
  %96 = bitcast i32* %num_blank_lines to i8*
  call void @llvm.lifetime.end(i64 4, i8* %96) #2
  %97 = bitcast i32* %llen to i8*
  call void @llvm.lifetime.end(i64 4, i8* %97) #2
  %98 = bitcast i32* %lend to i8*
  call void @llvm.lifetime.end(i64 4, i8* %98) #2
  %99 = bitcast i32* %lnum to i8*
  call void @llvm.lifetime.end(i64 4, i8* %99) #2
  ret void
}

declare i32 @gx_device_raster(%struct.gx_device_s*, i32) #0

; Function Attrs: nounwind
declare i8* @memset(i8*, i32, i64) #3

; Function Attrs: nounwind uwtable
define internal void @init_error_buffer(%struct.misc_struct* %misc_vars, %struct.ptr_arrays* %data_ptrs) #1 {
entry:
  %misc_vars.addr = alloca %struct.misc_struct*, align 8
  %data_ptrs.addr = alloca %struct.ptr_arrays*, align 8
  %i = alloca i32, align 4
  %ep = alloca i32*, align 8
  %epc = alloca i32*, align 8
  store %struct.misc_struct* %misc_vars, %struct.misc_struct** %misc_vars.addr, align 8, !tbaa !1
  store %struct.ptr_arrays* %data_ptrs, %struct.ptr_arrays** %data_ptrs.addr, align 8, !tbaa !1
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast i32** %ep to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #2
  %2 = bitcast i32** %epc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #2
  %3 = load %struct.ptr_arrays*, %struct.ptr_arrays** %data_ptrs.addr, align 8, !tbaa !1
  %errors = getelementptr inbounds %struct.ptr_arrays, %struct.ptr_arrays* %3, i32 0, i32 6
  %arrayidx = getelementptr inbounds [2 x i32*], [2 x i32*]* %errors, i32 0, i64 0
  %4 = load i32*, i32** %arrayidx, align 8, !tbaa !1
  store i32* %4, i32** %ep, align 8, !tbaa !1
  %5 = load %struct.ptr_arrays*, %struct.ptr_arrays** %data_ptrs.addr, align 8, !tbaa !1
  %errors_c = getelementptr inbounds %struct.ptr_arrays, %struct.ptr_arrays* %5, i32 0, i32 7
  %arrayidx1 = getelementptr inbounds [2 x i32*], [2 x i32*]* %errors_c, i32 0, i64 0
  %6 = load i32*, i32** %arrayidx1, align 8, !tbaa !1
  store i32* %6, i32** %epc, align 8, !tbaa !1
  %7 = load %struct.misc_struct*, %struct.misc_struct** %misc_vars.addr, align 8, !tbaa !1
  %bits_per_pixel = getelementptr inbounds %struct.misc_struct, %struct.misc_struct* %7, i32 0, i32 5
  %8 = load i32, i32* %bits_per_pixel, align 4, !tbaa !95
  %cmp = icmp sgt i32 %8, 4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %i, align 4, !tbaa !23
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %9 = load i32, i32* %i, align 4, !tbaa !23
  %10 = load %struct.misc_struct*, %struct.misc_struct** %misc_vars.addr, align 8, !tbaa !1
  %databuff_size = getelementptr inbounds %struct.misc_struct, %struct.misc_struct* %10, i32 0, i32 10
  %11 = load i32, i32* %databuff_size, align 4, !tbaa !49
  %cmp2 = icmp slt i32 %9, %11
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call = call i32 @rand() #5
  %shl = shl i32 %call, 19
  %rem = srem i32 %shl, 67108864
  %sub = sub nsw i32 %rem, 33554432
  %12 = load i32*, i32** %ep, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i32, i32* %12, i32 1
  store i32* %incdec.ptr, i32** %ep, align 8, !tbaa !1
  store i32 %sub, i32* %12, align 4, !tbaa !23
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %13 = load i32, i32* %i, align 4, !tbaa !23
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %i, align 4, !tbaa !23
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4, !tbaa !23
  br label %for.cond.3

for.cond.3:                                       ; preds = %for.inc.11, %for.end
  %14 = load i32, i32* %i, align 4, !tbaa !23
  %15 = load %struct.misc_struct*, %struct.misc_struct** %misc_vars.addr, align 8, !tbaa !1
  %databuff_size_c = getelementptr inbounds %struct.misc_struct, %struct.misc_struct* %15, i32 0, i32 11
  %16 = load i32, i32* %databuff_size_c, align 4, !tbaa !100
  %cmp4 = icmp slt i32 %14, %16
  br i1 %cmp4, label %for.body.5, label %for.end.13

for.body.5:                                       ; preds = %for.cond.3
  %call6 = call i32 @rand() #5
  %shl7 = shl i32 %call6, 19
  %rem8 = srem i32 %shl7, 33554432
  %sub9 = sub nsw i32 %rem8, 16777216
  %17 = load i32*, i32** %epc, align 8, !tbaa !1
  %incdec.ptr10 = getelementptr inbounds i32, i32* %17, i32 1
  store i32* %incdec.ptr10, i32** %epc, align 8, !tbaa !1
  store i32 %sub9, i32* %17, align 4, !tbaa !23
  br label %for.inc.11

for.inc.11:                                       ; preds = %for.body.5
  %18 = load i32, i32* %i, align 4, !tbaa !23
  %inc12 = add nsw i32 %18, 1
  store i32 %inc12, i32* %i, align 4, !tbaa !23
  br label %for.cond.3

for.end.13:                                       ; preds = %for.cond.3
  br label %if.end

if.end:                                           ; preds = %for.end.13, %entry
  %19 = bitcast i32** %epc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %19) #2
  %20 = bitcast i32** %ep to i8*
  call void @llvm.lifetime.end(i64 8, i8* %20) #2
  %21 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %21) #2
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @GetScanLine(%struct.gx_device_printer_s* %pdev, i32* %lnum, %struct.ptr_arrays* %data_ptrs, %struct.misc_struct* %misc_vars, i64 %rmask) #1 {
entry:
  %pdev.addr = alloca %struct.gx_device_printer_s*, align 8
  %lnum.addr = alloca i32*, align 8
  %data_ptrs.addr = alloca %struct.ptr_arrays*, align 8
  %misc_vars.addr = alloca %struct.misc_struct*, align 8
  %rmask.addr = alloca i64, align 8
  %data_words = alloca i64*, align 8
  %end_data = alloca i64*, align 8
  store %struct.gx_device_printer_s* %pdev, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  store i32* %lnum, i32** %lnum.addr, align 8, !tbaa !1
  store %struct.ptr_arrays* %data_ptrs, %struct.ptr_arrays** %data_ptrs.addr, align 8, !tbaa !1
  store %struct.misc_struct* %misc_vars, %struct.misc_struct** %misc_vars.addr, align 8, !tbaa !1
  store i64 %rmask, i64* %rmask.addr, align 8, !tbaa !65
  %0 = bitcast i64** %data_words to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.misc_struct*, %struct.misc_struct** %misc_vars.addr, align 8, !tbaa !1
  %scan = getelementptr inbounds %struct.misc_struct, %struct.misc_struct* %1, i32 0, i32 15
  %2 = load i32, i32* %scan, align 4, !tbaa !48
  %idxprom = sext i32 %2 to i64
  %3 = load %struct.ptr_arrays*, %struct.ptr_arrays** %data_ptrs.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.ptr_arrays, %struct.ptr_arrays* %3, i32 0, i32 0
  %arrayidx = getelementptr inbounds [4 x i8*], [4 x i8*]* %data, i32 0, i64 %idxprom
  %4 = load i8*, i8** %arrayidx, align 8, !tbaa !1
  %5 = bitcast i8* %4 to i64*
  store i64* %5, i64** %data_words, align 8, !tbaa !1
  %6 = bitcast i64** %end_data to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #2
  %7 = load i64*, i64** %data_words, align 8, !tbaa !1
  %8 = load %struct.misc_struct*, %struct.misc_struct** %misc_vars.addr, align 8, !tbaa !1
  %line_size_words = getelementptr inbounds %struct.misc_struct, %struct.misc_struct* %8, i32 0, i32 2
  %9 = load i32, i32* %line_size_words, align 4, !tbaa !93
  %idx.ext = sext i32 %9 to i64
  %add.ptr = getelementptr inbounds i64, i64* %7, i64 %idx.ext
  store i64* %add.ptr, i64** %end_data, align 8, !tbaa !1
  %10 = load i32*, i32** %lnum.addr, align 8, !tbaa !1
  %11 = load i32, i32* %10, align 4, !tbaa !23
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %10, align 4, !tbaa !23
  %12 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %13 = load i32*, i32** %lnum.addr, align 8, !tbaa !1
  %14 = load i32, i32* %13, align 4, !tbaa !23
  %15 = load i64*, i64** %data_words, align 8, !tbaa !1
  %16 = bitcast i64* %15 to i8*
  %17 = load %struct.misc_struct*, %struct.misc_struct** %misc_vars.addr, align 8, !tbaa !1
  %line_size = getelementptr inbounds %struct.misc_struct, %struct.misc_struct* %17, i32 0, i32 0
  %18 = load i32, i32* %line_size, align 4, !tbaa !91
  %call = call i32 @gdev_prn_copy_scan_lines(%struct.gx_device_printer_s* %12, i32 %14, i8* %16, i32 %18) #6
  %19 = load %struct.misc_struct*, %struct.misc_struct** %misc_vars.addr, align 8, !tbaa !1
  %scan1 = getelementptr inbounds %struct.misc_struct, %struct.misc_struct* %19, i32 0, i32 15
  %20 = load i32, i32* %scan1, align 4, !tbaa !48
  %tobool = icmp ne i32 %20, 0
  %lnot = xor i1 %tobool, true
  %lnot.ext = zext i1 %lnot to i32
  %21 = load %struct.misc_struct*, %struct.misc_struct** %misc_vars.addr, align 8, !tbaa !1
  %scan2 = getelementptr inbounds %struct.misc_struct, %struct.misc_struct* %21, i32 0, i32 15
  store i32 %lnot.ext, i32* %scan2, align 4, !tbaa !48
  %22 = load i32*, i32** %lnum.addr, align 8, !tbaa !1
  %23 = load i32, i32* %22, align 4, !tbaa !23
  %and = and i32 %23, 1
  %cmp = icmp ne i32 %and, 0
  %conv = zext i1 %cmp to i32
  %24 = load %struct.misc_struct*, %struct.misc_struct** %misc_vars.addr, align 8, !tbaa !1
  %is_two_pass = getelementptr inbounds %struct.misc_struct, %struct.misc_struct* %24, i32 0, i32 17
  store i32 %conv, i32* %is_two_pass, align 4, !tbaa !54
  %25 = load i64, i64* %rmask.addr, align 8, !tbaa !65
  %26 = load i64*, i64** %end_data, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds i64, i64* %26, i64 -1
  %27 = load i64, i64* %arrayidx3, align 8, !tbaa !65
  %and4 = and i64 %27, %25
  store i64 %and4, i64* %arrayidx3, align 8, !tbaa !65
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %28 = load i64*, i64** %end_data, align 8, !tbaa !1
  %29 = load i64*, i64** %data_words, align 8, !tbaa !1
  %cmp5 = icmp ugt i64* %28, %29
  br i1 %cmp5, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %30 = load i64*, i64** %end_data, align 8, !tbaa !1
  %arrayidx7 = getelementptr inbounds i64, i64* %30, i64 -1
  %31 = load i64, i64* %arrayidx7, align 8, !tbaa !65
  %cmp8 = icmp eq i64 %31, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %32 = phi i1 [ false, %while.cond ], [ %cmp8, %land.rhs ]
  br i1 %32, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %33 = load i64*, i64** %end_data, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i64, i64* %33, i32 -1
  store i64* %incdec.ptr, i64** %end_data, align 8, !tbaa !1
  br label %while.cond

while.end:                                        ; preds = %land.end
  %34 = load i64*, i64** %end_data, align 8, !tbaa !1
  %35 = load i64*, i64** %data_words, align 8, !tbaa !1
  %sub.ptr.lhs.cast = ptrtoint i64* %34 to i64
  %sub.ptr.rhs.cast = ptrtoint i64* %35 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  %conv10 = trunc i64 %sub.ptr.div to i32
  %36 = bitcast i64** %end_data to i8*
  call void @llvm.lifetime.end(i64 8, i8* %36) #2
  %37 = bitcast i64** %data_words to i8*
  call void @llvm.lifetime.end(i64 8, i8* %37) #2
  ret i32 %conv10
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #0

; Function Attrs: nounwind
declare i32 @rand() #3

declare i32 @gdev_prn_copy_scan_lines(%struct.gx_device_printer_s*, i32, i8*, i32) #0

; Function Attrs: nounwind uwtable
define internal i32 @IsScanlineDirty(i8* %pScanline, i32 %iWidth) #1 {
entry:
  %retval = alloca i32, align 4
  %pScanline.addr = alloca i8*, align 8
  %iWidth.addr = alloca i32, align 4
  %pCurr = alloca i8*, align 8
  %pStop = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  store i8* %pScanline, i8** %pScanline.addr, align 8, !tbaa !1
  store i32 %iWidth, i32* %iWidth.addr, align 4, !tbaa !23
  %0 = bitcast i8** %pCurr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load i8*, i8** %pScanline.addr, align 8, !tbaa !1
  store i8* %1, i8** %pCurr, align 8, !tbaa !1
  %2 = bitcast i8** %pStop to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #2
  %3 = load i8*, i8** %pCurr, align 8, !tbaa !1
  %4 = load i32, i32* %iWidth.addr, align 4, !tbaa !23
  %idx.ext = sext i32 %4 to i64
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %idx.ext
  store i8* %add.ptr, i8** %pStop, align 8, !tbaa !1
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %5 = load i8*, i8** %pStop, align 8, !tbaa !1
  %6 = load i8*, i8** %pCurr, align 8, !tbaa !1
  %sub.ptr.lhs.cast = ptrtoint i8* %5 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %6 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %tobool = icmp ne i64 %sub.ptr.sub, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %7 = load i8*, i8** %pCurr, align 8, !tbaa !1
  %8 = load i8, i8* %7, align 1, !tbaa !24
  %conv = zext i8 %8 to i32
  %sub = sub nsw i32 %conv, 255
  %tobool1 = icmp ne i32 %sub, 0
  br i1 %tobool1, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %while.body
  %9 = load i8*, i8** %pCurr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %9, i32 1
  store i8* %incdec.ptr, i8** %pCurr, align 8, !tbaa !1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.then
  %10 = bitcast i8** %pStop to i8*
  call void @llvm.lifetime.end(i64 8, i8* %10) #2
  %11 = bitcast i8** %pCurr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %11) #2
  %12 = load i32, i32* %retval
  ret i32 %12
}

; Function Attrs: nounwind uwtable
define internal i32 @Mode10(i32 %planeWidthInPixels, i8* %pbyColorScanPtr, i8* %pbyColorSeedPtr, i8* %pbyColorOutputPtr) #1 {
entry:
  %retval = alloca i32, align 4
  %planeWidthInPixels.addr = alloca i32, align 4
  %pbyColorScanPtr.addr = alloca i8*, align 8
  %pbyColorSeedPtr.addr = alloca i8*, align 8
  %pbyColorOutputPtr.addr = alloca i8*, align 8
  %curPixel = alloca i32, align 4
  %seedRowPixelCopyCount = alloca i32, align 4
  %cachedColor = alloca i32, align 4
  %lastPixel = alloca i32, align 4
  %realLastPixel = alloca i32, align 4
  %temp1 = alloca i32, align 4
  %temp2 = alloca i32, align 4
  %temp3 = alloca i32, align 4
  %curPtr = alloca i8*, align 8
  %compressedDataPtr = alloca i8*, align 8
  %seedPtr = alloca i8*, align 8
  %compressedDataStart = alloca i8*, align 8
  %CMDByte = alloca i8, align 1
  %replacementCount = alloca i32, align 4
  %pixelSource = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %RLERun = alloca i32, align 4
  %tempPixel = alloca i32, align 4
  %tempPixel2 = alloca i32, align 4
  %totalReplacementCount = alloca i32, align 4
  %upwardPixelCount = alloca i32, align 4
  %temp = alloca i8, align 1
  %number = alloca i32, align 4
  %tempCount = alloca i32, align 4
  %compressedPixel = alloca i32, align 4
  %uncompressedPixel = alloca i32, align 4
  %temp245 = alloca i8, align 1
  %number246 = alloca i32, align 4
  %tempCount272 = alloca i32, align 4
  %compressedPixel274 = alloca i32, align 4
  %uncompressedPixel284 = alloca i32, align 4
  %temp300 = alloca i8, align 1
  %number301 = alloca i32, align 4
  store i32 %planeWidthInPixels, i32* %planeWidthInPixels.addr, align 4, !tbaa !23
  store i8* %pbyColorScanPtr, i8** %pbyColorScanPtr.addr, align 8, !tbaa !1
  store i8* %pbyColorSeedPtr, i8** %pbyColorSeedPtr.addr, align 8, !tbaa !1
  store i8* %pbyColorOutputPtr, i8** %pbyColorOutputPtr.addr, align 8, !tbaa !1
  %0 = bitcast i32* %curPixel to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  store i32 0, i32* %curPixel, align 4, !tbaa !23
  %1 = bitcast i32* %seedRowPixelCopyCount to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = bitcast i32* %cachedColor to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  store i32 16777214, i32* %cachedColor, align 4, !tbaa !23
  %3 = bitcast i32* %lastPixel to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = load i32, i32* %planeWidthInPixels.addr, align 4, !tbaa !23
  %sub = sub i32 %4, 1
  store i32 %sub, i32* %lastPixel, align 4, !tbaa !23
  %5 = bitcast i32* %realLastPixel to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  store i32 0, i32* %realLastPixel, align 4, !tbaa !23
  %6 = bitcast i32* %temp1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = bitcast i32* %temp2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #2
  %8 = bitcast i32* %temp3 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #2
  %9 = bitcast i8** %curPtr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #2
  %10 = load i8*, i8** %pbyColorScanPtr.addr, align 8, !tbaa !1
  store i8* %10, i8** %curPtr, align 8, !tbaa !1
  %11 = bitcast i8** %compressedDataPtr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #2
  %12 = load i8*, i8** %pbyColorOutputPtr.addr, align 8, !tbaa !1
  store i8* %12, i8** %compressedDataPtr, align 8, !tbaa !1
  %13 = bitcast i8** %seedPtr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #2
  %14 = load i8*, i8** %pbyColorSeedPtr.addr, align 8, !tbaa !1
  store i8* %14, i8** %seedPtr, align 8, !tbaa !1
  %15 = bitcast i8** %compressedDataStart to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15) #2
  %16 = load i8*, i8** %compressedDataPtr, align 8, !tbaa !1
  store i8* %16, i8** %compressedDataStart, align 8, !tbaa !1
  %17 = load i8*, i8** %curPtr, align 8, !tbaa !1
  %18 = load i32, i32* %lastPixel, align 4, !tbaa !23
  %call = call i32 @getPixel(i8* %17, i32 %18) #6
  store i32 %call, i32* %realLastPixel, align 4, !tbaa !23
  %19 = load i8*, i8** %curPtr, align 8, !tbaa !1
  %20 = load i32, i32* %lastPixel, align 4, !tbaa !23
  %sub1 = sub i32 %20, 1
  %call2 = call i32 @getPixel(i8* %19, i32 %sub1) #6
  store i32 %call2, i32* %temp1, align 4, !tbaa !23
  %21 = load i8*, i8** %seedPtr, align 8, !tbaa !1
  %22 = load i32, i32* %lastPixel, align 4, !tbaa !23
  %call3 = call i32 @getPixel(i8* %21, i32 %22) #6
  store i32 %call3, i32* %temp2, align 4, !tbaa !23
  %23 = load i32, i32* %realLastPixel, align 4, !tbaa !23
  store i32 %23, i32* %temp3, align 4, !tbaa !23
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %24 = load i32, i32* %temp1, align 4, !tbaa !23
  %25 = load i32, i32* %temp3, align 4, !tbaa !23
  %cmp = icmp eq i32 %24, %25
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %while.cond
  %26 = load i32, i32* %temp2, align 4, !tbaa !23
  %27 = load i32, i32* %temp3, align 4, !tbaa !23
  %cmp4 = icmp eq i32 %26, %27
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %while.cond
  %28 = phi i1 [ true, %while.cond ], [ %cmp4, %lor.rhs ]
  br i1 %28, label %while.body, label %while.end

while.body:                                       ; preds = %lor.end
  %29 = load i8*, i8** %curPtr, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %29, i64 1
  %30 = load i32, i32* %lastPixel, align 4, !tbaa !23
  %mul = mul i32 %30, 3
  %idx.ext = zext i32 %mul to i64
  %add.ptr5 = getelementptr inbounds i8, i8* %add.ptr, i64 %idx.ext
  %31 = load i8, i8* %add.ptr5, align 1, !tbaa !24
  %conv = zext i8 %31 to i32
  %add = add nsw i32 %conv, 1
  %conv6 = trunc i32 %add to i8
  store i8 %conv6, i8* %add.ptr5, align 1, !tbaa !24
  %32 = load i8*, i8** %curPtr, align 8, !tbaa !1
  %33 = load i32, i32* %lastPixel, align 4, !tbaa !23
  %call7 = call i32 @getPixel(i8* %32, i32 %33) #6
  store i32 %call7, i32* %temp3, align 4, !tbaa !23
  br label %while.cond

while.end:                                        ; preds = %lor.end
  br label %do.body

do.body:                                          ; preds = %do.cond.326, %while.end
  call void @llvm.lifetime.start(i64 1, i8* %CMDByte) #2
  store i8 0, i8* %CMDByte, align 1, !tbaa !24
  %34 = bitcast i32* %replacementCount to i8*
  call void @llvm.lifetime.start(i64 4, i8* %34) #2
  store i32 0, i32* %replacementCount, align 4, !tbaa !23
  %35 = bitcast i32* %pixelSource to i8*
  call void @llvm.lifetime.start(i64 4, i8* %35) #2
  store i32 0, i32* %pixelSource, align 4, !tbaa !23
  %36 = load i32, i32* %curPixel, align 4, !tbaa !23
  store i32 %36, i32* %seedRowPixelCopyCount, align 4, !tbaa !23
  br label %while.cond.8

while.cond.8:                                     ; preds = %while.body.13, %do.body
  %37 = load i8*, i8** %seedPtr, align 8, !tbaa !1
  %38 = load i32, i32* %curPixel, align 4, !tbaa !23
  %call9 = call i32 @getPixel(i8* %37, i32 %38) #6
  %39 = load i8*, i8** %curPtr, align 8, !tbaa !1
  %40 = load i32, i32* %curPixel, align 4, !tbaa !23
  %call10 = call i32 @getPixel(i8* %39, i32 %40) #6
  %cmp11 = icmp eq i32 %call9, %call10
  br i1 %cmp11, label %while.body.13, label %while.end.14

while.body.13:                                    ; preds = %while.cond.8
  %41 = load i32, i32* %curPixel, align 4, !tbaa !23
  %inc = add i32 %41, 1
  store i32 %inc, i32* %curPixel, align 4, !tbaa !23
  br label %while.cond.8

while.end.14:                                     ; preds = %while.cond.8
  %42 = load i32, i32* %curPixel, align 4, !tbaa !23
  %43 = load i32, i32* %seedRowPixelCopyCount, align 4, !tbaa !23
  %sub15 = sub i32 %42, %43
  store i32 %sub15, i32* %seedRowPixelCopyCount, align 4, !tbaa !23
  %44 = load i32, i32* %curPixel, align 4, !tbaa !23
  %45 = load i32, i32* %lastPixel, align 4, !tbaa !23
  %cmp16 = icmp eq i32 %44, %45
  br i1 %cmp16, label %if.then, label %if.else.24

if.then:                                          ; preds = %while.end.14
  %46 = load i8*, i8** %curPtr, align 8, !tbaa !1
  %47 = load i32, i32* %lastPixel, align 4, !tbaa !23
  %48 = load i32, i32* %realLastPixel, align 4, !tbaa !23
  call void @putPixel(i8* %46, i32 %47, i32 %48) #6
  %49 = load i8*, i8** %seedPtr, align 8, !tbaa !1
  %50 = load i32, i32* %curPixel, align 4, !tbaa !23
  %call18 = call i32 @getPixel(i8* %49, i32 %50) #6
  %51 = load i32, i32* %realLastPixel, align 4, !tbaa !23
  %cmp19 = icmp eq i32 %call18, %51
  br i1 %cmp19, label %if.then.21, label %if.else

if.then.21:                                       ; preds = %if.then
  %52 = load i8*, i8** %compressedDataPtr, align 8, !tbaa !1
  %53 = load i8*, i8** %compressedDataStart, align 8, !tbaa !1
  %sub.ptr.lhs.cast = ptrtoint i8* %52 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %53 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv22 = trunc i64 %sub.ptr.sub to i32
  store i32 %conv22, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %if.then
  store i8 0, i8* %CMDByte, align 1, !tbaa !24
  store i32 0, i32* %pixelSource, align 4, !tbaa !23
  store i32 1, i32* %replacementCount, align 4, !tbaa !23
  %54 = load i32, i32* %curPixel, align 4, !tbaa !23
  %inc23 = add i32 %54, 1
  store i32 %inc23, i32* %curPixel, align 4, !tbaa !23
  br label %if.end

if.end:                                           ; preds = %if.else
  br label %if.end.118

if.else.24:                                       ; preds = %while.end.14
  %55 = bitcast i32* %RLERun to i8*
  call void @llvm.lifetime.start(i64 4, i8* %55) #2
  store i32 0, i32* %RLERun, align 4, !tbaa !23
  %56 = load i32, i32* %curPixel, align 4, !tbaa !23
  store i32 %56, i32* %replacementCount, align 4, !tbaa !23
  %57 = load i8*, i8** %curPtr, align 8, !tbaa !1
  %58 = load i32, i32* %curPixel, align 4, !tbaa !23
  %call25 = call i32 @getPixel(i8* %57, i32 %58) #6
  store i32 %call25, i32* %RLERun, align 4, !tbaa !23
  %59 = load i32, i32* %curPixel, align 4, !tbaa !23
  %inc26 = add i32 %59, 1
  store i32 %inc26, i32* %curPixel, align 4, !tbaa !23
  br label %while.cond.27

while.cond.27:                                    ; preds = %while.body.31, %if.else.24
  %60 = load i32, i32* %RLERun, align 4, !tbaa !23
  %61 = load i8*, i8** %curPtr, align 8, !tbaa !1
  %62 = load i32, i32* %curPixel, align 4, !tbaa !23
  %call28 = call i32 @getPixel(i8* %61, i32 %62) #6
  %cmp29 = icmp eq i32 %60, %call28
  br i1 %cmp29, label %while.body.31, label %while.end.33

while.body.31:                                    ; preds = %while.cond.27
  %63 = load i32, i32* %curPixel, align 4, !tbaa !23
  %inc32 = add i32 %63, 1
  store i32 %inc32, i32* %curPixel, align 4, !tbaa !23
  br label %while.cond.27

while.end.33:                                     ; preds = %while.cond.27
  %64 = load i32, i32* %curPixel, align 4, !tbaa !23
  %dec = add i32 %64, -1
  store i32 %dec, i32* %curPixel, align 4, !tbaa !23
  %65 = load i32, i32* %curPixel, align 4, !tbaa !23
  %66 = load i32, i32* %replacementCount, align 4, !tbaa !23
  %sub34 = sub i32 %65, %66
  store i32 %sub34, i32* %replacementCount, align 4, !tbaa !23
  %67 = load i32, i32* %replacementCount, align 4, !tbaa !23
  %cmp35 = icmp ugt i32 %67, 0
  br i1 %cmp35, label %if.then.37, label %if.end.64

if.then.37:                                       ; preds = %while.end.33
  %68 = load i32, i32* %curPixel, align 4, !tbaa !23
  %inc38 = add i32 %68, 1
  store i32 %inc38, i32* %curPixel, align 4, !tbaa !23
  %69 = load i32, i32* %replacementCount, align 4, !tbaa !23
  %inc39 = add i32 %69, 1
  store i32 %inc39, i32* %replacementCount, align 4, !tbaa !23
  %70 = load i32, i32* %cachedColor, align 4, !tbaa !23
  %71 = load i32, i32* %RLERun, align 4, !tbaa !23
  %cmp40 = icmp eq i32 %70, %71
  br i1 %cmp40, label %if.then.42, label %if.else.43

if.then.42:                                       ; preds = %if.then.37
  store i32 96, i32* %pixelSource, align 4, !tbaa !23
  br label %if.end.63

if.else.43:                                       ; preds = %if.then.37
  %72 = load i8*, i8** %seedPtr, align 8, !tbaa !1
  %73 = load i32, i32* %curPixel, align 4, !tbaa !23
  %74 = load i32, i32* %replacementCount, align 4, !tbaa !23
  %sub44 = sub i32 %73, %74
  %add45 = add i32 %sub44, 1
  %call46 = call i32 @getPixel(i8* %72, i32 %add45) #6
  %75 = load i32, i32* %RLERun, align 4, !tbaa !23
  %cmp47 = icmp eq i32 %call46, %75
  br i1 %cmp47, label %if.then.49, label %if.else.50

if.then.49:                                       ; preds = %if.else.43
  store i32 64, i32* %pixelSource, align 4, !tbaa !23
  br label %if.end.62

if.else.50:                                       ; preds = %if.else.43
  %76 = load i32, i32* %curPixel, align 4, !tbaa !23
  %77 = load i32, i32* %replacementCount, align 4, !tbaa !23
  %sub51 = sub i32 %76, %77
  %cmp52 = icmp ugt i32 %sub51, 0
  br i1 %cmp52, label %land.lhs.true, label %if.else.60

land.lhs.true:                                    ; preds = %if.else.50
  %78 = load i8*, i8** %curPtr, align 8, !tbaa !1
  %79 = load i32, i32* %curPixel, align 4, !tbaa !23
  %80 = load i32, i32* %replacementCount, align 4, !tbaa !23
  %sub54 = sub i32 %79, %80
  %sub55 = sub i32 %sub54, 1
  %call56 = call i32 @getPixel(i8* %78, i32 %sub55) #6
  %81 = load i32, i32* %RLERun, align 4, !tbaa !23
  %cmp57 = icmp eq i32 %call56, %81
  br i1 %cmp57, label %if.then.59, label %if.else.60

if.then.59:                                       ; preds = %land.lhs.true
  store i32 32, i32* %pixelSource, align 4, !tbaa !23
  br label %if.end.61

if.else.60:                                       ; preds = %land.lhs.true, %if.else.50
  store i32 0, i32* %pixelSource, align 4, !tbaa !23
  %82 = load i32, i32* %RLERun, align 4, !tbaa !23
  store i32 %82, i32* %cachedColor, align 4, !tbaa !23
  br label %if.end.61

if.end.61:                                        ; preds = %if.else.60, %if.then.59
  br label %if.end.62

if.end.62:                                        ; preds = %if.end.61, %if.then.49
  br label %if.end.63

if.end.63:                                        ; preds = %if.end.62, %if.then.42
  store i8 -128, i8* %CMDByte, align 1, !tbaa !24
  br label %if.end.64

if.end.64:                                        ; preds = %if.end.63, %while.end.33
  %83 = load i32, i32* %curPixel, align 4, !tbaa !23
  %84 = load i32, i32* %lastPixel, align 4, !tbaa !23
  %cmp65 = icmp eq i32 %83, %84
  br i1 %cmp65, label %if.then.67, label %if.end.74

if.then.67:                                       ; preds = %if.end.64
  %85 = load i32, i32* %realLastPixel, align 4, !tbaa !23
  %86 = load i32, i32* %RLERun, align 4, !tbaa !23
  %cmp68 = icmp eq i32 %85, %86
  br i1 %cmp68, label %if.then.70, label %if.end.73

if.then.70:                                       ; preds = %if.then.67
  %87 = load i8*, i8** %curPtr, align 8, !tbaa !1
  %88 = load i32, i32* %lastPixel, align 4, !tbaa !23
  %89 = load i32, i32* %realLastPixel, align 4, !tbaa !23
  call void @putPixel(i8* %87, i32 %88, i32 %89) #6
  %90 = load i32, i32* %replacementCount, align 4, !tbaa !23
  %inc71 = add i32 %90, 1
  store i32 %inc71, i32* %replacementCount, align 4, !tbaa !23
  %91 = load i32, i32* %curPixel, align 4, !tbaa !23
  %inc72 = add i32 %91, 1
  store i32 %inc72, i32* %curPixel, align 4, !tbaa !23
  br label %if.end.73

if.end.73:                                        ; preds = %if.then.70, %if.then.67
  br label %if.end.74

if.end.74:                                        ; preds = %if.end.73, %if.end.64
  %92 = load i32, i32* %replacementCount, align 4, !tbaa !23
  %cmp75 = icmp eq i32 0, %92
  br i1 %cmp75, label %if.then.77, label %if.end.117

if.then.77:                                       ; preds = %if.end.74
  %93 = bitcast i32* %tempPixel to i8*
  call void @llvm.lifetime.start(i64 4, i8* %93) #2
  %94 = load i8*, i8** %curPtr, align 8, !tbaa !1
  %95 = load i32, i32* %curPixel, align 4, !tbaa !23
  %call78 = call i32 @getPixel(i8* %94, i32 %95) #6
  store i32 %call78, i32* %tempPixel, align 4, !tbaa !23
  %96 = bitcast i32* %tempPixel2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %96) #2
  store i32 0, i32* %tempPixel2, align 4, !tbaa !23
  store i8 0, i8* %CMDByte, align 1, !tbaa !24
  %97 = load i32, i32* %cachedColor, align 4, !tbaa !23
  %98 = load i32, i32* %tempPixel, align 4, !tbaa !23
  %cmp79 = icmp eq i32 %97, %98
  br i1 %cmp79, label %if.then.81, label %if.else.82

if.then.81:                                       ; preds = %if.then.77
  store i32 96, i32* %pixelSource, align 4, !tbaa !23
  br label %if.end.100

if.else.82:                                       ; preds = %if.then.77
  %99 = load i8*, i8** %seedPtr, align 8, !tbaa !1
  %100 = load i32, i32* %curPixel, align 4, !tbaa !23
  %add83 = add i32 %100, 1
  %call84 = call i32 @getPixel(i8* %99, i32 %add83) #6
  %101 = load i32, i32* %tempPixel, align 4, !tbaa !23
  %cmp85 = icmp eq i32 %call84, %101
  br i1 %cmp85, label %if.then.87, label %if.else.88

if.then.87:                                       ; preds = %if.else.82
  store i32 64, i32* %pixelSource, align 4, !tbaa !23
  br label %if.end.99

if.else.88:                                       ; preds = %if.else.82
  %102 = load i32, i32* %curPixel, align 4, !tbaa !23
  %cmp89 = icmp ugt i32 %102, 0
  br i1 %cmp89, label %land.lhs.true.91, label %if.else.97

land.lhs.true.91:                                 ; preds = %if.else.88
  %103 = load i8*, i8** %curPtr, align 8, !tbaa !1
  %104 = load i32, i32* %curPixel, align 4, !tbaa !23
  %sub92 = sub i32 %104, 1
  %call93 = call i32 @getPixel(i8* %103, i32 %sub92) #6
  %105 = load i32, i32* %tempPixel, align 4, !tbaa !23
  %cmp94 = icmp eq i32 %call93, %105
  br i1 %cmp94, label %if.then.96, label %if.else.97

if.then.96:                                       ; preds = %land.lhs.true.91
  store i32 32, i32* %pixelSource, align 4, !tbaa !23
  br label %if.end.98

if.else.97:                                       ; preds = %land.lhs.true.91, %if.else.88
  store i32 0, i32* %pixelSource, align 4, !tbaa !23
  %106 = load i32, i32* %tempPixel, align 4, !tbaa !23
  store i32 %106, i32* %cachedColor, align 4, !tbaa !23
  br label %if.end.98

if.end.98:                                        ; preds = %if.else.97, %if.then.96
  br label %if.end.99

if.end.99:                                        ; preds = %if.end.98, %if.then.87
  br label %if.end.100

if.end.100:                                       ; preds = %if.end.99, %if.then.81
  %107 = load i32, i32* %curPixel, align 4, !tbaa !23
  store i32 %107, i32* %replacementCount, align 4, !tbaa !23
  br label %do.body.101

do.body.101:                                      ; preds = %land.end, %if.end.100
  %108 = load i32, i32* %curPixel, align 4, !tbaa !23
  %inc102 = add i32 %108, 1
  store i32 %inc102, i32* %curPixel, align 4, !tbaa !23
  %109 = load i32, i32* %lastPixel, align 4, !tbaa !23
  %cmp103 = icmp eq i32 %inc102, %109
  br i1 %cmp103, label %if.then.105, label %if.end.107

if.then.105:                                      ; preds = %do.body.101
  %110 = load i8*, i8** %curPtr, align 8, !tbaa !1
  %111 = load i32, i32* %lastPixel, align 4, !tbaa !23
  %112 = load i32, i32* %realLastPixel, align 4, !tbaa !23
  call void @putPixel(i8* %110, i32 %111, i32 %112) #6
  %113 = load i32, i32* %curPixel, align 4, !tbaa !23
  %inc106 = add i32 %113, 1
  store i32 %inc106, i32* %curPixel, align 4, !tbaa !23
  br label %do.end

if.end.107:                                       ; preds = %do.body.101
  %114 = load i8*, i8** %curPtr, align 8, !tbaa !1
  %115 = load i32, i32* %curPixel, align 4, !tbaa !23
  %call108 = call i32 @getPixel(i8* %114, i32 %115) #6
  store i32 %call108, i32* %tempPixel2, align 4, !tbaa !23
  br label %do.cond

do.cond:                                          ; preds = %if.end.107
  %116 = load i32, i32* %tempPixel2, align 4, !tbaa !23
  %117 = load i8*, i8** %curPtr, align 8, !tbaa !1
  %118 = load i32, i32* %curPixel, align 4, !tbaa !23
  %add109 = add i32 %118, 1
  %call110 = call i32 @getPixel(i8* %117, i32 %add109) #6
  %cmp111 = icmp ne i32 %116, %call110
  br i1 %cmp111, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %do.cond
  %119 = load i32, i32* %tempPixel2, align 4, !tbaa !23
  %120 = load i8*, i8** %seedPtr, align 8, !tbaa !1
  %121 = load i32, i32* %curPixel, align 4, !tbaa !23
  %call113 = call i32 @getPixel(i8* %120, i32 %121) #6
  %cmp114 = icmp ne i32 %119, %call113
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond
  %122 = phi i1 [ false, %do.cond ], [ %cmp114, %land.rhs ]
  br i1 %122, label %do.body.101, label %do.end

do.end:                                           ; preds = %land.end, %if.then.105
  %123 = load i32, i32* %curPixel, align 4, !tbaa !23
  %124 = load i32, i32* %replacementCount, align 4, !tbaa !23
  %sub116 = sub i32 %123, %124
  store i32 %sub116, i32* %replacementCount, align 4, !tbaa !23
  %125 = bitcast i32* %tempPixel2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %125) #2
  %126 = bitcast i32* %tempPixel to i8*
  call void @llvm.lifetime.end(i64 4, i8* %126) #2
  br label %if.end.117

if.end.117:                                       ; preds = %do.end, %if.end.74
  %127 = bitcast i32* %RLERun to i8*
  call void @llvm.lifetime.end(i64 4, i8* %127) #2
  br label %if.end.118

if.end.118:                                       ; preds = %if.end.117, %if.end
  %128 = load i8, i8* %CMDByte, align 1, !tbaa !24
  %conv119 = zext i8 %128 to i32
  %cmp120 = icmp eq i32 0, %conv119
  br i1 %cmp120, label %if.then.122, label %if.else.217

if.then.122:                                      ; preds = %if.end.118
  %129 = bitcast i32* %totalReplacementCount to i8*
  call void @llvm.lifetime.start(i64 4, i8* %129) #2
  store i32 0, i32* %totalReplacementCount, align 4, !tbaa !23
  %130 = bitcast i32* %upwardPixelCount to i8*
  call void @llvm.lifetime.start(i64 4, i8* %130) #2
  store i32 0, i32* %upwardPixelCount, align 4, !tbaa !23
  %131 = load i32, i32* %replacementCount, align 4, !tbaa !23
  %dec123 = add i32 %131, -1
  store i32 %dec123, i32* %replacementCount, align 4, !tbaa !23
  %132 = load i32, i32* %pixelSource, align 4, !tbaa !23
  %conv124 = trunc i32 %132 to i8
  %conv125 = zext i8 %conv124 to i32
  %133 = load i8, i8* %CMDByte, align 1, !tbaa !24
  %conv126 = zext i8 %133 to i32
  %or = or i32 %conv126, %conv125
  %conv127 = trunc i32 %or to i8
  store i8 %conv127, i8* %CMDByte, align 1, !tbaa !24
  %134 = load i32, i32* %seedRowPixelCopyCount, align 4, !tbaa !23
  %cmp128 = icmp ult i32 3, %134
  br i1 %cmp128, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.122
  br label %cond.end

cond.false:                                       ; preds = %if.then.122
  %135 = load i32, i32* %seedRowPixelCopyCount, align 4, !tbaa !23
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 3, %cond.true ], [ %135, %cond.false ]
  %shl = shl i32 %cond, 3
  %conv130 = trunc i32 %shl to i8
  %conv131 = zext i8 %conv130 to i32
  %136 = load i8, i8* %CMDByte, align 1, !tbaa !24
  %conv132 = zext i8 %136 to i32
  %or133 = or i32 %conv132, %conv131
  %conv134 = trunc i32 %or133 to i8
  store i8 %conv134, i8* %CMDByte, align 1, !tbaa !24
  %137 = load i32, i32* %replacementCount, align 4, !tbaa !23
  %cmp135 = icmp ult i32 7, %137
  br i1 %cmp135, label %cond.true.137, label %cond.false.138

cond.true.137:                                    ; preds = %cond.end
  br label %cond.end.139

cond.false.138:                                   ; preds = %cond.end
  %138 = load i32, i32* %replacementCount, align 4, !tbaa !23
  br label %cond.end.139

cond.end.139:                                     ; preds = %cond.false.138, %cond.true.137
  %cond140 = phi i32 [ 7, %cond.true.137 ], [ %138, %cond.false.138 ]
  %conv141 = trunc i32 %cond140 to i8
  %conv142 = zext i8 %conv141 to i32
  %139 = load i8, i8* %CMDByte, align 1, !tbaa !24
  %conv143 = zext i8 %139 to i32
  %or144 = or i32 %conv143, %conv142
  %conv145 = trunc i32 %or144 to i8
  store i8 %conv145, i8* %CMDByte, align 1, !tbaa !24
  %140 = load i8, i8* %CMDByte, align 1, !tbaa !24
  %141 = load i8*, i8** %compressedDataPtr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %141, i32 1
  store i8* %incdec.ptr, i8** %compressedDataPtr, align 8, !tbaa !1
  store i8 %140, i8* %141, align 1, !tbaa !24
  %142 = load i32, i32* %seedRowPixelCopyCount, align 4, !tbaa !23
  %cmp146 = icmp uge i32 %142, 3
  br i1 %cmp146, label %if.then.148, label %if.end.168

if.then.148:                                      ; preds = %cond.end.139
  call void @llvm.lifetime.start(i64 1, i8* %temp) #2
  %143 = bitcast i32* %number to i8*
  call void @llvm.lifetime.start(i64 4, i8* %143) #2
  %144 = load i32, i32* %seedRowPixelCopyCount, align 4, !tbaa !23
  %sub149 = sub i32 %144, 3
  store i32 %sub149, i32* %number, align 4, !tbaa !23
  br label %do.body.150

do.body.150:                                      ; preds = %do.cond.164, %if.then.148
  %145 = load i32, i32* %number, align 4, !tbaa !23
  %cmp151 = icmp slt i32 %145, 255
  br i1 %cmp151, label %cond.true.153, label %cond.false.154

cond.true.153:                                    ; preds = %do.body.150
  %146 = load i32, i32* %number, align 4, !tbaa !23
  br label %cond.end.155

cond.false.154:                                   ; preds = %do.body.150
  br label %cond.end.155

cond.end.155:                                     ; preds = %cond.false.154, %cond.true.153
  %cond156 = phi i32 [ %146, %cond.true.153 ], [ 255, %cond.false.154 ]
  %conv157 = trunc i32 %cond156 to i8
  store i8 %conv157, i8* %temp, align 1, !tbaa !24
  %147 = load i8*, i8** %compressedDataPtr, align 8, !tbaa !1
  %incdec.ptr158 = getelementptr inbounds i8, i8* %147, i32 1
  store i8* %incdec.ptr158, i8** %compressedDataPtr, align 8, !tbaa !1
  store i8 %conv157, i8* %147, align 1, !tbaa !24
  %148 = load i32, i32* %number, align 4, !tbaa !23
  %cmp159 = icmp eq i32 255, %148
  br i1 %cmp159, label %if.then.161, label %if.end.163

if.then.161:                                      ; preds = %cond.end.155
  %149 = load i8*, i8** %compressedDataPtr, align 8, !tbaa !1
  %incdec.ptr162 = getelementptr inbounds i8, i8* %149, i32 1
  store i8* %incdec.ptr162, i8** %compressedDataPtr, align 8, !tbaa !1
  store i8 0, i8* %149, align 1, !tbaa !24
  br label %if.end.163

if.end.163:                                       ; preds = %if.then.161, %cond.end.155
  br label %do.cond.164

do.cond.164:                                      ; preds = %if.end.163
  %150 = load i8, i8* %temp, align 1, !tbaa !24
  %conv165 = zext i8 %150 to i32
  %151 = load i32, i32* %number, align 4, !tbaa !23
  %sub166 = sub nsw i32 %151, %conv165
  store i32 %sub166, i32* %number, align 4, !tbaa !23
  %tobool = icmp ne i32 %sub166, 0
  br i1 %tobool, label %do.body.150, label %do.end.167

do.end.167:                                       ; preds = %do.cond.164
  %152 = bitcast i32* %number to i8*
  call void @llvm.lifetime.end(i64 4, i8* %152) #2
  call void @llvm.lifetime.end(i64 1, i8* %temp) #2
  br label %if.end.168

if.end.168:                                       ; preds = %do.end.167, %cond.end.139
  %153 = load i32, i32* %replacementCount, align 4, !tbaa !23
  %inc169 = add i32 %153, 1
  store i32 %inc169, i32* %replacementCount, align 4, !tbaa !23
  %154 = load i32, i32* %replacementCount, align 4, !tbaa !23
  store i32 %154, i32* %totalReplacementCount, align 4, !tbaa !23
  store i32 1, i32* %upwardPixelCount, align 4, !tbaa !23
  %155 = load i32, i32* %pixelSource, align 4, !tbaa !23
  %cmp170 = icmp ne i32 0, %155
  br i1 %cmp170, label %if.then.172, label %if.end.174

if.then.172:                                      ; preds = %if.end.168
  %156 = load i32, i32* %replacementCount, align 4, !tbaa !23
  %dec173 = add i32 %156, -1
  store i32 %dec173, i32* %replacementCount, align 4, !tbaa !23
  store i32 2, i32* %upwardPixelCount, align 4, !tbaa !23
  br label %if.end.174

if.end.174:                                       ; preds = %if.then.172, %if.end.168
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.174
  %157 = load i32, i32* %upwardPixelCount, align 4, !tbaa !23
  %158 = load i32, i32* %totalReplacementCount, align 4, !tbaa !23
  %cmp175 = icmp ule i32 %157, %158
  br i1 %cmp175, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %159 = bitcast i32* %tempCount to i8*
  call void @llvm.lifetime.start(i64 4, i8* %159) #2
  %160 = load i32, i32* %curPixel, align 4, !tbaa !23
  %161 = load i32, i32* %replacementCount, align 4, !tbaa !23
  %sub177 = sub i32 %160, %161
  store i32 %sub177, i32* %tempCount, align 4, !tbaa !23
  %162 = bitcast i32* %compressedPixel to i8*
  call void @llvm.lifetime.start(i64 4, i8* %162) #2
  %163 = load i8*, i8** %curPtr, align 8, !tbaa !1
  %164 = load i8*, i8** %seedPtr, align 8, !tbaa !1
  %165 = load i32, i32* %tempCount, align 4, !tbaa !23
  %call178 = call i32 @ShortDelta(i8* %163, i8* %164, i32 %165) #6
  store i32 %call178, i32* %compressedPixel, align 4, !tbaa !23
  %166 = load i32, i32* %compressedPixel, align 4, !tbaa !23
  %tobool179 = icmp ne i32 %166, 0
  br i1 %tobool179, label %if.then.180, label %if.else.185

if.then.180:                                      ; preds = %for.body
  %167 = load i32, i32* %compressedPixel, align 4, !tbaa !23
  %shr = lshr i32 %167, 8
  %conv181 = trunc i32 %shr to i8
  %168 = load i8*, i8** %compressedDataPtr, align 8, !tbaa !1
  %incdec.ptr182 = getelementptr inbounds i8, i8* %168, i32 1
  store i8* %incdec.ptr182, i8** %compressedDataPtr, align 8, !tbaa !1
  store i8 %conv181, i8* %168, align 1, !tbaa !24
  %169 = load i32, i32* %compressedPixel, align 4, !tbaa !23
  %conv183 = trunc i32 %169 to i8
  %170 = load i8*, i8** %compressedDataPtr, align 8, !tbaa !1
  %incdec.ptr184 = getelementptr inbounds i8, i8* %170, i32 1
  store i8* %incdec.ptr184, i8** %compressedDataPtr, align 8, !tbaa !1
  store i8 %conv183, i8* %170, align 1, !tbaa !24
  br label %if.end.196

if.else.185:                                      ; preds = %for.body
  %171 = bitcast i32* %uncompressedPixel to i8*
  call void @llvm.lifetime.start(i64 4, i8* %171) #2
  %172 = load i8*, i8** %curPtr, align 8, !tbaa !1
  %173 = load i32, i32* %tempCount, align 4, !tbaa !23
  %call186 = call i32 @getPixel(i8* %172, i32 %173) #6
  %shr187 = lshr i32 %call186, 1
  store i32 %shr187, i32* %uncompressedPixel, align 4, !tbaa !23
  %174 = load i32, i32* %uncompressedPixel, align 4, !tbaa !23
  %shr188 = lshr i32 %174, 16
  %conv189 = trunc i32 %shr188 to i8
  %175 = load i8*, i8** %compressedDataPtr, align 8, !tbaa !1
  %incdec.ptr190 = getelementptr inbounds i8, i8* %175, i32 1
  store i8* %incdec.ptr190, i8** %compressedDataPtr, align 8, !tbaa !1
  store i8 %conv189, i8* %175, align 1, !tbaa !24
  %176 = load i32, i32* %uncompressedPixel, align 4, !tbaa !23
  %shr191 = lshr i32 %176, 8
  %conv192 = trunc i32 %shr191 to i8
  %177 = load i8*, i8** %compressedDataPtr, align 8, !tbaa !1
  %incdec.ptr193 = getelementptr inbounds i8, i8* %177, i32 1
  store i8* %incdec.ptr193, i8** %compressedDataPtr, align 8, !tbaa !1
  store i8 %conv192, i8* %177, align 1, !tbaa !24
  %178 = load i32, i32* %uncompressedPixel, align 4, !tbaa !23
  %conv194 = trunc i32 %178 to i8
  %179 = load i8*, i8** %compressedDataPtr, align 8, !tbaa !1
  %incdec.ptr195 = getelementptr inbounds i8, i8* %179, i32 1
  store i8* %incdec.ptr195, i8** %compressedDataPtr, align 8, !tbaa !1
  store i8 %conv194, i8* %179, align 1, !tbaa !24
  %180 = bitcast i32* %uncompressedPixel to i8*
  call void @llvm.lifetime.end(i64 4, i8* %180) #2
  br label %if.end.196

if.end.196:                                       ; preds = %if.else.185, %if.then.180
  %181 = load i32, i32* %upwardPixelCount, align 4, !tbaa !23
  %cmp197 = icmp uge i32 %181, 8
  br i1 %cmp197, label %land.lhs.true.199, label %if.end.214

land.lhs.true.199:                                ; preds = %if.end.196
  %182 = load i32, i32* %upwardPixelCount, align 4, !tbaa !23
  %sub200 = sub i32 %182, 8
  %rem = urem i32 %sub200, 255
  %cmp201 = icmp eq i32 %rem, 0
  br i1 %cmp201, label %if.then.203, label %if.end.214

if.then.203:                                      ; preds = %land.lhs.true.199
  %183 = load i32, i32* %totalReplacementCount, align 4, !tbaa !23
  %184 = load i32, i32* %upwardPixelCount, align 4, !tbaa !23
  %sub204 = sub i32 %183, %184
  %cmp205 = icmp ult i32 255, %sub204
  br i1 %cmp205, label %cond.true.207, label %cond.false.208

cond.true.207:                                    ; preds = %if.then.203
  br label %cond.end.210

cond.false.208:                                   ; preds = %if.then.203
  %185 = load i32, i32* %totalReplacementCount, align 4, !tbaa !23
  %186 = load i32, i32* %upwardPixelCount, align 4, !tbaa !23
  %sub209 = sub i32 %185, %186
  br label %cond.end.210

cond.end.210:                                     ; preds = %cond.false.208, %cond.true.207
  %cond211 = phi i32 [ 255, %cond.true.207 ], [ %sub209, %cond.false.208 ]
  %conv212 = trunc i32 %cond211 to i8
  %187 = load i8*, i8** %compressedDataPtr, align 8, !tbaa !1
  %incdec.ptr213 = getelementptr inbounds i8, i8* %187, i32 1
  store i8* %incdec.ptr213, i8** %compressedDataPtr, align 8, !tbaa !1
  store i8 %conv212, i8* %187, align 1, !tbaa !24
  br label %if.end.214

if.end.214:                                       ; preds = %cond.end.210, %land.lhs.true.199, %if.end.196
  %188 = load i32, i32* %replacementCount, align 4, !tbaa !23
  %dec215 = add i32 %188, -1
  store i32 %dec215, i32* %replacementCount, align 4, !tbaa !23
  %189 = bitcast i32* %compressedPixel to i8*
  call void @llvm.lifetime.end(i64 4, i8* %189) #2
  %190 = bitcast i32* %tempCount to i8*
  call void @llvm.lifetime.end(i64 4, i8* %190) #2
  br label %for.inc

for.inc:                                          ; preds = %if.end.214
  %191 = load i32, i32* %upwardPixelCount, align 4, !tbaa !23
  %inc216 = add i32 %191, 1
  store i32 %inc216, i32* %upwardPixelCount, align 4, !tbaa !23
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %192 = bitcast i32* %upwardPixelCount to i8*
  call void @llvm.lifetime.end(i64 4, i8* %192) #2
  %193 = bitcast i32* %totalReplacementCount to i8*
  call void @llvm.lifetime.end(i64 4, i8* %193) #2
  br label %if.end.323

if.else.217:                                      ; preds = %if.end.118
  %194 = load i32, i32* %replacementCount, align 4, !tbaa !23
  %sub218 = sub i32 %194, 2
  store i32 %sub218, i32* %replacementCount, align 4, !tbaa !23
  %195 = load i32, i32* %pixelSource, align 4, !tbaa !23
  %196 = load i8, i8* %CMDByte, align 1, !tbaa !24
  %conv219 = zext i8 %196 to i32
  %or220 = or i32 %conv219, %195
  %conv221 = trunc i32 %or220 to i8
  store i8 %conv221, i8* %CMDByte, align 1, !tbaa !24
  %197 = load i32, i32* %seedRowPixelCopyCount, align 4, !tbaa !23
  %cmp222 = icmp ult i32 3, %197
  br i1 %cmp222, label %cond.true.224, label %cond.false.225

cond.true.224:                                    ; preds = %if.else.217
  br label %cond.end.226

cond.false.225:                                   ; preds = %if.else.217
  %198 = load i32, i32* %seedRowPixelCopyCount, align 4, !tbaa !23
  br label %cond.end.226

cond.end.226:                                     ; preds = %cond.false.225, %cond.true.224
  %cond227 = phi i32 [ 3, %cond.true.224 ], [ %198, %cond.false.225 ]
  %shl228 = shl i32 %cond227, 3
  %199 = load i8, i8* %CMDByte, align 1, !tbaa !24
  %conv229 = zext i8 %199 to i32
  %or230 = or i32 %conv229, %shl228
  %conv231 = trunc i32 %or230 to i8
  store i8 %conv231, i8* %CMDByte, align 1, !tbaa !24
  %200 = load i32, i32* %replacementCount, align 4, !tbaa !23
  %cmp232 = icmp ult i32 7, %200
  br i1 %cmp232, label %cond.true.234, label %cond.false.235

cond.true.234:                                    ; preds = %cond.end.226
  br label %cond.end.236

cond.false.235:                                   ; preds = %cond.end.226
  %201 = load i32, i32* %replacementCount, align 4, !tbaa !23
  br label %cond.end.236

cond.end.236:                                     ; preds = %cond.false.235, %cond.true.234
  %cond237 = phi i32 [ 7, %cond.true.234 ], [ %201, %cond.false.235 ]
  %202 = load i8, i8* %CMDByte, align 1, !tbaa !24
  %conv238 = zext i8 %202 to i32
  %or239 = or i32 %conv238, %cond237
  %conv240 = trunc i32 %or239 to i8
  store i8 %conv240, i8* %CMDByte, align 1, !tbaa !24
  %203 = load i8, i8* %CMDByte, align 1, !tbaa !24
  %204 = load i8*, i8** %compressedDataPtr, align 8, !tbaa !1
  %incdec.ptr241 = getelementptr inbounds i8, i8* %204, i32 1
  store i8* %incdec.ptr241, i8** %compressedDataPtr, align 8, !tbaa !1
  store i8 %203, i8* %204, align 1, !tbaa !24
  %205 = load i32, i32* %seedRowPixelCopyCount, align 4, !tbaa !23
  %cmp242 = icmp uge i32 %205, 3
  br i1 %cmp242, label %if.then.244, label %if.end.267

if.then.244:                                      ; preds = %cond.end.236
  call void @llvm.lifetime.start(i64 1, i8* %temp245) #2
  %206 = bitcast i32* %number246 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %206) #2
  %207 = load i32, i32* %seedRowPixelCopyCount, align 4, !tbaa !23
  %sub247 = sub i32 %207, 3
  store i32 %sub247, i32* %number246, align 4, !tbaa !23
  br label %do.body.248

do.body.248:                                      ; preds = %do.cond.262, %if.then.244
  %208 = load i32, i32* %number246, align 4, !tbaa !23
  %cmp249 = icmp slt i32 %208, 255
  br i1 %cmp249, label %cond.true.251, label %cond.false.252

cond.true.251:                                    ; preds = %do.body.248
  %209 = load i32, i32* %number246, align 4, !tbaa !23
  br label %cond.end.253

cond.false.252:                                   ; preds = %do.body.248
  br label %cond.end.253

cond.end.253:                                     ; preds = %cond.false.252, %cond.true.251
  %cond254 = phi i32 [ %209, %cond.true.251 ], [ 255, %cond.false.252 ]
  %conv255 = trunc i32 %cond254 to i8
  store i8 %conv255, i8* %temp245, align 1, !tbaa !24
  %210 = load i8*, i8** %compressedDataPtr, align 8, !tbaa !1
  %incdec.ptr256 = getelementptr inbounds i8, i8* %210, i32 1
  store i8* %incdec.ptr256, i8** %compressedDataPtr, align 8, !tbaa !1
  store i8 %conv255, i8* %210, align 1, !tbaa !24
  %211 = load i32, i32* %number246, align 4, !tbaa !23
  %cmp257 = icmp eq i32 255, %211
  br i1 %cmp257, label %if.then.259, label %if.end.261

if.then.259:                                      ; preds = %cond.end.253
  %212 = load i8*, i8** %compressedDataPtr, align 8, !tbaa !1
  %incdec.ptr260 = getelementptr inbounds i8, i8* %212, i32 1
  store i8* %incdec.ptr260, i8** %compressedDataPtr, align 8, !tbaa !1
  store i8 0, i8* %212, align 1, !tbaa !24
  br label %if.end.261

if.end.261:                                       ; preds = %if.then.259, %cond.end.253
  br label %do.cond.262

do.cond.262:                                      ; preds = %if.end.261
  %213 = load i8, i8* %temp245, align 1, !tbaa !24
  %conv263 = zext i8 %213 to i32
  %214 = load i32, i32* %number246, align 4, !tbaa !23
  %sub264 = sub nsw i32 %214, %conv263
  store i32 %sub264, i32* %number246, align 4, !tbaa !23
  %tobool265 = icmp ne i32 %sub264, 0
  br i1 %tobool265, label %do.body.248, label %do.end.266

do.end.266:                                       ; preds = %do.cond.262
  %215 = bitcast i32* %number246 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %215) #2
  call void @llvm.lifetime.end(i64 1, i8* %temp245) #2
  br label %if.end.267

if.end.267:                                       ; preds = %do.end.266, %cond.end.236
  %216 = load i32, i32* %replacementCount, align 4, !tbaa !23
  %add268 = add i32 %216, 2
  store i32 %add268, i32* %replacementCount, align 4, !tbaa !23
  %217 = load i32, i32* %pixelSource, align 4, !tbaa !23
  %cmp269 = icmp eq i32 0, %217
  br i1 %cmp269, label %if.then.271, label %if.end.296

if.then.271:                                      ; preds = %if.end.267
  %218 = bitcast i32* %tempCount272 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %218) #2
  %219 = load i32, i32* %curPixel, align 4, !tbaa !23
  %220 = load i32, i32* %replacementCount, align 4, !tbaa !23
  %sub273 = sub i32 %219, %220
  store i32 %sub273, i32* %tempCount272, align 4, !tbaa !23
  %221 = bitcast i32* %compressedPixel274 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %221) #2
  %222 = load i8*, i8** %curPtr, align 8, !tbaa !1
  %223 = load i8*, i8** %seedPtr, align 8, !tbaa !1
  %224 = load i32, i32* %tempCount272, align 4, !tbaa !23
  %call275 = call i32 @ShortDelta(i8* %222, i8* %223, i32 %224) #6
  store i32 %call275, i32* %compressedPixel274, align 4, !tbaa !23
  %225 = load i32, i32* %compressedPixel274, align 4, !tbaa !23
  %tobool276 = icmp ne i32 %225, 0
  br i1 %tobool276, label %if.then.277, label %if.else.283

if.then.277:                                      ; preds = %if.then.271
  %226 = load i32, i32* %compressedPixel274, align 4, !tbaa !23
  %shr278 = lshr i32 %226, 8
  %conv279 = trunc i32 %shr278 to i8
  %227 = load i8*, i8** %compressedDataPtr, align 8, !tbaa !1
  %incdec.ptr280 = getelementptr inbounds i8, i8* %227, i32 1
  store i8* %incdec.ptr280, i8** %compressedDataPtr, align 8, !tbaa !1
  store i8 %conv279, i8* %227, align 1, !tbaa !24
  %228 = load i32, i32* %compressedPixel274, align 4, !tbaa !23
  %conv281 = trunc i32 %228 to i8
  %229 = load i8*, i8** %compressedDataPtr, align 8, !tbaa !1
  %incdec.ptr282 = getelementptr inbounds i8, i8* %229, i32 1
  store i8* %incdec.ptr282, i8** %compressedDataPtr, align 8, !tbaa !1
  store i8 %conv281, i8* %229, align 1, !tbaa !24
  br label %if.end.295

if.else.283:                                      ; preds = %if.then.271
  %230 = bitcast i32* %uncompressedPixel284 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %230) #2
  %231 = load i8*, i8** %curPtr, align 8, !tbaa !1
  %232 = load i32, i32* %tempCount272, align 4, !tbaa !23
  %call285 = call i32 @getPixel(i8* %231, i32 %232) #6
  %shr286 = lshr i32 %call285, 1
  store i32 %shr286, i32* %uncompressedPixel284, align 4, !tbaa !23
  %233 = load i32, i32* %uncompressedPixel284, align 4, !tbaa !23
  %shr287 = lshr i32 %233, 16
  %conv288 = trunc i32 %shr287 to i8
  %234 = load i8*, i8** %compressedDataPtr, align 8, !tbaa !1
  %incdec.ptr289 = getelementptr inbounds i8, i8* %234, i32 1
  store i8* %incdec.ptr289, i8** %compressedDataPtr, align 8, !tbaa !1
  store i8 %conv288, i8* %234, align 1, !tbaa !24
  %235 = load i32, i32* %uncompressedPixel284, align 4, !tbaa !23
  %shr290 = lshr i32 %235, 8
  %conv291 = trunc i32 %shr290 to i8
  %236 = load i8*, i8** %compressedDataPtr, align 8, !tbaa !1
  %incdec.ptr292 = getelementptr inbounds i8, i8* %236, i32 1
  store i8* %incdec.ptr292, i8** %compressedDataPtr, align 8, !tbaa !1
  store i8 %conv291, i8* %236, align 1, !tbaa !24
  %237 = load i32, i32* %uncompressedPixel284, align 4, !tbaa !23
  %conv293 = trunc i32 %237 to i8
  %238 = load i8*, i8** %compressedDataPtr, align 8, !tbaa !1
  %incdec.ptr294 = getelementptr inbounds i8, i8* %238, i32 1
  store i8* %incdec.ptr294, i8** %compressedDataPtr, align 8, !tbaa !1
  store i8 %conv293, i8* %238, align 1, !tbaa !24
  %239 = bitcast i32* %uncompressedPixel284 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %239) #2
  br label %if.end.295

if.end.295:                                       ; preds = %if.else.283, %if.then.277
  %240 = bitcast i32* %compressedPixel274 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %240) #2
  %241 = bitcast i32* %tempCount272 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %241) #2
  br label %if.end.296

if.end.296:                                       ; preds = %if.end.295, %if.end.267
  %242 = load i32, i32* %replacementCount, align 4, !tbaa !23
  %cmp297 = icmp uge i32 %242, 9
  br i1 %cmp297, label %if.then.299, label %if.end.322

if.then.299:                                      ; preds = %if.end.296
  call void @llvm.lifetime.start(i64 1, i8* %temp300) #2
  %243 = bitcast i32* %number301 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %243) #2
  %244 = load i32, i32* %replacementCount, align 4, !tbaa !23
  %sub302 = sub i32 %244, 9
  store i32 %sub302, i32* %number301, align 4, !tbaa !23
  br label %do.body.303

do.body.303:                                      ; preds = %do.cond.317, %if.then.299
  %245 = load i32, i32* %number301, align 4, !tbaa !23
  %cmp304 = icmp slt i32 %245, 255
  br i1 %cmp304, label %cond.true.306, label %cond.false.307

cond.true.306:                                    ; preds = %do.body.303
  %246 = load i32, i32* %number301, align 4, !tbaa !23
  br label %cond.end.308

cond.false.307:                                   ; preds = %do.body.303
  br label %cond.end.308

cond.end.308:                                     ; preds = %cond.false.307, %cond.true.306
  %cond309 = phi i32 [ %246, %cond.true.306 ], [ 255, %cond.false.307 ]
  %conv310 = trunc i32 %cond309 to i8
  store i8 %conv310, i8* %temp300, align 1, !tbaa !24
  %247 = load i8*, i8** %compressedDataPtr, align 8, !tbaa !1
  %incdec.ptr311 = getelementptr inbounds i8, i8* %247, i32 1
  store i8* %incdec.ptr311, i8** %compressedDataPtr, align 8, !tbaa !1
  store i8 %conv310, i8* %247, align 1, !tbaa !24
  %248 = load i32, i32* %number301, align 4, !tbaa !23
  %cmp312 = icmp eq i32 255, %248
  br i1 %cmp312, label %if.then.314, label %if.end.316

if.then.314:                                      ; preds = %cond.end.308
  %249 = load i8*, i8** %compressedDataPtr, align 8, !tbaa !1
  %incdec.ptr315 = getelementptr inbounds i8, i8* %249, i32 1
  store i8* %incdec.ptr315, i8** %compressedDataPtr, align 8, !tbaa !1
  store i8 0, i8* %249, align 1, !tbaa !24
  br label %if.end.316

if.end.316:                                       ; preds = %if.then.314, %cond.end.308
  br label %do.cond.317

do.cond.317:                                      ; preds = %if.end.316
  %250 = load i8, i8* %temp300, align 1, !tbaa !24
  %conv318 = zext i8 %250 to i32
  %251 = load i32, i32* %number301, align 4, !tbaa !23
  %sub319 = sub nsw i32 %251, %conv318
  store i32 %sub319, i32* %number301, align 4, !tbaa !23
  %tobool320 = icmp ne i32 %sub319, 0
  br i1 %tobool320, label %do.body.303, label %do.end.321

do.end.321:                                       ; preds = %do.cond.317
  %252 = bitcast i32* %number301 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %252) #2
  call void @llvm.lifetime.end(i64 1, i8* %temp300) #2
  br label %if.end.322

if.end.322:                                       ; preds = %do.end.321, %if.end.296
  br label %if.end.323

if.end.323:                                       ; preds = %if.end.322, %for.end
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.323, %if.then.21
  %253 = bitcast i32* %pixelSource to i8*
  call void @llvm.lifetime.end(i64 4, i8* %253) #2
  %254 = bitcast i32* %replacementCount to i8*
  call void @llvm.lifetime.end(i64 4, i8* %254) #2
  call void @llvm.lifetime.end(i64 1, i8* %CMDByte) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.334 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %do.cond.326

do.cond.326:                                      ; preds = %cleanup.cont
  %255 = load i32, i32* %curPixel, align 4, !tbaa !23
  %256 = load i32, i32* %lastPixel, align 4, !tbaa !23
  %cmp327 = icmp ule i32 %255, %256
  br i1 %cmp327, label %do.body, label %do.end.329

do.end.329:                                       ; preds = %do.cond.326
  %257 = load i8*, i8** %compressedDataPtr, align 8, !tbaa !1
  %258 = load i8*, i8** %compressedDataStart, align 8, !tbaa !1
  %sub.ptr.lhs.cast330 = ptrtoint i8* %257 to i64
  %sub.ptr.rhs.cast331 = ptrtoint i8* %258 to i64
  %sub.ptr.sub332 = sub i64 %sub.ptr.lhs.cast330, %sub.ptr.rhs.cast331
  %conv333 = trunc i64 %sub.ptr.sub332 to i32
  store i32 %conv333, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.334

cleanup.334:                                      ; preds = %do.end.329, %cleanup
  %259 = bitcast i8** %compressedDataStart to i8*
  call void @llvm.lifetime.end(i64 8, i8* %259) #2
  %260 = bitcast i8** %seedPtr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %260) #2
  %261 = bitcast i8** %compressedDataPtr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %261) #2
  %262 = bitcast i8** %curPtr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %262) #2
  %263 = bitcast i32* %temp3 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %263) #2
  %264 = bitcast i32* %temp2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %264) #2
  %265 = bitcast i32* %temp1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %265) #2
  %266 = bitcast i32* %realLastPixel to i8*
  call void @llvm.lifetime.end(i64 4, i8* %266) #2
  %267 = bitcast i32* %lastPixel to i8*
  call void @llvm.lifetime.end(i64 4, i8* %267) #2
  %268 = bitcast i32* %cachedColor to i8*
  call void @llvm.lifetime.end(i64 4, i8* %268) #2
  %269 = bitcast i32* %seedRowPixelCopyCount to i8*
  call void @llvm.lifetime.end(i64 4, i8* %269) #2
  %270 = bitcast i32* %curPixel to i8*
  call void @llvm.lifetime.end(i64 4, i8* %270) #2
  %271 = load i32, i32* %retval
  ret i32 %271
}

declare i64 @fwrite(i8*, i64, i64, %struct._IO_FILE*) #0

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @getPixel(i8* %pixAddress, i32 %pixelOffset) #4 {
entry:
  %pixAddress.addr = alloca i8*, align 8
  %pixelOffset.addr = alloca i32, align 4
  store i8* %pixAddress, i8** %pixAddress.addr, align 8, !tbaa !1
  store i32 %pixelOffset, i32* %pixelOffset.addr, align 4, !tbaa !23
  %0 = load i32, i32* %pixelOffset.addr, align 4, !tbaa !23
  %mul = mul i32 %0, 3
  %1 = load i8*, i8** %pixAddress.addr, align 8, !tbaa !1
  %idx.ext = zext i32 %mul to i64
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 %idx.ext
  store i8* %add.ptr, i8** %pixAddress.addr, align 8, !tbaa !1
  %2 = load i8*, i8** %pixAddress.addr, align 8, !tbaa !1
  %3 = load i8, i8* %2, align 1, !tbaa !24
  %conv = zext i8 %3 to i32
  %shl = shl i32 %conv, 16
  %4 = load i8*, i8** %pixAddress.addr, align 8, !tbaa !1
  %add.ptr1 = getelementptr inbounds i8, i8* %4, i64 1
  %5 = load i8, i8* %add.ptr1, align 1, !tbaa !24
  %conv2 = zext i8 %5 to i32
  %shl3 = shl i32 %conv2, 8
  %add = add i32 %shl, %shl3
  %6 = load i8*, i8** %pixAddress.addr, align 8, !tbaa !1
  %add.ptr4 = getelementptr inbounds i8, i8* %6, i64 2
  %7 = load i8, i8* %add.ptr4, align 1, !tbaa !24
  %conv5 = zext i8 %7 to i32
  %and = and i32 %conv5, 16777214
  %add6 = add i32 %add, %and
  ret i32 %add6
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @putPixel(i8* %pixAddress, i32 %pixelOffset, i32 %pixel) #4 {
entry:
  %pixAddress.addr = alloca i8*, align 8
  %pixelOffset.addr = alloca i32, align 4
  %pixel.addr = alloca i32, align 4
  store i8* %pixAddress, i8** %pixAddress.addr, align 8, !tbaa !1
  store i32 %pixelOffset, i32* %pixelOffset.addr, align 4, !tbaa !23
  store i32 %pixel, i32* %pixel.addr, align 4, !tbaa !23
  %0 = load i32, i32* %pixelOffset.addr, align 4, !tbaa !23
  %mul = mul i32 %0, 3
  %1 = load i8*, i8** %pixAddress.addr, align 8, !tbaa !1
  %idx.ext = zext i32 %mul to i64
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 %idx.ext
  store i8* %add.ptr, i8** %pixAddress.addr, align 8, !tbaa !1
  %2 = load i32, i32* %pixel.addr, align 4, !tbaa !23
  %shr = lshr i32 %2, 16
  %conv = trunc i32 %shr to i8
  %3 = load i8*, i8** %pixAddress.addr, align 8, !tbaa !1
  store i8 %conv, i8* %3, align 1, !tbaa !24
  %4 = load i32, i32* %pixel.addr, align 4, !tbaa !23
  %shr1 = lshr i32 %4, 8
  %conv2 = trunc i32 %shr1 to i8
  %5 = load i8*, i8** %pixAddress.addr, align 8, !tbaa !1
  %add.ptr3 = getelementptr inbounds i8, i8* %5, i64 1
  store i8 %conv2, i8* %add.ptr3, align 1, !tbaa !24
  %6 = load i32, i32* %pixel.addr, align 4, !tbaa !23
  %and = and i32 %6, 254
  %conv4 = trunc i32 %and to i8
  %7 = load i8*, i8** %pixAddress.addr, align 8, !tbaa !1
  %add.ptr5 = getelementptr inbounds i8, i8* %7, i64 2
  store i8 %conv4, i8* %add.ptr5, align 1, !tbaa !24
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @ShortDelta(i8* %curPtr, i8* %seedPtr, i32 %pixelOffset) #4 {
entry:
  %retval = alloca i32, align 4
  %curPtr.addr = alloca i8*, align 8
  %seedPtr.addr = alloca i8*, align 8
  %pixelOffset.addr = alloca i32, align 4
  %dr = alloca i32, align 4
  %dg = alloca i32, align 4
  %db = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store i8* %curPtr, i8** %curPtr.addr, align 8, !tbaa !1
  store i8* %seedPtr, i8** %seedPtr.addr, align 8, !tbaa !1
  store i32 %pixelOffset, i32* %pixelOffset.addr, align 4, !tbaa !23
  %0 = bitcast i32* %dr to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast i32* %dg to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = bitcast i32* %db to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  %3 = load i32, i32* %pixelOffset.addr, align 4, !tbaa !23
  %mul = mul i32 %3, 3
  %4 = load i8*, i8** %curPtr.addr, align 8, !tbaa !1
  %idx.ext = zext i32 %mul to i64
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %idx.ext
  store i8* %add.ptr, i8** %curPtr.addr, align 8, !tbaa !1
  %5 = load i32, i32* %pixelOffset.addr, align 4, !tbaa !23
  %mul1 = mul i32 %5, 3
  %6 = load i8*, i8** %seedPtr.addr, align 8, !tbaa !1
  %idx.ext2 = zext i32 %mul1 to i64
  %add.ptr3 = getelementptr inbounds i8, i8* %6, i64 %idx.ext2
  store i8* %add.ptr3, i8** %seedPtr.addr, align 8, !tbaa !1
  %7 = load i8*, i8** %curPtr.addr, align 8, !tbaa !1
  %8 = load i8, i8* %7, align 1, !tbaa !24
  %conv = zext i8 %8 to i32
  %9 = load i8*, i8** %seedPtr.addr, align 8, !tbaa !1
  %10 = load i8, i8* %9, align 1, !tbaa !24
  %conv4 = zext i8 %10 to i32
  %sub = sub i32 %conv, %conv4
  store i32 %sub, i32* %dr, align 4, !tbaa !23
  %11 = load i8*, i8** %curPtr.addr, align 8, !tbaa !1
  %add.ptr5 = getelementptr inbounds i8, i8* %11, i64 1
  %12 = load i8, i8* %add.ptr5, align 1, !tbaa !24
  %conv6 = zext i8 %12 to i32
  %13 = load i8*, i8** %seedPtr.addr, align 8, !tbaa !1
  %add.ptr7 = getelementptr inbounds i8, i8* %13, i64 1
  %14 = load i8, i8* %add.ptr7, align 1, !tbaa !24
  %conv8 = zext i8 %14 to i32
  %sub9 = sub i32 %conv6, %conv8
  store i32 %sub9, i32* %dg, align 4, !tbaa !23
  %15 = load i8*, i8** %curPtr.addr, align 8, !tbaa !1
  %add.ptr10 = getelementptr inbounds i8, i8* %15, i64 2
  %16 = load i8, i8* %add.ptr10, align 1, !tbaa !24
  %conv11 = zext i8 %16 to i32
  %and = and i32 %conv11, 254
  %17 = load i8*, i8** %seedPtr.addr, align 8, !tbaa !1
  %add.ptr12 = getelementptr inbounds i8, i8* %17, i64 2
  %18 = load i8, i8* %add.ptr12, align 1, !tbaa !24
  %conv13 = zext i8 %18 to i32
  %and14 = and i32 %conv13, 254
  %sub15 = sub i32 %and, %and14
  store i32 %sub15, i32* %db, align 4, !tbaa !23
  %19 = load i32, i32* %dr, align 4, !tbaa !23
  %cmp = icmp sle i32 %19, 15
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %20 = load i32, i32* %dr, align 4, !tbaa !23
  %cmp17 = icmp sge i32 %20, -16
  br i1 %cmp17, label %land.lhs.true.19, label %if.end

land.lhs.true.19:                                 ; preds = %land.lhs.true
  %21 = load i32, i32* %dg, align 4, !tbaa !23
  %cmp20 = icmp sle i32 %21, 15
  br i1 %cmp20, label %land.lhs.true.22, label %if.end

land.lhs.true.22:                                 ; preds = %land.lhs.true.19
  %22 = load i32, i32* %dg, align 4, !tbaa !23
  %cmp23 = icmp sge i32 %22, -16
  br i1 %cmp23, label %land.lhs.true.25, label %if.end

land.lhs.true.25:                                 ; preds = %land.lhs.true.22
  %23 = load i32, i32* %db, align 4, !tbaa !23
  %cmp26 = icmp sle i32 %23, 30
  br i1 %cmp26, label %land.lhs.true.28, label %if.end

land.lhs.true.28:                                 ; preds = %land.lhs.true.25
  %24 = load i32, i32* %db, align 4, !tbaa !23
  %cmp29 = icmp sge i32 %24, -32
  br i1 %cmp29, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.28
  %25 = load i32, i32* %dr, align 4, !tbaa !23
  %shl = shl i32 %25, 10
  %and31 = and i32 %shl, 31744
  %26 = load i32, i32* %dg, align 4, !tbaa !23
  %shl32 = shl i32 %26, 5
  %and33 = and i32 %shl32, 992
  %27 = load i32, i32* %db, align 4, !tbaa !23
  %shr = ashr i32 %27, 1
  %and34 = and i32 %shr, 31
  %or = or i32 %and33, %and34
  %or35 = or i32 %or, 32768
  %or36 = or i32 %and31, %or35
  store i32 %or36, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.28, %land.lhs.true.25, %land.lhs.true.22, %land.lhs.true.19, %land.lhs.true, %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %28 = bitcast i32* %db to i8*
  call void @llvm.lifetime.end(i64 4, i8* %28) #2
  %29 = bitcast i32* %dg to i8*
  call void @llvm.lifetime.end(i64 4, i8* %29) #2
  %30 = bitcast i32* %dr to i8*
  call void @llvm.lifetime.end(i64 4, i8* %30) #2
  %31 = load i32, i32* %retval
  ret i32 %31
}

; Function Attrs: nounwind uwtable
define internal i32 @do_gcr(i32 %bytecount, i8* %inbyte, i8* %kvalues, i8* %cvalues, i8* %mvalues, i8* %yvalues, i32* %kcorrect, i64* %inword) #1 {
entry:
  %bytecount.addr = alloca i32, align 4
  %inbyte.addr = alloca i8*, align 8
  %kvalues.addr = alloca i8*, align 8
  %cvalues.addr = alloca i8*, align 8
  %mvalues.addr = alloca i8*, align 8
  %yvalues.addr = alloca i8*, align 8
  %kcorrect.addr = alloca i32*, align 8
  %inword.addr = alloca i64*, align 8
  %i = alloca i32, align 4
  %ucr = alloca i32, align 4
  %kadd = alloca i32, align 4
  %is_color = alloca i32, align 4
  %uca_fac = alloca float, align 4
  %black = alloca i8*, align 8
  %cyan = alloca i8*, align 8
  %magenta = alloca i8*, align 8
  %yellow = alloca i8*, align 8
  %last_color_value = alloca i64, align 8
  %last_color = alloca i64*, align 8
  %output = alloca [255 x i8], align 16
  %out2 = alloca [128 x i8], align 16
  store i32 %bytecount, i32* %bytecount.addr, align 4, !tbaa !23
  store i8* %inbyte, i8** %inbyte.addr, align 8, !tbaa !1
  store i8* %kvalues, i8** %kvalues.addr, align 8, !tbaa !1
  store i8* %cvalues, i8** %cvalues.addr, align 8, !tbaa !1
  store i8* %mvalues, i8** %mvalues.addr, align 8, !tbaa !1
  store i8* %yvalues, i8** %yvalues.addr, align 8, !tbaa !1
  store i32* %kcorrect, i32** %kcorrect.addr, align 8, !tbaa !1
  store i64* %inword, i64** %inword.addr, align 8, !tbaa !1
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast i32* %ucr to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = bitcast i32* %kadd to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  %3 = bitcast i32* %is_color to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  store i32 0, i32* %is_color, align 4, !tbaa !23
  %4 = bitcast float* %uca_fac to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = bitcast i8** %black to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #2
  %6 = bitcast i8** %cyan to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #2
  %7 = bitcast i8** %magenta to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #2
  %8 = bitcast i8** %yellow to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #2
  %9 = bitcast i64* %last_color_value to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #2
  store i64 0, i64* %last_color_value, align 8, !tbaa !65
  %10 = bitcast i64** %last_color to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #2
  %11 = bitcast [255 x i8]* %output to i8*
  call void @llvm.lifetime.start(i64 255, i8* %11) #2
  %12 = bitcast [128 x i8]* %out2 to i8*
  call void @llvm.lifetime.start(i64 128, i8* %12) #2
  store i64* %last_color_value, i64** %last_color, align 8, !tbaa !1
  store i32 0, i32* %i, align 4, !tbaa !23
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %13 = load i32, i32* %i, align 4, !tbaa !23
  %14 = load i32, i32* %bytecount.addr, align 4, !tbaa !23
  %cmp = icmp slt i32 %13, %14
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %15 = load i8*, i8** %inbyte.addr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %incdec.ptr, i8** %inbyte.addr, align 8, !tbaa !1
  store i8* %15, i8** %black, align 8, !tbaa !1
  %16 = load i8*, i8** %inbyte.addr, align 8, !tbaa !1
  %incdec.ptr1 = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %incdec.ptr1, i8** %inbyte.addr, align 8, !tbaa !1
  store i8* %16, i8** %cyan, align 8, !tbaa !1
  %17 = load i8*, i8** %inbyte.addr, align 8, !tbaa !1
  %incdec.ptr2 = getelementptr inbounds i8, i8* %17, i32 1
  store i8* %incdec.ptr2, i8** %inbyte.addr, align 8, !tbaa !1
  store i8* %17, i8** %magenta, align 8, !tbaa !1
  %18 = load i8*, i8** %inbyte.addr, align 8, !tbaa !1
  %incdec.ptr3 = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %incdec.ptr3, i8** %inbyte.addr, align 8, !tbaa !1
  store i8* %18, i8** %yellow, align 8, !tbaa !1
  %19 = load i8*, i8** %black, align 8, !tbaa !1
  %20 = load i8, i8* %19, align 1, !tbaa !24
  %conv = zext i8 %20 to i32
  %cmp4 = icmp sgt i32 %conv, 0
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %21 = load i8*, i8** %black, align 8, !tbaa !1
  %22 = load i8, i8* %21, align 1, !tbaa !24
  %conv6 = zext i8 %22 to i32
  store i32 %conv6, i32* %ucr, align 4, !tbaa !23
  %23 = load i32, i32* %ucr, align 4, !tbaa !23
  %24 = load i8*, i8** %cyan, align 8, !tbaa !1
  %25 = load i8, i8* %24, align 1, !tbaa !24
  %conv7 = zext i8 %25 to i32
  %add = add nsw i32 %conv7, %23
  %conv8 = trunc i32 %add to i8
  store i8 %conv8, i8* %24, align 1, !tbaa !24
  %26 = load i32, i32* %ucr, align 4, !tbaa !23
  %27 = load i8*, i8** %magenta, align 8, !tbaa !1
  %28 = load i8, i8* %27, align 1, !tbaa !24
  %conv9 = zext i8 %28 to i32
  %add10 = add nsw i32 %conv9, %26
  %conv11 = trunc i32 %add10 to i8
  store i8 %conv11, i8* %27, align 1, !tbaa !24
  %29 = load i32, i32* %ucr, align 4, !tbaa !23
  %30 = load i8*, i8** %yellow, align 8, !tbaa !1
  %31 = load i8, i8* %30, align 1, !tbaa !24
  %conv12 = zext i8 %31 to i32
  %add13 = add nsw i32 %conv12, %29
  %conv14 = trunc i32 %add13 to i8
  store i8 %conv14, i8* %30, align 1, !tbaa !24
  %32 = load i8*, i8** %black, align 8, !tbaa !1
  store i8 0, i8* %32, align 1, !tbaa !24
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %33 = load i8*, i8** %magenta, align 8, !tbaa !1
  %34 = load i8, i8* %33, align 1, !tbaa !24
  %conv15 = zext i8 %34 to i32
  %35 = load i8*, i8** %yellow, align 8, !tbaa !1
  %36 = load i8, i8* %35, align 1, !tbaa !24
  %conv16 = zext i8 %36 to i32
  %add17 = add nsw i32 %conv15, %conv16
  %37 = load i8*, i8** %cyan, align 8, !tbaa !1
  %38 = load i8, i8* %37, align 1, !tbaa !24
  %conv18 = zext i8 %38 to i32
  %add19 = add nsw i32 %add17, %conv18
  %cmp20 = icmp sgt i32 %add19, 0
  br i1 %cmp20, label %if.then.22, label %if.end.214

if.then.22:                                       ; preds = %if.end
  store i32 1, i32* %is_color, align 4, !tbaa !23
  %39 = load i64*, i64** %inword.addr, align 8, !tbaa !1
  %40 = load i64, i64* %39, align 8, !tbaa !65
  %41 = load i64, i64* %last_color_value, align 8, !tbaa !65
  %cmp23 = icmp eq i64 %40, %41
  br i1 %cmp23, label %if.then.25, label %if.else

if.then.25:                                       ; preds = %if.then.22
  %42 = load i64*, i64** %inword.addr, align 8, !tbaa !1
  %43 = load i64, i64* %42, align 8, !tbaa !65
  store i64 %43, i64* %last_color_value, align 8, !tbaa !65
  %44 = load i64*, i64** %last_color, align 8, !tbaa !1
  %45 = load i64, i64* %44, align 8, !tbaa !65
  %46 = load i64*, i64** %inword.addr, align 8, !tbaa !1
  store i64 %45, i64* %46, align 8, !tbaa !65
  br label %if.end.213

if.else:                                          ; preds = %if.then.22
  %47 = load i64*, i64** %inword.addr, align 8, !tbaa !1
  %48 = load i64, i64* %47, align 8, !tbaa !65
  store i64 %48, i64* %last_color_value, align 8, !tbaa !65
  %49 = load i8*, i8** %black, align 8, !tbaa !1
  %50 = load i8, i8* %49, align 1, !tbaa !24
  %conv26 = zext i8 %50 to i32
  store i32 %conv26, i32* %ucr, align 4, !tbaa !23
  %51 = load i32, i32* %ucr, align 4, !tbaa !23
  %52 = load i8*, i8** %cyan, align 8, !tbaa !1
  %53 = load i8, i8* %52, align 1, !tbaa !24
  %conv27 = zext i8 %53 to i32
  %add28 = add nsw i32 %conv27, %51
  %conv29 = trunc i32 %add28 to i8
  store i8 %conv29, i8* %52, align 1, !tbaa !24
  %54 = load i32, i32* %ucr, align 4, !tbaa !23
  %55 = load i8*, i8** %magenta, align 8, !tbaa !1
  %56 = load i8, i8* %55, align 1, !tbaa !24
  %conv30 = zext i8 %56 to i32
  %add31 = add nsw i32 %conv30, %54
  %conv32 = trunc i32 %add31 to i8
  store i8 %conv32, i8* %55, align 1, !tbaa !24
  %57 = load i32, i32* %ucr, align 4, !tbaa !23
  %58 = load i8*, i8** %yellow, align 8, !tbaa !1
  %59 = load i8, i8* %58, align 1, !tbaa !24
  %conv33 = zext i8 %59 to i32
  %add34 = add nsw i32 %conv33, %57
  %conv35 = trunc i32 %add34 to i8
  store i8 %conv35, i8* %58, align 1, !tbaa !24
  %60 = load i8*, i8** %black, align 8, !tbaa !1
  store i8 0, i8* %60, align 1, !tbaa !24
  %61 = load i8*, i8** %cyan, align 8, !tbaa !1
  %62 = load i8, i8* %61, align 1, !tbaa !24
  %conv36 = zext i8 %62 to i32
  %63 = load i8*, i8** %magenta, align 8, !tbaa !1
  %64 = load i8, i8* %63, align 1, !tbaa !24
  %conv37 = zext i8 %64 to i32
  %cmp38 = icmp sge i32 %conv36, %conv37
  br i1 %cmp38, label %land.lhs.true, label %if.else.59

land.lhs.true:                                    ; preds = %if.else
  %65 = load i8*, i8** %magenta, align 8, !tbaa !1
  %66 = load i8, i8* %65, align 1, !tbaa !24
  %conv40 = zext i8 %66 to i32
  %67 = load i8*, i8** %yellow, align 8, !tbaa !1
  %68 = load i8, i8* %67, align 1, !tbaa !24
  %conv41 = zext i8 %68 to i32
  %cmp42 = icmp sge i32 %conv40, %conv41
  br i1 %cmp42, label %land.lhs.true.44, label %if.else.59

land.lhs.true.44:                                 ; preds = %land.lhs.true
  %69 = load i8*, i8** %yellow, align 8, !tbaa !1
  %70 = load i8, i8* %69, align 1, !tbaa !24
  %conv45 = zext i8 %70 to i32
  %cmp46 = icmp sgt i32 %conv45, 0
  br i1 %cmp46, label %if.then.48, label %if.else.59

if.then.48:                                       ; preds = %land.lhs.true.44
  %71 = load i8*, i8** %black, align 8, !tbaa !1
  %72 = load i8, i8* %71, align 1, !tbaa !24
  %conv49 = zext i8 %72 to i32
  store i32 %conv49, i32* %ucr, align 4, !tbaa !23
  %73 = load i32, i32* %ucr, align 4, !tbaa !23
  %74 = load i8*, i8** %cyan, align 8, !tbaa !1
  %75 = load i8, i8* %74, align 1, !tbaa !24
  %conv50 = zext i8 %75 to i32
  %add51 = add nsw i32 %conv50, %73
  %conv52 = trunc i32 %add51 to i8
  store i8 %conv52, i8* %74, align 1, !tbaa !24
  %76 = load i32, i32* %ucr, align 4, !tbaa !23
  %77 = load i8*, i8** %magenta, align 8, !tbaa !1
  %78 = load i8, i8* %77, align 1, !tbaa !24
  %conv53 = zext i8 %78 to i32
  %add54 = add nsw i32 %conv53, %76
  %conv55 = trunc i32 %add54 to i8
  store i8 %conv55, i8* %77, align 1, !tbaa !24
  %79 = load i32, i32* %ucr, align 4, !tbaa !23
  %80 = load i8*, i8** %yellow, align 8, !tbaa !1
  %81 = load i8, i8* %80, align 1, !tbaa !24
  %conv56 = zext i8 %81 to i32
  %add57 = add nsw i32 %conv56, %79
  %conv58 = trunc i32 %add57 to i8
  store i8 %conv58, i8* %80, align 1, !tbaa !24
  %82 = load i8*, i8** %black, align 8, !tbaa !1
  store i8 0, i8* %82, align 1, !tbaa !24
  br label %if.end.190

if.else.59:                                       ; preds = %land.lhs.true.44, %land.lhs.true, %if.else
  %83 = load i8*, i8** %cyan, align 8, !tbaa !1
  %84 = load i8, i8* %83, align 1, !tbaa !24
  %conv60 = zext i8 %84 to i32
  %85 = load i8*, i8** %yellow, align 8, !tbaa !1
  %86 = load i8, i8* %85, align 1, !tbaa !24
  %conv61 = zext i8 %86 to i32
  %cmp62 = icmp sge i32 %conv60, %conv61
  br i1 %cmp62, label %land.lhs.true.64, label %if.else.84

land.lhs.true.64:                                 ; preds = %if.else.59
  %87 = load i8*, i8** %yellow, align 8, !tbaa !1
  %88 = load i8, i8* %87, align 1, !tbaa !24
  %conv65 = zext i8 %88 to i32
  %89 = load i8*, i8** %magenta, align 8, !tbaa !1
  %90 = load i8, i8* %89, align 1, !tbaa !24
  %conv66 = zext i8 %90 to i32
  %cmp67 = icmp sge i32 %conv65, %conv66
  br i1 %cmp67, label %land.lhs.true.69, label %if.else.84

land.lhs.true.69:                                 ; preds = %land.lhs.true.64
  %91 = load i8*, i8** %magenta, align 8, !tbaa !1
  %92 = load i8, i8* %91, align 1, !tbaa !24
  %conv70 = zext i8 %92 to i32
  %cmp71 = icmp sgt i32 %conv70, 0
  br i1 %cmp71, label %if.then.73, label %if.else.84

if.then.73:                                       ; preds = %land.lhs.true.69
  %93 = load i8*, i8** %black, align 8, !tbaa !1
  %94 = load i8, i8* %93, align 1, !tbaa !24
  %conv74 = zext i8 %94 to i32
  store i32 %conv74, i32* %ucr, align 4, !tbaa !23
  %95 = load i32, i32* %ucr, align 4, !tbaa !23
  %96 = load i8*, i8** %cyan, align 8, !tbaa !1
  %97 = load i8, i8* %96, align 1, !tbaa !24
  %conv75 = zext i8 %97 to i32
  %add76 = add nsw i32 %conv75, %95
  %conv77 = trunc i32 %add76 to i8
  store i8 %conv77, i8* %96, align 1, !tbaa !24
  %98 = load i32, i32* %ucr, align 4, !tbaa !23
  %99 = load i8*, i8** %yellow, align 8, !tbaa !1
  %100 = load i8, i8* %99, align 1, !tbaa !24
  %conv78 = zext i8 %100 to i32
  %add79 = add nsw i32 %conv78, %98
  %conv80 = trunc i32 %add79 to i8
  store i8 %conv80, i8* %99, align 1, !tbaa !24
  %101 = load i32, i32* %ucr, align 4, !tbaa !23
  %102 = load i8*, i8** %magenta, align 8, !tbaa !1
  %103 = load i8, i8* %102, align 1, !tbaa !24
  %conv81 = zext i8 %103 to i32
  %add82 = add nsw i32 %conv81, %101
  %conv83 = trunc i32 %add82 to i8
  store i8 %conv83, i8* %102, align 1, !tbaa !24
  %104 = load i8*, i8** %black, align 8, !tbaa !1
  store i8 0, i8* %104, align 1, !tbaa !24
  br label %if.end.189

if.else.84:                                       ; preds = %land.lhs.true.69, %land.lhs.true.64, %if.else.59
  %105 = load i8*, i8** %yellow, align 8, !tbaa !1
  %106 = load i8, i8* %105, align 1, !tbaa !24
  %conv85 = zext i8 %106 to i32
  %107 = load i8*, i8** %magenta, align 8, !tbaa !1
  %108 = load i8, i8* %107, align 1, !tbaa !24
  %conv86 = zext i8 %108 to i32
  %cmp87 = icmp sge i32 %conv85, %conv86
  br i1 %cmp87, label %land.lhs.true.89, label %if.else.109

land.lhs.true.89:                                 ; preds = %if.else.84
  %109 = load i8*, i8** %magenta, align 8, !tbaa !1
  %110 = load i8, i8* %109, align 1, !tbaa !24
  %conv90 = zext i8 %110 to i32
  %111 = load i8*, i8** %cyan, align 8, !tbaa !1
  %112 = load i8, i8* %111, align 1, !tbaa !24
  %conv91 = zext i8 %112 to i32
  %cmp92 = icmp sge i32 %conv90, %conv91
  br i1 %cmp92, label %land.lhs.true.94, label %if.else.109

land.lhs.true.94:                                 ; preds = %land.lhs.true.89
  %113 = load i8*, i8** %cyan, align 8, !tbaa !1
  %114 = load i8, i8* %113, align 1, !tbaa !24
  %conv95 = zext i8 %114 to i32
  %cmp96 = icmp sgt i32 %conv95, 0
  br i1 %cmp96, label %if.then.98, label %if.else.109

if.then.98:                                       ; preds = %land.lhs.true.94
  %115 = load i8*, i8** %black, align 8, !tbaa !1
  %116 = load i8, i8* %115, align 1, !tbaa !24
  %conv99 = zext i8 %116 to i32
  store i32 %conv99, i32* %ucr, align 4, !tbaa !23
  %117 = load i32, i32* %ucr, align 4, !tbaa !23
  %118 = load i8*, i8** %yellow, align 8, !tbaa !1
  %119 = load i8, i8* %118, align 1, !tbaa !24
  %conv100 = zext i8 %119 to i32
  %add101 = add nsw i32 %conv100, %117
  %conv102 = trunc i32 %add101 to i8
  store i8 %conv102, i8* %118, align 1, !tbaa !24
  %120 = load i32, i32* %ucr, align 4, !tbaa !23
  %121 = load i8*, i8** %magenta, align 8, !tbaa !1
  %122 = load i8, i8* %121, align 1, !tbaa !24
  %conv103 = zext i8 %122 to i32
  %add104 = add nsw i32 %conv103, %120
  %conv105 = trunc i32 %add104 to i8
  store i8 %conv105, i8* %121, align 1, !tbaa !24
  %123 = load i32, i32* %ucr, align 4, !tbaa !23
  %124 = load i8*, i8** %cyan, align 8, !tbaa !1
  %125 = load i8, i8* %124, align 1, !tbaa !24
  %conv106 = zext i8 %125 to i32
  %add107 = add nsw i32 %conv106, %123
  %conv108 = trunc i32 %add107 to i8
  store i8 %conv108, i8* %124, align 1, !tbaa !24
  %126 = load i8*, i8** %black, align 8, !tbaa !1
  store i8 0, i8* %126, align 1, !tbaa !24
  br label %if.end.188

if.else.109:                                      ; preds = %land.lhs.true.94, %land.lhs.true.89, %if.else.84
  %127 = load i8*, i8** %yellow, align 8, !tbaa !1
  %128 = load i8, i8* %127, align 1, !tbaa !24
  %conv110 = zext i8 %128 to i32
  %129 = load i8*, i8** %cyan, align 8, !tbaa !1
  %130 = load i8, i8* %129, align 1, !tbaa !24
  %conv111 = zext i8 %130 to i32
  %cmp112 = icmp sge i32 %conv110, %conv111
  br i1 %cmp112, label %land.lhs.true.114, label %if.else.134

land.lhs.true.114:                                ; preds = %if.else.109
  %131 = load i8*, i8** %cyan, align 8, !tbaa !1
  %132 = load i8, i8* %131, align 1, !tbaa !24
  %conv115 = zext i8 %132 to i32
  %133 = load i8*, i8** %magenta, align 8, !tbaa !1
  %134 = load i8, i8* %133, align 1, !tbaa !24
  %conv116 = zext i8 %134 to i32
  %cmp117 = icmp sge i32 %conv115, %conv116
  br i1 %cmp117, label %land.lhs.true.119, label %if.else.134

land.lhs.true.119:                                ; preds = %land.lhs.true.114
  %135 = load i8*, i8** %magenta, align 8, !tbaa !1
  %136 = load i8, i8* %135, align 1, !tbaa !24
  %conv120 = zext i8 %136 to i32
  %cmp121 = icmp sgt i32 %conv120, 0
  br i1 %cmp121, label %if.then.123, label %if.else.134

if.then.123:                                      ; preds = %land.lhs.true.119
  %137 = load i8*, i8** %black, align 8, !tbaa !1
  %138 = load i8, i8* %137, align 1, !tbaa !24
  %conv124 = zext i8 %138 to i32
  store i32 %conv124, i32* %ucr, align 4, !tbaa !23
  %139 = load i32, i32* %ucr, align 4, !tbaa !23
  %140 = load i8*, i8** %yellow, align 8, !tbaa !1
  %141 = load i8, i8* %140, align 1, !tbaa !24
  %conv125 = zext i8 %141 to i32
  %add126 = add nsw i32 %conv125, %139
  %conv127 = trunc i32 %add126 to i8
  store i8 %conv127, i8* %140, align 1, !tbaa !24
  %142 = load i32, i32* %ucr, align 4, !tbaa !23
  %143 = load i8*, i8** %cyan, align 8, !tbaa !1
  %144 = load i8, i8* %143, align 1, !tbaa !24
  %conv128 = zext i8 %144 to i32
  %add129 = add nsw i32 %conv128, %142
  %conv130 = trunc i32 %add129 to i8
  store i8 %conv130, i8* %143, align 1, !tbaa !24
  %145 = load i32, i32* %ucr, align 4, !tbaa !23
  %146 = load i8*, i8** %magenta, align 8, !tbaa !1
  %147 = load i8, i8* %146, align 1, !tbaa !24
  %conv131 = zext i8 %147 to i32
  %add132 = add nsw i32 %conv131, %145
  %conv133 = trunc i32 %add132 to i8
  store i8 %conv133, i8* %146, align 1, !tbaa !24
  %148 = load i8*, i8** %black, align 8, !tbaa !1
  store i8 0, i8* %148, align 1, !tbaa !24
  br label %if.end.187

if.else.134:                                      ; preds = %land.lhs.true.119, %land.lhs.true.114, %if.else.109
  %149 = load i8*, i8** %magenta, align 8, !tbaa !1
  %150 = load i8, i8* %149, align 1, !tbaa !24
  %conv135 = zext i8 %150 to i32
  %151 = load i8*, i8** %yellow, align 8, !tbaa !1
  %152 = load i8, i8* %151, align 1, !tbaa !24
  %conv136 = zext i8 %152 to i32
  %cmp137 = icmp sge i32 %conv135, %conv136
  br i1 %cmp137, label %land.lhs.true.139, label %if.else.159

land.lhs.true.139:                                ; preds = %if.else.134
  %153 = load i8*, i8** %yellow, align 8, !tbaa !1
  %154 = load i8, i8* %153, align 1, !tbaa !24
  %conv140 = zext i8 %154 to i32
  %155 = load i8*, i8** %cyan, align 8, !tbaa !1
  %156 = load i8, i8* %155, align 1, !tbaa !24
  %conv141 = zext i8 %156 to i32
  %cmp142 = icmp sge i32 %conv140, %conv141
  br i1 %cmp142, label %land.lhs.true.144, label %if.else.159

land.lhs.true.144:                                ; preds = %land.lhs.true.139
  %157 = load i8*, i8** %cyan, align 8, !tbaa !1
  %158 = load i8, i8* %157, align 1, !tbaa !24
  %conv145 = zext i8 %158 to i32
  %cmp146 = icmp sgt i32 %conv145, 0
  br i1 %cmp146, label %if.then.148, label %if.else.159

if.then.148:                                      ; preds = %land.lhs.true.144
  %159 = load i8*, i8** %black, align 8, !tbaa !1
  %160 = load i8, i8* %159, align 1, !tbaa !24
  %conv149 = zext i8 %160 to i32
  store i32 %conv149, i32* %ucr, align 4, !tbaa !23
  %161 = load i32, i32* %ucr, align 4, !tbaa !23
  %162 = load i8*, i8** %magenta, align 8, !tbaa !1
  %163 = load i8, i8* %162, align 1, !tbaa !24
  %conv150 = zext i8 %163 to i32
  %add151 = add nsw i32 %conv150, %161
  %conv152 = trunc i32 %add151 to i8
  store i8 %conv152, i8* %162, align 1, !tbaa !24
  %164 = load i32, i32* %ucr, align 4, !tbaa !23
  %165 = load i8*, i8** %yellow, align 8, !tbaa !1
  %166 = load i8, i8* %165, align 1, !tbaa !24
  %conv153 = zext i8 %166 to i32
  %add154 = add nsw i32 %conv153, %164
  %conv155 = trunc i32 %add154 to i8
  store i8 %conv155, i8* %165, align 1, !tbaa !24
  %167 = load i32, i32* %ucr, align 4, !tbaa !23
  %168 = load i8*, i8** %cyan, align 8, !tbaa !1
  %169 = load i8, i8* %168, align 1, !tbaa !24
  %conv156 = zext i8 %169 to i32
  %add157 = add nsw i32 %conv156, %167
  %conv158 = trunc i32 %add157 to i8
  store i8 %conv158, i8* %168, align 1, !tbaa !24
  %170 = load i8*, i8** %black, align 8, !tbaa !1
  store i8 0, i8* %170, align 1, !tbaa !24
  br label %if.end.186

if.else.159:                                      ; preds = %land.lhs.true.144, %land.lhs.true.139, %if.else.134
  %171 = load i8*, i8** %magenta, align 8, !tbaa !1
  %172 = load i8, i8* %171, align 1, !tbaa !24
  %conv160 = zext i8 %172 to i32
  %173 = load i8*, i8** %cyan, align 8, !tbaa !1
  %174 = load i8, i8* %173, align 1, !tbaa !24
  %conv161 = zext i8 %174 to i32
  %cmp162 = icmp sge i32 %conv160, %conv161
  br i1 %cmp162, label %land.lhs.true.164, label %if.else.184

land.lhs.true.164:                                ; preds = %if.else.159
  %175 = load i8*, i8** %cyan, align 8, !tbaa !1
  %176 = load i8, i8* %175, align 1, !tbaa !24
  %conv165 = zext i8 %176 to i32
  %177 = load i8*, i8** %yellow, align 8, !tbaa !1
  %178 = load i8, i8* %177, align 1, !tbaa !24
  %conv166 = zext i8 %178 to i32
  %cmp167 = icmp sge i32 %conv165, %conv166
  br i1 %cmp167, label %land.lhs.true.169, label %if.else.184

land.lhs.true.169:                                ; preds = %land.lhs.true.164
  %179 = load i8*, i8** %yellow, align 8, !tbaa !1
  %180 = load i8, i8* %179, align 1, !tbaa !24
  %conv170 = zext i8 %180 to i32
  %cmp171 = icmp sgt i32 %conv170, 0
  br i1 %cmp171, label %if.then.173, label %if.else.184

if.then.173:                                      ; preds = %land.lhs.true.169
  %181 = load i8*, i8** %black, align 8, !tbaa !1
  %182 = load i8, i8* %181, align 1, !tbaa !24
  %conv174 = zext i8 %182 to i32
  store i32 %conv174, i32* %ucr, align 4, !tbaa !23
  %183 = load i32, i32* %ucr, align 4, !tbaa !23
  %184 = load i8*, i8** %magenta, align 8, !tbaa !1
  %185 = load i8, i8* %184, align 1, !tbaa !24
  %conv175 = zext i8 %185 to i32
  %add176 = add nsw i32 %conv175, %183
  %conv177 = trunc i32 %add176 to i8
  store i8 %conv177, i8* %184, align 1, !tbaa !24
  %186 = load i32, i32* %ucr, align 4, !tbaa !23
  %187 = load i8*, i8** %cyan, align 8, !tbaa !1
  %188 = load i8, i8* %187, align 1, !tbaa !24
  %conv178 = zext i8 %188 to i32
  %add179 = add nsw i32 %conv178, %186
  %conv180 = trunc i32 %add179 to i8
  store i8 %conv180, i8* %187, align 1, !tbaa !24
  %189 = load i32, i32* %ucr, align 4, !tbaa !23
  %190 = load i8*, i8** %yellow, align 8, !tbaa !1
  %191 = load i8, i8* %190, align 1, !tbaa !24
  %conv181 = zext i8 %191 to i32
  %add182 = add nsw i32 %conv181, %189
  %conv183 = trunc i32 %add182 to i8
  store i8 %conv183, i8* %190, align 1, !tbaa !24
  %192 = load i8*, i8** %black, align 8, !tbaa !1
  store i8 0, i8* %192, align 1, !tbaa !24
  br label %if.end.185

if.else.184:                                      ; preds = %land.lhs.true.169, %land.lhs.true.164, %if.else.159
  br label %if.end.185

if.end.185:                                       ; preds = %if.else.184, %if.then.173
  br label %if.end.186

if.end.186:                                       ; preds = %if.end.185, %if.then.148
  br label %if.end.187

if.end.187:                                       ; preds = %if.end.186, %if.then.123
  br label %if.end.188

if.end.188:                                       ; preds = %if.end.187, %if.then.98
  br label %if.end.189

if.end.189:                                       ; preds = %if.end.188, %if.then.73
  br label %if.end.190

if.end.190:                                       ; preds = %if.end.189, %if.then.48
  %193 = load i8*, i8** %cyan, align 8, !tbaa !1
  %194 = load i8, i8* %193, align 1, !tbaa !24
  %conv191 = zext i8 %194 to i32
  %cmp192 = icmp sgt i32 %conv191, 255
  br i1 %cmp192, label %if.then.194, label %if.end.195

if.then.194:                                      ; preds = %if.end.190
  %195 = load i8*, i8** %cyan, align 8, !tbaa !1
  store i8 -1, i8* %195, align 1, !tbaa !24
  br label %if.end.195

if.end.195:                                       ; preds = %if.then.194, %if.end.190
  %196 = load i8*, i8** %magenta, align 8, !tbaa !1
  %197 = load i8, i8* %196, align 1, !tbaa !24
  %conv196 = zext i8 %197 to i32
  %cmp197 = icmp sgt i32 %conv196, 255
  br i1 %cmp197, label %if.then.199, label %if.end.200

if.then.199:                                      ; preds = %if.end.195
  %198 = load i8*, i8** %magenta, align 8, !tbaa !1
  store i8 -1, i8* %198, align 1, !tbaa !24
  br label %if.end.200

if.end.200:                                       ; preds = %if.then.199, %if.end.195
  %199 = load i8*, i8** %yellow, align 8, !tbaa !1
  %200 = load i8, i8* %199, align 1, !tbaa !24
  %conv201 = zext i8 %200 to i32
  %cmp202 = icmp sgt i32 %conv201, 255
  br i1 %cmp202, label %if.then.204, label %if.end.205

if.then.204:                                      ; preds = %if.end.200
  %201 = load i8*, i8** %yellow, align 8, !tbaa !1
  store i8 -1, i8* %201, align 1, !tbaa !24
  br label %if.end.205

if.end.205:                                       ; preds = %if.then.204, %if.end.200
  %202 = load i8*, i8** %cvalues.addr, align 8, !tbaa !1
  %203 = load i8*, i8** %cyan, align 8, !tbaa !1
  %204 = load i8, i8* %203, align 1, !tbaa !24
  %conv206 = zext i8 %204 to i32
  %idx.ext = sext i32 %conv206 to i64
  %add.ptr = getelementptr inbounds i8, i8* %202, i64 %idx.ext
  %205 = load i8, i8* %add.ptr, align 1, !tbaa !24
  %206 = load i8*, i8** %cyan, align 8, !tbaa !1
  store i8 %205, i8* %206, align 1, !tbaa !24
  %207 = load i8*, i8** %mvalues.addr, align 8, !tbaa !1
  %208 = load i8*, i8** %magenta, align 8, !tbaa !1
  %209 = load i8, i8* %208, align 1, !tbaa !24
  %conv207 = zext i8 %209 to i32
  %idx.ext208 = sext i32 %conv207 to i64
  %add.ptr209 = getelementptr inbounds i8, i8* %207, i64 %idx.ext208
  %210 = load i8, i8* %add.ptr209, align 1, !tbaa !24
  %211 = load i8*, i8** %magenta, align 8, !tbaa !1
  store i8 %210, i8* %211, align 1, !tbaa !24
  %212 = load i8*, i8** %yvalues.addr, align 8, !tbaa !1
  %213 = load i8*, i8** %yellow, align 8, !tbaa !1
  %214 = load i8, i8* %213, align 1, !tbaa !24
  %conv210 = zext i8 %214 to i32
  %idx.ext211 = sext i32 %conv210 to i64
  %add.ptr212 = getelementptr inbounds i8, i8* %212, i64 %idx.ext211
  %215 = load i8, i8* %add.ptr212, align 1, !tbaa !24
  %216 = load i8*, i8** %yellow, align 8, !tbaa !1
  store i8 %215, i8* %216, align 1, !tbaa !24
  %217 = load i64*, i64** %inword.addr, align 8, !tbaa !1
  store i64* %217, i64** %last_color, align 8, !tbaa !1
  br label %if.end.213

if.end.213:                                       ; preds = %if.end.205, %if.then.25
  br label %if.end.214

if.end.214:                                       ; preds = %if.end.213, %if.end
  %218 = load i8*, i8** %kvalues.addr, align 8, !tbaa !1
  %219 = load i8*, i8** %black, align 8, !tbaa !1
  %220 = load i8, i8* %219, align 1, !tbaa !24
  %conv215 = zext i8 %220 to i32
  %idx.ext216 = sext i32 %conv215 to i64
  %add.ptr217 = getelementptr inbounds i8, i8* %218, i64 %idx.ext216
  %221 = load i8, i8* %add.ptr217, align 1, !tbaa !24
  %222 = load i8*, i8** %black, align 8, !tbaa !1
  store i8 %221, i8* %222, align 1, !tbaa !24
  %223 = load i64*, i64** %inword.addr, align 8, !tbaa !1
  %add.ptr218 = getelementptr inbounds i64, i64* %223, i64 1
  store i64* %add.ptr218, i64** %inword.addr, align 8, !tbaa !1
  br label %for.inc

for.inc:                                          ; preds = %if.end.214
  %224 = load i32, i32* %i, align 4, !tbaa !23
  %add219 = add nsw i32 %224, 4
  store i32 %add219, i32* %i, align 4, !tbaa !23
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %225 = load i32, i32* %is_color, align 4, !tbaa !23
  %226 = bitcast [128 x i8]* %out2 to i8*
  call void @llvm.lifetime.end(i64 128, i8* %226) #2
  %227 = bitcast [255 x i8]* %output to i8*
  call void @llvm.lifetime.end(i64 255, i8* %227) #2
  %228 = bitcast i64** %last_color to i8*
  call void @llvm.lifetime.end(i64 8, i8* %228) #2
  %229 = bitcast i64* %last_color_value to i8*
  call void @llvm.lifetime.end(i64 8, i8* %229) #2
  %230 = bitcast i8** %yellow to i8*
  call void @llvm.lifetime.end(i64 8, i8* %230) #2
  %231 = bitcast i8** %magenta to i8*
  call void @llvm.lifetime.end(i64 8, i8* %231) #2
  %232 = bitcast i8** %cyan to i8*
  call void @llvm.lifetime.end(i64 8, i8* %232) #2
  %233 = bitcast i8** %black to i8*
  call void @llvm.lifetime.end(i64 8, i8* %233) #2
  %234 = bitcast float* %uca_fac to i8*
  call void @llvm.lifetime.end(i64 4, i8* %234) #2
  %235 = bitcast i32* %is_color to i8*
  call void @llvm.lifetime.end(i64 4, i8* %235) #2
  %236 = bitcast i32* %kadd to i8*
  call void @llvm.lifetime.end(i64 4, i8* %236) #2
  %237 = bitcast i32* %ucr to i8*
  call void @llvm.lifetime.end(i64 4, i8* %237) #2
  %238 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %238) #2
  ret i32 %225
}

; Function Attrs: nounwind uwtable
define internal void @FSDlinebw(i32 %scan, i32 %plane_size, %struct.error_val_field* %error_values, i8* %kP, i32 %n, i32* %ep, i8* %dp) #1 {
entry:
  %scan.addr = alloca i32, align 4
  %plane_size.addr = alloca i32, align 4
  %error_values.addr = alloca %struct.error_val_field*, align 8
  %kP.addr = alloca i8*, align 8
  %n.addr = alloca i32, align 4
  %ep.addr = alloca i32*, align 8
  %dp.addr = alloca i8*, align 8
  %k = alloca i8, align 1
  %bitmask = alloca i8, align 1
  %oldErr = alloca i32, align 4
  %i = alloca i32, align 4
  %k48 = alloca i8, align 1
  %bitmask49 = alloca i8, align 1
  %oldErr50 = alloca i32, align 4
  %i51 = alloca i32, align 4
  store i32 %scan, i32* %scan.addr, align 4, !tbaa !23
  store i32 %plane_size, i32* %plane_size.addr, align 4, !tbaa !23
  store %struct.error_val_field* %error_values, %struct.error_val_field** %error_values.addr, align 8, !tbaa !1
  store i8* %kP, i8** %kP.addr, align 8, !tbaa !1
  store i32 %n, i32* %n.addr, align 4, !tbaa !23
  store i32* %ep, i32** %ep.addr, align 8, !tbaa !1
  store i8* %dp, i8** %dp.addr, align 8, !tbaa !1
  %0 = load i32, i32* %scan.addr, align 4, !tbaa !23
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start(i64 1, i8* %k) #2
  call void @llvm.lifetime.start(i64 1, i8* %bitmask) #2
  %1 = bitcast i32* %oldErr to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  store i32 0, i32* %i, align 4, !tbaa !23
  br label %for.cond

for.cond:                                         ; preds = %for.inc.46, %if.then
  %3 = load i32, i32* %i, align 4, !tbaa !23
  %4 = load i32, i32* %plane_size.addr, align 4, !tbaa !23
  %cmp1 = icmp slt i32 %3, %4
  br i1 %cmp1, label %for.body, label %for.end.47

for.body:                                         ; preds = %for.cond
  store i8 -128, i8* %bitmask, align 1, !tbaa !24
  store i8 0, i8* %k, align 1, !tbaa !24
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc, %for.body
  %5 = load i8, i8* %bitmask, align 1, !tbaa !24
  %conv = zext i8 %5 to i32
  %cmp3 = icmp ne i32 %conv, 0
  br i1 %cmp3, label %for.body.5, label %for.end

for.body.5:                                       ; preds = %for.cond.2
  %6 = load %struct.error_val_field*, %struct.error_val_field** %error_values.addr, align 8, !tbaa !1
  %k6 = getelementptr inbounds %struct.error_val_field, %struct.error_val_field* %6, i32 0, i32 3
  %7 = load i32, i32* %k6, align 4, !tbaa !102
  store i32 %7, i32* %oldErr, align 4, !tbaa !23
  %8 = load i32*, i32** %ep.addr, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i32, i32* %8, i64 0
  %9 = load i32, i32* %add.ptr, align 4, !tbaa !23
  %10 = load %struct.error_val_field*, %struct.error_val_field** %error_values.addr, align 8, !tbaa !1
  %k7 = getelementptr inbounds %struct.error_val_field, %struct.error_val_field* %10, i32 0, i32 3
  %11 = load i32, i32* %k7, align 4, !tbaa !102
  %mul = mul nsw i32 %11, 7
  %add = add nsw i32 %mul, 8
  %shr = ashr i32 %add, 4
  %add8 = add nsw i32 %9, %shr
  %12 = load i8*, i8** %dp.addr, align 8, !tbaa !1
  %add.ptr9 = getelementptr inbounds i8, i8* %12, i64 0
  %13 = load i8, i8* %add.ptr9, align 1, !tbaa !24
  %conv10 = zext i8 %13 to i32
  %shl = shl i32 %conv10, 19
  %add11 = add nsw i32 %add8, %shl
  %14 = load %struct.error_val_field*, %struct.error_val_field** %error_values.addr, align 8, !tbaa !1
  %k12 = getelementptr inbounds %struct.error_val_field, %struct.error_val_field* %14, i32 0, i32 3
  store i32 %add11, i32* %k12, align 4, !tbaa !102
  %15 = load %struct.error_val_field*, %struct.error_val_field** %error_values.addr, align 8, !tbaa !1
  %k13 = getelementptr inbounds %struct.error_val_field, %struct.error_val_field* %15, i32 0, i32 3
  %16 = load i32, i32* %k13, align 4, !tbaa !102
  %cmp14 = icmp sgt i32 %16, 67108864
  br i1 %cmp14, label %if.then.20, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body.5
  %17 = load i8*, i8** %dp.addr, align 8, !tbaa !1
  %add.ptr16 = getelementptr inbounds i8, i8* %17, i64 0
  %18 = load i8, i8* %add.ptr16, align 1, !tbaa !24
  %conv17 = zext i8 %18 to i32
  %cmp18 = icmp eq i32 %conv17, 255
  br i1 %cmp18, label %if.then.20, label %if.end

if.then.20:                                       ; preds = %lor.lhs.false, %for.body.5
  %19 = load i8, i8* %bitmask, align 1, !tbaa !24
  %conv21 = zext i8 %19 to i32
  %20 = load i8, i8* %k, align 1, !tbaa !24
  %conv22 = zext i8 %20 to i32
  %or = or i32 %conv22, %conv21
  %conv23 = trunc i32 %or to i8
  store i8 %conv23, i8* %k, align 1, !tbaa !24
  %21 = load %struct.error_val_field*, %struct.error_val_field** %error_values.addr, align 8, !tbaa !1
  %k24 = getelementptr inbounds %struct.error_val_field, %struct.error_val_field* %21, i32 0, i32 3
  %22 = load i32, i32* %k24, align 4, !tbaa !102
  %sub = sub nsw i32 %22, 134217728
  store i32 %sub, i32* %k24, align 4, !tbaa !102
  br label %if.end

if.end:                                           ; preds = %if.then.20, %lor.lhs.false
  %23 = load %struct.error_val_field*, %struct.error_val_field** %error_values.addr, align 8, !tbaa !1
  %k25 = getelementptr inbounds %struct.error_val_field, %struct.error_val_field* %23, i32 0, i32 3
  %24 = load i32, i32* %k25, align 4, !tbaa !102
  %mul26 = mul nsw i32 %24, 3
  %add27 = add nsw i32 %mul26, 8
  %shr28 = ashr i32 %add27, 4
  %25 = load i32*, i32** %ep.addr, align 8, !tbaa !1
  %26 = load i32, i32* %n.addr, align 4, !tbaa !23
  %sub29 = sub nsw i32 0, %26
  %add30 = add nsw i32 0, %sub29
  %idx.ext = sext i32 %add30 to i64
  %add.ptr31 = getelementptr inbounds i32, i32* %25, i64 %idx.ext
  %27 = load i32, i32* %add.ptr31, align 4, !tbaa !23
  %add32 = add nsw i32 %27, %shr28
  store i32 %add32, i32* %add.ptr31, align 4, !tbaa !23
  %28 = load %struct.error_val_field*, %struct.error_val_field** %error_values.addr, align 8, !tbaa !1
  %k33 = getelementptr inbounds %struct.error_val_field, %struct.error_val_field* %28, i32 0, i32 3
  %29 = load i32, i32* %k33, align 4, !tbaa !102
  %mul34 = mul nsw i32 %29, 5
  %30 = load i32, i32* %oldErr, align 4, !tbaa !23
  %add35 = add nsw i32 %mul34, %30
  %add36 = add nsw i32 %add35, 8
  %shr37 = ashr i32 %add36, 4
  %31 = load i32*, i32** %ep.addr, align 8, !tbaa !1
  %add.ptr38 = getelementptr inbounds i32, i32* %31, i64 0
  store i32 %shr37, i32* %add.ptr38, align 4, !tbaa !23
  %32 = load i32, i32* %n.addr, align 4, !tbaa !23
  %33 = load i8*, i8** %dp.addr, align 8, !tbaa !1
  %idx.ext39 = sext i32 %32 to i64
  %add.ptr40 = getelementptr inbounds i8, i8* %33, i64 %idx.ext39
  store i8* %add.ptr40, i8** %dp.addr, align 8, !tbaa !1
  %34 = load i32, i32* %n.addr, align 4, !tbaa !23
  %35 = load i32*, i32** %ep.addr, align 8, !tbaa !1
  %idx.ext41 = sext i32 %34 to i64
  %add.ptr42 = getelementptr inbounds i32, i32* %35, i64 %idx.ext41
  store i32* %add.ptr42, i32** %ep.addr, align 8, !tbaa !1
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %36 = load i8, i8* %bitmask, align 1, !tbaa !24
  %conv43 = zext i8 %36 to i32
  %shr44 = ashr i32 %conv43, 1
  %conv45 = trunc i32 %shr44 to i8
  store i8 %conv45, i8* %bitmask, align 1, !tbaa !24
  br label %for.cond.2

for.end:                                          ; preds = %for.cond.2
  %37 = load i8, i8* %k, align 1, !tbaa !24
  %38 = load i8*, i8** %kP.addr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %incdec.ptr, i8** %kP.addr, align 8, !tbaa !1
  store i8 %37, i8* %38, align 1, !tbaa !24
  br label %for.inc.46

for.inc.46:                                       ; preds = %for.end
  %39 = load i32, i32* %i, align 4, !tbaa !23
  %inc = add nsw i32 %39, 1
  store i32 %inc, i32* %i, align 4, !tbaa !23
  br label %for.cond

for.end.47:                                       ; preds = %for.cond
  %40 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %40) #2
  %41 = bitcast i32* %oldErr to i8*
  call void @llvm.lifetime.end(i64 4, i8* %41) #2
  call void @llvm.lifetime.end(i64 1, i8* %bitmask) #2
  call void @llvm.lifetime.end(i64 1, i8* %k) #2
  br label %if.end.117

if.else:                                          ; preds = %entry
  call void @llvm.lifetime.start(i64 1, i8* %k48) #2
  call void @llvm.lifetime.start(i64 1, i8* %bitmask49) #2
  %42 = bitcast i32* %oldErr50 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %42) #2
  %43 = bitcast i32* %i51 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %43) #2
  store i32 0, i32* %i51, align 4, !tbaa !23
  br label %for.cond.52

for.cond.52:                                      ; preds = %for.inc.114, %if.else
  %44 = load i32, i32* %i51, align 4, !tbaa !23
  %45 = load i32, i32* %plane_size.addr, align 4, !tbaa !23
  %cmp53 = icmp slt i32 %44, %45
  br i1 %cmp53, label %for.body.55, label %for.end.116

for.body.55:                                      ; preds = %for.cond.52
  store i8 1, i8* %bitmask49, align 1, !tbaa !24
  store i8 0, i8* %k48, align 1, !tbaa !24
  br label %for.cond.56

for.cond.56:                                      ; preds = %for.inc.108, %for.body.55
  %46 = load i8, i8* %bitmask49, align 1, !tbaa !24
  %conv57 = zext i8 %46 to i32
  %cmp58 = icmp ne i32 %conv57, 0
  br i1 %cmp58, label %for.body.60, label %for.end.112

for.body.60:                                      ; preds = %for.cond.56
  %47 = load i32, i32* %n.addr, align 4, !tbaa !23
  %48 = load i8*, i8** %dp.addr, align 8, !tbaa !1
  %idx.ext61 = sext i32 %47 to i64
  %idx.neg = sub i64 0, %idx.ext61
  %add.ptr62 = getelementptr inbounds i8, i8* %48, i64 %idx.neg
  store i8* %add.ptr62, i8** %dp.addr, align 8, !tbaa !1
  %49 = load i32, i32* %n.addr, align 4, !tbaa !23
  %50 = load i32*, i32** %ep.addr, align 8, !tbaa !1
  %idx.ext63 = sext i32 %49 to i64
  %idx.neg64 = sub i64 0, %idx.ext63
  %add.ptr65 = getelementptr inbounds i32, i32* %50, i64 %idx.neg64
  store i32* %add.ptr65, i32** %ep.addr, align 8, !tbaa !1
  %51 = load %struct.error_val_field*, %struct.error_val_field** %error_values.addr, align 8, !tbaa !1
  %k66 = getelementptr inbounds %struct.error_val_field, %struct.error_val_field* %51, i32 0, i32 3
  %52 = load i32, i32* %k66, align 4, !tbaa !102
  store i32 %52, i32* %oldErr50, align 4, !tbaa !23
  %53 = load i32*, i32** %ep.addr, align 8, !tbaa !1
  %add.ptr67 = getelementptr inbounds i32, i32* %53, i64 0
  %54 = load i32, i32* %add.ptr67, align 4, !tbaa !23
  %55 = load %struct.error_val_field*, %struct.error_val_field** %error_values.addr, align 8, !tbaa !1
  %k68 = getelementptr inbounds %struct.error_val_field, %struct.error_val_field* %55, i32 0, i32 3
  %56 = load i32, i32* %k68, align 4, !tbaa !102
  %mul69 = mul nsw i32 %56, 7
  %add70 = add nsw i32 %mul69, 8
  %shr71 = ashr i32 %add70, 4
  %add72 = add nsw i32 %54, %shr71
  %57 = load i8*, i8** %dp.addr, align 8, !tbaa !1
  %add.ptr73 = getelementptr inbounds i8, i8* %57, i64 0
  %58 = load i8, i8* %add.ptr73, align 1, !tbaa !24
  %conv74 = zext i8 %58 to i32
  %shl75 = shl i32 %conv74, 19
  %add76 = add nsw i32 %add72, %shl75
  %59 = load %struct.error_val_field*, %struct.error_val_field** %error_values.addr, align 8, !tbaa !1
  %k77 = getelementptr inbounds %struct.error_val_field, %struct.error_val_field* %59, i32 0, i32 3
  store i32 %add76, i32* %k77, align 4, !tbaa !102
  %60 = load %struct.error_val_field*, %struct.error_val_field** %error_values.addr, align 8, !tbaa !1
  %k78 = getelementptr inbounds %struct.error_val_field, %struct.error_val_field* %60, i32 0, i32 3
  %61 = load i32, i32* %k78, align 4, !tbaa !102
  %cmp79 = icmp sgt i32 %61, 67108864
  br i1 %cmp79, label %if.then.86, label %lor.lhs.false.81

lor.lhs.false.81:                                 ; preds = %for.body.60
  %62 = load i8*, i8** %dp.addr, align 8, !tbaa !1
  %add.ptr82 = getelementptr inbounds i8, i8* %62, i64 0
  %63 = load i8, i8* %add.ptr82, align 1, !tbaa !24
  %conv83 = zext i8 %63 to i32
  %cmp84 = icmp eq i32 %conv83, 255
  br i1 %cmp84, label %if.then.86, label %if.end.93

if.then.86:                                       ; preds = %lor.lhs.false.81, %for.body.60
  %64 = load i8, i8* %bitmask49, align 1, !tbaa !24
  %conv87 = zext i8 %64 to i32
  %65 = load i8, i8* %k48, align 1, !tbaa !24
  %conv88 = zext i8 %65 to i32
  %or89 = or i32 %conv88, %conv87
  %conv90 = trunc i32 %or89 to i8
  store i8 %conv90, i8* %k48, align 1, !tbaa !24
  %66 = load %struct.error_val_field*, %struct.error_val_field** %error_values.addr, align 8, !tbaa !1
  %k91 = getelementptr inbounds %struct.error_val_field, %struct.error_val_field* %66, i32 0, i32 3
  %67 = load i32, i32* %k91, align 4, !tbaa !102
  %sub92 = sub nsw i32 %67, 134217728
  store i32 %sub92, i32* %k91, align 4, !tbaa !102
  br label %if.end.93

if.end.93:                                        ; preds = %if.then.86, %lor.lhs.false.81
  %68 = load %struct.error_val_field*, %struct.error_val_field** %error_values.addr, align 8, !tbaa !1
  %k94 = getelementptr inbounds %struct.error_val_field, %struct.error_val_field* %68, i32 0, i32 3
  %69 = load i32, i32* %k94, align 4, !tbaa !102
  %mul95 = mul nsw i32 %69, 3
  %add96 = add nsw i32 %mul95, 8
  %shr97 = ashr i32 %add96, 4
  %70 = load i32*, i32** %ep.addr, align 8, !tbaa !1
  %71 = load i32, i32* %n.addr, align 4, !tbaa !23
  %add98 = add nsw i32 0, %71
  %idx.ext99 = sext i32 %add98 to i64
  %add.ptr100 = getelementptr inbounds i32, i32* %70, i64 %idx.ext99
  %72 = load i32, i32* %add.ptr100, align 4, !tbaa !23
  %add101 = add nsw i32 %72, %shr97
  store i32 %add101, i32* %add.ptr100, align 4, !tbaa !23
  %73 = load %struct.error_val_field*, %struct.error_val_field** %error_values.addr, align 8, !tbaa !1
  %k102 = getelementptr inbounds %struct.error_val_field, %struct.error_val_field* %73, i32 0, i32 3
  %74 = load i32, i32* %k102, align 4, !tbaa !102
  %mul103 = mul nsw i32 %74, 5
  %75 = load i32, i32* %oldErr50, align 4, !tbaa !23
  %add104 = add nsw i32 %mul103, %75
  %add105 = add nsw i32 %add104, 8
  %shr106 = ashr i32 %add105, 4
  %76 = load i32*, i32** %ep.addr, align 8, !tbaa !1
  %add.ptr107 = getelementptr inbounds i32, i32* %76, i64 0
  store i32 %shr106, i32* %add.ptr107, align 4, !tbaa !23
  br label %for.inc.108

for.inc.108:                                      ; preds = %if.end.93
  %77 = load i8, i8* %bitmask49, align 1, !tbaa !24
  %conv109 = zext i8 %77 to i32
  %shl110 = shl i32 %conv109, 1
  %conv111 = trunc i32 %shl110 to i8
  store i8 %conv111, i8* %bitmask49, align 1, !tbaa !24
  br label %for.cond.56

for.end.112:                                      ; preds = %for.cond.56
  %78 = load i8, i8* %k48, align 1, !tbaa !24
  %79 = load i8*, i8** %kP.addr, align 8, !tbaa !1
  %incdec.ptr113 = getelementptr inbounds i8, i8* %79, i32 -1
  store i8* %incdec.ptr113, i8** %kP.addr, align 8, !tbaa !1
  store i8 %78, i8* %incdec.ptr113, align 1, !tbaa !24
  br label %for.inc.114

for.inc.114:                                      ; preds = %for.end.112
  %80 = load i32, i32* %i51, align 4, !tbaa !23
  %inc115 = add nsw i32 %80, 1
  store i32 %inc115, i32* %i51, align 4, !tbaa !23
  br label %for.cond.52

for.end.116:                                      ; preds = %for.cond.52
  %81 = bitcast i32* %i51 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %81) #2
  %82 = bitcast i32* %oldErr50 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %82) #2
  call void @llvm.lifetime.end(i64 1, i8* %bitmask49) #2
  call void @llvm.lifetime.end(i64 1, i8* %k48) #2
  br label %if.end.117

if.end.117:                                       ; preds = %for.end.116, %for.end.47
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @print_c9plane(%struct._IO_FILE* %prn_stream, i8 signext %plane_code, i32 %plane_size, i8* %curr, i8* %prev, i8* %out_data) #1 {
entry:
  %prn_stream.addr = alloca %struct._IO_FILE*, align 8
  %plane_code.addr = alloca i8, align 1
  %plane_size.addr = alloca i32, align 4
  %curr.addr = alloca i8*, align 8
  %prev.addr = alloca i8*, align 8
  %out_data.addr = alloca i8*, align 8
  %out_count = alloca i32, align 4
  store %struct._IO_FILE* %prn_stream, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  store i8 %plane_code, i8* %plane_code.addr, align 1, !tbaa !24
  store i32 %plane_size, i32* %plane_size.addr, align 4, !tbaa !23
  store i8* %curr, i8** %curr.addr, align 8, !tbaa !1
  store i8* %prev, i8** %prev.addr, align 8, !tbaa !1
  store i8* %out_data, i8** %out_data.addr, align 8, !tbaa !1
  %0 = bitcast i32* %out_count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load i32, i32* %plane_size.addr, align 4, !tbaa !23
  %2 = load i8*, i8** %curr.addr, align 8, !tbaa !1
  %3 = load i8*, i8** %prev.addr, align 8, !tbaa !1
  %4 = load i8*, i8** %out_data.addr, align 8, !tbaa !1
  %call = call i32 @gdev_pcl_mode9compress(i32 %1, i8* %2, i8* %3, i8* %4) #6
  store i32 %call, i32* %out_count, align 4, !tbaa !23
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %6 = load i32, i32* %out_count, align 4, !tbaa !23
  %7 = load i8, i8* %plane_code.addr, align 1, !tbaa !24
  %conv = sext i8 %7 to i32
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.45, i32 0, i32 0), i32 %6, i32 %conv) #6
  %8 = load i32, i32* %out_count, align 4, !tbaa !23
  %cmp = icmp sgt i32 %8, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %9 = load i8*, i8** %out_data.addr, align 8, !tbaa !1
  %10 = load i32, i32* %out_count, align 4, !tbaa !23
  %conv3 = sext i32 %10 to i64
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call4 = call i64 @fwrite(i8* %9, i64 1, i64 %conv3, %struct._IO_FILE* %11) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %12 = bitcast i32* %out_count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %12) #2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @do_floyd_steinberg(i32 %scan, i32 %cscan, i32 %plane_size, i32 %plane_size_c, i32 %n, %struct.ptr_arrays* %data_ptrs, %struct.gx_device_printer_s* %pdev, %struct.error_val_field* %error_values) #1 {
entry:
  %scan.addr = alloca i32, align 4
  %cscan.addr = alloca i32, align 4
  %plane_size.addr = alloca i32, align 4
  %plane_size_c.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %data_ptrs.addr = alloca %struct.ptr_arrays*, align 8
  %pdev.addr = alloca %struct.gx_device_printer_s*, align 8
  %error_values.addr = alloca %struct.error_val_field*, align 8
  %cPa = alloca i8*, align 8
  %mPa = alloca i8*, align 8
  %yPa = alloca i8*, align 8
  %cPb = alloca i8*, align 8
  %mPb = alloca i8*, align 8
  %yPb = alloca i8*, align 8
  %dpc = alloca i8*, align 8
  %epc = alloca i32*, align 8
  %kP = alloca i8*, align 8
  %dp = alloca i8*, align 8
  %ep = alloca i32*, align 8
  store i32 %scan, i32* %scan.addr, align 4, !tbaa !23
  store i32 %cscan, i32* %cscan.addr, align 4, !tbaa !23
  store i32 %plane_size, i32* %plane_size.addr, align 4, !tbaa !23
  store i32 %plane_size_c, i32* %plane_size_c.addr, align 4, !tbaa !23
  store i32 %n, i32* %n.addr, align 4, !tbaa !23
  store %struct.ptr_arrays* %data_ptrs, %struct.ptr_arrays** %data_ptrs.addr, align 8, !tbaa !1
  store %struct.gx_device_printer_s* %pdev, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  store %struct.error_val_field* %error_values, %struct.error_val_field** %error_values.addr, align 8, !tbaa !1
  %0 = bitcast i8** %cPa to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = bitcast i8** %mPa to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #2
  %2 = bitcast i8** %yPa to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #2
  %3 = bitcast i8** %cPb to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = bitcast i8** %mPb to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #2
  %5 = bitcast i8** %yPb to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #2
  %6 = bitcast i8** %dpc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #2
  %7 = bitcast i32** %epc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #2
  %8 = bitcast i8** %kP to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #2
  %9 = bitcast i8** %dp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #2
  %10 = bitcast i32** %ep to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #2
  %11 = load i32, i32* %cscan.addr, align 4, !tbaa !23
  %add = add nsw i32 %11, 2
  %idxprom = sext i32 %add to i64
  %12 = load %struct.ptr_arrays*, %struct.ptr_arrays** %data_ptrs.addr, align 8, !tbaa !1
  %plane_data_c = getelementptr inbounds %struct.ptr_arrays, %struct.ptr_arrays* %12, i32 0, i32 3
  %arrayidx = getelementptr inbounds [4 x [8 x i8*]], [4 x [8 x i8*]]* %plane_data_c, i32 0, i64 %idxprom
  %arrayidx1 = getelementptr inbounds [8 x i8*], [8 x i8*]* %arrayidx, i32 0, i64 2
  %13 = load i8*, i8** %arrayidx1, align 8, !tbaa !1
  store i8* %13, i8** %cPa, align 8, !tbaa !1
  %14 = load i32, i32* %cscan.addr, align 4, !tbaa !23
  %add2 = add nsw i32 %14, 2
  %idxprom3 = sext i32 %add2 to i64
  %15 = load %struct.ptr_arrays*, %struct.ptr_arrays** %data_ptrs.addr, align 8, !tbaa !1
  %plane_data_c4 = getelementptr inbounds %struct.ptr_arrays, %struct.ptr_arrays* %15, i32 0, i32 3
  %arrayidx5 = getelementptr inbounds [4 x [8 x i8*]], [4 x [8 x i8*]]* %plane_data_c4, i32 0, i64 %idxprom3
  %arrayidx6 = getelementptr inbounds [8 x i8*], [8 x i8*]* %arrayidx5, i32 0, i64 1
  %16 = load i8*, i8** %arrayidx6, align 8, !tbaa !1
  store i8* %16, i8** %mPa, align 8, !tbaa !1
  %17 = load i32, i32* %cscan.addr, align 4, !tbaa !23
  %add7 = add nsw i32 %17, 2
  %idxprom8 = sext i32 %add7 to i64
  %18 = load %struct.ptr_arrays*, %struct.ptr_arrays** %data_ptrs.addr, align 8, !tbaa !1
  %plane_data_c9 = getelementptr inbounds %struct.ptr_arrays, %struct.ptr_arrays* %18, i32 0, i32 3
  %arrayidx10 = getelementptr inbounds [4 x [8 x i8*]], [4 x [8 x i8*]]* %plane_data_c9, i32 0, i64 %idxprom8
  %arrayidx11 = getelementptr inbounds [8 x i8*], [8 x i8*]* %arrayidx10, i32 0, i64 0
  %19 = load i8*, i8** %arrayidx11, align 8, !tbaa !1
  store i8* %19, i8** %yPa, align 8, !tbaa !1
  %20 = load i32, i32* %cscan.addr, align 4, !tbaa !23
  %add12 = add nsw i32 %20, 2
  %idxprom13 = sext i32 %add12 to i64
  %21 = load %struct.ptr_arrays*, %struct.ptr_arrays** %data_ptrs.addr, align 8, !tbaa !1
  %plane_data_c14 = getelementptr inbounds %struct.ptr_arrays, %struct.ptr_arrays* %21, i32 0, i32 3
  %arrayidx15 = getelementptr inbounds [4 x [8 x i8*]], [4 x [8 x i8*]]* %plane_data_c14, i32 0, i64 %idxprom13
  %arrayidx16 = getelementptr inbounds [8 x i8*], [8 x i8*]* %arrayidx15, i32 0, i64 6
  %22 = load i8*, i8** %arrayidx16, align 8, !tbaa !1
  store i8* %22, i8** %cPb, align 8, !tbaa !1
  %23 = load i32, i32* %cscan.addr, align 4, !tbaa !23
  %add17 = add nsw i32 %23, 2
  %idxprom18 = sext i32 %add17 to i64
  %24 = load %struct.ptr_arrays*, %struct.ptr_arrays** %data_ptrs.addr, align 8, !tbaa !1
  %plane_data_c19 = getelementptr inbounds %struct.ptr_arrays, %struct.ptr_arrays* %24, i32 0, i32 3
  %arrayidx20 = getelementptr inbounds [4 x [8 x i8*]], [4 x [8 x i8*]]* %plane_data_c19, i32 0, i64 %idxprom18
  %arrayidx21 = getelementptr inbounds [8 x i8*], [8 x i8*]* %arrayidx20, i32 0, i64 5
  %25 = load i8*, i8** %arrayidx21, align 8, !tbaa !1
  store i8* %25, i8** %mPb, align 8, !tbaa !1
  %26 = load i32, i32* %cscan.addr, align 4, !tbaa !23
  %add22 = add nsw i32 %26, 2
  %idxprom23 = sext i32 %add22 to i64
  %27 = load %struct.ptr_arrays*, %struct.ptr_arrays** %data_ptrs.addr, align 8, !tbaa !1
  %plane_data_c24 = getelementptr inbounds %struct.ptr_arrays, %struct.ptr_arrays* %27, i32 0, i32 3
  %arrayidx25 = getelementptr inbounds [4 x [8 x i8*]], [4 x [8 x i8*]]* %plane_data_c24, i32 0, i64 %idxprom23
  %arrayidx26 = getelementptr inbounds [8 x i8*], [8 x i8*]* %arrayidx25, i32 0, i64 4
  %28 = load i8*, i8** %arrayidx26, align 8, !tbaa !1
  store i8* %28, i8** %yPb, align 8, !tbaa !1
  %29 = load i32, i32* %cscan.addr, align 4, !tbaa !23
  %add27 = add nsw i32 %29, 2
  %idxprom28 = sext i32 %add27 to i64
  %30 = load %struct.ptr_arrays*, %struct.ptr_arrays** %data_ptrs.addr, align 8, !tbaa !1
  %data_c = getelementptr inbounds %struct.ptr_arrays, %struct.ptr_arrays* %30, i32 0, i32 1
  %arrayidx29 = getelementptr inbounds [4 x i8*], [4 x i8*]* %data_c, i32 0, i64 %idxprom28
  %31 = load i8*, i8** %arrayidx29, align 8, !tbaa !1
  store i8* %31, i8** %dpc, align 8, !tbaa !1
  %32 = load i32, i32* %cscan.addr, align 4, !tbaa !23
  %idxprom30 = sext i32 %32 to i64
  %33 = load %struct.ptr_arrays*, %struct.ptr_arrays** %data_ptrs.addr, align 8, !tbaa !1
  %errors_c = getelementptr inbounds %struct.ptr_arrays, %struct.ptr_arrays* %33, i32 0, i32 7
  %arrayidx31 = getelementptr inbounds [2 x i32*], [2 x i32*]* %errors_c, i32 0, i64 %idxprom30
  %34 = load i32*, i32** %arrayidx31, align 8, !tbaa !1
  store i32* %34, i32** %epc, align 8, !tbaa !1
  %35 = load i32, i32* %scan.addr, align 4, !tbaa !23
  %add32 = add nsw i32 %35, 2
  %idxprom33 = sext i32 %add32 to i64
  %36 = load %struct.ptr_arrays*, %struct.ptr_arrays** %data_ptrs.addr, align 8, !tbaa !1
  %plane_data = getelementptr inbounds %struct.ptr_arrays, %struct.ptr_arrays* %36, i32 0, i32 2
  %arrayidx34 = getelementptr inbounds [4 x [4 x i8*]], [4 x [4 x i8*]]* %plane_data, i32 0, i64 %idxprom33
  %arrayidx35 = getelementptr inbounds [4 x i8*], [4 x i8*]* %arrayidx34, i32 0, i64 3
  %37 = load i8*, i8** %arrayidx35, align 8, !tbaa !1
  store i8* %37, i8** %kP, align 8, !tbaa !1
  %38 = load i32, i32* %scan.addr, align 4, !tbaa !23
  %add36 = add nsw i32 %38, 2
  %idxprom37 = sext i32 %add36 to i64
  %39 = load %struct.ptr_arrays*, %struct.ptr_arrays** %data_ptrs.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.ptr_arrays, %struct.ptr_arrays* %39, i32 0, i32 0
  %arrayidx38 = getelementptr inbounds [4 x i8*], [4 x i8*]* %data, i32 0, i64 %idxprom37
  %40 = load i8*, i8** %arrayidx38, align 8, !tbaa !1
  store i8* %40, i8** %dp, align 8, !tbaa !1
  %41 = load i32, i32* %scan.addr, align 4, !tbaa !23
  %idxprom39 = sext i32 %41 to i64
  %42 = load %struct.ptr_arrays*, %struct.ptr_arrays** %data_ptrs.addr, align 8, !tbaa !1
  %errors = getelementptr inbounds %struct.ptr_arrays, %struct.ptr_arrays* %42, i32 0, i32 6
  %arrayidx40 = getelementptr inbounds [2 x i32*], [2 x i32*]* %errors, i32 0, i64 %idxprom39
  %43 = load i32*, i32** %arrayidx40, align 8, !tbaa !1
  store i32* %43, i32** %ep, align 8, !tbaa !1
  %44 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %45 = bitcast %struct.gx_device_printer_s* %44 to %struct.gx_device_cdj850_s*
  %intensities = getelementptr inbounds %struct.gx_device_cdj850_s, %struct.gx_device_cdj850_s* %45, i32 0, i32 73
  %46 = load i32, i32* %intensities, align 4, !tbaa !41
  switch i32 %46, label %sw.default [
    i32 2, label %sw.bb
    i32 3, label %sw.bb.41
    i32 4, label %sw.bb.42
  ]

sw.bb:                                            ; preds = %entry
  %47 = load i32, i32* %cscan.addr, align 4, !tbaa !23
  %48 = load i32, i32* %plane_size_c.addr, align 4, !tbaa !23
  %49 = load %struct.error_val_field*, %struct.error_val_field** %error_values.addr, align 8, !tbaa !1
  %50 = load i8*, i8** %cPa, align 8, !tbaa !1
  %51 = load i8*, i8** %mPa, align 8, !tbaa !1
  %52 = load i8*, i8** %yPa, align 8, !tbaa !1
  %53 = load i32, i32* %n.addr, align 4, !tbaa !23
  %54 = load i8*, i8** %dpc, align 8, !tbaa !1
  %55 = load i32*, i32** %epc, align 8, !tbaa !1
  call void @FSDlinec2(i32 %47, i32 %48, %struct.error_val_field* %49, i8* %50, i8* %51, i8* %52, i32 %53, i8* %54, i32* %55) #6
  br label %sw.epilog

sw.bb.41:                                         ; preds = %entry
  %56 = load i32, i32* %cscan.addr, align 4, !tbaa !23
  %57 = load i32, i32* %plane_size_c.addr, align 4, !tbaa !23
  %58 = load %struct.error_val_field*, %struct.error_val_field** %error_values.addr, align 8, !tbaa !1
  %59 = load i8*, i8** %cPa, align 8, !tbaa !1
  %60 = load i8*, i8** %mPa, align 8, !tbaa !1
  %61 = load i8*, i8** %yPa, align 8, !tbaa !1
  %62 = load i8*, i8** %cPb, align 8, !tbaa !1
  %63 = load i8*, i8** %mPb, align 8, !tbaa !1
  %64 = load i8*, i8** %yPb, align 8, !tbaa !1
  %65 = load i32, i32* %n.addr, align 4, !tbaa !23
  %66 = load i8*, i8** %dpc, align 8, !tbaa !1
  %67 = load i32*, i32** %epc, align 8, !tbaa !1
  call void @FSDlinec3(i32 %56, i32 %57, %struct.error_val_field* %58, i8* %59, i8* %60, i8* %61, i8* %62, i8* %63, i8* %64, i32 %65, i8* %66, i32* %67) #6
  br label %sw.epilog

sw.bb.42:                                         ; preds = %entry
  %68 = load i32, i32* %cscan.addr, align 4, !tbaa !23
  %69 = load i32, i32* %plane_size_c.addr, align 4, !tbaa !23
  %70 = load %struct.error_val_field*, %struct.error_val_field** %error_values.addr, align 8, !tbaa !1
  %71 = load i8*, i8** %cPa, align 8, !tbaa !1
  %72 = load i8*, i8** %mPa, align 8, !tbaa !1
  %73 = load i8*, i8** %yPa, align 8, !tbaa !1
  %74 = load i8*, i8** %cPb, align 8, !tbaa !1
  %75 = load i8*, i8** %mPb, align 8, !tbaa !1
  %76 = load i8*, i8** %yPb, align 8, !tbaa !1
  %77 = load i32, i32* %n.addr, align 4, !tbaa !23
  %78 = load i8*, i8** %dpc, align 8, !tbaa !1
  %79 = load i32*, i32** %epc, align 8, !tbaa !1
  call void @FSDlinec4(i32 %68, i32 %69, %struct.error_val_field* %70, i8* %71, i8* %72, i8* %73, i8* %74, i8* %75, i8* %76, i32 %77, i8* %78, i32* %79) #6
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.42, %sw.bb.41, %sw.bb
  %80 = bitcast i32** %ep to i8*
  call void @llvm.lifetime.end(i64 8, i8* %80) #2
  %81 = bitcast i8** %dp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %81) #2
  %82 = bitcast i8** %kP to i8*
  call void @llvm.lifetime.end(i64 8, i8* %82) #2
  %83 = bitcast i32** %epc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %83) #2
  %84 = bitcast i8** %dpc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %84) #2
  %85 = bitcast i8** %yPb to i8*
  call void @llvm.lifetime.end(i64 8, i8* %85) #2
  %86 = bitcast i8** %mPb to i8*
  call void @llvm.lifetime.end(i64 8, i8* %86) #2
  %87 = bitcast i8** %cPb to i8*
  call void @llvm.lifetime.end(i64 8, i8* %87) #2
  %88 = bitcast i8** %yPa to i8*
  call void @llvm.lifetime.end(i64 8, i8* %88) #2
  %89 = bitcast i8** %mPa to i8*
  call void @llvm.lifetime.end(i64 8, i8* %89) #2
  %90 = bitcast i8** %cPa to i8*
  call void @llvm.lifetime.end(i64 8, i8* %90) #2
  ret void
}

declare i32 @gdev_pcl_mode9compress(i32, i8*, i8*, i8*) #0

; Function Attrs: nounwind uwtable
define internal i32 @rescale_byte_wise1x1(i32 %bytecount, i8* %inbytea, i8* %inbyteb, i8* %outbyte) #1 {
entry:
  %bytecount.addr = alloca i32, align 4
  %inbytea.addr = alloca i8*, align 8
  %inbyteb.addr = alloca i8*, align 8
  %outbyte.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  store i32 %bytecount, i32* %bytecount.addr, align 4, !tbaa !23
  store i8* %inbytea, i8** %inbytea.addr, align 8, !tbaa !1
  store i8* %inbyteb, i8** %inbyteb.addr, align 8, !tbaa !1
  store i8* %outbyte, i8** %outbyte.addr, align 8, !tbaa !1
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  store i32 0, i32* %i, align 4, !tbaa !23
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4, !tbaa !23
  %2 = load i32, i32* %bytecount.addr, align 4, !tbaa !23
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4, !tbaa !23
  %add = add nsw i32 %3, 1
  %idxprom = sext i32 %add to i64
  %4 = load i8*, i8** %inbytea.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 %idxprom
  %5 = load i8, i8* %arrayidx, align 1, !tbaa !24
  %6 = load i32, i32* %i, align 4, !tbaa !23
  %add1 = add nsw i32 %6, 1
  %idxprom2 = sext i32 %add1 to i64
  %7 = load i8*, i8** %outbyte.addr, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds i8, i8* %7, i64 %idxprom2
  store i8 %5, i8* %arrayidx3, align 1, !tbaa !24
  %8 = load i32, i32* %i, align 4, !tbaa !23
  %add4 = add nsw i32 %8, 2
  %idxprom5 = sext i32 %add4 to i64
  %9 = load i8*, i8** %inbytea.addr, align 8, !tbaa !1
  %arrayidx6 = getelementptr inbounds i8, i8* %9, i64 %idxprom5
  %10 = load i8, i8* %arrayidx6, align 1, !tbaa !24
  %11 = load i32, i32* %i, align 4, !tbaa !23
  %add7 = add nsw i32 %11, 2
  %idxprom8 = sext i32 %add7 to i64
  %12 = load i8*, i8** %outbyte.addr, align 8, !tbaa !1
  %arrayidx9 = getelementptr inbounds i8, i8* %12, i64 %idxprom8
  store i8 %10, i8* %arrayidx9, align 1, !tbaa !24
  %13 = load i32, i32* %i, align 4, !tbaa !23
  %add10 = add nsw i32 %13, 3
  %idxprom11 = sext i32 %add10 to i64
  %14 = load i8*, i8** %inbytea.addr, align 8, !tbaa !1
  %arrayidx12 = getelementptr inbounds i8, i8* %14, i64 %idxprom11
  %15 = load i8, i8* %arrayidx12, align 1, !tbaa !24
  %16 = load i32, i32* %i, align 4, !tbaa !23
  %add13 = add nsw i32 %16, 3
  %idxprom14 = sext i32 %add13 to i64
  %17 = load i8*, i8** %outbyte.addr, align 8, !tbaa !1
  %arrayidx15 = getelementptr inbounds i8, i8* %17, i64 %idxprom14
  store i8 %15, i8* %arrayidx15, align 1, !tbaa !24
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %18 = load i32, i32* %i, align 4, !tbaa !23
  %add16 = add nsw i32 %18, 4
  store i32 %add16, i32* %i, align 4, !tbaa !23
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %19 = load i32, i32* %bytecount.addr, align 4, !tbaa !23
  %20 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %20) #2
  ret i32 %19
}

; Function Attrs: nounwind uwtable
define internal i32 @rescale_byte_wise1x2(i32 %bytecount, i8* %inbytea, i8* %inbyteb, i8* %outbyte) #1 {
entry:
  %bytecount.addr = alloca i32, align 4
  %inbytea.addr = alloca i8*, align 8
  %inbyteb.addr = alloca i8*, align 8
  %outbyte.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  store i32 %bytecount, i32* %bytecount.addr, align 4, !tbaa !23
  store i8* %inbytea, i8** %inbytea.addr, align 8, !tbaa !1
  store i8* %inbyteb, i8** %inbyteb.addr, align 8, !tbaa !1
  store i8* %outbyte, i8** %outbyte.addr, align 8, !tbaa !1
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  store i32 0, i32* %i, align 4, !tbaa !23
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4, !tbaa !23
  %2 = load i32, i32* %bytecount.addr, align 4, !tbaa !23
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4, !tbaa !23
  %add = add nsw i32 %3, 1
  %idxprom = sext i32 %add to i64
  %4 = load i8*, i8** %inbytea.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 %idxprom
  %5 = load i8, i8* %arrayidx, align 1, !tbaa !24
  %conv = zext i8 %5 to i32
  %6 = load i32, i32* %i, align 4, !tbaa !23
  %add1 = add nsw i32 %6, 1
  %idxprom2 = sext i32 %add1 to i64
  %7 = load i8*, i8** %inbyteb.addr, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds i8, i8* %7, i64 %idxprom2
  %8 = load i8, i8* %arrayidx3, align 1, !tbaa !24
  %conv4 = zext i8 %8 to i32
  %add5 = add nsw i32 %conv, %conv4
  %div = sdiv i32 %add5, 2
  %conv6 = trunc i32 %div to i8
  %9 = load i32, i32* %i, align 4, !tbaa !23
  %add7 = add nsw i32 %9, 1
  %idxprom8 = sext i32 %add7 to i64
  %10 = load i8*, i8** %outbyte.addr, align 8, !tbaa !1
  %arrayidx9 = getelementptr inbounds i8, i8* %10, i64 %idxprom8
  store i8 %conv6, i8* %arrayidx9, align 1, !tbaa !24
  %11 = load i32, i32* %i, align 4, !tbaa !23
  %add10 = add nsw i32 %11, 2
  %idxprom11 = sext i32 %add10 to i64
  %12 = load i8*, i8** %inbytea.addr, align 8, !tbaa !1
  %arrayidx12 = getelementptr inbounds i8, i8* %12, i64 %idxprom11
  %13 = load i8, i8* %arrayidx12, align 1, !tbaa !24
  %conv13 = zext i8 %13 to i32
  %14 = load i32, i32* %i, align 4, !tbaa !23
  %add14 = add nsw i32 %14, 2
  %idxprom15 = sext i32 %add14 to i64
  %15 = load i8*, i8** %inbyteb.addr, align 8, !tbaa !1
  %arrayidx16 = getelementptr inbounds i8, i8* %15, i64 %idxprom15
  %16 = load i8, i8* %arrayidx16, align 1, !tbaa !24
  %conv17 = zext i8 %16 to i32
  %add18 = add nsw i32 %conv13, %conv17
  %div19 = sdiv i32 %add18, 2
  %conv20 = trunc i32 %div19 to i8
  %17 = load i32, i32* %i, align 4, !tbaa !23
  %add21 = add nsw i32 %17, 2
  %idxprom22 = sext i32 %add21 to i64
  %18 = load i8*, i8** %outbyte.addr, align 8, !tbaa !1
  %arrayidx23 = getelementptr inbounds i8, i8* %18, i64 %idxprom22
  store i8 %conv20, i8* %arrayidx23, align 1, !tbaa !24
  %19 = load i32, i32* %i, align 4, !tbaa !23
  %add24 = add nsw i32 %19, 3
  %idxprom25 = sext i32 %add24 to i64
  %20 = load i8*, i8** %inbytea.addr, align 8, !tbaa !1
  %arrayidx26 = getelementptr inbounds i8, i8* %20, i64 %idxprom25
  %21 = load i8, i8* %arrayidx26, align 1, !tbaa !24
  %conv27 = zext i8 %21 to i32
  %22 = load i32, i32* %i, align 4, !tbaa !23
  %add28 = add nsw i32 %22, 3
  %idxprom29 = sext i32 %add28 to i64
  %23 = load i8*, i8** %inbyteb.addr, align 8, !tbaa !1
  %arrayidx30 = getelementptr inbounds i8, i8* %23, i64 %idxprom29
  %24 = load i8, i8* %arrayidx30, align 1, !tbaa !24
  %conv31 = zext i8 %24 to i32
  %add32 = add nsw i32 %conv27, %conv31
  %div33 = sdiv i32 %add32, 2
  %conv34 = trunc i32 %div33 to i8
  %25 = load i32, i32* %i, align 4, !tbaa !23
  %add35 = add nsw i32 %25, 3
  %idxprom36 = sext i32 %add35 to i64
  %26 = load i8*, i8** %outbyte.addr, align 8, !tbaa !1
  %arrayidx37 = getelementptr inbounds i8, i8* %26, i64 %idxprom36
  store i8 %conv34, i8* %arrayidx37, align 1, !tbaa !24
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %27 = load i32, i32* %i, align 4, !tbaa !23
  %add38 = add nsw i32 %27, 4
  store i32 %add38, i32* %i, align 4, !tbaa !23
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %28 = load i32, i32* %bytecount.addr, align 4, !tbaa !23
  %29 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %29) #2
  ret i32 %28
}

; Function Attrs: nounwind uwtable
define internal i32 @rescale_byte_wise2x1(i32 %bytecount, i8* %inbytea, i8* %inbyteb, i8* %outbyte) #1 {
entry:
  %bytecount.addr = alloca i32, align 4
  %inbytea.addr = alloca i8*, align 8
  %inbyteb.addr = alloca i8*, align 8
  %outbyte.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %max = alloca i32, align 4
  store i32 %bytecount, i32* %bytecount.addr, align 4, !tbaa !23
  store i8* %inbytea, i8** %inbytea.addr, align 8, !tbaa !1
  store i8* %inbyteb, i8** %inbyteb.addr, align 8, !tbaa !1
  store i8* %outbyte, i8** %outbyte.addr, align 8, !tbaa !1
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = bitcast i32* %max to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  %3 = load i32, i32* %bytecount.addr, align 4, !tbaa !23
  %div = sdiv i32 %3, 2
  store i32 %div, i32* %max, align 4, !tbaa !23
  store i32 0, i32* %i, align 4, !tbaa !23
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %i, align 4, !tbaa !23
  %5 = load i32, i32* %max, align 4, !tbaa !23
  %cmp = icmp slt i32 %4, %5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %i, align 4, !tbaa !23
  %mul = mul nsw i32 2, %6
  store i32 %mul, i32* %j, align 4, !tbaa !23
  %7 = load i32, i32* %j, align 4, !tbaa !23
  %add = add nsw i32 %7, 1
  %idxprom = sext i32 %add to i64
  %8 = load i8*, i8** %inbytea.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %idxprom
  %9 = load i8, i8* %arrayidx, align 1, !tbaa !24
  %conv = zext i8 %9 to i32
  %10 = load i32, i32* %j, align 4, !tbaa !23
  %add1 = add nsw i32 %10, 5
  %idxprom2 = sext i32 %add1 to i64
  %11 = load i8*, i8** %inbytea.addr, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds i8, i8* %11, i64 %idxprom2
  %12 = load i8, i8* %arrayidx3, align 1, !tbaa !24
  %conv4 = zext i8 %12 to i32
  %add5 = add nsw i32 %conv, %conv4
  %div6 = sdiv i32 %add5, 2
  %conv7 = trunc i32 %div6 to i8
  %13 = load i32, i32* %i, align 4, !tbaa !23
  %add8 = add nsw i32 %13, 1
  %idxprom9 = sext i32 %add8 to i64
  %14 = load i8*, i8** %outbyte.addr, align 8, !tbaa !1
  %arrayidx10 = getelementptr inbounds i8, i8* %14, i64 %idxprom9
  store i8 %conv7, i8* %arrayidx10, align 1, !tbaa !24
  %15 = load i32, i32* %j, align 4, !tbaa !23
  %add11 = add nsw i32 %15, 2
  %idxprom12 = sext i32 %add11 to i64
  %16 = load i8*, i8** %inbytea.addr, align 8, !tbaa !1
  %arrayidx13 = getelementptr inbounds i8, i8* %16, i64 %idxprom12
  %17 = load i8, i8* %arrayidx13, align 1, !tbaa !24
  %conv14 = zext i8 %17 to i32
  %18 = load i32, i32* %j, align 4, !tbaa !23
  %add15 = add nsw i32 %18, 6
  %idxprom16 = sext i32 %add15 to i64
  %19 = load i8*, i8** %inbytea.addr, align 8, !tbaa !1
  %arrayidx17 = getelementptr inbounds i8, i8* %19, i64 %idxprom16
  %20 = load i8, i8* %arrayidx17, align 1, !tbaa !24
  %conv18 = zext i8 %20 to i32
  %add19 = add nsw i32 %conv14, %conv18
  %div20 = sdiv i32 %add19, 2
  %conv21 = trunc i32 %div20 to i8
  %21 = load i32, i32* %i, align 4, !tbaa !23
  %add22 = add nsw i32 %21, 2
  %idxprom23 = sext i32 %add22 to i64
  %22 = load i8*, i8** %outbyte.addr, align 8, !tbaa !1
  %arrayidx24 = getelementptr inbounds i8, i8* %22, i64 %idxprom23
  store i8 %conv21, i8* %arrayidx24, align 1, !tbaa !24
  %23 = load i32, i32* %j, align 4, !tbaa !23
  %add25 = add nsw i32 %23, 3
  %idxprom26 = sext i32 %add25 to i64
  %24 = load i8*, i8** %inbytea.addr, align 8, !tbaa !1
  %arrayidx27 = getelementptr inbounds i8, i8* %24, i64 %idxprom26
  %25 = load i8, i8* %arrayidx27, align 1, !tbaa !24
  %conv28 = zext i8 %25 to i32
  %26 = load i32, i32* %j, align 4, !tbaa !23
  %add29 = add nsw i32 %26, 7
  %idxprom30 = sext i32 %add29 to i64
  %27 = load i8*, i8** %inbytea.addr, align 8, !tbaa !1
  %arrayidx31 = getelementptr inbounds i8, i8* %27, i64 %idxprom30
  %28 = load i8, i8* %arrayidx31, align 1, !tbaa !24
  %conv32 = zext i8 %28 to i32
  %add33 = add nsw i32 %conv28, %conv32
  %div34 = sdiv i32 %add33, 2
  %conv35 = trunc i32 %div34 to i8
  %29 = load i32, i32* %i, align 4, !tbaa !23
  %add36 = add nsw i32 %29, 3
  %idxprom37 = sext i32 %add36 to i64
  %30 = load i8*, i8** %outbyte.addr, align 8, !tbaa !1
  %arrayidx38 = getelementptr inbounds i8, i8* %30, i64 %idxprom37
  store i8 %conv35, i8* %arrayidx38, align 1, !tbaa !24
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %31 = load i32, i32* %i, align 4, !tbaa !23
  %add39 = add nsw i32 %31, 4
  store i32 %add39, i32* %i, align 4, !tbaa !23
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %32 = load i32, i32* %max, align 4, !tbaa !23
  %33 = bitcast i32* %max to i8*
  call void @llvm.lifetime.end(i64 4, i8* %33) #2
  %34 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %34) #2
  %35 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %35) #2
  ret i32 %32
}

; Function Attrs: nounwind uwtable
define internal i32 @rescale_byte_wise2x2(i32 %bytecount, i8* %inbytea, i8* %inbyteb, i8* %outbyte) #1 {
entry:
  %bytecount.addr = alloca i32, align 4
  %inbytea.addr = alloca i8*, align 8
  %inbyteb.addr = alloca i8*, align 8
  %outbyte.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %max = alloca i32, align 4
  store i32 %bytecount, i32* %bytecount.addr, align 4, !tbaa !23
  store i8* %inbytea, i8** %inbytea.addr, align 8, !tbaa !1
  store i8* %inbyteb, i8** %inbyteb.addr, align 8, !tbaa !1
  store i8* %outbyte, i8** %outbyte.addr, align 8, !tbaa !1
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = bitcast i32* %max to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  %3 = load i32, i32* %bytecount.addr, align 4, !tbaa !23
  %div = sdiv i32 %3, 2
  store i32 %div, i32* %max, align 4, !tbaa !23
  store i32 0, i32* %i, align 4, !tbaa !23
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %i, align 4, !tbaa !23
  %5 = load i32, i32* %max, align 4, !tbaa !23
  %cmp = icmp slt i32 %4, %5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %i, align 4, !tbaa !23
  %mul = mul nsw i32 2, %6
  store i32 %mul, i32* %j, align 4, !tbaa !23
  %7 = load i32, i32* %j, align 4, !tbaa !23
  %add = add nsw i32 %7, 1
  %idxprom = sext i32 %add to i64
  %8 = load i8*, i8** %inbytea.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %idxprom
  %9 = load i8, i8* %arrayidx, align 1, !tbaa !24
  %conv = zext i8 %9 to i32
  %10 = load i32, i32* %j, align 4, !tbaa !23
  %add1 = add nsw i32 %10, 5
  %idxprom2 = sext i32 %add1 to i64
  %11 = load i8*, i8** %inbytea.addr, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds i8, i8* %11, i64 %idxprom2
  %12 = load i8, i8* %arrayidx3, align 1, !tbaa !24
  %conv4 = zext i8 %12 to i32
  %add5 = add nsw i32 %conv, %conv4
  %13 = load i32, i32* %j, align 4, !tbaa !23
  %add6 = add nsw i32 %13, 1
  %idxprom7 = sext i32 %add6 to i64
  %14 = load i8*, i8** %inbyteb.addr, align 8, !tbaa !1
  %arrayidx8 = getelementptr inbounds i8, i8* %14, i64 %idxprom7
  %15 = load i8, i8* %arrayidx8, align 1, !tbaa !24
  %conv9 = zext i8 %15 to i32
  %add10 = add nsw i32 %add5, %conv9
  %16 = load i32, i32* %j, align 4, !tbaa !23
  %add11 = add nsw i32 %16, 5
  %idxprom12 = sext i32 %add11 to i64
  %17 = load i8*, i8** %inbyteb.addr, align 8, !tbaa !1
  %arrayidx13 = getelementptr inbounds i8, i8* %17, i64 %idxprom12
  %18 = load i8, i8* %arrayidx13, align 1, !tbaa !24
  %conv14 = zext i8 %18 to i32
  %add15 = add nsw i32 %add10, %conv14
  %div16 = sdiv i32 %add15, 4
  %conv17 = trunc i32 %div16 to i8
  %19 = load i32, i32* %i, align 4, !tbaa !23
  %add18 = add nsw i32 %19, 1
  %idxprom19 = sext i32 %add18 to i64
  %20 = load i8*, i8** %outbyte.addr, align 8, !tbaa !1
  %arrayidx20 = getelementptr inbounds i8, i8* %20, i64 %idxprom19
  store i8 %conv17, i8* %arrayidx20, align 1, !tbaa !24
  %21 = load i32, i32* %j, align 4, !tbaa !23
  %add21 = add nsw i32 %21, 2
  %idxprom22 = sext i32 %add21 to i64
  %22 = load i8*, i8** %inbytea.addr, align 8, !tbaa !1
  %arrayidx23 = getelementptr inbounds i8, i8* %22, i64 %idxprom22
  %23 = load i8, i8* %arrayidx23, align 1, !tbaa !24
  %conv24 = zext i8 %23 to i32
  %24 = load i32, i32* %j, align 4, !tbaa !23
  %add25 = add nsw i32 %24, 6
  %idxprom26 = sext i32 %add25 to i64
  %25 = load i8*, i8** %inbytea.addr, align 8, !tbaa !1
  %arrayidx27 = getelementptr inbounds i8, i8* %25, i64 %idxprom26
  %26 = load i8, i8* %arrayidx27, align 1, !tbaa !24
  %conv28 = zext i8 %26 to i32
  %add29 = add nsw i32 %conv24, %conv28
  %27 = load i32, i32* %j, align 4, !tbaa !23
  %add30 = add nsw i32 %27, 2
  %idxprom31 = sext i32 %add30 to i64
  %28 = load i8*, i8** %inbyteb.addr, align 8, !tbaa !1
  %arrayidx32 = getelementptr inbounds i8, i8* %28, i64 %idxprom31
  %29 = load i8, i8* %arrayidx32, align 1, !tbaa !24
  %conv33 = zext i8 %29 to i32
  %add34 = add nsw i32 %add29, %conv33
  %30 = load i32, i32* %j, align 4, !tbaa !23
  %add35 = add nsw i32 %30, 6
  %idxprom36 = sext i32 %add35 to i64
  %31 = load i8*, i8** %inbyteb.addr, align 8, !tbaa !1
  %arrayidx37 = getelementptr inbounds i8, i8* %31, i64 %idxprom36
  %32 = load i8, i8* %arrayidx37, align 1, !tbaa !24
  %conv38 = zext i8 %32 to i32
  %add39 = add nsw i32 %add34, %conv38
  %div40 = sdiv i32 %add39, 4
  %conv41 = trunc i32 %div40 to i8
  %33 = load i32, i32* %i, align 4, !tbaa !23
  %add42 = add nsw i32 %33, 2
  %idxprom43 = sext i32 %add42 to i64
  %34 = load i8*, i8** %outbyte.addr, align 8, !tbaa !1
  %arrayidx44 = getelementptr inbounds i8, i8* %34, i64 %idxprom43
  store i8 %conv41, i8* %arrayidx44, align 1, !tbaa !24
  %35 = load i32, i32* %j, align 4, !tbaa !23
  %add45 = add nsw i32 %35, 3
  %idxprom46 = sext i32 %add45 to i64
  %36 = load i8*, i8** %inbytea.addr, align 8, !tbaa !1
  %arrayidx47 = getelementptr inbounds i8, i8* %36, i64 %idxprom46
  %37 = load i8, i8* %arrayidx47, align 1, !tbaa !24
  %conv48 = zext i8 %37 to i32
  %38 = load i32, i32* %j, align 4, !tbaa !23
  %add49 = add nsw i32 %38, 7
  %idxprom50 = sext i32 %add49 to i64
  %39 = load i8*, i8** %inbytea.addr, align 8, !tbaa !1
  %arrayidx51 = getelementptr inbounds i8, i8* %39, i64 %idxprom50
  %40 = load i8, i8* %arrayidx51, align 1, !tbaa !24
  %conv52 = zext i8 %40 to i32
  %add53 = add nsw i32 %conv48, %conv52
  %41 = load i32, i32* %j, align 4, !tbaa !23
  %add54 = add nsw i32 %41, 3
  %idxprom55 = sext i32 %add54 to i64
  %42 = load i8*, i8** %inbyteb.addr, align 8, !tbaa !1
  %arrayidx56 = getelementptr inbounds i8, i8* %42, i64 %idxprom55
  %43 = load i8, i8* %arrayidx56, align 1, !tbaa !24
  %conv57 = zext i8 %43 to i32
  %add58 = add nsw i32 %add53, %conv57
  %44 = load i32, i32* %j, align 4, !tbaa !23
  %add59 = add nsw i32 %44, 7
  %idxprom60 = sext i32 %add59 to i64
  %45 = load i8*, i8** %inbyteb.addr, align 8, !tbaa !1
  %arrayidx61 = getelementptr inbounds i8, i8* %45, i64 %idxprom60
  %46 = load i8, i8* %arrayidx61, align 1, !tbaa !24
  %conv62 = zext i8 %46 to i32
  %add63 = add nsw i32 %add58, %conv62
  %div64 = sdiv i32 %add63, 4
  %conv65 = trunc i32 %div64 to i8
  %47 = load i32, i32* %i, align 4, !tbaa !23
  %add66 = add nsw i32 %47, 3
  %idxprom67 = sext i32 %add66 to i64
  %48 = load i8*, i8** %outbyte.addr, align 8, !tbaa !1
  %arrayidx68 = getelementptr inbounds i8, i8* %48, i64 %idxprom67
  store i8 %conv65, i8* %arrayidx68, align 1, !tbaa !24
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %49 = load i32, i32* %i, align 4, !tbaa !23
  %add69 = add nsw i32 %49, 4
  store i32 %add69, i32* %i, align 4, !tbaa !23
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %50 = load i32, i32* %max, align 4, !tbaa !23
  %51 = bitcast i32* %max to i8*
  call void @llvm.lifetime.end(i64 4, i8* %51) #2
  %52 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %52) #2
  %53 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %53) #2
  ret i32 %50
}

; Function Attrs: nounwind uwtable
define internal void @FSDlinec2(i32 %scan, i32 %plane_size, %struct.error_val_field* %error_values, i8* %cPa, i8* %mPa, i8* %yPa, i32 %n, i8* %dp, i32* %ep) #1 {
entry:
  %scan.addr = alloca i32, align 4
  %plane_size.addr = alloca i32, align 4
  %error_values.addr = alloca %struct.error_val_field*, align 8
  %cPa.addr = alloca i8*, align 8
  %mPa.addr = alloca i8*, align 8
  %yPa.addr = alloca i8*, align 8
  %n.addr = alloca i32, align 4
  %dp.addr = alloca i8*, align 8
  %ep.addr = alloca i32*, align 8
  %oldErr = alloca i32, align 4
  %i = alloca i32, align 4
  %ca = alloca i8, align 1
  %ya = alloca i8, align 1
  %ma = alloca i8, align 1
  %bitmask = alloca i8, align 1
  %ca160 = alloca i8, align 1
  %ya161 = alloca i8, align 1
  %ma162 = alloca i8, align 1
  %bitmask163 = alloca i8, align 1
  %oldErr164 = alloca i32, align 4
  %i165 = alloca i32, align 4
  store i32 %scan, i32* %scan.addr, align 4, !tbaa !23
  store i32 %plane_size, i32* %plane_size.addr, align 4, !tbaa !23
  store %struct.error_val_field* %error_values, %struct.error_val_field** %error_values.addr, align 8, !tbaa !1
  store i8* %cPa, i8** %cPa.addr, align 8, !tbaa !1
  store i8* %mPa, i8** %mPa.addr, align 8, !tbaa !1
  store i8* %yPa, i8** %yPa.addr, align 8, !tbaa !1
  store i32 %n, i32* %n.addr, align 4, !tbaa !23
  store i8* %dp, i8** %dp.addr, align 8, !tbaa !1
  store i32* %ep, i32** %ep.addr, align 8, !tbaa !1
  %0 = load i32, i32* %scan.addr, align 4, !tbaa !23
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = bitcast i32* %oldErr to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  call void @llvm.lifetime.start(i64 1, i8* %ca) #2
  call void @llvm.lifetime.start(i64 1, i8* %ya) #2
  call void @llvm.lifetime.start(i64 1, i8* %ma) #2
  call void @llvm.lifetime.start(i64 1, i8* %bitmask) #2
  store i32 0, i32* %i, align 4, !tbaa !23
  br label %for.cond

for.cond:                                         ; preds = %for.inc.158, %if.then
  %3 = load i32, i32* %i, align 4, !tbaa !23
  %4 = load i32, i32* %plane_size.addr, align 4, !tbaa !23
  %cmp1 = icmp slt i32 %3, %4
  br i1 %cmp1, label %for.body, label %for.end.159

for.body:                                         ; preds = %for.cond
  store i8 -128, i8* %bitmask, align 1, !tbaa !24
  store i8 0, i8* %ma, align 1, !tbaa !24
  store i8 0, i8* %ya, align 1, !tbaa !24
  store i8 0, i8* %ca, align 1, !tbaa !24
  store i8 0, i8* %ca, align 1, !tbaa !24
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc, %for.body
  %5 = load i8, i8* %bitmask, align 1, !tbaa !24
  %conv = zext i8 %5 to i32
  %cmp3 = icmp ne i32 %conv, 0
  br i1 %cmp3, label %for.body.5, label %for.end

for.body.5:                                       ; preds = %for.cond.2
  %6 = load %struct.error_val_field*, %struct.error_val_field** %error_values.addr, align 8, !tbaa !1
  %c = getelementptr inbounds %struct.error_val_field, %struct.error_val_field* %6, i32 0, i32 0
  %7 = load i32, i32* %c, align 4, !tbaa !106
  store i32 %7, i32* %oldErr, align 4, !tbaa !23
  %8 = load i32*, i32** %ep.addr, align 8, !tbaa !1
  %9 = load i32, i32* %n.addr, align 4, !tbaa !23
  %idx.ext = sext i32 %9 to i64
  %add.ptr = getelementptr inbounds i32, i32* %8, i64 %idx.ext
  %add.ptr6 = getelementptr inbounds i32, i32* %add.ptr, i64 -3
  %10 = load i32, i32* %add.ptr6, align 4, !tbaa !23
  %11 = load %struct.error_val_field*, %struct.error_val_field** %error_values.addr, align 8, !tbaa !1
  %c7 = getelementptr inbounds %struct.error_val_field, %struct.error_val_field* %11, i32 0, i32 0
  %12 = load i32, i32* %c7, align 4, !tbaa !106
  %mul = mul nsw i32 %12, 7
  %add = add nsw i32 %mul, 8
  %shr = ashr i32 %add, 4
  %add8 = add nsw i32 %10, %shr
  %13 = load i8*, i8** %dp.addr, align 8, !tbaa !1
  %14 = load i32, i32* %n.addr, align 4, !tbaa !23
  %idx.ext9 = sext i32 %14 to i64
  %add.ptr10 = getelementptr inbounds i8, i8* %13, i64 %idx.ext9
  %add.ptr11 = getelementptr inbounds i8, i8* %add.ptr10, i64 -3
  %15 = load i8, i8* %add.ptr11, align 1, !tbaa !24
  %conv12 = zext i8 %15 to i32
  %shl = shl i32 %conv12, 19
  %add13 = add nsw i32 %add8, %shl
  %16 = load %struct.error_val_field*, %struct.error_val_field** %error_values.addr, align 8, !tbaa !1
  %c14 = getelementptr inbounds %struct.error_val_field, %struct.error_val_field* %16, i32 0, i32 0
  store i32 %add13, i32* %c14, align 4, !tbaa !106
  %17 = load %struct.error_val_field*, %struct.error_val_field** %error_values.addr, align 8, !tbaa !1
  %c15 = getelementptr inbounds %struct.error_val_field, %struct.error_val_field* %17, i32 0, i32 0
  %18 = load i32, i32* %c15, align 4, !tbaa !106
  %cmp16 = icmp sgt i32 %18, 67108864
  br i1 %cmp16, label %if.then.24, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body.5
  %19 = load i8*, i8** %dp.addr, align 8, !tbaa !1
  %20 = load i32, i32* %n.addr, align 4, !tbaa !23
  %idx.ext18 = sext i32 %20 to i64
  %add.ptr19 = getelementptr inbounds i8, i8* %19, i64 %idx.ext18
  %add.ptr20 = getelementptr inbounds i8, i8* %add.ptr19, i64 -3
  %21 = load i8, i8* %add.ptr20, align 1, !tbaa !24
  %conv21 = zext i8 %21 to i32
  %cmp22 = icmp eq i32 %conv21, 255
  br i1 %cmp22, label %if.then.24, label %if.end

if.then.24:                                       ; preds = %lor.lhs.false, %for.body.5
  %22 = load i8, i8* %bitmask, align 1, !tbaa !24
  %conv25 = zext i8 %22 to i32
  %23 = load i8, i8* %ca, align 1, !tbaa !24
  %conv26 = zext i8 %23 to i32
  %or = or i32 %conv26, %conv25
  %conv27 = trunc i32 %or to i8
  store i8 %conv27, i8* %ca, align 1, !tbaa !24
  %24 = load %struct.error_val_field*, %struct.error_val_field** %error_values.addr, align 8, !tbaa !1
  %c28 = getelementptr inbounds %struct.error_val_field, %struct.error_val_field* %24, i32 0, i32 0
  %25 = load i32, i32* %c28, align 4, !tbaa !106
  %sub = sub nsw i32 %25, 134217728
  store i32 %sub, i32* %c28, align 4, !tbaa !106
  br label %if.end

if.end:                                           ; preds = %if.then.24, %lor.lhs.false
  %26 = load %struct.error_val_field*, %struct.error_val_field** %error_values.addr, align 8, !tbaa !1
  %c29 = getelementptr inbounds %struct.error_val_field, %struct.error_val_field* %26, i32 0, i32 0
  %27 = load i32, i32* %c29, align 4, !tbaa !106
  %mul30 = mul nsw i32 %27, 3
  %add31 = add nsw i32 %mul30, 8
  %shr32 = ashr i32 %add31, 4
  %28 = load i32*, i32** %ep.addr, align 8, !tbaa !1
  %29 = load i32, i32* %n.addr, align 4, !tbaa !23
  %sub33 = sub nsw i32 %29, 3
  %30 = load i32, i32* %n.addr, align 4, !tbaa !23
  %sub34 = sub nsw i32 0, %30
  %add35 = add nsw i32 %sub33, %sub34
  %idx.ext36 = sext i32 %add35 to i64
  %add.ptr37 = getelementptr inbounds i32, i32* %28, i64 %idx.ext36
  %31 = load i32, i32* %add.ptr37, align 4, !tbaa !23
  %add38 = add nsw i32 %31, %shr32
  store i32 %add38, i32* %add.ptr37, align 4, !tbaa !23
  %32 = load %struct.error_val_field*, %struct.error_val_field** %error_values.addr, align 8, !tbaa !1
  %c39 = getelementptr inbounds %struct.error_val_field, %struct.error_val_field* %32, i32 0, i32 0
  %33 = load i32, i32* %c39, align 4, !tbaa !106
  %mul40 = mul nsw i32 %33, 5
  %34 = load i32, i32* %oldErr, align 4, !tbaa !23
  %add41 = add nsw i32 %mul40, %34
  %add42 = add nsw i32 %add41, 8
  %shr43 = ashr i32 %add42, 4
  %35 = load i32*, i32** %ep.addr, align 8, !tbaa !1
  %36 = load i32, i32* %n.addr, align 4, !tbaa !23
  %idx.ext44 = sext i32 %36 to i64
  %add.ptr45 = getelementptr inbounds i32, i32* %35, i64 %idx.ext44
  %add.ptr46 = getelementptr inbounds i32, i32* %add.ptr45, i64 -3
  store i32 %shr43, i32* %add.ptr46, align 4, !tbaa !23
  %37 = load %struct.error_val_field*, %struct.error_val_field** %error_values.addr, align 8, !tbaa !1
  %m = getelementptr inbounds %struct.error_val_field, %struct.error_val_field* %37, i32 0, i32 1
  %38 = load i32, i32* %m, align 4, !tbaa !105
  store i32 %38, i32* %oldErr, align 4, !tbaa !23
  %39 = load i32*, i32** %ep.addr, align 8, !tbaa !1
  %40 = load i32, i32* %n.addr, align 4, !tbaa !23
  %idx.ext47 = sext i32 %40 to i64
  %add.ptr48 = getelementptr inbounds i32, i32* %39, i64 %idx.ext47
  %add.ptr49 = getelementptr inbounds i32, i32* %add.ptr48, i64 -2
  %41 = load i32, i32* %add.ptr49, align 4, !tbaa !23
  %42 = load %struct.error_val_field*, %struct.error_val_field** %error_values.addr, align 8, !tbaa !1
  %m50 = getelementptr inbounds %struct.error_val_field, %struct.error_val_field* %42, i32 0, i32 1
  %43 = load i32, i32* %m50, align 4, !tbaa !105
  %mul51 = mul nsw i32 %43, 7
  %add52 = add nsw i32 %mul51, 8
  %shr53 = ashr i32 %add52, 4
  %add54 = add nsw i32 %41, %shr53
  %44 = load i8*, i8** %dp.addr, align 8, !tbaa !1
  %45 = load i32, i32* %n.addr, align 4, !tbaa !23
  %idx.ext55 = sext i32 %45 to i64
  %add.ptr56 = getelementptr inbounds i8, i8* %44, i64 %idx.ext55
  %add.ptr57 = getelementptr inbounds i8, i8* %add.ptr56, i64 -2
  %46 = load i8, i8* %add.ptr57, align 1, !tbaa !24
  %conv58 = zext i8 %46 to i32
  %shl59 = shl i32 %conv58, 19
  %add60 = add nsw i32 %add54, %shl59
  %47 = load %struct.error_val_field*, %struct.error_val_field** %error_values.addr, align 8, !tbaa !1
  %m61 = getelementptr inbounds %struct.error_val_field, %struct.error_val_field* %47, i32 0, i32 1
  store i32 %add60, i32* %m61, align 4, !tbaa !105
  %48 = load %struct.error_val_field*, %struct.error_val_field** %error_values.addr, align 8, !tbaa !1
  %m62 = getelementptr inbounds %struct.error_val_field, %struct.error_val_field* %48, i32 0, i32 1
  %49 = load i32, i32* %m62, align 4, !tbaa !105
  %cmp63 = icmp sgt i32 %49, 67108864
  br i1 %cmp63, label %if.then.72, label %lor.lhs.false.65

lor.lhs.false.65:                                 ; preds = %if.end
  %50 = load i8*, i8** %dp.addr, align 8, !tbaa !1
  %51 = load i32, i32* %n.addr, align 4, !tbaa !23
  %idx.ext66 = sext i32 %51 to i64
  %add.ptr67 = getelementptr inbounds i8, i8* %50, i64 %idx.ext66
  %add.ptr68 = getelementptr inbounds i8, i8* %add.ptr67, i64 -2
  %52 = load i8, i8* %add.ptr68, align 1, !tbaa !24
  %conv69 = zext i8 %52 to i32
  %cmp70 = icmp eq i32 %conv69, 255
  br i1 %cmp70, label %if.then.72, label %if.end.79

if.then.72:                                       ; preds = %lor.lhs.false.65, %if.end
  %53 = load i8, i8* %bitmask, align 1, !tbaa !24
  %conv73 = zext i8 %53 to i32
  %54 = load i8, i8* %ma, align 1, !tbaa !24
  %conv74 = zext i8 %54 to i32
  %or75 = or i32 %conv74, %conv73
  %conv76 = trunc i32 %or75 to i8
  store i8 %conv76, i8* %ma, align 1, !tbaa !24
  %55 = load %struct.error_val_field*, %struct.error_val_field** %error_values.addr, align 8, !tbaa !1
  %m77 = getelementptr inbounds %struct.error_val_field, %struct.error_val_field* %55, i32 0, i32 1
  %56 = load i32, i32* %m77, align 4, !tbaa !105
  %sub78 = sub nsw i32 %56, 134217728
  store i32 %sub78, i32* %m77, align 4, !tbaa !105
  br label %if.end.79

if.end.79:                                        ; preds = %if.then.72, %lor.lhs.false.65
  %57 = load %struct.error_val_field*, %struct.error_val_field** %error_values.addr, align 8, !tbaa !1
  %m80 = getelementptr inbounds %struct.error_val_field, %struct.error_val_field* %57, i32 0, i32 1
  %58 = load i32, i32* %m80, align 4, !tbaa !105
  %mul81 = mul nsw i32 %58, 3
  %add82 = add nsw i32 %mul81, 8
  %shr83 = ashr i32 %add82, 4
  %59 = load i32*, i32** %ep.addr, align 8, !tbaa !1
  %60 = load i32, i32* %n.addr, align 4, !tbaa !23
  %sub84 = sub nsw i32 %60, 2
  %61 = load i32, i32* %n.addr, align 4, !tbaa !23
  %sub85 = sub nsw i32 0, %61
  %add86 = add nsw i32 %sub84, %sub85
  %idx.ext87 = sext i32 %add86 to i64
  %add.ptr88 = getelementptr inbounds i32, i32* %59, i64 %idx.ext87
  %62 = load i32, i32* %add.ptr88, align 4, !tbaa !23
  %add89 = add nsw i32 %62, %shr83
  store i32 %add89, i32* %add.ptr88, align 4, !tbaa !23
  %63 = load %struct.error_val_field*, %struct.error_val_field** %error_values.addr, align 8, !tbaa !1
  %m90 = getelementptr inbounds %struct.error_val_field, %struct.error_val_field* %63, i32 0, i32 1
  %64 = load i32, i32* %m90, align 4, !tbaa !105
  %mul91 = mul nsw i32 %64, 5
  %65 = load i32, i32* %oldErr, align 4, !tbaa !23
  %add92 = add nsw i32 %mul91, %65
  %add93 = add nsw i32 %add92, 8
  %shr94 = ashr i32 %add93, 4
  %66 = load i32*, i32** %ep.addr, align 8, !tbaa !1
  %67 = load i32, i32* %n.addr, align 4, !tbaa !23
  %idx.ext95 = sext i32 %67 to i64
  %add.ptr96 = getelementptr inbounds i32, i32* %66, i64 %idx.ext95
  %add.ptr97 = getelementptr inbounds i32, i32* %add.ptr96, i64 -2
  store i32 %shr94, i32* %add.ptr97, align 4, !tbaa !23
  %68 = load %struct.error_val_field*, %struct.error_val_field** %error_values.addr, align 8, !tbaa !1
  %y = getelementptr inbounds %struct.error_val_field, %struct.error_val_field* %68, i32 0, i32 2
  %69 = load i32, i32* %y, align 4, !tbaa !104
  store i32 %69, i32* %oldErr, align 4, !tbaa !23
  %70 = load i32*, i32** %ep.addr, align 8, !tbaa !1
  %71 = load i32, i32* %n.addr, align 4, !tbaa !23
  %idx.ext98 = sext i32 %71 to i64
  %add.ptr99 = getelementptr inbounds i32, i32* %70, i64 %idx.ext98
  %add.ptr100 = getelementptr inbounds i32, i32* %add.ptr99, i64 -1
  %72 = load i32, i32* %add.ptr100, align 4, !tbaa !23
  %73 = load %struct.error_val_field*, %struct.error_val_field** %error_values.addr, align 8, !tbaa !1
  %y101 = getelementptr inbounds %struct.error_val_field, %struct.error_val_field* %73, i32 0, i32 2
  %74 = load i32, i32* %y101, align 4, !tbaa !104
  %mul102 = mul nsw i32 %74, 7
  %add103 = add nsw i32 %mul102, 8
  %shr104 = ashr i32 %add103, 4
  %add105 = add nsw i32 %72, %shr104
  %75 = load i8*, i8** %dp.addr, align 8, !tbaa !1
  %76 = load i32, i32* %n.addr, align 4, !tbaa !23
  %idx.ext106 = sext i32 %76 to i64
  %add.ptr107 = getelementptr inbounds i8, i8* %75, i64 %idx.ext106
  %add.ptr108 = getelementptr inbounds i8, i8* %add.ptr107, i64 -1
  %77 = load i8, i8* %add.ptr108, align 1, !tbaa !24
  %conv109 = zext i8 %77 to i32
  %shl110 = shl i32 %conv109, 19
  %add111 = add nsw i32 %add105, %shl110
  %78 = load %struct.error_val_field*, %struct.error_val_field** %error_values.addr, align 8, !tbaa !1
  %y112 = getelementptr inbounds %struct.error_val_field, %struct.error_val_field* %78, i32 0, i32 2
  store i32 %add111, i32* %y112, align 4, !tbaa !104
  %79 = load %struct.error_val_field*, %struct.error_val_field** %error_values.addr, align 8, !tbaa !1
  %y113 = getelementptr inbounds %struct.error_val_field, %struct.error_val_field* %79, i32 0, i32 2
  %80 = load i32, i32* %y113, align 4, !tbaa !104
  %cmp114 = icmp sgt i32 %80, 67108864
  br i1 %cmp114, label %if.then.123, label %lor.lhs.false.116

lor.lhs.false.116:                                ; preds = %if.end.79
  %81 = load i8*, i8** %dp.addr, align 8, !tbaa !1
  %82 = load i32, i32* %n.addr, align 4, !tbaa !23
  %idx.ext117 = sext i32 %82 to i64
  %add.ptr118 = getelementptr inbounds i8, i8* %81, i64 %idx.ext117
  %add.ptr119 = getelementptr inbounds i8, i8* %add.ptr118, i64 -1
  %83 = load i8, i8* %add.ptr119, align 1, !tbaa !24
  %conv120 = zext i8 %83 to i32
  %cmp121 = icmp eq i32 %conv120, 255
  br i1 %cmp121, label %if.then.123, label %if.end.130

if.then.123:                                      ; preds = %lor.lhs.false.116, %if.end.79
  %84 = load i8, i8* %bitmask, align 1, !tbaa !24
  %conv124 = zext i8 %84 to i32
  %85 = load i8, i8* %ya, align 1, !tbaa !24
  %conv125 = zext i8 %85 to i32
  %or126 = or i32 %conv125, %conv124
  %conv127 = trunc i32 %or126 to i8
  store i8 %conv127, i8* %ya, align 1, !tbaa !24
  %86 = load %struct.error_val_field*, %struct.error_val_field** %error_values.addr, align 8, !tbaa !1
  %y128 = getelementptr inbounds %struct.error_val_field, %struct.error_val_field* %86, i32 0, i32 2
  %87 = load i32, i32* %y128, align 4, !tbaa !104
  %sub129 = sub nsw i32 %87, 134217728
  store i32 %sub129, i32* %y128, align 4, !tbaa !104
  br label %if.end.130

if.end.130:                                       ; preds = %if.then.123, %lor.lhs.false.116
  %88 = load %struct.error_val_field*, %struct.error_val_field** %error_values.addr, align 8, !tbaa !1
  %y131 = getelementptr inbounds %struct.error_val_field, %struct.error_val_field* %88, i32 0, i32 2
  %89 = load i32, i32* %y131, align 4, !tbaa !104
  %mul132 = mul nsw i32 %89, 3
  %add133 = add nsw i32 %mul132, 8
  %shr134 = ashr i32 %add133, 4
  %90 = load i32*, i32** %ep.addr, align 8, !tbaa !1
  %91 = load i32, i32* %n.addr, align 4, !tbaa !23
  %sub135 = sub nsw i32 %91, 1
  %92 = load i32, i32* %n.addr, align 4, !tbaa !23
  %sub136 = sub nsw i32 0, %92
  %add137 = add nsw i32 %sub135, %sub136
  %idx.ext138 = sext i32 %add137 to i64
  %add.ptr139 = getelementptr inbounds i32, i32* %90, i64 %idx.ext138
  %93 = load i32, i32* %add.ptr139, align 4, !tbaa !23
  %add140 = add nsw i32 %93, %shr134
  store i32 %add140, i32* %add.ptr139, align 4, !tbaa !23
  %94 = load %struct.error_val_field*, %struct.error_val_field** %error_values.addr, align 8, !tbaa !1
  %y141 = getelementptr inbounds %struct.error_val_field, %struct.error_val_field* %94, i32 0, i32 2
  %95 = load i32, i32* %y141, align 4, !tbaa !104
  %mul142 = mul nsw i32 %95, 5
  %96 = load i32, i32* %oldErr, align 4, !tbaa !23
  %add143 = add nsw i32 %mul142, %96
  %add144 = add nsw i32 %add143, 8
  %shr145 = ashr i32 %add144, 4
  %97 = load i32*, i32** %ep.addr, align 8, !tbaa !1
  %98 = load i32, i32* %n.addr, align 4, !tbaa !23
  %idx.ext146 = sext i32 %98 to i64
  %add.ptr147 = getelementptr inbounds i32, i32* %97, i64 %idx.ext146
  %add.ptr148 = getelementptr inbounds i32, i32* %add.ptr147, i64 -1
  store i32 %shr145, i32* %add.ptr148, align 4, !tbaa !23
  %99 = load i32, i32* %n.addr, align 4, !tbaa !23
  %100 = load i8*, i8** %dp.addr, align 8, !tbaa !1
  %idx.ext149 = sext i32 %99 to i64
  %add.ptr150 = getelementptr inbounds i8, i8* %100, i64 %idx.ext149
  store i8* %add.ptr150, i8** %dp.addr, align 8, !tbaa !1
  %101 = load i32, i32* %n.addr, align 4, !tbaa !23
  %102 = load i32*, i32** %ep.addr, align 8, !tbaa !1
  %idx.ext151 = sext i32 %101 to i64
  %add.ptr152 = getelementptr inbounds i32, i32* %102, i64 %idx.ext151
  store i32* %add.ptr152, i32** %ep.addr, align 8, !tbaa !1
  br label %for.inc

for.inc:                                          ; preds = %if.end.130
  %103 = load i8, i8* %bitmask, align 1, !tbaa !24
  %conv153 = zext i8 %103 to i32
  %shr154 = ashr i32 %conv153, 1
  %conv155 = trunc i32 %shr154 to i8
  store i8 %conv155, i8* %bitmask, align 1, !tbaa !24
  br label %for.cond.2

for.end:                                          ; preds = %for.cond.2
  %104 = load i8, i8* %ca, align 1, !tbaa !24
  %105 = load i8*, i8** %cPa.addr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %105, i32 1
  store i8* %incdec.ptr, i8** %cPa.addr, align 8, !tbaa !1
  store i8 %104, i8* %105, align 1, !tbaa !24
  %106 = load i8, i8* %ma, align 1, !tbaa !24
  %107 = load i8*, i8** %mPa.addr, align 8, !tbaa !1
  %incdec.ptr156 = getelementptr inbounds i8, i8* %107, i32 1
  store i8* %incdec.ptr156, i8** %mPa.addr, align 8, !tbaa !1
  store i8 %106, i8* %107, align 1, !tbaa !24
  %108 = load i8, i8* %ya, align 1, !tbaa !24
  %109 = load i8*, i8** %yPa.addr, align 8, !tbaa !1
  %incdec.ptr157 = getelementptr inbounds i8, i8* %109, i32 1
  store i8* %incdec.ptr157, i8** %yPa.addr, align 8, !tbaa !1
  store i8 %108, i8* %109, align 1, !tbaa !24
  br label %for.inc.158

for.inc.158:                                      ; preds = %for.end
  %110 = load i32, i32* %i, align 4, !tbaa !23
  %inc = add nsw i32 %110, 1
  store i32 %inc, i32* %i, align 4, !tbaa !23
  br label %for.cond

for.end.159:                                      ; preds = %for.cond
  call void @llvm.lifetime.end(i64 1, i8* %bitmask) #2
  call void @llvm.lifetime.end(i64 1, i8* %ma) #2
  call void @llvm.lifetime.end(i64 1, i8* %ya) #2
  call void @llvm.lifetime.end(i64 1, i8* %ca) #2
  %111 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %111) #2
  %112 = bitcast i32* %oldErr to i8*
  call void @llvm.lifetime.end(i64 4, i8* %112) #2
  br label %if.end.344

if.else:                                          ; preds = %entry
  call void @llvm.lifetime.start(i64 1, i8* %ca160) #2
  call void @llvm.lifetime.start(i64 1, i8* %ya161) #2
  call void @llvm.lifetime.start(i64 1, i8* %ma162) #2
  call void @llvm.lifetime.start(i64 1, i8* %bitmask163) #2
  %113 = bitcast i32* %oldErr164 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %113) #2
  %114 = bitcast i32* %i165 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %114) #2
  store i32 0, i32* %i165, align 4, !tbaa !23
  br label %for.cond.166

for.cond.166:                                     ; preds = %for.inc.341, %if.else
  %115 = load i32, i32* %i165, align 4, !tbaa !23
  %116 = load i32, i32* %plane_size.addr, align 4, !tbaa !23
  %cmp167 = icmp slt i32 %115, %116
  br i1 %cmp167, label %for.body.169, label %for.end.343

for.body.169:                                     ; preds = %for.cond.166
  store i8 1, i8* %bitmask163, align 1, !tbaa !24
  store i8 0, i8* %ma162, align 1, !tbaa !24
  store i8 0, i8* %ya161, align 1, !tbaa !24
  store i8 0, i8* %ca160, align 1, !tbaa !24
  store i8 0, i8* %ca160, align 1, !tbaa !24
  br label %for.cond.170

for.cond.170:                                     ; preds = %for.inc.333, %for.body.169
  %117 = load i8, i8* %bitmask163, align 1, !tbaa !24
  %conv171 = zext i8 %117 to i32
  %cmp172 = icmp ne i32 %conv171, 0
  br i1 %cmp172, label %for.body.174, label %for.end.337

for.body.174:                                     ; preds = %for.cond.170
  %118 = load i32, i32* %n.addr, align 4, !tbaa !23
  %119 = load i8*, i8** %dp.addr, align 8, !tbaa !1
  %idx.ext175 = sext i32 %118 to i64
  %idx.neg = sub i64 0, %idx.ext175
  %add.ptr176 = getelementptr inbounds i8, i8* %119, i64 %idx.neg
  store i8* %add.ptr176, i8** %dp.addr, align 8, !tbaa !1
  %120 = load i32, i32* %n.addr, align 4, !tbaa !23
  %121 = load i32*, i32** %ep.addr, align 8, !tbaa !1
  %idx.ext177 = sext i32 %120 to i64
  %idx.neg178 = sub i64 0, %idx.ext177
  %add.ptr179 = getelementptr inbounds i32, i32* %121, i64 %idx.neg178
  store i32* %add.ptr179, i32** %ep.addr, align 8, !tbaa !1
  %122 = load %struct.error_val_field*, %struct.error_val_field** %error_values.addr, align 8, !tbaa !1
  %y180 = getelementptr inbounds %struct.error_val_field, %struct.error_val_field* %122, i32 0, i32 2
  %123 = load i32, i32* %y180, align 4, !tbaa !104
  store i32 %123, i32* %oldErr164, align 4, !tbaa !23
  %124 = load i32*, i32** %ep.addr, align 8, !tbaa !1
  %125 = load i32, i32* %n.addr, align 4, !tbaa !23
  %idx.ext181 = sext i32 %125 to i64
  %add.ptr182 = getelementptr inbounds i32, i32* %124, i64 %idx.ext181
  %add.ptr183 = getelementptr inbounds i32, i32* %add.ptr182, i64 -1
  %126 = load i32, i32* %add.ptr183, align 4, !tbaa !23
  %127 = load %struct.error_val_field*, %struct.error_val_field** %error_values.addr, align 8, !tbaa !1
  %y184 = getelementptr inbounds %struct.error_val_field, %struct.error_val_field* %127, i32 0, i32 2
  %128 = load i32, i32* %y184, align 4, !tbaa !104
  %mul185 = mul nsw i32 %128, 7
  %add186 = add nsw i32 %mul185, 8
  %shr187 = ashr i32 %add186, 4
  %add188 = add nsw i32 %126, %shr187
  %129 = load i8*, i8** %dp.addr, align 8, !tbaa !1
  %130 = load i32, i32* %n.addr, align 4, !tbaa !23
  %idx.ext189 = sext i32 %130 to i64
  %add.ptr190 = getelementptr inbounds i8, i8* %129, i64 %idx.ext189
  %add.ptr191 = getelementptr inbounds i8, i8* %add.ptr190, i64 -1
  %131 = load i8, i8* %add.ptr191, align 1, !tbaa !24
  %conv192 = zext i8 %131 to i32
  %shl193 = shl i32 %conv192, 19
  %add194 = add nsw i32 %add188, %shl193
  %132 = load %struct.error_val_field*, %struct.error_val_field** %error_values.addr, align 8, !tbaa !1
  %y195 = getelementptr inbounds %struct.error_val_field, %struct.error_val_field* %132, i32 0, i32 2
  store i32 %add194, i32* %y195, align 4, !tbaa !104
  %133 = load %struct.error_val_field*, %struct.error_val_field** %error_values.addr, align 8, !tbaa !1
  %y196 = getelementptr inbounds %struct.error_val_field, %struct.error_val_field* %133, i32 0, i32 2
  %134 = load i32, i32* %y196, align 4, !tbaa !104
  %cmp197 = icmp sgt i32 %134, 67108864
  br i1 %cmp197, label %if.then.206, label %lor.lhs.false.199

lor.lhs.false.199:                                ; preds = %for.body.174
  %135 = load i8*, i8** %dp.addr, align 8, !tbaa !1
  %136 = load i32, i32* %n.addr, align 4, !tbaa !23
  %idx.ext200 = sext i32 %136 to i64
  %add.ptr201 = getelementptr inbounds i8, i8* %135, i64 %idx.ext200
  %add.ptr202 = getelementptr inbounds i8, i8* %add.ptr201, i64 -1
  %137 = load i8, i8* %add.ptr202, align 1, !tbaa !24
  %conv203 = zext i8 %137 to i32
  %cmp204 = icmp eq i32 %conv203, 255
  br i1 %cmp204, label %if.then.206, label %if.end.213

if.then.206:                                      ; preds = %lor.lhs.false.199, %for.body.174
  %138 = load i8, i8* %bitmask163, align 1, !tbaa !24
  %conv207 = zext i8 %138 to i32
  %139 = load i8, i8* %ya161, align 1, !tbaa !24
  %conv208 = zext i8 %139 to i32
  %or209 = or i32 %conv208, %conv207
  %conv210 = trunc i32 %or209 to i8
  store i8 %conv210, i8* %ya161, align 1, !tbaa !24
  %140 = load %struct.error_val_field*, %struct.error_val_field** %error_values.addr, align 8, !tbaa !1
  %y211 = getelementptr inbounds %struct.error_val_field, %struct.error_val_field* %140, i32 0, i32 2
  %141 = load i32, i32* %y211, align 4, !tbaa !104
  %sub212 = sub nsw i32 %141, 134217728
  store i32 %sub212, i32* %y211, align 4, !tbaa !104
  br label %if.end.213

if.end.213:                                       ; preds = %if.then.206, %lor.lhs.false.199
  %142 = load %struct.error_val_field*, %struct.error_val_field** %error_values.addr, align 8, !tbaa !1
  %y214 = getelementptr inbounds %struct.error_val_field, %struct.error_val_field* %142, i32 0, i32 2
  %143 = load i32, i32* %y214, align 4, !tbaa !104
  %mul215 = mul nsw i32 %143, 3
  %add216 = add nsw i32 %mul215, 8
  %shr217 = ashr i32 %add216, 4
  %144 = load i32*, i32** %ep.addr, align 8, !tbaa !1
  %145 = load i32, i32* %n.addr, align 4, !tbaa !23
  %sub218 = sub nsw i32 %145, 1
  %146 = load i32, i32* %n.addr, align 4, !tbaa !23
  %add219 = add nsw i32 %sub218, %146
  %idx.ext220 = sext i32 %add219 to i64
  %add.ptr221 = getelementptr inbounds i32, i32* %144, i64 %idx.ext220
  %147 = load i32, i32* %add.ptr221, align 4, !tbaa !23
  %add222 = add nsw i32 %147, %shr217
  store i32 %add222, i32* %add.ptr221, align 4, !tbaa !23
  %148 = load %struct.error_val_field*, %struct.error_val_field** %error_values.addr, align 8, !tbaa !1
  %y223 = getelementptr inbounds %struct.error_val_field, %struct.error_val_field* %148, i32 0, i32 2
  %149 = load i32, i32* %y223, align 4, !tbaa !104
  %mul224 = mul nsw i32 %149, 5
  %150 = load i32, i32* %oldErr164, align 4, !tbaa !23
  %add225 = add nsw i32 %mul224, %150
  %add226 = add nsw i32 %add225, 8
  %shr227 = ashr i32 %add226, 4
  %151 = load i32*, i32** %ep.addr, align 8, !tbaa !1
  %152 = load i32, i32* %n.addr, align 4, !tbaa !23
  %idx.ext228 = sext i32 %152 to i64
  %add.ptr229 = getelementptr inbounds i32, i32* %151, i64 %idx.ext228
  %add.ptr230 = getelementptr inbounds i32, i32* %add.ptr229, i64 -1
  store i32 %shr227, i32* %add.ptr230, align 4, !tbaa !23
  %153 = load %struct.error_val_field*, %struct.error_val_field** %error_values.addr, align 8, !tbaa !1
  %m231 = getelementptr inbounds %struct.error_val_field, %struct.error_val_field* %153, i32 0, i32 1
  %154 = load i32, i32* %m231, align 4, !tbaa !105
  store i32 %154, i32* %oldErr164, align 4, !tbaa !23
  %155 = load i32*, i32** %ep.addr, align 8, !tbaa !1
  %156 = load i32, i32* %n.addr, align 4, !tbaa !23
  %idx.ext232 = sext i32 %156 to i64
  %add.ptr233 = getelementptr inbounds i32, i32* %155, i64 %idx.ext232
  %add.ptr234 = getelementptr inbounds i32, i32* %add.ptr233, i64 -2
  %157 = load i32, i32* %add.ptr234, align 4, !tbaa !23
  %158 = load %struct.error_val_field*, %struct.error_val_field** %error_values.addr, align 8, !tbaa !1
  %m235 = getelementptr inbounds %struct.error_val_field, %struct.error_val_field* %158, i32 0, i32 1
  %159 = load i32, i32* %m235, align 4, !tbaa !105
  %mul236 = mul nsw i32 %159, 7
  %add237 = add nsw i32 %mul236, 8
  %shr238 = ashr i32 %add237, 4
  %add239 = add nsw i32 %157, %shr238
  %160 = load i8*, i8** %dp.addr, align 8, !tbaa !1
  %161 = load i32, i32* %n.addr, align 4, !tbaa !23
  %idx.ext240 = sext i32 %161 to i64
  %add.ptr241 = getelementptr inbounds i8, i8* %160, i64 %idx.ext240
  %add.ptr242 = getelementptr inbounds i8, i8* %add.ptr241, i64 -2
  %162 = load i8, i8* %add.ptr242, align 1, !tbaa !24
  %conv243 = zext i8 %162 to i32
  %shl244 = shl i32 %conv243, 19
  %add245 = add nsw i32 %add239, %shl244
  %163 = load %struct.error_val_field*, %struct.error_val_field** %error_values.addr, align 8, !tbaa !1
  %m246 = getelementptr inbounds %struct.error_val_field, %struct.error_val_field* %163, i32 0, i32 1
  store i32 %add245, i32* %m246, align 4, !tbaa !105
  %164 = load %struct.error_val_field*, %struct.error_val_field** %error_values.addr, align 8, !tbaa !1
  %m247 = getelementptr inbounds %struct.error_val_field, %struct.error_val_field* %164, i32 0, i32 1
  %165 = load i32, i32* %m247, align 4, !tbaa !105
  %cmp248 = icmp sgt i32 %165, 67108864
  br i1 %cmp248, label %if.then.257, label %lor.lhs.false.250

lor.lhs.false.250:                                ; preds = %if.end.213
  %166 = load i8*, i8** %dp.addr, align 8, !tbaa !1
  %167 = load i32, i32* %n.addr, align 4, !tbaa !23
  %idx.ext251 = sext i32 %167 to i64
  %add.ptr252 = getelementptr inbounds i8, i8* %166, i64 %idx.ext251
  %add.ptr253 = getelementptr inbounds i8, i8* %add.ptr252, i64 -2
  %168 = load i8, i8* %add.ptr253, align 1, !tbaa !24
  %conv254 = zext i8 %168 to i32
  %cmp255 = icmp eq i32 %conv254, 255
  br i1 %cmp255, label %if.then.257, label %if.end.264

if.then.257:                                      ; preds = %lor.lhs.false.250, %if.end.213
  %169 = load i8, i8* %bitmask163, align 1, !tbaa !24
  %conv258 = zext i8 %169 to i32
  %170 = load i8, i8* %ma162, align 1, !tbaa !24
  %conv259 = zext i8 %170 to i32
  %or260 = or i32 %conv259, %conv258
  %conv261 = trunc i32 %or260 to i8
  store i8 %conv261, i8* %ma162, align 1, !tbaa !24
  %171 = load %struct.error_val_field*, %struct.error_val_field** %error_values.addr, align 8, !tbaa !1
  %m262 = getelementptr inbounds %struct.error_val_field, %struct.error_val_field* %171, i32 0, i32 1
  %172 = load i32, i32* %m262, align 4, !tbaa !105
  %sub263 = sub nsw i32 %172, 134217728
  store i32 %sub263, i32* %m262, align 4, !tbaa !105
  br label %if.end.264

if.end.264:                                       ; preds = %if.then.257, %lor.lhs.false.250
  %173 = load %struct.error_val_field*, %struct.error_val_field** %error_values.addr, align 8, !tbaa !1
  %m265 = getelementptr inbounds %struct.error_val_field, %struct.error_val_field* %173, i32 0, i32 1
  %174 = load i32, i32* %m265, align 4, !tbaa !105
  %mul266 = mul nsw i32 %174, 3
  %add267 = add nsw i32 %mul266, 8
  %shr268 = ashr i32 %add267, 4
  %175 = load i32*, i32** %ep.addr, align 8, !tbaa !1
  %176 = load i32, i32* %n.addr, align 4, !tbaa !23
  %sub269 = sub nsw i32 %176, 2
  %177 = load i32, i32* %n.addr, align 4, !tbaa !23
  %add270 = add nsw i32 %sub269, %177
  %idx.ext271 = sext i32 %add270 to i64
  %add.ptr272 = getelementptr inbounds i32, i32* %175, i64 %idx.ext271
  %178 = load i32, i32* %add.ptr272, align 4, !tbaa !23
  %add273 = add nsw i32 %178, %shr268
  store i32 %add273, i32* %add.ptr272, align 4, !tbaa !23
  %179 = load %struct.error_val_field*, %struct.error_val_field** %error_values.addr, align 8, !tbaa !1
  %m274 = getelementptr inbounds %struct.error_val_field, %struct.error_val_field* %179, i32 0, i32 1
  %180 = load i32, i32* %m274, align 4, !tbaa !105
  %mul275 = mul nsw i32 %180, 5
  %181 = load i32, i32* %oldErr164, align 4, !tbaa !23
  %add276 = add nsw i32 %mul275, %181
  %add277 = add nsw i32 %add276, 8
  %shr278 = ashr i32 %add277, 4
  %182 = load i32*, i32** %ep.addr, align 8, !tbaa !1
  %183 = load i32, i32* %n.addr, align 4, !tbaa !23
  %idx.ext279 = sext i32 %183 to i64
  %add.ptr280 = getelementptr inbounds i32, i32* %182, i64 %idx.ext279
  %add.ptr281 = getelementptr inbounds i32, i32* %add.ptr280, i64 -2
  store i32 %shr278, i32* %add.ptr281, align 4, !tbaa !23
  %184 = load %struct.error_val_field*, %struct.error_val_field** %error_values.addr, align 8, !tbaa !1
  %c282 = getelementptr inbounds %struct.error_val_field, %struct.error_val_field* %184, i32 0, i32 0
  %185 = load i32, i32* %c282, align 4, !tbaa !106
  store i32 %185, i32* %oldErr164, align 4, !tbaa !23
  %186 = load i32*, i32** %ep.addr, align 8, !tbaa !1
  %187 = load i32, i32* %n.addr, align 4, !tbaa !23
  %idx.ext283 = sext i32 %187 to i64
  %add.ptr284 = getelementptr inbounds i32, i32* %186, i64 %idx.ext283
  %add.ptr285 = getelementptr inbounds i32, i32* %add.ptr284, i64 -3
  %188 = load i32, i32* %add.ptr285, align 4, !tbaa !23
  %189 = load %struct.error_val_field*, %struct.error_val_field** %error_values.addr, align 8, !tbaa !1
  %c286 = getelementptr inbounds %struct.error_val_field, %struct.error_val_field* %189, i32 0, i32 0
  %190 = load i32, i32* %c286, align 4, !tbaa !106
  %mul287 = mul nsw i32 %190, 7
  %add288 = add nsw i32 %mul287, 8
  %shr289 = ashr i32 %add288, 4
  %add290 = add nsw i32 %188, %shr289
  %191 = load i8*, i8** %dp.addr, align 8, !tbaa !1
  %192 = load i32, i32* %n.addr, align 4, !tbaa !23
  %idx.ext291 = sext i32 %192 to i64
  %add.ptr292 = getelementptr inbounds i8, i8* %191, i64 %idx.ext291
  %add.ptr293 = getelementptr inbounds i8, i8* %add.ptr292, i64 -3
  %193 = load i8, i8* %add.ptr293, align 1, !tbaa !24
  %conv294 = zext i8 %193 to i32
  %shl295 = shl i32 %conv294, 19
  %add296 = add nsw i32 %add290, %shl295
  %194 = load %struct.error_val_field*, %struct.error_val_field** %error_values.addr, align 8, !tbaa !1
  %c297 = getelementptr inbounds %struct.error_val_field, %struct.error_val_field* %194, i32 0, i32 0
  store i32 %add296, i32* %c297, align 4, !tbaa !106
  %195 = load %struct.error_val_field*, %struct.error_val_field** %error_values.addr, align 8, !tbaa !1
  %c298 = getelementptr inbounds %struct.error_val_field, %struct.error_val_field* %195, i32 0, i32 0
  %196 = load i32, i32* %c298, align 4, !tbaa !106
  %cmp299 = icmp sgt i32 %196, 67108864
  br i1 %cmp299, label %if.then.308, label %lor.lhs.false.301

lor.lhs.false.301:                                ; preds = %if.end.264
  %197 = load i8*, i8** %dp.addr, align 8, !tbaa !1
  %198 = load i32, i32* %n.addr, align 4, !tbaa !23
  %idx.ext302 = sext i32 %198 to i64
  %add.ptr303 = getelementptr inbounds i8, i8* %197, i64 %idx.ext302
  %add.ptr304 = getelementptr inbounds i8, i8* %add.ptr303, i64 -3
  %199 = load i8, i8* %add.ptr304, align 1, !tbaa !24
  %conv305 = zext i8 %199 to i32
  %cmp306 = icmp eq i32 %conv305, 255
  br i1 %cmp306, label %if.then.308, label %if.end.315

if.then.308:                                      ; preds = %lor.lhs.false.301, %if.end.264
  %200 = load i8, i8* %bitmask163, align 1, !tbaa !24
  %conv309 = zext i8 %200 to i32
  %201 = load i8, i8* %ca160, align 1, !tbaa !24
  %conv310 = zext i8 %201 to i32
  %or311 = or i32 %conv310, %conv309
  %conv312 = trunc i32 %or311 to i8
  store i8 %conv312, i8* %ca160, align 1, !tbaa !24
  %202 = load %struct.error_val_field*, %struct.error_val_field** %error_values.addr, align 8, !tbaa !1
  %c313 = getelementptr inbounds %struct.error_val_field, %struct.error_val_field* %202, i32 0, i32 0
  %203 = load i32, i32* %c313, align 4, !tbaa !106
  %sub314 = sub nsw i32 %203, 134217728
  store i32 %sub314, i32* %c313, align 4, !tbaa !106
  br label %if.end.315

if.end.315:                                       ; preds = %if.then.308, %lor.lhs.false.301
  %204 = load %struct.error_val_field*, %struct.error_val_field** %error_values.addr, align 8, !tbaa !1
  %c316 = getelementptr inbounds %struct.error_val_field, %struct.error_val_field* %204, i32 0, i32 0
  %205 = load i32, i32* %c316, align 4, !tbaa !106
  %mul317 = mul nsw i32 %205, 3
  %add318 = add nsw i32 %mul317, 8
  %shr319 = ashr i32 %add318, 4
  %206 = load i32*, i32** %ep.addr, align 8, !tbaa !1
  %207 = load i32, i32* %n.addr, align 4, !tbaa !23
  %sub320 = sub nsw i32 %207, 3
  %208 = load i32, i32* %n.addr, align 4, !tbaa !23
  %add321 = add nsw i32 %sub320, %208
  %idx.ext322 = sext i32 %add321 to i64
  %add.ptr323 = getelementptr inbounds i32, i32* %206, i64 %idx.ext322
  %209 = load i32, i32* %add.ptr323, align 4, !tbaa !23
  %add324 = add nsw i32 %209, %shr319
  store i32 %add324, i32* %add.ptr323, align 4, !tbaa !23
  %210 = load %struct.error_val_field*, %struct.error_val_field** %error_values.addr, align 8, !tbaa !1
  %c325 = getelementptr inbounds %struct.error_val_field, %struct.error_val_field* %210, i32 0, i32 0
  %211 = load i32, i32* %c325, align 4, !tbaa !106
  %mul326 = mul nsw i32 %211, 5
  %212 = load i32, i32* %oldErr164, align 4, !tbaa !23
  %add327 = add nsw i32 %mul326, %212
  %add328 = add nsw i32 %add327, 8
  %shr329 = ashr i32 %add328, 4
  %213 = load i32*, i32** %ep.addr, align 8, !tbaa !1
  %214 = load i32, i32* %n.addr, align 4, !tbaa !23
  %idx.ext330 = sext i32 %214 to i64
  %add.ptr331 = getelementptr inbounds i32, i32* %213, i64 %idx.ext330
  %add.ptr332 = getelementptr inbounds i32, i32* %add.ptr331, i64 -3
  store i32 %shr329, i32* %add.ptr332, align 4, !tbaa !23
  br label %for.inc.333

for.inc.333:                                      ; preds = %if.end.315
  %215 = load i8, i8* %bitmask163, align 1, !tbaa !24
  %conv334 = zext i8 %215 to i32
  %shl335 = shl i32 %conv334, 1
  %conv336 = trunc i32 %shl335 to i8
  store i8 %conv336, i8* %bitmask163, align 1, !tbaa !24
  br label %for.cond.170

for.end.337:                                      ; preds = %for.cond.170
  %216 = load i8, i8* %ya161, align 1, !tbaa !24
  %217 = load i8*, i8** %yPa.addr, align 8, !tbaa !1
  %incdec.ptr338 = getelementptr inbounds i8, i8* %217, i32 -1
  store i8* %incdec.ptr338, i8** %yPa.addr, align 8, !tbaa !1
  store i8 %216, i8* %incdec.ptr338, align 1, !tbaa !24
  %218 = load i8, i8* %ma162, align 1, !tbaa !24
  %219 = load i8*, i8** %mPa.addr, align 8, !tbaa !1
  %incdec.ptr339 = getelementptr inbounds i8, i8* %219, i32 -1
  store i8* %incdec.ptr339, i8** %mPa.addr, align 8, !tbaa !1
  store i8 %218, i8* %incdec.ptr339, align 1, !tbaa !24
  %220 = load i8, i8* %ca160, align 1, !tbaa !24
  %221 = load i8*, i8** %cPa.addr, align 8, !tbaa !1
  %incdec.ptr340 = getelementptr inbounds i8, i8* %221, i32 -1
  store i8* %incdec.ptr340, i8** %cPa.addr, align 8, !tbaa !1
  store i8 %220, i8* %incdec.ptr340, align 1, !tbaa !24
  br label %for.inc.341

for.inc.341:                                      ; preds = %for.end.337
  %222 = load i32, i32* %i165, align 4, !tbaa !23
  %inc342 = add nsw i32 %222, 1
  store i32 %inc342, i32* %i165, align 4, !tbaa !23
  br label %for.cond.166

for.end.343:                                      ; preds = %for.cond.166
  %223 = bitcast i32* %i165 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %223) #2
  %224 = bitcast i32* %oldErr164 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %224) #2
  call void @llvm.lifetime.end(i64 1, i8* %bitmask163) #2
  call void @llvm.lifetime.end(i64 1, i8* %ma162) #2
  call void @llvm.lifetime.end(i64 1, i8* %ya161) #2
  call void @llvm.lifetime.end(i64 1, i8* %ca160) #2
  br label %if.end.344

if.end.344:                                       ; preds = %for.end.343, %for.end.159
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @FSDlinec3(i32 %scan, i32 %plane_size, %struct.error_val_field* %error_values, i8* %cPa, i8* %mPa, i8* %yPa, i8* %cPb, i8* %mPb, i8* %yPb, i32 %n, i8* %dp, i32* %ep) #1 {
entry:
  %scan.addr = alloca i32, align 4
  %plane_size.addr = alloca i32, align 4
  %error_values.addr = alloca %struct.error_val_field*, align 8
  %cPa.addr = alloca i8*, align 8
  %mPa.addr = alloca i8*, align 8
  %yPa.addr = alloca i8*, align 8
  %cPb.addr = alloca i8*, align 8
  %mPb.addr = alloca i8*, align 8
  %yPb.addr = alloca i8*, align 8
  %n.addr = alloca i32, align 4
  %dp.addr = alloca i8*, align 8
  %ep.addr = alloca i32*, align 8
  %ca = alloca i8, align 1
  %ya = alloca i8, align 1
  %ma = alloca i8, align 1
  %cb = alloca i8, align 1
  %yb = alloca i8, align 1
  %mb = alloca i8, align 1
  %bitmask = alloca i8, align 1
  %oldErr = alloca i32, align 4
  %i = alloca i32, align 4
  %ca187 = alloca i8, align 1
  %ya188 = alloca i8, align 1
  %ma189 = alloca i8, align 1
  %cb190 = alloca i8, align 1
  %yb191 = alloca i8, align 1
  %mb192 = alloca i8, align 1
  %bitmask193 = alloca i8, align 1
  %oldErr194 = alloca i32, align 4
  %i195 = alloca i32, align 4
  store i32 %scan, i32* %scan.addr, align 4, !tbaa !23
  store i32 %plane_size, i32* %plane_size.addr, align 4, !tbaa !23
  store %struct.error_val_field* %error_values, %struct.error_val_field** %error_values.addr, align 8, !tbaa !1
  store i8* %cPa, i8** %cPa.addr, align 8, !tbaa !1
  store i8* %mPa, i8** %mPa.addr, align 8, !tbaa !1
  store i8* %yPa, i8** %yPa.addr, align 8, !tbaa !1
  store i8* %cPb, i8** %cPb.addr, align 8, !tbaa !1
  store i8* %mPb, i8** %mPb.addr, align 8, !tbaa !1
  store i8* %yPb, i8** %yPb.addr, align 8, !tbaa !1
  store i32 %n, i32* %n.addr, align 4, !tbaa !23
  store i8* %dp, i8** %dp.addr, align 8, !tbaa !1
  store i32* %ep, i32** %ep.addr, align 8, !tbaa !1
  %0 = load i32, i32* %scan.addr, align 4, !tbaa !23
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start(i64 1, i8* %ca) #2
  call void @llvm.lifetime.start(i64 1, i8* %ya) #2
  call void @llvm.lifetime.start(i64 1, i8* %ma) #2
  call void @llvm.lifetime.start(i64 1, i8* %cb) #2
  call void @llvm.lifetime.start(i64 1, i8* %yb) #2
  call void @llvm.lifetime.start(i64 1, i8* %mb) #2
  call void @llvm.lifetime.start(i64 1, i8* %bitmask) #2
  %1 = bitcast i32* %oldErr to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  store i32 0, i32* %i, align 4, !tbaa !23
  br label %for.cond

for.cond:                                         ; preds = %for.inc.185, %if.then
  %3 = load i32, i32* %i, align 4, !tbaa !23
  %4 = load i32, i32* %plane_size.addr, align 4, !tbaa !23
  %cmp1 = icmp slt i32 %3, %4
  br i1 %cmp1, label %for.body, label %for.end.186

for.body:                                         ; preds = %for.cond
  store i8 -128, i8* %bitmask, align 1, !tbaa !24
  store i8 0, i8* %mb, align 1, !tbaa !24
  store i8 0, i8* %yb, align 1, !tbaa !24
  store i8 0, i8* %cb, align 1, !tbaa !24
  store i8 0, i8* %ma, align 1, !tbaa !24
  store i8 0, i8* %ya, align 1, !tbaa !24
  store i8 0, i8* %ca, align 1, !tbaa !24
  store i8 0, i8* %ca, align 1, !tbaa !24
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc, %for.body
  %5 = load i8, i8* %bitmask, align 1, !tbaa !24
  %conv = zext i8 %5 to i32
  %cmp3 = icmp ne i32 %conv, 0
  br i1 %cmp3, label %for.body.5, label %for.end

for.body.5:                                       ; preds = %for.cond.2
  %6 = load %struct.error_val_field*, %struct.error_val_field** %error_values.addr, align 8, !tbaa !1
  %c = getelementptr inbounds %struct.error_val_field, %struct.error_val_field* %6, i32 0, i32 0
  %7 = load i32, i32* %c, align 4, !tbaa !106
  store i32 %7, i32* %oldErr, align 4, !tbaa !23
  %8 = load i32*, i32** %ep.addr, align 8, !tbaa !1
  %9 = load i32, i32* %n.addr, align 4, !tbaa !23
  %idx.ext = sext i32 %9 to i64
  %add.ptr = getelementptr inbounds i32, i32* %8, i64 %idx.ext
  %add.ptr6 = getelementptr inbounds i32, i32* %add.ptr, i64 -3
  %10 = load i32, i32* %add.ptr6, align 4, !tbaa !23
  %11 = load %struct.error_val_field*, %struct.error_val_field** %error_values.addr, align 8, !tbaa !1
  %c7 = getelementptr inbounds %struct.error_val_field, %struct.error_val_field* %11, i32 0, i32 0
  %12 = load i32, i32* %c7, align 4, !tbaa !106
  %mul = mul nsw i32 %12, 7
  %add = add nsw i32 %mul, 8
  %shr = ashr i32 %add, 4
  %add8 = add nsw i32 %10, %shr
  %13 = load i8*, i8** %dp.addr, align 8, !tbaa !1
  %14 = load i32, i32* %n.addr, align 4, !tbaa !23
  %idx.ext9 = sext i32 %14 to i64
  %add.ptr10 = getelementptr inbounds i8, i8* %13, i64 %idx.ext9
  %add.ptr11 = getelementptr inbounds i8, i8* %add.ptr10, i64 -3
  %15 = load i8, i8* %add.ptr11, align 1, !tbaa !24
  %conv12 = zext i8 %15 to i32
  %shl = shl i32 %conv12, 19
  %add13 = add nsw i32 %add8, %shl
  %16 = load %struct.error_val_field*, %struct.error_val_field** %error_values.addr, align 8, !tbaa !1
  %c14 = getelementptr inbounds %struct.error_val_field, %struct.error_val_field* %16, i32 0, i32 0
  store i32 %add13, i32* %c14, align 4, !tbaa !106
  %17 = load %struct.error_val_field*, %struct.error_val_field** %error_values.addr, align 8, !tbaa !1
  %c15 = getelementptr inbounds %struct.error_val_field, %struct.error_val_field* %17, i32 0, i32 0
  %18 = load i32, i32* %c15, align 4, !tbaa !106
  %cmp16 = icmp sgt i32 %18, 33554432
  br i1 %cmp16, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body.5
  %19 = load %struct.error_val_field*, %struct.error_val_field** %error_values.addr, align 8, !tbaa !1
  %c18 = getelementptr inbounds %struct.error_val_field, %struct.error_val_field* %19, i32 0, i32 0
  %20 = load i32, i32* %c18, align 4, !tbaa !106
  %cmp19 = icmp sle i32 %20, 67108864
  br i1 %cmp19, label %if.then.21, label %if.end

if.then.21:                                       ; preds = %land.lhs.true
  %21 = load i8, i8* %bitmask, align 1, !tbaa !24
  %conv22 = zext i8 %21 to i32
  %22 = load i8, i8* %ca, align 1, !tbaa !24
  %conv23 = zext i8 %22 to i32
  %or = or i32 %conv23, %conv22
  %conv24 = trunc i32 %or to i8
  store i8 %conv24, i8* %ca, align 1, !tbaa !24
  %23 = load %struct.error_val_field*, %struct.error_val_field** %error_values.addr, align 8, !tbaa !1
  %c25 = getelementptr inbounds %struct.error_val_field, %struct.error_val_field* %23, i32 0, i32 0
  %24 = load i32, i32* %c25, align 4, !tbaa !106
  %sub = sub nsw i32 %24, 67108864
  store i32 %sub, i32* %c25, align 4, !tbaa !106
  br label %if.end

if.end:                                           ; preds = %if.then.21, %land.lhs.true, %for.body.5
  %25 = load %struct.error_val_field*, %struct.error_val_field** %error_values.addr, align 8, !tbaa !1
  %c26 = getelementptr inbounds %struct.error_val_field, %struct.error_val_field* %25, i32 0, i32 0
  %26 = load i32, i32* %c26, align 4, !tbaa !106
  %cmp27 = icmp sgt i32 %26, 67108864
  br i1 %cmp27, label %if.then.29, label %if.end.36

if.then.29:                                       ; preds = %if.end
  %27 = load i8, i8* %bitmask, align 1, !tbaa !24
  %conv30 = zext i8 %27 to i32
  %28 = load i8, i8* %cb, align 1, !tbaa !24
  %conv31 = zext i8 %28 to i32
  %or32 = or i32 %conv31, %conv30
  %conv33 = trunc i32 %or32 to i8
  store i8 %conv33, i8* %cb, align 1, !tbaa !24
  %29 = load %struct.error_val_field*, %struct.error_val_field** %error_values.addr, align 8, !tbaa !1
  %c34 = getelementptr inbounds %struct.error_val_field, %struct.error_val_field* %29, i32 0, i32 0
  %30 = load i32, i32* %c34, align 4, !tbaa !106
  %sub35 = sub nsw i32 %30, 100663296
  store i32 %sub35, i32* %c34, align 4, !tbaa !106
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.29, %if.end
  %31 = load %struct.error_val_field*, %struct.error_val_field** %error_values.addr, align 8, !tbaa !1
  %c37 = getelementptr inbounds %struct.error_val_field, %struct.error_val_field* %31, i32 0, i32 0
  %32 = load i32, i32* %c37, align 4, !tbaa !106
  %mul38 = mul nsw i32 %32, 3
  %add39 = add nsw i32 %mul38, 8
  %shr40 = ashr i32 %add39, 4
  %33 = load i32*, i32** %ep.addr, align 8, !tbaa !1
  %34 = load i32, i32* %n.addr, align 4, !tbaa !23
  %sub41 = sub nsw i32 %34, 3
  %35 = load i32, i32* %n.addr, align 4, !tbaa !23
  %sub42 = sub nsw i32 0, %35
  %add43 = add nsw i32 %sub41, %sub42
  %idx.ext44 = sext i32 %add43 to i64
  %add.ptr45 = getelementptr inbounds i32, i32* %33, i64 %idx.ext44
  %36 = load i32, i32* %add.ptr45, align 4, !tbaa !23
  %add46 = add nsw i32 %36, %shr40
  store i32 %add46, i32* %add.ptr45, align 4, !tbaa !23
  %37 = load %struct.error_val_field*, %struct.error_val_field** %error_values.addr, align 8, !tbaa !1
  %c47 = getelementptr inbounds %struct.error_val_field, %struct.error_val_field* %37, i32 0, i32 0
  %38 = load i32, i32* %c47, align 4, !tbaa !106
  %mul48 = mul nsw i32 %38, 5
  %39 = load i32, i32* %oldErr, align 4, !tbaa !23
  %add49 = add nsw i32 %mul48, %39
  %add50 = add nsw i32 %add49, 8
  %shr51 = ashr i32 %add50, 4
  %40 = load i32*, i32** %ep.addr, align 8, !tbaa !1
  %41 = load i32, i32* %n.addr, align 4, !tbaa !23
  %idx.ext52 = sext i32 %41 to i64
  %add.ptr53 = getelementptr inbounds i32, i32* %40, i64 %idx.ext52
  %add.ptr54 = getelementptr inbounds i32, i32* %add.ptr53, i64 -3
  store i32 %shr51, i32* %add.ptr54, align 4, !tbaa !23
  %42 = load %struct.error_val_field*, %struct.error_val_field** %error_values.addr, align 8, !tbaa !1
  %m = getelementptr inbounds %struct.error_val_field, %struct.error_val_field* %42, i32 0, i32 1
  %43 = load i32, i32* %m, align 4, !tbaa !105
  store i32 %43, i32* %oldErr, align 4, !tbaa !23
  %44 = load i32*, i32** %ep.addr, align 8, !tbaa !1
  %45 = load i32, i32* %n.addr, align 4, !tbaa !23
  %idx.ext55 = sext i32 %45 to i64
  %add.ptr56 = getelementptr inbounds i32, i32* %44, i64 %idx.ext55
  %add.ptr57 = getelementptr inbounds i32, i32* %add.ptr56, i64 -2
  %46 = load i32, i32* %add.ptr57, align 4, !tbaa !23
  %47 = load %struct.error_val_field*, %struct.error_val_field** %error_values.addr, align 8, !tbaa !1
  %m58 = getelementptr inbounds %struct.error_val_field, %struct.error_val_field* %47, i32 0, i32 1
  %48 = load i32, i32* %m58, align 4, !tbaa !105
  %mul59 = mul nsw i32 %48, 7
  %add60 = add nsw i32 %mul59, 8
  %shr61 = ashr i32 %add60, 4
  %add62 = add nsw i32 %46, %shr61
  %49 = load i8*, i8** %dp.addr, align 8, !tbaa !1
  %50 = load i32, i32* %n.addr, align 4, !tbaa !23
  %idx.ext63 = sext i32 %50 to i64
  %add.ptr64 = getelementptr inbounds i8, i8* %49, i64 %idx.ext63
  %add.ptr65 = getelementptr inbounds i8, i8* %add.ptr64, i64 -2
  %51 = load i8, i8* %add.ptr65, align 1, !tbaa !24
  %conv66 = zext i8 %51 to i32
  %shl67 = shl i32 %conv66, 19
  %add68 = add nsw i32 %add62, %shl67
  %52 = load %struct.error_val_field*, %struct.error_val_field** %error_values.addr, align 8, !tbaa !1
  %m69 = getelementptr inbounds %struct.error_val_field, %struct.error_val_field* %52, i32 0, i32 1
  store i32 %add68, i32* %m69, align 4, !tbaa !105
  %53 = load %struct.error_val_field*, %struct.error_val_field** %error_values.addr, align 8, !tbaa !1
  %m70 = getelementptr inbounds %struct.error_val_field, %struct.error_val_field* %53, i32 0, i32 1
  %54 = load i32, i32* %m70, align 4, !tbaa !105
  %cmp71 = icmp sgt i32 %54, 33554432
  br i1 %cmp71, label %land.lhs.true.73, label %if.end.84

land.lhs.true.73:                                 ; preds = %if.end.36
  %55 = load %struct.error_val_field*, %struct.error_val_field** %error_values.addr, align 8, !tbaa !1
  %m74 = getelementptr inbounds %struct.error_val_field, %struct.error_val_field* %55, i32 0, i32 1
  %56 = load i32, i32* %m74, align 4, !tbaa !105
  %cmp75 = icmp sle i32 %56, 67108864
  br i1 %cmp75, label %if.then.77, label %if.end.84

if.then.77:                                       ; preds = %land.lhs.true.73
  %57 = load i8, i8* %bitmask, align 1, !tbaa !24
  %conv78 = zext i8 %57 to i32
  %58 = load i8, i8* %ma, align 1, !tbaa !24
  %conv79 = zext i8 %58 to i32
  %or80 = or i32 %conv79, %conv78
  %conv81 = trunc i32 %or80 to i8
  store i8 %conv81, i8* %ma, align 1, !tbaa !24
  %59 = load %struct.error_val_field*, %struct.error_val_field** %error_values.addr, align 8, !tbaa !1
  %m82 = getelementptr inbounds %struct.error_val_field, %struct.error_val_field* %59, i32 0, i32 1
  %60 = load i32, i32* %m82, align 4, !tbaa !105
  %sub83 = sub nsw i32 %60, 67108864
  store i32 %sub83, i32* %m82, align 4, !tbaa !105
  br label %if.end.84

if.end.84:                                        ; preds = %if.then.77, %land.lhs.true.73, %if.end.36
  %61 = load %struct.error_val_field*, %struct.error_val_field** %error_values.addr, align 8, !tbaa !1
  %m85 = getelementptr inbounds %struct.error_val_field, %struct.error_val_field* %61, i32 0, i32 1
  %62 = load i32, i32* %m85, align 4, !tbaa !105
  %cmp86 = icmp sgt i32 %62, 67108864
  br i1 %cmp86, label %if.then.88, label %if.end.95

if.then.88:                                       ; preds = %if.end.84
  %63 = load i8, i8* %bitmask, align 1, !tbaa !24
  %conv89 = zext i8 %63 to i32
  %64 = load i8, i8* %mb, align 1, !tbaa !24
  %conv90 = zext i8 %64 to i32
  %or91 = or i32 %conv90, %conv89
  %conv92 = trunc i32 %or91 to i8
  store i8 %conv92, i8* %mb, align 1, !tbaa !24
  %65 = load %struct.error_val_field*, %struct.error_val_field** %error_values.addr, align 8, !tbaa !1
  %m93 = getelementptr inbounds %struct.error_val_field, %struct.error_val_field* %65, i32 0, i32 1
  %66 = load i32, i32* %m93, align 4, !tbaa !105
  %sub94 = sub nsw i32 %66, 100663296
  store i32 %sub94, i32* %m93, align 4, !tbaa !105
  br label %if.end.95

if.end.95:                                        ; preds = %if.then.88, %if.end.84
  %67 = load %struct.error_val_field*, %struct.error_val_field** %error_values.addr, align 8, !tbaa !1
  %m96 = getelementptr inbounds %struct.error_val_field, %struct.error_val_field* %67, i32 0, i32 1
  %68 = load i32, i32* %m96, align 4, !tbaa !105
  %mul97 = mul nsw i32 %68, 3
  %add98 = add nsw i32 %mul97, 8
  %shr99 = ashr i32 %add98, 4
  %69 = load i32*, i32** %ep.addr, align 8, !tbaa !1
  %70 = load i32, i32* %n.addr, align 4, !tbaa !23
  %sub100 = sub nsw i32 %70, 2
  %71 = load i32, i32* %n.addr, align 4, !tbaa !23
  %sub101 = sub nsw i32 0, %71
  %add102 = add nsw i32 %sub100, %sub101
  %idx.ext103 = sext i32 %add102 to i64
  %add.ptr104 = getelementptr inbounds i32, i32* %69, i64 %idx.ext103
  %72 = load i32, i32* %add.ptr104, align 4, !tbaa !23
  %add105 = add nsw i32 %72, %shr99
  store i32 %add105, i32* %add.ptr104, align 4, !tbaa !23
  %73 = load %struct.error_val_field*, %struct.error_val_field** %error_values.addr, align 8, !tbaa !1
  %m106 = getelementptr inbounds %struct.error_val_field, %struct.error_val_field* %73, i32 0, i32 1
  %74 = load i32, i32* %m106, align 4, !tbaa !105
  %mul107 = mul nsw i32 %74, 5
  %75 = load i32, i32* %oldErr, align 4, !tbaa !23
  %add108 = add nsw i32 %mul107, %75
  %add109 = add nsw i32 %add108, 8
  %shr110 = ashr i32 %add109, 4
  %76 = load i32*, i32** %ep.addr, align 8, !tbaa !1
  %77 = load i32, i32* %n.addr, align 4, !tbaa !23
  %idx.ext111 = sext i32 %77 to i64
  %add.ptr112 = getelementptr inbounds i32, i32* %76, i64 %idx.ext111
  %add.ptr113 = getelementptr inbounds i32, i32* %add.ptr112, i64 -2
  store i32 %shr110, i32* %add.ptr113, align 4, !tbaa !23
  %78 = load %struct.error_val_field*, %struct.error_val_field** %error_values.addr, align 8, !tbaa !1
  %y = getelementptr inbounds %struct.error_val_field, %struct.error_val_field* %78, i32 0, i32 2
  %79 = load i32, i32* %y, align 4, !tbaa !104
  store i32 %79, i32* %oldErr, align 4, !tbaa !23
  %80 = load i32*, i32** %ep.addr, align 8, !tbaa !1
  %81 = load i32, i32* %n.addr, align 4, !tbaa !23
  %idx.ext114 = sext i32 %81 to i64
  %add.ptr115 = getelementptr inbounds i32, i32* %80, i64 %idx.ext114
  %add.ptr116 = getelementptr inbounds i32, i32* %add.ptr115, i64 -1
  %82 = load i32, i32* %add.ptr116, align 4, !tbaa !23
  %83 = load %struct.error_val_field*, %struct.error_val_field** %error_values.addr, align 8, !tbaa !1
  %y117 = getelementptr inbounds %struct.error_val_field, %struct.error_val_field* %83, i32 0, i32 2
  %84 = load i32, i32* %y117, align 4, !tbaa !104
  %mul118 = mul nsw i32 %84, 7
  %add119 = add nsw i32 %mul118, 8
  %shr120 = ashr i32 %add119, 4
  %add121 = add nsw i32 %82, %shr120
  %85 = load i8*, i8** %dp.addr, align 8, !tbaa !1
  %86 = load i32, i32* %n.addr, align 4, !tbaa !23
  %idx.ext122 = sext i32 %86 to i64
  %add.ptr123 = getelementptr inbounds i8, i8* %85, i64 %idx.ext122
  %add.ptr124 = getelementptr inbounds i8, i8* %add.ptr123, i64 -1
  %87 = load i8, i8* %add.ptr124, align 1, !tbaa !24
  %conv125 = zext i8 %87 to i32
  %shl126 = shl i32 %conv125, 19
  %add127 = add nsw i32 %add121, %shl126
  %88 = load %struct.error_val_field*, %struct.error_val_field** %error_values.addr, align 8, !tbaa !1
  %y128 = getelementptr inbounds %struct.error_val_field, %struct.error_val_field* %88, i32 0, i32 2
  store i32 %add127, i32* %y128, align 4, !tbaa !104
  %89 = load %struct.error_val_field*, %struct.error_val_field** %error_values.addr, align 8, !tbaa !1
  %y129 = getelementptr inbounds %struct.error_val_field, %struct.error_val_field* %89, i32 0, i32 2
  %90 = load i32, i32* %y129, align 4, !tbaa !104
  %cmp130 = icmp sgt i32 %90, 33554432
  br i1 %cmp130, label %land.lhs.true.132, label %if.end.143

land.lhs.true.132:                                ; preds = %if.end.95
  %91 = load %struct.error_val_field*, %struct.error_val_field** %error_values.addr, align 8, !tbaa !1
  %y133 = getelementptr inbounds %struct.error_val_field, %struct.error_val_field* %91, i32 0, i32 2
  %92 = load i32, i32* %y133, align 4, !tbaa !104
  %cmp134 = icmp sle i32 %92, 67108864
  br i1 %cmp134, label %if.then.136, label %if.end.143

if.then.136:                                      ; preds = %land.lhs.true.132
  %93 = load i8, i8* %bitmask, align 1, !tbaa !24
  %conv137 = zext i8 %93 to i32
  %94 = load i8, i8* %ya, align 1, !tbaa !24
  %conv138 = zext i8 %94 to i32
  %or139 = or i32 %conv138, %conv137
  %conv140 = trunc i32 %or139 to i8
  store i8 %conv140, i8* %ya, align 1, !tbaa !24
  %95 = load %struct.error_val_field*, %struct.error_val_field** %error_values.addr, align 8, !tbaa !1
  %y141 = getelementptr inbounds %struct.error_val_field, %struct.error_val_field* %95, i32 0, i32 2
  %96 = load i32, i32* %y141, align 4, !tbaa !104
  %sub142 = sub nsw i32 %96, 67108864
  store i32 %sub142, i32* %y141, align 4, !tbaa !104
  br label %if.end.143

if.end.143:                                       ; preds = %if.then.136, %land.lhs.true.132, %if.end.95
  %97 = load %struct.error_val_field*, %struct.error_val_field** %error_values.addr, align 8, !tbaa !1
  %y144 = getelementptr inbounds %struct.error_val_field, %struct.error_val_field* %97, i32 0, i32 2
  %98 = load i32, i32* %y144, align 4, !tbaa !104
  %cmp145 = icmp sgt i32 %98, 67108864
  br i1 %cmp145, label %if.then.147, label %if.end.154

if.then.147:                                      ; preds = %if.end.143
  %99 = load i8, i8* %bitmask, align 1, !tbaa !24
  %conv148 = zext i8 %99 to i32
  %100 = load i8, i8* %yb, align 1, !tbaa !24
  %conv149 = zext i8 %100 to i32
  %or150 = or i32 %conv149, %conv148
  %conv151 = trunc i32 %or150 to i8
  store i8 %conv151, i8* %yb, align 1, !tbaa !24
  %101 = load %struct.error_val_field*, %struct.error_val_field** %error_values.addr, align 8, !tbaa !1
  %y152 = getelementptr inbounds %struct.error_val_field, %struct.error_val_field* %101, i32 0, i32 2
  %102 = load i32, i32* %y152, align 4, !tbaa !104
  %sub153 = sub nsw i32 %102, 100663296
  store i32 %sub153, i32* %y152, align 4, !tbaa !104
  br label %if.end.154

if.end.154:                                       ; preds = %if.then.147, %if.end.143
  %103 = load %struct.error_val_field*, %struct.error_val_field** %error_values.addr, align 8, !tbaa !1
  %y155 = getelementptr inbounds %struct.error_val_field, %struct.error_val_field* %103, i32 0, i32 2
  %104 = load i32, i32* %y155, align 4, !tbaa !104
  %mul156 = mul nsw i32 %104, 3
  %add157 = add nsw i32 %mul156, 8
  %shr158 = ashr i32 %add157, 4
  %105 = load i32*, i32** %ep.addr, align 8, !tbaa !1
  %106 = load i32, i32* %n.addr, align 4, !tbaa !23
  %sub159 = sub nsw i32 %106, 1
  %107 = load i32, i32* %n.addr, align 4, !tbaa !23
  %sub160 = sub nsw i32 0, %107
  %add161 = add nsw i32 %sub159, %sub160
  %idx.ext162 = sext i32 %add161 to i64
  %add.ptr163 = getelementptr inbounds i32, i32* %105, i64 %idx.ext162
  %108 = load i32, i32* %add.ptr163, align 4, !tbaa !23
  %add164 = add nsw i32 %108, %shr158
  store i32 %add164, i32* %add.ptr163, align 4, !tbaa !23
  %109 = load %struct.error_val_field*, %struct.error_val_field** %error_values.addr, align 8, !tbaa !1
  %y165 = getelementptr inbounds %struct.error_val_field, %struct.error_val_field* %109, i32 0, i32 2
  %110 = load i32, i32* %y165, align 4, !tbaa !104
  %mul166 = mul nsw i32 %110, 5
  %111 = load i32, i32* %oldErr, align 4, !tbaa !23
  %add167 = add nsw i32 %mul166, %111
  %add168 = add nsw i32 %add167, 8
  %shr169 = ashr i32 %add168, 4
  %112 = load i32*, i32** %ep.addr, align 8, !tbaa !1
  %113 = load i32, i32* %n.addr, align 4, !tbaa !23
  %idx.ext170 = sext i32 %113 to i64
  %add.ptr171 = getelementptr inbounds i32, i32* %112, i64 %idx.ext170
  %add.ptr172 = getelementptr inbounds i32, i32* %add.ptr171, i64 -1
  store i32 %shr169, i32* %add.ptr172, align 4, !tbaa !23
  %114 = load i32, i32* %n.addr, align 4, !tbaa !23
  %115 = load i8*, i8** %dp.addr, align 8, !tbaa !1
  %idx.ext173 = sext i32 %114 to i64
  %add.ptr174 = getelementptr inbounds i8, i8* %115, i64 %idx.ext173
  store i8* %add.ptr174, i8** %dp.addr, align 8, !tbaa !1
  %116 = load i32, i32* %n.addr, align 4, !tbaa !23
  %117 = load i32*, i32** %ep.addr, align 8, !tbaa !1
  %idx.ext175 = sext i32 %116 to i64
  %add.ptr176 = getelementptr inbounds i32, i32* %117, i64 %idx.ext175
  store i32* %add.ptr176, i32** %ep.addr, align 8, !tbaa !1
  br label %for.inc

for.inc:                                          ; preds = %if.end.154
  %118 = load i8, i8* %bitmask, align 1, !tbaa !24
  %conv177 = zext i8 %118 to i32
  %shr178 = ashr i32 %conv177, 1
  %conv179 = trunc i32 %shr178 to i8
  store i8 %conv179, i8* %bitmask, align 1, !tbaa !24
  br label %for.cond.2

for.end:                                          ; preds = %for.cond.2
  %119 = load i8, i8* %ca, align 1, !tbaa !24
  %120 = load i8*, i8** %cPa.addr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %120, i32 1
  store i8* %incdec.ptr, i8** %cPa.addr, align 8, !tbaa !1
  store i8 %119, i8* %120, align 1, !tbaa !24
  %121 = load i8, i8* %ma, align 1, !tbaa !24
  %122 = load i8*, i8** %mPa.addr, align 8, !tbaa !1
  %incdec.ptr180 = getelementptr inbounds i8, i8* %122, i32 1
  store i8* %incdec.ptr180, i8** %mPa.addr, align 8, !tbaa !1
  store i8 %121, i8* %122, align 1, !tbaa !24
  %123 = load i8, i8* %ya, align 1, !tbaa !24
  %124 = load i8*, i8** %yPa.addr, align 8, !tbaa !1
  %incdec.ptr181 = getelementptr inbounds i8, i8* %124, i32 1
  store i8* %incdec.ptr181, i8** %yPa.addr, align 8, !tbaa !1
  store i8 %123, i8* %124, align 1, !tbaa !24
  %125 = load i8, i8* %cb, align 1, !tbaa !24
  %126 = load i8*, i8** %cPb.addr, align 8, !tbaa !1
  %incdec.ptr182 = getelementptr inbounds i8, i8* %126, i32 1
  store i8* %incdec.ptr182, i8** %cPb.addr, align 8, !tbaa !1
  store i8 %125, i8* %126, align 1, !tbaa !24
  %127 = load i8, i8* %mb, align 1, !tbaa !24
  %128 = load i8*, i8** %mPb.addr, align 8, !tbaa !1
  %incdec.ptr183 = getelementptr inbounds i8, i8* %128, i32 1
  store i8* %incdec.ptr183, i8** %mPb.addr, align 8, !tbaa !1
  store i8 %127, i8* %128, align 1, !tbaa !24
  %129 = load i8, i8* %yb, align 1, !tbaa !24
  %130 = load i8*, i8** %yPb.addr, align 8, !tbaa !1
  %incdec.ptr184 = getelementptr inbounds i8, i8* %130, i32 1
  store i8* %incdec.ptr184, i8** %yPb.addr, align 8, !tbaa !1
  store i8 %129, i8* %130, align 1, !tbaa !24
  br label %for.inc.185

for.inc.185:                                      ; preds = %for.end
  %131 = load i32, i32* %i, align 4, !tbaa !23
  %inc = add nsw i32 %131, 1
  store i32 %inc, i32* %i, align 4, !tbaa !23
  br label %for.cond

for.end.186:                                      ; preds = %for.cond
  %132 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %132) #2
  %133 = bitcast i32* %oldErr to i8*
  call void @llvm.lifetime.end(i64 4, i8* %133) #2
  call void @llvm.lifetime.end(i64 1, i8* %bitmask) #2
  call void @llvm.lifetime.end(i64 1, i8* %mb) #2
  call void @llvm.lifetime.end(i64 1, i8* %yb) #2
  call void @llvm.lifetime.end(i64 1, i8* %cb) #2
  call void @llvm.lifetime.end(i64 1, i8* %ma) #2
  call void @llvm.lifetime.end(i64 1, i8* %ya) #2
  call void @llvm.lifetime.end(i64 1, i8* %ca) #2
  br label %if.end.401

if.else:                                          ; preds = %entry
  call void @llvm.lifetime.start(i64 1, i8* %ca187) #2
  call void @llvm.lifetime.start(i64 1, i8* %ya188) #2
  call void @llvm.lifetime.start(i64 1, i8* %ma189) #2
  call void @llvm.lifetime.start(i64 1, i8* %cb190) #2
  call void @llvm.lifetime.start(i64 1, i8* %yb191) #2
  call void @llvm.lifetime.start(i64 1, i8* %mb192) #2
  call void @llvm.lifetime.start(i64 1, i8* %bitmask193) #2
  %134 = bitcast i32* %oldErr194 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %134) #2
  %135 = bitcast i32* %i195 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %135) #2
  store i32 0, i32* %i195, align 4, !tbaa !23
  br label %for.cond.196

for.cond.196:                                     ; preds = %for.inc.398, %if.else
  %136 = load i32, i32* %i195, align 4, !tbaa !23
  %137 = load i32, i32* %plane_size.addr, align 4, !tbaa !23
  %cmp197 = icmp slt i32 %136, %137
  br i1 %cmp197, label %for.body.199, label %for.end.400

for.body.199:                                     ; preds = %for.cond.196
  store i8 1, i8* %bitmask193, align 1, !tbaa !24
  store i8 0, i8* %mb192, align 1, !tbaa !24
  store i8 0, i8* %yb191, align 1, !tbaa !24
  store i8 0, i8* %cb190, align 1, !tbaa !24
  store i8 0, i8* %ma189, align 1, !tbaa !24
  store i8 0, i8* %ya188, align 1, !tbaa !24
  store i8 0, i8* %ca187, align 1, !tbaa !24
  store i8 0, i8* %ca187, align 1, !tbaa !24
  br label %for.cond.200

for.cond.200:                                     ; preds = %for.inc.387, %for.body.199
  %138 = load i8, i8* %bitmask193, align 1, !tbaa !24
  %conv201 = zext i8 %138 to i32
  %cmp202 = icmp ne i32 %conv201, 0
  br i1 %cmp202, label %for.body.204, label %for.end.391

for.body.204:                                     ; preds = %for.cond.200
  %139 = load i32, i32* %n.addr, align 4, !tbaa !23
  %140 = load i8*, i8** %dp.addr, align 8, !tbaa !1
  %idx.ext205 = sext i32 %139 to i64
  %idx.neg = sub i64 0, %idx.ext205
  %add.ptr206 = getelementptr inbounds i8, i8* %140, i64 %idx.neg
  store i8* %add.ptr206, i8** %dp.addr, align 8, !tbaa !1
  %141 = load i32, i32* %n.addr, align 4, !tbaa !23
  %142 = load i32*, i32** %ep.addr, align 8, !tbaa !1
  %idx.ext207 = sext i32 %141 to i64
  %idx.neg208 = sub i64 0, %idx.ext207
  %add.ptr209 = getelementptr inbounds i32, i32* %142, i64 %idx.neg208
  store i32* %add.ptr209, i32** %ep.addr, align 8, !tbaa !1
  %143 = load %struct.error_val_field*, %struct.error_val_field** %error_values.addr, align 8, !tbaa !1
  %y210 = getelementptr inbounds %struct.error_val_field, %struct.error_val_field* %143, i32 0, i32 2
  %144 = load i32, i32* %y210, align 4, !tbaa !104
  store i32 %144, i32* %oldErr194, align 4, !tbaa !23
  %145 = load i32*, i32** %ep.addr, align 8, !tbaa !1
  %146 = load i32, i32* %n.addr, align 4, !tbaa !23
  %idx.ext211 = sext i32 %146 to i64
  %add.ptr212 = getelementptr inbounds i32, i32* %145, i64 %idx.ext211
  %add.ptr213 = getelementptr inbounds i32, i32* %add.ptr212, i64 -1
  %147 = load i32, i32* %add.ptr213, align 4, !tbaa !23
  %148 = load %struct.error_val_field*, %struct.error_val_field** %error_values.addr, align 8, !tbaa !1
  %y214 = getelementptr inbounds %struct.error_val_field, %struct.error_val_field* %148, i32 0, i32 2
  %149 = load i32, i32* %y214, align 4, !tbaa !104
  %mul215 = mul nsw i32 %149, 7
  %add216 = add nsw i32 %mul215, 8
  %shr217 = ashr i32 %add216, 4
  %add218 = add nsw i32 %147, %shr217
  %150 = load i8*, i8** %dp.addr, align 8, !tbaa !1
  %151 = load i32, i32* %n.addr, align 4, !tbaa !23
  %idx.ext219 = sext i32 %151 to i64
  %add.ptr220 = getelementptr inbounds i8, i8* %150, i64 %idx.ext219
  %add.ptr221 = getelementptr inbounds i8, i8* %add.ptr220, i64 -1
  %152 = load i8, i8* %add.ptr221, align 1, !tbaa !24
  %conv222 = zext i8 %152 to i32
  %shl223 = shl i32 %conv222, 19
  %add224 = add nsw i32 %add218, %shl223
  %153 = load %struct.error_val_field*, %struct.error_val_field** %error_values.addr, align 8, !tbaa !1
  %y225 = getelementptr inbounds %struct.error_val_field, %struct.error_val_field* %153, i32 0, i32 2
  store i32 %add224, i32* %y225, align 4, !tbaa !104
  %154 = load %struct.error_val_field*, %struct.error_val_field** %error_values.addr, align 8, !tbaa !1
  %y226 = getelementptr inbounds %struct.error_val_field, %struct.error_val_field* %154, i32 0, i32 2
  %155 = load i32, i32* %y226, align 4, !tbaa !104
  %cmp227 = icmp sgt i32 %155, 33554432
  br i1 %cmp227, label %land.lhs.true.229, label %if.end.240

land.lhs.true.229:                                ; preds = %for.body.204
  %156 = load %struct.error_val_field*, %struct.error_val_field** %error_values.addr, align 8, !tbaa !1
  %y230 = getelementptr inbounds %struct.error_val_field, %struct.error_val_field* %156, i32 0, i32 2
  %157 = load i32, i32* %y230, align 4, !tbaa !104
  %cmp231 = icmp sle i32 %157, 67108864
  br i1 %cmp231, label %if.then.233, label %if.end.240

if.then.233:                                      ; preds = %land.lhs.true.229
  %158 = load i8, i8* %bitmask193, align 1, !tbaa !24
  %conv234 = zext i8 %158 to i32
  %159 = load i8, i8* %ya188, align 1, !tbaa !24
  %conv235 = zext i8 %159 to i32
  %or236 = or i32 %conv235, %conv234
  %conv237 = trunc i32 %or236 to i8
  store i8 %conv237, i8* %ya188, align 1, !tbaa !24
  %160 = load %struct.error_val_field*, %struct.error_val_field** %error_values.addr, align 8, !tbaa !1
  %y238 = getelementptr inbounds %struct.error_val_field, %struct.error_val_field* %160, i32 0, i32 2
  %161 = load i32, i32* %y238, align 4, !tbaa !104
  %sub239 = sub nsw i32 %161, 67108864
  store i32 %sub239, i32* %y238, align 4, !tbaa !104
  br label %if.end.240

if.end.240:                                       ; preds = %if.then.233, %land.lhs.true.229, %for.body.204
  %162 = load %struct.error_val_field*, %struct.error_val_field** %error_values.addr, align 8, !tbaa !1
  %y241 = getelementptr inbounds %struct.error_val_field, %struct.error_val_field* %162, i32 0, i32 2
  %163 = load i32, i32* %y241, align 4, !tbaa !104
  %cmp242 = icmp sgt i32 %163, 67108864
  br i1 %cmp242, label %if.then.244, label %if.end.251

if.then.244:                                      ; preds = %if.end.240
  %164 = load i8, i8* %bitmask193, align 1, !tbaa !24
  %conv245 = zext i8 %164 to i32
  %165 = load i8, i8* %yb191, align 1, !tbaa !24
  %conv246 = zext i8 %165 to i32
  %or247 = or i32 %conv246, %conv245
  %conv248 = trunc i32 %or247 to i8
  store i8 %conv248, i8* %yb191, align 1, !tbaa !24
  %166 = load %struct.error_val_field*, %struct.error_val_field** %error_values.addr, align 8, !tbaa !1
  %y249 = getelementptr inbounds %struct.error_val_field, %struct.error_val_field* %166, i32 0, i32 2
  %167 = load i32, i32* %y249, align 4, !tbaa !104
  %sub250 = sub nsw i32 %167, 100663296
  store i32 %sub250, i32* %y249, align 4, !tbaa !104
  br label %if.end.251

if.end.251:                                       ; preds = %if.then.244, %if.end.240
  %168 = load %struct.error_val_field*, %struct.error_val_field** %error_values.addr, align 8, !tbaa !1
  %y252 = getelementptr inbounds %struct.error_val_field, %struct.error_val_field* %168, i32 0, i32 2
  %169 = load i32, i32* %y252, align 4, !tbaa !104
  %mul253 = mul nsw i32 %169, 3
  %add254 = add nsw i32 %mul253, 8
  %shr255 = ashr i32 %add254, 4
  %170 = load i32*, i32** %ep.addr, align 8, !tbaa !1
  %171 = load i32, i32* %n.addr, align 4, !tbaa !23
  %sub256 = sub nsw i32 %171, 1
  %172 = load i32, i32* %n.addr, align 4, !tbaa !23
  %add257 = add nsw i32 %sub256, %172
  %idx.ext258 = sext i32 %add257 to i64
  %add.ptr259 = getelementptr inbounds i32, i32* %170, i64 %idx.ext258
  %173 = load i32, i32* %add.ptr259, align 4, !tbaa !23
  %add260 = add nsw i32 %173, %shr255
  store i32 %add260, i32* %add.ptr259, align 4, !tbaa !23
  %174 = load %struct.error_val_field*, %struct.error_val_field** %error_values.addr, align 8, !tbaa !1
  %y261 = getelementptr inbounds %struct.error_val_field, %struct.error_val_field* %174, i32 0, i32 2
  %175 = load i32, i32* %y261, align 4, !tbaa !104
  %mul262 = mul nsw i32 %175, 5
  %176 = load i32, i32* %oldErr194, align 4, !tbaa !23
  %add263 = add nsw i32 %mul262, %176
  %add264 = add nsw i32 %add263, 8
  %shr265 = ashr i32 %add264, 4
  %177 = load i32*, i32** %ep.addr, align 8, !tbaa !1
  %178 = load i32, i32* %n.addr, align 4, !tbaa !23
  %idx.ext266 = sext i32 %178 to i64
  %add.ptr267 = getelementptr inbounds i32, i32* %177, i64 %idx.ext266
  %add.ptr268 = getelementptr inbounds i32, i32* %add.ptr267, i64 -1
  store i32 %shr265, i32* %add.ptr268, align 4, !tbaa !23
  %179 = load %struct.error_val_field*, %struct.error_val_field** %error_values.addr, align 8, !tbaa !1
  %m269 = getelementptr inbounds %struct.error_val_field, %struct.error_val_field* %179, i32 0, i32 1
  %180 = load i32, i32* %m269, align 4, !tbaa !105
  store i32 %180, i32* %oldErr194, align 4, !tbaa !23
  %181 = load i32*, i32** %ep.addr, align 8, !tbaa !1
  %182 = load i32, i32* %n.addr, align 4, !tbaa !23
  %idx.ext270 = sext i32 %182 to i64
  %add.ptr271 = getelementptr inbounds i32, i32* %181, i64 %idx.ext270
  %add.ptr272 = getelementptr inbounds i32, i32* %add.ptr271, i64 -2
  %183 = load i32, i32* %add.ptr272, align 4, !tbaa !23
  %184 = load %struct.error_val_field*, %struct.error_val_field** %error_values.addr, align 8, !tbaa !1
  %m273 = getelementptr inbounds %struct.error_val_field, %struct.error_val_field* %184, i32 0, i32 1
  %185 = load i32, i32* %m273, align 4, !tbaa !105
  %mul274 = mul nsw i32 %185, 7
  %add275 = add nsw i32 %mul274, 8
  %shr276 = ashr i32 %add275, 4
  %add277 = add nsw i32 %183, %shr276
  %186 = load i8*, i8** %dp.addr, align 8, !tbaa !1
  %187 = load i32, i32* %n.addr, align 4, !tbaa !23
  %idx.ext278 = sext i32 %187 to i64
  %add.ptr279 = getelementptr inbounds i8, i8* %186, i64 %idx.ext278
  %add.ptr280 = getelementptr inbounds i8, i8* %add.ptr279, i64 -2
  %188 = load i8, i8* %add.ptr280, align 1, !tbaa !24
  %conv281 = zext i8 %188 to i32
  %shl282 = shl i32 %conv281, 19
  %add283 = add nsw i32 %add277, %shl282
  %189 = load %struct.error_val_field*, %struct.error_val_field** %error_values.addr, align 8, !tbaa !1
  %m284 = getelementptr inbounds %struct.error_val_field, %struct.error_val_field* %189, i32 0, i32 1
  store i32 %add283, i32* %m284, align 4, !tbaa !105
  %190 = load %struct.error_val_field*, %struct.error_val_field** %error_values.addr, align 8, !tbaa !1
  %m285 = getelementptr inbounds %struct.error_val_field, %struct.error_val_field* %190, i32 0, i32 1
  %191 = load i32, i32* %m285, align 4, !tbaa !105
  %cmp286 = icmp sgt i32 %191, 33554432
  br i1 %cmp286, label %land.lhs.true.288, label %if.end.299

land.lhs.true.288:                                ; preds = %if.end.251
  %192 = load %struct.error_val_field*, %struct.error_val_field** %error_values.addr, align 8, !tbaa !1
  %m289 = getelementptr inbounds %struct.error_val_field, %struct.error_val_field* %192, i32 0, i32 1
  %193 = load i32, i32* %m289, align 4, !tbaa !105
  %cmp290 = icmp sle i32 %193, 67108864
  br i1 %cmp290, label %if.then.292, label %if.end.299

if.then.292:                                      ; preds = %land.lhs.true.288
  %194 = load i8, i8* %bitmask193, align 1, !tbaa !24
  %conv293 = zext i8 %194 to i32
  %195 = load i8, i8* %ma189, align 1, !tbaa !24
  %conv294 = zext i8 %195 to i32
  %or295 = or i32 %conv294, %conv293
  %conv296 = trunc i32 %or295 to i8
  store i8 %conv296, i8* %ma189, align 1, !tbaa !24
  %196 = load %struct.error_val_field*, %struct.error_val_field** %error_values.addr, align 8, !tbaa !1
  %m297 = getelementptr inbounds %struct.error_val_field, %struct.error_val_field* %196, i32 0, i32 1
  %197 = load i32, i32* %m297, align 4, !tbaa !105
  %sub298 = sub nsw i32 %197, 67108864
  store i32 %sub298, i32* %m297, align 4, !tbaa !105
  br label %if.end.299

if.end.299:                                       ; preds = %if.then.292, %land.lhs.true.288, %if.end.251
  %198 = load %struct.error_val_field*, %struct.error_val_field** %error_values.addr, align 8, !tbaa !1
  %m300 = getelementptr inbounds %struct.error_val_field, %struct.error_val_field* %198, i32 0, i32 1
  %199 = load i32, i32* %m300, align 4, !tbaa !105
  %cmp301 = icmp sgt i32 %199, 67108864
  br i1 %cmp301, label %if.then.303, label %if.end.310

if.then.303:                                      ; preds = %if.end.299
  %200 = load i8, i8* %bitmask193, align 1, !tbaa !24
  %conv304 = zext i8 %200 to i32
  %201 = load i8, i8* %mb192, align 1, !tbaa !24
  %conv305 = zext i8 %201 to i32
  %or306 = or i32 %conv305, %conv304
  %conv307 = trunc i32 %or306 to i8
  store i8 %conv307, i8* %mb192, align 1, !tbaa !24
  %202 = load %struct.error_val_field*, %struct.error_val_field** %error_values.addr, align 8, !tbaa !1
  %m308 = getelementptr inbounds %struct.error_val_field, %struct.error_val_field* %202, i32 0, i32 1
  %203 = load i32, i32* %m308, align 4, !tbaa !105
  %sub309 = sub nsw i32 %203, 100663296
  store i32 %sub309, i32* %m308, align 4, !tbaa !105
  br label %if.end.310

if.end.310:                                       ; preds = %if.then.303, %if.end.299
  %204 = load %struct.error_val_field*, %struct.error_val_field** %error_values.addr, align 8, !tbaa !1
  %m311 = getelementptr inbounds %struct.error_val_field, %struct.error_val_field* %204, i32 0, i32 1
  %205 = load i32, i32* %m311, align 4, !tbaa !105
  %mul312 = mul nsw i32 %205, 3
  %add313 = add nsw i32 %mul312, 8
  %shr314 = ashr i32 %add313, 4
  %206 = load i32*, i32** %ep.addr, align 8, !tbaa !1
  %207 = load i32, i32* %n.addr, align 4, !tbaa !23
  %sub315 = sub nsw i32 %207, 2
  %208 = load i32, i32* %n.addr, align 4, !tbaa !23
  %add316 = add nsw i32 %sub315, %208
  %idx.ext317 = sext i32 %add316 to i64
  %add.ptr318 = getelementptr inbounds i32, i32* %206, i64 %idx.ext317
  %209 = load i32, i32* %add.ptr318, align 4, !tbaa !23
  %add319 = add nsw i32 %209, %shr314
  store i32 %add319, i32* %add.ptr318, align 4, !tbaa !23
  %210 = load %struct.error_val_field*, %struct.error_val_field** %error_values.addr, align 8, !tbaa !1
  %m320 = getelementptr inbounds %struct.error_val_field, %struct.error_val_field* %210, i32 0, i32 1
  %211 = load i32, i32* %m320, align 4, !tbaa !105
  %mul321 = mul nsw i32 %211, 5
  %212 = load i32, i32* %oldErr194, align 4, !tbaa !23
  %add322 = add nsw i32 %mul321, %212
  %add323 = add nsw i32 %add322, 8
  %shr324 = ashr i32 %add323, 4
  %213 = load i32*, i32** %ep.addr, align 8, !tbaa !1
  %214 = load i32, i32* %n.addr, align 4, !tbaa !23
  %idx.ext325 = sext i32 %214 to i64
  %add.ptr326 = getelementptr inbounds i32, i32* %213, i64 %idx.ext325
  %add.ptr327 = getelementptr inbounds i32, i32* %add.ptr326, i64 -2
  store i32 %shr324, i32* %add.ptr327, align 4, !tbaa !23
  %215 = load %struct.error_val_field*, %struct.error_val_field** %error_values.addr, align 8, !tbaa !1
  %c328 = getelementptr inbounds %struct.error_val_field, %struct.error_val_field* %215, i32 0, i32 0
  %216 = load i32, i32* %c328, align 4, !tbaa !106
  store i32 %216, i32* %oldErr194, align 4, !tbaa !23
  %217 = load i32*, i32** %ep.addr, align 8, !tbaa !1
  %218 = load i32, i32* %n.addr, align 4, !tbaa !23
  %idx.ext329 = sext i32 %218 to i64
  %add.ptr330 = getelementptr inbounds i32, i32* %217, i64 %idx.ext329
  %add.ptr331 = getelementptr inbounds i32, i32* %add.ptr330, i64 -3
  %219 = load i32, i32* %add.ptr331, align 4, !tbaa !23
  %220 = load %struct.error_val_field*, %struct.error_val_field** %error_values.addr, align 8, !tbaa !1
  %c332 = getelementptr inbounds %struct.error_val_field, %struct.error_val_field* %220, i32 0, i32 0
  %221 = load i32, i32* %c332, align 4, !tbaa !106
  %mul333 = mul nsw i32 %221, 7
  %add334 = add nsw i32 %mul333, 8
  %shr335 = ashr i32 %add334, 4
  %add336 = add nsw i32 %219, %shr335
  %222 = load i8*, i8** %dp.addr, align 8, !tbaa !1
  %223 = load i32, i32* %n.addr, align 4, !tbaa !23
  %idx.ext337 = sext i32 %223 to i64
  %add.ptr338 = getelementptr inbounds i8, i8* %222, i64 %idx.ext337
  %add.ptr339 = getelementptr inbounds i8, i8* %add.ptr338, i64 -3
  %224 = load i8, i8* %add.ptr339, align 1, !tbaa !24
  %conv340 = zext i8 %224 to i32
  %shl341 = shl i32 %conv340, 19
  %add342 = add nsw i32 %add336, %shl341
  %225 = load %struct.error_val_field*, %struct.error_val_field** %error_values.addr, align 8, !tbaa !1
  %c343 = getelementptr inbounds %struct.error_val_field, %struct.error_val_field* %225, i32 0, i32 0
  store i32 %add342, i32* %c343, align 4, !tbaa !106
  %226 = load %struct.error_val_field*, %struct.error_val_field** %error_values.addr, align 8, !tbaa !1
  %c344 = getelementptr inbounds %struct.error_val_field, %struct.error_val_field* %226, i32 0, i32 0
  %227 = load i32, i32* %c344, align 4, !tbaa !106
  %cmp345 = icmp sgt i32 %227, 33554432
  br i1 %cmp345, label %land.lhs.true.347, label %if.end.358

land.lhs.true.347:                                ; preds = %if.end.310
  %228 = load %struct.error_val_field*, %struct.error_val_field** %error_values.addr, align 8, !tbaa !1
  %c348 = getelementptr inbounds %struct.error_val_field, %struct.error_val_field* %228, i32 0, i32 0
  %229 = load i32, i32* %c348, align 4, !tbaa !106
  %cmp349 = icmp sle i32 %229, 67108864
  br i1 %cmp349, label %if.then.351, label %if.end.358

if.then.351:                                      ; preds = %land.lhs.true.347
  %230 = load i8, i8* %bitmask193, align 1, !tbaa !24
  %conv352 = zext i8 %230 to i32
  %231 = load i8, i8* %ca187, align 1, !tbaa !24
  %conv353 = zext i8 %231 to i32
  %or354 = or i32 %conv353, %conv352
  %conv355 = trunc i32 %or354 to i8
  store i8 %conv355, i8* %ca187, align 1, !tbaa !24
  %232 = load %struct.error_val_field*, %struct.error_val_field** %error_values.addr, align 8, !tbaa !1
  %c356 = getelementptr inbounds %struct.error_val_field, %struct.error_val_field* %232, i32 0, i32 0
  %233 = load i32, i32* %c356, align 4, !tbaa !106
  %sub357 = sub nsw i32 %233, 67108864
  store i32 %sub357, i32* %c356, align 4, !tbaa !106
  br label %if.end.358

if.end.358:                                       ; preds = %if.then.351, %land.lhs.true.347, %if.end.310
  %234 = load %struct.error_val_field*, %struct.error_val_field** %error_values.addr, align 8, !tbaa !1
  %c359 = getelementptr inbounds %struct.error_val_field, %struct.error_val_field* %234, i32 0, i32 0
  %235 = load i32, i32* %c359, align 4, !tbaa !106
  %cmp360 = icmp sgt i32 %235, 67108864
  br i1 %cmp360, label %if.then.362, label %if.end.369

if.then.362:                                      ; preds = %if.end.358
  %236 = load i8, i8* %bitmask193, align 1, !tbaa !24
  %conv363 = zext i8 %236 to i32
  %237 = load i8, i8* %cb190, align 1, !tbaa !24
  %conv364 = zext i8 %237 to i32
  %or365 = or i32 %conv364, %conv363
  %conv366 = trunc i32 %or365 to i8
  store i8 %conv366, i8* %cb190, align 1, !tbaa !24
  %238 = load %struct.error_val_field*, %struct.error_val_field** %error_values.addr, align 8, !tbaa !1
  %c367 = getelementptr inbounds %struct.error_val_field, %struct.error_val_field* %238, i32 0, i32 0
  %239 = load i32, i32* %c367, align 4, !tbaa !106
  %sub368 = sub nsw i32 %239, 100663296
  store i32 %sub368, i32* %c367, align 4, !tbaa !106
  br label %if.end.369

if.end.369:                                       ; preds = %if.then.362, %if.end.358
  %240 = load %struct.error_val_field*, %struct.error_val_field** %error_values.addr, align 8, !tbaa !1
  %c370 = getelementptr inbounds %struct.error_val_field, %struct.error_val_field* %240, i32 0, i32 0
  %241 = load i32, i32* %c370, align 4, !tbaa !106
  %mul371 = mul nsw i32 %241, 3
  %add372 = add nsw i32 %mul371, 8
  %shr373 = ashr i32 %add372, 4
  %242 = load i32*, i32** %ep.addr, align 8, !tbaa !1
  %243 = load i32, i32* %n.addr, align 4, !tbaa !23
  %sub374 = sub nsw i32 %243, 3
  %244 = load i32, i32* %n.addr, align 4, !tbaa !23
  %add375 = add nsw i32 %sub374, %244
  %idx.ext376 = sext i32 %add375 to i64
  %add.ptr377 = getelementptr inbounds i32, i32* %242, i64 %idx.ext376
  %245 = load i32, i32* %add.ptr377, align 4, !tbaa !23
  %add378 = add nsw i32 %245, %shr373
  store i32 %add378, i32* %add.ptr377, align 4, !tbaa !23
  %246 = load %struct.error_val_field*, %struct.error_val_field** %error_values.addr, align 8, !tbaa !1
  %c379 = getelementptr inbounds %struct.error_val_field, %struct.error_val_field* %246, i32 0, i32 0
  %247 = load i32, i32* %c379, align 4, !tbaa !106
  %mul380 = mul nsw i32 %247, 5
  %248 = load i32, i32* %oldErr194, align 4, !tbaa !23
  %add381 = add nsw i32 %mul380, %248
  %add382 = add nsw i32 %add381, 8
  %shr383 = ashr i32 %add382, 4
  %249 = load i32*, i32** %ep.addr, align 8, !tbaa !1
  %250 = load i32, i32* %n.addr, align 4, !tbaa !23
  %idx.ext384 = sext i32 %250 to i64
  %add.ptr385 = getelementptr inbounds i32, i32* %249, i64 %idx.ext384
  %add.ptr386 = getelementptr inbounds i32, i32* %add.ptr385, i64 -3
  store i32 %shr383, i32* %add.ptr386, align 4, !tbaa !23
  br label %for.inc.387

for.inc.387:                                      ; preds = %if.end.369
  %251 = load i8, i8* %bitmask193, align 1, !tbaa !24
  %conv388 = zext i8 %251 to i32
  %shl389 = shl i32 %conv388, 1
  %conv390 = trunc i32 %shl389 to i8
  store i8 %conv390, i8* %bitmask193, align 1, !tbaa !24
  br label %for.cond.200

for.end.391:                                      ; preds = %for.cond.200
  %252 = load i8, i8* %ya188, align 1, !tbaa !24
  %253 = load i8*, i8** %yPa.addr, align 8, !tbaa !1
  %incdec.ptr392 = getelementptr inbounds i8, i8* %253, i32 -1
  store i8* %incdec.ptr392, i8** %yPa.addr, align 8, !tbaa !1
  store i8 %252, i8* %incdec.ptr392, align 1, !tbaa !24
  %254 = load i8, i8* %ma189, align 1, !tbaa !24
  %255 = load i8*, i8** %mPa.addr, align 8, !tbaa !1
  %incdec.ptr393 = getelementptr inbounds i8, i8* %255, i32 -1
  store i8* %incdec.ptr393, i8** %mPa.addr, align 8, !tbaa !1
  store i8 %254, i8* %incdec.ptr393, align 1, !tbaa !24
  %256 = load i8, i8* %ca187, align 1, !tbaa !24
  %257 = load i8*, i8** %cPa.addr, align 8, !tbaa !1
  %incdec.ptr394 = getelementptr inbounds i8, i8* %257, i32 -1
  store i8* %incdec.ptr394, i8** %cPa.addr, align 8, !tbaa !1
  store i8 %256, i8* %incdec.ptr394, align 1, !tbaa !24
  %258 = load i8, i8* %yb191, align 1, !tbaa !24
  %259 = load i8*, i8** %yPb.addr, align 8, !tbaa !1
  %incdec.ptr395 = getelementptr inbounds i8, i8* %259, i32 -1
  store i8* %incdec.ptr395, i8** %yPb.addr, align 8, !tbaa !1
  store i8 %258, i8* %incdec.ptr395, align 1, !tbaa !24
  %260 = load i8, i8* %mb192, align 1, !tbaa !24
  %261 = load i8*, i8** %mPb.addr, align 8, !tbaa !1
  %incdec.ptr396 = getelementptr inbounds i8, i8* %261, i32 -1
  store i8* %incdec.ptr396, i8** %mPb.addr, align 8, !tbaa !1
  store i8 %260, i8* %incdec.ptr396, align 1, !tbaa !24
  %262 = load i8, i8* %cb190, align 1, !tbaa !24
  %263 = load i8*, i8** %cPb.addr, align 8, !tbaa !1
  %incdec.ptr397 = getelementptr inbounds i8, i8* %263, i32 -1
  store i8* %incdec.ptr397, i8** %cPb.addr, align 8, !tbaa !1
  store i8 %262, i8* %incdec.ptr397, align 1, !tbaa !24
  br label %for.inc.398

for.inc.398:                                      ; preds = %for.end.391
  %264 = load i32, i32* %i195, align 4, !tbaa !23
  %inc399 = add nsw i32 %264, 1
  store i32 %inc399, i32* %i195, align 4, !tbaa !23
  br label %for.cond.196

for.end.400:                                      ; preds = %for.cond.196
  %265 = bitcast i32* %i195 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %265) #2
  %266 = bitcast i32* %oldErr194 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %266) #2
  call void @llvm.lifetime.end(i64 1, i8* %bitmask193) #2
  call void @llvm.lifetime.end(i64 1, i8* %mb192) #2
  call void @llvm.lifetime.end(i64 1, i8* %yb191) #2
  call void @llvm.lifetime.end(i64 1, i8* %cb190) #2
  call void @llvm.lifetime.end(i64 1, i8* %ma189) #2
  call void @llvm.lifetime.end(i64 1, i8* %ya188) #2
  call void @llvm.lifetime.end(i64 1, i8* %ca187) #2
  br label %if.end.401

if.end.401:                                       ; preds = %for.end.400, %for.end.186
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @FSDlinec4(i32 %scan, i32 %plane_size, %struct.error_val_field* %error_values, i8* %cPa, i8* %mPa, i8* %yPa, i8* %cPb, i8* %mPb, i8* %yPb, i32 %n, i8* %dp, i32* %ep) #1 {
entry:
  %scan.addr = alloca i32, align 4
  %plane_size.addr = alloca i32, align 4
  %error_values.addr = alloca %struct.error_val_field*, align 8
  %cPa.addr = alloca i8*, align 8
  %mPa.addr = alloca i8*, align 8
  %yPa.addr = alloca i8*, align 8
  %cPb.addr = alloca i8*, align 8
  %mPb.addr = alloca i8*, align 8
  %yPb.addr = alloca i8*, align 8
  %n.addr = alloca i32, align 4
  %dp.addr = alloca i8*, align 8
  %ep.addr = alloca i32*, align 8
  %ca = alloca i8, align 1
  %ya = alloca i8, align 1
  %ma = alloca i8, align 1
  %cb = alloca i8, align 1
  %yb = alloca i8, align 1
  %mb = alloca i8, align 1
  %bitmask = alloca i8, align 1
  %oldErr = alloca i32, align 4
  %i = alloca i32, align 4
  %ca244 = alloca i8, align 1
  %ya245 = alloca i8, align 1
  %ma246 = alloca i8, align 1
  %cb247 = alloca i8, align 1
  %yb248 = alloca i8, align 1
  %mb249 = alloca i8, align 1
  %bitmask250 = alloca i8, align 1
  %oldErr251 = alloca i32, align 4
  %i252 = alloca i32, align 4
  store i32 %scan, i32* %scan.addr, align 4, !tbaa !23
  store i32 %plane_size, i32* %plane_size.addr, align 4, !tbaa !23
  store %struct.error_val_field* %error_values, %struct.error_val_field** %error_values.addr, align 8, !tbaa !1
  store i8* %cPa, i8** %cPa.addr, align 8, !tbaa !1
  store i8* %mPa, i8** %mPa.addr, align 8, !tbaa !1
  store i8* %yPa, i8** %yPa.addr, align 8, !tbaa !1
  store i8* %cPb, i8** %cPb.addr, align 8, !tbaa !1
  store i8* %mPb, i8** %mPb.addr, align 8, !tbaa !1
  store i8* %yPb, i8** %yPb.addr, align 8, !tbaa !1
  store i32 %n, i32* %n.addr, align 4, !tbaa !23
  store i8* %dp, i8** %dp.addr, align 8, !tbaa !1
  store i32* %ep, i32** %ep.addr, align 8, !tbaa !1
  %0 = load i32, i32* %scan.addr, align 4, !tbaa !23
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start(i64 1, i8* %ca) #2
  call void @llvm.lifetime.start(i64 1, i8* %ya) #2
  call void @llvm.lifetime.start(i64 1, i8* %ma) #2
  call void @llvm.lifetime.start(i64 1, i8* %cb) #2
  call void @llvm.lifetime.start(i64 1, i8* %yb) #2
  call void @llvm.lifetime.start(i64 1, i8* %mb) #2
  call void @llvm.lifetime.start(i64 1, i8* %bitmask) #2
  %1 = bitcast i32* %oldErr to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  store i32 0, i32* %i, align 4, !tbaa !23
  br label %for.cond

for.cond:                                         ; preds = %for.inc.242, %if.then
  %3 = load i32, i32* %i, align 4, !tbaa !23
  %4 = load i32, i32* %plane_size.addr, align 4, !tbaa !23
  %cmp1 = icmp slt i32 %3, %4
  br i1 %cmp1, label %for.body, label %for.end.243

for.body:                                         ; preds = %for.cond
  store i8 -128, i8* %bitmask, align 1, !tbaa !24
  store i8 0, i8* %mb, align 1, !tbaa !24
  store i8 0, i8* %yb, align 1, !tbaa !24
  store i8 0, i8* %cb, align 1, !tbaa !24
  store i8 0, i8* %ma, align 1, !tbaa !24
  store i8 0, i8* %ya, align 1, !tbaa !24
  store i8 0, i8* %ca, align 1, !tbaa !24
  store i8 0, i8* %ca, align 1, !tbaa !24
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc, %for.body
  %5 = load i8, i8* %bitmask, align 1, !tbaa !24
  %conv = zext i8 %5 to i32
  %cmp3 = icmp ne i32 %conv, 0
  br i1 %cmp3, label %for.body.5, label %for.end

for.body.5:                                       ; preds = %for.cond.2
  %6 = load %struct.error_val_field*, %struct.error_val_field** %error_values.addr, align 8, !tbaa !1
  %c = getelementptr inbounds %struct.error_val_field, %struct.error_val_field* %6, i32 0, i32 0
  %7 = load i32, i32* %c, align 4, !tbaa !106
  store i32 %7, i32* %oldErr, align 4, !tbaa !23
  %8 = load i32*, i32** %ep.addr, align 8, !tbaa !1
  %9 = load i32, i32* %n.addr, align 4, !tbaa !23
  %idx.ext = sext i32 %9 to i64
  %add.ptr = getelementptr inbounds i32, i32* %8, i64 %idx.ext
  %add.ptr6 = getelementptr inbounds i32, i32* %add.ptr, i64 -3
  %10 = load i32, i32* %add.ptr6, align 4, !tbaa !23
  %11 = load %struct.error_val_field*, %struct.error_val_field** %error_values.addr, align 8, !tbaa !1
  %c7 = getelementptr inbounds %struct.error_val_field, %struct.error_val_field* %11, i32 0, i32 0
  %12 = load i32, i32* %c7, align 4, !tbaa !106
  %mul = mul nsw i32 %12, 7
  %add = add nsw i32 %mul, 8
  %shr = ashr i32 %add, 4
  %add8 = add nsw i32 %10, %shr
  %13 = load i8*, i8** %dp.addr, align 8, !tbaa !1
  %14 = load i32, i32* %n.addr, align 4, !tbaa !23
  %idx.ext9 = sext i32 %14 to i64
  %add.ptr10 = getelementptr inbounds i8, i8* %13, i64 %idx.ext9
  %add.ptr11 = getelementptr inbounds i8, i8* %add.ptr10, i64 -3
  %15 = load i8, i8* %add.ptr11, align 1, !tbaa !24
  %conv12 = zext i8 %15 to i32
  %shl = shl i32 %conv12, 19
  %add13 = add nsw i32 %add8, %shl
  %16 = load %struct.error_val_field*, %struct.error_val_field** %error_values.addr, align 8, !tbaa !1
  %c14 = getelementptr inbounds %struct.error_val_field, %struct.error_val_field* %16, i32 0, i32 0
  store i32 %add13, i32* %c14, align 4, !tbaa !106
  %17 = load %struct.error_val_field*, %struct.error_val_field** %error_values.addr, align 8, !tbaa !1
  %c15 = getelementptr inbounds %struct.error_val_field, %struct.error_val_field* %17, i32 0, i32 0
  %18 = load i32, i32* %c15, align 4, !tbaa !106
  %cmp16 = icmp sgt i32 %18, 33554432
  br i1 %cmp16, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body.5
  %19 = load %struct.error_val_field*, %struct.error_val_field** %error_values.addr, align 8, !tbaa !1
  %c18 = getelementptr inbounds %struct.error_val_field, %struct.error_val_field* %19, i32 0, i32 0
  %20 = load i32, i32* %c18, align 4, !tbaa !106
  %cmp19 = icmp sle i32 %20, 67108864
  br i1 %cmp19, label %if.then.21, label %if.end

if.then.21:                                       ; preds = %land.lhs.true
  %21 = load i8, i8* %bitmask, align 1, !tbaa !24
  %conv22 = zext i8 %21 to i32
  %22 = load i8, i8* %ca, align 1, !tbaa !24
  %conv23 = zext i8 %22 to i32
  %or = or i32 %conv23, %conv22
  %conv24 = trunc i32 %or to i8
  store i8 %conv24, i8* %ca, align 1, !tbaa !24
  %23 = load %struct.error_val_field*, %struct.error_val_field** %error_values.addr, align 8, !tbaa !1
  %c25 = getelementptr inbounds %struct.error_val_field, %struct.error_val_field* %23, i32 0, i32 0
  %24 = load i32, i32* %c25, align 4, !tbaa !106
  %sub = sub nsw i32 %24, 67108864
  store i32 %sub, i32* %c25, align 4, !tbaa !106
  br label %if.end

if.end:                                           ; preds = %if.then.21, %land.lhs.true, %for.body.5
  %25 = load %struct.error_val_field*, %struct.error_val_field** %error_values.addr, align 8, !tbaa !1
  %c26 = getelementptr inbounds %struct.error_val_field, %struct.error_val_field* %25, i32 0, i32 0
  %26 = load i32, i32* %c26, align 4, !tbaa !106
  %cmp27 = icmp sgt i32 %26, 67108864
  br i1 %cmp27, label %land.lhs.true.29, label %if.end.40

land.lhs.true.29:                                 ; preds = %if.end
  %27 = load %struct.error_val_field*, %struct.error_val_field** %error_values.addr, align 8, !tbaa !1
  %c30 = getelementptr inbounds %struct.error_val_field, %struct.error_val_field* %27, i32 0, i32 0
  %28 = load i32, i32* %c30, align 4, !tbaa !106
  %cmp31 = icmp sle i32 %28, 100663296
  br i1 %cmp31, label %if.then.33, label %if.end.40

if.then.33:                                       ; preds = %land.lhs.true.29
  %29 = load i8, i8* %bitmask, align 1, !tbaa !24
  %conv34 = zext i8 %29 to i32
  %30 = load i8, i8* %cb, align 1, !tbaa !24
  %conv35 = zext i8 %30 to i32
  %or36 = or i32 %conv35, %conv34
  %conv37 = trunc i32 %or36 to i8
  store i8 %conv37, i8* %cb, align 1, !tbaa !24
  %31 = load %struct.error_val_field*, %struct.error_val_field** %error_values.addr, align 8, !tbaa !1
  %c38 = getelementptr inbounds %struct.error_val_field, %struct.error_val_field* %31, i32 0, i32 0
  %32 = load i32, i32* %c38, align 4, !tbaa !106
  %sub39 = sub nsw i32 %32, 100663296
  store i32 %sub39, i32* %c38, align 4, !tbaa !106
  br label %if.end.40

if.end.40:                                        ; preds = %if.then.33, %land.lhs.true.29, %if.end
  %33 = load %struct.error_val_field*, %struct.error_val_field** %error_values.addr, align 8, !tbaa !1
  %c41 = getelementptr inbounds %struct.error_val_field, %struct.error_val_field* %33, i32 0, i32 0
  %34 = load i32, i32* %c41, align 4, !tbaa !106
  %cmp42 = icmp sgt i32 %34, 100663296
  br i1 %cmp42, label %if.then.44, label %if.end.55

if.then.44:                                       ; preds = %if.end.40
  %35 = load i8, i8* %bitmask, align 1, !tbaa !24
  %conv45 = zext i8 %35 to i32
  %36 = load i8, i8* %ca, align 1, !tbaa !24
  %conv46 = zext i8 %36 to i32
  %or47 = or i32 %conv46, %conv45
  %conv48 = trunc i32 %or47 to i8
  store i8 %conv48, i8* %ca, align 1, !tbaa !24
  %37 = load i8, i8* %bitmask, align 1, !tbaa !24
  %conv49 = zext i8 %37 to i32
  %38 = load i8, i8* %cb, align 1, !tbaa !24
  %conv50 = zext i8 %38 to i32
  %or51 = or i32 %conv50, %conv49
  %conv52 = trunc i32 %or51 to i8
  store i8 %conv52, i8* %cb, align 1, !tbaa !24
  %39 = load %struct.error_val_field*, %struct.error_val_field** %error_values.addr, align 8, !tbaa !1
  %c53 = getelementptr inbounds %struct.error_val_field, %struct.error_val_field* %39, i32 0, i32 0
  %40 = load i32, i32* %c53, align 4, !tbaa !106
  %sub54 = sub nsw i32 %40, 134217728
  store i32 %sub54, i32* %c53, align 4, !tbaa !106
  br label %if.end.55

if.end.55:                                        ; preds = %if.then.44, %if.end.40
  %41 = load %struct.error_val_field*, %struct.error_val_field** %error_values.addr, align 8, !tbaa !1
  %c56 = getelementptr inbounds %struct.error_val_field, %struct.error_val_field* %41, i32 0, i32 0
  %42 = load i32, i32* %c56, align 4, !tbaa !106
  %mul57 = mul nsw i32 %42, 3
  %add58 = add nsw i32 %mul57, 8
  %shr59 = ashr i32 %add58, 4
  %43 = load i32*, i32** %ep.addr, align 8, !tbaa !1
  %44 = load i32, i32* %n.addr, align 4, !tbaa !23
  %sub60 = sub nsw i32 %44, 3
  %45 = load i32, i32* %n.addr, align 4, !tbaa !23
  %sub61 = sub nsw i32 0, %45
  %add62 = add nsw i32 %sub60, %sub61
  %idx.ext63 = sext i32 %add62 to i64
  %add.ptr64 = getelementptr inbounds i32, i32* %43, i64 %idx.ext63
  %46 = load i32, i32* %add.ptr64, align 4, !tbaa !23
  %add65 = add nsw i32 %46, %shr59
  store i32 %add65, i32* %add.ptr64, align 4, !tbaa !23
  %47 = load %struct.error_val_field*, %struct.error_val_field** %error_values.addr, align 8, !tbaa !1
  %c66 = getelementptr inbounds %struct.error_val_field, %struct.error_val_field* %47, i32 0, i32 0
  %48 = load i32, i32* %c66, align 4, !tbaa !106
  %mul67 = mul nsw i32 %48, 5
  %49 = load i32, i32* %oldErr, align 4, !tbaa !23
  %add68 = add nsw i32 %mul67, %49
  %add69 = add nsw i32 %add68, 8
  %shr70 = ashr i32 %add69, 4
  %50 = load i32*, i32** %ep.addr, align 8, !tbaa !1
  %51 = load i32, i32* %n.addr, align 4, !tbaa !23
  %idx.ext71 = sext i32 %51 to i64
  %add.ptr72 = getelementptr inbounds i32, i32* %50, i64 %idx.ext71
  %add.ptr73 = getelementptr inbounds i32, i32* %add.ptr72, i64 -3
  store i32 %shr70, i32* %add.ptr73, align 4, !tbaa !23
  %52 = load %struct.error_val_field*, %struct.error_val_field** %error_values.addr, align 8, !tbaa !1
  %m = getelementptr inbounds %struct.error_val_field, %struct.error_val_field* %52, i32 0, i32 1
  %53 = load i32, i32* %m, align 4, !tbaa !105
  store i32 %53, i32* %oldErr, align 4, !tbaa !23
  %54 = load i32*, i32** %ep.addr, align 8, !tbaa !1
  %55 = load i32, i32* %n.addr, align 4, !tbaa !23
  %idx.ext74 = sext i32 %55 to i64
  %add.ptr75 = getelementptr inbounds i32, i32* %54, i64 %idx.ext74
  %add.ptr76 = getelementptr inbounds i32, i32* %add.ptr75, i64 -2
  %56 = load i32, i32* %add.ptr76, align 4, !tbaa !23
  %57 = load %struct.error_val_field*, %struct.error_val_field** %error_values.addr, align 8, !tbaa !1
  %m77 = getelementptr inbounds %struct.error_val_field, %struct.error_val_field* %57, i32 0, i32 1
  %58 = load i32, i32* %m77, align 4, !tbaa !105
  %mul78 = mul nsw i32 %58, 7
  %add79 = add nsw i32 %mul78, 8
  %shr80 = ashr i32 %add79, 4
  %add81 = add nsw i32 %56, %shr80
  %59 = load i8*, i8** %dp.addr, align 8, !tbaa !1
  %60 = load i32, i32* %n.addr, align 4, !tbaa !23
  %idx.ext82 = sext i32 %60 to i64
  %add.ptr83 = getelementptr inbounds i8, i8* %59, i64 %idx.ext82
  %add.ptr84 = getelementptr inbounds i8, i8* %add.ptr83, i64 -2
  %61 = load i8, i8* %add.ptr84, align 1, !tbaa !24
  %conv85 = zext i8 %61 to i32
  %shl86 = shl i32 %conv85, 19
  %add87 = add nsw i32 %add81, %shl86
  %62 = load %struct.error_val_field*, %struct.error_val_field** %error_values.addr, align 8, !tbaa !1
  %m88 = getelementptr inbounds %struct.error_val_field, %struct.error_val_field* %62, i32 0, i32 1
  store i32 %add87, i32* %m88, align 4, !tbaa !105
  %63 = load %struct.error_val_field*, %struct.error_val_field** %error_values.addr, align 8, !tbaa !1
  %m89 = getelementptr inbounds %struct.error_val_field, %struct.error_val_field* %63, i32 0, i32 1
  %64 = load i32, i32* %m89, align 4, !tbaa !105
  %cmp90 = icmp sgt i32 %64, 33554432
  br i1 %cmp90, label %land.lhs.true.92, label %if.end.103

land.lhs.true.92:                                 ; preds = %if.end.55
  %65 = load %struct.error_val_field*, %struct.error_val_field** %error_values.addr, align 8, !tbaa !1
  %m93 = getelementptr inbounds %struct.error_val_field, %struct.error_val_field* %65, i32 0, i32 1
  %66 = load i32, i32* %m93, align 4, !tbaa !105
  %cmp94 = icmp sle i32 %66, 67108864
  br i1 %cmp94, label %if.then.96, label %if.end.103

if.then.96:                                       ; preds = %land.lhs.true.92
  %67 = load i8, i8* %bitmask, align 1, !tbaa !24
  %conv97 = zext i8 %67 to i32
  %68 = load i8, i8* %ma, align 1, !tbaa !24
  %conv98 = zext i8 %68 to i32
  %or99 = or i32 %conv98, %conv97
  %conv100 = trunc i32 %or99 to i8
  store i8 %conv100, i8* %ma, align 1, !tbaa !24
  %69 = load %struct.error_val_field*, %struct.error_val_field** %error_values.addr, align 8, !tbaa !1
  %m101 = getelementptr inbounds %struct.error_val_field, %struct.error_val_field* %69, i32 0, i32 1
  %70 = load i32, i32* %m101, align 4, !tbaa !105
  %sub102 = sub nsw i32 %70, 67108864
  store i32 %sub102, i32* %m101, align 4, !tbaa !105
  br label %if.end.103

if.end.103:                                       ; preds = %if.then.96, %land.lhs.true.92, %if.end.55
  %71 = load %struct.error_val_field*, %struct.error_val_field** %error_values.addr, align 8, !tbaa !1
  %m104 = getelementptr inbounds %struct.error_val_field, %struct.error_val_field* %71, i32 0, i32 1
  %72 = load i32, i32* %m104, align 4, !tbaa !105
  %cmp105 = icmp sgt i32 %72, 67108864
  br i1 %cmp105, label %land.lhs.true.107, label %if.end.118

land.lhs.true.107:                                ; preds = %if.end.103
  %73 = load %struct.error_val_field*, %struct.error_val_field** %error_values.addr, align 8, !tbaa !1
  %m108 = getelementptr inbounds %struct.error_val_field, %struct.error_val_field* %73, i32 0, i32 1
  %74 = load i32, i32* %m108, align 4, !tbaa !105
  %cmp109 = icmp sle i32 %74, 100663296
  br i1 %cmp109, label %if.then.111, label %if.end.118

if.then.111:                                      ; preds = %land.lhs.true.107
  %75 = load i8, i8* %bitmask, align 1, !tbaa !24
  %conv112 = zext i8 %75 to i32
  %76 = load i8, i8* %mb, align 1, !tbaa !24
  %conv113 = zext i8 %76 to i32
  %or114 = or i32 %conv113, %conv112
  %conv115 = trunc i32 %or114 to i8
  store i8 %conv115, i8* %mb, align 1, !tbaa !24
  %77 = load %struct.error_val_field*, %struct.error_val_field** %error_values.addr, align 8, !tbaa !1
  %m116 = getelementptr inbounds %struct.error_val_field, %struct.error_val_field* %77, i32 0, i32 1
  %78 = load i32, i32* %m116, align 4, !tbaa !105
  %sub117 = sub nsw i32 %78, 100663296
  store i32 %sub117, i32* %m116, align 4, !tbaa !105
  br label %if.end.118

if.end.118:                                       ; preds = %if.then.111, %land.lhs.true.107, %if.end.103
  %79 = load %struct.error_val_field*, %struct.error_val_field** %error_values.addr, align 8, !tbaa !1
  %m119 = getelementptr inbounds %struct.error_val_field, %struct.error_val_field* %79, i32 0, i32 1
  %80 = load i32, i32* %m119, align 4, !tbaa !105
  %cmp120 = icmp sgt i32 %80, 100663296
  br i1 %cmp120, label %if.then.122, label %if.end.133

if.then.122:                                      ; preds = %if.end.118
  %81 = load i8, i8* %bitmask, align 1, !tbaa !24
  %conv123 = zext i8 %81 to i32
  %82 = load i8, i8* %ma, align 1, !tbaa !24
  %conv124 = zext i8 %82 to i32
  %or125 = or i32 %conv124, %conv123
  %conv126 = trunc i32 %or125 to i8
  store i8 %conv126, i8* %ma, align 1, !tbaa !24
  %83 = load i8, i8* %bitmask, align 1, !tbaa !24
  %conv127 = zext i8 %83 to i32
  %84 = load i8, i8* %mb, align 1, !tbaa !24
  %conv128 = zext i8 %84 to i32
  %or129 = or i32 %conv128, %conv127
  %conv130 = trunc i32 %or129 to i8
  store i8 %conv130, i8* %mb, align 1, !tbaa !24
  %85 = load %struct.error_val_field*, %struct.error_val_field** %error_values.addr, align 8, !tbaa !1
  %m131 = getelementptr inbounds %struct.error_val_field, %struct.error_val_field* %85, i32 0, i32 1
  %86 = load i32, i32* %m131, align 4, !tbaa !105
  %sub132 = sub nsw i32 %86, 134217728
  store i32 %sub132, i32* %m131, align 4, !tbaa !105
  br label %if.end.133

if.end.133:                                       ; preds = %if.then.122, %if.end.118
  %87 = load %struct.error_val_field*, %struct.error_val_field** %error_values.addr, align 8, !tbaa !1
  %m134 = getelementptr inbounds %struct.error_val_field, %struct.error_val_field* %87, i32 0, i32 1
  %88 = load i32, i32* %m134, align 4, !tbaa !105
  %mul135 = mul nsw i32 %88, 3
  %add136 = add nsw i32 %mul135, 8
  %shr137 = ashr i32 %add136, 4
  %89 = load i32*, i32** %ep.addr, align 8, !tbaa !1
  %90 = load i32, i32* %n.addr, align 4, !tbaa !23
  %sub138 = sub nsw i32 %90, 2
  %91 = load i32, i32* %n.addr, align 4, !tbaa !23
  %sub139 = sub nsw i32 0, %91
  %add140 = add nsw i32 %sub138, %sub139
  %idx.ext141 = sext i32 %add140 to i64
  %add.ptr142 = getelementptr inbounds i32, i32* %89, i64 %idx.ext141
  %92 = load i32, i32* %add.ptr142, align 4, !tbaa !23
  %add143 = add nsw i32 %92, %shr137
  store i32 %add143, i32* %add.ptr142, align 4, !tbaa !23
  %93 = load %struct.error_val_field*, %struct.error_val_field** %error_values.addr, align 8, !tbaa !1
  %m144 = getelementptr inbounds %struct.error_val_field, %struct.error_val_field* %93, i32 0, i32 1
  %94 = load i32, i32* %m144, align 4, !tbaa !105
  %mul145 = mul nsw i32 %94, 5
  %95 = load i32, i32* %oldErr, align 4, !tbaa !23
  %add146 = add nsw i32 %mul145, %95
  %add147 = add nsw i32 %add146, 8
  %shr148 = ashr i32 %add147, 4
  %96 = load i32*, i32** %ep.addr, align 8, !tbaa !1
  %97 = load i32, i32* %n.addr, align 4, !tbaa !23
  %idx.ext149 = sext i32 %97 to i64
  %add.ptr150 = getelementptr inbounds i32, i32* %96, i64 %idx.ext149
  %add.ptr151 = getelementptr inbounds i32, i32* %add.ptr150, i64 -2
  store i32 %shr148, i32* %add.ptr151, align 4, !tbaa !23
  %98 = load %struct.error_val_field*, %struct.error_val_field** %error_values.addr, align 8, !tbaa !1
  %y = getelementptr inbounds %struct.error_val_field, %struct.error_val_field* %98, i32 0, i32 2
  %99 = load i32, i32* %y, align 4, !tbaa !104
  store i32 %99, i32* %oldErr, align 4, !tbaa !23
  %100 = load i32*, i32** %ep.addr, align 8, !tbaa !1
  %101 = load i32, i32* %n.addr, align 4, !tbaa !23
  %idx.ext152 = sext i32 %101 to i64
  %add.ptr153 = getelementptr inbounds i32, i32* %100, i64 %idx.ext152
  %add.ptr154 = getelementptr inbounds i32, i32* %add.ptr153, i64 -1
  %102 = load i32, i32* %add.ptr154, align 4, !tbaa !23
  %103 = load %struct.error_val_field*, %struct.error_val_field** %error_values.addr, align 8, !tbaa !1
  %y155 = getelementptr inbounds %struct.error_val_field, %struct.error_val_field* %103, i32 0, i32 2
  %104 = load i32, i32* %y155, align 4, !tbaa !104
  %mul156 = mul nsw i32 %104, 7
  %add157 = add nsw i32 %mul156, 8
  %shr158 = ashr i32 %add157, 4
  %add159 = add nsw i32 %102, %shr158
  %105 = load i8*, i8** %dp.addr, align 8, !tbaa !1
  %106 = load i32, i32* %n.addr, align 4, !tbaa !23
  %idx.ext160 = sext i32 %106 to i64
  %add.ptr161 = getelementptr inbounds i8, i8* %105, i64 %idx.ext160
  %add.ptr162 = getelementptr inbounds i8, i8* %add.ptr161, i64 -1
  %107 = load i8, i8* %add.ptr162, align 1, !tbaa !24
  %conv163 = zext i8 %107 to i32
  %shl164 = shl i32 %conv163, 19
  %add165 = add nsw i32 %add159, %shl164
  %108 = load %struct.error_val_field*, %struct.error_val_field** %error_values.addr, align 8, !tbaa !1
  %y166 = getelementptr inbounds %struct.error_val_field, %struct.error_val_field* %108, i32 0, i32 2
  store i32 %add165, i32* %y166, align 4, !tbaa !104
  %109 = load %struct.error_val_field*, %struct.error_val_field** %error_values.addr, align 8, !tbaa !1
  %y167 = getelementptr inbounds %struct.error_val_field, %struct.error_val_field* %109, i32 0, i32 2
  %110 = load i32, i32* %y167, align 4, !tbaa !104
  %cmp168 = icmp sgt i32 %110, 33554432
  br i1 %cmp168, label %land.lhs.true.170, label %if.end.181

land.lhs.true.170:                                ; preds = %if.end.133
  %111 = load %struct.error_val_field*, %struct.error_val_field** %error_values.addr, align 8, !tbaa !1
  %y171 = getelementptr inbounds %struct.error_val_field, %struct.error_val_field* %111, i32 0, i32 2
  %112 = load i32, i32* %y171, align 4, !tbaa !104
  %cmp172 = icmp sle i32 %112, 67108864
  br i1 %cmp172, label %if.then.174, label %if.end.181

if.then.174:                                      ; preds = %land.lhs.true.170
  %113 = load i8, i8* %bitmask, align 1, !tbaa !24
  %conv175 = zext i8 %113 to i32
  %114 = load i8, i8* %ya, align 1, !tbaa !24
  %conv176 = zext i8 %114 to i32
  %or177 = or i32 %conv176, %conv175
  %conv178 = trunc i32 %or177 to i8
  store i8 %conv178, i8* %ya, align 1, !tbaa !24
  %115 = load %struct.error_val_field*, %struct.error_val_field** %error_values.addr, align 8, !tbaa !1
  %y179 = getelementptr inbounds %struct.error_val_field, %struct.error_val_field* %115, i32 0, i32 2
  %116 = load i32, i32* %y179, align 4, !tbaa !104
  %sub180 = sub nsw i32 %116, 67108864
  store i32 %sub180, i32* %y179, align 4, !tbaa !104
  br label %if.end.181

if.end.181:                                       ; preds = %if.then.174, %land.lhs.true.170, %if.end.133
  %117 = load %struct.error_val_field*, %struct.error_val_field** %error_values.addr, align 8, !tbaa !1
  %y182 = getelementptr inbounds %struct.error_val_field, %struct.error_val_field* %117, i32 0, i32 2
  %118 = load i32, i32* %y182, align 4, !tbaa !104
  %cmp183 = icmp sgt i32 %118, 67108864
  br i1 %cmp183, label %land.lhs.true.185, label %if.end.196

land.lhs.true.185:                                ; preds = %if.end.181
  %119 = load %struct.error_val_field*, %struct.error_val_field** %error_values.addr, align 8, !tbaa !1
  %y186 = getelementptr inbounds %struct.error_val_field, %struct.error_val_field* %119, i32 0, i32 2
  %120 = load i32, i32* %y186, align 4, !tbaa !104
  %cmp187 = icmp sle i32 %120, 100663296
  br i1 %cmp187, label %if.then.189, label %if.end.196

if.then.189:                                      ; preds = %land.lhs.true.185
  %121 = load i8, i8* %bitmask, align 1, !tbaa !24
  %conv190 = zext i8 %121 to i32
  %122 = load i8, i8* %yb, align 1, !tbaa !24
  %conv191 = zext i8 %122 to i32
  %or192 = or i32 %conv191, %conv190
  %conv193 = trunc i32 %or192 to i8
  store i8 %conv193, i8* %yb, align 1, !tbaa !24
  %123 = load %struct.error_val_field*, %struct.error_val_field** %error_values.addr, align 8, !tbaa !1
  %y194 = getelementptr inbounds %struct.error_val_field, %struct.error_val_field* %123, i32 0, i32 2
  %124 = load i32, i32* %y194, align 4, !tbaa !104
  %sub195 = sub nsw i32 %124, 100663296
  store i32 %sub195, i32* %y194, align 4, !tbaa !104
  br label %if.end.196

if.end.196:                                       ; preds = %if.then.189, %land.lhs.true.185, %if.end.181
  %125 = load %struct.error_val_field*, %struct.error_val_field** %error_values.addr, align 8, !tbaa !1
  %y197 = getelementptr inbounds %struct.error_val_field, %struct.error_val_field* %125, i32 0, i32 2
  %126 = load i32, i32* %y197, align 4, !tbaa !104
  %cmp198 = icmp sgt i32 %126, 100663296
  br i1 %cmp198, label %if.then.200, label %if.end.211

if.then.200:                                      ; preds = %if.end.196
  %127 = load i8, i8* %bitmask, align 1, !tbaa !24
  %conv201 = zext i8 %127 to i32
  %128 = load i8, i8* %ya, align 1, !tbaa !24
  %conv202 = zext i8 %128 to i32
  %or203 = or i32 %conv202, %conv201
  %conv204 = trunc i32 %or203 to i8
  store i8 %conv204, i8* %ya, align 1, !tbaa !24
  %129 = load i8, i8* %bitmask, align 1, !tbaa !24
  %conv205 = zext i8 %129 to i32
  %130 = load i8, i8* %yb, align 1, !tbaa !24
  %conv206 = zext i8 %130 to i32
  %or207 = or i32 %conv206, %conv205
  %conv208 = trunc i32 %or207 to i8
  store i8 %conv208, i8* %yb, align 1, !tbaa !24
  %131 = load %struct.error_val_field*, %struct.error_val_field** %error_values.addr, align 8, !tbaa !1
  %y209 = getelementptr inbounds %struct.error_val_field, %struct.error_val_field* %131, i32 0, i32 2
  %132 = load i32, i32* %y209, align 4, !tbaa !104
  %sub210 = sub nsw i32 %132, 134217728
  store i32 %sub210, i32* %y209, align 4, !tbaa !104
  br label %if.end.211

if.end.211:                                       ; preds = %if.then.200, %if.end.196
  %133 = load %struct.error_val_field*, %struct.error_val_field** %error_values.addr, align 8, !tbaa !1
  %y212 = getelementptr inbounds %struct.error_val_field, %struct.error_val_field* %133, i32 0, i32 2
  %134 = load i32, i32* %y212, align 4, !tbaa !104
  %mul213 = mul nsw i32 %134, 3
  %add214 = add nsw i32 %mul213, 8
  %shr215 = ashr i32 %add214, 4
  %135 = load i32*, i32** %ep.addr, align 8, !tbaa !1
  %136 = load i32, i32* %n.addr, align 4, !tbaa !23
  %sub216 = sub nsw i32 %136, 1
  %137 = load i32, i32* %n.addr, align 4, !tbaa !23
  %sub217 = sub nsw i32 0, %137
  %add218 = add nsw i32 %sub216, %sub217
  %idx.ext219 = sext i32 %add218 to i64
  %add.ptr220 = getelementptr inbounds i32, i32* %135, i64 %idx.ext219
  %138 = load i32, i32* %add.ptr220, align 4, !tbaa !23
  %add221 = add nsw i32 %138, %shr215
  store i32 %add221, i32* %add.ptr220, align 4, !tbaa !23
  %139 = load %struct.error_val_field*, %struct.error_val_field** %error_values.addr, align 8, !tbaa !1
  %y222 = getelementptr inbounds %struct.error_val_field, %struct.error_val_field* %139, i32 0, i32 2
  %140 = load i32, i32* %y222, align 4, !tbaa !104
  %mul223 = mul nsw i32 %140, 5
  %141 = load i32, i32* %oldErr, align 4, !tbaa !23
  %add224 = add nsw i32 %mul223, %141
  %add225 = add nsw i32 %add224, 8
  %shr226 = ashr i32 %add225, 4
  %142 = load i32*, i32** %ep.addr, align 8, !tbaa !1
  %143 = load i32, i32* %n.addr, align 4, !tbaa !23
  %idx.ext227 = sext i32 %143 to i64
  %add.ptr228 = getelementptr inbounds i32, i32* %142, i64 %idx.ext227
  %add.ptr229 = getelementptr inbounds i32, i32* %add.ptr228, i64 -1
  store i32 %shr226, i32* %add.ptr229, align 4, !tbaa !23
  %144 = load i32, i32* %n.addr, align 4, !tbaa !23
  %145 = load i8*, i8** %dp.addr, align 8, !tbaa !1
  %idx.ext230 = sext i32 %144 to i64
  %add.ptr231 = getelementptr inbounds i8, i8* %145, i64 %idx.ext230
  store i8* %add.ptr231, i8** %dp.addr, align 8, !tbaa !1
  %146 = load i32, i32* %n.addr, align 4, !tbaa !23
  %147 = load i32*, i32** %ep.addr, align 8, !tbaa !1
  %idx.ext232 = sext i32 %146 to i64
  %add.ptr233 = getelementptr inbounds i32, i32* %147, i64 %idx.ext232
  store i32* %add.ptr233, i32** %ep.addr, align 8, !tbaa !1
  br label %for.inc

for.inc:                                          ; preds = %if.end.211
  %148 = load i8, i8* %bitmask, align 1, !tbaa !24
  %conv234 = zext i8 %148 to i32
  %shr235 = ashr i32 %conv234, 1
  %conv236 = trunc i32 %shr235 to i8
  store i8 %conv236, i8* %bitmask, align 1, !tbaa !24
  br label %for.cond.2

for.end:                                          ; preds = %for.cond.2
  %149 = load i8, i8* %ca, align 1, !tbaa !24
  %150 = load i8*, i8** %cPa.addr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %150, i32 1
  store i8* %incdec.ptr, i8** %cPa.addr, align 8, !tbaa !1
  store i8 %149, i8* %150, align 1, !tbaa !24
  %151 = load i8, i8* %ma, align 1, !tbaa !24
  %152 = load i8*, i8** %mPa.addr, align 8, !tbaa !1
  %incdec.ptr237 = getelementptr inbounds i8, i8* %152, i32 1
  store i8* %incdec.ptr237, i8** %mPa.addr, align 8, !tbaa !1
  store i8 %151, i8* %152, align 1, !tbaa !24
  %153 = load i8, i8* %ya, align 1, !tbaa !24
  %154 = load i8*, i8** %yPa.addr, align 8, !tbaa !1
  %incdec.ptr238 = getelementptr inbounds i8, i8* %154, i32 1
  store i8* %incdec.ptr238, i8** %yPa.addr, align 8, !tbaa !1
  store i8 %153, i8* %154, align 1, !tbaa !24
  %155 = load i8, i8* %cb, align 1, !tbaa !24
  %156 = load i8*, i8** %cPb.addr, align 8, !tbaa !1
  %incdec.ptr239 = getelementptr inbounds i8, i8* %156, i32 1
  store i8* %incdec.ptr239, i8** %cPb.addr, align 8, !tbaa !1
  store i8 %155, i8* %156, align 1, !tbaa !24
  %157 = load i8, i8* %mb, align 1, !tbaa !24
  %158 = load i8*, i8** %mPb.addr, align 8, !tbaa !1
  %incdec.ptr240 = getelementptr inbounds i8, i8* %158, i32 1
  store i8* %incdec.ptr240, i8** %mPb.addr, align 8, !tbaa !1
  store i8 %157, i8* %158, align 1, !tbaa !24
  %159 = load i8, i8* %yb, align 1, !tbaa !24
  %160 = load i8*, i8** %yPb.addr, align 8, !tbaa !1
  %incdec.ptr241 = getelementptr inbounds i8, i8* %160, i32 1
  store i8* %incdec.ptr241, i8** %yPb.addr, align 8, !tbaa !1
  store i8 %159, i8* %160, align 1, !tbaa !24
  br label %for.inc.242

for.inc.242:                                      ; preds = %for.end
  %161 = load i32, i32* %i, align 4, !tbaa !23
  %inc = add nsw i32 %161, 1
  store i32 %inc, i32* %i, align 4, !tbaa !23
  br label %for.cond

for.end.243:                                      ; preds = %for.cond
  %162 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %162) #2
  %163 = bitcast i32* %oldErr to i8*
  call void @llvm.lifetime.end(i64 4, i8* %163) #2
  call void @llvm.lifetime.end(i64 1, i8* %bitmask) #2
  call void @llvm.lifetime.end(i64 1, i8* %mb) #2
  call void @llvm.lifetime.end(i64 1, i8* %yb) #2
  call void @llvm.lifetime.end(i64 1, i8* %cb) #2
  call void @llvm.lifetime.end(i64 1, i8* %ma) #2
  call void @llvm.lifetime.end(i64 1, i8* %ya) #2
  call void @llvm.lifetime.end(i64 1, i8* %ca) #2
  br label %if.end.515

if.else:                                          ; preds = %entry
  call void @llvm.lifetime.start(i64 1, i8* %ca244) #2
  call void @llvm.lifetime.start(i64 1, i8* %ya245) #2
  call void @llvm.lifetime.start(i64 1, i8* %ma246) #2
  call void @llvm.lifetime.start(i64 1, i8* %cb247) #2
  call void @llvm.lifetime.start(i64 1, i8* %yb248) #2
  call void @llvm.lifetime.start(i64 1, i8* %mb249) #2
  call void @llvm.lifetime.start(i64 1, i8* %bitmask250) #2
  %164 = bitcast i32* %oldErr251 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %164) #2
  %165 = bitcast i32* %i252 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %165) #2
  store i32 0, i32* %i252, align 4, !tbaa !23
  br label %for.cond.253

for.cond.253:                                     ; preds = %for.inc.512, %if.else
  %166 = load i32, i32* %i252, align 4, !tbaa !23
  %167 = load i32, i32* %plane_size.addr, align 4, !tbaa !23
  %cmp254 = icmp slt i32 %166, %167
  br i1 %cmp254, label %for.body.256, label %for.end.514

for.body.256:                                     ; preds = %for.cond.253
  store i8 1, i8* %bitmask250, align 1, !tbaa !24
  store i8 0, i8* %mb249, align 1, !tbaa !24
  store i8 0, i8* %yb248, align 1, !tbaa !24
  store i8 0, i8* %cb247, align 1, !tbaa !24
  store i8 0, i8* %ma246, align 1, !tbaa !24
  store i8 0, i8* %ya245, align 1, !tbaa !24
  store i8 0, i8* %ca244, align 1, !tbaa !24
  store i8 0, i8* %ca244, align 1, !tbaa !24
  br label %for.cond.257

for.cond.257:                                     ; preds = %for.inc.501, %for.body.256
  %168 = load i8, i8* %bitmask250, align 1, !tbaa !24
  %conv258 = zext i8 %168 to i32
  %cmp259 = icmp ne i32 %conv258, 0
  br i1 %cmp259, label %for.body.261, label %for.end.505

for.body.261:                                     ; preds = %for.cond.257
  %169 = load i32, i32* %n.addr, align 4, !tbaa !23
  %170 = load i8*, i8** %dp.addr, align 8, !tbaa !1
  %idx.ext262 = sext i32 %169 to i64
  %idx.neg = sub i64 0, %idx.ext262
  %add.ptr263 = getelementptr inbounds i8, i8* %170, i64 %idx.neg
  store i8* %add.ptr263, i8** %dp.addr, align 8, !tbaa !1
  %171 = load i32, i32* %n.addr, align 4, !tbaa !23
  %172 = load i32*, i32** %ep.addr, align 8, !tbaa !1
  %idx.ext264 = sext i32 %171 to i64
  %idx.neg265 = sub i64 0, %idx.ext264
  %add.ptr266 = getelementptr inbounds i32, i32* %172, i64 %idx.neg265
  store i32* %add.ptr266, i32** %ep.addr, align 8, !tbaa !1
  %173 = load %struct.error_val_field*, %struct.error_val_field** %error_values.addr, align 8, !tbaa !1
  %y267 = getelementptr inbounds %struct.error_val_field, %struct.error_val_field* %173, i32 0, i32 2
  %174 = load i32, i32* %y267, align 4, !tbaa !104
  store i32 %174, i32* %oldErr251, align 4, !tbaa !23
  %175 = load i32*, i32** %ep.addr, align 8, !tbaa !1
  %176 = load i32, i32* %n.addr, align 4, !tbaa !23
  %idx.ext268 = sext i32 %176 to i64
  %add.ptr269 = getelementptr inbounds i32, i32* %175, i64 %idx.ext268
  %add.ptr270 = getelementptr inbounds i32, i32* %add.ptr269, i64 -1
  %177 = load i32, i32* %add.ptr270, align 4, !tbaa !23
  %178 = load %struct.error_val_field*, %struct.error_val_field** %error_values.addr, align 8, !tbaa !1
  %y271 = getelementptr inbounds %struct.error_val_field, %struct.error_val_field* %178, i32 0, i32 2
  %179 = load i32, i32* %y271, align 4, !tbaa !104
  %mul272 = mul nsw i32 %179, 7
  %add273 = add nsw i32 %mul272, 8
  %shr274 = ashr i32 %add273, 4
  %add275 = add nsw i32 %177, %shr274
  %180 = load i8*, i8** %dp.addr, align 8, !tbaa !1
  %181 = load i32, i32* %n.addr, align 4, !tbaa !23
  %idx.ext276 = sext i32 %181 to i64
  %add.ptr277 = getelementptr inbounds i8, i8* %180, i64 %idx.ext276
  %add.ptr278 = getelementptr inbounds i8, i8* %add.ptr277, i64 -1
  %182 = load i8, i8* %add.ptr278, align 1, !tbaa !24
  %conv279 = zext i8 %182 to i32
  %shl280 = shl i32 %conv279, 19
  %add281 = add nsw i32 %add275, %shl280
  %183 = load %struct.error_val_field*, %struct.error_val_field** %error_values.addr, align 8, !tbaa !1
  %y282 = getelementptr inbounds %struct.error_val_field, %struct.error_val_field* %183, i32 0, i32 2
  store i32 %add281, i32* %y282, align 4, !tbaa !104
  %184 = load %struct.error_val_field*, %struct.error_val_field** %error_values.addr, align 8, !tbaa !1
  %y283 = getelementptr inbounds %struct.error_val_field, %struct.error_val_field* %184, i32 0, i32 2
  %185 = load i32, i32* %y283, align 4, !tbaa !104
  %cmp284 = icmp sgt i32 %185, 33554432
  br i1 %cmp284, label %land.lhs.true.286, label %if.end.297

land.lhs.true.286:                                ; preds = %for.body.261
  %186 = load %struct.error_val_field*, %struct.error_val_field** %error_values.addr, align 8, !tbaa !1
  %y287 = getelementptr inbounds %struct.error_val_field, %struct.error_val_field* %186, i32 0, i32 2
  %187 = load i32, i32* %y287, align 4, !tbaa !104
  %cmp288 = icmp sle i32 %187, 67108864
  br i1 %cmp288, label %if.then.290, label %if.end.297

if.then.290:                                      ; preds = %land.lhs.true.286
  %188 = load i8, i8* %bitmask250, align 1, !tbaa !24
  %conv291 = zext i8 %188 to i32
  %189 = load i8, i8* %ya245, align 1, !tbaa !24
  %conv292 = zext i8 %189 to i32
  %or293 = or i32 %conv292, %conv291
  %conv294 = trunc i32 %or293 to i8
  store i8 %conv294, i8* %ya245, align 1, !tbaa !24
  %190 = load %struct.error_val_field*, %struct.error_val_field** %error_values.addr, align 8, !tbaa !1
  %y295 = getelementptr inbounds %struct.error_val_field, %struct.error_val_field* %190, i32 0, i32 2
  %191 = load i32, i32* %y295, align 4, !tbaa !104
  %sub296 = sub nsw i32 %191, 67108864
  store i32 %sub296, i32* %y295, align 4, !tbaa !104
  br label %if.end.297

if.end.297:                                       ; preds = %if.then.290, %land.lhs.true.286, %for.body.261
  %192 = load %struct.error_val_field*, %struct.error_val_field** %error_values.addr, align 8, !tbaa !1
  %y298 = getelementptr inbounds %struct.error_val_field, %struct.error_val_field* %192, i32 0, i32 2
  %193 = load i32, i32* %y298, align 4, !tbaa !104
  %cmp299 = icmp sgt i32 %193, 67108864
  br i1 %cmp299, label %land.lhs.true.301, label %if.end.312

land.lhs.true.301:                                ; preds = %if.end.297
  %194 = load %struct.error_val_field*, %struct.error_val_field** %error_values.addr, align 8, !tbaa !1
  %y302 = getelementptr inbounds %struct.error_val_field, %struct.error_val_field* %194, i32 0, i32 2
  %195 = load i32, i32* %y302, align 4, !tbaa !104
  %cmp303 = icmp sle i32 %195, 100663296
  br i1 %cmp303, label %if.then.305, label %if.end.312

if.then.305:                                      ; preds = %land.lhs.true.301
  %196 = load i8, i8* %bitmask250, align 1, !tbaa !24
  %conv306 = zext i8 %196 to i32
  %197 = load i8, i8* %yb248, align 1, !tbaa !24
  %conv307 = zext i8 %197 to i32
  %or308 = or i32 %conv307, %conv306
  %conv309 = trunc i32 %or308 to i8
  store i8 %conv309, i8* %yb248, align 1, !tbaa !24
  %198 = load %struct.error_val_field*, %struct.error_val_field** %error_values.addr, align 8, !tbaa !1
  %y310 = getelementptr inbounds %struct.error_val_field, %struct.error_val_field* %198, i32 0, i32 2
  %199 = load i32, i32* %y310, align 4, !tbaa !104
  %sub311 = sub nsw i32 %199, 100663296
  store i32 %sub311, i32* %y310, align 4, !tbaa !104
  br label %if.end.312

if.end.312:                                       ; preds = %if.then.305, %land.lhs.true.301, %if.end.297
  %200 = load %struct.error_val_field*, %struct.error_val_field** %error_values.addr, align 8, !tbaa !1
  %y313 = getelementptr inbounds %struct.error_val_field, %struct.error_val_field* %200, i32 0, i32 2
  %201 = load i32, i32* %y313, align 4, !tbaa !104
  %cmp314 = icmp sgt i32 %201, 100663296
  br i1 %cmp314, label %if.then.316, label %if.end.327

if.then.316:                                      ; preds = %if.end.312
  %202 = load i8, i8* %bitmask250, align 1, !tbaa !24
  %conv317 = zext i8 %202 to i32
  %203 = load i8, i8* %ya245, align 1, !tbaa !24
  %conv318 = zext i8 %203 to i32
  %or319 = or i32 %conv318, %conv317
  %conv320 = trunc i32 %or319 to i8
  store i8 %conv320, i8* %ya245, align 1, !tbaa !24
  %204 = load i8, i8* %bitmask250, align 1, !tbaa !24
  %conv321 = zext i8 %204 to i32
  %205 = load i8, i8* %yb248, align 1, !tbaa !24
  %conv322 = zext i8 %205 to i32
  %or323 = or i32 %conv322, %conv321
  %conv324 = trunc i32 %or323 to i8
  store i8 %conv324, i8* %yb248, align 1, !tbaa !24
  %206 = load %struct.error_val_field*, %struct.error_val_field** %error_values.addr, align 8, !tbaa !1
  %y325 = getelementptr inbounds %struct.error_val_field, %struct.error_val_field* %206, i32 0, i32 2
  %207 = load i32, i32* %y325, align 4, !tbaa !104
  %sub326 = sub nsw i32 %207, 134217728
  store i32 %sub326, i32* %y325, align 4, !tbaa !104
  br label %if.end.327

if.end.327:                                       ; preds = %if.then.316, %if.end.312
  %208 = load %struct.error_val_field*, %struct.error_val_field** %error_values.addr, align 8, !tbaa !1
  %y328 = getelementptr inbounds %struct.error_val_field, %struct.error_val_field* %208, i32 0, i32 2
  %209 = load i32, i32* %y328, align 4, !tbaa !104
  %mul329 = mul nsw i32 %209, 3
  %add330 = add nsw i32 %mul329, 8
  %shr331 = ashr i32 %add330, 4
  %210 = load i32*, i32** %ep.addr, align 8, !tbaa !1
  %211 = load i32, i32* %n.addr, align 4, !tbaa !23
  %sub332 = sub nsw i32 %211, 1
  %212 = load i32, i32* %n.addr, align 4, !tbaa !23
  %add333 = add nsw i32 %sub332, %212
  %idx.ext334 = sext i32 %add333 to i64
  %add.ptr335 = getelementptr inbounds i32, i32* %210, i64 %idx.ext334
  %213 = load i32, i32* %add.ptr335, align 4, !tbaa !23
  %add336 = add nsw i32 %213, %shr331
  store i32 %add336, i32* %add.ptr335, align 4, !tbaa !23
  %214 = load %struct.error_val_field*, %struct.error_val_field** %error_values.addr, align 8, !tbaa !1
  %y337 = getelementptr inbounds %struct.error_val_field, %struct.error_val_field* %214, i32 0, i32 2
  %215 = load i32, i32* %y337, align 4, !tbaa !104
  %mul338 = mul nsw i32 %215, 5
  %216 = load i32, i32* %oldErr251, align 4, !tbaa !23
  %add339 = add nsw i32 %mul338, %216
  %add340 = add nsw i32 %add339, 8
  %shr341 = ashr i32 %add340, 4
  %217 = load i32*, i32** %ep.addr, align 8, !tbaa !1
  %218 = load i32, i32* %n.addr, align 4, !tbaa !23
  %idx.ext342 = sext i32 %218 to i64
  %add.ptr343 = getelementptr inbounds i32, i32* %217, i64 %idx.ext342
  %add.ptr344 = getelementptr inbounds i32, i32* %add.ptr343, i64 -1
  store i32 %shr341, i32* %add.ptr344, align 4, !tbaa !23
  %219 = load %struct.error_val_field*, %struct.error_val_field** %error_values.addr, align 8, !tbaa !1
  %m345 = getelementptr inbounds %struct.error_val_field, %struct.error_val_field* %219, i32 0, i32 1
  %220 = load i32, i32* %m345, align 4, !tbaa !105
  store i32 %220, i32* %oldErr251, align 4, !tbaa !23
  %221 = load i32*, i32** %ep.addr, align 8, !tbaa !1
  %222 = load i32, i32* %n.addr, align 4, !tbaa !23
  %idx.ext346 = sext i32 %222 to i64
  %add.ptr347 = getelementptr inbounds i32, i32* %221, i64 %idx.ext346
  %add.ptr348 = getelementptr inbounds i32, i32* %add.ptr347, i64 -2
  %223 = load i32, i32* %add.ptr348, align 4, !tbaa !23
  %224 = load %struct.error_val_field*, %struct.error_val_field** %error_values.addr, align 8, !tbaa !1
  %m349 = getelementptr inbounds %struct.error_val_field, %struct.error_val_field* %224, i32 0, i32 1
  %225 = load i32, i32* %m349, align 4, !tbaa !105
  %mul350 = mul nsw i32 %225, 7
  %add351 = add nsw i32 %mul350, 8
  %shr352 = ashr i32 %add351, 4
  %add353 = add nsw i32 %223, %shr352
  %226 = load i8*, i8** %dp.addr, align 8, !tbaa !1
  %227 = load i32, i32* %n.addr, align 4, !tbaa !23
  %idx.ext354 = sext i32 %227 to i64
  %add.ptr355 = getelementptr inbounds i8, i8* %226, i64 %idx.ext354
  %add.ptr356 = getelementptr inbounds i8, i8* %add.ptr355, i64 -2
  %228 = load i8, i8* %add.ptr356, align 1, !tbaa !24
  %conv357 = zext i8 %228 to i32
  %shl358 = shl i32 %conv357, 19
  %add359 = add nsw i32 %add353, %shl358
  %229 = load %struct.error_val_field*, %struct.error_val_field** %error_values.addr, align 8, !tbaa !1
  %m360 = getelementptr inbounds %struct.error_val_field, %struct.error_val_field* %229, i32 0, i32 1
  store i32 %add359, i32* %m360, align 4, !tbaa !105
  %230 = load %struct.error_val_field*, %struct.error_val_field** %error_values.addr, align 8, !tbaa !1
  %m361 = getelementptr inbounds %struct.error_val_field, %struct.error_val_field* %230, i32 0, i32 1
  %231 = load i32, i32* %m361, align 4, !tbaa !105
  %cmp362 = icmp sgt i32 %231, 33554432
  br i1 %cmp362, label %land.lhs.true.364, label %if.end.375

land.lhs.true.364:                                ; preds = %if.end.327
  %232 = load %struct.error_val_field*, %struct.error_val_field** %error_values.addr, align 8, !tbaa !1
  %m365 = getelementptr inbounds %struct.error_val_field, %struct.error_val_field* %232, i32 0, i32 1
  %233 = load i32, i32* %m365, align 4, !tbaa !105
  %cmp366 = icmp sle i32 %233, 67108864
  br i1 %cmp366, label %if.then.368, label %if.end.375

if.then.368:                                      ; preds = %land.lhs.true.364
  %234 = load i8, i8* %bitmask250, align 1, !tbaa !24
  %conv369 = zext i8 %234 to i32
  %235 = load i8, i8* %ma246, align 1, !tbaa !24
  %conv370 = zext i8 %235 to i32
  %or371 = or i32 %conv370, %conv369
  %conv372 = trunc i32 %or371 to i8
  store i8 %conv372, i8* %ma246, align 1, !tbaa !24
  %236 = load %struct.error_val_field*, %struct.error_val_field** %error_values.addr, align 8, !tbaa !1
  %m373 = getelementptr inbounds %struct.error_val_field, %struct.error_val_field* %236, i32 0, i32 1
  %237 = load i32, i32* %m373, align 4, !tbaa !105
  %sub374 = sub nsw i32 %237, 67108864
  store i32 %sub374, i32* %m373, align 4, !tbaa !105
  br label %if.end.375

if.end.375:                                       ; preds = %if.then.368, %land.lhs.true.364, %if.end.327
  %238 = load %struct.error_val_field*, %struct.error_val_field** %error_values.addr, align 8, !tbaa !1
  %m376 = getelementptr inbounds %struct.error_val_field, %struct.error_val_field* %238, i32 0, i32 1
  %239 = load i32, i32* %m376, align 4, !tbaa !105
  %cmp377 = icmp sgt i32 %239, 67108864
  br i1 %cmp377, label %land.lhs.true.379, label %if.end.390

land.lhs.true.379:                                ; preds = %if.end.375
  %240 = load %struct.error_val_field*, %struct.error_val_field** %error_values.addr, align 8, !tbaa !1
  %m380 = getelementptr inbounds %struct.error_val_field, %struct.error_val_field* %240, i32 0, i32 1
  %241 = load i32, i32* %m380, align 4, !tbaa !105
  %cmp381 = icmp sle i32 %241, 100663296
  br i1 %cmp381, label %if.then.383, label %if.end.390

if.then.383:                                      ; preds = %land.lhs.true.379
  %242 = load i8, i8* %bitmask250, align 1, !tbaa !24
  %conv384 = zext i8 %242 to i32
  %243 = load i8, i8* %mb249, align 1, !tbaa !24
  %conv385 = zext i8 %243 to i32
  %or386 = or i32 %conv385, %conv384
  %conv387 = trunc i32 %or386 to i8
  store i8 %conv387, i8* %mb249, align 1, !tbaa !24
  %244 = load %struct.error_val_field*, %struct.error_val_field** %error_values.addr, align 8, !tbaa !1
  %m388 = getelementptr inbounds %struct.error_val_field, %struct.error_val_field* %244, i32 0, i32 1
  %245 = load i32, i32* %m388, align 4, !tbaa !105
  %sub389 = sub nsw i32 %245, 100663296
  store i32 %sub389, i32* %m388, align 4, !tbaa !105
  br label %if.end.390

if.end.390:                                       ; preds = %if.then.383, %land.lhs.true.379, %if.end.375
  %246 = load %struct.error_val_field*, %struct.error_val_field** %error_values.addr, align 8, !tbaa !1
  %m391 = getelementptr inbounds %struct.error_val_field, %struct.error_val_field* %246, i32 0, i32 1
  %247 = load i32, i32* %m391, align 4, !tbaa !105
  %cmp392 = icmp sgt i32 %247, 100663296
  br i1 %cmp392, label %if.then.394, label %if.end.405

if.then.394:                                      ; preds = %if.end.390
  %248 = load i8, i8* %bitmask250, align 1, !tbaa !24
  %conv395 = zext i8 %248 to i32
  %249 = load i8, i8* %ma246, align 1, !tbaa !24
  %conv396 = zext i8 %249 to i32
  %or397 = or i32 %conv396, %conv395
  %conv398 = trunc i32 %or397 to i8
  store i8 %conv398, i8* %ma246, align 1, !tbaa !24
  %250 = load i8, i8* %bitmask250, align 1, !tbaa !24
  %conv399 = zext i8 %250 to i32
  %251 = load i8, i8* %mb249, align 1, !tbaa !24
  %conv400 = zext i8 %251 to i32
  %or401 = or i32 %conv400, %conv399
  %conv402 = trunc i32 %or401 to i8
  store i8 %conv402, i8* %mb249, align 1, !tbaa !24
  %252 = load %struct.error_val_field*, %struct.error_val_field** %error_values.addr, align 8, !tbaa !1
  %m403 = getelementptr inbounds %struct.error_val_field, %struct.error_val_field* %252, i32 0, i32 1
  %253 = load i32, i32* %m403, align 4, !tbaa !105
  %sub404 = sub nsw i32 %253, 134217728
  store i32 %sub404, i32* %m403, align 4, !tbaa !105
  br label %if.end.405

if.end.405:                                       ; preds = %if.then.394, %if.end.390
  %254 = load %struct.error_val_field*, %struct.error_val_field** %error_values.addr, align 8, !tbaa !1
  %m406 = getelementptr inbounds %struct.error_val_field, %struct.error_val_field* %254, i32 0, i32 1
  %255 = load i32, i32* %m406, align 4, !tbaa !105
  %mul407 = mul nsw i32 %255, 3
  %add408 = add nsw i32 %mul407, 8
  %shr409 = ashr i32 %add408, 4
  %256 = load i32*, i32** %ep.addr, align 8, !tbaa !1
  %257 = load i32, i32* %n.addr, align 4, !tbaa !23
  %sub410 = sub nsw i32 %257, 2
  %258 = load i32, i32* %n.addr, align 4, !tbaa !23
  %add411 = add nsw i32 %sub410, %258
  %idx.ext412 = sext i32 %add411 to i64
  %add.ptr413 = getelementptr inbounds i32, i32* %256, i64 %idx.ext412
  %259 = load i32, i32* %add.ptr413, align 4, !tbaa !23
  %add414 = add nsw i32 %259, %shr409
  store i32 %add414, i32* %add.ptr413, align 4, !tbaa !23
  %260 = load %struct.error_val_field*, %struct.error_val_field** %error_values.addr, align 8, !tbaa !1
  %m415 = getelementptr inbounds %struct.error_val_field, %struct.error_val_field* %260, i32 0, i32 1
  %261 = load i32, i32* %m415, align 4, !tbaa !105
  %mul416 = mul nsw i32 %261, 5
  %262 = load i32, i32* %oldErr251, align 4, !tbaa !23
  %add417 = add nsw i32 %mul416, %262
  %add418 = add nsw i32 %add417, 8
  %shr419 = ashr i32 %add418, 4
  %263 = load i32*, i32** %ep.addr, align 8, !tbaa !1
  %264 = load i32, i32* %n.addr, align 4, !tbaa !23
  %idx.ext420 = sext i32 %264 to i64
  %add.ptr421 = getelementptr inbounds i32, i32* %263, i64 %idx.ext420
  %add.ptr422 = getelementptr inbounds i32, i32* %add.ptr421, i64 -2
  store i32 %shr419, i32* %add.ptr422, align 4, !tbaa !23
  %265 = load %struct.error_val_field*, %struct.error_val_field** %error_values.addr, align 8, !tbaa !1
  %c423 = getelementptr inbounds %struct.error_val_field, %struct.error_val_field* %265, i32 0, i32 0
  %266 = load i32, i32* %c423, align 4, !tbaa !106
  store i32 %266, i32* %oldErr251, align 4, !tbaa !23
  %267 = load i32*, i32** %ep.addr, align 8, !tbaa !1
  %268 = load i32, i32* %n.addr, align 4, !tbaa !23
  %idx.ext424 = sext i32 %268 to i64
  %add.ptr425 = getelementptr inbounds i32, i32* %267, i64 %idx.ext424
  %add.ptr426 = getelementptr inbounds i32, i32* %add.ptr425, i64 -3
  %269 = load i32, i32* %add.ptr426, align 4, !tbaa !23
  %270 = load %struct.error_val_field*, %struct.error_val_field** %error_values.addr, align 8, !tbaa !1
  %c427 = getelementptr inbounds %struct.error_val_field, %struct.error_val_field* %270, i32 0, i32 0
  %271 = load i32, i32* %c427, align 4, !tbaa !106
  %mul428 = mul nsw i32 %271, 7
  %add429 = add nsw i32 %mul428, 8
  %shr430 = ashr i32 %add429, 4
  %add431 = add nsw i32 %269, %shr430
  %272 = load i8*, i8** %dp.addr, align 8, !tbaa !1
  %273 = load i32, i32* %n.addr, align 4, !tbaa !23
  %idx.ext432 = sext i32 %273 to i64
  %add.ptr433 = getelementptr inbounds i8, i8* %272, i64 %idx.ext432
  %add.ptr434 = getelementptr inbounds i8, i8* %add.ptr433, i64 -3
  %274 = load i8, i8* %add.ptr434, align 1, !tbaa !24
  %conv435 = zext i8 %274 to i32
  %shl436 = shl i32 %conv435, 19
  %add437 = add nsw i32 %add431, %shl436
  %275 = load %struct.error_val_field*, %struct.error_val_field** %error_values.addr, align 8, !tbaa !1
  %c438 = getelementptr inbounds %struct.error_val_field, %struct.error_val_field* %275, i32 0, i32 0
  store i32 %add437, i32* %c438, align 4, !tbaa !106
  %276 = load %struct.error_val_field*, %struct.error_val_field** %error_values.addr, align 8, !tbaa !1
  %c439 = getelementptr inbounds %struct.error_val_field, %struct.error_val_field* %276, i32 0, i32 0
  %277 = load i32, i32* %c439, align 4, !tbaa !106
  %cmp440 = icmp sgt i32 %277, 33554432
  br i1 %cmp440, label %land.lhs.true.442, label %if.end.453

land.lhs.true.442:                                ; preds = %if.end.405
  %278 = load %struct.error_val_field*, %struct.error_val_field** %error_values.addr, align 8, !tbaa !1
  %c443 = getelementptr inbounds %struct.error_val_field, %struct.error_val_field* %278, i32 0, i32 0
  %279 = load i32, i32* %c443, align 4, !tbaa !106
  %cmp444 = icmp sle i32 %279, 67108864
  br i1 %cmp444, label %if.then.446, label %if.end.453

if.then.446:                                      ; preds = %land.lhs.true.442
  %280 = load i8, i8* %bitmask250, align 1, !tbaa !24
  %conv447 = zext i8 %280 to i32
  %281 = load i8, i8* %ca244, align 1, !tbaa !24
  %conv448 = zext i8 %281 to i32
  %or449 = or i32 %conv448, %conv447
  %conv450 = trunc i32 %or449 to i8
  store i8 %conv450, i8* %ca244, align 1, !tbaa !24
  %282 = load %struct.error_val_field*, %struct.error_val_field** %error_values.addr, align 8, !tbaa !1
  %c451 = getelementptr inbounds %struct.error_val_field, %struct.error_val_field* %282, i32 0, i32 0
  %283 = load i32, i32* %c451, align 4, !tbaa !106
  %sub452 = sub nsw i32 %283, 67108864
  store i32 %sub452, i32* %c451, align 4, !tbaa !106
  br label %if.end.453

if.end.453:                                       ; preds = %if.then.446, %land.lhs.true.442, %if.end.405
  %284 = load %struct.error_val_field*, %struct.error_val_field** %error_values.addr, align 8, !tbaa !1
  %c454 = getelementptr inbounds %struct.error_val_field, %struct.error_val_field* %284, i32 0, i32 0
  %285 = load i32, i32* %c454, align 4, !tbaa !106
  %cmp455 = icmp sgt i32 %285, 67108864
  br i1 %cmp455, label %land.lhs.true.457, label %if.end.468

land.lhs.true.457:                                ; preds = %if.end.453
  %286 = load %struct.error_val_field*, %struct.error_val_field** %error_values.addr, align 8, !tbaa !1
  %c458 = getelementptr inbounds %struct.error_val_field, %struct.error_val_field* %286, i32 0, i32 0
  %287 = load i32, i32* %c458, align 4, !tbaa !106
  %cmp459 = icmp sle i32 %287, 100663296
  br i1 %cmp459, label %if.then.461, label %if.end.468

if.then.461:                                      ; preds = %land.lhs.true.457
  %288 = load i8, i8* %bitmask250, align 1, !tbaa !24
  %conv462 = zext i8 %288 to i32
  %289 = load i8, i8* %cb247, align 1, !tbaa !24
  %conv463 = zext i8 %289 to i32
  %or464 = or i32 %conv463, %conv462
  %conv465 = trunc i32 %or464 to i8
  store i8 %conv465, i8* %cb247, align 1, !tbaa !24
  %290 = load %struct.error_val_field*, %struct.error_val_field** %error_values.addr, align 8, !tbaa !1
  %c466 = getelementptr inbounds %struct.error_val_field, %struct.error_val_field* %290, i32 0, i32 0
  %291 = load i32, i32* %c466, align 4, !tbaa !106
  %sub467 = sub nsw i32 %291, 100663296
  store i32 %sub467, i32* %c466, align 4, !tbaa !106
  br label %if.end.468

if.end.468:                                       ; preds = %if.then.461, %land.lhs.true.457, %if.end.453
  %292 = load %struct.error_val_field*, %struct.error_val_field** %error_values.addr, align 8, !tbaa !1
  %c469 = getelementptr inbounds %struct.error_val_field, %struct.error_val_field* %292, i32 0, i32 0
  %293 = load i32, i32* %c469, align 4, !tbaa !106
  %cmp470 = icmp sgt i32 %293, 100663296
  br i1 %cmp470, label %if.then.472, label %if.end.483

if.then.472:                                      ; preds = %if.end.468
  %294 = load i8, i8* %bitmask250, align 1, !tbaa !24
  %conv473 = zext i8 %294 to i32
  %295 = load i8, i8* %ca244, align 1, !tbaa !24
  %conv474 = zext i8 %295 to i32
  %or475 = or i32 %conv474, %conv473
  %conv476 = trunc i32 %or475 to i8
  store i8 %conv476, i8* %ca244, align 1, !tbaa !24
  %296 = load i8, i8* %bitmask250, align 1, !tbaa !24
  %conv477 = zext i8 %296 to i32
  %297 = load i8, i8* %cb247, align 1, !tbaa !24
  %conv478 = zext i8 %297 to i32
  %or479 = or i32 %conv478, %conv477
  %conv480 = trunc i32 %or479 to i8
  store i8 %conv480, i8* %cb247, align 1, !tbaa !24
  %298 = load %struct.error_val_field*, %struct.error_val_field** %error_values.addr, align 8, !tbaa !1
  %c481 = getelementptr inbounds %struct.error_val_field, %struct.error_val_field* %298, i32 0, i32 0
  %299 = load i32, i32* %c481, align 4, !tbaa !106
  %sub482 = sub nsw i32 %299, 134217728
  store i32 %sub482, i32* %c481, align 4, !tbaa !106
  br label %if.end.483

if.end.483:                                       ; preds = %if.then.472, %if.end.468
  %300 = load %struct.error_val_field*, %struct.error_val_field** %error_values.addr, align 8, !tbaa !1
  %c484 = getelementptr inbounds %struct.error_val_field, %struct.error_val_field* %300, i32 0, i32 0
  %301 = load i32, i32* %c484, align 4, !tbaa !106
  %mul485 = mul nsw i32 %301, 3
  %add486 = add nsw i32 %mul485, 8
  %shr487 = ashr i32 %add486, 4
  %302 = load i32*, i32** %ep.addr, align 8, !tbaa !1
  %303 = load i32, i32* %n.addr, align 4, !tbaa !23
  %sub488 = sub nsw i32 %303, 3
  %304 = load i32, i32* %n.addr, align 4, !tbaa !23
  %add489 = add nsw i32 %sub488, %304
  %idx.ext490 = sext i32 %add489 to i64
  %add.ptr491 = getelementptr inbounds i32, i32* %302, i64 %idx.ext490
  %305 = load i32, i32* %add.ptr491, align 4, !tbaa !23
  %add492 = add nsw i32 %305, %shr487
  store i32 %add492, i32* %add.ptr491, align 4, !tbaa !23
  %306 = load %struct.error_val_field*, %struct.error_val_field** %error_values.addr, align 8, !tbaa !1
  %c493 = getelementptr inbounds %struct.error_val_field, %struct.error_val_field* %306, i32 0, i32 0
  %307 = load i32, i32* %c493, align 4, !tbaa !106
  %mul494 = mul nsw i32 %307, 5
  %308 = load i32, i32* %oldErr251, align 4, !tbaa !23
  %add495 = add nsw i32 %mul494, %308
  %add496 = add nsw i32 %add495, 8
  %shr497 = ashr i32 %add496, 4
  %309 = load i32*, i32** %ep.addr, align 8, !tbaa !1
  %310 = load i32, i32* %n.addr, align 4, !tbaa !23
  %idx.ext498 = sext i32 %310 to i64
  %add.ptr499 = getelementptr inbounds i32, i32* %309, i64 %idx.ext498
  %add.ptr500 = getelementptr inbounds i32, i32* %add.ptr499, i64 -3
  store i32 %shr497, i32* %add.ptr500, align 4, !tbaa !23
  br label %for.inc.501

for.inc.501:                                      ; preds = %if.end.483
  %311 = load i8, i8* %bitmask250, align 1, !tbaa !24
  %conv502 = zext i8 %311 to i32
  %shl503 = shl i32 %conv502, 1
  %conv504 = trunc i32 %shl503 to i8
  store i8 %conv504, i8* %bitmask250, align 1, !tbaa !24
  br label %for.cond.257

for.end.505:                                      ; preds = %for.cond.257
  %312 = load i8, i8* %ya245, align 1, !tbaa !24
  %313 = load i8*, i8** %yPa.addr, align 8, !tbaa !1
  %incdec.ptr506 = getelementptr inbounds i8, i8* %313, i32 -1
  store i8* %incdec.ptr506, i8** %yPa.addr, align 8, !tbaa !1
  store i8 %312, i8* %incdec.ptr506, align 1, !tbaa !24
  %314 = load i8, i8* %ma246, align 1, !tbaa !24
  %315 = load i8*, i8** %mPa.addr, align 8, !tbaa !1
  %incdec.ptr507 = getelementptr inbounds i8, i8* %315, i32 -1
  store i8* %incdec.ptr507, i8** %mPa.addr, align 8, !tbaa !1
  store i8 %314, i8* %incdec.ptr507, align 1, !tbaa !24
  %316 = load i8, i8* %ca244, align 1, !tbaa !24
  %317 = load i8*, i8** %cPa.addr, align 8, !tbaa !1
  %incdec.ptr508 = getelementptr inbounds i8, i8* %317, i32 -1
  store i8* %incdec.ptr508, i8** %cPa.addr, align 8, !tbaa !1
  store i8 %316, i8* %incdec.ptr508, align 1, !tbaa !24
  %318 = load i8, i8* %yb248, align 1, !tbaa !24
  %319 = load i8*, i8** %yPb.addr, align 8, !tbaa !1
  %incdec.ptr509 = getelementptr inbounds i8, i8* %319, i32 -1
  store i8* %incdec.ptr509, i8** %yPb.addr, align 8, !tbaa !1
  store i8 %318, i8* %incdec.ptr509, align 1, !tbaa !24
  %320 = load i8, i8* %mb249, align 1, !tbaa !24
  %321 = load i8*, i8** %mPb.addr, align 8, !tbaa !1
  %incdec.ptr510 = getelementptr inbounds i8, i8* %321, i32 -1
  store i8* %incdec.ptr510, i8** %mPb.addr, align 8, !tbaa !1
  store i8 %320, i8* %incdec.ptr510, align 1, !tbaa !24
  %322 = load i8, i8* %cb247, align 1, !tbaa !24
  %323 = load i8*, i8** %cPb.addr, align 8, !tbaa !1
  %incdec.ptr511 = getelementptr inbounds i8, i8* %323, i32 -1
  store i8* %incdec.ptr511, i8** %cPb.addr, align 8, !tbaa !1
  store i8 %322, i8* %incdec.ptr511, align 1, !tbaa !24
  br label %for.inc.512

for.inc.512:                                      ; preds = %for.end.505
  %324 = load i32, i32* %i252, align 4, !tbaa !23
  %inc513 = add nsw i32 %324, 1
  store i32 %inc513, i32* %i252, align 4, !tbaa !23
  br label %for.cond.253

for.end.514:                                      ; preds = %for.cond.253
  %325 = bitcast i32* %i252 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %325) #2
  %326 = bitcast i32* %oldErr251 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %326) #2
  call void @llvm.lifetime.end(i64 1, i8* %bitmask250) #2
  call void @llvm.lifetime.end(i64 1, i8* %mb249) #2
  call void @llvm.lifetime.end(i64 1, i8* %yb248) #2
  call void @llvm.lifetime.end(i64 1, i8* %cb247) #2
  call void @llvm.lifetime.end(i64 1, i8* %ma246) #2
  call void @llvm.lifetime.end(i64 1, i8* %ya245) #2
  call void @llvm.lifetime.end(i64 1, i8* %ca244) #2
  br label %if.end.515

if.end.515:                                       ; preds = %for.end.514, %for.end.243
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @print_c2plane(%struct._IO_FILE* %prn_stream, i8 signext %plane_code, i32 %plane_size, i8* %curr, i8* %out_data) #1 {
entry:
  %prn_stream.addr = alloca %struct._IO_FILE*, align 8
  %plane_code.addr = alloca i8, align 1
  %plane_size.addr = alloca i32, align 4
  %curr.addr = alloca i8*, align 8
  %out_data.addr = alloca i8*, align 8
  %out_count = alloca i32, align 4
  store %struct._IO_FILE* %prn_stream, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  store i8 %plane_code, i8* %plane_code.addr, align 1, !tbaa !24
  store i32 %plane_size, i32* %plane_size.addr, align 4, !tbaa !23
  store i8* %curr, i8** %curr.addr, align 8, !tbaa !1
  store i8* %out_data, i8** %out_data.addr, align 8, !tbaa !1
  %0 = bitcast i32* %out_count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load i8*, i8** %curr.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to i64*
  %3 = load i8*, i8** %curr.addr, align 8, !tbaa !1
  %4 = load i32, i32* %plane_size.addr, align 4, !tbaa !23
  %idx.ext = sext i32 %4 to i64
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %idx.ext
  %add.ptr1 = getelementptr inbounds i8, i8* %add.ptr, i64 -2
  %5 = bitcast i8* %add.ptr1 to i64*
  %6 = load i8*, i8** %out_data.addr, align 8, !tbaa !1
  %call = call i32 @gdev_pcl_mode2compress(i64* %2, i64* %5, i8* %6) #6
  store i32 %call, i32* %out_count, align 4, !tbaa !23
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %8 = load i32, i32* %out_count, align 4, !tbaa !23
  %9 = load i8, i8* %plane_code.addr, align 1, !tbaa !24
  %conv = sext i8 %9 to i32
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.45, i32 0, i32 0), i32 %8, i32 %conv) #6
  %10 = load i32, i32* %out_count, align 4, !tbaa !23
  %cmp = icmp sgt i32 %10, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %11 = load i8*, i8** %out_data.addr, align 8, !tbaa !1
  %12 = load i32, i32* %out_count, align 4, !tbaa !23
  %conv4 = sext i32 %12 to i64
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call5 = call i64 @fwrite(i8* %11, i64 1, i64 %conv4, %struct._IO_FILE* %13) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %14 = bitcast i32* %out_count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %14) #2
  ret void
}

declare i32 @gdev_pcl_mode2compress(i64*, i64*, i8*) #0

; Function Attrs: nounwind uwtable
define internal void @assign_dpi(i32 %dpi, i8* %msb) #1 {
entry:
  %dpi.addr = alloca i32, align 4
  %msb.addr = alloca i8*, align 8
  store i32 %dpi, i32* %dpi.addr, align 4, !tbaa !23
  store i8* %msb, i8** %msb.addr, align 8, !tbaa !1
  %0 = load i32, i32* %dpi.addr, align 4, !tbaa !23
  %cmp = icmp eq i32 %0, 600
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %msb.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 0
  store i8 2, i8* %arrayidx, align 1, !tbaa !24
  %2 = load i8*, i8** %msb.addr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds i8, i8* %2, i64 1
  store i8 88, i8* %arrayidx1, align 1, !tbaa !24
  br label %if.end

if.else:                                          ; preds = %entry
  %3 = load i8*, i8** %msb.addr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds i8, i8* %3, i64 0
  store i8 1, i8* %arrayidx2, align 1, !tbaa !24
  %4 = load i8*, i8** %msb.addr, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds i8, i8* %4, i64 1
  store i8 44, i8* %arrayidx3, align 1, !tbaa !24
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @copy_color_data(i8* %dest, i8* %src, i32 %n) #1 {
entry:
  %dest.addr = alloca i8*, align 8
  %src.addr = alloca i8*, align 8
  %n.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %d = alloca i64*, align 8
  %s = alloca i64*, align 8
  store i8* %dest, i8** %dest.addr, align 8, !tbaa !1
  store i8* %src, i8** %src.addr, align 8, !tbaa !1
  store i32 %n, i32* %n.addr, align 4, !tbaa !23
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load i32, i32* %n.addr, align 4, !tbaa !23
  %div = sdiv i32 %1, 4
  store i32 %div, i32* %i, align 4, !tbaa !23
  %2 = bitcast i64** %d to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #2
  %3 = load i8*, i8** %dest.addr, align 8, !tbaa !1
  %4 = bitcast i8* %3 to i64*
  store i64* %4, i64** %d, align 8, !tbaa !1
  %5 = bitcast i64** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #2
  %6 = load i8*, i8** %src.addr, align 8, !tbaa !1
  %7 = bitcast i8* %6 to i64*
  store i64* %7, i64** %s, align 8, !tbaa !1
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %8 = load i32, i32* %i, align 4, !tbaa !23
  %dec = add nsw i32 %8, -1
  store i32 %dec, i32* %i, align 4, !tbaa !23
  %cmp = icmp sgt i32 %8, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %9 = load i64*, i64** %s, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i64, i64* %9, i32 1
  store i64* %incdec.ptr, i64** %s, align 8, !tbaa !1
  %10 = load i64, i64* %9, align 8, !tbaa !65
  %11 = load i64*, i64** %d, align 8, !tbaa !1
  %incdec.ptr1 = getelementptr inbounds i64, i64* %11, i32 1
  store i64* %incdec.ptr1, i64** %d, align 8, !tbaa !1
  store i64 %10, i64* %11, align 8, !tbaa !65
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %12 = load i32, i32* %n.addr, align 4, !tbaa !23
  %13 = bitcast i64** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %13) #2
  %14 = bitcast i64** %d to i8*
  call void @llvm.lifetime.end(i64 8, i8* %14) #2
  %15 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %15) #2
  ret i32 %12
}

; Function Attrs: nounwind uwtable
define internal void @print_c3plane(%struct._IO_FILE* %prn_stream, i8 signext %plane_code, i32 %plane_size, i8* %curr, i8* %prev, i8* %out_data) #1 {
entry:
  %prn_stream.addr = alloca %struct._IO_FILE*, align 8
  %plane_code.addr = alloca i8, align 1
  %plane_size.addr = alloca i32, align 4
  %curr.addr = alloca i8*, align 8
  %prev.addr = alloca i8*, align 8
  %out_data.addr = alloca i8*, align 8
  %out_count = alloca i32, align 4
  store %struct._IO_FILE* %prn_stream, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  store i8 %plane_code, i8* %plane_code.addr, align 1, !tbaa !24
  store i32 %plane_size, i32* %plane_size.addr, align 4, !tbaa !23
  store i8* %curr, i8** %curr.addr, align 8, !tbaa !1
  store i8* %prev, i8** %prev.addr, align 8, !tbaa !1
  store i8* %out_data, i8** %out_data.addr, align 8, !tbaa !1
  %0 = bitcast i32* %out_count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load i32, i32* %plane_size.addr, align 4, !tbaa !23
  %2 = load i8*, i8** %curr.addr, align 8, !tbaa !1
  %3 = load i8*, i8** %prev.addr, align 8, !tbaa !1
  %4 = load i8*, i8** %out_data.addr, align 8, !tbaa !1
  %call = call i32 @gdev_pcl_mode3compress(i32 %1, i8* %2, i8* %3, i8* %4) #6
  store i32 %call, i32* %out_count, align 4, !tbaa !23
  %5 = load i32, i32* %out_count, align 4, !tbaa !23
  %cmp = icmp sgt i32 %5, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %7 = load i32, i32* %out_count, align 4, !tbaa !23
  %8 = load i8, i8* %plane_code.addr, align 1, !tbaa !24
  %conv = sext i8 %8 to i32
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.45, i32 0, i32 0), i32 %7, i32 %conv) #6
  %9 = load i8*, i8** %out_data.addr, align 8, !tbaa !1
  %10 = load i32, i32* %out_count, align 4, !tbaa !23
  %conv2 = sext i32 %10 to i64
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call3 = call i64 @fwrite(i8* %9, i64 1, i64 %conv2, %struct._IO_FILE* %11) #6
  br label %if.end

if.else:                                          ; preds = %entry
  %12 = load i8, i8* %plane_code.addr, align 1, !tbaa !24
  %conv4 = sext i8 %12 to i32
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call5 = call i32 @_IO_putc(i32 %conv4, %struct._IO_FILE* %13) #6
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %14 = bitcast i32* %out_count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %14) #2
  ret void
}

declare i32 @gdev_pcl_mode3compress(i32, i8*, i8*, i8*) #0

declare i32 @_IO_putc(i32, %struct._IO_FILE*) #0

attributes #0 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nobuiltin nounwind }
attributes #6 = { nobuiltin }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !7, i64 18504}
!6 = !{!"gx_device_cdj850_s", !7, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !7, i64 40, !2, i64 48, !8, i64 56, !7, i64 80, !7, i64 84, !7, i64 88, !10, i64 96, !13, i64 816, !7, i64 832, !7, i64 836, !7, i64 840, !7, i64 844, !7, i64 848, !7, i64 852, !3, i64 856, !3, i64 864, !7, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !9, i64 928, !9, i64 936, !7, i64 944, !7, i64 948, !7, i64 952, !7, i64 956, !7, i64 960, !9, i64 968, !9, i64 976, !14, i64 984, !7, i64 1052, !7, i64 1056, !15, i64 1064, !2, i64 1104, !3, i64 1112, !17, i64 1120, !18, i64 1144, !3, i64 1728, !19, i64 12968, !3, i64 13056, !7, i64 17152, !7, i64 17156, !7, i64 17160, !7, i64 17164, !7, i64 17168, !7, i64 17172, !2, i64 17176, !9, i64 17184, !2, i64 17192, !2, i64 17200, !2, i64 17208, !2, i64 17216, !2, i64 17224, !7, i64 17232, !2, i64 17240, !7, i64 17248, !7, i64 17252, !21, i64 17256, !7, i64 17288, !2, i64 17296, !18, i64 17304, !18, i64 17888, !7, i64 18472, !7, i64 18476, !7, i64 18480, !7, i64 18484, !7, i64 18488, !7, i64 18492, !7, i64 18496, !7, i64 18500, !7, i64 18504, !7, i64 18508, !22, i64 18512, !22, i64 18516, !22, i64 18520, !22, i64 18524, !22, i64 18528, !22, i64 18532, !2, i64 18536, !2, i64 18544, !2, i64 18552}
!7 = !{!"int", !3, i64 0}
!8 = !{!"rc_header_s", !9, i64 0, !2, i64 8, !2, i64 16}
!9 = !{!"long", !3, i64 0}
!10 = !{!"gx_device_color_info_s", !7, i64 0, !7, i64 4, !3, i64 8, !11, i64 12, !3, i64 14, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !12, i64 32, !3, i64 40, !3, i64 44, !3, i64 108, !3, i64 176, !2, i64 688, !3, i64 696, !9, i64 704, !7, i64 712}
!11 = !{!"short", !3, i64 0}
!12 = !{!"gx_device_anti_alias_info_s", !7, i64 0, !7, i64 4}
!13 = !{!"gx_device_cached_colors_s", !9, i64 0, !9, i64 8}
!14 = !{!"gx_stroked_gradient_recognizer_s", !7, i64 0, !3, i64 4, !3, i64 36}
!15 = !{!"gdev_space_params_s", !9, i64 0, !9, i64 8, !16, i64 16, !7, i64 32, !3, i64 36}
!16 = !{!"gx_band_params_s", !7, i64 0, !7, i64 4, !9, i64 8}
!17 = !{!"gx_page_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16}
!18 = !{!"gx_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176, !2, i64 184, !2, i64 192, !2, i64 200, !2, i64 208, !2, i64 216, !2, i64 224, !2, i64 232, !2, i64 240, !2, i64 248, !2, i64 256, !2, i64 264, !2, i64 272, !2, i64 280, !2, i64 288, !2, i64 296, !2, i64 304, !2, i64 312, !2, i64 320, !2, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !2, i64 376, !2, i64 384, !2, i64 392, !2, i64 400, !2, i64 408, !2, i64 416, !2, i64 424, !2, i64 432, !2, i64 440, !2, i64 448, !2, i64 456, !2, i64 464, !2, i64 472, !2, i64 480, !2, i64 488, !2, i64 496, !2, i64 504, !2, i64 512, !2, i64 520, !2, i64 528, !2, i64 536, !2, i64 544, !2, i64 552, !2, i64 560, !2, i64 568, !2, i64 576}
!19 = !{!"gx_printer_device_procs_s", !2, i64 0, !2, i64 8, !20, i64 16, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80}
!20 = !{!"gx_device_buf_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24}
!21 = !{!"bg_print_s", !2, i64 0, !2, i64 8, !2, i64 16, !7, i64 24, !7, i64 28}
!22 = !{!"float", !3, i64 0}
!23 = !{!7, !7, i64 0}
!24 = !{!3, !3, i64 0}
!25 = !{!6, !22, i64 18532}
!26 = !{!27, !2, i64 24}
!27 = !{!"gx_device_printer_s", !7, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !7, i64 40, !2, i64 48, !8, i64 56, !7, i64 80, !7, i64 84, !7, i64 88, !10, i64 96, !13, i64 816, !7, i64 832, !7, i64 836, !7, i64 840, !7, i64 844, !7, i64 848, !7, i64 852, !3, i64 856, !3, i64 864, !7, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !9, i64 928, !9, i64 936, !7, i64 944, !7, i64 948, !7, i64 952, !7, i64 956, !7, i64 960, !9, i64 968, !9, i64 976, !14, i64 984, !7, i64 1052, !7, i64 1056, !15, i64 1064, !2, i64 1104, !3, i64 1112, !17, i64 1120, !18, i64 1144, !3, i64 1728, !19, i64 12968, !3, i64 13056, !7, i64 17152, !7, i64 17156, !7, i64 17160, !7, i64 17164, !7, i64 17168, !7, i64 17172, !2, i64 17176, !9, i64 17184, !2, i64 17192, !2, i64 17200, !2, i64 17208, !2, i64 17216, !2, i64 17224, !7, i64 17232, !2, i64 17240, !7, i64 17248, !7, i64 17252, !21, i64 17256, !7, i64 17288, !2, i64 17296, !18, i64 17304, !18, i64 17888}
!28 = !{!29, !2, i64 200}
!29 = !{!"gs_memory_s", !2, i64 0, !30, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!30 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!31 = !{!29, !2, i64 88}
!32 = !{!33, !7, i64 76}
!33 = !{!"misc_struct", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !7, i64 32, !7, i64 36, !7, i64 40, !7, i64 44, !7, i64 48, !7, i64 52, !7, i64 56, !7, i64 60, !7, i64 64, !7, i64 68, !7, i64 72, !7, i64 76, !7, i64 80, !7, i64 84}
!34 = !{!35, !2, i64 520}
!35 = !{!"ptr_arrays", !3, i64 0, !3, i64 32, !3, i64 64, !3, i64 192, !2, i64 448, !3, i64 456, !3, i64 488, !3, i64 504, !2, i64 520, !2, i64 528, !2, i64 536, !2, i64 544}
!36 = !{!6, !2, i64 18536}
!37 = !{!33, !7, i64 12}
!38 = !{!6, !2, i64 18552}
!39 = !{!29, !2, i64 24}
!40 = !{i64 0, i64 26, !24}
!41 = !{!6, !7, i64 18492}
!42 = !{!22, !22, i64 0}
!43 = !{!6, !7, i64 18496}
!44 = !{!6, !7, i64 18500}
!45 = !{!6, !7, i64 18484}
!46 = !{!6, !7, i64 18488}
!47 = !{!6, !7, i64 18508}
!48 = !{!33, !7, i64 60}
!49 = !{!33, !7, i64 40}
!50 = !{!33, !7, i64 84}
!51 = !{!33, !7, i64 32}
!52 = !{!33, !7, i64 16}
!53 = !{!35, !2, i64 448}
!54 = !{!33, !7, i64 68}
!55 = !{!33, !7, i64 64}
!56 = !{!33, !7, i64 24}
!57 = !{!27, !7, i64 832}
!58 = !{!27, !7, i64 100}
!59 = !{!29, !2, i64 64}
!60 = !{!27, !7, i64 836}
!61 = !{!6, !7, i64 832}
!62 = !{!63, !7, i64 100}
!63 = !{!"gx_device_s", !7, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !7, i64 40, !2, i64 48, !8, i64 56, !7, i64 80, !7, i64 84, !7, i64 88, !10, i64 96, !13, i64 816, !7, i64 832, !7, i64 836, !7, i64 840, !7, i64 844, !7, i64 848, !7, i64 852, !3, i64 856, !3, i64 864, !7, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !9, i64 928, !9, i64 936, !7, i64 944, !7, i64 948, !7, i64 952, !7, i64 956, !7, i64 960, !9, i64 968, !9, i64 976, !14, i64 984, !7, i64 1052, !7, i64 1056, !15, i64 1064, !2, i64 1104, !3, i64 1112, !17, i64 1120, !18, i64 1144}
!64 = !{!63, !11, i64 108}
!65 = !{!9, !9, i64 0}
!66 = !{!11, !11, i64 0}
!67 = !{!6, !22, i64 18512}
!68 = !{!6, !22, i64 18516}
!69 = !{!6, !22, i64 18520}
!70 = !{!6, !22, i64 18524}
!71 = !{!6, !22, i64 18528}
!72 = !{!73, !7, i64 18472}
!73 = !{!"", !7, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !7, i64 40, !2, i64 48, !8, i64 56, !7, i64 80, !7, i64 84, !7, i64 88, !10, i64 96, !13, i64 816, !7, i64 832, !7, i64 836, !7, i64 840, !7, i64 844, !7, i64 848, !7, i64 852, !3, i64 856, !3, i64 864, !7, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !9, i64 928, !9, i64 936, !7, i64 944, !7, i64 948, !7, i64 952, !7, i64 956, !7, i64 960, !9, i64 968, !9, i64 976, !14, i64 984, !7, i64 1052, !7, i64 1056, !15, i64 1064, !2, i64 1104, !3, i64 1112, !17, i64 1120, !18, i64 1144, !3, i64 1728, !19, i64 12968, !3, i64 13056, !7, i64 17152, !7, i64 17156, !7, i64 17160, !7, i64 17164, !7, i64 17168, !7, i64 17172, !2, i64 17176, !9, i64 17184, !2, i64 17192, !2, i64 17200, !2, i64 17208, !2, i64 17216, !2, i64 17224, !7, i64 17232, !2, i64 17240, !7, i64 17248, !7, i64 17252, !21, i64 17256, !7, i64 17288, !2, i64 17296, !18, i64 17304, !18, i64 17888, !7, i64 18472, !7, i64 18476, !7, i64 18480}
!74 = !{!10, !11, i64 12}
!75 = !{!73, !7, i64 18476}
!76 = !{!63, !2, i64 1264}
!77 = !{!63, !2, i64 1184}
!78 = !{!63, !2, i64 1192}
!79 = !{!63, !7, i64 84}
!80 = !{!10, !7, i64 4}
!81 = !{!10, !7, i64 20}
!82 = !{!10, !7, i64 16}
!83 = !{!10, !7, i64 24}
!84 = !{!10, !7, i64 28}
!85 = !{!86, !2, i64 0}
!86 = !{!"gs_param_list_s", !2, i64 0, !2, i64 8, !7, i64 16}
!87 = !{!88, !2, i64 56}
!88 = !{!"gs_param_list_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64}
!89 = !{i64 0, i64 4, !23, i64 4, i64 4, !23, i64 8, i64 4, !24, i64 12, i64 2, !66, i64 14, i64 1, !24, i64 16, i64 4, !23, i64 20, i64 4, !23, i64 24, i64 4, !23, i64 28, i64 4, !23, i64 32, i64 4, !23, i64 36, i64 4, !23, i64 40, i64 4, !24, i64 44, i64 64, !24, i64 108, i64 64, !24, i64 176, i64 512, !24, i64 688, i64 8, !1, i64 696, i64 4, !24, i64 704, i64 8, !65, i64 712, i64 4, !23}
!90 = !{!6, !11, i64 108}
!91 = !{!33, !7, i64 0}
!92 = !{!33, !7, i64 4}
!93 = !{!33, !7, i64 8}
!94 = !{!27, !11, i64 108}
!95 = !{!33, !7, i64 20}
!96 = !{!33, !7, i64 28}
!97 = !{!33, !7, i64 48}
!98 = !{!33, !7, i64 52}
!99 = !{!33, !7, i64 36}
!100 = !{!33, !7, i64 44}
!101 = !{!33, !7, i64 56}
!102 = !{!103, !7, i64 12}
!103 = !{!"error_val_field", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12}
!104 = !{!103, !7, i64 8}
!105 = !{!103, !7, i64 4}
!106 = !{!103, !7, i64 0}
!107 = !{!33, !7, i64 72}
!108 = !{!6, !2, i64 18544}
