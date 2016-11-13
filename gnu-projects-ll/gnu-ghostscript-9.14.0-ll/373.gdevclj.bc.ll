; ModuleID = './gdevclj.bc'
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
%struct.clj_paper_size_s = type { i32, i32, float, float, %struct.gs_point_s }
%struct.gx_device_clj_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [11240 x i8], %struct.gx_printer_device_procs_s, [4096 x i8], i32, i32, i32, i32, i32, i32, %struct._IO_FILE*, i64, i8*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s*, i32)*, %struct.gx_page_queue_s*, i32, %struct.gx_device_printer_s*, i32, i32, %struct.bg_print_s, i32, %struct.gx_saved_pages_list_s*, %struct.gx_device_procs_s, %struct.gx_device_procs_s, i32 }
%struct.gs_param_float_array_s = type { float*, i32, i32 }
%struct.gs_param_int_array_s = type { i32*, i32, i32 }
%struct.gs_c_param_list_s = type { %struct.gs_param_list_procs_s*, %struct.gs_memory_s*, i32, %struct.gs_c_param_s*, %struct.gs_param_list_s*, i32, i32, i32 }
%struct.gs_c_param_s = type opaque

@cljet5_procs = internal global %struct.gx_device_procs_s { i32 (%struct.gx_device_s*)* @gdev_prn_open, void (%struct.gx_device_s*, %struct.gs_matrix_s*)* @clj_get_initial_matrix, i32 (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i32, i32)* @gdev_prn_bg_output_page, i32 (%struct.gx_device_s*)* @gdev_prn_close, i64 (%struct.gx_device_s*, i16*)* @gdev_pcl_3bit_map_rgb_color, i32 (%struct.gx_device_s*, i64, i16*)* @gdev_pcl_3bit_map_color_rgb, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* null, i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* null, i32 (%struct.gx_device_s*, i32, i8*, i8**)* null, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @clj_get_params, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @clj_put_params, i64 (%struct.gx_device_s*, i16*)* null, %struct.gx_xfont_procs_s* (%struct.gx_device_s*)* null, %struct.gx_device_s* (%struct.gx_device_s*)* null, i64 (%struct.gx_device_s*, i16, i16, i16, i16)* null, %struct.gx_device_s* (%struct.gx_device_s*)* @gx_page_device_get_page_device, i32 (%struct.gx_device_s*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)* null, i32 (%struct.gx_device_s*, i32, i32*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* null, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)* null, i32 (%struct.gx_device_s*, i64, i16*)* null, i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)* null, i32 (%struct.gx_device_s*, %struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_transparency_group_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gx_transparency_mask_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32)* null, i64 (%struct.gx_device_s*, i16*)* null, i32 (%struct.gx_device_s*, i64, i16*)* null, i32 (%struct.gx_device_s*, i64, %struct.gs_pattern1_instance_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* null, %struct.gs_devn_params_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i8*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)* null, void (%struct.gx_device_s*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_process_page_options_s*)* null }, align 8
@.str = private unnamed_addr constant [7 x i8] c"cljet5\00", align 1
@st_device_printer = external constant %struct.gs_memory_struct_type_s, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"DeviceRGB\00", align 1
@gs_cljet5_device = global { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [11240 x i8], { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* }, [4096 x i8], i32, i32, i32, i32, i32, i32, %struct._IO_FILE*, i64, i8*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s*, i32)*, %struct.gx_page_queue_s*, i32, %struct.gx_device_printer_s*, i32, i32, %struct.bg_print_s, i32, %struct.gx_saved_pages_list_s*, %struct.gx_device_procs_s, %struct.gx_device_procs_s, i32 } { i32 18480, %struct.gx_device_procs_s* @cljet5_procs, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), %struct.gs_memory_s* null, %struct.gs_memory_struct_type_s* @st_device_printer, i32 0, void (%struct.gx_device_s*)* null, %struct.rc_header_s zeroinitializer, i32 0, i32 0, i32 0, %struct.gx_device_color_info_s { i32 3, i32 3, i32 1, i16 8, i8 -1, i32 1, i32 1, i32 2, i32 2, %struct.gx_device_anti_alias_info_s { i32 1, i32 1 }, i32 -1, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [64 x i64] zeroinitializer, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 -1, i64 0, i32 0 }, %struct.gx_device_cached_colors_s { i64 -1, i64 -1 }, i32 3300, i32 2550, i32 0, i32 0, i32 0, i32 0, [2 x float] [float 7.920000e+02, float 6.120000e+02], [4 x float] zeroinitializer, i32 0, [2 x float] [float 3.000000e+02, float 3.000000e+02], [2 x float] [float 3.000000e+02, float 3.000000e+02], [2 x float] [float 0xC0490CCCC0000000, float 0xC0490CCCC0000000], [4 x float] [float 0x40280C49C0000000, float 0x40280C49C0000000, float 0x40280C49C0000000, float 0x40280C49C0000000], i64 0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, %struct.gx_stroked_gradient_recognizer_s zeroinitializer, i32 0, i32 0, %struct.gdev_space_params_s { i64 10000000, i64 4000000, %struct.gx_band_params_s zeroinitializer, i32 0, i32 0 }, %struct.cmm_dev_profile_s* null, i32 0, %struct.gx_page_device_procs_s { i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_install, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_begin_page, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* @gx_default_end_page }, %struct.gx_device_procs_s zeroinitializer, [11240 x i8] zeroinitializer, { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* } { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)* @clj_print_page, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_print_page_copies, %struct.gx_device_buf_procs_s { i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, %struct.gx_render_plane_s*, %struct.gs_memory_s*, %struct.gx_colors_usage_s*)* @gx_default_create_buf_device, i32 (%struct.gx_device_buf_space_s*, %struct.gx_device_s*, %struct.gx_render_plane_s*, i32, i32)* @gx_default_size_buf_device, i32 (%struct.gx_device_s*, i8*, i32, i8**, i32, i32, i32)* @gx_default_setup_buf_device, void (%struct.gx_device_s*)* @gx_default_destroy_buf_device }, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)* @gx_default_get_space_params, i32 (%struct.gdev_prn_start_render_params_s*)* @gx_default_start_render_thread, i32 (%struct.gx_device_printer_s*)* @gx_default_open_render_device, i32 (%struct.gx_device_printer_s*)* @gx_default_close_render_device, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_buffer_page }, [4096 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 -1, i32 0, %struct._IO_FILE* null, i64 0, i8* null, %struct.gs_memory_s* null, %struct.gs_memory_s* null, i32 (%struct.gx_device_s*, i32)* null, %struct.gx_page_queue_s* null, i32 0, %struct.gx_device_printer_s* null, i32 0, i32 0, %struct.bg_print_s zeroinitializer, i32 0, %struct.gx_saved_pages_list_s* null, %struct.gx_device_procs_s zeroinitializer, %struct.gx_device_procs_s zeroinitializer, i32 0 }, align 8
@cljet5pr_procs = internal global %struct.gx_device_procs_s { i32 (%struct.gx_device_s*)* @gdev_prn_open, void (%struct.gx_device_s*, %struct.gs_matrix_s*)* @clj_get_initial_matrix, i32 (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i32, i32)* @gdev_prn_bg_output_page, i32 (%struct.gx_device_s*)* @gdev_prn_close, i64 (%struct.gx_device_s*, i16*)* @gdev_pcl_3bit_map_rgb_color, i32 (%struct.gx_device_s*, i64, i16*)* @gdev_pcl_3bit_map_color_rgb, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* null, i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* null, i32 (%struct.gx_device_s*, i32, i8*, i8**)* null, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @clj_pr_get_params, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @clj_pr_put_params, i64 (%struct.gx_device_s*, i16*)* null, %struct.gx_xfont_procs_s* (%struct.gx_device_s*)* null, %struct.gx_device_s* (%struct.gx_device_s*)* null, i64 (%struct.gx_device_s*, i16, i16, i16, i16)* null, %struct.gx_device_s* (%struct.gx_device_s*)* @gx_page_device_get_page_device, i32 (%struct.gx_device_s*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)* null, i32 (%struct.gx_device_s*, i32, i32*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* null, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)* null, i32 (%struct.gx_device_s*, i64, i16*)* null, i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)* null, i32 (%struct.gx_device_s*, %struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_transparency_group_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gx_transparency_mask_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32)* null, i64 (%struct.gx_device_s*, i16*)* null, i32 (%struct.gx_device_s*, i64, i16*)* null, i32 (%struct.gx_device_s*, i64, %struct.gs_pattern1_instance_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* null, %struct.gs_devn_params_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i8*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)* null, void (%struct.gx_device_s*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_process_page_options_s*)* null }, align 8
@.str.2 = private unnamed_addr constant [9 x i8] c"cljet5pr\00", align 1
@gs_cljet5pr_device = global { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [11240 x i8], { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* }, [4096 x i8], i32, i32, i32, i32, i32, i32, %struct._IO_FILE*, i64, i8*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s*, i32)*, %struct.gx_page_queue_s*, i32, %struct.gx_device_printer_s*, i32, i32, %struct.bg_print_s, i32, %struct.gx_saved_pages_list_s*, %struct.gx_device_procs_s, %struct.gx_device_procs_s, i32 } { i32 18480, %struct.gx_device_procs_s* @cljet5pr_procs, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), %struct.gs_memory_s* null, %struct.gs_memory_struct_type_s* @st_device_printer, i32 0, void (%struct.gx_device_s*)* null, %struct.rc_header_s zeroinitializer, i32 0, i32 0, i32 0, %struct.gx_device_color_info_s { i32 3, i32 3, i32 1, i16 8, i8 -1, i32 1, i32 1, i32 2, i32 2, %struct.gx_device_anti_alias_info_s { i32 1, i32 1 }, i32 -1, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [64 x i64] zeroinitializer, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 -1, i64 0, i32 0 }, %struct.gx_device_cached_colors_s { i64 -1, i64 -1 }, i32 3300, i32 2550, i32 0, i32 0, i32 0, i32 0, [2 x float] [float 7.920000e+02, float 6.120000e+02], [4 x float] zeroinitializer, i32 0, [2 x float] [float 3.000000e+02, float 3.000000e+02], [2 x float] [float 3.000000e+02, float 3.000000e+02], [2 x float] [float 0xC0490CCCC0000000, float 0xC0490CCCC0000000], [4 x float] [float 0x40280C49C0000000, float 0x40280C49C0000000, float 0x40280C49C0000000, float 0x40280C49C0000000], i64 0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, %struct.gx_stroked_gradient_recognizer_s zeroinitializer, i32 0, i32 0, %struct.gdev_space_params_s { i64 10000000, i64 4000000, %struct.gx_band_params_s zeroinitializer, i32 0, i32 0 }, %struct.cmm_dev_profile_s* null, i32 0, %struct.gx_page_device_procs_s { i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_install, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_begin_page, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* @gx_default_end_page }, %struct.gx_device_procs_s zeroinitializer, [11240 x i8] zeroinitializer, { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* } { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)* @clj_print_page, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_print_page_copies, %struct.gx_device_buf_procs_s { i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, %struct.gx_render_plane_s*, %struct.gs_memory_s*, %struct.gx_colors_usage_s*)* @gx_default_create_buf_device, i32 (%struct.gx_device_buf_space_s*, %struct.gx_device_s*, %struct.gx_render_plane_s*, i32, i32)* @gx_default_size_buf_device, i32 (%struct.gx_device_s*, i8*, i32, i8**, i32, i32, i32)* @gx_default_setup_buf_device, void (%struct.gx_device_s*)* @gx_default_destroy_buf_device }, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)* @gx_default_get_space_params, i32 (%struct.gdev_prn_start_render_params_s*)* @gx_default_start_render_thread, i32 (%struct.gx_device_printer_s*)* @gx_default_open_render_device, i32 (%struct.gx_device_printer_s*)* @gx_default_close_render_device, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_buffer_page }, [4096 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 -1, i32 0, %struct._IO_FILE* null, i64 0, i8* null, %struct.gs_memory_s* null, %struct.gs_memory_s* null, i32 (%struct.gx_device_s*, i32)* null, %struct.gx_page_queue_s* null, i32 0, %struct.gx_device_printer_s* null, i32 0, i32 0, %struct.bg_print_s zeroinitializer, i32 0, %struct.gx_saved_pages_list_s* null, %struct.gx_device_procs_s zeroinitializer, %struct.gx_device_procs_s zeroinitializer, i32 1 }, align 8
@get_paper_size.tolerance = internal constant float 5.000000e+00, align 4
@clj_paper_sizes = internal constant [3 x %struct.clj_paper_size_s] [%struct.clj_paper_size_s { i32 2, i32 1, float 7.920000e+02, float 6.120000e+02, %struct.gs_point_s { double 0x402CCCCCE0000000, double 0.000000e+00 } }, %struct.clj_paper_size_s { i32 1, i32 1, float 7.560000e+02, float 5.220000e+02, %struct.gs_point_s { double 0x402CCCCCE0000000, double 0.000000e+00 } }, %struct.clj_paper_size_s { i32 26, i32 1, float 0x408A4D70A0000000, float 0x40829B8540000000, %struct.gs_point_s { double 0x402C5E3540000000, double 0.000000e+00 } }], align 16
@.str.3 = private unnamed_addr constant [13 x i8] c"HWResolution\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"PageSize\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c".MediaSize\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"HWSize\00", align 1
@supported_resolutions = internal constant [4 x float] [float 7.500000e+01, float 1.000000e+02, float 1.500000e+02, float 3.000000e+02], align 16
@.str.7 = private unnamed_addr constant [21 x i8] c"clj_print_page(data)\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"clj_print_page(cdata)\00", align 1
@.str.9 = private unnamed_addr constant [67 x i8] c"\1BE\1B&u300D\1B&l%da1x%dO\1B*p0x0y+50x-100Y\1B*t%dR\1B*r-3U\1B*r0f%ds%dt1A\1B*b2M\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"\1B*b%dY\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"\1B*b%dV\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"\1B*b%dW\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"\1B*rC\0C\00", align 1

