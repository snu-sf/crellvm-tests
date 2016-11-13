; ModuleID = './gdevlx7.bc'
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
%struct.lxm_device_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [11240 x i8], %struct.gx_printer_device_procs_s, [4096 x i8], i32, i32, i32, i32, i32, i32, %struct._IO_FILE*, i64, i8*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s*, i32)*, %struct.gx_page_queue_s*, i32, %struct.gx_device_printer_s*, i32, i32, %struct.bg_print_s, i32, %struct.gx_saved_pages_list_s*, %struct.gx_device_procs_s, %struct.gx_device_procs_s, i32, i8*, i32, i8*, i32, i32 }

@lxm7000m_procs = internal constant %struct.gx_device_procs_s { i32 (%struct.gx_device_s*)* @gdev_prn_open, void (%struct.gx_device_s*, %struct.gs_matrix_s*)* null, i32 (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i32, i32)* @gdev_prn_output_page, i32 (%struct.gx_device_s*)* @gdev_prn_close, i64 (%struct.gx_device_s*, i16*)* @gx_default_b_w_map_rgb_color, i32 (%struct.gx_device_s*, i64, i16*)* @gx_default_b_w_map_color_rgb, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* null, i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* null, i32 (%struct.gx_device_s*, i32, i8*, i8**)* null, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @lxm_get_params, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @lxm_put_params, i64 (%struct.gx_device_s*, i16*)* null, %struct.gx_xfont_procs_s* (%struct.gx_device_s*)* null, %struct.gx_device_s* (%struct.gx_device_s*)* null, i64 (%struct.gx_device_s*, i16, i16, i16, i16)* null, %struct.gx_device_s* (%struct.gx_device_s*)* @gx_page_device_get_page_device, i32 (%struct.gx_device_s*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)* null, i32 (%struct.gx_device_s*, i32, i32*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* null, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)* null, i32 (%struct.gx_device_s*, i64, i16*)* null, i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)* null, i32 (%struct.gx_device_s*, %struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_transparency_group_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gx_transparency_mask_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32)* null, i64 (%struct.gx_device_s*, i16*)* @gx_default_b_w_map_rgb_color, i32 (%struct.gx_device_s*, i64, i16*)* @gx_default_b_w_map_color_rgb, i32 (%struct.gx_device_s*, i64, %struct.gs_pattern1_instance_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* null, %struct.gs_devn_params_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i8*, i32)* @gdev_prn_dev_spec_op, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)* @gx_default_get_profile, void (%struct.gx_device_s*, i32)* @gx_default_set_graphics_type_tag, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_process_page_options_s*)* null }, align 8
@.str = private unnamed_addr constant [8 x i8] c"lex7000\00", align 1
@st_device_printer = external constant %struct.gs_memory_struct_type_s, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"DeviceGray\00", align 1
@lx7_fullinit = internal global [25 x i8] c"\1B*m\00@\10\03\10\11\1B*\07s0\1B*\07c\1B*m\00B\00\00", align 16
@lx7_pageinit = internal global [21 x i8] c"\1B*\07s0\1B*\07s0\1B*\07c\1B*m\00B\00\00", align 16
@gs_lex7000_device = global { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [11240 x i8], { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* }, [4096 x i8], i32, i32, i32, i32, i32, i32, %struct._IO_FILE*, i64, i8*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s*, i32)*, %struct.gx_page_queue_s*, i32, %struct.gx_device_printer_s*, i32, i32, %struct.bg_print_s, i32, %struct.gx_saved_pages_list_s*, %struct.gx_device_procs_s, %struct.gx_device_procs_s, i32, i8*, i32, i8*, i32, i32 } { i32 18512, %struct.gx_device_procs_s* @lxm7000m_procs, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), %struct.gs_memory_s* null, %struct.gs_memory_struct_type_s* @st_device_printer, i32 0, void (%struct.gx_device_s*)* null, %struct.rc_header_s zeroinitializer, i32 0, i32 0, i32 0, %struct.gx_device_color_info_s { i32 1, i32 1, i32 1, i16 1, i8 0, i32 1, i32 0, i32 2, i32 1, %struct.gx_device_anti_alias_info_s { i32 1, i32 1 }, i32 -1, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [64 x i64] zeroinitializer, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 -1, i64 0, i32 0 }, %struct.gx_device_cached_colors_s { i64 -1, i64 -1 }, i32 5100, i32 6600, i32 0, i32 0, i32 0, i32 0, [2 x float] [float 6.120000e+02, float 7.920000e+02], [4 x float] zeroinitializer, i32 0, [2 x float] [float 6.000000e+02, float 6.000000e+02], [2 x float] [float 6.000000e+02, float 6.000000e+02], [2 x float] [float -0.000000e+00, float -6.000000e+01], [4 x float] [float 0.000000e+00, float 0x401CCCCCC0000000, float 0x40359999A0000000, float 0x401CCCCCC0000000], i64 0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, %struct.gx_stroked_gradient_recognizer_s zeroinitializer, i32 0, i32 0, %struct.gdev_space_params_s { i64 10000000, i64 4000000, %struct.gx_band_params_s zeroinitializer, i32 0, i32 0 }, %struct.cmm_dev_profile_s* null, i32 0, %struct.gx_page_device_procs_s { i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_install, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_begin_page, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* @gx_default_end_page }, %struct.gx_device_procs_s zeroinitializer, [11240 x i8] zeroinitializer, { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* } { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)* @lxmgen_print_page, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_print_page_copies, %struct.gx_device_buf_procs_s { i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, %struct.gx_render_plane_s*, %struct.gs_memory_s*, %struct.gx_colors_usage_s*)* @gx_default_create_buf_device, i32 (%struct.gx_device_buf_space_s*, %struct.gx_device_s*, %struct.gx_render_plane_s*, i32, i32)* @gx_default_size_buf_device, i32 (%struct.gx_device_s*, i8*, i32, i8**, i32, i32, i32)* @gx_default_setup_buf_device, void (%struct.gx_device_s*)* @gx_default_destroy_buf_device }, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)* @gx_default_get_space_params, i32 (%struct.gdev_prn_start_render_params_s*)* @gx_default_start_render_thread, i32 (%struct.gx_device_printer_s*)* @gx_default_open_render_device, i32 (%struct.gx_device_printer_s*)* @gx_default_close_render_device, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_buffer_page }, [4096 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 -1, i32 0, %struct._IO_FILE* null, i64 0, i8* null, %struct.gs_memory_s* null, %struct.gs_memory_s* null, i32 (%struct.gx_device_s*, i32)* null, %struct.gx_page_queue_s* null, i32 0, %struct.gx_device_printer_s* null, i32 0, i32 0, %struct.bg_print_s zeroinitializer, i32 0, %struct.gx_saved_pages_list_s* null, %struct.gx_device_procs_s zeroinitializer, %struct.gx_device_procs_s zeroinitializer, i32 16, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @lx7_fullinit, i32 0, i32 0), i32 25, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @lx7_pageinit, i32 0, i32 0), i32 21, i32 0 }, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"lex5700\00", align 1
@gs_lex5700_device = global { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [11240 x i8], { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* }, [4096 x i8], i32, i32, i32, i32, i32, i32, %struct._IO_FILE*, i64, i8*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s*, i32)*, %struct.gx_page_queue_s*, i32, %struct.gx_device_printer_s*, i32, i32, %struct.bg_print_s, i32, %struct.gx_saved_pages_list_s*, %struct.gx_device_procs_s, %struct.gx_device_procs_s, i32, i8*, i32, i8*, i32, i32 } { i32 18512, %struct.gx_device_procs_s* @lxm7000m_procs, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), %struct.gs_memory_s* null, %struct.gs_memory_struct_type_s* @st_device_printer, i32 0, void (%struct.gx_device_s*)* null, %struct.rc_header_s zeroinitializer, i32 0, i32 0, i32 0, %struct.gx_device_color_info_s { i32 1, i32 1, i32 1, i16 1, i8 0, i32 1, i32 0, i32 2, i32 1, %struct.gx_device_anti_alias_info_s { i32 1, i32 1 }, i32 -1, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [64 x i64] zeroinitializer, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 -1, i64 0, i32 0 }, %struct.gx_device_cached_colors_s { i64 -1, i64 -1 }, i32 5100, i32 6600, i32 0, i32 0, i32 0, i32 0, [2 x float] [float 6.120000e+02, float 7.920000e+02], [4 x float] zeroinitializer, i32 0, [2 x float] [float 6.000000e+02, float 6.000000e+02], [2 x float] [float 6.000000e+02, float 6.000000e+02], [2 x float] [float -6.000000e+01, float -0.000000e+00], [4 x float] [float 0x401CCCCCC0000000, float 0x401CCCCCC0000000, float 0x401CCCCCC0000000, float 0.000000e+00], i64 0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, %struct.gx_stroked_gradient_recognizer_s zeroinitializer, i32 0, i32 0, %struct.gdev_space_params_s { i64 10000000, i64 4000000, %struct.gx_band_params_s zeroinitializer, i32 0, i32 0 }, %struct.cmm_dev_profile_s* null, i32 0, %struct.gx_page_device_procs_s { i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_install, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_begin_page, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* @gx_default_end_page }, %struct.gx_device_procs_s zeroinitializer, [11240 x i8] zeroinitializer, { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* } { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)* @lxmgen_print_page, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_print_page_copies, %struct.gx_device_buf_procs_s { i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, %struct.gx_render_plane_s*, %struct.gs_memory_s*, %struct.gx_colors_usage_s*)* @gx_default_create_buf_device, i32 (%struct.gx_device_buf_space_s*, %struct.gx_device_s*, %struct.gx_render_plane_s*, i32, i32)* @gx_default_size_buf_device, i32 (%struct.gx_device_s*, i8*, i32, i8**, i32, i32, i32)* @gx_default_setup_buf_device, void (%struct.gx_device_s*)* @gx_default_destroy_buf_device }, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)* @gx_default_get_space_params, i32 (%struct.gdev_prn_start_render_params_s*)* @gx_default_start_render_thread, i32 (%struct.gx_device_printer_s*)* @gx_default_open_render_device, i32 (%struct.gx_device_printer_s*)* @gx_default_close_render_device, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_buffer_page }, [4096 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 -1, i32 0, %struct._IO_FILE* null, i64 0, i8* null, %struct.gs_memory_s* null, %struct.gs_memory_s* null, i32 (%struct.gx_device_s*, i32)* null, %struct.gx_page_queue_s* null, i32 0, %struct.gx_device_printer_s* null, i32 0, i32 0, %struct.bg_print_s zeroinitializer, i32 0, %struct.gx_saved_pages_list_s* null, %struct.gx_device_procs_s zeroinitializer, %struct.gx_device_procs_s zeroinitializer, i32 16, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @lx7_fullinit, i32 0, i32 0), i32 25, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @lx7_pageinit, i32 0, i32 0), i32 21, i32 1 }, align 8
@.str.3 = private unnamed_addr constant [8 x i8] c"lex3200\00", align 1
@gs_lex3200_device = global { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [11240 x i8], { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* }, [4096 x i8], i32, i32, i32, i32, i32, i32, %struct._IO_FILE*, i64, i8*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s*, i32)*, %struct.gx_page_queue_s*, i32, %struct.gx_device_printer_s*, i32, i32, %struct.bg_print_s, i32, %struct.gx_saved_pages_list_s*, %struct.gx_device_procs_s, %struct.gx_device_procs_s, i32, i8*, i32, i8*, i32, i32 } { i32 18512, %struct.gx_device_procs_s* @lxm7000m_procs, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0), %struct.gs_memory_s* null, %struct.gs_memory_struct_type_s* @st_device_printer, i32 0, void (%struct.gx_device_s*)* null, %struct.rc_header_s zeroinitializer, i32 0, i32 0, i32 0, %struct.gx_device_color_info_s { i32 1, i32 1, i32 1, i16 1, i8 0, i32 1, i32 0, i32 2, i32 1, %struct.gx_device_anti_alias_info_s { i32 1, i32 1 }, i32 -1, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [64 x i64] zeroinitializer, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 -1, i64 0, i32 0 }, %struct.gx_device_cached_colors_s { i64 -1, i64 -1 }, i32 5100, i32 6600, i32 0, i32 0, i32 0, i32 0, [2 x float] [float 6.120000e+02, float 7.920000e+02], [4 x float] zeroinitializer, i32 0, [2 x float] [float 6.000000e+02, float 6.000000e+02], [2 x float] [float 6.000000e+02, float 6.000000e+02], [2 x float] [float -6.000000e+01, float -0.000000e+00], [4 x float] [float 0x401CCCCCC0000000, float 0x401CCCCCC0000000, float 0x401CCCCCC0000000, float 0.000000e+00], i64 0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, %struct.gx_stroked_gradient_recognizer_s zeroinitializer, i32 0, i32 0, %struct.gdev_space_params_s { i64 10000000, i64 4000000, %struct.gx_band_params_s zeroinitializer, i32 0, i32 0 }, %struct.cmm_dev_profile_s* null, i32 0, %struct.gx_page_device_procs_s { i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_install, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_begin_page, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* @gx_default_end_page }, %struct.gx_device_procs_s zeroinitializer, [11240 x i8] zeroinitializer, { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* } { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)* @lxmgen_print_page, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_print_page_copies, %struct.gx_device_buf_procs_s { i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, %struct.gx_render_plane_s*, %struct.gs_memory_s*, %struct.gx_colors_usage_s*)* @gx_default_create_buf_device, i32 (%struct.gx_device_buf_space_s*, %struct.gx_device_s*, %struct.gx_render_plane_s*, i32, i32)* @gx_default_size_buf_device, i32 (%struct.gx_device_s*, i8*, i32, i8**, i32, i32, i32)* @gx_default_setup_buf_device, void (%struct.gx_device_s*)* @gx_default_destroy_buf_device }, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)* @gx_default_get_space_params, i32 (%struct.gdev_prn_start_render_params_s*)* @gx_default_start_render_thread, i32 (%struct.gx_device_printer_s*)* @gx_default_open_render_device, i32 (%struct.gx_device_printer_s*)* @gx_default_close_render_device, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_buffer_page }, [4096 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 -1, i32 0, %struct._IO_FILE* null, i64 0, i8* null, %struct.gs_memory_s* null, %struct.gs_memory_s* null, i32 (%struct.gx_device_s*, i32)* null, %struct.gx_page_queue_s* null, i32 0, %struct.gx_device_printer_s* null, i32 0, i32 0, %struct.bg_print_s zeroinitializer, i32 0, %struct.gx_saved_pages_list_s* null, %struct.gx_device_procs_s zeroinitializer, %struct.gx_device_procs_s zeroinitializer, i32 16, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @lx7_fullinit, i32 0, i32 0), i32 25, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @lx7_pageinit, i32 0, i32 0), i32 21, i32 2 }, align 8
@.str.4 = private unnamed_addr constant [8 x i8] c"lex2050\00", align 1
@gs_lex2050_device = global { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [11240 x i8], { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* }, [4096 x i8], i32, i32, i32, i32, i32, i32, %struct._IO_FILE*, i64, i8*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s*, i32)*, %struct.gx_page_queue_s*, i32, %struct.gx_device_printer_s*, i32, i32, %struct.bg_print_s, i32, %struct.gx_saved_pages_list_s*, %struct.gx_device_procs_s, %struct.gx_device_procs_s, i32, i8*, i32, i8*, i32, i32 } { i32 18512, %struct.gx_device_procs_s* @lxm7000m_procs, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), %struct.gs_memory_s* null, %struct.gs_memory_struct_type_s* @st_device_printer, i32 0, void (%struct.gx_device_s*)* null, %struct.rc_header_s zeroinitializer, i32 0, i32 0, i32 0, %struct.gx_device_color_info_s { i32 1, i32 1, i32 1, i16 1, i8 0, i32 1, i32 0, i32 2, i32 1, %struct.gx_device_anti_alias_info_s { i32 1, i32 1 }, i32 -1, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [64 x i64] zeroinitializer, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 -1, i64 0, i32 0 }, %struct.gx_device_cached_colors_s { i64 -1, i64 -1 }, i32 5100, i32 6600, i32 0, i32 0, i32 0, i32 0, [2 x float] [float 6.120000e+02, float 7.920000e+02], [4 x float] zeroinitializer, i32 0, [2 x float] [float 6.000000e+02, float 6.000000e+02], [2 x float] [float 6.000000e+02, float 6.000000e+02], [2 x float] [float -6.000000e+01, float -0.000000e+00], [4 x float] [float 0x401CCCCCC0000000, float 0x401CCCCCC0000000, float 0x401CCCCCC0000000, float 0.000000e+00], i64 0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, %struct.gx_stroked_gradient_recognizer_s zeroinitializer, i32 0, i32 0, %struct.gdev_space_params_s { i64 10000000, i64 4000000, %struct.gx_band_params_s zeroinitializer, i32 0, i32 0 }, %struct.cmm_dev_profile_s* null, i32 0, %struct.gx_page_device_procs_s { i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_install, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_begin_page, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* @gx_default_end_page }, %struct.gx_device_procs_s zeroinitializer, [11240 x i8] zeroinitializer, { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* } { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)* @lxmgen_print_page, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_print_page_copies, %struct.gx_device_buf_procs_s { i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, %struct.gx_render_plane_s*, %struct.gs_memory_s*, %struct.gx_colors_usage_s*)* @gx_default_create_buf_device, i32 (%struct.gx_device_buf_space_s*, %struct.gx_device_s*, %struct.gx_render_plane_s*, i32, i32)* @gx_default_size_buf_device, i32 (%struct.gx_device_s*, i8*, i32, i8**, i32, i32, i32)* @gx_default_setup_buf_device, void (%struct.gx_device_s*)* @gx_default_destroy_buf_device }, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)* @gx_default_get_space_params, i32 (%struct.gdev_prn_start_render_params_s*)* @gx_default_start_render_thread, i32 (%struct.gx_device_printer_s*)* @gx_default_open_render_device, i32 (%struct.gx_device_printer_s*)* @gx_default_close_render_device, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_buffer_page }, [4096 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 -1, i32 0, %struct._IO_FILE* null, i64 0, i8* null, %struct.gs_memory_s* null, %struct.gs_memory_s* null, i32 (%struct.gx_device_s*, i32)* null, %struct.gx_page_queue_s* null, i32 0, %struct.gx_device_printer_s* null, i32 0, i32 0, %struct.bg_print_s zeroinitializer, i32 0, %struct.gx_saved_pages_list_s* null, %struct.gx_device_procs_s zeroinitializer, %struct.gx_device_procs_s zeroinitializer, i32 16, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @lx7_fullinit, i32 0, i32 0), i32 25, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @lx7_pageinit, i32 0, i32 0), i32 21, i32 3 }, align 8
@.str.5 = private unnamed_addr constant [15 x i8] c"HeadSeparation\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"lxmgen_print_page(pbuf)\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"lxmgen_print_page(outbuf)\00", align 1
@outb = internal global [26 x i8] c"\1B*\04\00\00\FF\FF\00\02\01\01\1A\11\FF\FF\FF\FF\FF\FF\00\00\223DU\01", align 16
@lxmgen_print_page.mspeed = private unnamed_addr constant [3 x i8] c"\01\02\05", align 1
@lxmgen_print_page.mult = private unnamed_addr constant [3 x i32] [i32 4, i32 2, i32 1], align 4
@paper_shift.buf = private unnamed_addr constant [5 x i8] c"\1B*\03\00\00", align 1
@ofs8 = internal global [8 x i8] c"\80@ \10\08\04\02\01", align 1
@print_cols.mask = private unnamed_addr constant [8 x i8] c"\80@ \10\08\04\02\01", align 1
@print_cols.mask16 = private unnamed_addr constant [16 x i32] [i32 32768, i32 16384, i32 8192, i32 4096, i32 2048, i32 1024, i32 512, i32 256, i32 128, i32 64, i32 32, i32 16, i32 8, i32 4, i32 2, i32 1], align 16
@lex_eject.buf = private unnamed_addr constant [4 x i8] c"\1B*\07e", align 1

