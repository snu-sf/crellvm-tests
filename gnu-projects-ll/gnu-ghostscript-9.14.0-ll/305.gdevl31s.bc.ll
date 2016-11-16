; ModuleID = './gdevl31s.bc'
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
%struct.anon = type { i32, i32 }

@.str = private unnamed_addr constant [3 x i8] c"a4\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"letter\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"legal\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"com10\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"c5\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"dl\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"b5\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"monarch\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"executive\00", align 1
@media = global [10 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0), i8* null], align 16
@height = constant [2 x [10 x i32]] [[10 x i32] [i32 3447, i32 3240, i32 4140, i32 5587, i32 2644, i32 5083, i32 2975, i32 4387, i32 3090, i32 0], [10 x i32] [i32 6894, i32 6480, i32 8280, i32 11167, i32 5288, i32 10159, i32 5950, i32 8767, i32 6180, i32 0]], align 16
@width = constant [2 x i32] [i32 2528, i32 5056], align 4
@prn_lj3100sw_procs = internal global %struct.gx_device_procs_s { i32 (%struct.gx_device_s*)* @gdev_prn_open, void (%struct.gx_device_s*, %struct.gs_matrix_s*)* null, i32 (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i32, i32)* @gdev_prn_bg_output_page, i32 (%struct.gx_device_s*)* @lj3100sw_close, i64 (%struct.gx_device_s*, i16*)* @gx_default_b_w_map_rgb_color, i32 (%struct.gx_device_s*, i64, i16*)* @gx_default_b_w_map_color_rgb, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* null, i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* null, i32 (%struct.gx_device_s*, i32, i8*, i8**)* null, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @gdev_prn_get_params, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @gdev_prn_put_params, i64 (%struct.gx_device_s*, i16*)* null, %struct.gx_xfont_procs_s* (%struct.gx_device_s*)* null, %struct.gx_device_s* (%struct.gx_device_s*)* null, i64 (%struct.gx_device_s*, i16, i16, i16, i16)* null, %struct.gx_device_s* (%struct.gx_device_s*)* @gx_page_device_get_page_device, i32 (%struct.gx_device_s*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)* null, i32 (%struct.gx_device_s*, i32, i32*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* null, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)* null, i32 (%struct.gx_device_s*, i64, i16*)* null, i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)* null, i32 (%struct.gx_device_s*, %struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_transparency_group_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gx_transparency_mask_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32)* null, i64 (%struct.gx_device_s*, i16*)* @gx_default_b_w_map_rgb_color, i32 (%struct.gx_device_s*, i64, i16*)* @gx_default_b_w_map_color_rgb, i32 (%struct.gx_device_s*, i64, %struct.gs_pattern1_instance_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* null, %struct.gs_devn_params_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i8*, i32)* @gdev_prn_dev_spec_op, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)* @gx_default_get_profile, void (%struct.gx_device_s*, i32)* @gx_default_set_graphics_type_tag, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_process_page_options_s*)* null }, align 8
@.str.9 = private unnamed_addr constant [9 x i8] c"lj3100sw\00", align 1
@st_device_printer = external constant %struct.gs_memory_struct_type_s, align 8
@.str.10 = private unnamed_addr constant [11 x i8] c"DeviceGray\00", align 1
@gs_lj3100sw_device = global { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [11240 x i8], { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* }, [4096 x i8], i32, i32, i32, i32, i32, i32, %struct._IO_FILE*, i64, i8*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s*, i32)*, %struct.gx_page_queue_s*, i32, %struct.gx_device_printer_s*, i32, i32, %struct.bg_print_s, i32, %struct.gx_saved_pages_list_s*, %struct.gx_device_procs_s, %struct.gx_device_procs_s } { i32 18472, %struct.gx_device_procs_s* @prn_lj3100sw_procs, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i32 0, i32 0), %struct.gs_memory_s* null, %struct.gs_memory_struct_type_s* @st_device_printer, i32 0, void (%struct.gx_device_s*)* null, %struct.rc_header_s zeroinitializer, i32 0, i32 0, i32 0, %struct.gx_device_color_info_s { i32 1, i32 1, i32 1, i16 1, i8 0, i32 1, i32 0, i32 2, i32 1, %struct.gx_device_anti_alias_info_s { i32 1, i32 1 }, i32 -1, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [64 x i64] zeroinitializer, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i32 0, i32 0), i32 -1, i64 0, i32 0 }, %struct.gx_device_cached_colors_s { i64 -1, i64 -1 }, i32 5100, i32 6600, i32 0, i32 0, i32 0, i32 0, [2 x float] [float 6.120000e+02, float 7.920000e+02], [4 x float] zeroinitializer, i32 0, [2 x float] [float 6.000000e+02, float 6.000000e+02], [2 x float] [float 6.000000e+02, float 6.000000e+02], [2 x float] [float -6.600000e+01, float -7.200000e+01], [4 x float] [float 1.800000e+01, float 0x402CCCCCC0000000, float 1.800000e+01, float 0x402CCCCCC0000000], i64 0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, %struct.gx_stroked_gradient_recognizer_s zeroinitializer, i32 0, i32 0, %struct.gdev_space_params_s { i64 10000000, i64 4000000, %struct.gx_band_params_s zeroinitializer, i32 0, i32 0 }, %struct.cmm_dev_profile_s* null, i32 0, %struct.gx_page_device_procs_s { i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_install, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_begin_page, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* @gx_default_end_page }, %struct.gx_device_procs_s zeroinitializer, [11240 x i8] zeroinitializer, { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* } { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)* null, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @lj3100sw_print_page_copies, %struct.gx_device_buf_procs_s { i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, %struct.gx_render_plane_s*, %struct.gs_memory_s*, %struct.gx_colors_usage_s*)* @gx_default_create_buf_device, i32 (%struct.gx_device_buf_space_s*, %struct.gx_device_s*, %struct.gx_render_plane_s*, i32, i32)* @gx_default_size_buf_device, i32 (%struct.gx_device_s*, i8*, i32, i8**, i32, i32, i32)* @gx_default_setup_buf_device, void (%struct.gx_device_s*)* @gx_default_destroy_buf_device }, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)* @gx_default_get_space_params, i32 (%struct.gdev_prn_start_render_params_s*)* @gx_default_start_render_thread, i32 (%struct.gx_device_printer_s*)* @gx_default_open_render_device, i32 (%struct.gx_device_printer_s*)* @gx_default_close_render_device, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_buffer_page }, [4096 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 -1, i32 0, %struct._IO_FILE* null, i64 0, i8* null, %struct.gs_memory_s* null, %struct.gs_memory_s* null, i32 (%struct.gx_device_s*, i32)* null, %struct.gx_page_queue_s* null, i32 0, %struct.gx_device_printer_s* null, i32 0, i32 0, %struct.bg_print_s zeroinitializer, i32 0, %struct.gx_saved_pages_list_s* null, %struct.gx_device_procs_s zeroinitializer, %struct.gx_device_procs_s zeroinitializer }, align 8
@.str.11 = private unnamed_addr constant [5 x i8] c"XX\0D\0A\00", align 1
@.str.12 = private unnamed_addr constant [20 x i8] c"lj3100sw_print_page\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"\0D\0ABD\00", align 1
@.str.14 = private unnamed_addr constant [47 x i8] c"%s\0D\0A%s %d\0D\0A%s %d\0D\0A%s %d\0D\0A%s %d\0D\0A%s %d\0D\0A%s %d\0D\0A\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"NJ\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"PQ\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"RE\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"SL\00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c"LM\00", align 1
@.str.20 = private unnamed_addr constant [3 x i8] c"PS\00", align 1
@.str.21 = private unnamed_addr constant [3 x i8] c"PC\00", align 1
@.str.22 = private unnamed_addr constant [12 x i8] c"%s %d\0D\0A%s\0D\0A\00", align 1
@.str.23 = private unnamed_addr constant [3 x i8] c"CM\00", align 1
@.str.24 = private unnamed_addr constant [3 x i8] c"PD\00", align 1
@code = internal global [2 x [65 x %struct.anon]] [[65 x %struct.anon] [%struct.anon { i32 172, i32 8 }, %struct.anon { i32 56, i32 6 }, %struct.anon { i32 14, i32 4 }, %struct.anon { i32 1, i32 4 }, %struct.anon { i32 13, i32 4 }, %struct.anon { i32 3, i32 4 }, %struct.anon { i32 7, i32 4 }, %struct.anon { i32 15, i32 4 }, %struct.anon { i32 25, i32 5 }, %struct.anon { i32 5, i32 5 }, %struct.anon { i32 28, i32 5 }, %struct.anon { i32 2, i32 5 }, %struct.anon { i32 4, i32 6 }, %struct.anon { i32 48, i32 6 }, %struct.anon { i32 11, i32 6 }, %struct.anon { i32 43, i32 6 }, %struct.anon { i32 21, i32 6 }, %struct.anon { i32 53, i32 6 }, %struct.anon { i32 114, i32 7 }, %struct.anon { i32 24, i32 7 }, %struct.anon { i32 8, i32 7 }, %struct.anon { i32 116, i32 7 }, %struct.anon { i32 96, i32 7 }, %struct.anon { i32 16, i32 7 }, %struct.anon { i32 10, i32 7 }, %struct.anon { i32 106, i32 7 }, %struct.anon { i32 100, i32 7 }, %struct.anon { i32 18, i32 7 }, %struct.anon { i32 12, i32 7 }, %struct.anon { i32 64, i32 8 }, %struct.anon { i32 192, i32 8 }, %struct.anon { i32 88, i32 8 }, %struct.anon { i32 216, i32 8 }, %struct.anon { i32 72, i32 8 }, %struct.anon { i32 200, i32 8 }, %struct.anon { i32 40, i32 8 }, %struct.anon { i32 168, i32 8 }, %struct.anon { i32 104, i32 8 }, %struct.anon { i32 232, i32 8 }, %struct.anon { i32 20, i32 8 }, %struct.anon { i32 148, i32 8 }, %struct.anon { i32 84, i32 8 }, %struct.anon { i32 212, i32 8 }, %struct.anon { i32 52, i32 8 }, %struct.anon { i32 180, i32 8 }, %struct.anon { i32 32, i32 8 }, %struct.anon { i32 160, i32 8 }, %struct.anon { i32 80, i32 8 }, %struct.anon { i32 208, i32 8 }, %struct.anon { i32 74, i32 8 }, %struct.anon { i32 202, i32 8 }, %struct.anon { i32 42, i32 8 }, %struct.anon { i32 170, i32 8 }, %struct.anon { i32 36, i32 8 }, %struct.anon { i32 164, i32 8 }, %struct.anon { i32 26, i32 8 }, %struct.anon { i32 154, i32 8 }, %struct.anon { i32 90, i32 8 }, %struct.anon { i32 218, i32 8 }, %struct.anon { i32 82, i32 8 }, %struct.anon { i32 210, i32 8 }, %struct.anon { i32 76, i32 8 }, %struct.anon { i32 204, i32 8 }, %struct.anon { i32 44, i32 8 }, %struct.anon { i32 27, i32 5 }], [65 x %struct.anon] [%struct.anon { i32 944, i32 10 }, %struct.anon { i32 2, i32 3 }, %struct.anon { i32 3, i32 2 }, %struct.anon { i32 1, i32 2 }, %struct.anon { i32 6, i32 3 }, %struct.anon { i32 12, i32 4 }, %struct.anon { i32 4, i32 4 }, %struct.anon { i32 24, i32 5 }, %struct.anon { i32 40, i32 6 }, %struct.anon { i32 8, i32 6 }, %struct.anon { i32 16, i32 7 }, %struct.anon { i32 80, i32 7 }, %struct.anon { i32 112, i32 7 }, %struct.anon { i32 32, i32 8 }, %struct.anon { i32 224, i32 8 }, %struct.anon { i32 48, i32 9 }, %struct.anon { i32 928, i32 10 }, %struct.anon { i32 96, i32 10 }, %struct.anon { i32 64, i32 10 }, %struct.anon { i32 1840, i32 11 }, %struct.anon { i32 176, i32 11 }, %struct.anon { i32 432, i32 11 }, %struct.anon { i32 1888, i32 11 }, %struct.anon { i32 160, i32 11 }, %struct.anon { i32 1856, i32 11 }, %struct.anon { i32 192, i32 11 }, %struct.anon { i32 1328, i32 12 }, %struct.anon { i32 3376, i32 12 }, %struct.anon { i32 816, i32 12 }, %struct.anon { i32 2864, i32 12 }, %struct.anon { i32 352, i32 12 }, %struct.anon { i32 2400, i32 12 }, %struct.anon { i32 1376, i32 12 }, %struct.anon { i32 3424, i32 12 }, %struct.anon { i32 1200, i32 12 }, %struct.anon { i32 3248, i32 12 }, %struct.anon { i32 688, i32 12 }, %struct.anon { i32 2736, i32 12 }, %struct.anon { i32 1712, i32 12 }, %struct.anon { i32 3760, i32 12 }, %struct.anon { i32 864, i32 12 }, %struct.anon { i32 2912, i32 12 }, %struct.anon { i32 1456, i32 12 }, %struct.anon { i32 3504, i32 12 }, %struct.anon { i32 672, i32 12 }, %struct.anon { i32 2720, i32 12 }, %struct.anon { i32 1696, i32 12 }, %struct.anon { i32 3744, i32 12 }, %struct.anon { i32 608, i32 12 }, %struct.anon { i32 2656, i32 12 }, %struct.anon { i32 1184, i32 12 }, %struct.anon { i32 3232, i32 12 }, %struct.anon { i32 576, i32 12 }, %struct.anon { i32 3776, i32 12 }, %struct.anon { i32 448, i32 12 }, %struct.anon { i32 3648, i32 12 }, %struct.anon { i32 320, i32 12 }, %struct.anon { i32 416, i32 12 }, %struct.anon { i32 2464, i32 12 }, %struct.anon { i32 3392, i32 12 }, %struct.anon { i32 832, i32 12 }, %struct.anon { i32 1440, i32 12 }, %struct.anon { i32 1632, i32 12 }, %struct.anon { i32 3680, i32 12 }, %struct.anon { i32 960, i32 10 }]], align 16