declare i32 @gx_default_install(%struct.gx_device_s*, %struct.gs_state_s*) #0

declare i32 @gx_default_begin_page(%struct.gx_device_s*, %struct.gs_state_s*) #0

declare i32 @gx_default_end_page(%struct.gx_device_s*, i32, %struct.gs_state_s*) #0

; Function Attrs: nounwind uwtable
define internal i32 @clj_print_page(%struct.gx_device_printer_s* %pdev, %struct._IO_FILE* %prn_stream) #1 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_printer_s*, align 8
  %prn_stream.addr = alloca %struct._IO_FILE*, align 8
  %mem = alloca %struct.gs_memory_s*, align 8
  %rotate = alloca i32, align 4
  %psize = alloca %struct.clj_paper_size_s*, align 8
  %lsize = alloca i32, align 4
  %clsize = alloca i32, align 4
  %data = alloca i8*, align 8
  %cdata = alloca [3 x i8*], align 16
  %blank_lines = alloca i32, align 4
  %i = alloca i32, align 4
  %fs_res = alloca double, align 8
  %ss_res = alloca double, align 8
  %imageable_width = alloca i32, align 4
  %imageable_height = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %clen = alloca [3 x i32], align 4
  store %struct.gx_device_printer_s* %pdev, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  store %struct._IO_FILE* %prn_stream, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %1, i32 0, i32 3
  %2 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !5
  store %struct.gs_memory_s* %2, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %3 = bitcast i32* %rotate to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = bitcast %struct.clj_paper_size_s** %psize to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #2
  %5 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %MediaSize = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %5, i32 0, i32 19
  %arraydecay = getelementptr inbounds [2 x float], [2 x float]* %MediaSize, i32 0, i32 0
  %call = call %struct.clj_paper_size_s* @get_paper_size(float* %arraydecay, i32* %rotate) #4
  store %struct.clj_paper_size_s* %call, %struct.clj_paper_size_s** %psize, align 8, !tbaa !1
  %6 = bitcast i32* %lsize to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %7, i32 0, i32 13
  %8 = load i32, i32* %width, align 4, !tbaa !22
  store i32 %8, i32* %lsize, align 4, !tbaa !23
  %9 = bitcast i32* %clsize to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #2
  %10 = load i32, i32* %lsize, align 4, !tbaa !23
  %11 = load i32, i32* %lsize, align 4, !tbaa !23
  %add = add nsw i32 %11, 255
  %div = sdiv i32 %add, 128
  %add1 = add nsw i32 %10, %div
  %div2 = sdiv i32 %add1, 8
  store i32 %div2, i32* %clsize, align 4, !tbaa !23
  %12 = bitcast i8** %data to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #2
  store i8* null, i8** %data, align 8, !tbaa !1
  %13 = bitcast [3 x i8*]* %cdata to i8*
  call void @llvm.lifetime.start(i64 24, i8* %13) #2
  %14 = bitcast i32* %blank_lines to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #2
  store i32 0, i32* %blank_lines, align 4, !tbaa !23
  %15 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #2
  %16 = bitcast double* %fs_res to i8*
  call void @llvm.lifetime.start(i64 8, i8* %16) #2
  %17 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %HWResolution = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %17, i32 0, i32 22
  %arrayidx = getelementptr inbounds [2 x float], [2 x float]* %HWResolution, i32 0, i64 0
  %18 = load float, float* %arrayidx, align 4, !tbaa !24
  %conv = fpext float %18 to double
  %div3 = fdiv double %conv, 7.200000e+01
  store double %div3, double* %fs_res, align 8, !tbaa !26
  %19 = bitcast double* %ss_res to i8*
  call void @llvm.lifetime.start(i64 8, i8* %19) #2
  %20 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %HWResolution4 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %20, i32 0, i32 22
  %arrayidx5 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution4, i32 0, i64 1
  %21 = load float, float* %arrayidx5, align 4, !tbaa !24
  %conv6 = fpext float %21 to double
  %div7 = fdiv double %conv6, 7.200000e+01
  store double %div7, double* %ss_res, align 8, !tbaa !26
  %22 = bitcast i32* %imageable_width to i8*
  call void @llvm.lifetime.start(i64 4, i8* %22) #2
  %23 = bitcast i32* %imageable_height to i8*
  call void @llvm.lifetime.start(i64 4, i8* %23) #2
  %24 = load %struct.clj_paper_size_s*, %struct.clj_paper_size_s** %psize, align 8, !tbaa !1
  %cmp = icmp eq %struct.clj_paper_size_s* %24, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -28, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %25 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %25, i32 0, i32 1
  %alloc_bytes = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 7
  %26 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes, align 8, !tbaa !28
  %27 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %28 = load i32, i32* %lsize, align 4, !tbaa !23
  %call9 = call i8* %26(%struct.gs_memory_s* %27, i32 %28, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i32 0, i32 0)) #4
  store i8* %call9, i8** %data, align 8, !tbaa !1
  %cmp10 = icmp eq i8* %call9, null
  br i1 %cmp10, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.end
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.13:                                        ; preds = %if.end
  %29 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs14 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %29, i32 0, i32 1
  %alloc_bytes15 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs14, i32 0, i32 7
  %30 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes15, align 8, !tbaa !28
  %31 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %32 = load i32, i32* %clsize, align 4, !tbaa !23
  %mul = mul nsw i32 3, %32
  %call16 = call i8* %30(%struct.gs_memory_s* %31, i32 %mul, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i32 0, i32 0)) #4
  %arrayidx17 = getelementptr inbounds [3 x i8*], [3 x i8*]* %cdata, i32 0, i64 0
  store i8* %call16, i8** %arrayidx17, align 8, !tbaa !1
  %cmp18 = icmp eq i8* %call16, null
  br i1 %cmp18, label %if.then.20, label %if.end.22

if.then.20:                                       ; preds = %if.end.13
  %33 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs21 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %33, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs21, i32 0, i32 2
  %34 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !31
  %35 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %36 = load i8*, i8** %data, align 8, !tbaa !1
  call void %34(%struct.gs_memory_s* %35, i8* %36, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i32 0, i32 0)) #4
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.22:                                        ; preds = %if.end.13
  %arrayidx23 = getelementptr inbounds [3 x i8*], [3 x i8*]* %cdata, i32 0, i64 0
  %37 = load i8*, i8** %arrayidx23, align 8, !tbaa !1
  %38 = load i32, i32* %clsize, align 4, !tbaa !23
  %idx.ext = sext i32 %38 to i64
  %add.ptr = getelementptr inbounds i8, i8* %37, i64 %idx.ext
  %arrayidx24 = getelementptr inbounds [3 x i8*], [3 x i8*]* %cdata, i32 0, i64 1
  store i8* %add.ptr, i8** %arrayidx24, align 8, !tbaa !1
  %arrayidx25 = getelementptr inbounds [3 x i8*], [3 x i8*]* %cdata, i32 0, i64 1
  %39 = load i8*, i8** %arrayidx25, align 8, !tbaa !1
  %40 = load i32, i32* %clsize, align 4, !tbaa !23
  %idx.ext26 = sext i32 %40 to i64
  %add.ptr27 = getelementptr inbounds i8, i8* %39, i64 %idx.ext26
  %arrayidx28 = getelementptr inbounds [3 x i8*], [3 x i8*]* %cdata, i32 0, i64 2
  store i8* %add.ptr27, i8** %arrayidx28, align 8, !tbaa !1
  %41 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %42 = bitcast %struct.gx_device_printer_s* %41 to %struct.gx_device_clj_s*
  %rotated = getelementptr inbounds %struct.gx_device_clj_s, %struct.gx_device_clj_s* %42, i32 0, i32 68
  %43 = load i32, i32* %rotated, align 4, !tbaa !32
  %tobool = icmp ne i32 %43, 0
  br i1 %tobool, label %if.then.29, label %if.else

if.then.29:                                       ; preds = %if.end.22
  %44 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %width30 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %44, i32 0, i32 13
  %45 = load i32, i32* %width30, align 4, !tbaa !22
  %46 = load %struct.clj_paper_size_s*, %struct.clj_paper_size_s** %psize, align 8, !tbaa !1
  %offsets = getelementptr inbounds %struct.clj_paper_size_s, %struct.clj_paper_size_s* %46, i32 0, i32 4
  %x = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %offsets, i32 0, i32 0
  %47 = load double, double* %x, align 8, !tbaa !34
  %mul31 = fmul double 2.000000e+00, %47
  %48 = load double, double* %fs_res, align 8, !tbaa !26
  %mul32 = fmul double %mul31, %48
  %conv33 = fptosi double %mul32 to i32
  %sub = sub nsw i32 %45, %conv33
  store i32 %sub, i32* %imageable_width, align 4, !tbaa !23
  %49 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %49, i32 0, i32 14
  %50 = load i32, i32* %height, align 4, !tbaa !37
  %51 = load %struct.clj_paper_size_s*, %struct.clj_paper_size_s** %psize, align 8, !tbaa !1
  %offsets34 = getelementptr inbounds %struct.clj_paper_size_s, %struct.clj_paper_size_s* %51, i32 0, i32 4
  %y = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %offsets34, i32 0, i32 1
  %52 = load double, double* %y, align 8, !tbaa !38
  %mul35 = fmul double 2.000000e+00, %52
  %53 = load double, double* %ss_res, align 8, !tbaa !26
  %mul36 = fmul double %mul35, %53
  %conv37 = fptosi double %mul36 to i32
  %sub38 = sub nsw i32 %50, %conv37
  store i32 %sub38, i32* %imageable_height, align 4, !tbaa !23
  br label %if.end.53

if.else:                                          ; preds = %if.end.22
  %54 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %width39 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %54, i32 0, i32 13
  %55 = load i32, i32* %width39, align 4, !tbaa !22
  %56 = load %struct.clj_paper_size_s*, %struct.clj_paper_size_s** %psize, align 8, !tbaa !1
  %offsets40 = getelementptr inbounds %struct.clj_paper_size_s, %struct.clj_paper_size_s* %56, i32 0, i32 4
  %y41 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %offsets40, i32 0, i32 1
  %57 = load double, double* %y41, align 8, !tbaa !38
  %mul42 = fmul double 2.000000e+00, %57
  %58 = load double, double* %ss_res, align 8, !tbaa !26
  %mul43 = fmul double %mul42, %58
  %conv44 = fptosi double %mul43 to i32
  %sub45 = sub nsw i32 %55, %conv44
  store i32 %sub45, i32* %imageable_width, align 4, !tbaa !23
  %59 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %height46 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %59, i32 0, i32 14
  %60 = load i32, i32* %height46, align 4, !tbaa !37
  %61 = load %struct.clj_paper_size_s*, %struct.clj_paper_size_s** %psize, align 8, !tbaa !1
  %offsets47 = getelementptr inbounds %struct.clj_paper_size_s, %struct.clj_paper_size_s* %61, i32 0, i32 4
  %x48 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %offsets47, i32 0, i32 0
  %62 = load double, double* %x48, align 8, !tbaa !34
  %mul49 = fmul double 2.000000e+00, %62
  %63 = load double, double* %fs_res, align 8, !tbaa !26
  %mul50 = fmul double %mul49, %63
  %conv51 = fptosi double %mul50 to i32
  %sub52 = sub nsw i32 %60, %conv51
  store i32 %sub52, i32* %imageable_height, align 4, !tbaa !23
  br label %if.end.53