declare i32 @gx_default_install(%struct.gx_device_s*, %struct.gs_state_s*) #0

declare i32 @gx_default_begin_page(%struct.gx_device_s*, %struct.gs_state_s*) #0

declare i32 @gx_default_end_page(%struct.gx_device_s*, i32, %struct.gs_state_s*) #0

; Function Attrs: nounwind uwtable
define internal i32 @lxmgen_print_page(%struct.gx_device_printer_s* %pdev, %struct._IO_FILE* %prn_stream) #1 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_printer_s*, align 8
  %prn_stream.addr = alloca %struct._IO_FILE*, align 8
  %pheight = alloca i32, align 4
  %bwidth = alloca i32, align 4
  %prest = alloca i32, align 4
  %brest = alloca i32, align 4
  %skipline = alloca i32, align 4
  %pbuf = alloca i8*, align 8
  %ppbuf = alloca i8*, align 8
  %ppbuf2 = alloca i8*, align 8
  %outbuf = alloca i8*, align 8
  %pbufsize = alloca i32, align 4
  %rpbufsize = alloca i32, align 4
  %hres = alloca i32, align 4
  %vres = alloca i32, align 4
  %interlaced = alloca i32, align 4
  %lr_shift = alloca i32, align 4
  %obp = alloca [208 x i8*], align 16
  %bufHeight = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %mspeed = alloca [3 x i8], align 1
  %i = alloca i32, align 4
  %i98 = alloca i32, align 4
  %i131 = alloca i32, align 4
  %leftmost = alloca i32, align 4
  %rightmost = alloca i32, align 4
  %c1200 = alloca i32, align 4
  %mult = alloca [3 x i32], align 4
  %j = alloca i32, align 4
  store %struct.gx_device_printer_s* %pdev, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  store %struct._IO_FILE* %prn_stream, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %0 = bitcast i32* %pheight to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %1, i32 0, i32 14
  %2 = load i32, i32* %height, align 4, !tbaa !5
  store i32 %2, i32* %pheight, align 4, !tbaa !22
  %3 = bitcast i32* %bwidth to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %5 = bitcast %struct.gx_device_printer_s* %4 to %struct.gx_device_s*
  %6 = bitcast %struct.gx_device_s* %5 to %struct.gx_device_printer_s*
  %7 = bitcast %struct.gx_device_printer_s* %6 to %struct.gx_device_s*
  %call = call i32 @gx_device_raster(%struct.gx_device_s* %7, i32 0) #5
  store i32 %call, i32* %bwidth, align 4, !tbaa !22
  %8 = bitcast i32* %prest to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #2
  %9 = load i32, i32* %pheight, align 4, !tbaa !22
  store i32 %9, i32* %prest, align 4, !tbaa !22
  %10 = bitcast i32* %brest to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #2
  %11 = bitcast i32* %skipline to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #2
  store i32 208, i32* %skipline, align 4, !tbaa !22
  %12 = bitcast i8** %pbuf to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #2
  %13 = bitcast i8** %ppbuf to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #2
  %14 = bitcast i8** %ppbuf2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #2
  %15 = bitcast i8** %outbuf to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15) #2
  %16 = bitcast i32* %pbufsize to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #2
  %17 = bitcast i32* %rpbufsize to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #2
  %18 = bitcast i32* %hres to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #2
  %19 = bitcast i32* %vres to i8*
  call void @llvm.lifetime.start(i64 4, i8* %19) #2
  %20 = bitcast i32* %interlaced to i8*
  call void @llvm.lifetime.start(i64 4, i8* %20) #2
  %21 = bitcast i32* %lr_shift to i8*
  call void @llvm.lifetime.start(i64 4, i8* %21) #2
  %22 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %23 = bitcast %struct.gx_device_printer_s* %22 to %struct.lxm_device_s*
  %headSeparation = getelementptr inbounds %struct.lxm_device_s, %struct.lxm_device_s* %23, i32 0, i32 68
  %24 = load i32, i32* %headSeparation, align 4, !tbaa !23
  store i32 %24, i32* %lr_shift, align 4, !tbaa !22
  %25 = bitcast [208 x i8*]* %obp to i8*
  call void @llvm.lifetime.start(i64 1664, i8* %25) #2
  %26 = bitcast i32* %bufHeight to i8*
  call void @llvm.lifetime.start(i64 4, i8* %26) #2
  store i32 1, i32* %vres, align 4, !tbaa !22
  %27 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %HWResolution = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %27, i32 0, i32 22
  %arrayidx = getelementptr inbounds [2 x float], [2 x float]* %HWResolution, i32 0, i64 1
  %28 = load float, float* %arrayidx, align 4, !tbaa !25
  %conv = fpext float %28 to double
  %cmp = fcmp olt double %conv, 3.010000e+02
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %vres, align 4, !tbaa !22
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %29 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %HWResolution2 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %29, i32 0, i32 22
  %arrayidx3 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution2, i32 0, i64 1
  %30 = load float, float* %arrayidx3, align 4, !tbaa !25
  %conv4 = fpext float %30 to double
  %cmp5 = fcmp oge double %conv4, 6.010000e+02
  br i1 %cmp5, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end
  store i32 2, i32* %vres, align 4, !tbaa !22
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.7, %if.end
  store i32 208, i32* %bufHeight, align 4, !tbaa !22
  %31 = load i32, i32* %vres, align 4, !tbaa !22
  %cmp9 = icmp eq i32 %31, 0
  br i1 %cmp9, label %if.then.11, label %if.end.13

if.then.11:                                       ; preds = %if.end.8
  %32 = load i32, i32* %bufHeight, align 4, !tbaa !22
  %div = sdiv i32 %32, 2
  store i32 %div, i32* %bufHeight, align 4, !tbaa !22
  %33 = load i32, i32* %skipline, align 4, !tbaa !22
  %div12 = sdiv i32 %33, 2
  store i32 %div12, i32* %skipline, align 4, !tbaa !22
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.11, %if.end.8
  %34 = load i32, i32* %vres, align 4, !tbaa !22
  %cmp14 = icmp eq i32 %34, 2
  br i1 %cmp14, label %if.then.16, label %if.end.18

if.then.16:                                       ; preds = %if.end.13
  %35 = load i32, i32* %bufHeight, align 4, !tbaa !22
  %mul = mul nsw i32 %35, 2
  store i32 %mul, i32* %bufHeight, align 4, !tbaa !22
  %36 = load i32, i32* %skipline, align 4, !tbaa !22
  %mul17 = mul nsw i32 %36, 2
  store i32 %mul17, i32* %skipline, align 4, !tbaa !22
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.16, %if.end.13
  %37 = load i32, i32* %bwidth, align 4, !tbaa !22
  %38 = load i32, i32* %bufHeight, align 4, !tbaa !22
  %mul19 = mul nsw i32 %37, %38
  store i32 %mul19, i32* %pbufsize, align 4, !tbaa !22
  %39 = load i32, i32* %bwidth, align 4, !tbaa !22
  %40 = load i32, i32* %bufHeight, align 4, !tbaa !22
  %add = add nsw i32 %40, 1
  %mul20 = mul nsw i32 %39, %add
  store i32 %mul20, i32* %rpbufsize, align 4, !tbaa !22
  %41 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %41, i32 0, i32 3
  %42 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !27
  %non_gc_memory = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %42, i32 0, i32 3
  %43 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory, align 8, !tbaa !28
  %non_gc_memory21 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %43, i32 0, i32 3
  %44 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory21, align 8, !tbaa !28
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %44, i32 0, i32 1
  %alloc_byte_array = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 10
  %45 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array, align 8, !tbaa !31
  %46 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory22 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %46, i32 0, i32 3
  %47 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory22, align 8, !tbaa !27
  %non_gc_memory23 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %47, i32 0, i32 3
  %48 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory23, align 8, !tbaa !28
  %non_gc_memory24 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %48, i32 0, i32 3
  %49 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory24, align 8, !tbaa !28
  %50 = load i32, i32* %rpbufsize, align 4, !tbaa !22
  %call25 = call i8* %45(%struct.gs_memory_s* %49, i32 %50, i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i32 0, i32 0)) #5
  store i8* %call25, i8** %pbuf, align 8, !tbaa !1
  %51 = load i8*, i8** %pbuf, align 8, !tbaa !1
  %cmp26 = icmp eq i8* %51, null
  br i1 %cmp26, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %if.end.18
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.281

if.end.29:                                        ; preds = %if.end.18
  %52 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory30 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %52, i32 0, i32 3
  %53 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory30, align 8, !tbaa !27
  %non_gc_memory31 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %53, i32 0, i32 3
  %54 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory31, align 8, !tbaa !28
  %non_gc_memory32 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %54, i32 0, i32 3
  %55 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory32, align 8, !tbaa !28
  %procs33 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %55, i32 0, i32 1
  %alloc_byte_array34 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs33, i32 0, i32 10
  %56 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array34, align 8, !tbaa !31
  %57 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory35 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %57, i32 0, i32 3
  %58 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory35, align 8, !tbaa !27
  %non_gc_memory36 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %58, i32 0, i32 3
  %59 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory36, align 8, !tbaa !28
  %non_gc_memory37 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %59, i32 0, i32 3
  %60 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory37, align 8, !tbaa !28
  %call38 = call i8* %56(%struct.gs_memory_s* %60, i32 256000, i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i32 0, i32 0)) #5
  store i8* %call38, i8** %outbuf, align 8, !tbaa !1
  %61 = load i8*, i8** %outbuf, align 8, !tbaa !1
  %cmp39 = icmp eq i8* %61, null
  br i1 %cmp39, label %if.then.41, label %if.end.49

if.then.41:                                       ; preds = %if.end.29
  %62 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory42 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %62, i32 0, i32 3
  %63 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory42, align 8, !tbaa !27
  %non_gc_memory43 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %63, i32 0, i32 3
  %64 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory43, align 8, !tbaa !28
  %non_gc_memory44 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %64, i32 0, i32 3
  %65 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory44, align 8, !tbaa !28
  %procs45 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %65, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs45, i32 0, i32 2
  %66 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !32
  %67 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory46 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %67, i32 0, i32 3
  %68 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory46, align 8, !tbaa !27
  %non_gc_memory47 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %68, i32 0, i32 3
  %69 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory47, align 8, !tbaa !28
  %non_gc_memory48 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %69, i32 0, i32 3
  %70 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory48, align 8, !tbaa !28
  %71 = load i8*, i8** %pbuf, align 8, !tbaa !1
  call void %66(%struct.gs_memory_s* %70, i8* %71, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i32 0, i32 0)) #5
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.281

if.end.49:                                        ; preds = %if.end.29
  %72 = load i8*, i8** %outbuf, align 8, !tbaa !1
  %call50 = call i8* @memcpy(i8* %72, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @outb, i32 0, i32 0), i64 26) #6
  %73 = load i8*, i8** %pbuf, align 8, !tbaa !1
  %74 = load i32, i32* %pbufsize, align 4, !tbaa !22
  %idx.ext = sext i32 %74 to i64
  %add.ptr = getelementptr inbounds i8, i8* %73, i64 %idx.ext
  %75 = load i32, i32* %bwidth, align 4, !tbaa !22
  %conv51 = sext i32 %75 to i64
  %call52 = call i8* @memset(i8* %add.ptr, i32 0, i64 %conv51) #6
  store i32 1, i32* %hres, align 4, !tbaa !22
  %76 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %HWResolution53 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %76, i32 0, i32 22
  %arrayidx54 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution53, i32 0, i64 0
  %77 = load float, float* %arrayidx54, align 4, !tbaa !25
  %conv55 = fpext float %77 to double
  %cmp56 = fcmp olt double %conv55, 3.010000e+02
  br i1 %cmp56, label %if.then.58, label %if.end.59

if.then.58:                                       ; preds = %if.end.49
  store i32 0, i32* %hres, align 4, !tbaa !22
  br label %if.end.59

if.end.59:                                        ; preds = %if.then.58, %if.end.49
  %78 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %HWResolution60 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %78, i32 0, i32 22
  %arrayidx61 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution60, i32 0, i64 0
  %79 = load float, float* %arrayidx61, align 4, !tbaa !25
  %conv62 = fpext float %79 to double
  %cmp63 = fcmp oge double %conv62, 6.010000e+02
  br i1 %cmp63, label %if.then.65, label %if.end.66

if.then.65:                                       ; preds = %if.end.59
  store i32 2, i32* %hres, align 4, !tbaa !22
  br label %if.end.66

if.end.66:                                        ; preds = %if.then.65, %if.end.59
  %80 = load i32, i32* %hres, align 4, !tbaa !22
  %cmp67 = icmp eq i32 %80, 0
  br i1 %cmp67, label %if.then.69, label %if.end.70