declare i32 @gx_default_install(%struct.gx_device_s*, %struct.gs_state_s*) #0

declare i32 @gx_default_begin_page(%struct.gx_device_s*, %struct.gs_state_s*) #0

declare i32 @gx_default_end_page(%struct.gx_device_s*, i32, %struct.gs_state_s*) #0

; Function Attrs: nounwind uwtable
define internal i32 @lj3100sw_print_page_copies(%struct.gx_device_printer_s* %pdev, %struct._IO_FILE* %prn_stream, i32 %num_copies) #1 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_printer_s*, align 8
  %prn_stream.addr = alloca %struct._IO_FILE*, align 8
  %num_copies.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %buffer = alloca [4096 x i8], align 16
  %ptr = alloca i8*, align 8
  %medium_index = alloca i32, align 4
  %high_resolution = alloca i32, align 4
  %printer_height = alloca i32, align 4
  %printer_width = alloca i32, align 4
  %paper_height = alloca i32, align 4
  %paper_width = alloca i32, align 4
  %line_size = alloca i32, align 4
  %mem = alloca %struct.gs_memory_s*, align 8
  %in = alloca i8*, align 8
  %data = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  %color = alloca i32, align 4
  %count = alloca i32, align 4
  %bit_index = alloca i32, align 4
  %tmp = alloca i32, align 4
  %xoffset = alloca i32, align 4
  %newcolor = alloca i32, align 4
  %size = alloca i32, align 4
  store %struct.gx_device_printer_s* %pdev, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  store %struct._IO_FILE* %prn_stream, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  store i32 %num_copies, i32* %num_copies.addr, align 4, !tbaa !5
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = bitcast [4096 x i8]* %buffer to i8*
  call void @llvm.lifetime.start(i64 4096, i8* %2) #2
  %3 = bitcast i8** %ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %arraydecay = getelementptr inbounds [4096 x i8], [4096 x i8]* %buffer, i32 0, i32 0
  store i8* %arraydecay, i8** %ptr, align 8, !tbaa !1
  %4 = bitcast i32* %medium_index to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %call = call i32 @select_medium(%struct.gx_device_printer_s* %5, i8** getelementptr inbounds ([10 x i8*], [10 x i8*]* @media, i32 0, i32 0), i32 2) #4
  store i32 %call, i32* %medium_index, align 4, !tbaa !5
  %6 = bitcast i32* %high_resolution to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %HWResolution = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %7, i32 0, i32 22
  %arrayidx = getelementptr inbounds [2 x float], [2 x float]* %HWResolution, i32 0, i64 0
  %8 = load float, float* %arrayidx, align 4, !tbaa !7
  %cmp = fcmp ogt float %8, 3.000000e+02
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %high_resolution, align 4, !tbaa !5
  %9 = bitcast i32* %printer_height to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #2
  %10 = load i32, i32* %medium_index, align 4, !tbaa !5
  %idxprom = sext i32 %10 to i64
  %11 = load i32, i32* %high_resolution, align 4, !tbaa !5
  %tobool = icmp ne i32 %11, 0
  %cond = select i1 %tobool, i32 1, i32 0
  %idxprom1 = sext i32 %cond to i64
  %arrayidx2 = getelementptr inbounds [2 x [10 x i32]], [2 x [10 x i32]]* @height, i32 0, i64 %idxprom1
  %arrayidx3 = getelementptr inbounds [10 x i32], [10 x i32]* %arrayidx2, i32 0, i64 %idxprom
  %12 = load i32, i32* %arrayidx3, align 4, !tbaa !5
  store i32 %12, i32* %printer_height, align 4, !tbaa !5
  %13 = bitcast i32* %printer_width to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #2
  %14 = load i32, i32* %high_resolution, align 4, !tbaa !5
  %tobool4 = icmp ne i32 %14, 0
  %cond5 = select i1 %tobool4, i32 1, i32 0
  %idxprom6 = sext i32 %cond5 to i64
  %arrayidx7 = getelementptr inbounds [2 x i32], [2 x i32]* @width, i32 0, i64 %idxprom6
  %15 = load i32, i32* %arrayidx7, align 4, !tbaa !5
  store i32 %15, i32* %printer_width, align 4, !tbaa !5
  %16 = bitcast i32* %paper_height to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #2
  %17 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %17, i32 0, i32 14
  %18 = load i32, i32* %height, align 4, !tbaa !9
  store i32 %18, i32* %paper_height, align 4, !tbaa !5
  %19 = bitcast i32* %paper_width to i8*
  call void @llvm.lifetime.start(i64 4, i8* %19) #2
  %20 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %20, i32 0, i32 13
  %21 = load i32, i32* %width, align 4, !tbaa !25
  store i32 %21, i32* %paper_width, align 4, !tbaa !5
  %22 = bitcast i32* %line_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %22) #2
  %23 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %24 = bitcast %struct.gx_device_printer_s* %23 to %struct.gx_device_s*
  %call8 = call i32 @gx_device_raster(%struct.gx_device_s* %24, i32 0) #4
  store i32 %call8, i32* %line_size, align 4, !tbaa !5
  %25 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %25) #2
  %26 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %26, i32 0, i32 3
  %27 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !26
  store %struct.gs_memory_s* %27, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %28 = bitcast i8** %in to i8*
  call void @llvm.lifetime.start(i64 8, i8* %28) #2
  %29 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %non_gc_memory = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %29, i32 0, i32 3
  %30 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory, align 8, !tbaa !27
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %30, i32 0, i32 1
  %alloc_byte_array = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 10
  %31 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array, align 8, !tbaa !30
  %32 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %non_gc_memory9 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %32, i32 0, i32 3
  %33 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory9, align 8, !tbaa !27
  %34 = load i32, i32* %line_size, align 4, !tbaa !5
  %call10 = call i8* %31(%struct.gs_memory_s* %33, i32 %34, i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i32 0, i32 0)) #4
  store i8* %call10, i8** %in, align 8, !tbaa !1
  %35 = bitcast i8** %data to i8*
  call void @llvm.lifetime.start(i64 8, i8* %35) #2
  %36 = load i8*, i8** %in, align 8, !tbaa !1
  %cmp11 = icmp eq i8* %36, null
  br i1 %cmp11, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %37 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %call13 = call i32 @gdev_prn_file_is_new(%struct.gx_device_printer_s* %37) #4
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.then.15, label %if.end.25