if.end.53:                                        ; preds = %if.else, %if.then.29
  %64 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %65 = load %struct.clj_paper_size_s*, %struct.clj_paper_size_s** %psize, align 8, !tbaa !1
  %tag = getelementptr inbounds %struct.clj_paper_size_s, %struct.clj_paper_size_s* %65, i32 0, i32 0
  %66 = load i32, i32* %tag, align 4, !tbaa !39
  %67 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %68 = bitcast %struct.gx_device_printer_s* %67 to %struct.gx_device_clj_s*
  %rotated54 = getelementptr inbounds %struct.gx_device_clj_s, %struct.gx_device_clj_s* %68, i32 0, i32 68
  %69 = load i32, i32* %rotated54, align 4, !tbaa !32
  %70 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %HWResolution55 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %70, i32 0, i32 22
  %arrayidx56 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution55, i32 0, i64 0
  %71 = load float, float* %arrayidx56, align 4, !tbaa !24
  %conv57 = fptosi float %71 to i32
  %72 = load i32, i32* %imageable_width, align 4, !tbaa !23
  %73 = load i32, i32* %imageable_height, align 4, !tbaa !23
  %call58 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %64, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.9, i32 0, i32 0), i32 %66, i32 %69, i32 %conv57, i32 %72, i32 %73) #4
  store i32 0, i32* %i, align 4, !tbaa !23
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.53
  %74 = load i32, i32* %i, align 4, !tbaa !23
  %75 = load i32, i32* %imageable_height, align 4, !tbaa !23
  %cmp59 = icmp slt i32 %74, %75
  br i1 %cmp59, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %76 = bitcast [3 x i32]* %clen to i8*
  call void @llvm.lifetime.start(i64 12, i8* %76) #2
  %77 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %78 = load i32, i32* %i, align 4, !tbaa !23
  %79 = load i8*, i8** %data, align 8, !tbaa !1
  %80 = load i32, i32* %lsize, align 4, !tbaa !23
  %call61 = call i32 @gdev_prn_copy_scan_lines(%struct.gx_device_printer_s* %77, i32 %78, i8* %79, i32 %80) #4
  %81 = load i8*, i8** %data, align 8, !tbaa !1
  %82 = load i32, i32* %imageable_width, align 4, !tbaa !23
  %arraydecay62 = getelementptr inbounds [3 x i8*], [3 x i8*]* %cdata, i32 0, i32 0
  %arraydecay63 = getelementptr inbounds [3 x i32], [3 x i32]* %clen, i32 0, i32 0
  call void @pack_and_compress_scanline(i8* %81, i32 %82, i8** %arraydecay62, i32* %arraydecay63) #4
  %arrayidx64 = getelementptr inbounds [3 x i32], [3 x i32]* %clen, i32 0, i64 0
  %83 = load i32, i32* %arrayidx64, align 4, !tbaa !23
  %cmp65 = icmp eq i32 %83, 0
  br i1 %cmp65, label %land.lhs.true, label %if.else.75

land.lhs.true:                                    ; preds = %for.body
  %arrayidx67 = getelementptr inbounds [3 x i32], [3 x i32]* %clen, i32 0, i64 1
  %84 = load i32, i32* %arrayidx67, align 4, !tbaa !23
  %cmp68 = icmp eq i32 %84, 0
  br i1 %cmp68, label %land.lhs.true.70, label %if.else.75

land.lhs.true.70:                                 ; preds = %land.lhs.true
  %arrayidx71 = getelementptr inbounds [3 x i32], [3 x i32]* %clen, i32 0, i64 2
  %85 = load i32, i32* %arrayidx71, align 4, !tbaa !23
  %cmp72 = icmp eq i32 %85, 0
  br i1 %cmp72, label %if.then.74, label %if.else.75

if.then.74:                                       ; preds = %land.lhs.true.70
  %86 = load i32, i32* %blank_lines, align 4, !tbaa !23
  %inc = add nsw i32 %86, 1
  store i32 %inc, i32* %blank_lines, align 4, !tbaa !23
  br label %if.end.99

if.else.75:                                       ; preds = %land.lhs.true.70, %land.lhs.true, %for.body
  %87 = load i32, i32* %blank_lines, align 4, !tbaa !23
  %cmp76 = icmp ne i32 %87, 0
  br i1 %cmp76, label %if.then.78, label %if.end.80

if.then.78:                                       ; preds = %if.else.75
  %88 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %89 = load i32, i32* %blank_lines, align 4, !tbaa !23
  %call79 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %88, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0), i32 %89) #4
  store i32 0, i32* %blank_lines, align 4, !tbaa !23
  br label %if.end.80

if.end.80:                                        ; preds = %if.then.78, %if.else.75
  %90 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %arrayidx81 = getelementptr inbounds [3 x i32], [3 x i32]* %clen, i32 0, i64 0
  %91 = load i32, i32* %arrayidx81, align 4, !tbaa !23
  %call82 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %90, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i32 0, i32 0), i32 %91) #4
  %arrayidx83 = getelementptr inbounds [3 x i8*], [3 x i8*]* %cdata, i32 0, i64 0
  %92 = load i8*, i8** %arrayidx83, align 8, !tbaa !1
  %arrayidx84 = getelementptr inbounds [3 x i32], [3 x i32]* %clen, i32 0, i64 0
  %93 = load i32, i32* %arrayidx84, align 4, !tbaa !23
  %conv85 = sext i32 %93 to i64
  %94 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call86 = call i64 @fwrite(i8* %92, i64 1, i64 %conv85, %struct._IO_FILE* %94) #4
  %95 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %arrayidx87 = getelementptr inbounds [3 x i32], [3 x i32]* %clen, i32 0, i64 1
  %96 = load i32, i32* %arrayidx87, align 4, !tbaa !23
  %call88 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %95, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i32 0, i32 0), i32 %96) #4
  %arrayidx89 = getelementptr inbounds [3 x i8*], [3 x i8*]* %cdata, i32 0, i64 1
  %97 = load i8*, i8** %arrayidx89, align 8, !tbaa !1
  %arrayidx90 = getelementptr inbounds [3 x i32], [3 x i32]* %clen, i32 0, i64 1
  %98 = load i32, i32* %arrayidx90, align 4, !tbaa !23
  %conv91 = sext i32 %98 to i64
  %99 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call92 = call i64 @fwrite(i8* %97, i64 1, i64 %conv91, %struct._IO_FILE* %99) #4
  %100 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %arrayidx93 = getelementptr inbounds [3 x i32], [3 x i32]* %clen, i32 0, i64 2
  %101 = load i32, i32* %arrayidx93, align 4, !tbaa !23
  %call94 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %100, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i32 0, i32 0), i32 %101) #4
  %arrayidx95 = getelementptr inbounds [3 x i8*], [3 x i8*]* %cdata, i32 0, i64 2
  %102 = load i8*, i8** %arrayidx95, align 8, !tbaa !1
  %arrayidx96 = getelementptr inbounds [3 x i32], [3 x i32]* %clen, i32 0, i64 2
  %103 = load i32, i32* %arrayidx96, align 4, !tbaa !23
  %conv97 = sext i32 %103 to i64
  %104 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call98 = call i64 @fwrite(i8* %102, i64 1, i64 %conv97, %struct._IO_FILE* %104) #4
  br label %if.end.99

if.end.99:                                        ; preds = %if.end.80, %if.then.74
  %105 = bitcast [3 x i32]* %clen to i8*
  call void @llvm.lifetime.end(i64 12, i8* %105) #2
  br label %for.inc

for.inc:                                          ; preds = %if.end.99
  %106 = load i32, i32* %i, align 4, !tbaa !23
  %inc100 = add nsw i32 %106, 1
  store i32 %inc100, i32* %i, align 4, !tbaa !23
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %107 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call101 = call i32 @fputs(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i32 0, i32 0), %struct._IO_FILE* %107) #4
  %108 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs102 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %108, i32 0, i32 1
  %free_object103 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs102, i32 0, i32 2
  %109 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object103, align 8, !tbaa !31
  %110 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %arrayidx104 = getelementptr inbounds [3 x i8*], [3 x i8*]* %cdata, i32 0, i64 0
  %111 = load i8*, i8** %arrayidx104, align 8, !tbaa !1
  call void %109(%struct.gs_memory_s* %110, i8* %111, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i32 0, i32 0)) #4
  %112 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs105 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %112, i32 0, i32 1
  %free_object106 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs105, i32 0, i32 2
  %113 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object106, align 8, !tbaa !31
  %114 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %115 = load i8*, i8** %data, align 8, !tbaa !1
  call void %113(%struct.gs_memory_s* %114, i8* %115, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i32 0, i32 0)) #4
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then.20, %if.then.12, %if.then
  %116 = bitcast i32* %imageable_height to i8*
  call void @llvm.lifetime.end(i64 4, i8* %116) #2
  %117 = bitcast i32* %imageable_width to i8*
  call void @llvm.lifetime.end(i64 4, i8* %117) #2
  %118 = bitcast double* %ss_res to i8*
  call void @llvm.lifetime.end(i64 8, i8* %118) #2
  %119 = bitcast double* %fs_res to i8*
  call void @llvm.lifetime.end(i64 8, i8* %119) #2
  %120 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %120) #2
  %121 = bitcast i32* %blank_lines to i8*
  call void @llvm.lifetime.end(i64 4, i8* %121) #2
  %122 = bitcast [3 x i8*]* %cdata to i8*
  call void @llvm.lifetime.end(i64 24, i8* %122) #2
  %123 = bitcast i8** %data to i8*
  call void @llvm.lifetime.end(i64 8, i8* %123) #2
  %124 = bitcast i32* %clsize to i8*
  call void @llvm.lifetime.end(i64 4, i8* %124) #2
  %125 = bitcast i32* %lsize to i8*
  call void @llvm.lifetime.end(i64 4, i8* %125) #2
  %126 = bitcast %struct.clj_paper_size_s** %psize to i8*
  call void @llvm.lifetime.end(i64 8, i8* %126) #2
  %127 = bitcast i32* %rotate to i8*
  call void @llvm.lifetime.end(i64 4, i8* %127) #2
  %128 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %128) #2
  %129 = load i32, i32* %retval
  ret i32 %129
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

; Function Attrs: nounwind uwtable
define internal void @clj_get_initial_matrix(%struct.gx_device_s* %pdev, %struct.gs_matrix_s* %pmat) #1 {
entry:
  %pdev.addr = alloca %struct.gx_device_s*, align 8
  %pmat.addr = alloca %struct.gs_matrix_s*, align 8
  %fs_res = alloca double, align 8
  %ss_res = alloca double, align 8
  %psize = alloca %struct.clj_paper_size_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %pdev, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  store %struct.gs_matrix_s* %pmat, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %0 = bitcast double* %fs_res to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %HWResolution = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %1, i32 0, i32 22
  %arrayidx = getelementptr inbounds [2 x float], [2 x float]* %HWResolution, i32 0, i64 0
  %2 = load float, float* %arrayidx, align 4, !tbaa !24
  %conv = fpext float %2 to double
  %div = fdiv double %conv, 7.200000e+01
  store double %div, double* %fs_res, align 8, !tbaa !26
  %3 = bitcast double* %ss_res to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %HWResolution1 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %4, i32 0, i32 22
  %arrayidx2 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution1, i32 0, i64 1
  %5 = load float, float* %arrayidx2, align 4, !tbaa !24
  %conv3 = fpext float %5 to double
  %div4 = fdiv double %conv3, 7.200000e+01
  store double %div4, double* %ss_res, align 8, !tbaa !26
  %6 = bitcast %struct.clj_paper_size_s** %psize to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #2
  %7 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %MediaSize = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %7, i32 0, i32 19
  %arraydecay = getelementptr inbounds [2 x float], [2 x float]* %MediaSize, i32 0, i32 0
  %call = call %struct.clj_paper_size_s* @get_paper_size(float* %arraydecay, i32* null) #4
  store %struct.clj_paper_size_s* %call, %struct.clj_paper_size_s** %psize, align 8, !tbaa !1
  %8 = load %struct.clj_paper_size_s*, %struct.clj_paper_size_s** %psize, align 8, !tbaa !1
  %cmp = icmp eq %struct.clj_paper_size_s* %8, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %9 = load double, double* %fs_res, align 8, !tbaa !26
  %conv6 = fptrunc double %9 to float
  %10 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %xx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %10, i32 0, i32 0
  store float %conv6, float* %xx, align 4, !tbaa !40
  %11 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %xy = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %11, i32 0, i32 1
  store float 0.000000e+00, float* %xy, align 4, !tbaa !42
  %12 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %yx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %12, i32 0, i32 2
  store float 0.000000e+00, float* %yx, align 4, !tbaa !43
  %13 = load double, double* %ss_res, align 8, !tbaa !26
  %sub = fsub double -0.000000e+00, %13
  %conv7 = fptrunc double %sub to float
  %14 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %yy = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %14, i32 0, i32 3
  store float %conv7, float* %yy, align 4, !tbaa !44
  %15 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %tx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %15, i32 0, i32 4
  store float 0.000000e+00, float* %tx, align 4, !tbaa !45
  %16 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %MediaSize8 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %16, i32 0, i32 19
  %arrayidx9 = getelementptr inbounds [2 x float], [2 x float]* %MediaSize8, i32 0, i64 1
  %17 = load float, float* %arrayidx9, align 4, !tbaa !24
  %conv10 = fpext float %17 to double
  %18 = load double, double* %ss_res, align 8, !tbaa !26
  %mul = fmul double %conv10, %18
  %conv11 = fptrunc double %mul to float
  %19 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %ty = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %19, i32 0, i32 5
  store float %conv11, float* %ty, align 4, !tbaa !46
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %20 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %21 = bitcast %struct.gx_device_s* %20 to %struct.gx_device_clj_s*
  %rotated = getelementptr inbounds %struct.gx_device_clj_s, %struct.gx_device_clj_s* %21, i32 0, i32 68
  %22 = load i32, i32* %rotated, align 4, !tbaa !32
  %tobool = icmp ne i32 %22, 0
  br i1 %tobool, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %if.end
  %23 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %xx13 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %23, i32 0, i32 0
  store float 0.000000e+00, float* %xx13, align 4, !tbaa !40
  %24 = load double, double* %ss_res, align 8, !tbaa !26
  %conv14 = fptrunc double %24 to float
  %25 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %xy15 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %25, i32 0, i32 1
  store float %conv14, float* %xy15, align 4, !tbaa !42
  %26 = load double, double* %fs_res, align 8, !tbaa !26
  %conv16 = fptrunc double %26 to float
  %27 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %yx17 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %27, i32 0, i32 2
  store float %conv16, float* %yx17, align 4, !tbaa !43
  %28 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %yy18 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %28, i32 0, i32 3
  store float 0.000000e+00, float* %yy18, align 4, !tbaa !44
  %29 = load %struct.clj_paper_size_s*, %struct.clj_paper_size_s** %psize, align 8, !tbaa !1
  %offsets = getelementptr inbounds %struct.clj_paper_size_s, %struct.clj_paper_size_s* %29, i32 0, i32 4
  %x = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %offsets, i32 0, i32 0
  %30 = load double, double* %x, align 8, !tbaa !34
  %sub19 = fsub double -0.000000e+00, %30
  %31 = load double, double* %fs_res, align 8, !tbaa !26
  %mul20 = fmul double %sub19, %31
  %conv21 = fptrunc double %mul20 to float
  %32 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %tx22 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %32, i32 0, i32 4
  store float %conv21, float* %tx22, align 4, !tbaa !45
  %33 = load %struct.clj_paper_size_s*, %struct.clj_paper_size_s** %psize, align 8, !tbaa !1
  %offsets23 = getelementptr inbounds %struct.clj_paper_size_s, %struct.clj_paper_size_s* %33, i32 0, i32 4
  %y = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %offsets23, i32 0, i32 1
  %34 = load double, double* %y, align 8, !tbaa !38
  %sub24 = fsub double -0.000000e+00, %34
  %35 = load double, double* %ss_res, align 8, !tbaa !26
  %mul25 = fmul double %sub24, %35
  %conv26 = fptrunc double %mul25 to float
  %36 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %ty27 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %36, i32 0, i32 5
  store float %conv26, float* %ty27, align 4, !tbaa !46
  br label %if.end.47