if.then.69:                                       ; preds = %if.end.66
  %81 = load i32, i32* %lr_shift, align 4, !tbaa !22
  %shr = ashr i32 %81, 1
  store i32 %shr, i32* %lr_shift, align 4, !tbaa !22
  br label %if.end.70

if.end.70:                                        ; preds = %if.then.69, %if.end.66
  %82 = load i32, i32* %hres, align 4, !tbaa !22
  %cmp71 = icmp eq i32 %82, 2
  br i1 %cmp71, label %if.then.73, label %if.end.74

if.then.73:                                       ; preds = %if.end.70
  %83 = load i32, i32* %lr_shift, align 4, !tbaa !22
  %shl = shl i32 %83, 1
  store i32 %shl, i32* %lr_shift, align 4, !tbaa !22
  br label %if.end.74

if.end.74:                                        ; preds = %if.then.73, %if.end.70
  store i32 1, i32* %interlaced, align 4, !tbaa !22
  %84 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %85 = bitcast %struct.gx_device_printer_s* %84 to %struct.lxm_device_s*
  %printertype = getelementptr inbounds %struct.lxm_device_s, %struct.lxm_device_s* %85, i32 0, i32 73
  %86 = load i32, i32* %printertype, align 4, !tbaa !33
  %cmp75 = icmp eq i32 %86, 0
  br i1 %cmp75, label %if.then.80, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.74
  %87 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %88 = bitcast %struct.gx_device_printer_s* %87 to %struct.lxm_device_s*
  %printertype77 = getelementptr inbounds %struct.lxm_device_s, %struct.lxm_device_s* %88, i32 0, i32 73
  %89 = load i32, i32* %printertype77, align 4, !tbaa !33
  %cmp78 = icmp eq i32 %89, 1
  br i1 %cmp78, label %if.then.80, label %if.end.83

if.then.80:                                       ; preds = %lor.lhs.false, %if.end.74
  %90 = bitcast [3 x i8]* %mspeed to i8*
  call void @llvm.lifetime.start(i64 3, i8* %90) #2
  %91 = bitcast [3 x i8]* %mspeed to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %91, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @lxmgen_print_page.mspeed, i32 0, i32 0), i64 3, i32 1, i1 false)
  %92 = load i32, i32* %hres, align 4, !tbaa !22
  %idxprom = sext i32 %92 to i64
  %arrayidx81 = getelementptr inbounds [3 x i8], [3 x i8]* %mspeed, i32 0, i64 %idxprom
  %93 = load i8, i8* %arrayidx81, align 1, !tbaa !34
  %94 = load i8*, i8** %outbuf, align 8, !tbaa !1
  %arrayidx82 = getelementptr inbounds i8, i8* %94, i64 8
  store i8 %93, i8* %arrayidx82, align 1, !tbaa !34
  %95 = bitcast [3 x i8]* %mspeed to i8*
  call void @llvm.lifetime.end(i64 3, i8* %95) #2
  br label %if.end.83

if.end.83:                                        ; preds = %if.then.80, %lor.lhs.false
  %96 = load i32, i32* %vres, align 4, !tbaa !22
  %cmp84 = icmp eq i32 %96, 1
  br i1 %cmp84, label %if.then.86, label %if.end.94

if.then.86:                                       ; preds = %if.end.83
  %97 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %97) #2
  store i32 0, i32* %i, align 4, !tbaa !22
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.86
  %98 = load i32, i32* %i, align 4, !tbaa !22
  %cmp87 = icmp slt i32 %98, 208
  br i1 %cmp87, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %99 = load i8*, i8** %pbuf, align 8, !tbaa !1
  %100 = load i32, i32* %i, align 4, !tbaa !22
  %101 = load i32, i32* %bwidth, align 4, !tbaa !22
  %mul89 = mul nsw i32 %100, %101
  %idx.ext90 = sext i32 %mul89 to i64
  %add.ptr91 = getelementptr inbounds i8, i8* %99, i64 %idx.ext90
  %102 = load i32, i32* %i, align 4, !tbaa !22
  %idxprom92 = sext i32 %102 to i64
  %arrayidx93 = getelementptr inbounds [208 x i8*], [208 x i8*]* %obp, i32 0, i64 %idxprom92
  store i8* %add.ptr91, i8** %arrayidx93, align 8, !tbaa !1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %103 = load i32, i32* %i, align 4, !tbaa !22
  %inc = add nsw i32 %103, 1
  store i32 %inc, i32* %i, align 4, !tbaa !22
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %104 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %104) #2
  br label %if.end.94

if.end.94:                                        ; preds = %for.end, %if.end.83
  %105 = load i32, i32* %vres, align 4, !tbaa !22
  %cmp95 = icmp eq i32 %105, 0
  br i1 %cmp95, label %if.then.97, label %if.end.120

if.then.97:                                       ; preds = %if.end.94
  %106 = bitcast i32* %i98 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %106) #2
  store i32 0, i32* %i98, align 4, !tbaa !22
  br label %for.cond.99

for.cond.99:                                      ; preds = %for.inc.117, %if.then.97
  %107 = load i32, i32* %i98, align 4, !tbaa !22
  %cmp100 = icmp slt i32 %107, 208
  br i1 %cmp100, label %for.body.102, label %for.end.119

for.body.102:                                     ; preds = %for.cond.99
  %108 = load i32, i32* %i98, align 4, !tbaa !22
  %and = and i32 %108, 1
  %cmp103 = icmp ne i32 %and, 0
  br i1 %cmp103, label %if.then.105, label %if.else

if.then.105:                                      ; preds = %for.body.102
  %109 = load i8*, i8** %pbuf, align 8, !tbaa !1
  %110 = load i32, i32* %pbufsize, align 4, !tbaa !22
  %idx.ext106 = sext i32 %110 to i64
  %add.ptr107 = getelementptr inbounds i8, i8* %109, i64 %idx.ext106
  %111 = load i32, i32* %i98, align 4, !tbaa !22
  %idxprom108 = sext i32 %111 to i64
  %arrayidx109 = getelementptr inbounds [208 x i8*], [208 x i8*]* %obp, i32 0, i64 %idxprom108
  store i8* %add.ptr107, i8** %arrayidx109, align 8, !tbaa !1
  br label %if.end.116

if.else:                                          ; preds = %for.body.102
  %112 = load i8*, i8** %pbuf, align 8, !tbaa !1
  %113 = load i32, i32* %i98, align 4, !tbaa !22
  %div110 = sdiv i32 %113, 2
  %114 = load i32, i32* %bwidth, align 4, !tbaa !22
  %mul111 = mul nsw i32 %div110, %114
  %idx.ext112 = sext i32 %mul111 to i64
  %add.ptr113 = getelementptr inbounds i8, i8* %112, i64 %idx.ext112
  %115 = load i32, i32* %i98, align 4, !tbaa !22
  %idxprom114 = sext i32 %115 to i64
  %arrayidx115 = getelementptr inbounds [208 x i8*], [208 x i8*]* %obp, i32 0, i64 %idxprom114
  store i8* %add.ptr113, i8** %arrayidx115, align 8, !tbaa !1
  br label %if.end.116

if.end.116:                                       ; preds = %if.else, %if.then.105
  br label %for.inc.117

for.inc.117:                                      ; preds = %if.end.116
  %116 = load i32, i32* %i98, align 4, !tbaa !22
  %inc118 = add nsw i32 %116, 1
  store i32 %inc118, i32* %i98, align 4, !tbaa !22
  br label %for.cond.99

for.end.119:                                      ; preds = %for.cond.99
  %117 = bitcast i32* %i98 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %117) #2
  br label %if.end.120

if.end.120:                                       ; preds = %for.end.119, %if.end.94
  %118 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %call121 = call i32 @gdev_prn_file_is_new(%struct.gx_device_printer_s* %118) #5
  %tobool = icmp ne i32 %call121, 0
  br i1 %tobool, label %if.then.122, label %if.else.125

if.then.122:                                      ; preds = %if.end.120
  %119 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %120 = bitcast %struct.gx_device_printer_s* %119 to %struct.lxm_device_s*
  %fullInit = getelementptr inbounds %struct.lxm_device_s, %struct.lxm_device_s* %120, i32 0, i32 69
  %121 = load i8*, i8** %fullInit, align 8, !tbaa !35
  %122 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %123 = bitcast %struct.gx_device_printer_s* %122 to %struct.lxm_device_s*
  %nfullInit = getelementptr inbounds %struct.lxm_device_s, %struct.lxm_device_s* %123, i32 0, i32 70
  %124 = load i32, i32* %nfullInit, align 4, !tbaa !36
  %conv123 = sext i32 %124 to i64
  %125 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call124 = call i64 @fwrite(i8* %121, i64 %conv123, i64 1, %struct._IO_FILE* %125) #5
  br label %if.end.128

if.else.125:                                      ; preds = %if.end.120
  %126 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %127 = bitcast %struct.gx_device_printer_s* %126 to %struct.lxm_device_s*
  %pageInit = getelementptr inbounds %struct.lxm_device_s, %struct.lxm_device_s* %127, i32 0, i32 71
  %128 = load i8*, i8** %pageInit, align 8, !tbaa !37
  %129 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %130 = bitcast %struct.gx_device_printer_s* %129 to %struct.lxm_device_s*
  %npageInit = getelementptr inbounds %struct.lxm_device_s, %struct.lxm_device_s* %130, i32 0, i32 72
  %131 = load i32, i32* %npageInit, align 4, !tbaa !38
  %conv126 = sext i32 %131 to i64
  %132 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call127 = call i64 @fwrite(i8* %128, i64 %conv126, i64 1, %struct._IO_FILE* %132) #5
  br label %if.end.128

if.end.128:                                       ; preds = %if.else.125, %if.then.122
  br label %while.cond

while.cond:                                       ; preds = %cleanup.cont, %cleanup, %if.end.128
  %133 = load i32, i32* %prest, align 4, !tbaa !22
  %cmp129 = icmp sgt i32 %133, 0
  br i1 %cmp129, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %134 = bitcast i32* %i131 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %134) #2
  %135 = bitcast i32* %leftmost to i8*
  call void @llvm.lifetime.start(i64 4, i8* %135) #2
  %136 = bitcast i32* %rightmost to i8*
  call void @llvm.lifetime.start(i64 4, i8* %136) #2
  %137 = bitcast i32* %c1200 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %137) #2
  %138 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %139 = load i32, i32* %pheight, align 4, !tbaa !22
  %140 = load i32, i32* %prest, align 4, !tbaa !22
  %sub = sub nsw i32 %139, %140
  %141 = load i8*, i8** %pbuf, align 8, !tbaa !1
  %call132 = call i32 @gdev_prn_get_bits(%struct.gx_device_printer_s* %138, i32 %sub, i8* %141, i8** %ppbuf) #5
  %142 = load i32, i32* %vres, align 4, !tbaa !22
  %cmp133 = icmp eq i32 %142, 2
  br i1 %cmp133, label %land.lhs.true, label %if.else.155

land.lhs.true:                                    ; preds = %while.body
  %143 = load i32, i32* %pheight, align 4, !tbaa !22
  %144 = load i32, i32* %prest, align 4, !tbaa !22
  %sub135 = sub nsw i32 %143, %144
  %add136 = add nsw i32 %sub135, 197
  %145 = load i32, i32* %pheight, align 4, !tbaa !22
  %cmp137 = icmp slt i32 %add136, %145
  br i1 %cmp137, label %if.then.139, label %if.else.155

if.then.139:                                      ; preds = %land.lhs.true
  %146 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %147 = load i32, i32* %pheight, align 4, !tbaa !22
  %148 = load i32, i32* %prest, align 4, !tbaa !22
  %sub140 = sub nsw i32 %147, %148
  %add141 = add nsw i32 %sub140, 197
  %149 = load i8*, i8** %pbuf, align 8, !tbaa !1
  %150 = load i32, i32* %bwidth, align 4, !tbaa !22
  %idx.ext142 = sext i32 %150 to i64
  %add.ptr143 = getelementptr inbounds i8, i8* %149, i64 %idx.ext142
  %call144 = call i32 @gdev_prn_get_bits(%struct.gx_device_printer_s* %146, i32 %add141, i8* %add.ptr143, i8** %ppbuf2) #5
  %151 = load i8*, i8** %ppbuf2, align 8, !tbaa !1
  %arrayidx145 = getelementptr inbounds i8, i8* %151, i64 0
  %152 = load i8, i8* %arrayidx145, align 1, !tbaa !34
  %conv146 = zext i8 %152 to i32
  %cmp147 = icmp eq i32 %conv146, 0
  br i1 %cmp147, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.then.139
  %153 = load i8*, i8** %ppbuf2, align 8, !tbaa !1
  %154 = load i8*, i8** %ppbuf2, align 8, !tbaa !1
  %add.ptr149 = getelementptr inbounds i8, i8* %154, i64 1
  %155 = load i32, i32* %bwidth, align 4, !tbaa !22
  %sub150 = sub nsw i32 %155, 1
  %conv151 = sext i32 %sub150 to i64
  %call152 = call i32 @memcmp(i8* %153, i8* %add.ptr149, i64 %conv151) #7
  %cmp153 = icmp eq i32 %call152, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.then.139
  %156 = phi i1 [ false, %if.then.139 ], [ %cmp153, %land.rhs ]
  %land.ext = zext i1 %156 to i32
  store i32 %land.ext, i32* %c1200, align 4, !tbaa !22
  br label %if.end.156

if.else.155:                                      ; preds = %land.lhs.true, %while.body
  store i32 1, i32* %c1200, align 4, !tbaa !22
  br label %if.end.156

if.end.156:                                       ; preds = %if.else.155, %land.end
  %157 = load i8*, i8** %ppbuf, align 8, !tbaa !1
  %arrayidx157 = getelementptr inbounds i8, i8* %157, i64 0
  %158 = load i8, i8* %arrayidx157, align 1, !tbaa !34
  %conv158 = zext i8 %158 to i32
  %cmp159 = icmp eq i32 %conv158, 0
  br i1 %cmp159, label %land.lhs.true.161, label %if.end.172

land.lhs.true.161:                                ; preds = %if.end.156
  %159 = load i8*, i8** %ppbuf, align 8, !tbaa !1
  %160 = load i8*, i8** %ppbuf, align 8, !tbaa !1
  %add.ptr162 = getelementptr inbounds i8, i8* %160, i64 1
  %161 = load i32, i32* %bwidth, align 4, !tbaa !22
  %sub163 = sub nsw i32 %161, 1
  %conv164 = sext i32 %sub163 to i64
  %call165 = call i32 @memcmp(i8* %159, i8* %add.ptr162, i64 %conv164) #7
  %cmp166 = icmp eq i32 %call165, 0
  br i1 %cmp166, label %land.lhs.true.168, label %if.end.172

land.lhs.true.168:                                ; preds = %land.lhs.true.161
  %162 = load i32, i32* %c1200, align 4, !tbaa !22
  %tobool169 = icmp ne i32 %162, 0
  br i1 %tobool169, label %if.then.170, label %if.end.172

if.then.170:                                      ; preds = %land.lhs.true.168
  %163 = load i32, i32* %prest, align 4, !tbaa !22
  %dec = add nsw i32 %163, -1
  store i32 %dec, i32* %prest, align 4, !tbaa !22
  %164 = load i32, i32* %skipline, align 4, !tbaa !22
  %inc171 = add nsw i32 %164, 1
  store i32 %inc171, i32* %skipline, align 4, !tbaa !22
  store i32 8, i32* %cleanup.dest.slot
  br label %cleanup

if.end.172:                                       ; preds = %land.lhs.true.168, %land.lhs.true.161, %if.end.156
  store i32 0, i32* %i131, align 4, !tbaa !22
  br label %for.cond.173

for.cond.173:                                     ; preds = %for.inc.259, %if.end.172
  %165 = load i32, i32* %i131, align 4, !tbaa !22
  %166 = load i32, i32* %vres, align 4, !tbaa !22
  %cmp174 = icmp eq i32 %166, 2
  %cond = select i1 %cmp174, i32 2, i32 1
  %cmp176 = icmp slt i32 %165, %cond
  br i1 %cmp176, label %for.body.178, label %for.end.261

for.body.178:                                     ; preds = %for.cond.173
  %167 = load i32, i32* %skipline, align 4, !tbaa !22
  %cmp179 = icmp sgt i32 %167, 0
  br i1 %cmp179, label %if.then.181, label %if.end.185