if.then.15:                                       ; preds = %if.end
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  call void @lj3100sw_output_section_header(%struct._IO_FILE* %38, i32 1, i32 0, i32 0) #4
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %arraydecay16 = getelementptr inbounds [4096 x i8], [4096 x i8]* %buffer, i32 0, i32 0
  call void @lj3100sw_output_repeated_data_bytes(%struct._IO_FILE* %39, i8* %arraydecay16, i8** %ptr, i32 27, i32 12) #4
  %40 = load i8*, i8** %ptr, align 8, !tbaa !1
  %call17 = call i32 (i8*, i8*, ...) @gs_sprintf(i8* %40, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0)) #4
  %41 = load i8*, i8** %ptr, align 8, !tbaa !1
  %idx.ext = sext i32 %call17 to i64
  %add.ptr = getelementptr inbounds i8, i8* %41, i64 %idx.ext
  store i8* %add.ptr, i8** %ptr, align 8, !tbaa !1
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %arraydecay18 = getelementptr inbounds [4096 x i8], [4096 x i8]* %buffer, i32 0, i32 0
  call void @lj3100sw_output_repeated_data_bytes(%struct._IO_FILE* %42, i8* %arraydecay18, i8** %ptr, i32 0, i32 5520) #4
  %43 = load i8*, i8** %ptr, align 8, !tbaa !1
  %44 = load i32, i32* %high_resolution, align 4, !tbaa !5
  %tobool19 = icmp ne i32 %44, 0
  %cond20 = select i1 %tobool19, i32 6, i32 2
  %45 = load i32, i32* %printer_width, align 4, !tbaa !5
  %46 = load i32, i32* %medium_index, align 4, !tbaa !5
  %call21 = call i32 (i8*, i8*, ...) @gs_sprintf(i8* %43, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i32 0, i32 0), i32 -1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i32 0, i32 0), i32 %cond20, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i32 0, i32 0), i32 %45, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i32 0, i32 0), i32 %46, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i32 0, i32 0), i32 0) #4
  %47 = load i8*, i8** %ptr, align 8, !tbaa !1
  %idx.ext22 = sext i32 %call21 to i64
  %add.ptr23 = getelementptr inbounds i8, i8* %47, i64 %idx.ext22
  store i8* %add.ptr23, i8** %ptr, align 8, !tbaa !1
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %arraydecay24 = getelementptr inbounds [4096 x i8], [4096 x i8]* %buffer, i32 0, i32 0
  call void @lj3100sw_flush_buffer(%struct._IO_FILE* %48, i8* %arraydecay24, i8** %ptr) #4
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.15, %if.end
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %50 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %NumCopies = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %50, i32 0, i32 28
  %51 = load i32, i32* %NumCopies, align 4, !tbaa !31
  call void @lj3100sw_output_section_header(%struct._IO_FILE* %49, i32 3, i32 %51, i32 0) #4
  %52 = load i8*, i8** %ptr, align 8, !tbaa !1
  %call26 = call i32 (i8*, i8*, ...) @gs_sprintf(i8* %52, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23, i32 0, i32 0), i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.24, i32 0, i32 0)) #4
  %53 = load i8*, i8** %ptr, align 8, !tbaa !1
  %idx.ext27 = sext i32 %call26 to i64
  %add.ptr28 = getelementptr inbounds i8, i8* %53, i64 %idx.ext27
  store i8* %add.ptr28, i8** %ptr, align 8, !tbaa !1
  %54 = load i8*, i8** %ptr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %54, i32 1
  store i8* %incdec.ptr, i8** %ptr, align 8, !tbaa !1
  store i8 0, i8* %54, align 1, !tbaa !32
  %55 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %arraydecay29 = getelementptr inbounds [4096 x i8], [4096 x i8]* %buffer, i32 0, i32 0
  call void @lj3100sw_output_newline(%struct._IO_FILE* %55, i8* %arraydecay29, i8** %ptr) #4
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc.113, %if.end.25
  %56 = load i32, i32* %i, align 4, !tbaa !5
  %57 = load i32, i32* %printer_height, align 4, !tbaa !5
  %cmp30 = icmp slt i32 %56, %57
  br i1 %cmp30, label %for.body, label %for.end.115

for.body:                                         ; preds = %for.cond
  %58 = load i32, i32* %i, align 4, !tbaa !5
  %59 = load i32, i32* %paper_height, align 4, !tbaa !5
  %cmp32 = icmp slt i32 %58, %59
  br i1 %cmp32, label %if.then.34, label %if.else.109