if.else:                                          ; preds = %if.end
  %37 = load double, double* %fs_res, align 8, !tbaa !26
  %conv28 = fptrunc double %37 to float
  %38 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %xx29 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %38, i32 0, i32 0
  store float %conv28, float* %xx29, align 4, !tbaa !40
  %39 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %xy30 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %39, i32 0, i32 1
  store float 0.000000e+00, float* %xy30, align 4, !tbaa !42
  %40 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %yx31 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %40, i32 0, i32 2
  store float 0.000000e+00, float* %yx31, align 4, !tbaa !43
  %41 = load double, double* %ss_res, align 8, !tbaa !26
  %sub32 = fsub double -0.000000e+00, %41
  %conv33 = fptrunc double %sub32 to float
  %42 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %yy34 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %42, i32 0, i32 3
  store float %conv33, float* %yy34, align 4, !tbaa !44
  %43 = load %struct.clj_paper_size_s*, %struct.clj_paper_size_s** %psize, align 8, !tbaa !1
  %offsets35 = getelementptr inbounds %struct.clj_paper_size_s, %struct.clj_paper_size_s* %43, i32 0, i32 4
  %x36 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %offsets35, i32 0, i32 0
  %44 = load double, double* %x36, align 8, !tbaa !34
  %sub37 = fsub double -0.000000e+00, %44
  %45 = load double, double* %fs_res, align 8, !tbaa !26
  %mul38 = fmul double %sub37, %45
  %conv39 = fptrunc double %mul38 to float
  %46 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %tx40 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %46, i32 0, i32 4
  store float %conv39, float* %tx40, align 4, !tbaa !45
  %47 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %47, i32 0, i32 14
  %48 = load i32, i32* %height, align 4, !tbaa !47
  %conv41 = sitofp i32 %48 to double
  %49 = load %struct.clj_paper_size_s*, %struct.clj_paper_size_s** %psize, align 8, !tbaa !1
  %offsets42 = getelementptr inbounds %struct.clj_paper_size_s, %struct.clj_paper_size_s* %49, i32 0, i32 4
  %y43 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %offsets42, i32 0, i32 1
  %50 = load double, double* %y43, align 8, !tbaa !38
  %51 = load double, double* %ss_res, align 8, !tbaa !26
  %mul44 = fmul double %50, %51
  %add = fadd double %conv41, %mul44
  %conv45 = fptrunc double %add to float
  %52 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %ty46 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %52, i32 0, i32 5
  store float %conv45, float* %ty46, align 4, !tbaa !46
  br label %if.end.47

if.end.47:                                        ; preds = %if.else, %if.then.12
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.47, %if.then
  %53 = bitcast %struct.clj_paper_size_s** %psize to i8*
  call void @llvm.lifetime.end(i64 8, i8* %53) #2
  %54 = bitcast double* %ss_res to i8*
  call void @llvm.lifetime.end(i64 8, i8* %54) #2
  %55 = bitcast double* %fs_res to i8*
  call void @llvm.lifetime.end(i64 8, i8* %55) #2
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

declare i32 @gdev_prn_bg_output_page(%struct.gx_device_s*, i32, i32) #0

declare i32 @gdev_prn_close(%struct.gx_device_s*) #0

declare i64 @gdev_pcl_3bit_map_rgb_color(%struct.gx_device_s*, i16*) #0

declare i32 @gdev_pcl_3bit_map_color_rgb(%struct.gx_device_s*, i64, i16*) #0

; Function Attrs: nounwind uwtable
define internal i32 @clj_get_params(%struct.gx_device_s* %pdev, %struct.gs_param_list_s* %plist) #1 {
entry:
  %pdev.addr = alloca %struct.gx_device_s*, align 8
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %mdict = alloca %struct.gs_param_collection_s, align 8
  %code = alloca i32, align 4
  %ecode = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.gx_device_s* %pdev, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_param_collection_s* %mdict to i8*
  call void @llvm.lifetime.start(i64 16, i8* %0) #2
  %1 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %3 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call = call i32 @gdev_prn_get_params(%struct.gx_device_s* %2, %struct.gs_param_list_s* %3) #4
  store i32 %call, i32* %code, align 4, !tbaa !23
  %4 = bitcast i32* %ecode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = load i32, i32* %code, align 4, !tbaa !23
  store i32 %5, i32* %ecode, align 4, !tbaa !23
  %6 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call1 = call i32 @gdev_begin_input_media(%struct.gs_param_list_s* %7, %struct.gs_param_collection_s* %mdict, i32 3) #4
  store i32 %call1, i32* %code, align 4, !tbaa !23
  %8 = load i32, i32* %code, align 4, !tbaa !23
  %cmp = icmp slt i32 %8, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %9 = load i32, i32* %code, align 4, !tbaa !23
  store i32 %9, i32* %ecode, align 4, !tbaa !23
  br label %if.end.17

if.else:                                          ; preds = %entry
  store i32 0, i32* %i, align 4, !tbaa !23
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %10 = load i32, i32* %i, align 4, !tbaa !23
  %conv = sext i32 %10 to i64
  %cmp2 = icmp ult i64 %conv, 3
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load i32, i32* %i, align 4, !tbaa !23
  %12 = load i32, i32* %i, align 4, !tbaa !23
  %idxprom = sext i32 %12 to i64
  %arrayidx = getelementptr inbounds [3 x %struct.clj_paper_size_s], [3 x %struct.clj_paper_size_s]* @clj_paper_sizes, i32 0, i64 %idxprom
  %width = getelementptr inbounds %struct.clj_paper_size_s, %struct.clj_paper_size_s* %arrayidx, i32 0, i32 2
  %13 = load float, float* %width, align 4, !tbaa !49
  %conv4 = fpext float %13 to double
  %14 = load i32, i32* %i, align 4, !tbaa !23
  %idxprom5 = sext i32 %14 to i64
  %arrayidx6 = getelementptr inbounds [3 x %struct.clj_paper_size_s], [3 x %struct.clj_paper_size_s]* @clj_paper_sizes, i32 0, i64 %idxprom5
  %height = getelementptr inbounds %struct.clj_paper_size_s, %struct.clj_paper_size_s* %arrayidx6, i32 0, i32 3
  %15 = load float, float* %height, align 4, !tbaa !50
  %conv7 = fpext float %15 to double
  %call8 = call i32 @gdev_write_input_page_size(i32 %11, %struct.gs_param_collection_s* %mdict, double %conv4, double %conv7) #4
  store i32 %call8, i32* %code, align 4, !tbaa !23
  %16 = load i32, i32* %code, align 4, !tbaa !23
  %cmp9 = icmp slt i32 %16, 0
  br i1 %cmp9, label %if.then.11, label %if.end

if.then.11:                                       ; preds = %for.body
  %17 = load i32, i32* %code, align 4, !tbaa !23
  store i32 %17, i32* %ecode, align 4, !tbaa !23
  br label %if.end

if.end:                                           ; preds = %if.then.11, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %18 = load i32, i32* %i, align 4, !tbaa !23
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %i, align 4, !tbaa !23
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %19 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call12 = call i32 @gdev_end_input_media(%struct.gs_param_list_s* %19, %struct.gs_param_collection_s* %mdict) #4
  store i32 %call12, i32* %code, align 4, !tbaa !23
  %20 = load i32, i32* %code, align 4, !tbaa !23
  %cmp13 = icmp slt i32 %20, 0
  br i1 %cmp13, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %for.end
  %21 = load i32, i32* %code, align 4, !tbaa !23
  store i32 %21, i32* %ecode, align 4, !tbaa !23
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.15, %for.end
  br label %if.end.17

if.end.17:                                        ; preds = %if.end.16, %if.then
  %22 = load i32, i32* %ecode, align 4, !tbaa !23
  %23 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %23) #2
  %24 = bitcast i32* %ecode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %24) #2
  %25 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %25) #2
  %26 = bitcast %struct.gs_param_collection_s* %mdict to i8*
  call void @llvm.lifetime.end(i64 16, i8* %26) #2
  ret i32 %22
}

; Function Attrs: nounwind uwtable
define internal i32 @clj_put_params(%struct.gx_device_s* %pdev, %struct.gs_param_list_s* %plist) #1 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_s*, align 8
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %mediasize = alloca [2 x float], align 4
  %rotate = alloca i32, align 4
  %have_pagesize = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %pdev, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %0 = bitcast [2 x float]* %mediasize to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = bitcast i32* %rotate to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  store i32 0, i32* %rotate, align 4, !tbaa !23
  %2 = bitcast i32* %have_pagesize to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  %arraydecay = getelementptr inbounds [2 x float], [2 x float]* %mediasize, i32 0, i32 0
  %3 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call = call i32 @clj_media_size(float* %arraydecay, %struct.gs_param_list_s* %3) #4
  store i32 %call, i32* %have_pagesize, align 4, !tbaa !23
  %4 = load i32, i32* %have_pagesize, align 4, !tbaa !23
  %cmp = icmp slt i32 %4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load i32, i32* %have_pagesize, align 4, !tbaa !23
  store i32 %5, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = load i32, i32* %have_pagesize, align 4, !tbaa !23
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.then.1, label %if.end.8

if.then.1:                                        ; preds = %if.end
  %arraydecay2 = getelementptr inbounds [2 x float], [2 x float]* %mediasize, i32 0, i32 0
  %call3 = call %struct.clj_paper_size_s* @get_paper_size(float* %arraydecay2, i32* %rotate) #4
  %cmp4 = icmp eq %struct.clj_paper_size_s* %call3, null
  br i1 %cmp4, label %if.then.6, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.1
  %7 = load i32, i32* %rotate, align 4, !tbaa !23
  %tobool5 = icmp ne i32 %7, 0
  br i1 %tobool5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %lor.lhs.false, %if.then.1
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.7:                                         ; preds = %lor.lhs.false
  br label %if.end.8

if.end.8:                                         ; preds = %if.end.7, %if.end
  %8 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %9 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call9 = call i32 @gdev_prn_put_params(%struct.gx_device_s* %8, %struct.gs_param_list_s* %9) #4
  store i32 %call9, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.8, %if.then.6, %if.then
  %10 = bitcast i32* %have_pagesize to i8*
  call void @llvm.lifetime.end(i64 4, i8* %10) #2
  %11 = bitcast i32* %rotate to i8*
  call void @llvm.lifetime.end(i64 4, i8* %11) #2
  %12 = bitcast [2 x float]* %mediasize to i8*
  call void @llvm.lifetime.end(i64 8, i8* %12) #2
  %13 = load i32, i32* %retval
  ret i32 %13
}