if.then.181:                                      ; preds = %for.body.178
  %168 = bitcast [3 x i32]* %mult to i8*
  call void @llvm.lifetime.start(i64 12, i8* %168) #2
  %169 = bitcast [3 x i32]* %mult to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %169, i8* bitcast ([3 x i32]* @lxmgen_print_page.mult to i8*), i64 12, i32 4, i1 false)
  %170 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %171 = load i32, i32* %skipline, align 4, !tbaa !22
  %172 = load i32, i32* %vres, align 4, !tbaa !22
  %idxprom182 = sext i32 %172 to i64
  %arrayidx183 = getelementptr inbounds [3 x i32], [3 x i32]* %mult, i32 0, i64 %idxprom182
  %173 = load i32, i32* %arrayidx183, align 4, !tbaa !22
  %mul184 = mul nsw i32 %171, %173
  call void @paper_shift(%struct._IO_FILE* %170, i32 %mul184) #5
  store i32 0, i32* %skipline, align 4, !tbaa !22
  %174 = bitcast [3 x i32]* %mult to i8*
  call void @llvm.lifetime.end(i64 12, i8* %174) #2
  br label %if.end.185

if.end.185:                                       ; preds = %if.then.181, %for.body.178
  %175 = load i32, i32* %vres, align 4, !tbaa !22
  %cmp186 = icmp eq i32 %175, 2
  br i1 %cmp186, label %if.then.188, label %if.end.212

if.then.188:                                      ; preds = %if.end.185
  %176 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %176) #2
  store i32 0, i32* %j, align 4, !tbaa !22
  br label %for.cond.189

for.cond.189:                                     ; preds = %for.inc.209, %if.then.188
  %177 = load i32, i32* %j, align 4, !tbaa !22
  %cmp190 = icmp slt i32 %177, 208
  br i1 %cmp190, label %for.body.192, label %for.end.211

for.body.192:                                     ; preds = %for.cond.189
  %178 = load i32, i32* %j, align 4, !tbaa !22
  %and193 = and i32 %178, 1
  %179 = load i32, i32* %i131, align 4, !tbaa !22
  %cmp194 = icmp ne i32 %and193, %179
  br i1 %cmp194, label %if.then.196, label %if.else.201

if.then.196:                                      ; preds = %for.body.192
  %180 = load i8*, i8** %pbuf, align 8, !tbaa !1
  %181 = load i32, i32* %pbufsize, align 4, !tbaa !22
  %idx.ext197 = sext i32 %181 to i64
  %add.ptr198 = getelementptr inbounds i8, i8* %180, i64 %idx.ext197
  %182 = load i32, i32* %j, align 4, !tbaa !22
  %idxprom199 = sext i32 %182 to i64
  %arrayidx200 = getelementptr inbounds [208 x i8*], [208 x i8*]* %obp, i32 0, i64 %idxprom199
  store i8* %add.ptr198, i8** %arrayidx200, align 8, !tbaa !1
  br label %if.end.208

if.else.201:                                      ; preds = %for.body.192
  %183 = load i8*, i8** %pbuf, align 8, !tbaa !1
  %184 = load i32, i32* %j, align 4, !tbaa !22
  %mul202 = mul nsw i32 %184, 2
  %185 = load i32, i32* %bwidth, align 4, !tbaa !22
  %mul203 = mul nsw i32 %mul202, %185
  %idx.ext204 = sext i32 %mul203 to i64
  %add.ptr205 = getelementptr inbounds i8, i8* %183, i64 %idx.ext204
  %186 = load i32, i32* %j, align 4, !tbaa !22
  %idxprom206 = sext i32 %186 to i64
  %arrayidx207 = getelementptr inbounds [208 x i8*], [208 x i8*]* %obp, i32 0, i64 %idxprom206
  store i8* %add.ptr205, i8** %arrayidx207, align 8, !tbaa !1
  br label %if.end.208

if.end.208:                                       ; preds = %if.else.201, %if.then.196
  br label %for.inc.209

for.inc.209:                                      ; preds = %if.end.208
  %187 = load i32, i32* %j, align 4, !tbaa !22
  %inc210 = add nsw i32 %187, 1
  store i32 %inc210, i32* %j, align 4, !tbaa !22
  br label %for.cond.189

for.end.211:                                      ; preds = %for.cond.189
  %188 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %188) #2
  br label %if.end.212

if.end.212:                                       ; preds = %for.end.211, %if.end.185
  %189 = load i32, i32* %bufHeight, align 4, !tbaa !22
  %190 = load i32, i32* %prest, align 4, !tbaa !22
  %cmp213 = icmp slt i32 %189, %190
  br i1 %cmp213, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.212
  %191 = load i32, i32* %bufHeight, align 4, !tbaa !22
  br label %cond.end

cond.false:                                       ; preds = %if.end.212
  %192 = load i32, i32* %prest, align 4, !tbaa !22
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond215 = phi i32 [ %191, %cond.true ], [ %192, %cond.false ]
  store i32 %cond215, i32* %brest, align 4, !tbaa !22
  %193 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %194 = load i32, i32* %pheight, align 4, !tbaa !22
  %195 = load i32, i32* %prest, align 4, !tbaa !22
  %sub216 = sub nsw i32 %194, %195
  %196 = load i8*, i8** %pbuf, align 8, !tbaa !1
  %197 = load i32, i32* %pbufsize, align 4, !tbaa !22
  %call217 = call i32 @gdev_prn_copy_scan_lines(%struct.gx_device_printer_s* %193, i32 %sub216, i8* %196, i32 %197) #5
  %198 = load i32, i32* %bufHeight, align 4, !tbaa !22
  %199 = load i32, i32* %brest, align 4, !tbaa !22
  %sub218 = sub nsw i32 %198, %199
  %cmp219 = icmp sgt i32 %sub218, 0
  br i1 %cmp219, label %if.then.221, label %if.end.229

if.then.221:                                      ; preds = %cond.end
  %200 = load i8*, i8** %pbuf, align 8, !tbaa !1
  %201 = load i32, i32* %brest, align 4, !tbaa !22
  %202 = load i32, i32* %bwidth, align 4, !tbaa !22
  %mul222 = mul nsw i32 %201, %202
  %idx.ext223 = sext i32 %mul222 to i64
  %add.ptr224 = getelementptr inbounds i8, i8* %200, i64 %idx.ext223
  %203 = load i32, i32* %bufHeight, align 4, !tbaa !22
  %204 = load i32, i32* %brest, align 4, !tbaa !22
  %sub225 = sub nsw i32 %203, %204
  %205 = load i32, i32* %bwidth, align 4, !tbaa !22
  %mul226 = mul nsw i32 %sub225, %205
  %conv227 = sext i32 %mul226 to i64
  %call228 = call i8* @memset(i8* %add.ptr224, i32 0, i64 %conv227) #6
  br label %if.end.229

if.end.229:                                       ; preds = %if.then.221, %cond.end
  %arraydecay = getelementptr inbounds [208 x i8*], [208 x i8*]* %obp, i32 0, i32 0
  %206 = load i32, i32* %bwidth, align 4, !tbaa !22
  %207 = load i32, i32* %interlaced, align 4, !tbaa !22
  %208 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %209 = bitcast %struct.gx_device_printer_s* %208 to %struct.lxm_device_s*
  %headSeparation230 = getelementptr inbounds %struct.lxm_device_s, %struct.lxm_device_s* %209, i32 0, i32 68
  %210 = load i32, i32* %headSeparation230, align 4, !tbaa !23
  call void @find_lr_pixels(i8** %arraydecay, i32 %206, i32 208, i32 %207, i32 %210, i32* %leftmost, i32* %rightmost) #5
  %211 = load i32, i32* %leftmost, align 4, !tbaa !22
  %212 = load i32, i32* %rightmost, align 4, !tbaa !22
  %cmp231 = icmp slt i32 %211, %212
  br i1 %cmp231, label %if.then.233, label %if.end.244

if.then.233:                                      ; preds = %if.end.229
  %213 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %214 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %215 = load i8*, i8** %outbuf, align 8, !tbaa !1
  %216 = load i32, i32* %leftmost, align 4, !tbaa !22
  %217 = load i32, i32* %rightmost, align 4, !tbaa !22
  %arraydecay234 = getelementptr inbounds [208 x i8*], [208 x i8*]* %obp, i32 0, i32 0
  %218 = load i32, i32* %bwidth, align 4, !tbaa !22
  %219 = load i32, i32* %lr_shift, align 4, !tbaa !22
  %call235 = call i32 @print_cols(%struct._IO_FILE* %213, %struct.gx_device_printer_s* %214, i8* %215, i32 %216, i32 %217, i32 0, i32 104, i8** %arraydecay234, i32 %218, i32 %219) #5
  %cmp236 = icmp eq i32 %call235, -1
  br i1 %cmp236, label %if.then.238, label %if.end.243

if.then.238:                                      ; preds = %if.then.233
  %220 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %221 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %222 = load i8*, i8** %outbuf, align 8, !tbaa !1
  %223 = load i32, i32* %leftmost, align 4, !tbaa !22
  %224 = load i32, i32* %rightmost, align 4, !tbaa !22
  %arraydecay239 = getelementptr inbounds [208 x i8*], [208 x i8*]* %obp, i32 0, i32 0
  %225 = load i32, i32* %bwidth, align 4, !tbaa !22
  %226 = load i32, i32* %lr_shift, align 4, !tbaa !22
  %call240 = call i32 @print_cols(%struct._IO_FILE* %220, %struct.gx_device_printer_s* %221, i8* %222, i32 %223, i32 %224, i32 0, i32 52, i8** %arraydecay239, i32 %225, i32 %226) #5
  %227 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %228 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %229 = load i8*, i8** %outbuf, align 8, !tbaa !1
  %230 = load i32, i32* %leftmost, align 4, !tbaa !22
  %231 = load i32, i32* %rightmost, align 4, !tbaa !22
  %arraydecay241 = getelementptr inbounds [208 x i8*], [208 x i8*]* %obp, i32 0, i32 0
  %232 = load i32, i32* %bwidth, align 4, !tbaa !22
  %233 = load i32, i32* %lr_shift, align 4, !tbaa !22
  %call242 = call i32 @print_cols(%struct._IO_FILE* %227, %struct.gx_device_printer_s* %228, i8* %229, i32 %230, i32 %231, i32 52, i32 104, i8** %arraydecay241, i32 %232, i32 %233) #5
  br label %if.end.243

if.end.243:                                       ; preds = %if.then.238, %if.then.233
  br label %if.end.244

if.end.244:                                       ; preds = %if.end.243, %if.end.229
  %234 = load i32, i32* %vres, align 4, !tbaa !22
  %cmp245 = icmp ne i32 %234, 2
  br i1 %cmp245, label %if.then.247, label %if.else.248

if.then.247:                                      ; preds = %if.end.244
  %235 = load i32, i32* %brest, align 4, !tbaa !22
  store i32 %235, i32* %skipline, align 4, !tbaa !22
  br label %if.end.253

if.else.248:                                      ; preds = %if.end.244
  %236 = load i32, i32* %i131, align 4, !tbaa !22
  %cmp249 = icmp eq i32 %236, 0
  %cond251 = select i1 %cmp249, i32 197, i32 219
  %237 = load i32, i32* %skipline, align 4, !tbaa !22
  %add252 = add nsw i32 %237, %cond251
  store i32 %add252, i32* %skipline, align 4, !tbaa !22
  br label %if.end.253

if.end.253:                                       ; preds = %if.else.248, %if.then.247
  %238 = load i32, i32* %skipline, align 4, !tbaa !22
  %239 = load i32, i32* %prest, align 4, !tbaa !22
  %sub254 = sub nsw i32 %239, %238
  store i32 %sub254, i32* %prest, align 4, !tbaa !22
  %240 = load i32, i32* %prest, align 4, !tbaa !22
  %cmp255 = icmp sle i32 %240, 0
  br i1 %cmp255, label %if.then.257, label %if.end.258

if.then.257:                                      ; preds = %if.end.253
  br label %for.end.261

if.end.258:                                       ; preds = %if.end.253
  br label %for.inc.259

for.inc.259:                                      ; preds = %if.end.258
  %241 = load i32, i32* %i131, align 4, !tbaa !22
  %inc260 = add nsw i32 %241, 1
  store i32 %inc260, i32* %i131, align 4, !tbaa !22
  br label %for.cond.173

for.end.261:                                      ; preds = %if.then.257, %for.cond.173
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end.261, %if.then.170
  %242 = bitcast i32* %c1200 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %242) #2
  %243 = bitcast i32* %rightmost to i8*
  call void @llvm.lifetime.end(i64 4, i8* %243) #2
  %244 = bitcast i32* %leftmost to i8*
  call void @llvm.lifetime.end(i64 4, i8* %244) #2
  %245 = bitcast i32* %i131 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %245) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 8, label %while.cond
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %246 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  call void @lex_eject(%struct._IO_FILE* %246) #5
  %247 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory265 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %247, i32 0, i32 3
  %248 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory265, align 8, !tbaa !27
  %non_gc_memory266 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %248, i32 0, i32 3
  %249 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory266, align 8, !tbaa !28
  %non_gc_memory267 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %249, i32 0, i32 3
  %250 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory267, align 8, !tbaa !28
  %procs268 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %250, i32 0, i32 1
  %free_object269 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs268, i32 0, i32 2
  %251 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object269, align 8, !tbaa !32
  %252 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory270 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %252, i32 0, i32 3
  %253 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory270, align 8, !tbaa !27
  %non_gc_memory271 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %253, i32 0, i32 3
  %254 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory271, align 8, !tbaa !28
  %non_gc_memory272 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %254, i32 0, i32 3
  %255 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory272, align 8, !tbaa !28
  %256 = load i8*, i8** %pbuf, align 8, !tbaa !1
  call void %251(%struct.gs_memory_s* %255, i8* %256, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i32 0, i32 0)) #5
  %257 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory273 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %257, i32 0, i32 3
  %258 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory273, align 8, !tbaa !27
  %non_gc_memory274 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %258, i32 0, i32 3
  %259 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory274, align 8, !tbaa !28
  %non_gc_memory275 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %259, i32 0, i32 3
  %260 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory275, align 8, !tbaa !28
  %procs276 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %260, i32 0, i32 1
  %free_object277 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs276, i32 0, i32 2
  %261 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object277, align 8, !tbaa !32
  %262 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory278 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %262, i32 0, i32 3
  %263 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory278, align 8, !tbaa !27
  %non_gc_memory279 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %263, i32 0, i32 3
  %264 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory279, align 8, !tbaa !28
  %non_gc_memory280 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %264, i32 0, i32 3
  %265 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory280, align 8, !tbaa !28
  %266 = load i8*, i8** %outbuf, align 8, !tbaa !1
  call void %261(%struct.gs_memory_s* %265, i8* %266, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i32 0, i32 0)) #5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.281

cleanup.281:                                      ; preds = %while.end, %if.then.41, %if.then.28
  %267 = bitcast i32* %bufHeight to i8*
  call void @llvm.lifetime.end(i64 4, i8* %267) #2
  %268 = bitcast [208 x i8*]* %obp to i8*
  call void @llvm.lifetime.end(i64 1664, i8* %268) #2
  %269 = bitcast i32* %lr_shift to i8*
  call void @llvm.lifetime.end(i64 4, i8* %269) #2
  %270 = bitcast i32* %interlaced to i8*
  call void @llvm.lifetime.end(i64 4, i8* %270) #2
  %271 = bitcast i32* %vres to i8*
  call void @llvm.lifetime.end(i64 4, i8* %271) #2
  %272 = bitcast i32* %hres to i8*
  call void @llvm.lifetime.end(i64 4, i8* %272) #2
  %273 = bitcast i32* %rpbufsize to i8*
  call void @llvm.lifetime.end(i64 4, i8* %273) #2
  %274 = bitcast i32* %pbufsize to i8*
  call void @llvm.lifetime.end(i64 4, i8* %274) #2
  %275 = bitcast i8** %outbuf to i8*
  call void @llvm.lifetime.end(i64 8, i8* %275) #2
  %276 = bitcast i8** %ppbuf2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %276) #2
  %277 = bitcast i8** %ppbuf to i8*
  call void @llvm.lifetime.end(i64 8, i8* %277) #2
  %278 = bitcast i8** %pbuf to i8*
  call void @llvm.lifetime.end(i64 8, i8* %278) #2
  %279 = bitcast i32* %skipline to i8*
  call void @llvm.lifetime.end(i64 4, i8* %279) #2
  %280 = bitcast i32* %brest to i8*
  call void @llvm.lifetime.end(i64 4, i8* %280) #2
  %281 = bitcast i32* %prest to i8*
  call void @llvm.lifetime.end(i64 4, i8* %281) #2
  %282 = bitcast i32* %bwidth to i8*
  call void @llvm.lifetime.end(i64 4, i8* %282) #2
  %283 = bitcast i32* %pheight to i8*
  call void @llvm.lifetime.end(i64 4, i8* %283) #2
  %284 = load i32, i32* %retval
  ret i32 %284