if.then.34:                                       ; preds = %for.body
  %60 = bitcast i32* %color to i8*
  call void @llvm.lifetime.start(i64 4, i8* %60) #2
  store i32 0, i32* %color, align 4, !tbaa !5
  %61 = bitcast i32* %count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %61) #2
  store i32 0, i32* %count, align 4, !tbaa !5
  %62 = bitcast i32* %bit_index to i8*
  call void @llvm.lifetime.start(i64 4, i8* %62) #2
  store i32 0, i32* %bit_index, align 4, !tbaa !5
  %63 = bitcast i32* %tmp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %63) #2
  store i32 0, i32* %tmp, align 4, !tbaa !5
  %64 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %65 = load i32, i32* %i, align 4, !tbaa !5
  %66 = load i8*, i8** %in, align 8, !tbaa !1
  %call35 = call i32 @gdev_prn_get_bits(%struct.gx_device_printer_s* %64, i32 %65, i8* %66, i8** %data) #4
  store i32 0, i32* %j, align 4, !tbaa !5
  br label %for.cond.36

for.cond.36:                                      ; preds = %for.inc, %if.then.34
  %67 = load i32, i32* %j, align 4, !tbaa !5
  %68 = load i32, i32* %printer_width, align 4, !tbaa !5
  %cmp37 = icmp sle i32 %67, %68
  br i1 %cmp37, label %for.body.39, label %for.end

for.body.39:                                      ; preds = %for.cond.36
  %69 = bitcast i32* %xoffset to i8*
  call void @llvm.lifetime.start(i64 4, i8* %69) #2
  %70 = load i32, i32* %printer_width, align 4, !tbaa !5
  %71 = load i32, i32* %paper_width, align 4, !tbaa !5
  %sub = sub nsw i32 %70, %71
  %div = sdiv i32 %sub, 2
  store i32 %div, i32* %xoffset, align 4, !tbaa !5
  %72 = bitcast i32* %newcolor to i8*
  call void @llvm.lifetime.start(i64 4, i8* %72) #2
  store i32 0, i32* %newcolor, align 4, !tbaa !5
  %73 = load i32, i32* %j, align 4, !tbaa !5
  %74 = load i32, i32* %xoffset, align 4, !tbaa !5
  %cmp42 = icmp sge i32 %73, %74
  br i1 %cmp42, label %land.lhs.true, label %if.end.54

land.lhs.true:                                    ; preds = %for.body.39
  %75 = load i32, i32* %j, align 4, !tbaa !5
  %76 = load i32, i32* %xoffset, align 4, !tbaa !5
  %77 = load i32, i32* %paper_width, align 4, !tbaa !5
  %add = add nsw i32 %76, %77
  %cmp44 = icmp slt i32 %75, %add
  br i1 %cmp44, label %if.then.46, label %if.end.54

if.then.46:                                       ; preds = %land.lhs.true
  %78 = load i32, i32* %j, align 4, !tbaa !5
  %79 = load i32, i32* %xoffset, align 4, !tbaa !5
  %sub47 = sub nsw i32 %78, %79
  %div48 = sdiv i32 %sub47, 8
  %idxprom49 = sext i32 %div48 to i64
  %80 = load i8*, i8** %data, align 8, !tbaa !1
  %arrayidx50 = getelementptr inbounds i8, i8* %80, i64 %idxprom49
  %81 = load i8, i8* %arrayidx50, align 1, !tbaa !32
  %conv51 = zext i8 %81 to i32
  %82 = load i32, i32* %j, align 4, !tbaa !5
  %83 = load i32, i32* %xoffset, align 4, !tbaa !5
  %sub52 = sub nsw i32 %82, %83
  %rem = srem i32 %sub52, 8
  %sub53 = sub nsw i32 7, %rem
  %shr = ashr i32 %conv51, %sub53
  %and = and i32 %shr, 1
  store i32 %and, i32* %newcolor, align 4, !tbaa !5
  br label %if.end.54

if.end.54:                                        ; preds = %if.then.46, %land.lhs.true, %for.body.39
  %84 = load i32, i32* %j, align 4, !tbaa !5
  %85 = load i32, i32* %printer_width, align 4, !tbaa !5
  %cmp55 = icmp eq i32 %84, %85
  br i1 %cmp55, label %if.then.57, label %if.end.59

if.then.57:                                       ; preds = %if.end.54
  %86 = load i32, i32* %color, align 4, !tbaa !5
  %tobool58 = icmp ne i32 %86, 0
  %lnot = xor i1 %tobool58, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, i32* %newcolor, align 4, !tbaa !5
  br label %if.end.59

if.end.59:                                        ; preds = %if.then.57, %if.end.54
  %87 = load i32, i32* %newcolor, align 4, !tbaa !5
  %88 = load i32, i32* %color, align 4, !tbaa !5
  %cmp60 = icmp eq i32 %87, %88
  br i1 %cmp60, label %if.then.62, label %if.else

if.then.62:                                       ; preds = %if.end.59
  %89 = load i32, i32* %count, align 4, !tbaa !5
  %inc = add nsw i32 %89, 1
  store i32 %inc, i32* %count, align 4, !tbaa !5
  br label %if.end.102

if.else:                                          ; preds = %if.end.59
  %90 = load i32, i32* %count, align 4, !tbaa !5
  %91 = load i32, i32* %printer_width, align 4, !tbaa !5
  %cmp63 = icmp eq i32 %90, %91
  br i1 %cmp63, label %land.lhs.true.65, label %if.else.70

land.lhs.true.65:                                 ; preds = %if.else
  %92 = load i32, i32* %color, align 4, !tbaa !5
  %cmp66 = icmp eq i32 %92, 0
  br i1 %cmp66, label %if.then.68, label %if.else.70

if.then.68:                                       ; preds = %land.lhs.true.65
  %93 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %arraydecay69 = getelementptr inbounds [4096 x i8], [4096 x i8]* %buffer, i32 0, i32 0
  %94 = load i32, i32* %high_resolution, align 4, !tbaa !5
  call void @lj3100sw_output_empty_line(%struct._IO_FILE* %93, i8* %arraydecay69, i8** %ptr, i32 %94) #4
  br label %if.end.101

if.else.70:                                       ; preds = %land.lhs.true.65, %if.else
  br label %while.cond

while.cond:                                       ; preds = %if.end.99, %if.else.70
  %95 = load i32, i32* %newcolor, align 4, !tbaa !5
  %96 = load i32, i32* %color, align 4, !tbaa !5
  %cmp71 = icmp ne i32 %95, %96
  br i1 %cmp71, label %while.body, label %while.end.100

while.body:                                       ; preds = %while.cond
  %97 = bitcast i32* %size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %97) #2
  %98 = load i32, i32* %count, align 4, !tbaa !5
  %cmp74 = icmp slt i32 %98, 64
  br i1 %cmp74, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.body
  %99 = load i32, i32* %count, align 4, !tbaa !5
  br label %cond.end

cond.false:                                       ; preds = %while.body
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond76 = phi i32 [ %99, %cond.true ], [ 64, %cond.false ]
  store i32 %cond76, i32* %size, align 4, !tbaa !5
  %100 = load i32, i32* %size, align 4, !tbaa !5
  %idxprom77 = sext i32 %100 to i64
  %101 = load i32, i32* %color, align 4, !tbaa !5
  %idxprom78 = sext i32 %101 to i64
  %arrayidx79 = getelementptr inbounds [2 x [65 x %struct.anon]], [2 x [65 x %struct.anon]]* @code, i32 0, i64 %idxprom78
  %arrayidx80 = getelementptr inbounds [65 x %struct.anon], [65 x %struct.anon]* %arrayidx79, i32 0, i64 %idxprom77
  %bits = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx80, i32 0, i32 0
  %102 = load i32, i32* %bits, align 4, !tbaa !33
  %103 = load i32, i32* %bit_index, align 4, !tbaa !5
  %shl = shl i32 %102, %103
  %104 = load i32, i32* %tmp, align 4, !tbaa !5
  %or = or i32 %104, %shl
  store i32 %or, i32* %tmp, align 4, !tbaa !5
  %105 = load i32, i32* %size, align 4, !tbaa !5
  %idxprom81 = sext i32 %105 to i64
  %106 = load i32, i32* %color, align 4, !tbaa !5
  %idxprom82 = sext i32 %106 to i64
  %arrayidx83 = getelementptr inbounds [2 x [65 x %struct.anon]], [2 x [65 x %struct.anon]]* @code, i32 0, i64 %idxprom82
  %arrayidx84 = getelementptr inbounds [65 x %struct.anon], [65 x %struct.anon]* %arrayidx83, i32 0, i64 %idxprom81
  %length = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx84, i32 0, i32 1
  %107 = load i32, i32* %length, align 4, !tbaa !35
  %108 = load i32, i32* %bit_index, align 4, !tbaa !5
  %add85 = add i32 %108, %107
  store i32 %add85, i32* %bit_index, align 4, !tbaa !5
  br label %while.cond.86