declare %struct.gx_device_s* @gx_page_device_get_page_device(%struct.gx_device_s*) #0

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define internal %struct.clj_paper_size_s* @get_paper_size(float* %MediaSize, i32* %rotatep) #1 {
entry:
  %retval = alloca %struct.clj_paper_size_s*, align 8
  %MediaSize.addr = alloca float*, align 8
  %rotatep.addr = alloca i32*, align 8
  %width = alloca float, align 4
  %height = alloca float, align 4
  %psize = alloca %struct.clj_paper_size_s*, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store float* %MediaSize, float** %MediaSize.addr, align 8, !tbaa !1
  store i32* %rotatep, i32** %rotatep.addr, align 8, !tbaa !1
  %0 = bitcast float* %width to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load float*, float** %MediaSize.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds float, float* %1, i64 0
  %2 = load float, float* %arrayidx, align 4, !tbaa !24
  store float %2, float* %width, align 4, !tbaa !24
  %3 = bitcast float* %height to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = load float*, float** %MediaSize.addr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds float, float* %4, i64 1
  %5 = load float, float* %arrayidx1, align 4, !tbaa !24
  store float %5, float* %height, align 4, !tbaa !24
  %6 = bitcast %struct.clj_paper_size_s** %psize to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #2
  store %struct.clj_paper_size_s* null, %struct.clj_paper_size_s** %psize, align 8, !tbaa !1
  %7 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #2
  store i32 0, i32* %i, align 4, !tbaa !23
  store %struct.clj_paper_size_s* getelementptr inbounds ([3 x %struct.clj_paper_size_s], [3 x %struct.clj_paper_size_s]* @clj_paper_sizes, i32 0, i32 0), %struct.clj_paper_size_s** %psize, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %8 = load i32, i32* %i, align 4, !tbaa !23
  %conv = sext i32 %8 to i64
  %cmp = icmp ult i64 %conv, 3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load float, float* %width, align 4, !tbaa !24
  %10 = load %struct.clj_paper_size_s*, %struct.clj_paper_size_s** %psize, align 8, !tbaa !1
  %width3 = getelementptr inbounds %struct.clj_paper_size_s, %struct.clj_paper_size_s* %10, i32 0, i32 2
  %11 = load float, float* %width3, align 4, !tbaa !49
  %sub = fsub float %9, %11
  %conv4 = fpext float %sub to double
  %call = call double @fabs(double %conv4) #5
  %cmp5 = fcmp ole double %call, 5.000000e+00
  br i1 %cmp5, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %for.body
  %12 = load float, float* %height, align 4, !tbaa !24
  %13 = load %struct.clj_paper_size_s*, %struct.clj_paper_size_s** %psize, align 8, !tbaa !1
  %height7 = getelementptr inbounds %struct.clj_paper_size_s, %struct.clj_paper_size_s* %13, i32 0, i32 3
  %14 = load float, float* %height7, align 4, !tbaa !50
  %sub8 = fsub float %12, %14
  %conv9 = fpext float %sub8 to double
  %call10 = call double @fabs(double %conv9) #5
  %cmp11 = fcmp ole double %call10, 5.000000e+00
  br i1 %cmp11, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %15 = load i32*, i32** %rotatep.addr, align 8, !tbaa !1
  %cmp13 = icmp ne i32* %15, null
  br i1 %cmp13, label %if.then.15, label %if.end

if.then.15:                                       ; preds = %if.then
  %16 = load i32*, i32** %rotatep.addr, align 8, !tbaa !1
  store i32 0, i32* %16, align 4, !tbaa !23
  br label %if.end

if.end:                                           ; preds = %if.then.15, %if.then
  %17 = load %struct.clj_paper_size_s*, %struct.clj_paper_size_s** %psize, align 8, !tbaa !1
  store %struct.clj_paper_size_s* %17, %struct.clj_paper_size_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %land.lhs.true, %for.body
  %18 = load float, float* %width, align 4, !tbaa !24
  %19 = load %struct.clj_paper_size_s*, %struct.clj_paper_size_s** %psize, align 8, !tbaa !1
  %height16 = getelementptr inbounds %struct.clj_paper_size_s, %struct.clj_paper_size_s* %19, i32 0, i32 3
  %20 = load float, float* %height16, align 4, !tbaa !50
  %sub17 = fsub float %18, %20
  %conv18 = fpext float %sub17 to double
  %call19 = call double @fabs(double %conv18) #5
  %cmp20 = fcmp ole double %call19, 5.000000e+00
  br i1 %cmp20, label %land.lhs.true.22, label %if.end.34

land.lhs.true.22:                                 ; preds = %if.else
  %21 = load float, float* %height, align 4, !tbaa !24
  %22 = load %struct.clj_paper_size_s*, %struct.clj_paper_size_s** %psize, align 8, !tbaa !1
  %width23 = getelementptr inbounds %struct.clj_paper_size_s, %struct.clj_paper_size_s* %22, i32 0, i32 2
  %23 = load float, float* %width23, align 4, !tbaa !49
  %sub24 = fsub float %21, %23
  %conv25 = fpext float %sub24 to double
  %call26 = call double @fabs(double %conv25) #5
  %cmp27 = fcmp ole double %call26, 5.000000e+00
  br i1 %cmp27, label %if.then.29, label %if.end.34

if.then.29:                                       ; preds = %land.lhs.true.22
  %24 = load i32*, i32** %rotatep.addr, align 8, !tbaa !1
  %cmp30 = icmp ne i32* %24, null
  br i1 %cmp30, label %if.then.32, label %if.end.33

if.then.32:                                       ; preds = %if.then.29
  %25 = load i32*, i32** %rotatep.addr, align 8, !tbaa !1
  store i32 1, i32* %25, align 4, !tbaa !23
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.32, %if.then.29
  %26 = load %struct.clj_paper_size_s*, %struct.clj_paper_size_s** %psize, align 8, !tbaa !1
  store %struct.clj_paper_size_s* %26, %struct.clj_paper_size_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.34:                                        ; preds = %land.lhs.true.22, %if.else
  br label %if.end.35

if.end.35:                                        ; preds = %if.end.34
  br label %for.inc

for.inc:                                          ; preds = %if.end.35
  %27 = load i32, i32* %i, align 4, !tbaa !23
  %inc = add nsw i32 %27, 1
  store i32 %inc, i32* %i, align 4, !tbaa !23
  %28 = load %struct.clj_paper_size_s*, %struct.clj_paper_size_s** %psize, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds %struct.clj_paper_size_s, %struct.clj_paper_size_s* %28, i32 1
  store %struct.clj_paper_size_s* %incdec.ptr, %struct.clj_paper_size_s** %psize, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store %struct.clj_paper_size_s* null, %struct.clj_paper_size_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.end.33, %if.end
  %29 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %29) #2
  %30 = bitcast %struct.clj_paper_size_s** %psize to i8*
  call void @llvm.lifetime.end(i64 8, i8* %30) #2
  %31 = bitcast float* %height to i8*
  call void @llvm.lifetime.end(i64 4, i8* %31) #2
  %32 = bitcast float* %width to i8*
  call void @llvm.lifetime.end(i64 4, i8* %32) #2
  %33 = load %struct.clj_paper_size_s*, %struct.clj_paper_size_s** %retval
  ret %struct.clj_paper_size_s* %33
}

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind readnone
declare double @fabs(double) #3

declare i32 @gdev_prn_get_params(%struct.gx_device_s*, %struct.gs_param_list_s*) #0

declare i32 @gdev_begin_input_media(%struct.gs_param_list_s*, %struct.gs_param_collection_s*, i32) #0

declare i32 @gdev_write_input_page_size(i32, %struct.gs_param_collection_s*, double, double) #0

declare i32 @gdev_end_input_media(%struct.gs_param_list_s*, %struct.gs_param_collection_s*) #0

; Function Attrs: nounwind uwtable
define internal i32 @clj_media_size(float* %mediasize, %struct.gs_param_list_s* %plist) #1 {
entry:
  %retval = alloca i32, align 4
  %mediasize.addr = alloca float*, align 8
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %fres = alloca %struct.gs_param_float_array_s, align 8
  %fsize = alloca %struct.gs_param_float_array_s, align 8
  %hwsize = alloca %struct.gs_param_int_array_s, align 8
  %have_pagesize = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store float* %mediasize, float** %mediasize.addr, align 8, !tbaa !1
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_param_float_array_s* %fres to i8*
  call void @llvm.lifetime.start(i64 16, i8* %0) #2
  %1 = bitcast %struct.gs_param_float_array_s* %fsize to i8*
  call void @llvm.lifetime.start(i64 16, i8* %1) #2
  %2 = bitcast %struct.gs_param_int_array_s* %hwsize to i8*
  call void @llvm.lifetime.start(i64 16, i8* %2) #2
  %3 = bitcast i32* %have_pagesize to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  store i32 0, i32* %have_pagesize, align 4, !tbaa !23
  %4 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call = call i32 @param_read_float_array(%struct.gs_param_list_s* %4, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0), %struct.gs_param_float_array_s* %fres) #4
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %data = getelementptr inbounds %struct.gs_param_float_array_s, %struct.gs_param_float_array_s* %fres, i32 0, i32 0
  %5 = load float*, float** %data, align 8, !tbaa !51
  %call1 = call i32 @is_supported_resolution(float* %5) #4
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true, %entry
  %6 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call2 = call i32 @param_read_float_array(%struct.gs_param_list_s* %6, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), %struct.gs_param_float_array_s* %fsize) #4
  %cmp3 = icmp eq i32 %call2, 0
  br i1 %cmp3, label %if.then.6, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %7 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call4 = call i32 @param_read_float_array(%struct.gs_param_list_s* %7, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i32 0, i32 0), %struct.gs_param_float_array_s* %fsize) #4
  %cmp5 = icmp eq i32 %call4, 0
  br i1 %cmp5, label %if.then.6, label %if.end.12

if.then.6:                                        ; preds = %lor.lhs.false, %if.end
  %data7 = getelementptr inbounds %struct.gs_param_float_array_s, %struct.gs_param_float_array_s* %fsize, i32 0, i32 0
  %8 = load float*, float** %data7, align 8, !tbaa !51
  %arrayidx = getelementptr inbounds float, float* %8, i64 0
  %9 = load float, float* %arrayidx, align 4, !tbaa !24
  %10 = load float*, float** %mediasize.addr, align 8, !tbaa !1
  %arrayidx8 = getelementptr inbounds float, float* %10, i64 0
  store float %9, float* %arrayidx8, align 4, !tbaa !24
  %data9 = getelementptr inbounds %struct.gs_param_float_array_s, %struct.gs_param_float_array_s* %fsize, i32 0, i32 0
  %11 = load float*, float** %data9, align 8, !tbaa !51
  %arrayidx10 = getelementptr inbounds float, float* %11, i64 1
  %12 = load float, float* %arrayidx10, align 4, !tbaa !24
  %13 = load float*, float** %mediasize.addr, align 8, !tbaa !1
  %arrayidx11 = getelementptr inbounds float, float* %13, i64 1
  store float %12, float* %arrayidx11, align 4, !tbaa !24
  store i32 1, i32* %have_pagesize, align 4, !tbaa !23
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.6, %lor.lhs.false
  %14 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call13 = call i32 @param_read_int_array(%struct.gs_param_list_s* %14, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0), %struct.gs_param_int_array_s* %hwsize) #4
  %cmp14 = icmp eq i32 %call13, 0
  br i1 %cmp14, label %if.then.15, label %if.end.29

if.then.15:                                       ; preds = %if.end.12
  %data16 = getelementptr inbounds %struct.gs_param_int_array_s, %struct.gs_param_int_array_s* %hwsize, i32 0, i32 0
  %15 = load i32*, i32** %data16, align 8, !tbaa !53
  %arrayidx17 = getelementptr inbounds i32, i32* %15, i64 0
  %16 = load i32, i32* %arrayidx17, align 4, !tbaa !23
  %conv = sitofp i32 %16 to float
  %mul = fmul float %conv, 7.200000e+01
  %data18 = getelementptr inbounds %struct.gs_param_float_array_s, %struct.gs_param_float_array_s* %fres, i32 0, i32 0
  %17 = load float*, float** %data18, align 8, !tbaa !51
  %arrayidx19 = getelementptr inbounds float, float* %17, i64 0
  %18 = load float, float* %arrayidx19, align 4, !tbaa !24
  %div = fdiv float %mul, %18
  %19 = load float*, float** %mediasize.addr, align 8, !tbaa !1
  %arrayidx20 = getelementptr inbounds float, float* %19, i64 0
  store float %div, float* %arrayidx20, align 4, !tbaa !24
  %data21 = getelementptr inbounds %struct.gs_param_int_array_s, %struct.gs_param_int_array_s* %hwsize, i32 0, i32 0
  %20 = load i32*, i32** %data21, align 8, !tbaa !53
  %arrayidx22 = getelementptr inbounds i32, i32* %20, i64 1
  %21 = load i32, i32* %arrayidx22, align 4, !tbaa !23
  %conv23 = sitofp i32 %21 to float
  %mul24 = fmul float %conv23, 7.200000e+01
  %data25 = getelementptr inbounds %struct.gs_param_float_array_s, %struct.gs_param_float_array_s* %fres, i32 0, i32 0
  %22 = load float*, float** %data25, align 8, !tbaa !51
  %arrayidx26 = getelementptr inbounds float, float* %22, i64 1
  %23 = load float, float* %arrayidx26, align 4, !tbaa !24
  %div27 = fdiv float %mul24, %23
  %24 = load float*, float** %mediasize.addr, align 8, !tbaa !1
  %arrayidx28 = getelementptr inbounds float, float* %24, i64 1
  store float %div27, float* %arrayidx28, align 4, !tbaa !24
  store i32 1, i32* %have_pagesize, align 4, !tbaa !23
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.15, %if.end.12
  %25 = load i32, i32* %have_pagesize, align 4, !tbaa !23
  store i32 %25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.29, %if.then
  %26 = bitcast i32* %have_pagesize to i8*
  call void @llvm.lifetime.end(i64 4, i8* %26) #2
  %27 = bitcast %struct.gs_param_int_array_s* %hwsize to i8*
  call void @llvm.lifetime.end(i64 16, i8* %27) #2
  %28 = bitcast %struct.gs_param_float_array_s* %fsize to i8*
  call void @llvm.lifetime.end(i64 16, i8* %28) #2
  %29 = bitcast %struct.gs_param_float_array_s* %fres to i8*
  call void @llvm.lifetime.end(i64 16, i8* %29) #2
  %30 = load i32, i32* %retval
  ret i32 %30
}