unreachable:                                      ; preds = %cleanup
  unreachable
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

declare i32 @gdev_prn_open(%struct.gx_device_s*) #0

declare i32 @gdev_prn_output_page(%struct.gx_device_s*, i32, i32) #0

declare i32 @gdev_prn_close(%struct.gx_device_s*) #0

declare i64 @gx_default_b_w_map_rgb_color(%struct.gx_device_s*, i16*) #0

declare i32 @gx_default_b_w_map_color_rgb(%struct.gx_device_s*, i64, i16*) #0

; Function Attrs: nounwind uwtable
define internal i32 @lxm_get_params(%struct.gx_device_s* %pdev, %struct.gs_param_list_s* %plist) #1 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_s*, align 8
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %ldev = alloca %struct.lxm_device_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %pdev, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %0 = bitcast %struct.lxm_device_s** %ldev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.lxm_device_s*
  store %struct.lxm_device_s* %2, %struct.lxm_device_s** %ldev, align 8, !tbaa !1
  %3 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %5 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call = call i32 @gdev_prn_get_params(%struct.gx_device_s* %4, %struct.gs_param_list_s* %5) #5
  store i32 %call, i32* %code, align 4, !tbaa !22
  %6 = load i32, i32* %code, align 4, !tbaa !22
  %cmp = icmp slt i32 %6, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load i32, i32* %code, align 4, !tbaa !22
  store i32 %7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %9 = load %struct.lxm_device_s*, %struct.lxm_device_s** %ldev, align 8, !tbaa !1
  %headSeparation = getelementptr inbounds %struct.lxm_device_s, %struct.lxm_device_s* %9, i32 0, i32 68
  %call1 = call i32 @param_write_int(%struct.gs_param_list_s* %8, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0), i32* %headSeparation) #5
  store i32 %call1, i32* %code, align 4, !tbaa !22
  %10 = load i32, i32* %code, align 4, !tbaa !22
  store i32 %10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %11 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %11) #2
  %12 = bitcast %struct.lxm_device_s** %ldev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %12) #2
  %13 = load i32, i32* %retval
  ret i32 %13
}

; Function Attrs: nounwind uwtable
define internal i32 @lxm_put_params(%struct.gx_device_s* %pdev, %struct.gs_param_list_s* %plist) #1 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_s*, align 8
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %ecode = alloca i32, align 4
  %ldev = alloca %struct.lxm_device_s*, align 8
  %trialHeadSeparation = alloca i32, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %pdev, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %0 = bitcast i32* %ecode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast %struct.lxm_device_s** %ldev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #2
  %2 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %3 = bitcast %struct.gx_device_s* %2 to %struct.lxm_device_s*
  store %struct.lxm_device_s* %3, %struct.lxm_device_s** %ldev, align 8, !tbaa !1
  %4 = bitcast i32* %trialHeadSeparation to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = load %struct.lxm_device_s*, %struct.lxm_device_s** %ldev, align 8, !tbaa !1
  %headSeparation = getelementptr inbounds %struct.lxm_device_s, %struct.lxm_device_s* %5, i32 0, i32 68
  %6 = load i32, i32* %headSeparation, align 4, !tbaa !23
  store i32 %6, i32* %trialHeadSeparation, align 4, !tbaa !22
  %7 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #2
  %8 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call = call i32 @param_read_int(%struct.gs_param_list_s* %8, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0), i32* %trialHeadSeparation) #5
  store i32 %call, i32* %code, align 4, !tbaa !22
  %9 = load i32, i32* %trialHeadSeparation, align 4, !tbaa !22
  %cmp = icmp slt i32 %9, 1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %10 = load i32, i32* %trialHeadSeparation, align 4, !tbaa !22
  %cmp1 = icmp sgt i32 %10, 32
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %11 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %11, i32 0, i32 0
  %12 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs, align 8, !tbaa !39
  %signal_error = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %12, i32 0, i32 7
  %13 = load i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*, i8*, i32)** %signal_error, align 8, !tbaa !41
  %14 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call2 = call i32 %13(%struct.gs_param_list_s* %14, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0), i32 -15) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %15 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %16 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call3 = call i32 @gdev_prn_put_params(%struct.gx_device_s* %15, %struct.gs_param_list_s* %16) #5
  store i32 %call3, i32* %ecode, align 4, !tbaa !22
  %17 = load i32, i32* %code, align 4, !tbaa !22
  %cmp4 = icmp slt i32 %17, 0
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  %18 = load i32, i32* %code, align 4, !tbaa !22
  store i32 %18, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.6:                                         ; preds = %if.end
  %19 = load i32, i32* %ecode, align 4, !tbaa !22
  %cmp7 = icmp slt i32 %19, 0
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end.6
  %20 = load i32, i32* %ecode, align 4, !tbaa !22
  store i32 %20, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.9:                                         ; preds = %if.end.6
  %21 = load i32, i32* %trialHeadSeparation, align 4, !tbaa !22
  %22 = load %struct.lxm_device_s*, %struct.lxm_device_s** %ldev, align 8, !tbaa !1
  %headSeparation10 = getelementptr inbounds %struct.lxm_device_s, %struct.lxm_device_s* %22, i32 0, i32 68
  store i32 %21, i32* %headSeparation10, align 4, !tbaa !23
  %23 = load i32, i32* %code, align 4, !tbaa !22
  %cmp11 = icmp eq i32 %23, 1
  br i1 %cmp11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.end.9
  %24 = load i32, i32* %ecode, align 4, !tbaa !22
  store i32 %24, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.13:                                        ; preds = %if.end.9
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.13, %if.then.12, %if.then.8, %if.then.5
  %25 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %25) #2
  %26 = bitcast i32* %trialHeadSeparation to i8*
  call void @llvm.lifetime.end(i64 4, i8* %26) #2
  %27 = bitcast %struct.lxm_device_s** %ldev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %27) #2
  %28 = bitcast i32* %ecode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %28) #2
  %29 = load i32, i32* %retval
  ret i32 %29
}

declare %struct.gx_device_s* @gx_page_device_get_page_device(%struct.gx_device_s*) #0

declare i32 @gdev_prn_dev_spec_op(%struct.gx_device_s*, i32, i8*, i32) #0

declare i32 @gx_default_get_profile(%struct.gx_device_s*, %struct.cmm_dev_profile_s**) #0

declare void @gx_default_set_graphics_type_tag(%struct.gx_device_s*, i32) #0

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

declare i32 @gdev_prn_get_params(%struct.gx_device_s*, %struct.gs_param_list_s*) #0

declare i32 @param_write_int(%struct.gs_param_list_s*, i8*, i32*) #0

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

declare i32 @param_read_int(%struct.gs_param_list_s*, i8*, i32*) #0

declare i32 @gdev_prn_put_params(%struct.gx_device_s*, %struct.gs_param_list_s*) #0

declare i32 @gx_device_raster(%struct.gx_device_s*, i32) #0

; Function Attrs: nounwind
declare i8* @memcpy(i8*, i8*, i64) #3

; Function Attrs: nounwind
declare i8* @memset(i8*, i32, i64) #3

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

declare i32 @gdev_prn_file_is_new(%struct.gx_device_printer_s*) #0

declare i64 @fwrite(i8*, i64, i64, %struct._IO_FILE*) #0

declare i32 @gdev_prn_get_bits(%struct.gx_device_printer_s*, i32, i8*, i8**) #0

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8*, i8*, i64) #4

; Function Attrs: nounwind uwtable
define internal void @paper_shift(%struct._IO_FILE* %out, i32 %offset) #1 {
entry:
  %out.addr = alloca %struct._IO_FILE*, align 8
  %offset.addr = alloca i32, align 4
  %buf = alloca [5 x i8], align 1
  store %struct._IO_FILE* %out, %struct._IO_FILE** %out.addr, align 8, !tbaa !1
  store i32 %offset, i32* %offset.addr, align 4, !tbaa !22
  %0 = bitcast [5 x i8]* %buf to i8*
  call void @llvm.lifetime.start(i64 5, i8* %0) #2
  %1 = bitcast [5 x i8]* %buf to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @paper_shift.buf, i32 0, i32 0), i64 5, i32 1, i1 false)
  %2 = load i32, i32* %offset.addr, align 4, !tbaa !22
  %shr = ashr i32 %2, 8
  %conv = trunc i32 %shr to i8
  %arrayidx = getelementptr inbounds [5 x i8], [5 x i8]* %buf, i32 0, i64 3
  store i8 %conv, i8* %arrayidx, align 1, !tbaa !34
  %3 = load i32, i32* %offset.addr, align 4, !tbaa !22
  %and = and i32 %3, 255
  %conv1 = trunc i32 %and to i8
  %arrayidx2 = getelementptr inbounds [5 x i8], [5 x i8]* %buf, i32 0, i64 4
  store i8 %conv1, i8* %arrayidx2, align 1, !tbaa !34
  %arraydecay = getelementptr inbounds [5 x i8], [5 x i8]* %buf, i32 0, i32 0
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8, !tbaa !1
  %call = call i64 @fwrite(i8* %arraydecay, i64 5, i64 1, %struct._IO_FILE* %4) #5
  %5 = bitcast [5 x i8]* %buf to i8*
  call void @llvm.lifetime.end(i64 5, i8* %5) #2
  ret void
}

declare i32 @gdev_prn_copy_scan_lines(%struct.gx_device_printer_s*, i32, i8*, i32) #0

; Function Attrs: nounwind uwtable
define internal void @find_lr_pixels(i8** %buf, i32 %bytelen, i32 %bufheight, i32 %interlaced, i32 %intershift, i32* %leftmost, i32* %rightmost) #1 {
entry:
  %buf.addr = alloca i8**, align 8
  %bytelen.addr = alloca i32, align 4
  %bufheight.addr = alloca i32, align 4
  %interlaced.addr = alloca i32, align 4
  %intershift.addr = alloca i32, align 4
  %leftmost.addr = alloca i32*, align 8
  %rightmost.addr = alloca i32*, align 8
  %maxright = alloca i32, align 4
  %left = alloca i32, align 4
  %right = alloca i32, align 4
  %i = alloca i32, align 4
  %ltmp = alloca i32, align 4
  %rtmp = alloca i32, align 4
  store i8** %buf, i8*** %buf.addr, align 8, !tbaa !1
  store i32 %bytelen, i32* %bytelen.addr, align 4, !tbaa !22
  store i32 %bufheight, i32* %bufheight.addr, align 4, !tbaa !22
  store i32 %interlaced, i32* %interlaced.addr, align 4, !tbaa !22
  store i32 %intershift, i32* %intershift.addr, align 4, !tbaa !22
  store i32* %leftmost, i32** %leftmost.addr, align 8, !tbaa !1
  store i32* %rightmost, i32** %rightmost.addr, align 8, !tbaa !1
  %0 = bitcast i32* %maxright to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load i32, i32* %bytelen.addr, align 4, !tbaa !22
  %mul = mul nsw i32 %1, 8
  %sub = sub nsw i32 %mul, 1
  store i32 %sub, i32* %maxright, align 4, !tbaa !22
  %2 = bitcast i32* %left to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  %3 = load i32, i32* %maxright, align 4, !tbaa !22
  store i32 %3, i32* %left, align 4, !tbaa !22
  %4 = bitcast i32* %right to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  store i32 0, i32* %right, align 4, !tbaa !22
  %5 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  store i32 0, i32* %i, align 4, !tbaa !22
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load i32, i32* %i, align 4, !tbaa !22
  %7 = load i32, i32* %bufheight.addr, align 4, !tbaa !22
  %cmp = icmp slt i32 %6, %7
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = bitcast i32* %ltmp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #2
  %9 = bitcast i32* %rtmp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #2
  %10 = load i32, i32* %i, align 4, !tbaa !22
  %idxprom = sext i32 %10 to i64
  %11 = load i8**, i8*** %buf.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8*, i8** %11, i64 %idxprom
  %12 = load i8*, i8** %arrayidx, align 8, !tbaa !1
  %13 = load i32, i32* %bytelen.addr, align 4, !tbaa !22
  %call = call i32 @leftmost_pixel(i8* %12, i32 %13) #5
  store i32 %call, i32* %ltmp, align 4, !tbaa !22
  %14 = load i32, i32* %i, align 4, !tbaa !22
  %idxprom1 = sext i32 %14 to i64
  %15 = load i8**, i8*** %buf.addr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds i8*, i8** %15, i64 %idxprom1
  %16 = load i8*, i8** %arrayidx2, align 8, !tbaa !1
  %17 = load i32, i32* %bytelen.addr, align 4, !tbaa !22
  %call3 = call i32 @rightmost_pixel(i8* %16, i32 %17) #5
  store i32 %call3, i32* %rtmp, align 4, !tbaa !22
  %18 = load i32, i32* %interlaced.addr, align 4, !tbaa !22
  %tobool = icmp ne i32 %18, 0
  br i1 %tobool, label %land.lhs.true, label %if.end.16

land.lhs.true:                                    ; preds = %for.body
  %19 = load i32, i32* %i, align 4, !tbaa !22
  %and = and i32 %19, 1
  %cmp4 = icmp eq i32 %and, 1
  br i1 %cmp4, label %if.then, label %if.end.16

if.then:                                          ; preds = %land.lhs.true
  %20 = load i32, i32* %ltmp, align 4, !tbaa !22
  %21 = load i32, i32* %intershift.addr, align 4, !tbaa !22
  %sub5 = sub nsw i32 %20, %21
  %cmp6 = icmp sgt i32 %sub5, 0
  br i1 %cmp6, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %22 = load i32, i32* %ltmp, align 4, !tbaa !22
  %23 = load i32, i32* %intershift.addr, align 4, !tbaa !22
  %sub7 = sub nsw i32 %22, %23
  br label %cond.end

cond.false:                                       ; preds = %if.then
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub7, %cond.true ], [ 0, %cond.false ]
  store i32 %cond, i32* %ltmp, align 4, !tbaa !22
  %24 = load i32, i32* %rtmp, align 4, !tbaa !22
  %25 = load i32, i32* %intershift.addr, align 4, !tbaa !22
  %add = add nsw i32 %24, %25
  %26 = load i32, i32* %maxright, align 4, !tbaa !22
  %cmp8 = icmp slt i32 %add, %26
  br i1 %cmp8, label %cond.true.9, label %cond.false.11

cond.true.9:                                      ; preds = %cond.end
  %27 = load i32, i32* %rtmp, align 4, !tbaa !22
  %28 = load i32, i32* %intershift.addr, align 4, !tbaa !22
  %add10 = add nsw i32 %27, %28
  br label %cond.end.12

cond.false.11:                                    ; preds = %cond.end
  %29 = load i32, i32* %maxright, align 4, !tbaa !22
  br label %cond.end.12

cond.end.12:                                      ; preds = %cond.false.11, %cond.true.9
  %cond13 = phi i32 [ %add10, %cond.true.9 ], [ %29, %cond.false.11 ]
  store i32 %cond13, i32* %rtmp, align 4, !tbaa !22
  %30 = load i32, i32* %ltmp, align 4, !tbaa !22
  %31 = load i32, i32* %maxright, align 4, !tbaa !22
  %cmp14 = icmp eq i32 %30, %31
  br i1 %cmp14, label %if.then.15, label %if.end

if.then.15:                                       ; preds = %cond.end.12
  %32 = load i32, i32* %ltmp, align 4, !tbaa !22
  %dec = add nsw i32 %32, -1
  store i32 %dec, i32* %ltmp, align 4, !tbaa !22
  br label %if.end

if.end:                                           ; preds = %if.then.15, %cond.end.12
  br label %if.end.16