while.cond.86:                                    ; preds = %while.body.89, %cond.end
  %109 = load i32, i32* %bit_index, align 4, !tbaa !5
  %cmp87 = icmp sge i32 %109, 8
  br i1 %cmp87, label %while.body.89, label %while.end

while.body.89:                                    ; preds = %while.cond.86
  %110 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %arraydecay90 = getelementptr inbounds [4096 x i8], [4096 x i8]* %buffer, i32 0, i32 0
  %111 = load i32, i32* %tmp, align 4, !tbaa !5
  %and91 = and i32 %111, 255
  call void @lj3100sw_output_data_byte(%struct._IO_FILE* %110, i8* %arraydecay90, i8** %ptr, i32 %and91) #4
  %112 = load i32, i32* %tmp, align 4, !tbaa !5
  %shr92 = lshr i32 %112, 8
  store i32 %shr92, i32* %tmp, align 4, !tbaa !5
  %113 = load i32, i32* %bit_index, align 4, !tbaa !5
  %sub93 = sub nsw i32 %113, 8
  store i32 %sub93, i32* %bit_index, align 4, !tbaa !5
  br label %while.cond.86

while.end:                                        ; preds = %while.cond.86
  %114 = load i32, i32* %size, align 4, !tbaa !5
  %cmp94 = icmp eq i32 %114, 64
  br i1 %cmp94, label %if.then.96, label %if.else.98

if.then.96:                                       ; preds = %while.end
  %115 = load i32, i32* %count, align 4, !tbaa !5
  %sub97 = sub nsw i32 %115, 64
  store i32 %sub97, i32* %count, align 4, !tbaa !5
  br label %if.end.99

if.else.98:                                       ; preds = %while.end
  %116 = load i32, i32* %newcolor, align 4, !tbaa !5
  store i32 %116, i32* %color, align 4, !tbaa !5
  store i32 1, i32* %count, align 4, !tbaa !5
  br label %if.end.99

if.end.99:                                        ; preds = %if.else.98, %if.then.96
  %117 = bitcast i32* %size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %117) #2
  br label %while.cond

while.end.100:                                    ; preds = %while.cond
  br label %if.end.101

if.end.101:                                       ; preds = %while.end.100, %if.then.68
  br label %if.end.102

if.end.102:                                       ; preds = %if.end.101, %if.then.62
  %118 = bitcast i32* %newcolor to i8*
  call void @llvm.lifetime.end(i64 4, i8* %118) #2
  %119 = bitcast i32* %xoffset to i8*
  call void @llvm.lifetime.end(i64 4, i8* %119) #2
  br label %for.inc

for.inc:                                          ; preds = %if.end.102
  %120 = load i32, i32* %j, align 4, !tbaa !5
  %inc103 = add nsw i32 %120, 1
  store i32 %inc103, i32* %j, align 4, !tbaa !5
  br label %for.cond.36

for.end:                                          ; preds = %for.cond.36
  %121 = load i32, i32* %bit_index, align 4, !tbaa !5
  %tobool104 = icmp ne i32 %121, 0
  br i1 %tobool104, label %if.then.105, label %if.end.108

if.then.105:                                      ; preds = %for.end
  %122 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %arraydecay106 = getelementptr inbounds [4096 x i8], [4096 x i8]* %buffer, i32 0, i32 0
  %123 = load i32, i32* %tmp, align 4, !tbaa !5
  %and107 = and i32 %123, 255
  call void @lj3100sw_output_data_byte(%struct._IO_FILE* %122, i8* %arraydecay106, i8** %ptr, i32 %and107) #4
  br label %if.end.108

if.end.108:                                       ; preds = %if.then.105, %for.end
  %124 = bitcast i32* %tmp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %124) #2
  %125 = bitcast i32* %bit_index to i8*
  call void @llvm.lifetime.end(i64 4, i8* %125) #2
  %126 = bitcast i32* %count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %126) #2
  %127 = bitcast i32* %color to i8*
  call void @llvm.lifetime.end(i64 4, i8* %127) #2
  br label %if.end.111

if.else.109:                                      ; preds = %for.body
  %128 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %arraydecay110 = getelementptr inbounds [4096 x i8], [4096 x i8]* %buffer, i32 0, i32 0
  %129 = load i32, i32* %high_resolution, align 4, !tbaa !5
  call void @lj3100sw_output_empty_line(%struct._IO_FILE* %128, i8* %arraydecay110, i8** %ptr, i32 %129) #4
  br label %if.end.111

if.end.111:                                       ; preds = %if.else.109, %if.end.108
  %130 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %arraydecay112 = getelementptr inbounds [4096 x i8], [4096 x i8]* %buffer, i32 0, i32 0
  call void @lj3100sw_output_newline(%struct._IO_FILE* %130, i8* %arraydecay112, i8** %ptr) #4
  br label %for.inc.113

for.inc.113:                                      ; preds = %if.end.111
  %131 = load i32, i32* %i, align 4, !tbaa !5
  %inc114 = add nsw i32 %131, 1
  store i32 %inc114, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end.115:                                      ; preds = %for.cond
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.116

for.cond.116:                                     ; preds = %for.inc.123, %for.end.115
  %132 = load i32, i32* %i, align 4, !tbaa !5
  %cmp117 = icmp slt i32 %132, 3
  br i1 %cmp117, label %for.body.119, label %for.end.125

for.body.119:                                     ; preds = %for.cond.116
  %133 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %arraydecay120 = getelementptr inbounds [4096 x i8], [4096 x i8]* %buffer, i32 0, i32 0
  call void @lj3100sw_output_data_byte(%struct._IO_FILE* %133, i8* %arraydecay120, i8** %ptr, i32 0) #4
  %134 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %arraydecay121 = getelementptr inbounds [4096 x i8], [4096 x i8]* %buffer, i32 0, i32 0
  call void @lj3100sw_output_data_byte(%struct._IO_FILE* %134, i8* %arraydecay121, i8** %ptr, i32 8) #4
  %135 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %arraydecay122 = getelementptr inbounds [4096 x i8], [4096 x i8]* %buffer, i32 0, i32 0
  call void @lj3100sw_output_data_byte(%struct._IO_FILE* %135, i8* %arraydecay122, i8** %ptr, i32 128) #4
  br label %for.inc.123

for.inc.123:                                      ; preds = %for.body.119
  %136 = load i32, i32* %i, align 4, !tbaa !5
  %inc124 = add nsw i32 %136, 1
  store i32 %inc124, i32* %i, align 4, !tbaa !5
  br label %for.cond.116

for.end.125:                                      ; preds = %for.cond.116
  %137 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %arraydecay126 = getelementptr inbounds [4096 x i8], [4096 x i8]* %buffer, i32 0, i32 0
  call void @lj3100sw_output_repeated_data_bytes(%struct._IO_FILE* %137, i8* %arraydecay126, i8** %ptr, i32 0, i32 520) #4
  %138 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %arraydecay127 = getelementptr inbounds [4096 x i8], [4096 x i8]* %buffer, i32 0, i32 0
  call void @lj3100sw_flush_buffer(%struct._IO_FILE* %138, i8* %arraydecay127, i8** %ptr) #4
  %139 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  call void @lj3100sw_output_section_header(%struct._IO_FILE* %139, i32 4, i32 0, i32 0) #4
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.128

for.cond.128:                                     ; preds = %for.inc.133, %for.end.125
  %140 = load i32, i32* %i, align 4, !tbaa !5
  %141 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %NumCopies129 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %141, i32 0, i32 28
  %142 = load i32, i32* %NumCopies129, align 4, !tbaa !31
  %mul = mul nsw i32 4, %142
  %cmp130 = icmp slt i32 %140, %mul
  br i1 %cmp130, label %for.body.132, label %for.end.135