declare i32 @gdev_prn_put_params(%struct.gx_device_s*, %struct.gs_param_list_s*) #0

declare i32 @param_read_float_array(%struct.gs_param_list_s*, i8*, %struct.gs_param_float_array_s*) #0

; Function Attrs: nounwind uwtable
define internal i32 @is_supported_resolution(float* %HWResolution) #1 {
entry:
  %retval = alloca i32, align 4
  %HWResolution.addr = alloca float*, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store float* %HWResolution, float** %HWResolution.addr, align 8, !tbaa !1
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  store i32 0, i32* %i, align 4, !tbaa !23
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4, !tbaa !23
  %conv = sext i32 %1 to i64
  %cmp = icmp ult i64 %conv, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load float*, float** %HWResolution.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds float, float* %2, i64 0
  %3 = load float, float* %arrayidx, align 4, !tbaa !24
  %4 = load i32, i32* %i, align 4, !tbaa !23
  %idxprom = sext i32 %4 to i64
  %arrayidx2 = getelementptr inbounds [4 x float], [4 x float]* @supported_resolutions, i32 0, i64 %idxprom
  %5 = load float, float* %arrayidx2, align 4, !tbaa !24
  %cmp3 = fcmp oeq float %3, %5
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %6 = load float*, float** %HWResolution.addr, align 8, !tbaa !1
  %arrayidx5 = getelementptr inbounds float, float* %6, i64 0
  %7 = load float, float* %arrayidx5, align 4, !tbaa !24
  %8 = load float*, float** %HWResolution.addr, align 8, !tbaa !1
  %arrayidx6 = getelementptr inbounds float, float* %8, i64 1
  %9 = load float, float* %arrayidx6, align 4, !tbaa !24
  %cmp7 = fcmp oeq float %7, %9
  %conv8 = zext i1 %cmp7 to i32
  store i32 %conv8, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %10 = load i32, i32* %i, align 4, !tbaa !23
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %i, align 4, !tbaa !23
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  %11 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %11) #2
  %12 = load i32, i32* %retval
  ret i32 %12
}

declare i32 @param_read_int_array(%struct.gs_param_list_s*, i8*, %struct.gs_param_int_array_s*) #0

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #0

declare i32 @gdev_prn_copy_scan_lines(%struct.gx_device_printer_s*, i32, i8*, i32) #0

; Function Attrs: nounwind uwtable
define internal void @pack_and_compress_scanline(i8* %pin, i32 %in_size, i8** %pout, i32* %out_size) #1 {
entry:
  %pin.addr = alloca i8*, align 8
  %in_size.addr = alloca i32, align 4
  %pout.addr = alloca i8**, align 8
  %out_size.addr = alloca i32*, align 8
  %buff = alloca [1350 x i64], align 16
  %p_c = alloca i8*, align 8
  %p_m = alloca i8*, align 8
  %p_y = alloca i8*, align 8
  %ptrs = alloca [3 x i64*], align 16
  %c_val = alloca i8, align 1
  %m_val = alloca i8, align 1
  %y_val = alloca i8, align 1
  %mask = alloca i64, align 8
  %i = alloca i32, align 4
  %ival = alloca i32, align 4
  %p_start = alloca i64*, align 8
  %p_end = alloca i64*, align 8
  store i8* %pin, i8** %pin.addr, align 8, !tbaa !1
  store i32 %in_size, i32* %in_size.addr, align 4, !tbaa !23
  store i8** %pout, i8*** %pout.addr, align 8, !tbaa !1
  store i32* %out_size, i32** %out_size.addr, align 8, !tbaa !1
  %0 = bitcast [1350 x i64]* %buff to i8*
  call void @llvm.lifetime.start(i64 10800, i8* %0) #2
  %1 = bitcast i8** %p_c to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #2
  %arraydecay = getelementptr inbounds [1350 x i64], [1350 x i64]* %buff, i32 0, i32 0
  %2 = bitcast i64* %arraydecay to i8*
  store i8* %2, i8** %p_c, align 8, !tbaa !1
  %3 = bitcast i8** %p_m to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %arraydecay1 = getelementptr inbounds [1350 x i64], [1350 x i64]* %buff, i32 0, i32 0
  %add.ptr = getelementptr inbounds i64, i64* %arraydecay1, i64 450
  %4 = bitcast i64* %add.ptr to i8*
  store i8* %4, i8** %p_m, align 8, !tbaa !1
  %5 = bitcast i8** %p_y to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #2
  %arraydecay2 = getelementptr inbounds [1350 x i64], [1350 x i64]* %buff, i32 0, i32 0
  %add.ptr3 = getelementptr inbounds i64, i64* %arraydecay2, i64 900
  %6 = bitcast i64* %add.ptr3 to i8*
  store i8* %6, i8** %p_y, align 8, !tbaa !1
  %7 = bitcast [3 x i64*]* %ptrs to i8*
  call void @llvm.lifetime.start(i64 24, i8* %7) #2
  call void @llvm.lifetime.start(i64 1, i8* %c_val) #2
  store i8 0, i8* %c_val, align 1, !tbaa !55
  call void @llvm.lifetime.start(i64 1, i8* %m_val) #2
  store i8 0, i8* %m_val, align 1, !tbaa !55
  call void @llvm.lifetime.start(i64 1, i8* %y_val) #2
  store i8 0, i8* %y_val, align 1, !tbaa !55
  %8 = bitcast i64* %mask to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #2
  store i64 128, i64* %mask, align 8, !tbaa !56
  %9 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #2
  store i32 0, i32* %i, align 4, !tbaa !23
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %10 = load i32, i32* %i, align 4, !tbaa !23
  %11 = load i32, i32* %in_size.addr, align 4, !tbaa !23
  %cmp = icmp slt i32 %10, %11
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = bitcast i32* %ival to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #2
  %13 = load i8*, i8** %pin.addr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %13, i32 1
  store i8* %incdec.ptr, i8** %pin.addr, align 8, !tbaa !1
  %14 = load i8, i8* %13, align 1, !tbaa !55
  %conv = zext i8 %14 to i32
  store i32 %conv, i32* %ival, align 4, !tbaa !23
  %15 = load i32, i32* %ival, align 4, !tbaa !23
  %cmp4 = icmp ne i32 %15, 0
  br i1 %cmp4, label %if.then, label %if.end.27

if.then:                                          ; preds = %for.body
  %16 = load i32, i32* %ival, align 4, !tbaa !23
  %and = and i32 %16, 4
  %cmp6 = icmp ne i32 %and, 0
  br i1 %cmp6, label %if.then.8, label %if.end

if.then.8:                                        ; preds = %if.then
  %17 = load i64, i64* %mask, align 8, !tbaa !56
  %18 = load i8, i8* %y_val, align 1, !tbaa !55
  %conv9 = zext i8 %18 to i64
  %or = or i64 %conv9, %17
  %conv10 = trunc i64 %or to i8
  store i8 %conv10, i8* %y_val, align 1, !tbaa !55
  br label %if.end

if.end:                                           ; preds = %if.then.8, %if.then
  %19 = load i32, i32* %ival, align 4, !tbaa !23
  %and11 = and i32 %19, 2
  %cmp12 = icmp ne i32 %and11, 0
  br i1 %cmp12, label %if.then.14, label %if.end.18

if.then.14:                                       ; preds = %if.end
  %20 = load i64, i64* %mask, align 8, !tbaa !56
  %21 = load i8, i8* %m_val, align 1, !tbaa !55
  %conv15 = zext i8 %21 to i64
  %or16 = or i64 %conv15, %20
  %conv17 = trunc i64 %or16 to i8
  store i8 %conv17, i8* %m_val, align 1, !tbaa !55
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.14, %if.end
  %22 = load i32, i32* %ival, align 4, !tbaa !23
  %and19 = and i32 %22, 1
  %cmp20 = icmp ne i32 %and19, 0
  br i1 %cmp20, label %if.then.22, label %if.end.26

if.then.22:                                       ; preds = %if.end.18
  %23 = load i64, i64* %mask, align 8, !tbaa !56
  %24 = load i8, i8* %c_val, align 1, !tbaa !55
  %conv23 = zext i8 %24 to i64
  %or24 = or i64 %conv23, %23
  %conv25 = trunc i64 %or24 to i8
  store i8 %conv25, i8* %c_val, align 1, !tbaa !55
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.22, %if.end.18
  br label %if.end.27

if.end.27:                                        ; preds = %if.end.26, %for.body
  %25 = load i64, i64* %mask, align 8, !tbaa !56
  %shr = lshr i64 %25, 1
  store i64 %shr, i64* %mask, align 8, !tbaa !56
  %cmp28 = icmp eq i64 %shr, 0
  br i1 %cmp28, label %if.then.30, label %if.end.34

if.then.30:                                       ; preds = %if.end.27
  %26 = load i8, i8* %c_val, align 1, !tbaa !55
  %27 = load i8*, i8** %p_c, align 8, !tbaa !1
  %incdec.ptr31 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %incdec.ptr31, i8** %p_c, align 8, !tbaa !1
  store i8 %26, i8* %27, align 1, !tbaa !55
  store i8 0, i8* %c_val, align 1, !tbaa !55
  %28 = load i8, i8* %m_val, align 1, !tbaa !55
  %29 = load i8*, i8** %p_m, align 8, !tbaa !1
  %incdec.ptr32 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %incdec.ptr32, i8** %p_m, align 8, !tbaa !1
  store i8 %28, i8* %29, align 1, !tbaa !55
  store i8 0, i8* %m_val, align 1, !tbaa !55
  %30 = load i8, i8* %y_val, align 1, !tbaa !55
  %31 = load i8*, i8** %p_y, align 8, !tbaa !1
  %incdec.ptr33 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %incdec.ptr33, i8** %p_y, align 8, !tbaa !1
  store i8 %30, i8* %31, align 1, !tbaa !55
  store i8 0, i8* %y_val, align 1, !tbaa !55
  store i64 128, i64* %mask, align 8, !tbaa !56
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.30, %if.end.27
  %32 = bitcast i32* %ival to i8*
  call void @llvm.lifetime.end(i64 4, i8* %32) #2
  br label %for.inc

for.inc:                                          ; preds = %if.end.34
  %33 = load i32, i32* %i, align 4, !tbaa !23
  %inc = add nsw i32 %33, 1
  store i32 %inc, i32* %i, align 4, !tbaa !23
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %34 = load i64, i64* %mask, align 8, !tbaa !56
  %cmp35 = icmp ne i64 %34, 128
  br i1 %cmp35, label %if.then.37, label %if.end.41

if.then.37:                                       ; preds = %for.end
  %35 = load i8, i8* %c_val, align 1, !tbaa !55
  %36 = load i8*, i8** %p_c, align 8, !tbaa !1
  %incdec.ptr38 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %incdec.ptr38, i8** %p_c, align 8, !tbaa !1
  store i8 %35, i8* %36, align 1, !tbaa !55
  %37 = load i8, i8* %m_val, align 1, !tbaa !55
  %38 = load i8*, i8** %p_m, align 8, !tbaa !1
  %incdec.ptr39 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %incdec.ptr39, i8** %p_m, align 8, !tbaa !1
  store i8 %37, i8* %38, align 1, !tbaa !55
  %39 = load i8, i8* %y_val, align 1, !tbaa !55
  %40 = load i8*, i8** %p_y, align 8, !tbaa !1
  %incdec.ptr40 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %incdec.ptr40, i8** %p_y, align 8, !tbaa !1
  store i8 %39, i8* %40, align 1, !tbaa !55
  br label %if.end.41