if.end.16:                                        ; preds = %if.end, %land.lhs.true, %for.body
  %33 = load i32, i32* %ltmp, align 4, !tbaa !22
  %34 = load i32, i32* %left, align 4, !tbaa !22
  %cmp17 = icmp slt i32 %33, %34
  br i1 %cmp17, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %if.end.16
  %35 = load i32, i32* %ltmp, align 4, !tbaa !22
  store i32 %35, i32* %left, align 4, !tbaa !22
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.18, %if.end.16
  %36 = load i32, i32* %rtmp, align 4, !tbaa !22
  %37 = load i32, i32* %right, align 4, !tbaa !22
  %cmp20 = icmp sgt i32 %36, %37
  br i1 %cmp20, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %if.end.19
  %38 = load i32, i32* %rtmp, align 4, !tbaa !22
  store i32 %38, i32* %right, align 4, !tbaa !22
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.21, %if.end.19
  %39 = bitcast i32* %rtmp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %39) #2
  %40 = bitcast i32* %ltmp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %40) #2
  br label %for.inc

for.inc:                                          ; preds = %if.end.22
  %41 = load i32, i32* %i, align 4, !tbaa !22
  %inc = add nsw i32 %41, 1
  store i32 %inc, i32* %i, align 4, !tbaa !22
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %42 = load i32, i32* %left, align 4, !tbaa !22
  %43 = load i32*, i32** %leftmost.addr, align 8, !tbaa !1
  store i32 %42, i32* %43, align 4, !tbaa !22
  %44 = load i32, i32* %right, align 4, !tbaa !22
  %45 = load i32*, i32** %rightmost.addr, align 8, !tbaa !1
  store i32 %44, i32* %45, align 4, !tbaa !22
  %46 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %46) #2
  %47 = bitcast i32* %right to i8*
  call void @llvm.lifetime.end(i64 4, i8* %47) #2
  %48 = bitcast i32* %left to i8*
  call void @llvm.lifetime.end(i64 4, i8* %48) #2
  %49 = bitcast i32* %maxright to i8*
  call void @llvm.lifetime.end(i64 4, i8* %49) #2
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @print_cols(%struct._IO_FILE* %prn_stream, %struct.gx_device_printer_s* %pdev, i8* %outbuf, i32 %left, i32 %right, i32 %vstart, i32 %vend, i8** %buf, i32 %width, i32 %LR_SHIFT) #1 {
entry:
  %retval = alloca i32, align 4
  %prn_stream.addr = alloca %struct._IO_FILE*, align 8
  %pdev.addr = alloca %struct.gx_device_printer_s*, align 8
  %outbuf.addr = alloca i8*, align 8
  %left.addr = alloca i32, align 4
  %right.addr = alloca i32, align 4
  %vstart.addr = alloca i32, align 4
  %vend.addr = alloca i32, align 4
  %buf.addr = alloca i8**, align 8
  %width.addr = alloca i32, align 4
  %LR_SHIFT.addr = alloca i32, align 4
  %mask = alloca [8 x i8], align 1
  %mask16 = alloca [16 x i32], align 16
  %l8 = alloca i32, align 4
  %r8 = alloca i32, align 4
  %packets = alloca i32, align 4
  %p = alloca i8*, align 8
  %clen = alloca i32, align 4
  %i = alloca i32, align 4
  %k = alloca i32, align 4
  %vbuf = alloca [13 x i32], align 16
  %vi = alloca i32, align 4
  %vp = alloca i8*, align 8
  %vp2 = alloca i8*, align 8
  %smask = alloca i32, align 4
  %smask2 = alloca i32, align 4
  %rle1size = alloca i32, align 4
  %rle2size = alloca i32, align 4
  %bits = alloca i32, align 4
  %tbits = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  %t = alloca i32, align 4
  %ob = alloca [28 x i8], align 16
  %lastword = alloca i32, align 4
  %byts = alloca i32, align 4
  %pp = alloca i8*, align 8
  %t128 = alloca i32, align 4
  store %struct._IO_FILE* %prn_stream, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  store %struct.gx_device_printer_s* %pdev, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  store i8* %outbuf, i8** %outbuf.addr, align 8, !tbaa !1
  store i32 %left, i32* %left.addr, align 4, !tbaa !22
  store i32 %right, i32* %right.addr, align 4, !tbaa !22
  store i32 %vstart, i32* %vstart.addr, align 4, !tbaa !22
  store i32 %vend, i32* %vend.addr, align 4, !tbaa !22
  store i8** %buf, i8*** %buf.addr, align 8, !tbaa !1
  store i32 %width, i32* %width.addr, align 4, !tbaa !22
  store i32 %LR_SHIFT, i32* %LR_SHIFT.addr, align 4, !tbaa !22
  %0 = bitcast [8 x i8]* %mask to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = bitcast [8 x i8]* %mask to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @print_cols.mask, i32 0, i32 0), i64 8, i32 1, i1 false)
  %2 = bitcast [16 x i32]* %mask16 to i8*
  call void @llvm.lifetime.start(i64 64, i8* %2) #2
  %3 = bitcast [16 x i32]* %mask16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* bitcast ([16 x i32]* @print_cols.mask16 to i8*), i64 64, i32 16, i1 false)
  %4 = bitcast i32* %l8 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = bitcast i32* %r8 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  %6 = bitcast i32* %packets to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #2
  %8 = load i8*, i8** %outbuf.addr, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %8, i64 26
  store i8* %add.ptr, i8** %p, align 8, !tbaa !1
  %9 = bitcast i32* %clen to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #2
  %10 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #2
  %11 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #2
  %12 = bitcast [13 x i32]* %vbuf to i8*
  call void @llvm.lifetime.start(i64 52, i8* %12) #2
  %13 = bitcast i32* %vi to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #2
  %14 = bitcast i8** %vp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #2
  %15 = bitcast i8** %vp2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15) #2
  %16 = bitcast i32* %smask to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #2
  %17 = bitcast i32* %smask2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #2
  %18 = load i32, i32* %left.addr, align 4, !tbaa !22
  %add = add nsw i32 %18, 50
  store i32 %add, i32* %l8, align 4, !tbaa !22
  %19 = load i32, i32* %right.addr, align 4, !tbaa !22
  %add1 = add nsw i32 %19, 50
  store i32 %add1, i32* %r8, align 4, !tbaa !22
  %20 = load i32, i32* %r8, align 4, !tbaa !22
  %21 = load i32, i32* %l8, align 4, !tbaa !22
  %sub = sub nsw i32 %20, %21
  %add2 = add nsw i32 %sub, 1
  store i32 %add2, i32* %packets, align 4, !tbaa !22
  %22 = load i32, i32* %packets, align 4, !tbaa !22
  %shr = ashr i32 %22, 8
  %conv = trunc i32 %shr to i8
  %23 = load i8*, i8** %outbuf.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %23, i64 13
  store i8 %conv, i8* %arrayidx, align 1, !tbaa !34
  %24 = load i32, i32* %packets, align 4, !tbaa !22
  %and = and i32 %24, 255
  %conv3 = trunc i32 %and to i8
  %25 = load i8*, i8** %outbuf.addr, align 8, !tbaa !1
  %arrayidx4 = getelementptr inbounds i8, i8* %25, i64 14
  store i8 %conv3, i8* %arrayidx4, align 1, !tbaa !34
  %26 = load i32, i32* %l8, align 4, !tbaa !22
  %shr5 = ashr i32 %26, 8
  %conv6 = trunc i32 %shr5 to i8
  %27 = load i8*, i8** %outbuf.addr, align 8, !tbaa !1
  %arrayidx7 = getelementptr inbounds i8, i8* %27, i64 15
  store i8 %conv6, i8* %arrayidx7, align 1, !tbaa !34
  %28 = load i32, i32* %l8, align 4, !tbaa !22
  %and8 = and i32 %28, 255
  %conv9 = trunc i32 %and8 to i8
  %29 = load i8*, i8** %outbuf.addr, align 8, !tbaa !1
  %arrayidx10 = getelementptr inbounds i8, i8* %29, i64 16
  store i8 %conv9, i8* %arrayidx10, align 1, !tbaa !34
  %30 = load i32, i32* %r8, align 4, !tbaa !22
  %shr11 = ashr i32 %30, 8
  %conv12 = trunc i32 %shr11 to i8
  %31 = load i8*, i8** %outbuf.addr, align 8, !tbaa !1
  %arrayidx13 = getelementptr inbounds i8, i8* %31, i64 17
  store i8 %conv12, i8* %arrayidx13, align 1, !tbaa !34
  %32 = load i32, i32* %r8, align 4, !tbaa !22
  %and14 = and i32 %32, 255
  %conv15 = trunc i32 %and14 to i8
  %33 = load i8*, i8** %outbuf.addr, align 8, !tbaa !1
  %arrayidx16 = getelementptr inbounds i8, i8* %33, i64 18
  store i8 %conv15, i8* %arrayidx16, align 1, !tbaa !34
  %34 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %35 = bitcast %struct.gx_device_printer_s* %34 to %struct.lxm_device_s*
  %printertype = getelementptr inbounds %struct.lxm_device_s, %struct.lxm_device_s* %35, i32 0, i32 73
  %36 = load i32, i32* %printertype, align 4, !tbaa !33
  %cmp = icmp eq i32 %36, 0
  %cond = select i1 %cmp, i32 17, i32 1
  %conv18 = trunc i32 %cond to i8
  %37 = load i8*, i8** %outbuf.addr, align 8, !tbaa !1
  %arrayidx19 = getelementptr inbounds i8, i8* %37, i64 12
  store i8 %conv18, i8* %arrayidx19, align 1, !tbaa !34
  %38 = load i32, i32* %left.addr, align 4, !tbaa !22
  store i32 %38, i32* %i, align 4, !tbaa !22
  br label %for.cond

for.cond:                                         ; preds = %for.inc.173, %entry
  %39 = load i32, i32* %i, align 4, !tbaa !22
  %40 = load i32, i32* %right.addr, align 4, !tbaa !22
  %cmp20 = icmp sle i32 %39, %40
  br i1 %cmp20, label %for.body, label %for.end.175

for.body:                                         ; preds = %for.cond
  %41 = bitcast i32* %rle1size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %41) #2
  %42 = bitcast i32* %rle2size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %42) #2
  %43 = bitcast i32* %bits to i8*
  call void @llvm.lifetime.start(i64 4, i8* %43) #2
  store i32 0, i32* %bits, align 4, !tbaa !22
  %44 = bitcast i8** %tbits to i8*
  call void @llvm.lifetime.start(i64 8, i8* %44) #2
  %45 = load i8*, i8** %p, align 8, !tbaa !1
  %46 = load i8*, i8** %outbuf.addr, align 8, !tbaa !1
  %sub.ptr.lhs.cast = ptrtoint i8* %45 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %46 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp22 = icmp sge i64 %sub.ptr.sub, 255972
  br i1 %cmp22, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %for.body
  %47 = load i8*, i8** %p, align 8, !tbaa !1
  store i8* %47, i8** %tbits, align 8, !tbaa !1
  %48 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr24 = getelementptr inbounds i8, i8* %48, i64 2
  store i8* %add.ptr24, i8** %p, align 8, !tbaa !1
  %arraydecay = getelementptr inbounds [13 x i32], [13 x i32]* %vbuf, i32 0, i32 0
  %49 = bitcast i32* %arraydecay to i8*
  %call = call i8* @memset(i8* %49, i32 0, i64 52) #6
  %50 = load i32, i32* %i, align 4, !tbaa !22
  %and25 = and i32 %50, 7
  %idxprom = sext i32 %and25 to i64
  %arrayidx26 = getelementptr inbounds [8 x i8], [8 x i8]* %mask, i32 0, i64 %idxprom
  %51 = load i8, i8* %arrayidx26, align 1, !tbaa !34
  %conv27 = zext i8 %51 to i32
  store i32 %conv27, i32* %smask, align 4, !tbaa !22
  %52 = load i32, i32* %i, align 4, !tbaa !22
  %53 = load i32, i32* %LR_SHIFT.addr, align 4, !tbaa !22
  %add28 = add nsw i32 %52, %53
  %and29 = and i32 %add28, 7
  %idxprom30 = sext i32 %and29 to i64
  %arrayidx31 = getelementptr inbounds [8 x i8], [8 x i8]* %mask, i32 0, i64 %idxprom30
  %54 = load i8, i8* %arrayidx31, align 1, !tbaa !34
  %conv32 = zext i8 %54 to i32
  store i32 %conv32, i32* %smask2, align 4, !tbaa !22
  %55 = load i32, i32* %vstart.addr, align 4, !tbaa !22
  %mul = mul nsw i32 %55, 2
  store i32 %mul, i32* %vi, align 4, !tbaa !22
  %56 = load i32, i32* %vstart.addr, align 4, !tbaa !22
  store i32 %56, i32* %k, align 4, !tbaa !22
  br label %for.cond.33

for.cond.33:                                      ; preds = %for.inc, %if.end
  %57 = load i32, i32* %k, align 4, !tbaa !22
  %58 = load i32, i32* %vend.addr, align 4, !tbaa !22
  %cmp34 = icmp slt i32 %57, %58
  br i1 %cmp34, label %for.body.36, label %for.end

for.body.36:                                      ; preds = %for.cond.33
  %59 = load i32, i32* %k, align 4, !tbaa !22
  %mul37 = mul nsw i32 %59, 2
  %idxprom38 = sext i32 %mul37 to i64
  %60 = load i8**, i8*** %buf.addr, align 8, !tbaa !1
  %arrayidx39 = getelementptr inbounds i8*, i8** %60, i64 %idxprom38
  %61 = load i8*, i8** %arrayidx39, align 8, !tbaa !1
  %62 = load i32, i32* %i, align 4, !tbaa !22
  %shr40 = ashr i32 %62, 3
  %idx.ext = sext i32 %shr40 to i64
  %add.ptr41 = getelementptr inbounds i8, i8* %61, i64 %idx.ext
  store i8* %add.ptr41, i8** %vp, align 8, !tbaa !1
  %63 = load i32, i32* %k, align 4, !tbaa !22
  %mul42 = mul nsw i32 %63, 2
  %add43 = add nsw i32 %mul42, 1
  %idxprom44 = sext i32 %add43 to i64
  %64 = load i8**, i8*** %buf.addr, align 8, !tbaa !1
  %arrayidx45 = getelementptr inbounds i8*, i8** %64, i64 %idxprom44
  %65 = load i8*, i8** %arrayidx45, align 8, !tbaa !1
  %66 = load i32, i32* %i, align 4, !tbaa !22
  %67 = load i32, i32* %LR_SHIFT.addr, align 4, !tbaa !22
  %add46 = add nsw i32 %66, %67
  %shr47 = ashr i32 %add46, 3
  %idx.ext48 = sext i32 %shr47 to i64
  %add.ptr49 = getelementptr inbounds i8, i8* %65, i64 %idx.ext48
  store i8* %add.ptr49, i8** %vp2, align 8, !tbaa !1
  %68 = load i8*, i8** %vp, align 8, !tbaa !1
  %arrayidx50 = getelementptr inbounds i8, i8* %68, i64 0
  %69 = load i8, i8* %arrayidx50, align 1, !tbaa !34
  %conv51 = zext i8 %69 to i32
  %70 = load i32, i32* %smask, align 4, !tbaa !22
  %and52 = and i32 %conv51, %70
  %cmp53 = icmp ne i32 %and52, 0
  br i1 %cmp53, label %if.then.55, label %if.end.62

if.then.55:                                       ; preds = %for.body.36
  %71 = load i32, i32* %vi, align 4, !tbaa !22
  %and56 = and i32 %71, 15
  %idxprom57 = sext i32 %and56 to i64
  %arrayidx58 = getelementptr inbounds [16 x i32], [16 x i32]* %mask16, i32 0, i64 %idxprom57
  %72 = load i32, i32* %arrayidx58, align 4, !tbaa !22
  %73 = load i32, i32* %vi, align 4, !tbaa !22
  %shr59 = ashr i32 %73, 4
  %idxprom60 = sext i32 %shr59 to i64
  %arrayidx61 = getelementptr inbounds [13 x i32], [13 x i32]* %vbuf, i32 0, i64 %idxprom60
  %74 = load i32, i32* %arrayidx61, align 4, !tbaa !22
  %or = or i32 %74, %72
  store i32 %or, i32* %arrayidx61, align 4, !tbaa !22
  br label %if.end.62