for.body.132:                                     ; preds = %for.cond.128
  %143 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  call void @lj3100sw_output_section_header(%struct._IO_FILE* %143, i32 54, i32 0, i32 0) #4
  br label %for.inc.133

for.inc.133:                                      ; preds = %for.body.132
  %144 = load i32, i32* %i, align 4, !tbaa !5
  %inc134 = add nsw i32 %144, 1
  store i32 %inc134, i32* %i, align 4, !tbaa !5
  br label %for.cond.128

for.end.135:                                      ; preds = %for.cond.128
  %145 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %non_gc_memory136 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %145, i32 0, i32 3
  %146 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory136, align 8, !tbaa !27
  %procs137 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %146, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs137, i32 0, i32 2
  %147 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !36
  %148 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %non_gc_memory138 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %148, i32 0, i32 3
  %149 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory138, align 8, !tbaa !27
  %150 = load i8*, i8** %in, align 8, !tbaa !1
  call void %147(%struct.gs_memory_s* %149, i8* %150, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i32 0, i32 0)) #4
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end.135, %if.then
  %151 = bitcast i8** %data to i8*
  call void @llvm.lifetime.end(i64 8, i8* %151) #2
  %152 = bitcast i8** %in to i8*
  call void @llvm.lifetime.end(i64 8, i8* %152) #2
  %153 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %153) #2
  %154 = bitcast i32* %line_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %154) #2
  %155 = bitcast i32* %paper_width to i8*
  call void @llvm.lifetime.end(i64 4, i8* %155) #2
  %156 = bitcast i32* %paper_height to i8*
  call void @llvm.lifetime.end(i64 4, i8* %156) #2
  %157 = bitcast i32* %printer_width to i8*
  call void @llvm.lifetime.end(i64 4, i8* %157) #2
  %158 = bitcast i32* %printer_height to i8*
  call void @llvm.lifetime.end(i64 4, i8* %158) #2
  %159 = bitcast i32* %high_resolution to i8*
  call void @llvm.lifetime.end(i64 4, i8* %159) #2
  %160 = bitcast i32* %medium_index to i8*
  call void @llvm.lifetime.end(i64 4, i8* %160) #2
  %161 = bitcast i8** %ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %161) #2
  %162 = bitcast [4096 x i8]* %buffer to i8*
  call void @llvm.lifetime.end(i64 4096, i8* %162) #2
  %163 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %163) #2
  %164 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %164) #2
  %165 = load i32, i32* %retval
  ret i32 %165
}

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

declare i32 @gdev_prn_bg_output_page(%struct.gx_device_s*, i32, i32) #0

; Function Attrs: nounwind uwtable
define internal i32 @lj3100sw_close(%struct.gx_device_s* %pdev) #1 {
entry:
  %pdev.addr = alloca %struct.gx_device_s*, align 8
  %i = alloca i32, align 4
  %prn_stream = alloca %struct._IO_FILE*, align 8
  store %struct.gx_device_s* %pdev, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast %struct._IO_FILE** %prn_stream to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #2
  %2 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %3 = bitcast %struct.gx_device_s* %2 to %struct.gx_device_printer_s*
  %file = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %3, i32 0, i32 52
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8, !tbaa !37
  store %struct._IO_FILE* %4, %struct._IO_FILE** %prn_stream, align 8, !tbaa !1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream, align 8, !tbaa !1
  call void @lj3100sw_output_section_header(%struct._IO_FILE* %5, i32 0, i32 4, i32 0) #4
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream, align 8, !tbaa !1
  %call = call i32 @fputs(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), %struct._IO_FILE* %6) #4
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %7 = load i32, i32* %i, align 4, !tbaa !5
  %8 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %9 = bitcast %struct.gx_device_s* %8 to %struct.gx_device_printer_s*
  %NumCopies = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %9, i32 0, i32 28
  %10 = load i32, i32* %NumCopies, align 4, !tbaa !31
  %mul = mul nsw i32 4, %10
  %cmp = icmp slt i32 %7, %mul
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream, align 8, !tbaa !1
  call void @lj3100sw_output_section_header(%struct._IO_FILE* %11, i32 54, i32 0, i32 0) #4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %12 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream, align 8, !tbaa !1
  call void @lj3100sw_output_section_header(%struct._IO_FILE* %13, i32 2, i32 0, i32 0) #4
  %14 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %call1 = call i32 @gdev_prn_close(%struct.gx_device_s* %14) #4
  %15 = bitcast %struct._IO_FILE** %prn_stream to i8*
  call void @llvm.lifetime.end(i64 8, i8* %15) #2
  %16 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %16) #2
  ret i32 %call1
}

declare i64 @gx_default_b_w_map_rgb_color(%struct.gx_device_s*, i16*) #0

declare i32 @gx_default_b_w_map_color_rgb(%struct.gx_device_s*, i64, i16*) #0

declare i32 @gdev_prn_get_params(%struct.gx_device_s*, %struct.gs_param_list_s*) #0

declare i32 @gdev_prn_put_params(%struct.gx_device_s*, %struct.gs_param_list_s*) #0

declare %struct.gx_device_s* @gx_page_device_get_page_device(%struct.gx_device_s*) #0

declare i32 @gdev_prn_dev_spec_op(%struct.gx_device_s*, i32, i8*, i32) #0

declare i32 @gx_default_get_profile(%struct.gx_device_s*, %struct.cmm_dev_profile_s**) #0

declare void @gx_default_set_graphics_type_tag(%struct.gx_device_s*, i32) #0

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define internal void @lj3100sw_output_section_header(%struct._IO_FILE* %prn_stream, i32 %type, i32 %arg1, i32 %arg2) #1 {
entry:
  %prn_stream.addr = alloca %struct._IO_FILE*, align 8
  %type.addr = alloca i32, align 4
  %arg1.addr = alloca i32, align 4
  %arg2.addr = alloca i32, align 4
  store %struct._IO_FILE* %prn_stream, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  store i32 %type, i32* %type.addr, align 4, !tbaa !5
  store i32 %arg1, i32* %arg1.addr, align 4, !tbaa !5
  store i32 %arg2, i32* %arg2.addr, align 4, !tbaa !5
  %0 = load i32, i32* %type.addr, align 4, !tbaa !5
  %and = and i32 %0, 255
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call = call i32 @fputc(i32 %and, %struct._IO_FILE* %1) #4
  %2 = load i32, i32* %type.addr, align 4, !tbaa !5
  %shr = ashr i32 %2, 8
  %and1 = and i32 %shr, 255
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call2 = call i32 @fputc(i32 %and1, %struct._IO_FILE* %3) #4
  %4 = load i32, i32* %arg1.addr, align 4, !tbaa !5
  %and3 = and i32 %4, 255
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call4 = call i32 @fputc(i32 %and3, %struct._IO_FILE* %5) #4
  %6 = load i32, i32* %arg1.addr, align 4, !tbaa !5
  %shr5 = ashr i32 %6, 8
  %and6 = and i32 %shr5, 255
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call7 = call i32 @fputc(i32 %and6, %struct._IO_FILE* %7) #4
  %8 = load i32, i32* %arg2.addr, align 4, !tbaa !5
  %and8 = and i32 %8, 255
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call9 = call i32 @fputc(i32 %and8, %struct._IO_FILE* %9) #4
  %10 = load i32, i32* %arg2.addr, align 4, !tbaa !5
  %shr10 = ashr i32 %10, 8
  %and11 = and i32 %shr10, 255
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call12 = call i32 @fputc(i32 %and11, %struct._IO_FILE* %11) #4
  ret void
}

declare i32 @fputs(i8*, %struct._IO_FILE*) #0

declare i32 @gdev_prn_close(%struct.gx_device_s*) #0

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

declare i32 @fputc(i32, %struct._IO_FILE*) #0

declare i32 @select_medium(%struct.gx_device_printer_s*, i8**, i32) #0

declare i32 @gx_device_raster(%struct.gx_device_s*, i32) #0

declare i32 @gdev_prn_file_is_new(%struct.gx_device_printer_s*) #0