if.end.41:                                        ; preds = %if.then.37, %for.end
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.41
  %41 = load i8*, i8** %p_c, align 8, !tbaa !1
  %42 = ptrtoint i8* %41 to i64
  %and42 = and i64 %42, 7
  %cmp43 = icmp ne i64 %and42, 0
  br i1 %cmp43, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %43 = load i8*, i8** %p_c, align 8, !tbaa !1
  %incdec.ptr45 = getelementptr inbounds i8, i8* %43, i32 1
  store i8* %incdec.ptr45, i8** %p_c, align 8, !tbaa !1
  store i8 0, i8* %43, align 1, !tbaa !55
  %44 = load i8*, i8** %p_m, align 8, !tbaa !1
  %incdec.ptr46 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %incdec.ptr46, i8** %p_m, align 8, !tbaa !1
  store i8 0, i8* %44, align 1, !tbaa !55
  %45 = load i8*, i8** %p_y, align 8, !tbaa !1
  %incdec.ptr47 = getelementptr inbounds i8, i8* %45, i32 1
  store i8* %incdec.ptr47, i8** %p_y, align 8, !tbaa !1
  store i8 0, i8* %45, align 1, !tbaa !55
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %46 = load i8*, i8** %p_c, align 8, !tbaa !1
  %47 = bitcast i8* %46 to i64*
  %arrayidx = getelementptr inbounds [3 x i64*], [3 x i64*]* %ptrs, i32 0, i64 0
  store i64* %47, i64** %arrayidx, align 8, !tbaa !1
  %48 = load i8*, i8** %p_m, align 8, !tbaa !1
  %49 = bitcast i8* %48 to i64*
  %arrayidx48 = getelementptr inbounds [3 x i64*], [3 x i64*]* %ptrs, i32 0, i64 1
  store i64* %49, i64** %arrayidx48, align 8, !tbaa !1
  %50 = load i8*, i8** %p_y, align 8, !tbaa !1
  %51 = bitcast i8* %50 to i64*
  %arrayidx49 = getelementptr inbounds [3 x i64*], [3 x i64*]* %ptrs, i32 0, i64 2
  store i64* %51, i64** %arrayidx49, align 8, !tbaa !1
  store i32 0, i32* %i, align 4, !tbaa !23
  br label %for.cond.50

for.cond.50:                                      ; preds = %for.inc.77, %while.end
  %52 = load i32, i32* %i, align 4, !tbaa !23
  %cmp51 = icmp slt i32 %52, 3
  br i1 %cmp51, label %for.body.53, label %for.end.79

for.body.53:                                      ; preds = %for.cond.50
  %53 = bitcast i64** %p_start to i8*
  call void @llvm.lifetime.start(i64 8, i8* %53) #2
  %arraydecay54 = getelementptr inbounds [1350 x i64], [1350 x i64]* %buff, i32 0, i32 0
  %54 = load i32, i32* %i, align 4, !tbaa !23
  %conv55 = sext i32 %54 to i64
  %mul = mul i64 %conv55, 450
  %add.ptr56 = getelementptr inbounds i64, i64* %arraydecay54, i64 %mul
  store i64* %add.ptr56, i64** %p_start, align 8, !tbaa !1
  %55 = bitcast i64** %p_end to i8*
  call void @llvm.lifetime.start(i64 8, i8* %55) #2
  %56 = load i32, i32* %i, align 4, !tbaa !23
  %idxprom = sext i32 %56 to i64
  %arrayidx57 = getelementptr inbounds [3 x i64*], [3 x i64*]* %ptrs, i32 0, i64 %idxprom
  %57 = load i64*, i64** %arrayidx57, align 8, !tbaa !1
  store i64* %57, i64** %p_end, align 8, !tbaa !1
  br label %while.cond.58

while.cond.58:                                    ; preds = %while.body.64, %for.body.53
  %58 = load i64*, i64** %p_end, align 8, !tbaa !1
  %59 = load i64*, i64** %p_start, align 8, !tbaa !1
  %cmp59 = icmp ugt i64* %58, %59
  br i1 %cmp59, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond.58
  %60 = load i64*, i64** %p_end, align 8, !tbaa !1
  %arrayidx61 = getelementptr inbounds i64, i64* %60, i64 -1
  %61 = load i64, i64* %arrayidx61, align 8, !tbaa !56
  %cmp62 = icmp eq i64 %61, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond.58
  %62 = phi i1 [ false, %while.cond.58 ], [ %cmp62, %land.rhs ]
  br i1 %62, label %while.body.64, label %while.end.66

while.body.64:                                    ; preds = %land.end
  %63 = load i64*, i64** %p_end, align 8, !tbaa !1
  %incdec.ptr65 = getelementptr inbounds i64, i64* %63, i32 -1
  store i64* %incdec.ptr65, i64** %p_end, align 8, !tbaa !1
  br label %while.cond.58

while.end.66:                                     ; preds = %land.end
  %64 = load i64*, i64** %p_start, align 8, !tbaa !1
  %65 = load i64*, i64** %p_end, align 8, !tbaa !1
  %cmp67 = icmp eq i64* %64, %65
  br i1 %cmp67, label %if.then.69, label %if.else

if.then.69:                                       ; preds = %while.end.66
  %66 = load i32, i32* %i, align 4, !tbaa !23
  %idxprom70 = sext i32 %66 to i64
  %67 = load i32*, i32** %out_size.addr, align 8, !tbaa !1
  %arrayidx71 = getelementptr inbounds i32, i32* %67, i64 %idxprom70
  store i32 0, i32* %arrayidx71, align 4, !tbaa !23
  br label %if.end.76

if.else:                                          ; preds = %while.end.66
  %68 = load i64*, i64** %p_start, align 8, !tbaa !1
  %69 = load i64*, i64** %p_end, align 8, !tbaa !1
  %70 = load i32, i32* %i, align 4, !tbaa !23
  %idxprom72 = sext i32 %70 to i64
  %71 = load i8**, i8*** %pout.addr, align 8, !tbaa !1
  %arrayidx73 = getelementptr inbounds i8*, i8** %71, i64 %idxprom72
  %72 = load i8*, i8** %arrayidx73, align 8, !tbaa !1
  %call = call i32 @gdev_pcl_mode2compress(i64* %68, i64* %69, i8* %72) #4
  %73 = load i32, i32* %i, align 4, !tbaa !23
  %idxprom74 = sext i32 %73 to i64
  %74 = load i32*, i32** %out_size.addr, align 8, !tbaa !1
  %arrayidx75 = getelementptr inbounds i32, i32* %74, i64 %idxprom74
  store i32 %call, i32* %arrayidx75, align 4, !tbaa !23
  br label %if.end.76

if.end.76:                                        ; preds = %if.else, %if.then.69
  %75 = bitcast i64** %p_end to i8*
  call void @llvm.lifetime.end(i64 8, i8* %75) #2
  %76 = bitcast i64** %p_start to i8*
  call void @llvm.lifetime.end(i64 8, i8* %76) #2
  br label %for.inc.77

for.inc.77:                                       ; preds = %if.end.76
  %77 = load i32, i32* %i, align 4, !tbaa !23
  %inc78 = add nsw i32 %77, 1
  store i32 %inc78, i32* %i, align 4, !tbaa !23
  br label %for.cond.50

for.end.79:                                       ; preds = %for.cond.50
  %78 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %78) #2
  %79 = bitcast i64* %mask to i8*
  call void @llvm.lifetime.end(i64 8, i8* %79) #2
  call void @llvm.lifetime.end(i64 1, i8* %y_val) #2
  call void @llvm.lifetime.end(i64 1, i8* %m_val) #2
  call void @llvm.lifetime.end(i64 1, i8* %c_val) #2
  %80 = bitcast [3 x i64*]* %ptrs to i8*
  call void @llvm.lifetime.end(i64 24, i8* %80) #2
  %81 = bitcast i8** %p_y to i8*
  call void @llvm.lifetime.end(i64 8, i8* %81) #2
  %82 = bitcast i8** %p_m to i8*
  call void @llvm.lifetime.end(i64 8, i8* %82) #2
  %83 = bitcast i8** %p_c to i8*
  call void @llvm.lifetime.end(i64 8, i8* %83) #2
  %84 = bitcast [1350 x i64]* %buff to i8*
  call void @llvm.lifetime.end(i64 10800, i8* %84) #2
  ret void
}

declare i64 @fwrite(i8*, i64, i64, %struct._IO_FILE*) #0

declare i32 @fputs(i8*, %struct._IO_FILE*) #0

declare i32 @gdev_pcl_mode2compress(i64*, i64*, i8*) #0

; Function Attrs: nounwind uwtable
define internal i32 @clj_pr_get_params(%struct.gx_device_s* %pdev, %struct.gs_param_list_s* %plist) #1 {
entry:
  %pdev.addr = alloca %struct.gx_device_s*, align 8
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %code = alloca i32, align 4
  %ftmp = alloca float, align 4
  %itmp = alloca i32, align 4
  %ftmp12 = alloca float, align 4
  %itmp13 = alloca i32, align 4
  store %struct.gx_device_s* %pdev, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_clj_s*
  %rotated = getelementptr inbounds %struct.gx_device_clj_s, %struct.gx_device_clj_s* %2, i32 0, i32 68
  %3 = load i32, i32* %rotated, align 4, !tbaa !32
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = bitcast float* %ftmp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = bitcast i32* %itmp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  %6 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %MediaSize = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %6, i32 0, i32 19
  %arrayidx = getelementptr inbounds [2 x float], [2 x float]* %MediaSize, i32 0, i64 0
  %7 = load float, float* %arrayidx, align 4, !tbaa !24
  store float %7, float* %ftmp, align 4, !tbaa !24
  %8 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %MediaSize1 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %8, i32 0, i32 19
  %arrayidx2 = getelementptr inbounds [2 x float], [2 x float]* %MediaSize1, i32 0, i64 1
  %9 = load float, float* %arrayidx2, align 4, !tbaa !24
  %10 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %MediaSize3 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %10, i32 0, i32 19
  %arrayidx4 = getelementptr inbounds [2 x float], [2 x float]* %MediaSize3, i32 0, i64 0
  store float %9, float* %arrayidx4, align 4, !tbaa !24
  %11 = load float, float* %ftmp, align 4, !tbaa !24
  %12 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %MediaSize5 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %12, i32 0, i32 19
  %arrayidx6 = getelementptr inbounds [2 x float], [2 x float]* %MediaSize5, i32 0, i64 1
  store float %11, float* %arrayidx6, align 4, !tbaa !24
  %13 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %13, i32 0, i32 13
  %14 = load i32, i32* %width, align 4, !tbaa !57
  store i32 %14, i32* %itmp, align 4, !tbaa !23
  %15 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %15, i32 0, i32 14
  %16 = load i32, i32* %height, align 4, !tbaa !47
  %17 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %width7 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %17, i32 0, i32 13
  store i32 %16, i32* %width7, align 4, !tbaa !57
  %18 = load i32, i32* %itmp, align 4, !tbaa !23
  %19 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %height8 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %19, i32 0, i32 14
  store i32 %18, i32* %height8, align 4, !tbaa !47
  %20 = bitcast i32* %itmp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %20) #2
  %21 = bitcast float* %ftmp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %21) #2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %22 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %23 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call = call i32 @gdev_prn_get_params(%struct.gx_device_s* %22, %struct.gs_param_list_s* %23) #4
  store i32 %call, i32* %code, align 4, !tbaa !23
  %24 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %25 = bitcast %struct.gx_device_s* %24 to %struct.gx_device_clj_s*
  %rotated9 = getelementptr inbounds %struct.gx_device_clj_s, %struct.gx_device_clj_s* %25, i32 0, i32 68
  %26 = load i32, i32* %rotated9, align 4, !tbaa !32
  %tobool10 = icmp ne i32 %26, 0
  br i1 %tobool10, label %if.then.11, label %if.end.26

if.then.11:                                       ; preds = %if.end
  %27 = bitcast float* %ftmp12 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %27) #2
  %28 = bitcast i32* %itmp13 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %28) #2
  %29 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %MediaSize14 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %29, i32 0, i32 19
  %arrayidx15 = getelementptr inbounds [2 x float], [2 x float]* %MediaSize14, i32 0, i64 0
  %30 = load float, float* %arrayidx15, align 4, !tbaa !24
  store float %30, float* %ftmp12, align 4, !tbaa !24
  %31 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %MediaSize16 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %31, i32 0, i32 19
  %arrayidx17 = getelementptr inbounds [2 x float], [2 x float]* %MediaSize16, i32 0, i64 1
  %32 = load float, float* %arrayidx17, align 4, !tbaa !24
  %33 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %MediaSize18 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %33, i32 0, i32 19
  %arrayidx19 = getelementptr inbounds [2 x float], [2 x float]* %MediaSize18, i32 0, i64 0
  store float %32, float* %arrayidx19, align 4, !tbaa !24
  %34 = load float, float* %ftmp12, align 4, !tbaa !24
  %35 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %MediaSize20 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %35, i32 0, i32 19
  %arrayidx21 = getelementptr inbounds [2 x float], [2 x float]* %MediaSize20, i32 0, i64 1
  store float %34, float* %arrayidx21, align 4, !tbaa !24
  %36 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %width22 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %36, i32 0, i32 13
  %37 = load i32, i32* %width22, align 4, !tbaa !57
  store i32 %37, i32* %itmp13, align 4, !tbaa !23
  %38 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %height23 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %38, i32 0, i32 14
  %39 = load i32, i32* %height23, align 4, !tbaa !47
  %40 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %width24 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %40, i32 0, i32 13
  store i32 %39, i32* %width24, align 4, !tbaa !57
  %41 = load i32, i32* %itmp13, align 4, !tbaa !23
  %42 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %height25 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %42, i32 0, i32 14
  store i32 %41, i32* %height25, align 4, !tbaa !47
  %43 = bitcast i32* %itmp13 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %43) #2
  %44 = bitcast float* %ftmp12 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %44) #2
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.11, %if.end
  %45 = load i32, i32* %code, align 4, !tbaa !23
  %46 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %46) #2
  ret i32 %45
}