if.end.62:                                        ; preds = %if.then.55, %for.body.36
  %75 = load i32, i32* %vi, align 4, !tbaa !22
  %inc = add nsw i32 %75, 1
  store i32 %inc, i32* %vi, align 4, !tbaa !22
  %76 = load i32, i32* %i, align 4, !tbaa !22
  %77 = load i32, i32* %LR_SHIFT.addr, align 4, !tbaa !22
  %add63 = add nsw i32 %76, %77
  %78 = load i32, i32* %width.addr, align 4, !tbaa !22
  %mul64 = mul nsw i32 %78, 8
  %cmp65 = icmp slt i32 %add63, %mul64
  br i1 %cmp65, label %if.then.67, label %if.end.82

if.then.67:                                       ; preds = %if.end.62
  %79 = load i8*, i8** %vp2, align 8, !tbaa !1
  %arrayidx68 = getelementptr inbounds i8, i8* %79, i64 0
  %80 = load i8, i8* %arrayidx68, align 1, !tbaa !34
  %conv69 = zext i8 %80 to i32
  %81 = load i32, i32* %smask2, align 4, !tbaa !22
  %and70 = and i32 %conv69, %81
  %cmp71 = icmp ne i32 %and70, 0
  br i1 %cmp71, label %if.then.73, label %if.end.81

if.then.73:                                       ; preds = %if.then.67
  %82 = load i32, i32* %vi, align 4, !tbaa !22
  %and74 = and i32 %82, 15
  %idxprom75 = sext i32 %and74 to i64
  %arrayidx76 = getelementptr inbounds [16 x i32], [16 x i32]* %mask16, i32 0, i64 %idxprom75
  %83 = load i32, i32* %arrayidx76, align 4, !tbaa !22
  %84 = load i32, i32* %vi, align 4, !tbaa !22
  %shr77 = ashr i32 %84, 4
  %idxprom78 = sext i32 %shr77 to i64
  %arrayidx79 = getelementptr inbounds [13 x i32], [13 x i32]* %vbuf, i32 0, i64 %idxprom78
  %85 = load i32, i32* %arrayidx79, align 4, !tbaa !22
  %or80 = or i32 %85, %83
  store i32 %or80, i32* %arrayidx79, align 4, !tbaa !22
  br label %if.end.81

if.end.81:                                        ; preds = %if.then.73, %if.then.67
  br label %if.end.82

if.end.82:                                        ; preds = %if.end.81, %if.end.62
  %86 = load i32, i32* %vi, align 4, !tbaa !22
  %inc83 = add nsw i32 %86, 1
  store i32 %inc83, i32* %vi, align 4, !tbaa !22
  br label %for.inc

for.inc:                                          ; preds = %if.end.82
  %87 = load i32, i32* %k, align 4, !tbaa !22
  %inc84 = add nsw i32 %87, 1
  store i32 %inc84, i32* %k, align 4, !tbaa !22
  br label %for.cond.33

for.end:                                          ; preds = %for.cond.33
  store i32 0, i32* %k, align 4, !tbaa !22
  br label %for.cond.85

for.cond.85:                                      ; preds = %for.inc.103, %for.end
  %88 = load i32, i32* %k, align 4, !tbaa !22
  %cmp86 = icmp slt i32 %88, 13
  br i1 %cmp86, label %for.body.88, label %for.end.105

for.body.88:                                      ; preds = %for.cond.85
  %89 = bitcast i32* %t to i8*
  call void @llvm.lifetime.start(i64 4, i8* %89) #2
  %90 = load i32, i32* %k, align 4, !tbaa !22
  %idxprom89 = sext i32 %90 to i64
  %arrayidx90 = getelementptr inbounds [13 x i32], [13 x i32]* %vbuf, i32 0, i64 %idxprom89
  %91 = load i32, i32* %arrayidx90, align 4, !tbaa !22
  store i32 %91, i32* %t, align 4, !tbaa !22
  %92 = load i32, i32* %bits, align 4, !tbaa !22
  %shr91 = ashr i32 %92, 1
  store i32 %shr91, i32* %bits, align 4, !tbaa !22
  %93 = load i32, i32* %t, align 4, !tbaa !22
  %cmp92 = icmp eq i32 %93, 0
  br i1 %cmp92, label %if.then.94, label %if.else

if.then.94:                                       ; preds = %for.body.88
  %94 = load i32, i32* %bits, align 4, !tbaa !22
  %add95 = add nsw i32 %94, 4096
  store i32 %add95, i32* %bits, align 4, !tbaa !22
  br label %if.end.102

if.else:                                          ; preds = %for.body.88
  %95 = load i32, i32* %t, align 4, !tbaa !22
  %shr96 = lshr i32 %95, 8
  %and97 = and i32 %shr96, 255
  %conv98 = trunc i32 %and97 to i8
  %96 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %96, i32 1
  store i8* %incdec.ptr, i8** %p, align 8, !tbaa !1
  store i8 %conv98, i8* %96, align 1, !tbaa !34
  %97 = load i32, i32* %t, align 4, !tbaa !22
  %and99 = and i32 %97, 255
  %conv100 = trunc i32 %and99 to i8
  %98 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr101 = getelementptr inbounds i8, i8* %98, i32 1
  store i8* %incdec.ptr101, i8** %p, align 8, !tbaa !1
  store i8 %conv100, i8* %98, align 1, !tbaa !34
  br label %if.end.102

if.end.102:                                       ; preds = %if.else, %if.then.94
  %99 = bitcast i32* %t to i8*
  call void @llvm.lifetime.end(i64 4, i8* %99) #2
  br label %for.inc.103

for.inc.103:                                      ; preds = %if.end.102
  %100 = load i32, i32* %k, align 4, !tbaa !22
  %inc104 = add nsw i32 %100, 1
  store i32 %inc104, i32* %k, align 4, !tbaa !22
  br label %for.cond.85

for.end.105:                                      ; preds = %for.cond.85
  %101 = load i32, i32* %bits, align 4, !tbaa !22
  %and106 = and i32 %101, 255
  %conv107 = trunc i32 %and106 to i8
  %102 = load i8*, i8** %tbits, align 8, !tbaa !1
  %arrayidx108 = getelementptr inbounds i8, i8* %102, i64 1
  store i8 %conv107, i8* %arrayidx108, align 1, !tbaa !34
  %103 = load i32, i32* %bits, align 4, !tbaa !22
  %shr109 = ashr i32 %103, 8
  %and110 = and i32 %shr109, 31
  %or111 = or i32 %and110, 32
  %conv112 = trunc i32 %or111 to i8
  %104 = load i8*, i8** %tbits, align 8, !tbaa !1
  store i8 %conv112, i8* %104, align 1, !tbaa !34
  %105 = load i8*, i8** %p, align 8, !tbaa !1
  %106 = load i8*, i8** %tbits, align 8, !tbaa !1
  %sub.ptr.lhs.cast113 = ptrtoint i8* %105 to i64
  %sub.ptr.rhs.cast114 = ptrtoint i8* %106 to i64
  %sub.ptr.sub115 = sub i64 %sub.ptr.lhs.cast113, %sub.ptr.rhs.cast114
  %conv116 = trunc i64 %sub.ptr.sub115 to i32
  store i32 %conv116, i32* %rle1size, align 4, !tbaa !22
  %107 = load i32, i32* %rle1size, align 4, !tbaa !22
  %cmp117 = icmp sgt i32 %107, 6
  br i1 %cmp117, label %if.then.119, label %if.end.169

if.then.119:                                      ; preds = %for.end.105
  %108 = bitcast [28 x i8]* %ob to i8*
  call void @llvm.lifetime.start(i64 28, i8* %108) #2
  %109 = bitcast i32* %lastword to i8*
  call void @llvm.lifetime.start(i64 4, i8* %109) #2
  store i32 36863, i32* %lastword, align 4, !tbaa !22
  %110 = bitcast i32* %byts to i8*
  call void @llvm.lifetime.start(i64 4, i8* %110) #2
  store i32 0, i32* %byts, align 4, !tbaa !22
  %111 = bitcast i8** %pp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %111) #2
  %arraydecay120 = getelementptr inbounds [28 x i8], [28 x i8]* %ob, i32 0, i32 0
  %add.ptr121 = getelementptr inbounds i8, i8* %arraydecay120, i64 2
  store i8* %add.ptr121, i8** %pp, align 8, !tbaa !1
  %arraydecay122 = getelementptr inbounds [28 x i8], [28 x i8]* %ob, i32 0, i32 0
  %call123 = call i8* @memset(i8* %arraydecay122, i32 0, i64 28) #6
  store i32 0, i32* %k, align 4, !tbaa !22
  br label %for.cond.124

for.cond.124:                                     ; preds = %for.inc.145, %if.then.119
  %112 = load i32, i32* %k, align 4, !tbaa !22
  %cmp125 = icmp slt i32 %112, 13
  br i1 %cmp125, label %for.body.127, label %for.end.147

for.body.127:                                     ; preds = %for.cond.124
  %113 = bitcast i32* %t128 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %113) #2
  %114 = load i32, i32* %k, align 4, !tbaa !22
  %idxprom129 = sext i32 %114 to i64
  %arrayidx130 = getelementptr inbounds [13 x i32], [13 x i32]* %vbuf, i32 0, i64 %idxprom129
  %115 = load i32, i32* %arrayidx130, align 4, !tbaa !22
  store i32 %115, i32* %t128, align 4, !tbaa !22
  %116 = load i32, i32* %byts, align 4, !tbaa !22
  %shr131 = ashr i32 %116, 1
  store i32 %shr131, i32* %byts, align 4, !tbaa !22
  %117 = load i32, i32* %t128, align 4, !tbaa !22
  %118 = load i32, i32* %lastword, align 4, !tbaa !22
  %cmp132 = icmp eq i32 %117, %118
  br i1 %cmp132, label %if.then.134, label %if.else.136

if.then.134:                                      ; preds = %for.body.127
  %119 = load i32, i32* %byts, align 4, !tbaa !22
  %add135 = add nsw i32 %119, 4096
  store i32 %add135, i32* %byts, align 4, !tbaa !22
  br label %if.end.144

if.else.136:                                      ; preds = %for.body.127
  %120 = load i32, i32* %t128, align 4, !tbaa !22
  %shr137 = lshr i32 %120, 8
  %and138 = and i32 %shr137, 255
  %conv139 = trunc i32 %and138 to i8
  %121 = load i8*, i8** %pp, align 8, !tbaa !1
  %incdec.ptr140 = getelementptr inbounds i8, i8* %121, i32 1
  store i8* %incdec.ptr140, i8** %pp, align 8, !tbaa !1
  store i8 %conv139, i8* %121, align 1, !tbaa !34
  %122 = load i32, i32* %t128, align 4, !tbaa !22
  %and141 = and i32 %122, 255
  %conv142 = trunc i32 %and141 to i8
  %123 = load i8*, i8** %pp, align 8, !tbaa !1
  %incdec.ptr143 = getelementptr inbounds i8, i8* %123, i32 1
  store i8* %incdec.ptr143, i8** %pp, align 8, !tbaa !1
  store i8 %conv142, i8* %123, align 1, !tbaa !34
  %124 = load i32, i32* %t128, align 4, !tbaa !22
  store i32 %124, i32* %lastword, align 4, !tbaa !22
  br label %if.end.144

if.end.144:                                       ; preds = %if.else.136, %if.then.134
  %125 = bitcast i32* %t128 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %125) #2
  br label %for.inc.145

for.inc.145:                                      ; preds = %if.end.144
  %126 = load i32, i32* %k, align 4, !tbaa !22
  %inc146 = add nsw i32 %126, 1
  store i32 %inc146, i32* %k, align 4, !tbaa !22
  br label %for.cond.124

for.end.147:                                      ; preds = %for.cond.124
  %127 = load i32, i32* %byts, align 4, !tbaa !22
  %and148 = and i32 %127, 255
  %conv149 = trunc i32 %and148 to i8
  %arrayidx150 = getelementptr inbounds [28 x i8], [28 x i8]* %ob, i32 0, i64 1
  store i8 %conv149, i8* %arrayidx150, align 1, !tbaa !34
  %128 = load i32, i32* %byts, align 4, !tbaa !22
  %shr151 = ashr i32 %128, 8
  %and152 = and i32 %shr151, 31
  %conv153 = trunc i32 %and152 to i8
  %arrayidx154 = getelementptr inbounds [28 x i8], [28 x i8]* %ob, i32 0, i64 0
  store i8 %conv153, i8* %arrayidx154, align 1, !tbaa !34
  %129 = load i8*, i8** %pp, align 8, !tbaa !1
  %arraydecay155 = getelementptr inbounds [28 x i8], [28 x i8]* %ob, i32 0, i32 0
  %sub.ptr.lhs.cast156 = ptrtoint i8* %129 to i64
  %sub.ptr.rhs.cast157 = ptrtoint i8* %arraydecay155 to i64
  %sub.ptr.sub158 = sub i64 %sub.ptr.lhs.cast156, %sub.ptr.rhs.cast157
  %conv159 = trunc i64 %sub.ptr.sub158 to i32
  store i32 %conv159, i32* %rle2size, align 4, !tbaa !22
  %130 = load i32, i32* %rle1size, align 4, !tbaa !22
  %131 = load i32, i32* %rle2size, align 4, !tbaa !22
  %cmp160 = icmp sgt i32 %130, %131
  br i1 %cmp160, label %if.then.162, label %if.end.168

if.then.162:                                      ; preds = %for.end.147
  %132 = load i8*, i8** %tbits, align 8, !tbaa !1
  %arraydecay163 = getelementptr inbounds [28 x i8], [28 x i8]* %ob, i32 0, i32 0
  %133 = load i32, i32* %rle2size, align 4, !tbaa !22
  %conv164 = sext i32 %133 to i64
  %call165 = call i8* @memcpy(i8* %132, i8* %arraydecay163, i64 %conv164) #6
  %134 = load i8*, i8** %tbits, align 8, !tbaa !1
  %135 = load i32, i32* %rle2size, align 4, !tbaa !22
  %idx.ext166 = sext i32 %135 to i64
  %add.ptr167 = getelementptr inbounds i8, i8* %134, i64 %idx.ext166
  store i8* %add.ptr167, i8** %p, align 8, !tbaa !1
  br label %if.end.168

if.end.168:                                       ; preds = %if.then.162, %for.end.147
  %136 = bitcast i8** %pp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %136) #2
  %137 = bitcast i32* %byts to i8*
  call void @llvm.lifetime.end(i64 4, i8* %137) #2
  %138 = bitcast i32* %lastword to i8*
  call void @llvm.lifetime.end(i64 4, i8* %138) #2
  %139 = bitcast [28 x i8]* %ob to i8*
  call void @llvm.lifetime.end(i64 28, i8* %139) #2
  br label %if.end.169

if.end.169:                                       ; preds = %if.end.168, %for.end.105
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.169, %if.then
  %140 = bitcast i8** %tbits to i8*
  call void @llvm.lifetime.end(i64 8, i8* %140) #2
  %141 = bitcast i32* %bits to i8*
  call void @llvm.lifetime.end(i64 4, i8* %141) #2
  %142 = bitcast i32* %rle2size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %142) #2
  %143 = bitcast i32* %rle1size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %143) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.191 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc.173

for.inc.173:                                      ; preds = %cleanup.cont
  %144 = load i32, i32* %i, align 4, !tbaa !22
  %inc174 = add nsw i32 %144, 1
  store i32 %inc174, i32* %i, align 4, !tbaa !22
  br label %for.cond

for.end.175:                                      ; preds = %for.cond
  %145 = load i8*, i8** %p, align 8, !tbaa !1
  %146 = load i8*, i8** %outbuf.addr, align 8, !tbaa !1
  %sub.ptr.lhs.cast176 = ptrtoint i8* %145 to i64
  %sub.ptr.rhs.cast177 = ptrtoint i8* %146 to i64
  %sub.ptr.sub178 = sub i64 %sub.ptr.lhs.cast176, %sub.ptr.rhs.cast177
  %conv179 = trunc i64 %sub.ptr.sub178 to i32
  store i32 %conv179, i32* %clen, align 4, !tbaa !22
  %147 = load i32, i32* %clen, align 4, !tbaa !22
  %shr180 = ashr i32 %147, 16
  %conv181 = trunc i32 %shr180 to i8
  %148 = load i8*, i8** %outbuf.addr, align 8, !tbaa !1
  %arrayidx182 = getelementptr inbounds i8, i8* %148, i64 4
  store i8 %conv181, i8* %arrayidx182, align 1, !tbaa !34
  %149 = load i32, i32* %clen, align 4, !tbaa !22
  %shr183 = ashr i32 %149, 8
  %conv184 = trunc i32 %shr183 to i8
  %150 = load i8*, i8** %outbuf.addr, align 8, !tbaa !1
  %arrayidx185 = getelementptr inbounds i8, i8* %150, i64 5
  store i8 %conv184, i8* %arrayidx185, align 1, !tbaa !34
  %151 = load i32, i32* %clen, align 4, !tbaa !22
  %and186 = and i32 %151, 255
  %conv187 = trunc i32 %and186 to i8
  %152 = load i8*, i8** %outbuf.addr, align 8, !tbaa !1
  %arrayidx188 = getelementptr inbounds i8, i8* %152, i64 6
  store i8 %conv187, i8* %arrayidx188, align 1, !tbaa !34
  %153 = load i8*, i8** %outbuf.addr, align 8, !tbaa !1
  %154 = load i32, i32* %clen, align 4, !tbaa !22
  %conv189 = sext i32 %154 to i64
  %155 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call190 = call i64 @fwrite(i8* %153, i64 1, i64 %conv189, %struct._IO_FILE* %155) #5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.191