; Function Attrs: nounwind uwtable
define internal void @lj3100sw_output_repeated_data_bytes(%struct._IO_FILE* %prn_stream, i8* %buffer, i8** %pptr, i32 %val, i32 %num) #1 {
entry:
  %prn_stream.addr = alloca %struct._IO_FILE*, align 8
  %buffer.addr = alloca i8*, align 8
  %pptr.addr = alloca i8**, align 8
  %val.addr = alloca i32, align 4
  %num.addr = alloca i32, align 4
  %size = alloca i32, align 4
  store %struct._IO_FILE* %prn_stream, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  store i8* %buffer, i8** %buffer.addr, align 8, !tbaa !1
  store i8** %pptr, i8*** %pptr.addr, align 8, !tbaa !1
  store i32 %val, i32* %val.addr, align 4, !tbaa !5
  store i32 %num, i32* %num.addr, align 4, !tbaa !5
  %0 = bitcast i32* %size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  br label %while.cond

while.cond:                                       ; preds = %cond.end, %entry
  %1 = load i32, i32* %num.addr, align 4, !tbaa !5
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i8**, i8*** %pptr.addr, align 8, !tbaa !1
  %3 = load i8*, i8** %2, align 8, !tbaa !1
  %4 = load i8*, i8** %buffer.addr, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 4096
  %cmp = icmp uge i8* %3, %add.ptr
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %6 = load i8*, i8** %buffer.addr, align 8, !tbaa !1
  %7 = load i8**, i8*** %pptr.addr, align 8, !tbaa !1
  call void @lj3100sw_flush_buffer(%struct._IO_FILE* %5, i8* %6, i8** %7) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %8 = load i32, i32* %num.addr, align 4, !tbaa !5
  %conv = sext i32 %8 to i64
  %9 = load i8*, i8** %buffer.addr, align 8, !tbaa !1
  %add.ptr1 = getelementptr inbounds i8, i8* %9, i64 4096
  %10 = load i8**, i8*** %pptr.addr, align 8, !tbaa !1
  %11 = load i8*, i8** %10, align 8, !tbaa !1
  %sub.ptr.lhs.cast = ptrtoint i8* %add.ptr1 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %11 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp2 = icmp slt i64 %conv, %sub.ptr.sub
  br i1 %cmp2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %12 = load i32, i32* %num.addr, align 4, !tbaa !5
  %conv4 = sext i32 %12 to i64
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %13 = load i8*, i8** %buffer.addr, align 8, !tbaa !1
  %add.ptr5 = getelementptr inbounds i8, i8* %13, i64 4096
  %14 = load i8**, i8*** %pptr.addr, align 8, !tbaa !1
  %15 = load i8*, i8** %14, align 8, !tbaa !1
  %sub.ptr.lhs.cast6 = ptrtoint i8* %add.ptr5 to i64
  %sub.ptr.rhs.cast7 = ptrtoint i8* %15 to i64
  %sub.ptr.sub8 = sub i64 %sub.ptr.lhs.cast6, %sub.ptr.rhs.cast7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %conv4, %cond.true ], [ %sub.ptr.sub8, %cond.false ]
  %conv9 = trunc i64 %cond to i32
  store i32 %conv9, i32* %size, align 4, !tbaa !5
  %16 = load i8**, i8*** %pptr.addr, align 8, !tbaa !1
  %17 = load i8*, i8** %16, align 8, !tbaa !1
  %18 = load i32, i32* %val.addr, align 4, !tbaa !5
  %19 = load i32, i32* %size, align 4, !tbaa !5
  %conv10 = sext i32 %19 to i64
  %call = call i8* @memset(i8* %17, i32 %18, i64 %conv10) #5
  %20 = load i32, i32* %size, align 4, !tbaa !5
  %21 = load i8**, i8*** %pptr.addr, align 8, !tbaa !1
  %22 = load i8*, i8** %21, align 8, !tbaa !1
  %idx.ext = sext i32 %20 to i64
  %add.ptr11 = getelementptr inbounds i8, i8* %22, i64 %idx.ext
  store i8* %add.ptr11, i8** %21, align 8, !tbaa !1
  %23 = load i32, i32* %size, align 4, !tbaa !5
  %24 = load i32, i32* %num.addr, align 4, !tbaa !5
  %sub = sub nsw i32 %24, %23
  store i32 %sub, i32* %num.addr, align 4, !tbaa !5
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %25 = bitcast i32* %size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %25) #2
  ret void
}

declare i32 @gs_sprintf(i8*, i8*, ...) #0

; Function Attrs: nounwind uwtable
define internal void @lj3100sw_flush_buffer(%struct._IO_FILE* %prn_stream, i8* %buffer, i8** %pptr) #1 {
entry:
  %prn_stream.addr = alloca %struct._IO_FILE*, align 8
  %buffer.addr = alloca i8*, align 8
  %pptr.addr = alloca i8**, align 8
  %size = alloca i32, align 4
  store %struct._IO_FILE* %prn_stream, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  store i8* %buffer, i8** %buffer.addr, align 8, !tbaa !1
  store i8** %pptr, i8*** %pptr.addr, align 8, !tbaa !1
  %0 = bitcast i32* %size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load i8**, i8*** %pptr.addr, align 8, !tbaa !1
  %2 = load i8*, i8** %1, align 8, !tbaa !1
  %3 = load i8*, i8** %buffer.addr, align 8, !tbaa !1
  %sub.ptr.lhs.cast = ptrtoint i8* %2 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %3 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv = trunc i64 %sub.ptr.sub to i32
  store i32 %conv, i32* %size, align 4, !tbaa !5
  %4 = load i32, i32* %size, align 4, !tbaa !5
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %6 = load i32, i32* %size, align 4, !tbaa !5
  call void @lj3100sw_output_section_header(%struct._IO_FILE* %5, i32 0, i32 %6, i32 0) #4
  %7 = load i8*, i8** %buffer.addr, align 8, !tbaa !1
  %8 = load i32, i32* %size, align 4, !tbaa !5
  %conv1 = sext i32 %8 to i64
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call = call i64 @fwrite(i8* %7, i64 1, i64 %conv1, %struct._IO_FILE* %9) #4
  %10 = load i8*, i8** %buffer.addr, align 8, !tbaa !1
  %11 = load i8**, i8*** %pptr.addr, align 8, !tbaa !1
  store i8* %10, i8** %11, align 8, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %12 = bitcast i32* %size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %12) #2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @lj3100sw_output_newline(%struct._IO_FILE* %prn_stream, i8* %buffer, i8** %pptr) #1 {
entry:
  %prn_stream.addr = alloca %struct._IO_FILE*, align 8
  %buffer.addr = alloca i8*, align 8
  %pptr.addr = alloca i8**, align 8
  store %struct._IO_FILE* %prn_stream, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  store i8* %buffer, i8** %buffer.addr, align 8, !tbaa !1
  store i8** %pptr, i8*** %pptr.addr, align 8, !tbaa !1
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %1 = load i8*, i8** %buffer.addr, align 8, !tbaa !1
  %2 = load i8**, i8*** %pptr.addr, align 8, !tbaa !1
  call void @lj3100sw_output_data_byte(%struct._IO_FILE* %0, i8* %1, i8** %2, i32 0) #4
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %4 = load i8*, i8** %buffer.addr, align 8, !tbaa !1
  %5 = load i8**, i8*** %pptr.addr, align 8, !tbaa !1
  call void @lj3100sw_output_data_byte(%struct._IO_FILE* %3, i8* %4, i8** %5, i32 0) #4
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %7 = load i8*, i8** %buffer.addr, align 8, !tbaa !1
  %8 = load i8**, i8*** %pptr.addr, align 8, !tbaa !1
  call void @lj3100sw_output_data_byte(%struct._IO_FILE* %6, i8* %7, i8** %8, i32 128) #4
  ret void
}

declare i32 @gdev_prn_get_bits(%struct.gx_device_printer_s*, i32, i8*, i8**) #0