; Function Attrs: nounwind uwtable
define internal i32 @clj_pr_put_params(%struct.gx_device_s* %pdev, %struct.gs_param_list_s* %plist) #1 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_s*, align 8
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %mediasize = alloca [2 x float], align 4
  %code = alloca i32, align 4
  %rotate = alloca i32, align 4
  %have_pagesize = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %pf_array = alloca %struct.gs_param_float_array_s, align 8
  %alist = alloca %struct.gs_c_param_list_s, align 8
  %ftmp = alloca float, align 4
  store %struct.gx_device_s* %pdev, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %0 = bitcast [2 x float]* %mediasize to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  store i32 0, i32* %code, align 4, !tbaa !23
  %2 = bitcast i32* %rotate to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  store i32 0, i32* %rotate, align 4, !tbaa !23
  %3 = bitcast i32* %have_pagesize to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %arraydecay = getelementptr inbounds [2 x float], [2 x float]* %mediasize, i32 0, i32 0
  %4 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call = call i32 @clj_media_size(float* %arraydecay, %struct.gs_param_list_s* %4) #4
  store i32 %call, i32* %have_pagesize, align 4, !tbaa !23
  %5 = load i32, i32* %have_pagesize, align 4, !tbaa !23
  %cmp = icmp slt i32 %5, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load i32, i32* %have_pagesize, align 4, !tbaa !23
  store i32 %6, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = load i32, i32* %have_pagesize, align 4, !tbaa !23
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.then.1, label %if.else.24

if.then.1:                                        ; preds = %if.end
  %arraydecay2 = getelementptr inbounds [2 x float], [2 x float]* %mediasize, i32 0, i32 0
  %call3 = call %struct.clj_paper_size_s* @get_paper_size(float* %arraydecay2, i32* %rotate) #4
  %cmp4 = icmp eq %struct.clj_paper_size_s* %call3, null
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.then.1
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.6:                                         ; preds = %if.then.1
  %8 = load i32, i32* %rotate, align 4, !tbaa !23
  %tobool7 = icmp ne i32 %8, 0
  br i1 %tobool7, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %if.end.6
  %9 = bitcast %struct.gs_param_float_array_s* %pf_array to i8*
  call void @llvm.lifetime.start(i64 16, i8* %9) #2
  %10 = bitcast %struct.gs_c_param_list_s* %alist to i8*
  call void @llvm.lifetime.start(i64 56, i8* %10) #2
  %11 = bitcast float* %ftmp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #2
  %arrayidx = getelementptr inbounds [2 x float], [2 x float]* %mediasize, i32 0, i64 0
  %12 = load float, float* %arrayidx, align 4, !tbaa !24
  store float %12, float* %ftmp, align 4, !tbaa !24
  %arrayidx9 = getelementptr inbounds [2 x float], [2 x float]* %mediasize, i32 0, i64 1
  %13 = load float, float* %arrayidx9, align 4, !tbaa !24
  %arrayidx10 = getelementptr inbounds [2 x float], [2 x float]* %mediasize, i32 0, i64 0
  store float %13, float* %arrayidx10, align 4, !tbaa !24
  %14 = load float, float* %ftmp, align 4, !tbaa !24
  %arrayidx11 = getelementptr inbounds [2 x float], [2 x float]* %mediasize, i32 0, i64 1
  store float %14, float* %arrayidx11, align 4, !tbaa !24
  %arraydecay12 = getelementptr inbounds [2 x float], [2 x float]* %mediasize, i32 0, i32 0
  %data = getelementptr inbounds %struct.gs_param_float_array_s, %struct.gs_param_float_array_s* %pf_array, i32 0, i32 0
  store float* %arraydecay12, float** %data, align 8, !tbaa !51
  %size = getelementptr inbounds %struct.gs_param_float_array_s, %struct.gs_param_float_array_s* %pf_array, i32 0, i32 1
  store i32 2, i32* %size, align 4, !tbaa !58
  %persistent = getelementptr inbounds %struct.gs_param_float_array_s, %struct.gs_param_float_array_s* %pf_array, i32 0, i32 2
  store i32 0, i32* %persistent, align 4, !tbaa !59
  %15 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %15, i32 0, i32 3
  %16 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !60
  call void @gs_c_param_list_write(%struct.gs_c_param_list_s* %alist, %struct.gs_memory_s* %16) #4
  %17 = bitcast %struct.gs_c_param_list_s* %alist to %struct.gs_param_list_s*
  %call13 = call i32 @param_write_float_array(%struct.gs_param_list_s* %17, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i32 0, i32 0), %struct.gs_param_float_array_s* %pf_array) #4
  store i32 %call13, i32* %code, align 4, !tbaa !23
  call void @gs_c_param_list_read(%struct.gs_c_param_list_s* %alist) #4
  %18 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  call void @gs_c_param_list_set_target(%struct.gs_c_param_list_s* %alist, %struct.gs_param_list_s* %18) #4
  %19 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %20 = bitcast %struct.gs_c_param_list_s* %alist to %struct.gs_param_list_s*
  %call14 = call i32 @gdev_prn_put_params(%struct.gx_device_s* %19, %struct.gs_param_list_s* %20) #4
  store i32 %call14, i32* %code, align 4, !tbaa !23
  %cmp15 = icmp sge i32 %call14, 0
  br i1 %cmp15, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %if.then.8
  %21 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %22 = bitcast %struct.gx_device_s* %21 to %struct.gx_device_clj_s*
  %rotated = getelementptr inbounds %struct.gx_device_clj_s, %struct.gx_device_clj_s* %22, i32 0, i32 68
  store i32 1, i32* %rotated, align 4, !tbaa !32
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.16, %if.then.8
  call void @gs_c_param_list_release(%struct.gs_c_param_list_s* %alist) #4
  %23 = bitcast float* %ftmp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %23) #2
  %24 = bitcast %struct.gs_c_param_list_s* %alist to i8*
  call void @llvm.lifetime.end(i64 56, i8* %24) #2
  %25 = bitcast %struct.gs_param_float_array_s* %pf_array to i8*
  call void @llvm.lifetime.end(i64 16, i8* %25) #2
  br label %if.end.23

if.else:                                          ; preds = %if.end.6
  %26 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %27 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call18 = call i32 @gdev_prn_put_params(%struct.gx_device_s* %26, %struct.gs_param_list_s* %27) #4
  store i32 %call18, i32* %code, align 4, !tbaa !23
  %cmp19 = icmp sge i32 %call18, 0
  br i1 %cmp19, label %if.then.20, label %if.end.22

if.then.20:                                       ; preds = %if.else
  %28 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %29 = bitcast %struct.gx_device_s* %28 to %struct.gx_device_clj_s*
  %rotated21 = getelementptr inbounds %struct.gx_device_clj_s, %struct.gx_device_clj_s* %29, i32 0, i32 68
  store i32 0, i32* %rotated21, align 4, !tbaa !32
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.20, %if.else
  br label %if.end.23

if.end.23:                                        ; preds = %if.end.22, %if.end.17
  br label %if.end.26

if.else.24:                                       ; preds = %if.end
  %30 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %31 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call25 = call i32 @gdev_prn_put_params(%struct.gx_device_s* %30, %struct.gs_param_list_s* %31) #4
  store i32 %call25, i32* %code, align 4, !tbaa !23
  br label %if.end.26

if.end.26:                                        ; preds = %if.else.24, %if.end.23
  %32 = load i32, i32* %code, align 4, !tbaa !23
  store i32 %32, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.26, %if.then.5, %if.then
  %33 = bitcast i32* %have_pagesize to i8*
  call void @llvm.lifetime.end(i64 4, i8* %33) #2
  %34 = bitcast i32* %rotate to i8*
  call void @llvm.lifetime.end(i64 4, i8* %34) #2
  %35 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %35) #2
  %36 = bitcast [2 x float]* %mediasize to i8*
  call void @llvm.lifetime.end(i64 8, i8* %36) #2
  %37 = load i32, i32* %retval
  ret i32 %37
}

declare void @gs_c_param_list_write(%struct.gs_c_param_list_s*, %struct.gs_memory_s*) #0

declare i32 @param_write_float_array(%struct.gs_param_list_s*, i8*, %struct.gs_param_float_array_s*) #0

declare void @gs_c_param_list_read(%struct.gs_c_param_list_s*) #0

declare void @gs_c_param_list_set_target(%struct.gs_c_param_list_s*, %struct.gs_param_list_s*) #0

declare void @gs_c_param_list_release(%struct.gs_c_param_list_s*) #0

attributes #0 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nobuiltin }
attributes #5 = { nobuiltin nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !2, i64 24}
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
!22 = !{!6, !7, i64 832}
!23 = !{!7, !7, i64 0}
!24 = !{!25, !25, i64 0}
!25 = !{!"float", !3, i64 0}
!26 = !{!27, !27, i64 0}
!27 = !{!"double", !3, i64 0}
!28 = !{!29, !2, i64 64}
!29 = !{!"gs_memory_s", !2, i64 0, !30, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!30 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!31 = !{!29, !2, i64 24}
!32 = !{!33, !7, i64 18472}
!33 = !{!"gx_device_clj_s", !7, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !7, i64 40, !2, i64 48, !8, i64 56, !7, i64 80, !7, i64 84, !7, i64 88, !10, i64 96, !13, i64 816, !7, i64 832, !7, i64 836, !7, i64 840, !7, i64 844, !7, i64 848, !7, i64 852, !3, i64 856, !3, i64 864, !7, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !9, i64 928, !9, i64 936, !7, i64 944, !7, i64 948, !7, i64 952, !7, i64 956, !7, i64 960, !9, i64 968, !9, i64 976, !14, i64 984, !7, i64 1052, !7, i64 1056, !15, i64 1064, !2, i64 1104, !3, i64 1112, !17, i64 1120, !18, i64 1144, !3, i64 1728, !19, i64 12968, !3, i64 13056, !7, i64 17152, !7, i64 17156, !7, i64 17160, !7, i64 17164, !7, i64 17168, !7, i64 17172, !2, i64 17176, !9, i64 17184, !2, i64 17192, !2, i64 17200, !2, i64 17208, !2, i64 17216, !2, i64 17224, !7, i64 17232, !2, i64 17240, !7, i64 17248, !7, i64 17252, !21, i64 17256, !7, i64 17288, !2, i64 17296, !18, i64 17304, !18, i64 17888, !7, i64 18472}
!34 = !{!35, !27, i64 16}
!35 = !{!"clj_paper_size_s", !7, i64 0, !7, i64 4, !25, i64 8, !25, i64 12, !36, i64 16}
!36 = !{!"gs_point_s", !27, i64 0, !27, i64 8}
!37 = !{!6, !7, i64 836}
!38 = !{!35, !27, i64 24}
!39 = !{!35, !7, i64 0}
!40 = !{!41, !25, i64 0}
!41 = !{!"gs_matrix_s", !25, i64 0, !25, i64 4, !25, i64 8, !25, i64 12, !25, i64 16, !25, i64 20}
!42 = !{!41, !25, i64 4}
!43 = !{!41, !25, i64 8}
!44 = !{!41, !25, i64 12}
!45 = !{!41, !25, i64 16}
!46 = !{!41, !25, i64 20}
!47 = !{!48, !7, i64 836}
!48 = !{!"gx_device_s", !7, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !7, i64 40, !2, i64 48, !8, i64 56, !7, i64 80, !7, i64 84, !7, i64 88, !10, i64 96, !13, i64 816, !7, i64 832, !7, i64 836, !7, i64 840, !7, i64 844, !7, i64 848, !7, i64 852, !3, i64 856, !3, i64 864, !7, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !9, i64 928, !9, i64 936, !7, i64 944, !7, i64 948, !7, i64 952, !7, i64 956, !7, i64 960, !9, i64 968, !9, i64 976, !14, i64 984, !7, i64 1052, !7, i64 1056, !15, i64 1064, !2, i64 1104, !3, i64 1112, !17, i64 1120, !18, i64 1144}
!49 = !{!35, !25, i64 8}
!50 = !{!35, !25, i64 12}
!51 = !{!52, !2, i64 0}
!52 = !{!"gs_param_float_array_s", !2, i64 0, !7, i64 8, !7, i64 12}
!53 = !{!54, !2, i64 0}
!54 = !{!"gs_param_int_array_s", !2, i64 0, !7, i64 8, !7, i64 12}
!55 = !{!3, !3, i64 0}
!56 = !{!9, !9, i64 0}
!57 = !{!48, !7, i64 832}
!58 = !{!52, !7, i64 8}
!59 = !{!52, !7, i64 12}
!60 = !{!48, !2, i64 24}