cleanup.191:                                      ; preds = %for.end.175, %cleanup
  %156 = bitcast i32* %smask2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %156) #2
  %157 = bitcast i32* %smask to i8*
  call void @llvm.lifetime.end(i64 4, i8* %157) #2
  %158 = bitcast i8** %vp2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %158) #2
  %159 = bitcast i8** %vp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %159) #2
  %160 = bitcast i32* %vi to i8*
  call void @llvm.lifetime.end(i64 4, i8* %160) #2
  %161 = bitcast [13 x i32]* %vbuf to i8*
  call void @llvm.lifetime.end(i64 52, i8* %161) #2
  %162 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %162) #2
  %163 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %163) #2
  %164 = bitcast i32* %clen to i8*
  call void @llvm.lifetime.end(i64 4, i8* %164) #2
  %165 = bitcast i8** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %165) #2
  %166 = bitcast i32* %packets to i8*
  call void @llvm.lifetime.end(i64 4, i8* %166) #2
  %167 = bitcast i32* %r8 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %167) #2
  %168 = bitcast i32* %l8 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %168) #2
  %169 = bitcast [16 x i32]* %mask16 to i8*
  call void @llvm.lifetime.end(i64 64, i8* %169) #2
  %170 = bitcast [8 x i8]* %mask to i8*
  call void @llvm.lifetime.end(i64 8, i8* %170) #2
  %171 = load i32, i32* %retval
  ret i32 %171
}

; Function Attrs: nounwind uwtable
define internal void @lex_eject(%struct._IO_FILE* %out) #1 {
entry:
  %out.addr = alloca %struct._IO_FILE*, align 8
  %buf = alloca [4 x i8], align 1
  store %struct._IO_FILE* %out, %struct._IO_FILE** %out.addr, align 8, !tbaa !1
  %0 = bitcast [4 x i8]* %buf to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast [4 x i8]* %buf to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @lex_eject.buf, i32 0, i32 0), i64 4, i32 1, i1 false)
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %buf, i32 0, i32 0
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8, !tbaa !1
  %call = call i64 @fwrite(i8* %arraydecay, i64 4, i64 1, %struct._IO_FILE* %2) #5
  %3 = bitcast [4 x i8]* %buf to i8*
  call void @llvm.lifetime.end(i64 4, i8* %3) #2
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @leftmost_pixel(i8* %buf, i32 %bytelen) #1 {
entry:
  %retval = alloca i32, align 4
  %buf.addr = alloca i8*, align 8
  %bytelen.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %r = alloca i8*, align 8
  %b = alloca i8, align 1
  %cleanup.dest.slot = alloca i32
  store i8* %buf, i8** %buf.addr, align 8, !tbaa !1
  store i32 %bytelen, i32* %bytelen.addr, align 4, !tbaa !22
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast i8** %r to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #2
  %2 = load i8*, i8** %buf.addr, align 8, !tbaa !1
  store i8* %2, i8** %r, align 8, !tbaa !1
  call void @llvm.lifetime.start(i64 1, i8* %b) #2
  %3 = load i8*, i8** %buf.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 0
  %4 = load i8, i8* %arrayidx, align 1, !tbaa !34
  %conv = zext i8 %4 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %5 = load i8*, i8** %buf.addr, align 8, !tbaa !1
  %6 = load i8*, i8** %buf.addr, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %6, i64 1
  %7 = load i32, i32* %bytelen.addr, align 4, !tbaa !22
  %sub = sub nsw i32 %7, 1
  %conv2 = sext i32 %sub to i64
  %call = call i32 @memcmp(i8* %5, i8* %add.ptr, i64 %conv2) #7
  %cmp3 = icmp eq i32 %call, 0
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %8 = load i32, i32* %bytelen.addr, align 4, !tbaa !22
  %mul = mul nsw i32 %8, 8
  %sub5 = sub nsw i32 %mul, 1
  store i32 %sub5, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true, %entry
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %9 = load i8*, i8** %r, align 8, !tbaa !1
  %10 = load i8, i8* %9, align 1, !tbaa !34
  %conv6 = zext i8 %10 to i32
  %cmp7 = icmp eq i32 %conv6, 0
  br i1 %cmp7, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %11 = load i32, i32* %bytelen.addr, align 4, !tbaa !22
  %cmp9 = icmp sgt i32 %11, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %12 = phi i1 [ false, %while.cond ], [ %cmp9, %land.rhs ]
  br i1 %12, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %13 = load i8*, i8** %r, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %13, i32 1
  store i8* %incdec.ptr, i8** %r, align 8, !tbaa !1
  %14 = load i32, i32* %bytelen.addr, align 4, !tbaa !22
  %dec = add nsw i32 %14, -1
  store i32 %dec, i32* %bytelen.addr, align 4, !tbaa !22
  br label %while.cond

while.end:                                        ; preds = %land.end
  %15 = load i8*, i8** %r, align 8, !tbaa !1
  %16 = load i8, i8* %15, align 1, !tbaa !34
  store i8 %16, i8* %b, align 1, !tbaa !34
  store i32 0, i32* %i, align 4, !tbaa !22
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.end
  %17 = load i32, i32* %i, align 4, !tbaa !22
  %cmp11 = icmp slt i32 %17, 8
  br i1 %cmp11, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %18 = load i8, i8* %b, align 1, !tbaa !34
  %conv13 = zext i8 %18 to i32
  %19 = load i32, i32* %i, align 4, !tbaa !22
  %idxprom = sext i32 %19 to i64
  %arrayidx14 = getelementptr inbounds [8 x i8], [8 x i8]* @ofs8, i32 0, i64 %idxprom
  %20 = load i8, i8* %arrayidx14, align 1, !tbaa !34
  %conv15 = zext i8 %20 to i32
  %and = and i32 %conv13, %conv15
  %cmp16 = icmp ne i32 %and, 0
  br i1 %cmp16, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %for.body
  br label %for.end

if.end.19:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.19
  %21 = load i32, i32* %i, align 4, !tbaa !22
  %inc = add nsw i32 %21, 1
  store i32 %inc, i32* %i, align 4, !tbaa !22
  br label %for.cond

for.end:                                          ; preds = %if.then.18, %for.cond
  %22 = load i8*, i8** %r, align 8, !tbaa !1
  %23 = load i8*, i8** %buf.addr, align 8, !tbaa !1
  %sub.ptr.lhs.cast = ptrtoint i8* %22 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %23 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %mul20 = mul nsw i64 %sub.ptr.sub, 8
  %24 = load i32, i32* %i, align 4, !tbaa !22
  %conv21 = sext i32 %24 to i64
  %add = add nsw i64 %mul20, %conv21
  %conv22 = trunc i64 %add to i32
  store i32 %conv22, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end(i64 1, i8* %b) #2
  %25 = bitcast i8** %r to i8*
  call void @llvm.lifetime.end(i64 8, i8* %25) #2
  %26 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %26) #2
  %27 = load i32, i32* %retval
  ret i32 %27
}

; Function Attrs: nounwind uwtable
define internal i32 @rightmost_pixel(i8* %buf, i32 %bytelen) #1 {
entry:
  %retval = alloca i32, align 4
  %buf.addr = alloca i8*, align 8
  %bytelen.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %r = alloca i8*, align 8
  %b = alloca i8, align 1
  %cleanup.dest.slot = alloca i32
  store i8* %buf, i8** %buf.addr, align 8, !tbaa !1
  store i32 %bytelen, i32* %bytelen.addr, align 4, !tbaa !22
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast i8** %r to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #2
  %2 = load i8*, i8** %buf.addr, align 8, !tbaa !1
  %3 = load i32, i32* %bytelen.addr, align 4, !tbaa !22
  %sub = sub nsw i32 %3, 1
  %idx.ext = sext i32 %sub to i64
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 %idx.ext
  store i8* %add.ptr, i8** %r, align 8, !tbaa !1
  call void @llvm.lifetime.start(i64 1, i8* %b) #2
  %4 = load i8*, i8** %buf.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 0
  %5 = load i8, i8* %arrayidx, align 1, !tbaa !34
  %conv = zext i8 %5 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %6 = load i8*, i8** %buf.addr, align 8, !tbaa !1
  %7 = load i8*, i8** %buf.addr, align 8, !tbaa !1
  %add.ptr2 = getelementptr inbounds i8, i8* %7, i64 1
  %8 = load i32, i32* %bytelen.addr, align 4, !tbaa !22
  %sub3 = sub nsw i32 %8, 1
  %conv4 = sext i32 %sub3 to i64
  %call = call i32 @memcmp(i8* %6, i8* %add.ptr2, i64 %conv4) #7
  %cmp5 = icmp eq i32 %call, 0
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true, %entry
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %9 = load i8*, i8** %r, align 8, !tbaa !1
  %10 = load i8, i8* %9, align 1, !tbaa !34
  %conv7 = zext i8 %10 to i32
  %cmp8 = icmp eq i32 %conv7, 0
  br i1 %cmp8, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %11 = load i32, i32* %bytelen.addr, align 4, !tbaa !22
  %cmp10 = icmp sgt i32 %11, 1
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %12 = phi i1 [ false, %while.cond ], [ %cmp10, %land.rhs ]
  br i1 %12, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %13 = load i8*, i8** %r, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %13, i32 -1
  store i8* %incdec.ptr, i8** %r, align 8, !tbaa !1
  %14 = load i32, i32* %bytelen.addr, align 4, !tbaa !22
  %dec = add nsw i32 %14, -1
  store i32 %dec, i32* %bytelen.addr, align 4, !tbaa !22
  br label %while.cond

while.end:                                        ; preds = %land.end
  %15 = load i8*, i8** %r, align 8, !tbaa !1
  %16 = load i8, i8* %15, align 1, !tbaa !34
  store i8 %16, i8* %b, align 1, !tbaa !34
  store i32 7, i32* %i, align 4, !tbaa !22
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.end
  %17 = load i32, i32* %i, align 4, !tbaa !22
  %cmp12 = icmp sge i32 %17, 0
  br i1 %cmp12, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %18 = load i8, i8* %b, align 1, !tbaa !34
  %conv14 = zext i8 %18 to i32
  %19 = load i32, i32* %i, align 4, !tbaa !22
  %idxprom = sext i32 %19 to i64
  %arrayidx15 = getelementptr inbounds [8 x i8], [8 x i8]* @ofs8, i32 0, i64 %idxprom
  %20 = load i8, i8* %arrayidx15, align 1, !tbaa !34
  %conv16 = zext i8 %20 to i32
  %and = and i32 %conv14, %conv16
  %cmp17 = icmp ne i32 %and, 0
  br i1 %cmp17, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %for.body
  br label %for.end

if.end.20:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.20
  %21 = load i32, i32* %i, align 4, !tbaa !22
  %dec21 = add nsw i32 %21, -1
  store i32 %dec21, i32* %i, align 4, !tbaa !22
  br label %for.cond

for.end:                                          ; preds = %if.then.19, %for.cond
  %22 = load i8*, i8** %r, align 8, !tbaa !1
  %23 = load i8*, i8** %buf.addr, align 8, !tbaa !1
  %sub.ptr.lhs.cast = ptrtoint i8* %22 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %23 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %mul = mul nsw i64 %sub.ptr.sub, 8
  %24 = load i32, i32* %i, align 4, !tbaa !22
  %conv22 = sext i32 %24 to i64
  %add = add nsw i64 %mul, %conv22
  %conv23 = trunc i64 %add to i32
  store i32 %conv23, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end(i64 1, i8* %b) #2
  %25 = bitcast i8** %r to i8*
  call void @llvm.lifetime.end(i64 8, i8* %25) #2
  %26 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %26) #2
  %27 = load i32, i32* %retval
  ret i32 %27
}

attributes #0 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nobuiltin }
attributes #6 = { nobuiltin nounwind }
attributes #7 = { nobuiltin nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !7, i64 836}
!6 = !{!"gx_device_printer_s", !7, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !7, i64 40, !2, i64 48, !8, i64 56, !7, i64 80, !7, i64 84, !7, i64 88, !10, i64 96, !13, i64 816, !7, i64 832, !7, i64 836, !7, i64 840, !7, i64 844, !7, i64 848, !7, i64 852, !3, i64 856, !3, i64 864, !7, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !9, i64 928, !9, i64 936, !7, i64 944, !7, i64 948, !7, i64 952, !7, i64 956, !7, i64 960, !9, i64 968, !9, i64 976, !14, i64 984, !7, i64 1052, !7, i64 1056, !15, i64 1064, !2, i64 1104, !3, i64 1112, !17, i64 1120, !18, i64 1144, !3, i64 1728, !19, i64 12968, !3, i64 13056, !7, i64 17152, !7, i64 17156, !7, i64 17160, !7, i64 17164, !7, i64 17168, !7, i64 17172, !2, i64 17176, !9, i64 17184, !2, i64 17192, !2, i64 17200, !2, i64 17208, !2, i64 17216, !2, i64 17224, !7, i64 17232, !2, i64 17240, !7, i64 17248, !7, i64 17252, !21, i64 17256, !7, i64 17288, !2, i64 17296, !18, i64 17304, !18, i64 17888}
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
!22 = !{!7, !7, i64 0}
!23 = !{!24, !7, i64 18472}
!24 = !{!"lxm_device_s", !7, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !7, i64 40, !2, i64 48, !8, i64 56, !7, i64 80, !7, i64 84, !7, i64 88, !10, i64 96, !13, i64 816, !7, i64 832, !7, i64 836, !7, i64 840, !7, i64 844, !7, i64 848, !7, i64 852, !3, i64 856, !3, i64 864, !7, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !9, i64 928, !9, i64 936, !7, i64 944, !7, i64 948, !7, i64 952, !7, i64 956, !7, i64 960, !9, i64 968, !9, i64 976, !14, i64 984, !7, i64 1052, !7, i64 1056, !15, i64 1064, !2, i64 1104, !3, i64 1112, !17, i64 1120, !18, i64 1144, !3, i64 1728, !19, i64 12968, !3, i64 13056, !7, i64 17152, !7, i64 17156, !7, i64 17160, !7, i64 17164, !7, i64 17168, !7, i64 17172, !2, i64 17176, !9, i64 17184, !2, i64 17192, !2, i64 17200, !2, i64 17208, !2, i64 17216, !2, i64 17224, !7, i64 17232, !2, i64 17240, !7, i64 17248, !7, i64 17252, !21, i64 17256, !7, i64 17288, !2, i64 17296, !18, i64 17304, !18, i64 17888, !7, i64 18472, !2, i64 18480, !7, i64 18488, !2, i64 18496, !7, i64 18504, !7, i64 18508}
!25 = !{!26, !26, i64 0}
!26 = !{!"float", !3, i64 0}
!27 = !{!6, !2, i64 24}
!28 = !{!29, !2, i64 200}
!29 = !{!"gs_memory_s", !2, i64 0, !30, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!30 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!31 = !{!29, !2, i64 88}
!32 = !{!29, !2, i64 24}
!33 = !{!24, !7, i64 18508}
!34 = !{!3, !3, i64 0}
!35 = !{!24, !2, i64 18480}
!36 = !{!24, !7, i64 18488}
!37 = !{!24, !2, i64 18496}
!38 = !{!24, !7, i64 18504}
!39 = !{!40, !2, i64 0}
!40 = !{!"gs_param_list_s", !2, i64 0, !2, i64 8, !7, i64 16}
!41 = !{!42, !2, i64 56}
!42 = !{!"gs_param_list_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64}