; Function Attrs: nounwind uwtable
define internal void @lj3100sw_output_empty_line(%struct._IO_FILE* %prn_stream, i8* %buffer, i8** %pptr, i32 %high_resolution) #1 {
entry:
  %prn_stream.addr = alloca %struct._IO_FILE*, align 8
  %buffer.addr = alloca i8*, align 8
  %pptr.addr = alloca i8**, align 8
  %high_resolution.addr = alloca i32, align 4
  store %struct._IO_FILE* %prn_stream, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  store i8* %buffer, i8** %buffer.addr, align 8, !tbaa !1
  store i8** %pptr, i8*** %pptr.addr, align 8, !tbaa !1
  store i32 %high_resolution, i32* %high_resolution.addr, align 4, !tbaa !5
  %0 = load i32, i32* %high_resolution.addr, align 4, !tbaa !5
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %2 = load i8*, i8** %buffer.addr, align 8, !tbaa !1
  %3 = load i8**, i8*** %pptr.addr, align 8, !tbaa !1
  call void @lj3100sw_output_data_byte(%struct._IO_FILE* %1, i8* %2, i8** %3, i32 128) #4
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %5 = load i8*, i8** %buffer.addr, align 8, !tbaa !1
  %6 = load i8**, i8*** %pptr.addr, align 8, !tbaa !1
  call void @lj3100sw_output_data_byte(%struct._IO_FILE* %4, i8* %5, i8** %6, i32 15) #4
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %8 = load i8*, i8** %buffer.addr, align 8, !tbaa !1
  %9 = load i8**, i8*** %pptr.addr, align 8, !tbaa !1
  call void @lj3100sw_output_data_byte(%struct._IO_FILE* %7, i8* %8, i8** %9, i32 120) #4
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %11 = load i8*, i8** %buffer.addr, align 8, !tbaa !1
  %12 = load i8**, i8*** %pptr.addr, align 8, !tbaa !1
  call void @lj3100sw_output_data_byte(%struct._IO_FILE* %10, i8* %11, i8** %12, i32 172) #4
  br label %if.end

if.else:                                          ; preds = %entry
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %14 = load i8*, i8** %buffer.addr, align 8, !tbaa !1
  %15 = load i8**, i8*** %pptr.addr, align 8, !tbaa !1
  call void @lj3100sw_output_data_byte(%struct._IO_FILE* %13, i8* %14, i8** %15, i32 128) #4
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %17 = load i8*, i8** %buffer.addr, align 8, !tbaa !1
  %18 = load i8**, i8*** %pptr.addr, align 8, !tbaa !1
  call void @lj3100sw_output_data_byte(%struct._IO_FILE* %16, i8* %17, i8** %18, i32 135) #4
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %20 = load i8*, i8** %buffer.addr, align 8, !tbaa !1
  %21 = load i8**, i8*** %pptr.addr, align 8, !tbaa !1
  call void @lj3100sw_output_data_byte(%struct._IO_FILE* %19, i8* %20, i8** %21, i32 13) #4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @lj3100sw_output_data_byte(%struct._IO_FILE* %prn_stream, i8* %buffer, i8** %pptr, i32 %val) #1 {
entry:
  %prn_stream.addr = alloca %struct._IO_FILE*, align 8
  %buffer.addr = alloca i8*, align 8
  %pptr.addr = alloca i8**, align 8
  %val.addr = alloca i32, align 4
  store %struct._IO_FILE* %prn_stream, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  store i8* %buffer, i8** %buffer.addr, align 8, !tbaa !1
  store i8** %pptr, i8*** %pptr.addr, align 8, !tbaa !1
  store i32 %val, i32* %val.addr, align 4, !tbaa !5
  %0 = load i8**, i8*** %pptr.addr, align 8, !tbaa !1
  %1 = load i8*, i8** %0, align 8, !tbaa !1
  %2 = load i8*, i8** %buffer.addr, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 4096
  %cmp = icmp uge i8* %1, %add.ptr
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %4 = load i8*, i8** %buffer.addr, align 8, !tbaa !1
  %5 = load i8**, i8*** %pptr.addr, align 8, !tbaa !1
  call void @lj3100sw_flush_buffer(%struct._IO_FILE* %3, i8* %4, i8** %5) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load i32, i32* %val.addr, align 4, !tbaa !5
  %conv = trunc i32 %6 to i8
  %7 = load i8**, i8*** %pptr.addr, align 8, !tbaa !1
  %8 = load i8*, i8** %7, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %8, i32 1
  store i8* %incdec.ptr, i8** %7, align 8, !tbaa !1
  store i8 %conv, i8* %8, align 1, !tbaa !32
  ret void
}

; Function Attrs: nounwind
declare i8* @memset(i8*, i32, i64) #3

declare i64 @fwrite(i8*, i64, i64, %struct._IO_FILE*) #0

attributes #0 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nobuiltin }
attributes #5 = { nobuiltin nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !3, i64 0}
!7 = !{!8, !8, i64 0}
!8 = !{!"float", !3, i64 0}
!9 = !{!10, !6, i64 836}
!10 = !{!"gx_device_printer_s", !6, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !6, i64 40, !2, i64 48, !11, i64 56, !6, i64 80, !6, i64 84, !6, i64 88, !13, i64 96, !16, i64 816, !6, i64 832, !6, i64 836, !6, i64 840, !6, i64 844, !6, i64 848, !6, i64 852, !3, i64 856, !3, i64 864, !6, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !12, i64 928, !12, i64 936, !6, i64 944, !6, i64 948, !6, i64 952, !6, i64 956, !6, i64 960, !12, i64 968, !12, i64 976, !17, i64 984, !6, i64 1052, !6, i64 1056, !18, i64 1064, !2, i64 1104, !3, i64 1112, !20, i64 1120, !21, i64 1144, !3, i64 1728, !22, i64 12968, !3, i64 13056, !6, i64 17152, !6, i64 17156, !6, i64 17160, !6, i64 17164, !6, i64 17168, !6, i64 17172, !2, i64 17176, !12, i64 17184, !2, i64 17192, !2, i64 17200, !2, i64 17208, !2, i64 17216, !2, i64 17224, !6, i64 17232, !2, i64 17240, !6, i64 17248, !6, i64 17252, !24, i64 17256, !6, i64 17288, !2, i64 17296, !21, i64 17304, !21, i64 17888}
!11 = !{!"rc_header_s", !12, i64 0, !2, i64 8, !2, i64 16}
!12 = !{!"long", !3, i64 0}
!13 = !{!"gx_device_color_info_s", !6, i64 0, !6, i64 4, !3, i64 8, !14, i64 12, !3, i64 14, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !15, i64 32, !3, i64 40, !3, i64 44, !3, i64 108, !3, i64 176, !2, i64 688, !3, i64 696, !12, i64 704, !6, i64 712}
!14 = !{!"short", !3, i64 0}
!15 = !{!"gx_device_anti_alias_info_s", !6, i64 0, !6, i64 4}
!16 = !{!"gx_device_cached_colors_s", !12, i64 0, !12, i64 8}
!17 = !{!"gx_stroked_gradient_recognizer_s", !6, i64 0, !3, i64 4, !3, i64 36}
!18 = !{!"gdev_space_params_s", !12, i64 0, !12, i64 8, !19, i64 16, !6, i64 32, !3, i64 36}
!19 = !{!"gx_band_params_s", !6, i64 0, !6, i64 4, !12, i64 8}
!20 = !{!"gx_page_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16}
!21 = !{!"gx_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176, !2, i64 184, !2, i64 192, !2, i64 200, !2, i64 208, !2, i64 216, !2, i64 224, !2, i64 232, !2, i64 240, !2, i64 248, !2, i64 256, !2, i64 264, !2, i64 272, !2, i64 280, !2, i64 288, !2, i64 296, !2, i64 304, !2, i64 312, !2, i64 320, !2, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !2, i64 376, !2, i64 384, !2, i64 392, !2, i64 400, !2, i64 408, !2, i64 416, !2, i64 424, !2, i64 432, !2, i64 440, !2, i64 448, !2, i64 456, !2, i64 464, !2, i64 472, !2, i64 480, !2, i64 488, !2, i64 496, !2, i64 504, !2, i64 512, !2, i64 520, !2, i64 528, !2, i64 536, !2, i64 544, !2, i64 552, !2, i64 560, !2, i64 568, !2, i64 576}
!22 = !{!"gx_printer_device_procs_s", !2, i64 0, !2, i64 8, !23, i64 16, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80}
!23 = !{!"gx_device_buf_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24}
!24 = !{!"bg_print_s", !2, i64 0, !2, i64 8, !2, i64 16, !6, i64 24, !6, i64 28}
!25 = !{!10, !6, i64 832}
!26 = !{!10, !2, i64 24}
!27 = !{!28, !2, i64 200}
!28 = !{!"gs_memory_s", !2, i64 0, !29, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!29 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!30 = !{!28, !2, i64 88}
!31 = !{!10, !6, i64 944}
!32 = !{!3, !3, i64 0}
!33 = !{!34, !6, i64 0}
!34 = !{!"", !6, i64 0, !6, i64 4}
!35 = !{!34, !6, i64 4}
!36 = !{!28, !2, i64 24}
!37 = !{!10, !2, i64 17176}
