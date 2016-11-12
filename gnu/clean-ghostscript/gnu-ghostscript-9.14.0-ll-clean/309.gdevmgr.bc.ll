; ModuleID = './gdevmgr.bc'
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
%struct.nclut = type { i16, i16, i16, i16 }
%struct.mgr_cursor_s = type { %struct.gx_device_mgr_s*, i32, i32, i8*, i32 }
%struct.gx_device_mgr_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [11240 x i8], %struct.gx_printer_device_procs_s, [4096 x i8], i32, i32, i32, i32, i32, i32, %struct._IO_FILE*, i64, i8*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s*, i32)*, %struct.gx_page_queue_s*, i32, %struct.gx_device_printer_s*, i32, i32, %struct.bg_print_s, i32, %struct.gx_saved_pages_list_s*, %struct.gx_device_procs_s, %struct.gx_device_procs_s, i32, [16 x i8], [16 x i8], [256 x i8], [256 x i8], [256 x %struct.nclut] }
%struct.b_header = type { [2 x i8], i8, i8, i8, i8, i8, i8 }

@mgr_procs = internal global %struct.gx_device_procs_s { i32 (%struct.gx_device_s*)* @gdev_prn_open, void (%struct.gx_device_s*, %struct.gs_matrix_s*)* null, i32 (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i32, i32)* @gdev_prn_bg_output_page, i32 (%struct.gx_device_s*)* @gdev_prn_close, i64 (%struct.gx_device_s*, i16*)* @gx_default_b_w_map_rgb_color, i32 (%struct.gx_device_s*, i64, i16*)* @gx_default_b_w_map_color_rgb, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* null, i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* null, i32 (%struct.gx_device_s*, i32, i8*, i8**)* null, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @gdev_prn_get_params, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @gdev_prn_put_params, i64 (%struct.gx_device_s*, i16*)* null, %struct.gx_xfont_procs_s* (%struct.gx_device_s*)* null, %struct.gx_device_s* (%struct.gx_device_s*)* null, i64 (%struct.gx_device_s*, i16, i16, i16, i16)* null, %struct.gx_device_s* (%struct.gx_device_s*)* @gx_page_device_get_page_device, i32 (%struct.gx_device_s*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)* null, i32 (%struct.gx_device_s*, i32, i32*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* null, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)* null, i32 (%struct.gx_device_s*, i64, i16*)* null, i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)* null, i32 (%struct.gx_device_s*, %struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_transparency_group_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gx_transparency_mask_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32)* null, i64 (%struct.gx_device_s*, i16*)* @gx_default_b_w_map_rgb_color, i32 (%struct.gx_device_s*, i64, i16*)* @gx_default_b_w_map_color_rgb, i32 (%struct.gx_device_s*, i64, %struct.gs_pattern1_instance_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* null, %struct.gs_devn_params_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i8*, i32)* @gdev_prn_dev_spec_op, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)* @gx_default_get_profile, void (%struct.gx_device_s*, i32)* @gx_default_set_graphics_type_tag, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_process_page_options_s*)* null }, align 8
@.str = private unnamed_addr constant [8 x i8] c"mgrmono\00", align 1
@st_device_printer = external constant %struct.gs_memory_struct_type_s, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"DeviceGray\00", align 1
@gs_mgrmono_device = global { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [11240 x i8], { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* }, [4096 x i8], i32, i32, i32, i32, i32, i32, %struct._IO_FILE*, i64, i8*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s*, i32)*, %struct.gx_page_queue_s*, i32, %struct.gx_device_printer_s*, i32, i32, %struct.bg_print_s, i32, %struct.gx_saved_pages_list_s*, %struct.gx_device_procs_s, %struct.gx_device_procs_s, i32, [16 x i8], [16 x i8], [256 x i8], [256 x i8], [256 x %struct.nclut] } { i32 21072, %struct.gx_device_procs_s* @mgr_procs, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), %struct.gs_memory_s* null, %struct.gs_memory_struct_type_s* @st_device_printer, i32 0, void (%struct.gx_device_s*)* null, %struct.rc_header_s zeroinitializer, i32 0, i32 0, i32 0, %struct.gx_device_color_info_s { i32 1, i32 1, i32 1, i16 1, i8 0, i32 1, i32 0, i32 2, i32 0, %struct.gx_device_anti_alias_info_s { i32 1, i32 1 }, i32 -1, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [64 x i64] zeroinitializer, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 -1, i64 0, i32 0 }, %struct.gx_device_cached_colors_s { i64 -1, i64 -1 }, i32 612, i32 792, i32 0, i32 0, i32 0, i32 0, [2 x float] [float 6.120000e+02, float 7.920000e+02], [4 x float] zeroinitializer, i32 0, [2 x float] [float 7.200000e+01, float 7.200000e+01], [2 x float] [float 7.200000e+01, float 7.200000e+01], [2 x float] zeroinitializer, [4 x float] zeroinitializer, i64 0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, %struct.gx_stroked_gradient_recognizer_s zeroinitializer, i32 0, i32 0, %struct.gdev_space_params_s { i64 10000000, i64 4000000, %struct.gx_band_params_s zeroinitializer, i32 0, i32 0 }, %struct.cmm_dev_profile_s* null, i32 0, %struct.gx_page_device_procs_s { i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_install, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_begin_page, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* @gx_default_end_page }, %struct.gx_device_procs_s zeroinitializer, [11240 x i8] zeroinitializer, { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* } { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)* @mgr_print_page, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_print_page_copies, %struct.gx_device_buf_procs_s { i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, %struct.gx_render_plane_s*, %struct.gs_memory_s*, %struct.gx_colors_usage_s*)* @gx_default_create_buf_device, i32 (%struct.gx_device_buf_space_s*, %struct.gx_device_s*, %struct.gx_render_plane_s*, i32, i32)* @gx_default_size_buf_device, i32 (%struct.gx_device_s*, i8*, i32, i8**, i32, i32, i32)* @gx_default_setup_buf_device, void (%struct.gx_device_s*)* @gx_default_destroy_buf_device }, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)* @gx_default_get_space_params, i32 (%struct.gdev_prn_start_render_params_s*)* @gx_default_start_render_thread, i32 (%struct.gx_device_printer_s*)* @gx_default_open_render_device, i32 (%struct.gx_device_printer_s*)* @gx_default_close_render_device, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_buffer_page }, [4096 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 -1, i32 0, %struct._IO_FILE* null, i64 0, i8* null, %struct.gs_memory_s* null, %struct.gs_memory_s* null, i32 (%struct.gx_device_s*, i32)* null, %struct.gx_page_queue_s* null, i32 0, %struct.gx_device_printer_s* null, i32 0, i32 0, %struct.bg_print_s zeroinitializer, i32 0, %struct.gx_saved_pages_list_s* null, %struct.gx_device_procs_s zeroinitializer, %struct.gx_device_procs_s zeroinitializer, i32 1, [16 x i8] zeroinitializer, [16 x i8] zeroinitializer, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer, [256 x %struct.nclut] zeroinitializer }, align 8
@mgrN_procs = internal global %struct.gx_device_procs_s { i32 (%struct.gx_device_s*)* @gdev_prn_open, void (%struct.gx_device_s*, %struct.gs_matrix_s*)* null, i32 (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i32, i32)* @gdev_prn_bg_output_page, i32 (%struct.gx_device_s*)* @gdev_prn_close, i64 (%struct.gx_device_s*, i16*)* @gx_default_gray_map_rgb_color, i32 (%struct.gx_device_s*, i64, i16*)* @gx_default_gray_map_color_rgb, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* null, i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* null, i32 (%struct.gx_device_s*, i32, i8*, i8**)* null, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @gdev_prn_get_params, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @gdev_prn_put_params, i64 (%struct.gx_device_s*, i16*)* null, %struct.gx_xfont_procs_s* (%struct.gx_device_s*)* null, %struct.gx_device_s* (%struct.gx_device_s*)* null, i64 (%struct.gx_device_s*, i16, i16, i16, i16)* null, %struct.gx_device_s* (%struct.gx_device_s*)* @gx_page_device_get_page_device, i32 (%struct.gx_device_s*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)* null, i32 (%struct.gx_device_s*, i32, i32*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* null, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)* null, i32 (%struct.gx_device_s*, i64, i16*)* null, i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)* null, i32 (%struct.gx_device_s*, %struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_transparency_group_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gx_transparency_mask_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32)* null, i64 (%struct.gx_device_s*, i16*)* null, i32 (%struct.gx_device_s*, i64, i16*)* null, i32 (%struct.gx_device_s*, i64, %struct.gs_pattern1_instance_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* null, %struct.gs_devn_params_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i8*, i32)* @gdev_prn_dev_spec_op, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)* @gx_default_get_profile, void (%struct.gx_device_s*, i32)* @gx_default_set_graphics_type_tag, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_process_page_options_s*)* null }, align 8
@.str.2 = private unnamed_addr constant [9 x i8] c"mgrgray2\00", align 1
@gs_mgrgray2_device = global { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [11240 x i8], { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* }, [4096 x i8], i32, i32, i32, i32, i32, i32, %struct._IO_FILE*, i64, i8*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s*, i32)*, %struct.gx_page_queue_s*, i32, %struct.gx_device_printer_s*, i32, i32, %struct.bg_print_s, i32, %struct.gx_saved_pages_list_s*, %struct.gx_device_procs_s, %struct.gx_device_procs_s, i32, [16 x i8], [16 x i8], [256 x i8], [256 x i8], [256 x %struct.nclut] } { i32 21072, %struct.gx_device_procs_s* @mgrN_procs, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), %struct.gs_memory_s* null, %struct.gs_memory_struct_type_s* @st_device_printer, i32 0, void (%struct.gx_device_s*)* null, %struct.rc_header_s zeroinitializer, i32 0, i32 0, i32 0, %struct.gx_device_color_info_s { i32 1, i32 1, i32 1, i16 8, i8 0, i32 255, i32 0, i32 4, i32 0, %struct.gx_device_anti_alias_info_s { i32 1, i32 1 }, i32 -1, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [64 x i64] zeroinitializer, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 -1, i64 0, i32 0 }, %struct.gx_device_cached_colors_s { i64 -1, i64 -1 }, i32 612, i32 792, i32 0, i32 0, i32 0, i32 0, [2 x float] [float 6.120000e+02, float 7.920000e+02], [4 x float] zeroinitializer, i32 0, [2 x float] [float 7.200000e+01, float 7.200000e+01], [2 x float] [float 7.200000e+01, float 7.200000e+01], [2 x float] zeroinitializer, [4 x float] zeroinitializer, i64 0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, %struct.gx_stroked_gradient_recognizer_s zeroinitializer, i32 0, i32 0, %struct.gdev_space_params_s { i64 10000000, i64 4000000, %struct.gx_band_params_s zeroinitializer, i32 0, i32 0 }, %struct.cmm_dev_profile_s* null, i32 0, %struct.gx_page_device_procs_s { i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_install, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_begin_page, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* @gx_default_end_page }, %struct.gx_device_procs_s zeroinitializer, [11240 x i8] zeroinitializer, { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* } { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)* @mgrN_print_page, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_print_page_copies, %struct.gx_device_buf_procs_s { i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, %struct.gx_render_plane_s*, %struct.gs_memory_s*, %struct.gx_colors_usage_s*)* @gx_default_create_buf_device, i32 (%struct.gx_device_buf_space_s*, %struct.gx_device_s*, %struct.gx_render_plane_s*, i32, i32)* @gx_default_size_buf_device, i32 (%struct.gx_device_s*, i8*, i32, i8**, i32, i32, i32)* @gx_default_setup_buf_device, void (%struct.gx_device_s*)* @gx_default_destroy_buf_device }, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)* @gx_default_get_space_params, i32 (%struct.gdev_prn_start_render_params_s*)* @gx_default_start_render_thread, i32 (%struct.gx_device_printer_s*)* @gx_default_open_render_device, i32 (%struct.gx_device_printer_s*)* @gx_default_close_render_device, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_buffer_page }, [4096 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 -1, i32 0, %struct._IO_FILE* null, i64 0, i8* null, %struct.gs_memory_s* null, %struct.gs_memory_s* null, i32 (%struct.gx_device_s*, i32)* null, %struct.gx_page_queue_s* null, i32 0, %struct.gx_device_printer_s* null, i32 0, i32 0, %struct.bg_print_s zeroinitializer, i32 0, %struct.gx_saved_pages_list_s* null, %struct.gx_device_procs_s zeroinitializer, %struct.gx_device_procs_s zeroinitializer, i32 2, [16 x i8] zeroinitializer, [16 x i8] zeroinitializer, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer, [256 x %struct.nclut] zeroinitializer }, align 8
@.str.3 = private unnamed_addr constant [9 x i8] c"mgrgray4\00", align 1
@gs_mgrgray4_device = global { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [11240 x i8], { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* }, [4096 x i8], i32, i32, i32, i32, i32, i32, %struct._IO_FILE*, i64, i8*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s*, i32)*, %struct.gx_page_queue_s*, i32, %struct.gx_device_printer_s*, i32, i32, %struct.bg_print_s, i32, %struct.gx_saved_pages_list_s*, %struct.gx_device_procs_s, %struct.gx_device_procs_s, i32, [16 x i8], [16 x i8], [256 x i8], [256 x i8], [256 x %struct.nclut] } { i32 21072, %struct.gx_device_procs_s* @mgrN_procs, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), %struct.gs_memory_s* null, %struct.gs_memory_struct_type_s* @st_device_printer, i32 0, void (%struct.gx_device_s*)* null, %struct.rc_header_s zeroinitializer, i32 0, i32 0, i32 0, %struct.gx_device_color_info_s { i32 1, i32 1, i32 1, i16 8, i8 0, i32 255, i32 0, i32 16, i32 0, %struct.gx_device_anti_alias_info_s { i32 1, i32 1 }, i32 -1, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [64 x i64] zeroinitializer, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 -1, i64 0, i32 0 }, %struct.gx_device_cached_colors_s { i64 -1, i64 -1 }, i32 612, i32 792, i32 0, i32 0, i32 0, i32 0, [2 x float] [float 6.120000e+02, float 7.920000e+02], [4 x float] zeroinitializer, i32 0, [2 x float] [float 7.200000e+01, float 7.200000e+01], [2 x float] [float 7.200000e+01, float 7.200000e+01], [2 x float] zeroinitializer, [4 x float] zeroinitializer, i64 0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, %struct.gx_stroked_gradient_recognizer_s zeroinitializer, i32 0, i32 0, %struct.gdev_space_params_s { i64 10000000, i64 4000000, %struct.gx_band_params_s zeroinitializer, i32 0, i32 0 }, %struct.cmm_dev_profile_s* null, i32 0, %struct.gx_page_device_procs_s { i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_install, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_begin_page, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* @gx_default_end_page }, %struct.gx_device_procs_s zeroinitializer, [11240 x i8] zeroinitializer, { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* } { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)* @mgrN_print_page, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_print_page_copies, %struct.gx_device_buf_procs_s { i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, %struct.gx_render_plane_s*, %struct.gs_memory_s*, %struct.gx_colors_usage_s*)* @gx_default_create_buf_device, i32 (%struct.gx_device_buf_space_s*, %struct.gx_device_s*, %struct.gx_render_plane_s*, i32, i32)* @gx_default_size_buf_device, i32 (%struct.gx_device_s*, i8*, i32, i8**, i32, i32, i32)* @gx_default_setup_buf_device, void (%struct.gx_device_s*)* @gx_default_destroy_buf_device }, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)* @gx_default_get_space_params, i32 (%struct.gdev_prn_start_render_params_s*)* @gx_default_start_render_thread, i32 (%struct.gx_device_printer_s*)* @gx_default_open_render_device, i32 (%struct.gx_device_printer_s*)* @gx_default_close_render_device, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_buffer_page }, [4096 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 -1, i32 0, %struct._IO_FILE* null, i64 0, i8* null, %struct.gs_memory_s* null, %struct.gs_memory_s* null, i32 (%struct.gx_device_s*, i32)* null, %struct.gx_page_queue_s* null, i32 0, %struct.gx_device_printer_s* null, i32 0, i32 0, %struct.bg_print_s zeroinitializer, i32 0, %struct.gx_saved_pages_list_s* null, %struct.gx_device_procs_s zeroinitializer, %struct.gx_device_procs_s zeroinitializer, i32 4, [16 x i8] zeroinitializer, [16 x i8] zeroinitializer, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer, [256 x %struct.nclut] zeroinitializer }, align 8
@.str.4 = private unnamed_addr constant [9 x i8] c"mgrgray8\00", align 1
@gs_mgrgray8_device = global { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [11240 x i8], { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* }, [4096 x i8], i32, i32, i32, i32, i32, i32, %struct._IO_FILE*, i64, i8*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s*, i32)*, %struct.gx_page_queue_s*, i32, %struct.gx_device_printer_s*, i32, i32, %struct.bg_print_s, i32, %struct.gx_saved_pages_list_s*, %struct.gx_device_procs_s, %struct.gx_device_procs_s, i32, [16 x i8], [16 x i8], [256 x i8], [256 x i8], [256 x %struct.nclut] } { i32 21072, %struct.gx_device_procs_s* @mgrN_procs, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), %struct.gs_memory_s* null, %struct.gs_memory_struct_type_s* @st_device_printer, i32 0, void (%struct.gx_device_s*)* null, %struct.rc_header_s zeroinitializer, i32 0, i32 0, i32 0, %struct.gx_device_color_info_s { i32 1, i32 1, i32 1, i16 8, i8 0, i32 255, i32 0, i32 0, i32 0, %struct.gx_device_anti_alias_info_s { i32 1, i32 1 }, i32 -1, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [64 x i64] zeroinitializer, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 -1, i64 0, i32 0 }, %struct.gx_device_cached_colors_s { i64 -1, i64 -1 }, i32 612, i32 792, i32 0, i32 0, i32 0, i32 0, [2 x float] [float 6.120000e+02, float 7.920000e+02], [4 x float] zeroinitializer, i32 0, [2 x float] [float 7.200000e+01, float 7.200000e+01], [2 x float] [float 7.200000e+01, float 7.200000e+01], [2 x float] zeroinitializer, [4 x float] zeroinitializer, i64 0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, %struct.gx_stroked_gradient_recognizer_s zeroinitializer, i32 0, i32 0, %struct.gdev_space_params_s { i64 10000000, i64 4000000, %struct.gx_band_params_s zeroinitializer, i32 0, i32 0 }, %struct.cmm_dev_profile_s* null, i32 0, %struct.gx_page_device_procs_s { i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_install, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_begin_page, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* @gx_default_end_page }, %struct.gx_device_procs_s zeroinitializer, [11240 x i8] zeroinitializer, { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* } { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)* @mgrN_print_page, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_print_page_copies, %struct.gx_device_buf_procs_s { i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, %struct.gx_render_plane_s*, %struct.gs_memory_s*, %struct.gx_colors_usage_s*)* @gx_default_create_buf_device, i32 (%struct.gx_device_buf_space_s*, %struct.gx_device_s*, %struct.gx_render_plane_s*, i32, i32)* @gx_default_size_buf_device, i32 (%struct.gx_device_s*, i8*, i32, i8**, i32, i32, i32)* @gx_default_setup_buf_device, void (%struct.gx_device_s*)* @gx_default_destroy_buf_device }, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)* @gx_default_get_space_params, i32 (%struct.gdev_prn_start_render_params_s*)* @gx_default_start_render_thread, i32 (%struct.gx_device_printer_s*)* @gx_default_open_render_device, i32 (%struct.gx_device_printer_s*)* @gx_default_close_render_device, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_buffer_page }, [4096 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 -1, i32 0, %struct._IO_FILE* null, i64 0, i8* null, %struct.gs_memory_s* null, %struct.gs_memory_s* null, i32 (%struct.gx_device_s*, i32)* null, %struct.gx_page_queue_s* null, i32 0, %struct.gx_device_printer_s* null, i32 0, i32 0, %struct.bg_print_s zeroinitializer, i32 0, %struct.gx_saved_pages_list_s* null, %struct.gx_device_procs_s zeroinitializer, %struct.gx_device_procs_s zeroinitializer, i32 8, [16 x i8] zeroinitializer, [16 x i8] zeroinitializer, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer, [256 x %struct.nclut] zeroinitializer }, align 8
@cmgr4_procs = internal global %struct.gx_device_procs_s { i32 (%struct.gx_device_s*)* @gdev_prn_open, void (%struct.gx_device_s*, %struct.gs_matrix_s*)* null, i32 (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i32, i32)* @gdev_prn_bg_output_page, i32 (%struct.gx_device_s*)* @gdev_prn_close, i64 (%struct.gx_device_s*, i16*)* @pc_4bit_map_rgb_color, i32 (%struct.gx_device_s*, i64, i16*)* @pc_4bit_map_color_rgb, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* null, i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* null, i32 (%struct.gx_device_s*, i32, i8*, i8**)* null, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @gdev_prn_get_params, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @gdev_prn_put_params, i64 (%struct.gx_device_s*, i16*)* null, %struct.gx_xfont_procs_s* (%struct.gx_device_s*)* null, %struct.gx_device_s* (%struct.gx_device_s*)* null, i64 (%struct.gx_device_s*, i16, i16, i16, i16)* null, %struct.gx_device_s* (%struct.gx_device_s*)* @gx_page_device_get_page_device, i32 (%struct.gx_device_s*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)* null, i32 (%struct.gx_device_s*, i32, i32*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* null, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)* null, i32 (%struct.gx_device_s*, i64, i16*)* null, i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)* null, i32 (%struct.gx_device_s*, %struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_transparency_group_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gx_transparency_mask_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32)* null, i64 (%struct.gx_device_s*, i16*)* null, i32 (%struct.gx_device_s*, i64, i16*)* null, i32 (%struct.gx_device_s*, i64, %struct.gs_pattern1_instance_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* null, %struct.gs_devn_params_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i8*, i32)* @gdev_prn_dev_spec_op, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)* @gx_default_get_profile, void (%struct.gx_device_s*, i32)* @gx_default_set_graphics_type_tag, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_process_page_options_s*)* null }, align 8
@.str.5 = private unnamed_addr constant [5 x i8] c"mgr4\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"DeviceRGB\00", align 1
@gs_mgr4_device = global { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [11240 x i8], { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* }, [4096 x i8], i32, i32, i32, i32, i32, i32, %struct._IO_FILE*, i64, i8*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s*, i32)*, %struct.gx_page_queue_s*, i32, %struct.gx_device_printer_s*, i32, i32, %struct.bg_print_s, i32, %struct.gx_saved_pages_list_s*, %struct.gx_device_procs_s, %struct.gx_device_procs_s, i32, [16 x i8], [16 x i8], [256 x i8], [256 x i8], [256 x %struct.nclut] } { i32 21072, %struct.gx_device_procs_s* @cmgr4_procs, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), %struct.gs_memory_s* null, %struct.gs_memory_struct_type_s* @st_device_printer, i32 0, void (%struct.gx_device_s*)* null, %struct.rc_header_s zeroinitializer, i32 0, i32 0, i32 0, %struct.gx_device_color_info_s { i32 3, i32 3, i32 1, i16 8, i8 -1, i32 1, i32 1, i32 2, i32 2, %struct.gx_device_anti_alias_info_s { i32 1, i32 1 }, i32 -1, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [64 x i64] zeroinitializer, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i32 0, i32 0), i32 -1, i64 0, i32 0 }, %struct.gx_device_cached_colors_s { i64 -1, i64 -1 }, i32 612, i32 792, i32 0, i32 0, i32 0, i32 0, [2 x float] [float 6.120000e+02, float 7.920000e+02], [4 x float] zeroinitializer, i32 0, [2 x float] [float 7.200000e+01, float 7.200000e+01], [2 x float] [float 7.200000e+01, float 7.200000e+01], [2 x float] zeroinitializer, [4 x float] zeroinitializer, i64 0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, %struct.gx_stroked_gradient_recognizer_s zeroinitializer, i32 0, i32 0, %struct.gdev_space_params_s { i64 10000000, i64 4000000, %struct.gx_band_params_s zeroinitializer, i32 0, i32 0 }, %struct.cmm_dev_profile_s* null, i32 0, %struct.gx_page_device_procs_s { i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_install, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_begin_page, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* @gx_default_end_page }, %struct.gx_device_procs_s zeroinitializer, [11240 x i8] zeroinitializer, { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* } { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)* @cmgrN_print_page, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_print_page_copies, %struct.gx_device_buf_procs_s { i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, %struct.gx_render_plane_s*, %struct.gs_memory_s*, %struct.gx_colors_usage_s*)* @gx_default_create_buf_device, i32 (%struct.gx_device_buf_space_s*, %struct.gx_device_s*, %struct.gx_render_plane_s*, i32, i32)* @gx_default_size_buf_device, i32 (%struct.gx_device_s*, i8*, i32, i8**, i32, i32, i32)* @gx_default_setup_buf_device, void (%struct.gx_device_s*)* @gx_default_destroy_buf_device }, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)* @gx_default_get_space_params, i32 (%struct.gdev_prn_start_render_params_s*)* @gx_default_start_render_thread, i32 (%struct.gx_device_printer_s*)* @gx_default_open_render_device, i32 (%struct.gx_device_printer_s*)* @gx_default_close_render_device, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_buffer_page }, [4096 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 -1, i32 0, %struct._IO_FILE* null, i64 0, i8* null, %struct.gs_memory_s* null, %struct.gs_memory_s* null, i32 (%struct.gx_device_s*, i32)* null, %struct.gx_page_queue_s* null, i32 0, %struct.gx_device_printer_s* null, i32 0, i32 0, %struct.bg_print_s zeroinitializer, i32 0, %struct.gx_saved_pages_list_s* null, %struct.gx_device_procs_s zeroinitializer, %struct.gx_device_procs_s zeroinitializer, i32 4, [16 x i8] zeroinitializer, [16 x i8] zeroinitializer, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer, [256 x %struct.nclut] zeroinitializer }, align 8
@cmgr8_procs = internal global %struct.gx_device_procs_s { i32 (%struct.gx_device_s*)* @gdev_prn_open, void (%struct.gx_device_s*, %struct.gs_matrix_s*)* null, i32 (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i32, i32)* @gdev_prn_bg_output_page, i32 (%struct.gx_device_s*)* @gdev_prn_close, i64 (%struct.gx_device_s*, i16*)* @mgr_8bit_map_rgb_color, i32 (%struct.gx_device_s*, i64, i16*)* @mgr_8bit_map_color_rgb, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* null, i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* null, i32 (%struct.gx_device_s*, i32, i8*, i8**)* null, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @gdev_prn_get_params, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @gdev_prn_put_params, i64 (%struct.gx_device_s*, i16*)* null, %struct.gx_xfont_procs_s* (%struct.gx_device_s*)* null, %struct.gx_device_s* (%struct.gx_device_s*)* null, i64 (%struct.gx_device_s*, i16, i16, i16, i16)* null, %struct.gx_device_s* (%struct.gx_device_s*)* @gx_page_device_get_page_device, i32 (%struct.gx_device_s*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)* null, i32 (%struct.gx_device_s*, i32, i32*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* null, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)* null, i32 (%struct.gx_device_s*, i64, i16*)* null, i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)* null, i32 (%struct.gx_device_s*, %struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_transparency_group_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gx_transparency_mask_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32)* null, i64 (%struct.gx_device_s*, i16*)* null, i32 (%struct.gx_device_s*, i64, i16*)* null, i32 (%struct.gx_device_s*, i64, %struct.gs_pattern1_instance_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* null, %struct.gs_devn_params_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i8*, i32)* @gdev_prn_dev_spec_op, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)* @gx_default_get_profile, void (%struct.gx_device_s*, i32)* @gx_default_set_graphics_type_tag, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_process_page_options_s*)* null }, align 8
@.str.7 = private unnamed_addr constant [5 x i8] c"mgr8\00", align 1
@gs_mgr8_device = global { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [11240 x i8], { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* }, [4096 x i8], i32, i32, i32, i32, i32, i32, %struct._IO_FILE*, i64, i8*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s*, i32)*, %struct.gx_page_queue_s*, i32, %struct.gx_device_printer_s*, i32, i32, %struct.bg_print_s, i32, %struct.gx_saved_pages_list_s*, %struct.gx_device_procs_s, %struct.gx_device_procs_s, i32, [16 x i8], [16 x i8], [256 x i8], [256 x i8], [256 x %struct.nclut] } { i32 21072, %struct.gx_device_procs_s* @cmgr8_procs, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), %struct.gs_memory_s* null, %struct.gs_memory_struct_type_s* @st_device_printer, i32 0, void (%struct.gx_device_s*)* null, %struct.rc_header_s zeroinitializer, i32 0, i32 0, i32 0, %struct.gx_device_color_info_s { i32 3, i32 3, i32 1, i16 8, i8 -1, i32 255, i32 255, i32 6, i32 5, %struct.gx_device_anti_alias_info_s { i32 1, i32 1 }, i32 -1, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [64 x i64] zeroinitializer, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i32 0, i32 0), i32 -1, i64 0, i32 0 }, %struct.gx_device_cached_colors_s { i64 -1, i64 -1 }, i32 612, i32 792, i32 0, i32 0, i32 0, i32 0, [2 x float] [float 6.120000e+02, float 7.920000e+02], [4 x float] zeroinitializer, i32 0, [2 x float] [float 7.200000e+01, float 7.200000e+01], [2 x float] [float 7.200000e+01, float 7.200000e+01], [2 x float] zeroinitializer, [4 x float] zeroinitializer, i64 0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, %struct.gx_stroked_gradient_recognizer_s zeroinitializer, i32 0, i32 0, %struct.gdev_space_params_s { i64 10000000, i64 4000000, %struct.gx_band_params_s zeroinitializer, i32 0, i32 0 }, %struct.cmm_dev_profile_s* null, i32 0, %struct.gx_page_device_procs_s { i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_install, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_begin_page, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* @gx_default_end_page }, %struct.gx_device_procs_s zeroinitializer, [11240 x i8] zeroinitializer, { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* } { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)* @cmgrN_print_page, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_print_page_copies, %struct.gx_device_buf_procs_s { i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, %struct.gx_render_plane_s*, %struct.gs_memory_s*, %struct.gx_colors_usage_s*)* @gx_default_create_buf_device, i32 (%struct.gx_device_buf_space_s*, %struct.gx_device_s*, %struct.gx_render_plane_s*, i32, i32)* @gx_default_size_buf_device, i32 (%struct.gx_device_s*, i8*, i32, i8**, i32, i32, i32)* @gx_default_setup_buf_device, void (%struct.gx_device_s*)* @gx_default_destroy_buf_device }, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)* @gx_default_get_space_params, i32 (%struct.gdev_prn_start_render_params_s*)* @gx_default_start_render_thread, i32 (%struct.gx_device_printer_s*)* @gx_default_open_render_device, i32 (%struct.gx_device_printer_s*)* @gx_default_close_render_device, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_buffer_page }, [4096 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 -1, i32 0, %struct._IO_FILE* null, i64 0, i8* null, %struct.gs_memory_s* null, %struct.gs_memory_s* null, i32 (%struct.gx_device_s*, i32)* null, %struct.gx_page_queue_s* null, i32 0, %struct.gx_device_printer_s* null, i32 0, i32 0, %struct.bg_print_s zeroinitializer, i32 0, %struct.gx_saved_pages_list_s* null, %struct.gx_device_procs_s zeroinitializer, %struct.gx_device_procs_s zeroinitializer, i32 8, [16 x i8] zeroinitializer, [16 x i8] zeroinitializer, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer, [256 x %struct.nclut] zeroinitializer }, align 8
@mgr_8bit_map_color_rgb.ramp = internal constant [8 x i16] [i16 0, i16 10922, i16 21845, i16 32767, i16 -21846, i16 -10926, i16 -1, i16 -1], align 16
@.str.8 = private unnamed_addr constant [15 x i8] c"mgr_begin_page\00", align 1
@.str.9 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"mgr_next_row(done)\00", align 1
@mgrlut = internal global [6 x [3 x [16 x i8]]] [[3 x [16 x i8]] [[16 x i8] c"\0F\00\0F\00\0F\00\0F\00\0F\00\0F\00\0F\00\0F\00", [16 x i8] c"\0F\00\0F\00\0F\00\0F\00\0F\00\0F\00\0F\00\0F\00", [16 x i8] c"\0F\00\0F\00\0F\00\0F\00\0F\00\0F\00\0F\00\0F\00"], [3 x [16 x i8]] [[16 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F", [16 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F", [16 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F"], [3 x [16 x i8]] [[16 x i8] c"\01\00\02\08\04\03\0D\0B\07\06\0A\0C\0E\05\09\0F", [16 x i8] c"\01\00\02\08\04\03\0D\0B\07\06\0A\0C\0E\05\09\0F", [16 x i8] c"\01\00\02\08\04\03\0D\0B\07\06\0A\0C\0E\05\09\0F"], [3 x [16 x i8]] [[16 x i8] c"\00\00\00\00\08\08\08\0C\08\00\00\00\0F\0F\0F\0F", [16 x i8] c"\00\00\08\08\00\00\08\0C\08\00\0F\0F\00\00\0F\0F", [16 x i8] c"\00\08\00\08\00\08\00\0C\08\0F\00\0F\00\0F\00\0F"], [3 x [16 x i8]] [[16 x i8] c"\01\07\06\0F\0E\03\0D\0B\07\0D\0D\0F\0F\05\09\0F", [16 x i8] c"\01\07\0D\0C\05\03\0D\0B\07\0E\0F\0F\0E\05\09\0F", [16 x i8] c"\01\0E\06\08\05\03\0D\0B\07\0F\0E\0C\0D\05\09\0F"], [3 x [16 x i8]] zeroinitializer], align 16
@.str.11 = private unnamed_addr constant [16 x i8] c"mgrN_print_page\00", align 1
@.str.12 = private unnamed_addr constant [22 x i8] c"mgrN_print_page(done)\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"cmgrN_print_page\00", align 1
@.str.14 = private unnamed_addr constant [23 x i8] c"cmgrN_print_page(done)\00", align 1

declare i32 @gx_default_install(%struct.gx_device_s*, %struct.gs_state_s*) #0

declare i32 @gx_default_begin_page(%struct.gx_device_s*, %struct.gs_state_s*) #0

declare i32 @gx_default_end_page(%struct.gx_device_s*, i32, %struct.gs_state_s*) #0

; Function Attrs: nounwind uwtable
define internal i32 @mgr_print_page(%struct.gx_device_printer_s* %pdev, %struct._IO_FILE* %pstream) #1 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_printer_s*, align 8
  %pstream.addr = alloca %struct._IO_FILE*, align 8
  %cur = alloca %struct.mgr_cursor_s, align 8
  %mgr_wide = alloca i32, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_printer_s* %pdev, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  store %struct._IO_FILE* %pstream, %struct._IO_FILE** %pstream.addr, align 8, !tbaa !1
  %0 = bitcast %struct.mgr_cursor_s* %cur to i8*
  call void @llvm.lifetime.start(i64 32, i8* %0) #2
  %1 = bitcast i32* %mgr_wide to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  %3 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %4 = bitcast %struct.gx_device_printer_s* %3 to %struct.gx_device_mgr_s*
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %pstream.addr, align 8, !tbaa !1
  %call = call i32 @mgr_begin_page(%struct.gx_device_mgr_s* %4, %struct._IO_FILE* %5, %struct.mgr_cursor_s* %cur) #4
  store i32 %call, i32* %code, align 4, !tbaa !5
  %6 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %6, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %9 = bitcast %struct.gx_device_printer_s* %8 to %struct.gx_device_mgr_s*
  %width = getelementptr inbounds %struct.gx_device_mgr_s, %struct.gx_device_mgr_s* %9, i32 0, i32 13
  %10 = load i32, i32* %width, align 4, !tbaa !7
  store i32 %10, i32* %mgr_wide, align 4, !tbaa !5
  %11 = load i32, i32* %mgr_wide, align 4, !tbaa !5
  %and = and i32 %11, 7
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then.1, label %if.end.3

if.then.1:                                        ; preds = %if.end
  %12 = load i32, i32* %mgr_wide, align 4, !tbaa !5
  %and2 = and i32 %12, 7
  %sub = sub nsw i32 8, %and2
  %13 = load i32, i32* %mgr_wide, align 4, !tbaa !5
  %add = add nsw i32 %13, %sub
  store i32 %add, i32* %mgr_wide, align 4, !tbaa !5
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.1, %if.end
  br label %while.cond

while.cond:                                       ; preds = %if.end.12, %if.end.3
  %call4 = call i32 @mgr_next_row(%struct.mgr_cursor_s* %cur) #4
  store i32 %call4, i32* %code, align 4, !tbaa !5
  %tobool5 = icmp ne i32 %call4, 0
  %lnot = xor i1 %tobool5, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %data = getelementptr inbounds %struct.mgr_cursor_s, %struct.mgr_cursor_s* %cur, i32 0, i32 3
  %14 = load i8*, i8** %data, align 8, !tbaa !23
  %15 = load i32, i32* %mgr_wide, align 4, !tbaa !5
  %div = sdiv i32 %15, 8
  %conv = sext i32 %div to i64
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %pstream.addr, align 8, !tbaa !1
  %call6 = call i64 @fwrite(i8* %14, i64 1, i64 %conv, %struct._IO_FILE* %16) #4
  %17 = load i32, i32* %mgr_wide, align 4, !tbaa !5
  %div7 = sdiv i32 %17, 8
  %conv8 = sext i32 %div7 to i64
  %cmp9 = icmp ult i64 %call6, %conv8
  br i1 %cmp9, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %while.body
  store i32 -12, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.12:                                        ; preds = %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %18 = load i32, i32* %code, align 4, !tbaa !5
  %cmp13 = icmp slt i32 %18, 0
  br i1 %cmp13, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.end
  %19 = load i32, i32* %code, align 4, !tbaa !5
  br label %cond.end

cond.false:                                       ; preds = %while.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %19, %cond.true ], [ 0, %cond.false ]
  store i32 %cond, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %if.then.11, %if.then
  %20 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %20) #2
  %21 = bitcast i32* %mgr_wide to i8*
  call void @llvm.lifetime.end(i64 4, i8* %21) #2
  %22 = bitcast %struct.mgr_cursor_s* %cur to i8*
  call void @llvm.lifetime.end(i64 32, i8* %22) #2
  %23 = load i32, i32* %retval
  ret i32 %23
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
define internal i32 @mgrN_print_page(%struct.gx_device_printer_s* %pdev, %struct._IO_FILE* %pstream) #1 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_printer_s*, align 8
  %pstream.addr = alloca %struct._IO_FILE*, align 8
  %cur = alloca %struct.mgr_cursor_s, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %mgr_wide = alloca i32, align 4
  %mgr_line_size = alloca i32, align 4
  %bp = alloca i8*, align 8
  %data = alloca i8*, align 8
  %dp = alloca i8*, align 8
  %mgr = alloca %struct.gx_device_mgr_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_printer_s* %pdev, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  store %struct._IO_FILE* %pstream, %struct._IO_FILE** %pstream.addr, align 8, !tbaa !1
  %0 = bitcast %struct.mgr_cursor_s* %cur to i8*
  call void @llvm.lifetime.start(i64 32, i8* %0) #2
  %1 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  store i32 0, i32* %i, align 4, !tbaa !5
  %2 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  %3 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = bitcast i32* %mgr_wide to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = bitcast i32* %mgr_line_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  %6 = bitcast i8** %bp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #2
  %7 = bitcast i8** %data to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #2
  store i8* null, i8** %data, align 8, !tbaa !1
  %8 = bitcast i8** %dp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #2
  %9 = bitcast %struct.gx_device_mgr_s** %mgr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #2
  %10 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %11 = bitcast %struct.gx_device_printer_s* %10 to %struct.gx_device_mgr_s*
  store %struct.gx_device_mgr_s* %11, %struct.gx_device_mgr_s** %mgr, align 8, !tbaa !1
  %12 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #2
  %13 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %14 = bitcast %struct.gx_device_printer_s* %13 to %struct.gx_device_mgr_s*
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %pstream.addr, align 8, !tbaa !1
  %call = call i32 @mgr_begin_page(%struct.gx_device_mgr_s* %14, %struct._IO_FILE* %15, %struct.mgr_cursor_s* %cur) #4
  store i32 %call, i32* %code, align 4, !tbaa !5
  %16 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %16, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %17 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %17, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %18 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %19 = bitcast %struct.gx_device_printer_s* %18 to %struct.gx_device_mgr_s*
  %width = getelementptr inbounds %struct.gx_device_mgr_s, %struct.gx_device_mgr_s* %19, i32 0, i32 13
  %20 = load i32, i32* %width, align 4, !tbaa !7
  store i32 %20, i32* %mgr_wide, align 4, !tbaa !5
  %21 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %22 = bitcast %struct.gx_device_printer_s* %21 to %struct.gx_device_mgr_s*
  %mgr_depth = getelementptr inbounds %struct.gx_device_mgr_s, %struct.gx_device_mgr_s* %22, i32 0, i32 68
  %23 = load i32, i32* %mgr_depth, align 4, !tbaa !25
  %cmp1 = icmp eq i32 %23, 2
  br i1 %cmp1, label %land.lhs.true, label %if.end.4

land.lhs.true:                                    ; preds = %if.end
  %24 = load i32, i32* %mgr_wide, align 4, !tbaa !5
  %and = and i32 %24, 3
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then.2, label %if.end.4

if.then.2:                                        ; preds = %land.lhs.true
  %25 = load i32, i32* %mgr_wide, align 4, !tbaa !5
  %and3 = and i32 %25, 3
  %sub = sub nsw i32 4, %and3
  %26 = load i32, i32* %mgr_wide, align 4, !tbaa !5
  %add = add nsw i32 %26, %sub
  store i32 %add, i32* %mgr_wide, align 4, !tbaa !5
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.2, %land.lhs.true, %if.end
  %27 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %28 = bitcast %struct.gx_device_printer_s* %27 to %struct.gx_device_mgr_s*
  %mgr_depth5 = getelementptr inbounds %struct.gx_device_mgr_s, %struct.gx_device_mgr_s* %28, i32 0, i32 68
  %29 = load i32, i32* %mgr_depth5, align 4, !tbaa !25
  %cmp6 = icmp eq i32 %29, 4
  br i1 %cmp6, label %land.lhs.true.7, label %if.end.11

land.lhs.true.7:                                  ; preds = %if.end.4
  %30 = load i32, i32* %mgr_wide, align 4, !tbaa !5
  %and8 = and i32 %30, 1
  %tobool9 = icmp ne i32 %and8, 0
  br i1 %tobool9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %land.lhs.true.7
  %31 = load i32, i32* %mgr_wide, align 4, !tbaa !5
  %inc = add nsw i32 %31, 1
  store i32 %inc, i32* %mgr_wide, align 4, !tbaa !5
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.10, %land.lhs.true.7, %if.end.4
  %32 = load i32, i32* %mgr_wide, align 4, !tbaa !5
  %33 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %34 = bitcast %struct.gx_device_printer_s* %33 to %struct.gx_device_mgr_s*
  %mgr_depth12 = getelementptr inbounds %struct.gx_device_mgr_s, %struct.gx_device_mgr_s* %34, i32 0, i32 68
  %35 = load i32, i32* %mgr_depth12, align 4, !tbaa !25
  %div = sdiv i32 8, %35
  %div13 = sdiv i32 %32, %div
  store i32 %div13, i32* %mgr_line_size, align 4, !tbaa !5
  %36 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %37 = bitcast %struct.gx_device_printer_s* %36 to %struct.gx_device_mgr_s*
  %mgr_depth14 = getelementptr inbounds %struct.gx_device_mgr_s, %struct.gx_device_mgr_s* %37, i32 0, i32 68
  %38 = load i32, i32* %mgr_depth14, align 4, !tbaa !25
  %cmp15 = icmp eq i32 %38, 4
  br i1 %cmp15, label %if.then.16, label %if.end.26

if.then.16:                                       ; preds = %if.end.11
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.16
  %39 = load i32, i32* %i, align 4, !tbaa !5
  %cmp17 = icmp slt i32 %39, 16
  br i1 %cmp17, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %40 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %40 to i64
  %arrayidx = getelementptr inbounds [16 x i8], [16 x i8]* getelementptr inbounds ([6 x [3 x [16 x i8]]], [6 x [3 x [16 x i8]]]* @mgrlut, i32 0, i64 2, i64 0), i32 0, i64 %idxprom
  %41 = load i8, i8* %arrayidx, align 1, !tbaa !26
  %42 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom18 = sext i32 %42 to i64
  %43 = load %struct.gx_device_mgr_s*, %struct.gx_device_mgr_s** %mgr, align 8, !tbaa !1
  %bgreytable = getelementptr inbounds %struct.gx_device_mgr_s, %struct.gx_device_mgr_s* %43, i32 0, i32 69
  %arrayidx19 = getelementptr inbounds [16 x i8], [16 x i8]* %bgreytable, i32 0, i64 %idxprom18
  store i8 %41, i8* %arrayidx19, align 1, !tbaa !26
  %44 = load i32, i32* %i, align 4, !tbaa !5
  %conv = trunc i32 %44 to i8
  %45 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom20 = sext i32 %45 to i64
  %46 = load %struct.gx_device_mgr_s*, %struct.gx_device_mgr_s** %mgr, align 8, !tbaa !1
  %bgreytable21 = getelementptr inbounds %struct.gx_device_mgr_s, %struct.gx_device_mgr_s* %46, i32 0, i32 69
  %arrayidx22 = getelementptr inbounds [16 x i8], [16 x i8]* %bgreytable21, i32 0, i64 %idxprom20
  %47 = load i8, i8* %arrayidx22, align 1, !tbaa !26
  %idxprom23 = zext i8 %47 to i64
  %48 = load %struct.gx_device_mgr_s*, %struct.gx_device_mgr_s** %mgr, align 8, !tbaa !1
  %bgreybacktable = getelementptr inbounds %struct.gx_device_mgr_s, %struct.gx_device_mgr_s* %48, i32 0, i32 70
  %arrayidx24 = getelementptr inbounds [16 x i8], [16 x i8]* %bgreybacktable, i32 0, i64 %idxprom23
  store i8 %conv, i8* %arrayidx24, align 1, !tbaa !26
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %49 = load i32, i32* %i, align 4, !tbaa !5
  %inc25 = add nsw i32 %49, 1
  store i32 %inc25, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.26

if.end.26:                                        ; preds = %for.end, %if.end.11
  %50 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %51 = bitcast %struct.gx_device_printer_s* %50 to %struct.gx_device_mgr_s*
  %mgr_depth27 = getelementptr inbounds %struct.gx_device_mgr_s, %struct.gx_device_mgr_s* %51, i32 0, i32 68
  %52 = load i32, i32* %mgr_depth27, align 4, !tbaa !25
  %cmp28 = icmp eq i32 %52, 8
  br i1 %cmp28, label %if.then.30, label %if.end.82

if.then.30:                                       ; preds = %if.end.26
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.31

for.cond.31:                                      ; preds = %for.inc.47, %if.then.30
  %53 = load i32, i32* %i, align 4, !tbaa !5
  %cmp32 = icmp slt i32 %53, 16
  br i1 %cmp32, label %for.body.34, label %for.end.49

for.body.34:                                      ; preds = %for.cond.31
  %54 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom35 = sext i32 %54 to i64
  %arrayidx36 = getelementptr inbounds [16 x i8], [16 x i8]* getelementptr inbounds ([6 x [3 x [16 x i8]]], [6 x [3 x [16 x i8]]]* @mgrlut, i32 0, i64 2, i64 0), i32 0, i64 %idxprom35
  %55 = load i8, i8* %arrayidx36, align 1, !tbaa !26
  %conv37 = sext i8 %55 to i32
  %shl = shl i32 %conv37, 4
  %conv38 = trunc i32 %shl to i8
  %56 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom39 = sext i32 %56 to i64
  %57 = load %struct.gx_device_mgr_s*, %struct.gx_device_mgr_s** %mgr, align 8, !tbaa !1
  %bgrey256table = getelementptr inbounds %struct.gx_device_mgr_s, %struct.gx_device_mgr_s* %57, i32 0, i32 71
  %arrayidx40 = getelementptr inbounds [256 x i8], [256 x i8]* %bgrey256table, i32 0, i64 %idxprom39
  store i8 %conv38, i8* %arrayidx40, align 1, !tbaa !26
  %58 = load i32, i32* %i, align 4, !tbaa !5
  %conv41 = trunc i32 %58 to i8
  %59 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom42 = sext i32 %59 to i64
  %60 = load %struct.gx_device_mgr_s*, %struct.gx_device_mgr_s** %mgr, align 8, !tbaa !1
  %bgrey256table43 = getelementptr inbounds %struct.gx_device_mgr_s, %struct.gx_device_mgr_s* %60, i32 0, i32 71
  %arrayidx44 = getelementptr inbounds [256 x i8], [256 x i8]* %bgrey256table43, i32 0, i64 %idxprom42
  %61 = load i8, i8* %arrayidx44, align 1, !tbaa !26
  %idxprom45 = zext i8 %61 to i64
  %62 = load %struct.gx_device_mgr_s*, %struct.gx_device_mgr_s** %mgr, align 8, !tbaa !1
  %bgrey256backtable = getelementptr inbounds %struct.gx_device_mgr_s, %struct.gx_device_mgr_s* %62, i32 0, i32 72
  %arrayidx46 = getelementptr inbounds [256 x i8], [256 x i8]* %bgrey256backtable, i32 0, i64 %idxprom45
  store i8 %conv41, i8* %arrayidx46, align 1, !tbaa !26
  br label %for.inc.47

for.inc.47:                                       ; preds = %for.body.34
  %63 = load i32, i32* %i, align 4, !tbaa !5
  %inc48 = add nsw i32 %63, 1
  store i32 %inc48, i32* %i, align 4, !tbaa !5
  br label %for.cond.31

for.end.49:                                       ; preds = %for.cond.31
  store i32 16, i32* %i, align 4, !tbaa !5
  store i32 0, i32* %j, align 4, !tbaa !5
  br label %for.cond.50

for.cond.50:                                      ; preds = %for.inc.79, %for.end.49
  %64 = load i32, i32* %i, align 4, !tbaa !5
  %cmp51 = icmp slt i32 %64, 256
  br i1 %cmp51, label %for.body.53, label %for.end.81

for.body.53:                                      ; preds = %for.cond.50
  store i32 0, i32* %k, align 4, !tbaa !5
  br label %for.cond.54

for.cond.54:                                      ; preds = %for.inc.67, %for.body.53
  %65 = load i32, i32* %k, align 4, !tbaa !5
  %cmp55 = icmp slt i32 %65, 16
  br i1 %cmp55, label %for.body.57, label %for.end.69

for.body.57:                                      ; preds = %for.cond.54
  %66 = load i32, i32* %j, align 4, !tbaa !5
  %67 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom58 = sext i32 %67 to i64
  %arrayidx59 = getelementptr inbounds [16 x i8], [16 x i8]* getelementptr inbounds ([6 x [3 x [16 x i8]]], [6 x [3 x [16 x i8]]]* @mgrlut, i32 0, i64 2, i64 0), i32 0, i64 %idxprom58
  %68 = load i8, i8* %arrayidx59, align 1, !tbaa !26
  %conv60 = sext i8 %68 to i32
  %shl61 = shl i32 %conv60, 4
  %cmp62 = icmp eq i32 %66, %shl61
  br i1 %cmp62, label %if.then.64, label %if.end.66

if.then.64:                                       ; preds = %for.body.57
  %69 = load i32, i32* %j, align 4, !tbaa !5
  %inc65 = add nsw i32 %69, 1
  store i32 %inc65, i32* %j, align 4, !tbaa !5
  br label %for.end.69

if.end.66:                                        ; preds = %for.body.57
  br label %for.inc.67

for.inc.67:                                       ; preds = %if.end.66
  %70 = load i32, i32* %k, align 4, !tbaa !5
  %inc68 = add nsw i32 %70, 1
  store i32 %inc68, i32* %k, align 4, !tbaa !5
  br label %for.cond.54

for.end.69:                                       ; preds = %if.then.64, %for.cond.54
  %71 = load i32, i32* %j, align 4, !tbaa !5
  %conv70 = trunc i32 %71 to i8
  %72 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom71 = sext i32 %72 to i64
  %73 = load %struct.gx_device_mgr_s*, %struct.gx_device_mgr_s** %mgr, align 8, !tbaa !1
  %bgrey256table72 = getelementptr inbounds %struct.gx_device_mgr_s, %struct.gx_device_mgr_s* %73, i32 0, i32 71
  %arrayidx73 = getelementptr inbounds [256 x i8], [256 x i8]* %bgrey256table72, i32 0, i64 %idxprom71
  store i8 %conv70, i8* %arrayidx73, align 1, !tbaa !26
  %74 = load i32, i32* %i, align 4, !tbaa !5
  %conv74 = trunc i32 %74 to i8
  %75 = load i32, i32* %j, align 4, !tbaa !5
  %inc75 = add nsw i32 %75, 1
  store i32 %inc75, i32* %j, align 4, !tbaa !5
  %idxprom76 = sext i32 %75 to i64
  %76 = load %struct.gx_device_mgr_s*, %struct.gx_device_mgr_s** %mgr, align 8, !tbaa !1
  %bgrey256backtable77 = getelementptr inbounds %struct.gx_device_mgr_s, %struct.gx_device_mgr_s* %76, i32 0, i32 72
  %arrayidx78 = getelementptr inbounds [256 x i8], [256 x i8]* %bgrey256backtable77, i32 0, i64 %idxprom76
  store i8 %conv74, i8* %arrayidx78, align 1, !tbaa !26
  br label %for.inc.79

for.inc.79:                                       ; preds = %for.end.69
  %77 = load i32, i32* %i, align 4, !tbaa !5
  %inc80 = add nsw i32 %77, 1
  store i32 %inc80, i32* %i, align 4, !tbaa !5
  br label %for.cond.50

for.end.81:                                       ; preds = %for.cond.50
  br label %if.end.82

if.end.82:                                        ; preds = %for.end.81, %if.end.26
  %78 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %79 = bitcast %struct.gx_device_printer_s* %78 to %struct.gx_device_mgr_s*
  %mgr_depth83 = getelementptr inbounds %struct.gx_device_mgr_s, %struct.gx_device_mgr_s* %79, i32 0, i32 68
  %80 = load i32, i32* %mgr_depth83, align 4, !tbaa !25
  %cmp84 = icmp ne i32 %80, 8
  br i1 %cmp84, label %if.then.86, label %if.end.90

if.then.86:                                       ; preds = %if.end.82
  %81 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %81, i32 0, i32 3
  %82 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !27
  %non_gc_memory = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %82, i32 0, i32 3
  %83 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory, align 8, !tbaa !29
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %83, i32 0, i32 1
  %alloc_byte_array = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 10
  %84 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array, align 8, !tbaa !32
  %85 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory87 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %85, i32 0, i32 3
  %86 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory87, align 8, !tbaa !27
  %non_gc_memory88 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %86, i32 0, i32 3
  %87 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory88, align 8, !tbaa !29
  %88 = load i32, i32* %mgr_line_size, align 4, !tbaa !5
  %call89 = call i8* %84(%struct.gs_memory_s* %87, i32 %88, i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i32 0, i32 0)) #4
  store i8* %call89, i8** %data, align 8, !tbaa !1
  br label %if.end.90

if.end.90:                                        ; preds = %if.then.86, %if.end.82
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %if.end.90
  %call91 = call i32 @mgr_next_row(%struct.mgr_cursor_s* %cur) #4
  store i32 %call91, i32* %code, align 4, !tbaa !5
  %tobool92 = icmp ne i32 %call91, 0
  %lnot = xor i1 %tobool92, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %89 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %90 = bitcast %struct.gx_device_printer_s* %89 to %struct.gx_device_mgr_s*
  %mgr_depth93 = getelementptr inbounds %struct.gx_device_mgr_s, %struct.gx_device_mgr_s* %90, i32 0, i32 68
  %91 = load i32, i32* %mgr_depth93, align 4, !tbaa !25
  switch i32 %91, label %sw.epilog [
    i32 2, label %sw.bb
    i32 4, label %sw.bb.132
    i32 8, label %sw.bb.168
  ]

sw.bb:                                            ; preds = %while.body
  store i32 0, i32* %i, align 4, !tbaa !5
  %92 = load i8*, i8** %data, align 8, !tbaa !1
  store i8* %92, i8** %dp, align 8, !tbaa !1
  %data94 = getelementptr inbounds %struct.mgr_cursor_s, %struct.mgr_cursor_s* %cur, i32 0, i32 3
  %93 = load i8*, i8** %data94, align 8, !tbaa !23
  store i8* %93, i8** %bp, align 8, !tbaa !1
  br label %for.cond.95

for.cond.95:                                      ; preds = %for.inc.122, %sw.bb
  %94 = load i32, i32* %i, align 4, !tbaa !5
  %95 = load i32, i32* %mgr_line_size, align 4, !tbaa !5
  %cmp96 = icmp ult i32 %94, %95
  br i1 %cmp96, label %for.body.98, label %for.end.124

for.body.98:                                      ; preds = %for.cond.95
  %96 = load i8*, i8** %bp, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %96, i32 1
  store i8* %incdec.ptr, i8** %bp, align 8, !tbaa !1
  %97 = load i8, i8* %96, align 1, !tbaa !26
  %conv99 = zext i8 %97 to i32
  %and100 = and i32 %conv99, 192
  %conv101 = trunc i32 %and100 to i8
  %98 = load i8*, i8** %dp, align 8, !tbaa !1
  store i8 %conv101, i8* %98, align 1, !tbaa !26
  %99 = load i8*, i8** %bp, align 8, !tbaa !1
  %incdec.ptr102 = getelementptr inbounds i8, i8* %99, i32 1
  store i8* %incdec.ptr102, i8** %bp, align 8, !tbaa !1
  %100 = load i8, i8* %99, align 1, !tbaa !26
  %conv103 = zext i8 %100 to i32
  %and104 = and i32 %conv103, 192
  %shr = ashr i32 %and104, 2
  %101 = load i8*, i8** %dp, align 8, !tbaa !1
  %102 = load i8, i8* %101, align 1, !tbaa !26
  %conv105 = zext i8 %102 to i32
  %or = or i32 %conv105, %shr
  %conv106 = trunc i32 %or to i8
  store i8 %conv106, i8* %101, align 1, !tbaa !26
  %103 = load i8*, i8** %bp, align 8, !tbaa !1
  %incdec.ptr107 = getelementptr inbounds i8, i8* %103, i32 1
  store i8* %incdec.ptr107, i8** %bp, align 8, !tbaa !1
  %104 = load i8, i8* %103, align 1, !tbaa !26
  %conv108 = zext i8 %104 to i32
  %and109 = and i32 %conv108, 192
  %shr110 = ashr i32 %and109, 4
  %105 = load i8*, i8** %dp, align 8, !tbaa !1
  %106 = load i8, i8* %105, align 1, !tbaa !26
  %conv111 = zext i8 %106 to i32
  %or112 = or i32 %conv111, %shr110
  %conv113 = trunc i32 %or112 to i8
  store i8 %conv113, i8* %105, align 1, !tbaa !26
  %107 = load i8*, i8** %bp, align 8, !tbaa !1
  %incdec.ptr114 = getelementptr inbounds i8, i8* %107, i32 1
  store i8* %incdec.ptr114, i8** %bp, align 8, !tbaa !1
  %108 = load i8, i8* %107, align 1, !tbaa !26
  %conv115 = zext i8 %108 to i32
  %and116 = and i32 %conv115, 192
  %shr117 = ashr i32 %and116, 6
  %109 = load i8*, i8** %dp, align 8, !tbaa !1
  %incdec.ptr118 = getelementptr inbounds i8, i8* %109, i32 1
  store i8* %incdec.ptr118, i8** %dp, align 8, !tbaa !1
  %110 = load i8, i8* %109, align 1, !tbaa !26
  %conv119 = zext i8 %110 to i32
  %or120 = or i32 %conv119, %shr117
  %conv121 = trunc i32 %or120 to i8
  store i8 %conv121, i8* %109, align 1, !tbaa !26
  br label %for.inc.122

for.inc.122:                                      ; preds = %for.body.98
  %111 = load i32, i32* %i, align 4, !tbaa !5
  %inc123 = add nsw i32 %111, 1
  store i32 %inc123, i32* %i, align 4, !tbaa !5
  br label %for.cond.95

for.end.124:                                      ; preds = %for.cond.95
  %112 = load i8*, i8** %data, align 8, !tbaa !1
  %113 = load i32, i32* %mgr_line_size, align 4, !tbaa !5
  %conv125 = zext i32 %113 to i64
  %114 = load %struct._IO_FILE*, %struct._IO_FILE** %pstream.addr, align 8, !tbaa !1
  %call126 = call i64 @fwrite(i8* %112, i64 1, i64 %conv125, %struct._IO_FILE* %114) #4
  %115 = load i32, i32* %mgr_line_size, align 4, !tbaa !5
  %conv127 = zext i32 %115 to i64
  %cmp128 = icmp ult i64 %call126, %conv127
  br i1 %cmp128, label %if.then.130, label %if.end.131

if.then.130:                                      ; preds = %for.end.124
  store i32 -12, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.131:                                       ; preds = %for.end.124
  br label %sw.epilog

sw.bb.132:                                        ; preds = %while.body
  store i32 0, i32* %i, align 4, !tbaa !5
  %116 = load i8*, i8** %data, align 8, !tbaa !1
  store i8* %116, i8** %dp, align 8, !tbaa !1
  %data133 = getelementptr inbounds %struct.mgr_cursor_s, %struct.mgr_cursor_s* %cur, i32 0, i32 3
  %117 = load i8*, i8** %data133, align 8, !tbaa !23
  store i8* %117, i8** %bp, align 8, !tbaa !1
  br label %for.cond.134

for.cond.134:                                     ; preds = %for.inc.158, %sw.bb.132
  %118 = load i32, i32* %i, align 4, !tbaa !5
  %119 = load i32, i32* %mgr_line_size, align 4, !tbaa !5
  %cmp135 = icmp ult i32 %118, %119
  br i1 %cmp135, label %for.body.137, label %for.end.160

for.body.137:                                     ; preds = %for.cond.134
  %120 = load i8*, i8** %bp, align 8, !tbaa !1
  %incdec.ptr138 = getelementptr inbounds i8, i8* %120, i32 1
  store i8* %incdec.ptr138, i8** %bp, align 8, !tbaa !1
  %121 = load i8, i8* %120, align 1, !tbaa !26
  %conv139 = zext i8 %121 to i32
  %shr140 = ashr i32 %conv139, 4
  %idxprom141 = sext i32 %shr140 to i64
  %122 = load %struct.gx_device_mgr_s*, %struct.gx_device_mgr_s** %mgr, align 8, !tbaa !1
  %bgreybacktable142 = getelementptr inbounds %struct.gx_device_mgr_s, %struct.gx_device_mgr_s* %122, i32 0, i32 70
  %arrayidx143 = getelementptr inbounds [16 x i8], [16 x i8]* %bgreybacktable142, i32 0, i64 %idxprom141
  %123 = load i8, i8* %arrayidx143, align 1, !tbaa !26
  %conv144 = zext i8 %123 to i32
  %shl145 = shl i32 %conv144, 4
  %conv146 = trunc i32 %shl145 to i8
  %124 = load i8*, i8** %dp, align 8, !tbaa !1
  store i8 %conv146, i8* %124, align 1, !tbaa !26
  %125 = load i8*, i8** %bp, align 8, !tbaa !1
  %incdec.ptr147 = getelementptr inbounds i8, i8* %125, i32 1
  store i8* %incdec.ptr147, i8** %bp, align 8, !tbaa !1
  %126 = load i8, i8* %125, align 1, !tbaa !26
  %conv148 = zext i8 %126 to i32
  %shr149 = ashr i32 %conv148, 4
  %idxprom150 = sext i32 %shr149 to i64
  %127 = load %struct.gx_device_mgr_s*, %struct.gx_device_mgr_s** %mgr, align 8, !tbaa !1
  %bgreybacktable151 = getelementptr inbounds %struct.gx_device_mgr_s, %struct.gx_device_mgr_s* %127, i32 0, i32 70
  %arrayidx152 = getelementptr inbounds [16 x i8], [16 x i8]* %bgreybacktable151, i32 0, i64 %idxprom150
  %128 = load i8, i8* %arrayidx152, align 1, !tbaa !26
  %conv153 = zext i8 %128 to i32
  %129 = load i8*, i8** %dp, align 8, !tbaa !1
  %incdec.ptr154 = getelementptr inbounds i8, i8* %129, i32 1
  store i8* %incdec.ptr154, i8** %dp, align 8, !tbaa !1
  %130 = load i8, i8* %129, align 1, !tbaa !26
  %conv155 = zext i8 %130 to i32
  %or156 = or i32 %conv155, %conv153
  %conv157 = trunc i32 %or156 to i8
  store i8 %conv157, i8* %129, align 1, !tbaa !26
  br label %for.inc.158

for.inc.158:                                      ; preds = %for.body.137
  %131 = load i32, i32* %i, align 4, !tbaa !5
  %inc159 = add nsw i32 %131, 1
  store i32 %inc159, i32* %i, align 4, !tbaa !5
  br label %for.cond.134

for.end.160:                                      ; preds = %for.cond.134
  %132 = load i8*, i8** %data, align 8, !tbaa !1
  %133 = load i32, i32* %mgr_line_size, align 4, !tbaa !5
  %conv161 = zext i32 %133 to i64
  %134 = load %struct._IO_FILE*, %struct._IO_FILE** %pstream.addr, align 8, !tbaa !1
  %call162 = call i64 @fwrite(i8* %132, i64 1, i64 %conv161, %struct._IO_FILE* %134) #4
  %135 = load i32, i32* %mgr_line_size, align 4, !tbaa !5
  %conv163 = zext i32 %135 to i64
  %cmp164 = icmp ult i64 %call162, %conv163
  br i1 %cmp164, label %if.then.166, label %if.end.167

if.then.166:                                      ; preds = %for.end.160
  store i32 -12, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.167:                                       ; preds = %for.end.160
  br label %sw.epilog

sw.bb.168:                                        ; preds = %while.body
  store i32 0, i32* %i, align 4, !tbaa !5
  %data169 = getelementptr inbounds %struct.mgr_cursor_s, %struct.mgr_cursor_s* %cur, i32 0, i32 3
  %136 = load i8*, i8** %data169, align 8, !tbaa !23
  store i8* %136, i8** %bp, align 8, !tbaa !1
  br label %for.cond.170

for.cond.170:                                     ; preds = %for.inc.177, %sw.bb.168
  %137 = load i32, i32* %i, align 4, !tbaa !5
  %138 = load i32, i32* %mgr_line_size, align 4, !tbaa !5
  %cmp171 = icmp ult i32 %137, %138
  br i1 %cmp171, label %for.body.173, label %for.end.180

for.body.173:                                     ; preds = %for.cond.170
  %139 = load i8*, i8** %bp, align 8, !tbaa !1
  %140 = load i8, i8* %139, align 1, !tbaa !26
  %idxprom174 = zext i8 %140 to i64
  %141 = load %struct.gx_device_mgr_s*, %struct.gx_device_mgr_s** %mgr, align 8, !tbaa !1
  %bgrey256backtable175 = getelementptr inbounds %struct.gx_device_mgr_s, %struct.gx_device_mgr_s* %141, i32 0, i32 72
  %arrayidx176 = getelementptr inbounds [256 x i8], [256 x i8]* %bgrey256backtable175, i32 0, i64 %idxprom174
  %142 = load i8, i8* %arrayidx176, align 1, !tbaa !26
  %143 = load i8*, i8** %bp, align 8, !tbaa !1
  store i8 %142, i8* %143, align 1, !tbaa !26
  br label %for.inc.177

for.inc.177:                                      ; preds = %for.body.173
  %144 = load i32, i32* %i, align 4, !tbaa !5
  %inc178 = add nsw i32 %144, 1
  store i32 %inc178, i32* %i, align 4, !tbaa !5
  %145 = load i8*, i8** %bp, align 8, !tbaa !1
  %incdec.ptr179 = getelementptr inbounds i8, i8* %145, i32 1
  store i8* %incdec.ptr179, i8** %bp, align 8, !tbaa !1
  br label %for.cond.170

for.end.180:                                      ; preds = %for.cond.170
  %data181 = getelementptr inbounds %struct.mgr_cursor_s, %struct.mgr_cursor_s* %cur, i32 0, i32 3
  %146 = load i8*, i8** %data181, align 8, !tbaa !23
  %147 = load i32, i32* %mgr_line_size, align 4, !tbaa !5
  %conv182 = zext i32 %147 to i64
  %148 = load %struct._IO_FILE*, %struct._IO_FILE** %pstream.addr, align 8, !tbaa !1
  %call183 = call i64 @fwrite(i8* %146, i64 1, i64 %conv182, %struct._IO_FILE* %148) #4
  %149 = load i32, i32* %mgr_line_size, align 4, !tbaa !5
  %conv184 = zext i32 %149 to i64
  %cmp185 = icmp ult i64 %call183, %conv184
  br i1 %cmp185, label %if.then.187, label %if.end.188

if.then.187:                                      ; preds = %for.end.180
  store i32 -12, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.188:                                       ; preds = %for.end.180
  br label %sw.epilog

sw.epilog:                                        ; preds = %while.body, %if.end.188, %if.end.167, %if.end.131
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %150 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %151 = bitcast %struct.gx_device_printer_s* %150 to %struct.gx_device_mgr_s*
  %mgr_depth189 = getelementptr inbounds %struct.gx_device_mgr_s, %struct.gx_device_mgr_s* %151, i32 0, i32 68
  %152 = load i32, i32* %mgr_depth189, align 4, !tbaa !25
  %cmp190 = icmp ne i32 %152, 8
  br i1 %cmp190, label %if.then.192, label %if.end.198

if.then.192:                                      ; preds = %while.end
  %153 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %154 = bitcast %struct.gx_device_printer_s* %153 to %struct.gx_device_mgr_s*
  %memory193 = getelementptr inbounds %struct.gx_device_mgr_s, %struct.gx_device_mgr_s* %154, i32 0, i32 3
  %155 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory193, align 8, !tbaa !33
  %non_gc_memory194 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %155, i32 0, i32 3
  %156 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory194, align 8, !tbaa !29
  %procs195 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %156, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs195, i32 0, i32 2
  %157 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !34
  %158 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %159 = bitcast %struct.gx_device_printer_s* %158 to %struct.gx_device_mgr_s*
  %memory196 = getelementptr inbounds %struct.gx_device_mgr_s, %struct.gx_device_mgr_s* %159, i32 0, i32 3
  %160 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory196, align 8, !tbaa !33
  %non_gc_memory197 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %160, i32 0, i32 3
  %161 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory197, align 8, !tbaa !29
  %162 = load i8*, i8** %data, align 8, !tbaa !1
  call void %157(%struct.gs_memory_s* %161, i8* %162, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.12, i32 0, i32 0)) #4
  br label %if.end.198

if.end.198:                                       ; preds = %if.then.192, %while.end
  %163 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %164 = bitcast %struct.gx_device_printer_s* %163 to %struct.gx_device_mgr_s*
  %mgr_depth199 = getelementptr inbounds %struct.gx_device_mgr_s, %struct.gx_device_mgr_s* %164, i32 0, i32 68
  %165 = load i32, i32* %mgr_depth199, align 4, !tbaa !25
  %cmp200 = icmp eq i32 %165, 2
  br i1 %cmp200, label %if.then.202, label %if.end.224

if.then.202:                                      ; preds = %if.end.198
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.203

for.cond.203:                                     ; preds = %for.inc.221, %if.then.202
  %166 = load i32, i32* %i, align 4, !tbaa !5
  %cmp204 = icmp slt i32 %166, 4
  br i1 %cmp204, label %for.body.206, label %for.end.223

for.body.206:                                     ; preds = %for.cond.203
  %167 = load i32, i32* %i, align 4, !tbaa !5
  %conv207 = trunc i32 %167 to i16
  %168 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom208 = sext i32 %168 to i64
  %169 = load %struct.gx_device_mgr_s*, %struct.gx_device_mgr_s** %mgr, align 8, !tbaa !1
  %clut = getelementptr inbounds %struct.gx_device_mgr_s, %struct.gx_device_mgr_s* %169, i32 0, i32 73
  %arrayidx209 = getelementptr inbounds [256 x %struct.nclut], [256 x %struct.nclut]* %clut, i32 0, i64 %idxprom208
  %colnum = getelementptr inbounds %struct.nclut, %struct.nclut* %arrayidx209, i32 0, i32 0
  store i16 %conv207, i16* %colnum, align 2, !tbaa !35
  %170 = load i32, i32* %i, align 4, !tbaa !5
  %call210 = call i32 @clut2mgr(i32 %170, i32 2) #4
  %conv211 = trunc i32 %call210 to i16
  %171 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom212 = sext i32 %171 to i64
  %172 = load %struct.gx_device_mgr_s*, %struct.gx_device_mgr_s** %mgr, align 8, !tbaa !1
  %clut213 = getelementptr inbounds %struct.gx_device_mgr_s, %struct.gx_device_mgr_s* %172, i32 0, i32 73
  %arrayidx214 = getelementptr inbounds [256 x %struct.nclut], [256 x %struct.nclut]* %clut213, i32 0, i64 %idxprom212
  %blue = getelementptr inbounds %struct.nclut, %struct.nclut* %arrayidx214, i32 0, i32 3
  store i16 %conv211, i16* %blue, align 2, !tbaa !37
  %173 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom215 = sext i32 %173 to i64
  %174 = load %struct.gx_device_mgr_s*, %struct.gx_device_mgr_s** %mgr, align 8, !tbaa !1
  %clut216 = getelementptr inbounds %struct.gx_device_mgr_s, %struct.gx_device_mgr_s* %174, i32 0, i32 73
  %arrayidx217 = getelementptr inbounds [256 x %struct.nclut], [256 x %struct.nclut]* %clut216, i32 0, i64 %idxprom215
  %green = getelementptr inbounds %struct.nclut, %struct.nclut* %arrayidx217, i32 0, i32 2
  store i16 %conv211, i16* %green, align 2, !tbaa !38
  %175 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom218 = sext i32 %175 to i64
  %176 = load %struct.gx_device_mgr_s*, %struct.gx_device_mgr_s** %mgr, align 8, !tbaa !1
  %clut219 = getelementptr inbounds %struct.gx_device_mgr_s, %struct.gx_device_mgr_s* %176, i32 0, i32 73
  %arrayidx220 = getelementptr inbounds [256 x %struct.nclut], [256 x %struct.nclut]* %clut219, i32 0, i64 %idxprom218
  %red = getelementptr inbounds %struct.nclut, %struct.nclut* %arrayidx220, i32 0, i32 1
  store i16 %conv211, i16* %red, align 2, !tbaa !39
  br label %for.inc.221

for.inc.221:                                      ; preds = %for.body.206
  %177 = load i32, i32* %i, align 4, !tbaa !5
  %inc222 = add nsw i32 %177, 1
  store i32 %inc222, i32* %i, align 4, !tbaa !5
  br label %for.cond.203

for.end.223:                                      ; preds = %for.cond.203
  br label %if.end.224

if.end.224:                                       ; preds = %for.end.223, %if.end.198
  %178 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %179 = bitcast %struct.gx_device_printer_s* %178 to %struct.gx_device_mgr_s*
  %mgr_depth225 = getelementptr inbounds %struct.gx_device_mgr_s, %struct.gx_device_mgr_s* %179, i32 0, i32 68
  %180 = load i32, i32* %mgr_depth225, align 4, !tbaa !25
  %cmp226 = icmp eq i32 %180, 4
  br i1 %cmp226, label %if.then.228, label %if.end.259

if.then.228:                                      ; preds = %if.end.224
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.229

for.cond.229:                                     ; preds = %for.inc.256, %if.then.228
  %181 = load i32, i32* %i, align 4, !tbaa !5
  %cmp230 = icmp slt i32 %181, 16
  br i1 %cmp230, label %for.body.232, label %for.end.258

for.body.232:                                     ; preds = %for.cond.229
  %182 = load i32, i32* %i, align 4, !tbaa !5
  %conv233 = trunc i32 %182 to i16
  %183 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom234 = sext i32 %183 to i64
  %184 = load %struct.gx_device_mgr_s*, %struct.gx_device_mgr_s** %mgr, align 8, !tbaa !1
  %clut235 = getelementptr inbounds %struct.gx_device_mgr_s, %struct.gx_device_mgr_s* %184, i32 0, i32 73
  %arrayidx236 = getelementptr inbounds [256 x %struct.nclut], [256 x %struct.nclut]* %clut235, i32 0, i64 %idxprom234
  %colnum237 = getelementptr inbounds %struct.nclut, %struct.nclut* %arrayidx236, i32 0, i32 0
  store i16 %conv233, i16* %colnum237, align 2, !tbaa !35
  %185 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom238 = sext i32 %185 to i64
  %186 = load %struct.gx_device_mgr_s*, %struct.gx_device_mgr_s** %mgr, align 8, !tbaa !1
  %bgreytable239 = getelementptr inbounds %struct.gx_device_mgr_s, %struct.gx_device_mgr_s* %186, i32 0, i32 69
  %arrayidx240 = getelementptr inbounds [16 x i8], [16 x i8]* %bgreytable239, i32 0, i64 %idxprom238
  %187 = load i8, i8* %arrayidx240, align 1, !tbaa !26
  %conv241 = zext i8 %187 to i32
  %call242 = call i32 @clut2mgr(i32 %conv241, i32 4) #4
  %conv243 = trunc i32 %call242 to i16
  %188 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom244 = sext i32 %188 to i64
  %189 = load %struct.gx_device_mgr_s*, %struct.gx_device_mgr_s** %mgr, align 8, !tbaa !1
  %clut245 = getelementptr inbounds %struct.gx_device_mgr_s, %struct.gx_device_mgr_s* %189, i32 0, i32 73
  %arrayidx246 = getelementptr inbounds [256 x %struct.nclut], [256 x %struct.nclut]* %clut245, i32 0, i64 %idxprom244
  %blue247 = getelementptr inbounds %struct.nclut, %struct.nclut* %arrayidx246, i32 0, i32 3
  store i16 %conv243, i16* %blue247, align 2, !tbaa !37
  %190 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom248 = sext i32 %190 to i64
  %191 = load %struct.gx_device_mgr_s*, %struct.gx_device_mgr_s** %mgr, align 8, !tbaa !1
  %clut249 = getelementptr inbounds %struct.gx_device_mgr_s, %struct.gx_device_mgr_s* %191, i32 0, i32 73
  %arrayidx250 = getelementptr inbounds [256 x %struct.nclut], [256 x %struct.nclut]* %clut249, i32 0, i64 %idxprom248
  %green251 = getelementptr inbounds %struct.nclut, %struct.nclut* %arrayidx250, i32 0, i32 2
  store i16 %conv243, i16* %green251, align 2, !tbaa !38
  %192 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom252 = sext i32 %192 to i64
  %193 = load %struct.gx_device_mgr_s*, %struct.gx_device_mgr_s** %mgr, align 8, !tbaa !1
  %clut253 = getelementptr inbounds %struct.gx_device_mgr_s, %struct.gx_device_mgr_s* %193, i32 0, i32 73
  %arrayidx254 = getelementptr inbounds [256 x %struct.nclut], [256 x %struct.nclut]* %clut253, i32 0, i64 %idxprom252
  %red255 = getelementptr inbounds %struct.nclut, %struct.nclut* %arrayidx254, i32 0, i32 1
  store i16 %conv243, i16* %red255, align 2, !tbaa !39
  br label %for.inc.256

for.inc.256:                                      ; preds = %for.body.232
  %194 = load i32, i32* %i, align 4, !tbaa !5
  %inc257 = add nsw i32 %194, 1
  store i32 %inc257, i32* %i, align 4, !tbaa !5
  br label %for.cond.229

for.end.258:                                      ; preds = %for.cond.229
  br label %if.end.259

if.end.259:                                       ; preds = %for.end.258, %if.end.224
  %195 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %196 = bitcast %struct.gx_device_printer_s* %195 to %struct.gx_device_mgr_s*
  %mgr_depth260 = getelementptr inbounds %struct.gx_device_mgr_s, %struct.gx_device_mgr_s* %196, i32 0, i32 68
  %197 = load i32, i32* %mgr_depth260, align 4, !tbaa !25
  %cmp261 = icmp eq i32 %197, 8
  br i1 %cmp261, label %if.then.263, label %if.end.294

if.then.263:                                      ; preds = %if.end.259
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.264

for.cond.264:                                     ; preds = %for.inc.291, %if.then.263
  %198 = load i32, i32* %i, align 4, !tbaa !5
  %cmp265 = icmp slt i32 %198, 256
  br i1 %cmp265, label %for.body.267, label %for.end.293

for.body.267:                                     ; preds = %for.cond.264
  %199 = load i32, i32* %i, align 4, !tbaa !5
  %conv268 = trunc i32 %199 to i16
  %200 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom269 = sext i32 %200 to i64
  %201 = load %struct.gx_device_mgr_s*, %struct.gx_device_mgr_s** %mgr, align 8, !tbaa !1
  %clut270 = getelementptr inbounds %struct.gx_device_mgr_s, %struct.gx_device_mgr_s* %201, i32 0, i32 73
  %arrayidx271 = getelementptr inbounds [256 x %struct.nclut], [256 x %struct.nclut]* %clut270, i32 0, i64 %idxprom269
  %colnum272 = getelementptr inbounds %struct.nclut, %struct.nclut* %arrayidx271, i32 0, i32 0
  store i16 %conv268, i16* %colnum272, align 2, !tbaa !35
  %202 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom273 = sext i32 %202 to i64
  %203 = load %struct.gx_device_mgr_s*, %struct.gx_device_mgr_s** %mgr, align 8, !tbaa !1
  %bgrey256table274 = getelementptr inbounds %struct.gx_device_mgr_s, %struct.gx_device_mgr_s* %203, i32 0, i32 71
  %arrayidx275 = getelementptr inbounds [256 x i8], [256 x i8]* %bgrey256table274, i32 0, i64 %idxprom273
  %204 = load i8, i8* %arrayidx275, align 1, !tbaa !26
  %conv276 = zext i8 %204 to i32
  %call277 = call i32 @clut2mgr(i32 %conv276, i32 8) #4
  %conv278 = trunc i32 %call277 to i16
  %205 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom279 = sext i32 %205 to i64
  %206 = load %struct.gx_device_mgr_s*, %struct.gx_device_mgr_s** %mgr, align 8, !tbaa !1
  %clut280 = getelementptr inbounds %struct.gx_device_mgr_s, %struct.gx_device_mgr_s* %206, i32 0, i32 73
  %arrayidx281 = getelementptr inbounds [256 x %struct.nclut], [256 x %struct.nclut]* %clut280, i32 0, i64 %idxprom279
  %blue282 = getelementptr inbounds %struct.nclut, %struct.nclut* %arrayidx281, i32 0, i32 3
  store i16 %conv278, i16* %blue282, align 2, !tbaa !37
  %207 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom283 = sext i32 %207 to i64
  %208 = load %struct.gx_device_mgr_s*, %struct.gx_device_mgr_s** %mgr, align 8, !tbaa !1
  %clut284 = getelementptr inbounds %struct.gx_device_mgr_s, %struct.gx_device_mgr_s* %208, i32 0, i32 73
  %arrayidx285 = getelementptr inbounds [256 x %struct.nclut], [256 x %struct.nclut]* %clut284, i32 0, i64 %idxprom283
  %green286 = getelementptr inbounds %struct.nclut, %struct.nclut* %arrayidx285, i32 0, i32 2
  store i16 %conv278, i16* %green286, align 2, !tbaa !38
  %209 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom287 = sext i32 %209 to i64
  %210 = load %struct.gx_device_mgr_s*, %struct.gx_device_mgr_s** %mgr, align 8, !tbaa !1
  %clut288 = getelementptr inbounds %struct.gx_device_mgr_s, %struct.gx_device_mgr_s* %210, i32 0, i32 73
  %arrayidx289 = getelementptr inbounds [256 x %struct.nclut], [256 x %struct.nclut]* %clut288, i32 0, i64 %idxprom287
  %red290 = getelementptr inbounds %struct.nclut, %struct.nclut* %arrayidx289, i32 0, i32 1
  store i16 %conv278, i16* %red290, align 2, !tbaa !39
  br label %for.inc.291

for.inc.291:                                      ; preds = %for.body.267
  %211 = load i32, i32* %i, align 4, !tbaa !5
  %inc292 = add nsw i32 %211, 1
  store i32 %inc292, i32* %i, align 4, !tbaa !5
  br label %for.cond.264

for.end.293:                                      ; preds = %for.cond.264
  br label %if.end.294

if.end.294:                                       ; preds = %for.end.293, %if.end.259
  %212 = load %struct.gx_device_mgr_s*, %struct.gx_device_mgr_s** %mgr, align 8, !tbaa !1
  %clut295 = getelementptr inbounds %struct.gx_device_mgr_s, %struct.gx_device_mgr_s* %212, i32 0, i32 73
  %arraydecay = getelementptr inbounds [256 x %struct.nclut], [256 x %struct.nclut]* %clut295, i32 0, i32 0
  %213 = bitcast %struct.nclut* %arraydecay to i8*
  %214 = load i32, i32* %i, align 4, !tbaa !5
  %conv296 = sext i32 %214 to i64
  %mul = mul i64 8, %conv296
  %conv297 = trunc i64 %mul to i32
  call void @swap_bwords(i8* %213, i32 %conv297) #4
  %215 = load %struct.gx_device_mgr_s*, %struct.gx_device_mgr_s** %mgr, align 8, !tbaa !1
  %clut298 = getelementptr inbounds %struct.gx_device_mgr_s, %struct.gx_device_mgr_s* %215, i32 0, i32 73
  %216 = bitcast [256 x %struct.nclut]* %clut298 to i8*
  %217 = load i32, i32* %i, align 4, !tbaa !5
  %conv299 = sext i32 %217 to i64
  %218 = load %struct._IO_FILE*, %struct._IO_FILE** %pstream.addr, align 8, !tbaa !1
  %call300 = call i64 @fwrite(i8* %216, i64 8, i64 %conv299, %struct._IO_FILE* %218) #4
  %219 = load i32, i32* %i, align 4, !tbaa !5
  %conv301 = sext i32 %219 to i64
  %cmp302 = icmp ult i64 %call300, %conv301
  br i1 %cmp302, label %if.then.304, label %if.end.305

if.then.304:                                      ; preds = %if.end.294
  store i32 -12, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.305:                                       ; preds = %if.end.294
  %220 = load i32, i32* %code, align 4, !tbaa !5
  %cmp306 = icmp slt i32 %220, 0
  br i1 %cmp306, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.305
  %221 = load i32, i32* %code, align 4, !tbaa !5
  br label %cond.end

cond.false:                                       ; preds = %if.end.305
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %221, %cond.true ], [ 0, %cond.false ]
  store i32 %cond, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %if.then.304, %if.then.187, %if.then.166, %if.then.130, %if.then
  %222 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %222) #2
  %223 = bitcast %struct.gx_device_mgr_s** %mgr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %223) #2
  %224 = bitcast i8** %dp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %224) #2
  %225 = bitcast i8** %data to i8*
  call void @llvm.lifetime.end(i64 8, i8* %225) #2
  %226 = bitcast i8** %bp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %226) #2
  %227 = bitcast i32* %mgr_line_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %227) #2
  %228 = bitcast i32* %mgr_wide to i8*
  call void @llvm.lifetime.end(i64 4, i8* %228) #2
  %229 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %229) #2
  %230 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %230) #2
  %231 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %231) #2
  %232 = bitcast %struct.mgr_cursor_s* %cur to i8*
  call void @llvm.lifetime.end(i64 32, i8* %232) #2
  %233 = load i32, i32* %retval
  ret i32 %233
}

; Function Attrs: nounwind uwtable
define internal i32 @cmgrN_print_page(%struct.gx_device_printer_s* %pdev, %struct._IO_FILE* %pstream) #1 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_printer_s*, align 8
  %pstream.addr = alloca %struct._IO_FILE*, align 8
  %cur = alloca %struct.mgr_cursor_s, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %mgr_wide = alloca i32, align 4
  %r = alloca i32, align 4
  %g = alloca i32, align 4
  %b = alloca i32, align 4
  %colors8 = alloca i32, align 4
  %mgr_line_size = alloca i32, align 4
  %bp = alloca i8*, align 8
  %data = alloca i8*, align 8
  %dp = alloca i8*, align 8
  %prgb = alloca [3 x i16], align 2
  %table = alloca [256 x i8], align 16
  %backtable = alloca [256 x i8], align 16
  %mgr = alloca %struct.gx_device_mgr_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_printer_s* %pdev, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  store %struct._IO_FILE* %pstream, %struct._IO_FILE** %pstream.addr, align 8, !tbaa !1
  %0 = bitcast %struct.mgr_cursor_s* %cur to i8*
  call void @llvm.lifetime.start(i64 32, i8* %0) #2
  %1 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  store i32 0, i32* %i, align 4, !tbaa !5
  %2 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  %3 = bitcast i32* %mgr_wide to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = bitcast i32* %r to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = bitcast i32* %g to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  %6 = bitcast i32* %b to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = bitcast i32* %colors8 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #2
  store i32 0, i32* %colors8, align 4, !tbaa !5
  %8 = bitcast i32* %mgr_line_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #2
  %9 = bitcast i8** %bp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #2
  %10 = bitcast i8** %data to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #2
  %11 = bitcast i8** %dp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #2
  %12 = bitcast [3 x i16]* %prgb to i8*
  call void @llvm.lifetime.start(i64 6, i8* %12) #2
  %13 = bitcast [256 x i8]* %table to i8*
  call void @llvm.lifetime.start(i64 256, i8* %13) #2
  %14 = bitcast [256 x i8]* %backtable to i8*
  call void @llvm.lifetime.start(i64 256, i8* %14) #2
  %15 = bitcast %struct.gx_device_mgr_s** %mgr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15) #2
  %16 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %17 = bitcast %struct.gx_device_printer_s* %16 to %struct.gx_device_mgr_s*
  store %struct.gx_device_mgr_s* %17, %struct.gx_device_mgr_s** %mgr, align 8, !tbaa !1
  %18 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #2
  %19 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %20 = bitcast %struct.gx_device_printer_s* %19 to %struct.gx_device_mgr_s*
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** %pstream.addr, align 8, !tbaa !1
  %call = call i32 @mgr_begin_page(%struct.gx_device_mgr_s* %20, %struct._IO_FILE* %21, %struct.mgr_cursor_s* %cur) #4
  store i32 %call, i32* %code, align 4, !tbaa !5
  %22 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %22, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %23 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %23, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %24 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %25 = bitcast %struct.gx_device_printer_s* %24 to %struct.gx_device_mgr_s*
  %width = getelementptr inbounds %struct.gx_device_mgr_s, %struct.gx_device_mgr_s* %25, i32 0, i32 13
  %26 = load i32, i32* %width, align 4, !tbaa !7
  store i32 %26, i32* %mgr_wide, align 4, !tbaa !5
  %27 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %28 = bitcast %struct.gx_device_printer_s* %27 to %struct.gx_device_mgr_s*
  %mgr_depth = getelementptr inbounds %struct.gx_device_mgr_s, %struct.gx_device_mgr_s* %28, i32 0, i32 68
  %29 = load i32, i32* %mgr_depth, align 4, !tbaa !25
  %cmp1 = icmp eq i32 %29, 4
  br i1 %cmp1, label %land.lhs.true, label %if.end.3

land.lhs.true:                                    ; preds = %if.end
  %30 = load i32, i32* %mgr_wide, align 4, !tbaa !5
  %and = and i32 %30, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %land.lhs.true
  %31 = load i32, i32* %mgr_wide, align 4, !tbaa !5
  %inc = add nsw i32 %31, 1
  store i32 %inc, i32* %mgr_wide, align 4, !tbaa !5
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.2, %land.lhs.true, %if.end
  %32 = load i32, i32* %mgr_wide, align 4, !tbaa !5
  %33 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %34 = bitcast %struct.gx_device_printer_s* %33 to %struct.gx_device_mgr_s*
  %mgr_depth4 = getelementptr inbounds %struct.gx_device_mgr_s, %struct.gx_device_mgr_s* %34, i32 0, i32 68
  %35 = load i32, i32* %mgr_depth4, align 4, !tbaa !25
  %div = sdiv i32 8, %35
  %div5 = sdiv i32 %32, %div
  store i32 %div5, i32* %mgr_line_size, align 4, !tbaa !5
  %36 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %36, i32 0, i32 3
  %37 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !27
  %non_gc_memory = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %37, i32 0, i32 3
  %38 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory, align 8, !tbaa !29
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %38, i32 0, i32 1
  %alloc_byte_array = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 10
  %39 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array, align 8, !tbaa !32
  %40 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory6 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %40, i32 0, i32 3
  %41 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory6, align 8, !tbaa !27
  %non_gc_memory7 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %41, i32 0, i32 3
  %42 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory7, align 8, !tbaa !29
  %43 = load i32, i32* %mgr_line_size, align 4, !tbaa !5
  %call8 = call i8* %39(%struct.gs_memory_s* %42, i32 %43, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i32 0, i32 0)) #4
  store i8* %call8, i8** %data, align 8, !tbaa !1
  %44 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %45 = bitcast %struct.gx_device_printer_s* %44 to %struct.gx_device_mgr_s*
  %mgr_depth9 = getelementptr inbounds %struct.gx_device_mgr_s, %struct.gx_device_mgr_s* %45, i32 0, i32 68
  %46 = load i32, i32* %mgr_depth9, align 4, !tbaa !25
  %cmp10 = icmp eq i32 %46, 8
  br i1 %cmp10, label %if.then.11, label %if.end.58

if.then.11:                                       ; preds = %if.end.3
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %table, i32 0, i32 0
  %call12 = call i8* @memset(i8* %arraydecay, i32 0, i64 256) #5
  store i32 0, i32* %r, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc.34, %if.then.11
  %47 = load i32, i32* %r, align 4, !tbaa !5
  %cmp13 = icmp sle i32 %47, 6
  br i1 %cmp13, label %for.body, label %for.end.36

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %g, align 4, !tbaa !5
  br label %for.cond.14

for.cond.14:                                      ; preds = %for.inc.31, %for.body
  %48 = load i32, i32* %g, align 4, !tbaa !5
  %cmp15 = icmp sle i32 %48, 6
  br i1 %cmp15, label %for.body.16, label %for.end.33

for.body.16:                                      ; preds = %for.cond.14
  store i32 0, i32* %b, align 4, !tbaa !5
  br label %for.cond.17

for.cond.17:                                      ; preds = %for.inc, %for.body.16
  %49 = load i32, i32* %b, align 4, !tbaa !5
  %cmp18 = icmp sle i32 %49, 6
  br i1 %cmp18, label %for.body.19, label %for.end

for.body.19:                                      ; preds = %for.cond.17
  %50 = load i32, i32* %r, align 4, !tbaa !5
  %51 = load i32, i32* %g, align 4, !tbaa !5
  %cmp20 = icmp eq i32 %50, %51
  br i1 %cmp20, label %land.lhs.true.21, label %if.else

land.lhs.true.21:                                 ; preds = %for.body.19
  %52 = load i32, i32* %g, align 4, !tbaa !5
  %53 = load i32, i32* %b, align 4, !tbaa !5
  %cmp22 = icmp eq i32 %52, %53
  br i1 %cmp22, label %if.then.23, label %if.else

if.then.23:                                       ; preds = %land.lhs.true.21
  %54 = load i32, i32* %r, align 4, !tbaa !5
  %add = add nsw i32 %54, 249
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds [256 x i8], [256 x i8]* %table, i32 0, i64 %idxprom
  store i8 1, i8* %arrayidx, align 1, !tbaa !26
  br label %if.end.29

if.else:                                          ; preds = %land.lhs.true.21, %for.body.19
  %55 = load i32, i32* %r, align 4, !tbaa !5
  %shl = shl i32 %55, 5
  %56 = load i32, i32* %g, align 4, !tbaa !5
  %shl24 = shl i32 %56, 2
  %add25 = add nsw i32 %shl, %shl24
  %57 = load i32, i32* %b, align 4, !tbaa !5
  %shr = ashr i32 %57, 1
  %add26 = add nsw i32 %add25, %shr
  %idxprom27 = sext i32 %add26 to i64
  %arrayidx28 = getelementptr inbounds [256 x i8], [256 x i8]* %table, i32 0, i64 %idxprom27
  store i8 1, i8* %arrayidx28, align 1, !tbaa !26
  br label %if.end.29

if.end.29:                                        ; preds = %if.else, %if.then.23
  br label %for.inc

for.inc:                                          ; preds = %if.end.29
  %58 = load i32, i32* %b, align 4, !tbaa !5
  %inc30 = add nsw i32 %58, 1
  store i32 %inc30, i32* %b, align 4, !tbaa !5
  br label %for.cond.17

for.end:                                          ; preds = %for.cond.17
  br label %for.inc.31

for.inc.31:                                       ; preds = %for.end
  %59 = load i32, i32* %g, align 4, !tbaa !5
  %inc32 = add nsw i32 %59, 1
  store i32 %inc32, i32* %g, align 4, !tbaa !5
  br label %for.cond.14

for.end.33:                                       ; preds = %for.cond.14
  br label %for.inc.34

for.inc.34:                                       ; preds = %for.end.33
  %60 = load i32, i32* %r, align 4, !tbaa !5
  %inc35 = add nsw i32 %60, 1
  store i32 %inc35, i32* %r, align 4, !tbaa !5
  br label %for.cond

for.end.36:                                       ; preds = %for.cond
  store i32 0, i32* %j, align 4, !tbaa !5
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.37

for.cond.37:                                      ; preds = %for.inc.55, %for.end.36
  %61 = load i32, i32* %i, align 4, !tbaa !5
  %conv = sext i32 %61 to i64
  %cmp38 = icmp ult i64 %conv, 256
  br i1 %cmp38, label %for.body.40, label %for.end.57

for.body.40:                                      ; preds = %for.cond.37
  %62 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom41 = sext i32 %62 to i64
  %arrayidx42 = getelementptr inbounds [256 x i8], [256 x i8]* %table, i32 0, i64 %idxprom41
  %63 = load i8, i8* %arrayidx42, align 1, !tbaa !26
  %conv43 = zext i8 %63 to i32
  %cmp44 = icmp eq i32 %conv43, 1
  br i1 %cmp44, label %if.then.46, label %if.end.54

if.then.46:                                       ; preds = %for.body.40
  %64 = load i32, i32* %j, align 4, !tbaa !5
  %conv47 = trunc i32 %64 to i8
  %65 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom48 = sext i32 %65 to i64
  %arrayidx49 = getelementptr inbounds [256 x i8], [256 x i8]* %backtable, i32 0, i64 %idxprom48
  store i8 %conv47, i8* %arrayidx49, align 1, !tbaa !26
  %66 = load i32, i32* %i, align 4, !tbaa !5
  %conv50 = trunc i32 %66 to i8
  %67 = load i32, i32* %j, align 4, !tbaa !5
  %inc51 = add nsw i32 %67, 1
  store i32 %inc51, i32* %j, align 4, !tbaa !5
  %idxprom52 = sext i32 %67 to i64
  %arrayidx53 = getelementptr inbounds [256 x i8], [256 x i8]* %table, i32 0, i64 %idxprom52
  store i8 %conv50, i8* %arrayidx53, align 1, !tbaa !26
  br label %if.end.54

if.end.54:                                        ; preds = %if.then.46, %for.body.40
  br label %for.inc.55

for.inc.55:                                       ; preds = %if.end.54
  %68 = load i32, i32* %i, align 4, !tbaa !5
  %inc56 = add nsw i32 %68, 1
  store i32 %inc56, i32* %i, align 4, !tbaa !5
  br label %for.cond.37

for.end.57:                                       ; preds = %for.cond.37
  %69 = load i32, i32* %j, align 4, !tbaa !5
  store i32 %69, i32* %colors8, align 4, !tbaa !5
  br label %if.end.58

if.end.58:                                        ; preds = %for.end.57, %if.end.3
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %if.end.58
  %call59 = call i32 @mgr_next_row(%struct.mgr_cursor_s* %cur) #4
  store i32 %call59, i32* %code, align 4, !tbaa !5
  %tobool60 = icmp ne i32 %call59, 0
  %lnot = xor i1 %tobool60, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %70 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %71 = bitcast %struct.gx_device_printer_s* %70 to %struct.gx_device_mgr_s*
  %mgr_depth61 = getelementptr inbounds %struct.gx_device_mgr_s, %struct.gx_device_mgr_s* %71, i32 0, i32 68
  %72 = load i32, i32* %mgr_depth61, align 4, !tbaa !25
  switch i32 %72, label %sw.epilog [
    i32 4, label %sw.bb
    i32 8, label %sw.bb.86
  ]

sw.bb:                                            ; preds = %while.body
  store i32 0, i32* %i, align 4, !tbaa !5
  %73 = load i8*, i8** %data, align 8, !tbaa !1
  store i8* %73, i8** %dp, align 8, !tbaa !1
  %data62 = getelementptr inbounds %struct.mgr_cursor_s, %struct.mgr_cursor_s* %cur, i32 0, i32 3
  %74 = load i8*, i8** %data62, align 8, !tbaa !23
  store i8* %74, i8** %bp, align 8, !tbaa !1
  br label %for.cond.63

for.cond.63:                                      ; preds = %for.inc.76, %sw.bb
  %75 = load i32, i32* %i, align 4, !tbaa !5
  %76 = load i32, i32* %mgr_line_size, align 4, !tbaa !5
  %cmp64 = icmp ult i32 %75, %76
  br i1 %cmp64, label %for.body.66, label %for.end.78

for.body.66:                                      ; preds = %for.cond.63
  %77 = load i8*, i8** %bp, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %77, i32 1
  store i8* %incdec.ptr, i8** %bp, align 8, !tbaa !1
  %78 = load i8, i8* %77, align 1, !tbaa !26
  %conv67 = zext i8 %78 to i32
  %shl68 = shl i32 %conv67, 4
  %conv69 = trunc i32 %shl68 to i8
  %79 = load i8*, i8** %dp, align 8, !tbaa !1
  store i8 %conv69, i8* %79, align 1, !tbaa !26
  %80 = load i8*, i8** %bp, align 8, !tbaa !1
  %incdec.ptr70 = getelementptr inbounds i8, i8* %80, i32 1
  store i8* %incdec.ptr70, i8** %bp, align 8, !tbaa !1
  %81 = load i8, i8* %80, align 1, !tbaa !26
  %conv71 = zext i8 %81 to i32
  %and72 = and i32 %conv71, 15
  %82 = load i8*, i8** %dp, align 8, !tbaa !1
  %incdec.ptr73 = getelementptr inbounds i8, i8* %82, i32 1
  store i8* %incdec.ptr73, i8** %dp, align 8, !tbaa !1
  %83 = load i8, i8* %82, align 1, !tbaa !26
  %conv74 = zext i8 %83 to i32
  %or = or i32 %conv74, %and72
  %conv75 = trunc i32 %or to i8
  store i8 %conv75, i8* %82, align 1, !tbaa !26
  br label %for.inc.76

for.inc.76:                                       ; preds = %for.body.66
  %84 = load i32, i32* %i, align 4, !tbaa !5
  %inc77 = add nsw i32 %84, 1
  store i32 %inc77, i32* %i, align 4, !tbaa !5
  br label %for.cond.63

for.end.78:                                       ; preds = %for.cond.63
  %85 = load i8*, i8** %data, align 8, !tbaa !1
  %86 = load i32, i32* %mgr_line_size, align 4, !tbaa !5
  %conv79 = zext i32 %86 to i64
  %87 = load %struct._IO_FILE*, %struct._IO_FILE** %pstream.addr, align 8, !tbaa !1
  %call80 = call i64 @fwrite(i8* %85, i64 1, i64 %conv79, %struct._IO_FILE* %87) #4
  %88 = load i32, i32* %mgr_line_size, align 4, !tbaa !5
  %conv81 = zext i32 %88 to i64
  %cmp82 = icmp ult i64 %call80, %conv81
  br i1 %cmp82, label %if.then.84, label %if.end.85

if.then.84:                                       ; preds = %for.end.78
  store i32 -12, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.85:                                        ; preds = %for.end.78
  br label %sw.epilog

sw.bb.86:                                         ; preds = %while.body
  store i32 0, i32* %i, align 4, !tbaa !5
  %data87 = getelementptr inbounds %struct.mgr_cursor_s, %struct.mgr_cursor_s* %cur, i32 0, i32 3
  %89 = load i8*, i8** %data87, align 8, !tbaa !23
  store i8* %89, i8** %bp, align 8, !tbaa !1
  br label %for.cond.88

for.cond.88:                                      ; preds = %for.inc.97, %sw.bb.86
  %90 = load i32, i32* %i, align 4, !tbaa !5
  %91 = load i32, i32* %mgr_line_size, align 4, !tbaa !5
  %cmp89 = icmp ult i32 %90, %91
  br i1 %cmp89, label %for.body.91, label %for.end.100

for.body.91:                                      ; preds = %for.cond.88
  %92 = load i8*, i8** %bp, align 8, !tbaa !1
  %93 = load i8, i8* %92, align 1, !tbaa !26
  %idxprom92 = zext i8 %93 to i64
  %arrayidx93 = getelementptr inbounds [256 x i8], [256 x i8]* %backtable, i32 0, i64 %idxprom92
  %94 = load i8, i8* %arrayidx93, align 1, !tbaa !26
  %conv94 = zext i8 %94 to i32
  %add95 = add nsw i32 %conv94, 16
  %conv96 = trunc i32 %add95 to i8
  %95 = load i8*, i8** %bp, align 8, !tbaa !1
  store i8 %conv96, i8* %95, align 1, !tbaa !26
  br label %for.inc.97

for.inc.97:                                       ; preds = %for.body.91
  %96 = load i32, i32* %i, align 4, !tbaa !5
  %inc98 = add nsw i32 %96, 1
  store i32 %inc98, i32* %i, align 4, !tbaa !5
  %97 = load i8*, i8** %bp, align 8, !tbaa !1
  %incdec.ptr99 = getelementptr inbounds i8, i8* %97, i32 1
  store i8* %incdec.ptr99, i8** %bp, align 8, !tbaa !1
  br label %for.cond.88

for.end.100:                                      ; preds = %for.cond.88
  %data101 = getelementptr inbounds %struct.mgr_cursor_s, %struct.mgr_cursor_s* %cur, i32 0, i32 3
  %98 = load i8*, i8** %data101, align 8, !tbaa !23
  %99 = load i32, i32* %mgr_line_size, align 4, !tbaa !5
  %conv102 = zext i32 %99 to i64
  %100 = load %struct._IO_FILE*, %struct._IO_FILE** %pstream.addr, align 8, !tbaa !1
  %call103 = call i64 @fwrite(i8* %98, i64 1, i64 %conv102, %struct._IO_FILE* %100) #4
  %101 = load i32, i32* %mgr_line_size, align 4, !tbaa !5
  %conv104 = zext i32 %101 to i64
  %cmp105 = icmp ult i64 %call103, %conv104
  br i1 %cmp105, label %if.then.107, label %if.end.108

if.then.107:                                      ; preds = %for.end.100
  store i32 -12, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.108:                                       ; preds = %for.end.100
  br label %sw.epilog

sw.epilog:                                        ; preds = %while.body, %if.end.108, %if.end.85
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %102 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %103 = bitcast %struct.gx_device_printer_s* %102 to %struct.gx_device_mgr_s*
  %memory109 = getelementptr inbounds %struct.gx_device_mgr_s, %struct.gx_device_mgr_s* %103, i32 0, i32 3
  %104 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory109, align 8, !tbaa !33
  %non_gc_memory110 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %104, i32 0, i32 3
  %105 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory110, align 8, !tbaa !29
  %procs111 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %105, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs111, i32 0, i32 2
  %106 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !34
  %107 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %108 = bitcast %struct.gx_device_printer_s* %107 to %struct.gx_device_mgr_s*
  %memory112 = getelementptr inbounds %struct.gx_device_mgr_s, %struct.gx_device_mgr_s* %108, i32 0, i32 3
  %109 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory112, align 8, !tbaa !33
  %non_gc_memory113 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %109, i32 0, i32 3
  %110 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory113, align 8, !tbaa !29
  %111 = load i8*, i8** %data, align 8, !tbaa !1
  call void %106(%struct.gs_memory_s* %110, i8* %111, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.14, i32 0, i32 0)) #4
  %112 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %113 = bitcast %struct.gx_device_printer_s* %112 to %struct.gx_device_mgr_s*
  %mgr_depth114 = getelementptr inbounds %struct.gx_device_mgr_s, %struct.gx_device_mgr_s* %113, i32 0, i32 68
  %114 = load i32, i32* %mgr_depth114, align 4, !tbaa !25
  %cmp115 = icmp eq i32 %114, 4
  br i1 %cmp115, label %if.then.117, label %if.end.152

if.then.117:                                      ; preds = %while.end
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.118

for.cond.118:                                     ; preds = %for.inc.149, %if.then.117
  %115 = load i32, i32* %i, align 4, !tbaa !5
  %cmp119 = icmp slt i32 %115, 16
  br i1 %cmp119, label %for.body.121, label %for.end.151

for.body.121:                                     ; preds = %for.cond.118
  %116 = load i32, i32* %i, align 4, !tbaa !5
  %conv122 = sext i32 %116 to i64
  %arraydecay123 = getelementptr inbounds [3 x i16], [3 x i16]* %prgb, i32 0, i32 0
  %call124 = call i32 @pc_4bit_map_color_rgb(%struct.gx_device_s* null, i64 %conv122, i16* %arraydecay123) #4
  %117 = load i32, i32* %i, align 4, !tbaa !5
  %conv125 = trunc i32 %117 to i16
  %118 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom126 = sext i32 %118 to i64
  %119 = load %struct.gx_device_mgr_s*, %struct.gx_device_mgr_s** %mgr, align 8, !tbaa !1
  %clut = getelementptr inbounds %struct.gx_device_mgr_s, %struct.gx_device_mgr_s* %119, i32 0, i32 73
  %arrayidx127 = getelementptr inbounds [256 x %struct.nclut], [256 x %struct.nclut]* %clut, i32 0, i64 %idxprom126
  %colnum = getelementptr inbounds %struct.nclut, %struct.nclut* %arrayidx127, i32 0, i32 0
  store i16 %conv125, i16* %colnum, align 2, !tbaa !35
  %arrayidx128 = getelementptr inbounds [3 x i16], [3 x i16]* %prgb, i32 0, i64 0
  %120 = load i16, i16* %arrayidx128, align 2, !tbaa !40
  %conv129 = zext i16 %120 to i32
  %call130 = call i32 @clut2mgr(i32 %conv129, i32 16) #4
  %conv131 = trunc i32 %call130 to i16
  %121 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom132 = sext i32 %121 to i64
  %122 = load %struct.gx_device_mgr_s*, %struct.gx_device_mgr_s** %mgr, align 8, !tbaa !1
  %clut133 = getelementptr inbounds %struct.gx_device_mgr_s, %struct.gx_device_mgr_s* %122, i32 0, i32 73
  %arrayidx134 = getelementptr inbounds [256 x %struct.nclut], [256 x %struct.nclut]* %clut133, i32 0, i64 %idxprom132
  %red = getelementptr inbounds %struct.nclut, %struct.nclut* %arrayidx134, i32 0, i32 1
  store i16 %conv131, i16* %red, align 2, !tbaa !39
  %arrayidx135 = getelementptr inbounds [3 x i16], [3 x i16]* %prgb, i32 0, i64 1
  %123 = load i16, i16* %arrayidx135, align 2, !tbaa !40
  %conv136 = zext i16 %123 to i32
  %call137 = call i32 @clut2mgr(i32 %conv136, i32 16) #4
  %conv138 = trunc i32 %call137 to i16
  %124 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom139 = sext i32 %124 to i64
  %125 = load %struct.gx_device_mgr_s*, %struct.gx_device_mgr_s** %mgr, align 8, !tbaa !1
  %clut140 = getelementptr inbounds %struct.gx_device_mgr_s, %struct.gx_device_mgr_s* %125, i32 0, i32 73
  %arrayidx141 = getelementptr inbounds [256 x %struct.nclut], [256 x %struct.nclut]* %clut140, i32 0, i64 %idxprom139
  %green = getelementptr inbounds %struct.nclut, %struct.nclut* %arrayidx141, i32 0, i32 2
  store i16 %conv138, i16* %green, align 2, !tbaa !38
  %arrayidx142 = getelementptr inbounds [3 x i16], [3 x i16]* %prgb, i32 0, i64 2
  %126 = load i16, i16* %arrayidx142, align 2, !tbaa !40
  %conv143 = zext i16 %126 to i32
  %call144 = call i32 @clut2mgr(i32 %conv143, i32 16) #4
  %conv145 = trunc i32 %call144 to i16
  %127 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom146 = sext i32 %127 to i64
  %128 = load %struct.gx_device_mgr_s*, %struct.gx_device_mgr_s** %mgr, align 8, !tbaa !1
  %clut147 = getelementptr inbounds %struct.gx_device_mgr_s, %struct.gx_device_mgr_s* %128, i32 0, i32 73
  %arrayidx148 = getelementptr inbounds [256 x %struct.nclut], [256 x %struct.nclut]* %clut147, i32 0, i64 %idxprom146
  %blue = getelementptr inbounds %struct.nclut, %struct.nclut* %arrayidx148, i32 0, i32 3
  store i16 %conv145, i16* %blue, align 2, !tbaa !37
  br label %for.inc.149

for.inc.149:                                      ; preds = %for.body.121
  %129 = load i32, i32* %i, align 4, !tbaa !5
  %inc150 = add nsw i32 %129, 1
  store i32 %inc150, i32* %i, align 4, !tbaa !5
  br label %for.cond.118

for.end.151:                                      ; preds = %for.cond.118
  br label %if.end.152

if.end.152:                                       ; preds = %for.end.151, %while.end
  %130 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %131 = bitcast %struct.gx_device_printer_s* %130 to %struct.gx_device_mgr_s*
  %mgr_depth153 = getelementptr inbounds %struct.gx_device_mgr_s, %struct.gx_device_mgr_s* %131, i32 0, i32 68
  %132 = load i32, i32* %mgr_depth153, align 4, !tbaa !25
  %cmp154 = icmp eq i32 %132, 8
  br i1 %cmp154, label %if.then.156, label %if.end.199

if.then.156:                                      ; preds = %if.end.152
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.157

for.cond.157:                                     ; preds = %for.inc.196, %if.then.156
  %133 = load i32, i32* %i, align 4, !tbaa !5
  %134 = load i32, i32* %colors8, align 4, !tbaa !5
  %cmp158 = icmp slt i32 %133, %134
  br i1 %cmp158, label %for.body.160, label %for.end.198

for.body.160:                                     ; preds = %for.cond.157
  %135 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom161 = sext i32 %135 to i64
  %arrayidx162 = getelementptr inbounds [256 x i8], [256 x i8]* %table, i32 0, i64 %idxprom161
  %136 = load i8, i8* %arrayidx162, align 1, !tbaa !26
  %conv163 = zext i8 %136 to i64
  %arraydecay164 = getelementptr inbounds [3 x i16], [3 x i16]* %prgb, i32 0, i32 0
  %call165 = call i32 @mgr_8bit_map_color_rgb(%struct.gx_device_s* null, i64 %conv163, i16* %arraydecay164) #4
  %137 = load i32, i32* %i, align 4, !tbaa !5
  %add166 = add nsw i32 16, %137
  %conv167 = trunc i32 %add166 to i16
  %138 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom168 = sext i32 %138 to i64
  %139 = load %struct.gx_device_mgr_s*, %struct.gx_device_mgr_s** %mgr, align 8, !tbaa !1
  %clut169 = getelementptr inbounds %struct.gx_device_mgr_s, %struct.gx_device_mgr_s* %139, i32 0, i32 73
  %arrayidx170 = getelementptr inbounds [256 x %struct.nclut], [256 x %struct.nclut]* %clut169, i32 0, i64 %idxprom168
  %colnum171 = getelementptr inbounds %struct.nclut, %struct.nclut* %arrayidx170, i32 0, i32 0
  store i16 %conv167, i16* %colnum171, align 2, !tbaa !35
  %arrayidx172 = getelementptr inbounds [3 x i16], [3 x i16]* %prgb, i32 0, i64 0
  %140 = load i16, i16* %arrayidx172, align 2, !tbaa !40
  %conv173 = zext i16 %140 to i32
  %call174 = call i32 @clut2mgr(i32 %conv173, i32 16) #4
  %conv175 = trunc i32 %call174 to i16
  %141 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom176 = sext i32 %141 to i64
  %142 = load %struct.gx_device_mgr_s*, %struct.gx_device_mgr_s** %mgr, align 8, !tbaa !1
  %clut177 = getelementptr inbounds %struct.gx_device_mgr_s, %struct.gx_device_mgr_s* %142, i32 0, i32 73
  %arrayidx178 = getelementptr inbounds [256 x %struct.nclut], [256 x %struct.nclut]* %clut177, i32 0, i64 %idxprom176
  %red179 = getelementptr inbounds %struct.nclut, %struct.nclut* %arrayidx178, i32 0, i32 1
  store i16 %conv175, i16* %red179, align 2, !tbaa !39
  %arrayidx180 = getelementptr inbounds [3 x i16], [3 x i16]* %prgb, i32 0, i64 1
  %143 = load i16, i16* %arrayidx180, align 2, !tbaa !40
  %conv181 = zext i16 %143 to i32
  %call182 = call i32 @clut2mgr(i32 %conv181, i32 16) #4
  %conv183 = trunc i32 %call182 to i16
  %144 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom184 = sext i32 %144 to i64
  %145 = load %struct.gx_device_mgr_s*, %struct.gx_device_mgr_s** %mgr, align 8, !tbaa !1
  %clut185 = getelementptr inbounds %struct.gx_device_mgr_s, %struct.gx_device_mgr_s* %145, i32 0, i32 73
  %arrayidx186 = getelementptr inbounds [256 x %struct.nclut], [256 x %struct.nclut]* %clut185, i32 0, i64 %idxprom184
  %green187 = getelementptr inbounds %struct.nclut, %struct.nclut* %arrayidx186, i32 0, i32 2
  store i16 %conv183, i16* %green187, align 2, !tbaa !38
  %arrayidx188 = getelementptr inbounds [3 x i16], [3 x i16]* %prgb, i32 0, i64 2
  %146 = load i16, i16* %arrayidx188, align 2, !tbaa !40
  %conv189 = zext i16 %146 to i32
  %call190 = call i32 @clut2mgr(i32 %conv189, i32 16) #4
  %conv191 = trunc i32 %call190 to i16
  %147 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom192 = sext i32 %147 to i64
  %148 = load %struct.gx_device_mgr_s*, %struct.gx_device_mgr_s** %mgr, align 8, !tbaa !1
  %clut193 = getelementptr inbounds %struct.gx_device_mgr_s, %struct.gx_device_mgr_s* %148, i32 0, i32 73
  %arrayidx194 = getelementptr inbounds [256 x %struct.nclut], [256 x %struct.nclut]* %clut193, i32 0, i64 %idxprom192
  %blue195 = getelementptr inbounds %struct.nclut, %struct.nclut* %arrayidx194, i32 0, i32 3
  store i16 %conv191, i16* %blue195, align 2, !tbaa !37
  br label %for.inc.196

for.inc.196:                                      ; preds = %for.body.160
  %149 = load i32, i32* %i, align 4, !tbaa !5
  %inc197 = add nsw i32 %149, 1
  store i32 %inc197, i32* %i, align 4, !tbaa !5
  br label %for.cond.157

for.end.198:                                      ; preds = %for.cond.157
  br label %if.end.199

if.end.199:                                       ; preds = %for.end.198, %if.end.152
  %150 = load %struct.gx_device_mgr_s*, %struct.gx_device_mgr_s** %mgr, align 8, !tbaa !1
  %clut200 = getelementptr inbounds %struct.gx_device_mgr_s, %struct.gx_device_mgr_s* %150, i32 0, i32 73
  %arraydecay201 = getelementptr inbounds [256 x %struct.nclut], [256 x %struct.nclut]* %clut200, i32 0, i32 0
  %151 = bitcast %struct.nclut* %arraydecay201 to i8*
  %152 = load i32, i32* %i, align 4, !tbaa !5
  %conv202 = sext i32 %152 to i64
  %mul = mul i64 8, %conv202
  %conv203 = trunc i64 %mul to i32
  call void @swap_bwords(i8* %151, i32 %conv203) #4
  %153 = load %struct.gx_device_mgr_s*, %struct.gx_device_mgr_s** %mgr, align 8, !tbaa !1
  %clut204 = getelementptr inbounds %struct.gx_device_mgr_s, %struct.gx_device_mgr_s* %153, i32 0, i32 73
  %154 = bitcast [256 x %struct.nclut]* %clut204 to i8*
  %155 = load i32, i32* %i, align 4, !tbaa !5
  %conv205 = sext i32 %155 to i64
  %156 = load %struct._IO_FILE*, %struct._IO_FILE** %pstream.addr, align 8, !tbaa !1
  %call206 = call i64 @fwrite(i8* %154, i64 8, i64 %conv205, %struct._IO_FILE* %156) #4
  %157 = load i32, i32* %i, align 4, !tbaa !5
  %conv207 = sext i32 %157 to i64
  %cmp208 = icmp ult i64 %call206, %conv207
  br i1 %cmp208, label %if.then.210, label %if.end.211

if.then.210:                                      ; preds = %if.end.199
  store i32 -12, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.211:                                       ; preds = %if.end.199
  %158 = load i32, i32* %code, align 4, !tbaa !5
  %cmp212 = icmp slt i32 %158, 0
  br i1 %cmp212, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.211
  %159 = load i32, i32* %code, align 4, !tbaa !5
  br label %cond.end

cond.false:                                       ; preds = %if.end.211
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %159, %cond.true ], [ 0, %cond.false ]
  store i32 %cond, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %if.then.210, %if.then.107, %if.then.84, %if.then
  %160 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %160) #2
  %161 = bitcast %struct.gx_device_mgr_s** %mgr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %161) #2
  %162 = bitcast [256 x i8]* %backtable to i8*
  call void @llvm.lifetime.end(i64 256, i8* %162) #2
  %163 = bitcast [256 x i8]* %table to i8*
  call void @llvm.lifetime.end(i64 256, i8* %163) #2
  %164 = bitcast [3 x i16]* %prgb to i8*
  call void @llvm.lifetime.end(i64 6, i8* %164) #2
  %165 = bitcast i8** %dp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %165) #2
  %166 = bitcast i8** %data to i8*
  call void @llvm.lifetime.end(i64 8, i8* %166) #2
  %167 = bitcast i8** %bp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %167) #2
  %168 = bitcast i32* %mgr_line_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %168) #2
  %169 = bitcast i32* %colors8 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %169) #2
  %170 = bitcast i32* %b to i8*
  call void @llvm.lifetime.end(i64 4, i8* %170) #2
  %171 = bitcast i32* %g to i8*
  call void @llvm.lifetime.end(i64 4, i8* %171) #2
  %172 = bitcast i32* %r to i8*
  call void @llvm.lifetime.end(i64 4, i8* %172) #2
  %173 = bitcast i32* %mgr_wide to i8*
  call void @llvm.lifetime.end(i64 4, i8* %173) #2
  %174 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %174) #2
  %175 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %175) #2
  %176 = bitcast %struct.mgr_cursor_s* %cur to i8*
  call void @llvm.lifetime.end(i64 32, i8* %176) #2
  %177 = load i32, i32* %retval
  ret i32 %177
}

; Function Attrs: nounwind uwtable
define i64 @mgr_8bit_map_rgb_color(%struct.gx_device_s* %dev, i16* %cv) #1 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %cv.addr = alloca i16*, align 8
  %rv = alloca i32, align 4
  %gv = alloca i32, align 4
  %bv = alloca i32, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i16* %cv, i16** %cv.addr, align 8, !tbaa !1
  %0 = bitcast i32* %rv to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load i16*, i16** %cv.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %1, i64 0
  %2 = load i16, i16* %arrayidx, align 2, !tbaa !40
  %conv = zext i16 %2 to i32
  %div = sdiv i32 %conv, 9363
  store i32 %div, i32* %rv, align 4, !tbaa !5
  %3 = bitcast i32* %gv to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = load i16*, i16** %cv.addr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds i16, i16* %4, i64 1
  %5 = load i16, i16* %arrayidx1, align 2, !tbaa !40
  %conv2 = zext i16 %5 to i32
  %div3 = sdiv i32 %conv2, 9363
  store i32 %div3, i32* %gv, align 4, !tbaa !5
  %6 = bitcast i32* %bv to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = load i16*, i16** %cv.addr, align 8, !tbaa !1
  %arrayidx4 = getelementptr inbounds i16, i16* %7, i64 2
  %8 = load i16, i16* %arrayidx4, align 2, !tbaa !40
  %conv5 = zext i16 %8 to i32
  %div6 = sdiv i32 %conv5, 9363
  store i32 %div6, i32* %bv, align 4, !tbaa !5
  %9 = load i32, i32* %rv, align 4, !tbaa !5
  %10 = load i32, i32* %gv, align 4, !tbaa !5
  %cmp = icmp eq i32 %9, %10
  br i1 %cmp, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %entry
  %11 = load i32, i32* %gv, align 4, !tbaa !5
  %12 = load i32, i32* %bv, align 4, !tbaa !5
  %cmp8 = icmp eq i32 %11, %12
  br i1 %cmp8, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  %13 = load i32, i32* %rv, align 4, !tbaa !5
  %add = add i32 %13, 249
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true, %entry
  %14 = load i32, i32* %rv, align 4, !tbaa !5
  %shl = shl i32 %14, 5
  %15 = load i32, i32* %gv, align 4, !tbaa !5
  %shl10 = shl i32 %15, 2
  %add11 = add i32 %shl, %shl10
  %16 = load i32, i32* %bv, align 4, !tbaa !5
  %shr = lshr i32 %16, 1
  %add12 = add i32 %add11, %shr
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %add, %cond.true ], [ %add12, %cond.false ]
  %conv13 = zext i32 %cond to i64
  %17 = bitcast i32* %bv to i8*
  call void @llvm.lifetime.end(i64 4, i8* %17) #2
  %18 = bitcast i32* %gv to i8*
  call void @llvm.lifetime.end(i64 4, i8* %18) #2
  %19 = bitcast i32* %rv to i8*
  call void @llvm.lifetime.end(i64 4, i8* %19) #2
  ret i64 %conv13
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define i32 @mgr_8bit_map_color_rgb(%struct.gx_device_s* %dev, i64 %color, i16* %prgb) #1 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %color.addr = alloca i64, align 8
  %prgb.addr = alloca i16*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i64 %color, i64* %color.addr, align 8, !tbaa !41
  store i16* %prgb, i16** %prgb.addr, align 8, !tbaa !1
  %0 = load i64, i64* %color.addr, align 8, !tbaa !41
  %conv = trunc i64 %0 to i32
  %cmp = icmp uge i32 %conv, 249
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i64, i64* %color.addr, align 8, !tbaa !41
  %conv2 = trunc i64 %1 to i32
  %sub = sub i32 %conv2, 249
  %idxprom = zext i32 %sub to i64
  %arrayidx = getelementptr inbounds [8 x i16], [8 x i16]* @mgr_8bit_map_color_rgb.ramp, i32 0, i64 %idxprom
  %2 = load i16, i16* %arrayidx, align 2, !tbaa !40
  %3 = load i16*, i16** %prgb.addr, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds i16, i16* %3, i64 2
  store i16 %2, i16* %arrayidx3, align 2, !tbaa !40
  %4 = load i16*, i16** %prgb.addr, align 8, !tbaa !1
  %arrayidx4 = getelementptr inbounds i16, i16* %4, i64 1
  store i16 %2, i16* %arrayidx4, align 2, !tbaa !40
  %5 = load i16*, i16** %prgb.addr, align 8, !tbaa !1
  %arrayidx5 = getelementptr inbounds i16, i16* %5, i64 0
  store i16 %2, i16* %arrayidx5, align 2, !tbaa !40
  br label %if.end

if.else:                                          ; preds = %entry
  %6 = load i64, i64* %color.addr, align 8, !tbaa !41
  %conv6 = trunc i64 %6 to i32
  %shr = lshr i32 %conv6, 5
  %and = and i32 %shr, 7
  %idxprom7 = zext i32 %and to i64
  %arrayidx8 = getelementptr inbounds [8 x i16], [8 x i16]* @mgr_8bit_map_color_rgb.ramp, i32 0, i64 %idxprom7
  %7 = load i16, i16* %arrayidx8, align 2, !tbaa !40
  %8 = load i16*, i16** %prgb.addr, align 8, !tbaa !1
  %arrayidx9 = getelementptr inbounds i16, i16* %8, i64 0
  store i16 %7, i16* %arrayidx9, align 2, !tbaa !40
  %9 = load i64, i64* %color.addr, align 8, !tbaa !41
  %conv10 = trunc i64 %9 to i32
  %shr11 = lshr i32 %conv10, 2
  %and12 = and i32 %shr11, 7
  %idxprom13 = zext i32 %and12 to i64
  %arrayidx14 = getelementptr inbounds [8 x i16], [8 x i16]* @mgr_8bit_map_color_rgb.ramp, i32 0, i64 %idxprom13
  %10 = load i16, i16* %arrayidx14, align 2, !tbaa !40
  %11 = load i16*, i16** %prgb.addr, align 8, !tbaa !1
  %arrayidx15 = getelementptr inbounds i16, i16* %11, i64 1
  store i16 %10, i16* %arrayidx15, align 2, !tbaa !40
  %12 = load i64, i64* %color.addr, align 8, !tbaa !41
  %conv16 = trunc i64 %12 to i32
  %and17 = and i32 %conv16, 3
  %shl = shl i32 %and17, 1
  %idxprom18 = zext i32 %shl to i64
  %arrayidx19 = getelementptr inbounds [8 x i16], [8 x i16]* @mgr_8bit_map_color_rgb.ramp, i32 0, i64 %idxprom18
  %13 = load i16, i16* %arrayidx19, align 2, !tbaa !40
  %14 = load i16*, i16** %prgb.addr, align 8, !tbaa !1
  %arrayidx20 = getelementptr inbounds i16, i16* %14, i64 2
  store i16 %13, i16* %arrayidx20, align 2, !tbaa !40
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret i32 0
}

declare i32 @gdev_prn_open(%struct.gx_device_s*) #0

declare i32 @gdev_prn_bg_output_page(%struct.gx_device_s*, i32, i32) #0

declare i32 @gdev_prn_close(%struct.gx_device_s*) #0

declare i64 @gx_default_b_w_map_rgb_color(%struct.gx_device_s*, i16*) #0

declare i32 @gx_default_b_w_map_color_rgb(%struct.gx_device_s*, i64, i16*) #0

declare i32 @gdev_prn_get_params(%struct.gx_device_s*, %struct.gs_param_list_s*) #0

declare i32 @gdev_prn_put_params(%struct.gx_device_s*, %struct.gs_param_list_s*) #0

declare %struct.gx_device_s* @gx_page_device_get_page_device(%struct.gx_device_s*) #0

declare i32 @gdev_prn_dev_spec_op(%struct.gx_device_s*, i32, i8*, i32) #0

declare i32 @gx_default_get_profile(%struct.gx_device_s*, %struct.cmm_dev_profile_s**) #0

declare void @gx_default_set_graphics_type_tag(%struct.gx_device_s*, i32) #0

declare i64 @gx_default_gray_map_rgb_color(%struct.gx_device_s*, i16*) #0

declare i32 @gx_default_gray_map_color_rgb(%struct.gx_device_s*, i64, i16*) #0

declare i64 @pc_4bit_map_rgb_color(%struct.gx_device_s*, i16*) #0

declare i32 @pc_4bit_map_color_rgb(%struct.gx_device_s*, i64, i16*) #0

; Function Attrs: nounwind uwtable
define internal i32 @mgr_begin_page(%struct.gx_device_mgr_s* %bdev, %struct._IO_FILE* %pstream, %struct.mgr_cursor_s* %pcur) #1 {
entry:
  %retval = alloca i32, align 4
  %bdev.addr = alloca %struct.gx_device_mgr_s*, align 8
  %pstream.addr = alloca %struct._IO_FILE*, align 8
  %pcur.addr = alloca %struct.mgr_cursor_s*, align 8
  %head = alloca %struct.b_header, align 1
  %line_size = alloca i32, align 4
  %data = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_mgr_s* %bdev, %struct.gx_device_mgr_s** %bdev.addr, align 8, !tbaa !1
  store %struct._IO_FILE* %pstream, %struct._IO_FILE** %pstream.addr, align 8, !tbaa !1
  store %struct.mgr_cursor_s* %pcur, %struct.mgr_cursor_s** %pcur.addr, align 8, !tbaa !1
  %0 = bitcast %struct.b_header* %head to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = bitcast i32* %line_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = load %struct.gx_device_mgr_s*, %struct.gx_device_mgr_s** %bdev.addr, align 8, !tbaa !1
  %3 = bitcast %struct.gx_device_mgr_s* %2 to %struct.gx_device_printer_s*
  %4 = bitcast %struct.gx_device_printer_s* %3 to %struct.gx_device_s*
  %call = call i32 @gx_device_raster(%struct.gx_device_s* %4, i32 0) #4
  %add = add i32 %call, 3
  store i32 %add, i32* %line_size, align 4, !tbaa !5
  %5 = bitcast i8** %data to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #2
  %6 = load %struct.gx_device_mgr_s*, %struct.gx_device_mgr_s** %bdev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_mgr_s, %struct.gx_device_mgr_s* %6, i32 0, i32 3
  %7 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !33
  %non_gc_memory = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %7, i32 0, i32 3
  %8 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory, align 8, !tbaa !29
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %8, i32 0, i32 1
  %alloc_byte_array = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 10
  %9 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array, align 8, !tbaa !32
  %10 = load %struct.gx_device_mgr_s*, %struct.gx_device_mgr_s** %bdev.addr, align 8, !tbaa !1
  %memory1 = getelementptr inbounds %struct.gx_device_mgr_s, %struct.gx_device_mgr_s* %10, i32 0, i32 3
  %11 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory1, align 8, !tbaa !33
  %non_gc_memory2 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %11, i32 0, i32 3
  %12 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory2, align 8, !tbaa !29
  %13 = load i32, i32* %line_size, align 4, !tbaa !5
  %call3 = call i8* %9(%struct.gs_memory_s* %12, i32 %13, i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i32 0, i32 0)) #4
  store i8* %call3, i8** %data, align 8, !tbaa !1
  %14 = load i8*, i8** %data, align 8, !tbaa !1
  %cmp = icmp eq i8* %14, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %magic = getelementptr inbounds %struct.b_header, %struct.b_header* %head, i32 0, i32 0
  %arrayidx = getelementptr inbounds [2 x i8], [2 x i8]* %magic, i32 0, i64 0
  store i8 121, i8* %arrayidx, align 1, !tbaa !26
  %magic4 = getelementptr inbounds %struct.b_header, %struct.b_header* %head, i32 0, i32 0
  %arrayidx5 = getelementptr inbounds [2 x i8], [2 x i8]* %magic4, i32 0, i64 1
  store i8 122, i8* %arrayidx5, align 1, !tbaa !26
  %15 = load %struct.gx_device_mgr_s*, %struct.gx_device_mgr_s** %bdev.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.gx_device_mgr_s, %struct.gx_device_mgr_s* %15, i32 0, i32 13
  %16 = load i32, i32* %width, align 4, !tbaa !7
  %shr = ashr i32 %16, 6
  %and = and i32 %shr, 63
  %add6 = add nsw i32 %and, 32
  %conv = trunc i32 %add6 to i8
  %h_wide = getelementptr inbounds %struct.b_header, %struct.b_header* %head, i32 0, i32 1
  store i8 %conv, i8* %h_wide, align 1, !tbaa !42
  %17 = load %struct.gx_device_mgr_s*, %struct.gx_device_mgr_s** %bdev.addr, align 8, !tbaa !1
  %width7 = getelementptr inbounds %struct.gx_device_mgr_s, %struct.gx_device_mgr_s* %17, i32 0, i32 13
  %18 = load i32, i32* %width7, align 4, !tbaa !7
  %and8 = and i32 %18, 63
  %add9 = add nsw i32 %and8, 32
  %conv10 = trunc i32 %add9 to i8
  %l_wide = getelementptr inbounds %struct.b_header, %struct.b_header* %head, i32 0, i32 2
  store i8 %conv10, i8* %l_wide, align 1, !tbaa !44
  %19 = load %struct.gx_device_mgr_s*, %struct.gx_device_mgr_s** %bdev.addr, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.gx_device_mgr_s, %struct.gx_device_mgr_s* %19, i32 0, i32 14
  %20 = load i32, i32* %height, align 4, !tbaa !45
  %shr11 = ashr i32 %20, 6
  %and12 = and i32 %shr11, 63
  %add13 = add nsw i32 %and12, 32
  %conv14 = trunc i32 %add13 to i8
  %h_high = getelementptr inbounds %struct.b_header, %struct.b_header* %head, i32 0, i32 3
  store i8 %conv14, i8* %h_high, align 1, !tbaa !46
  %21 = load %struct.gx_device_mgr_s*, %struct.gx_device_mgr_s** %bdev.addr, align 8, !tbaa !1
  %height15 = getelementptr inbounds %struct.gx_device_mgr_s, %struct.gx_device_mgr_s* %21, i32 0, i32 14
  %22 = load i32, i32* %height15, align 4, !tbaa !45
  %and16 = and i32 %22, 63
  %add17 = add nsw i32 %and16, 32
  %conv18 = trunc i32 %add17 to i8
  %l_high = getelementptr inbounds %struct.b_header, %struct.b_header* %head, i32 0, i32 4
  store i8 %conv18, i8* %l_high, align 1, !tbaa !47
  %23 = load %struct.gx_device_mgr_s*, %struct.gx_device_mgr_s** %bdev.addr, align 8, !tbaa !1
  %mgr_depth = getelementptr inbounds %struct.gx_device_mgr_s, %struct.gx_device_mgr_s* %23, i32 0, i32 68
  %24 = load i32, i32* %mgr_depth, align 4, !tbaa !25
  %and19 = and i32 %24, 63
  %add20 = add nsw i32 %and19, 32
  %conv21 = trunc i32 %add20 to i8
  %depth = getelementptr inbounds %struct.b_header, %struct.b_header* %head, i32 0, i32 5
  store i8 %conv21, i8* %depth, align 1, !tbaa !48
  %_reserved = getelementptr inbounds %struct.b_header, %struct.b_header* %head, i32 0, i32 6
  store i8 32, i8* %_reserved, align 1, !tbaa !49
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** %pstream.addr, align 8, !tbaa !1
  %call22 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %25, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i32 0, i32 0)) #4
  %26 = bitcast %struct.b_header* %head to i8*
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** %pstream.addr, align 8, !tbaa !1
  %call23 = call i64 @fwrite(i8* %26, i64 1, i64 8, %struct._IO_FILE* %27) #4
  %cmp24 = icmp ult i64 %call23, 8
  br i1 %cmp24, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %if.end
  store i32 -12, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.27:                                        ; preds = %if.end
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** %pstream.addr, align 8, !tbaa !1
  %call28 = call i32 @fflush(%struct._IO_FILE* %28) #4
  %29 = load %struct.gx_device_mgr_s*, %struct.gx_device_mgr_s** %bdev.addr, align 8, !tbaa !1
  %30 = load %struct.mgr_cursor_s*, %struct.mgr_cursor_s** %pcur.addr, align 8, !tbaa !1
  %dev = getelementptr inbounds %struct.mgr_cursor_s, %struct.mgr_cursor_s* %30, i32 0, i32 0
  store %struct.gx_device_mgr_s* %29, %struct.gx_device_mgr_s** %dev, align 8, !tbaa !50
  %31 = load %struct.gx_device_mgr_s*, %struct.gx_device_mgr_s** %bdev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_mgr_s, %struct.gx_device_mgr_s* %31, i32 0, i32 11
  %depth29 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 3
  %32 = load i16, i16* %depth29, align 2, !tbaa !51
  %conv30 = zext i16 %32 to i32
  %33 = load %struct.mgr_cursor_s*, %struct.mgr_cursor_s** %pcur.addr, align 8, !tbaa !1
  %bpp = getelementptr inbounds %struct.mgr_cursor_s, %struct.mgr_cursor_s* %33, i32 0, i32 1
  store i32 %conv30, i32* %bpp, align 4, !tbaa !52
  %34 = load i32, i32* %line_size, align 4, !tbaa !5
  %35 = load %struct.mgr_cursor_s*, %struct.mgr_cursor_s** %pcur.addr, align 8, !tbaa !1
  %line_size31 = getelementptr inbounds %struct.mgr_cursor_s, %struct.mgr_cursor_s* %35, i32 0, i32 2
  store i32 %34, i32* %line_size31, align 4, !tbaa !53
  %36 = load i8*, i8** %data, align 8, !tbaa !1
  %37 = load %struct.mgr_cursor_s*, %struct.mgr_cursor_s** %pcur.addr, align 8, !tbaa !1
  %data32 = getelementptr inbounds %struct.mgr_cursor_s, %struct.mgr_cursor_s* %37, i32 0, i32 3
  store i8* %36, i8** %data32, align 8, !tbaa !23
  %38 = load %struct.mgr_cursor_s*, %struct.mgr_cursor_s** %pcur.addr, align 8, !tbaa !1
  %lnum = getelementptr inbounds %struct.mgr_cursor_s, %struct.mgr_cursor_s* %38, i32 0, i32 4
  store i32 0, i32* %lnum, align 4, !tbaa !54
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.27, %if.then.26, %if.then
  %39 = bitcast i8** %data to i8*
  call void @llvm.lifetime.end(i64 8, i8* %39) #2
  %40 = bitcast i32* %line_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %40) #2
  %41 = bitcast %struct.b_header* %head to i8*
  call void @llvm.lifetime.end(i64 8, i8* %41) #2
  %42 = load i32, i32* %retval
  ret i32 %42
}

; Function Attrs: nounwind uwtable
define internal i32 @mgr_next_row(%struct.mgr_cursor_s* %pcur) #1 {
entry:
  %retval = alloca i32, align 4
  %pcur.addr = alloca %struct.mgr_cursor_s*, align 8
  store %struct.mgr_cursor_s* %pcur, %struct.mgr_cursor_s** %pcur.addr, align 8, !tbaa !1
  %0 = load %struct.mgr_cursor_s*, %struct.mgr_cursor_s** %pcur.addr, align 8, !tbaa !1
  %lnum = getelementptr inbounds %struct.mgr_cursor_s, %struct.mgr_cursor_s* %0, i32 0, i32 4
  %1 = load i32, i32* %lnum, align 4, !tbaa !54
  %2 = load %struct.mgr_cursor_s*, %struct.mgr_cursor_s** %pcur.addr, align 8, !tbaa !1
  %dev = getelementptr inbounds %struct.mgr_cursor_s, %struct.mgr_cursor_s* %2, i32 0, i32 0
  %3 = load %struct.gx_device_mgr_s*, %struct.gx_device_mgr_s** %dev, align 8, !tbaa !50
  %height = getelementptr inbounds %struct.gx_device_mgr_s, %struct.gx_device_mgr_s* %3, i32 0, i32 14
  %4 = load i32, i32* %height, align 4, !tbaa !45
  %cmp = icmp sge i32 %1, %4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct.mgr_cursor_s*, %struct.mgr_cursor_s** %pcur.addr, align 8, !tbaa !1
  %dev1 = getelementptr inbounds %struct.mgr_cursor_s, %struct.mgr_cursor_s* %5, i32 0, i32 0
  %6 = load %struct.gx_device_mgr_s*, %struct.gx_device_mgr_s** %dev1, align 8, !tbaa !50
  %7 = bitcast %struct.gx_device_mgr_s* %6 to %struct.gx_device_printer_s*
  %memory = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %7, i32 0, i32 3
  %8 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !27
  %non_gc_memory = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %8, i32 0, i32 3
  %9 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory, align 8, !tbaa !29
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %9, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %10 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !34
  %11 = load %struct.mgr_cursor_s*, %struct.mgr_cursor_s** %pcur.addr, align 8, !tbaa !1
  %dev2 = getelementptr inbounds %struct.mgr_cursor_s, %struct.mgr_cursor_s* %11, i32 0, i32 0
  %12 = load %struct.gx_device_mgr_s*, %struct.gx_device_mgr_s** %dev2, align 8, !tbaa !50
  %13 = bitcast %struct.gx_device_mgr_s* %12 to %struct.gx_device_printer_s*
  %memory3 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %13, i32 0, i32 3
  %14 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory3, align 8, !tbaa !27
  %non_gc_memory4 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %14, i32 0, i32 3
  %15 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory4, align 8, !tbaa !29
  %16 = load %struct.mgr_cursor_s*, %struct.mgr_cursor_s** %pcur.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.mgr_cursor_s, %struct.mgr_cursor_s* %16, i32 0, i32 3
  %17 = load i8*, i8** %data, align 8, !tbaa !23
  call void %10(%struct.gs_memory_s* %15, i8* %17, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i32 0, i32 0)) #4
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %18 = load %struct.mgr_cursor_s*, %struct.mgr_cursor_s** %pcur.addr, align 8, !tbaa !1
  %dev5 = getelementptr inbounds %struct.mgr_cursor_s, %struct.mgr_cursor_s* %18, i32 0, i32 0
  %19 = load %struct.gx_device_mgr_s*, %struct.gx_device_mgr_s** %dev5, align 8, !tbaa !50
  %20 = bitcast %struct.gx_device_mgr_s* %19 to %struct.gx_device_printer_s*
  %21 = load %struct.mgr_cursor_s*, %struct.mgr_cursor_s** %pcur.addr, align 8, !tbaa !1
  %lnum6 = getelementptr inbounds %struct.mgr_cursor_s, %struct.mgr_cursor_s* %21, i32 0, i32 4
  %22 = load i32, i32* %lnum6, align 4, !tbaa !54
  %inc = add nsw i32 %22, 1
  store i32 %inc, i32* %lnum6, align 4, !tbaa !54
  %23 = load %struct.mgr_cursor_s*, %struct.mgr_cursor_s** %pcur.addr, align 8, !tbaa !1
  %data7 = getelementptr inbounds %struct.mgr_cursor_s, %struct.mgr_cursor_s* %23, i32 0, i32 3
  %24 = load i8*, i8** %data7, align 8, !tbaa !23
  %25 = load %struct.mgr_cursor_s*, %struct.mgr_cursor_s** %pcur.addr, align 8, !tbaa !1
  %line_size = getelementptr inbounds %struct.mgr_cursor_s, %struct.mgr_cursor_s* %25, i32 0, i32 2
  %26 = load i32, i32* %line_size, align 4, !tbaa !53
  %call = call i32 @gdev_prn_copy_scan_lines(%struct.gx_device_printer_s* %20, i32 %22, i8* %24, i32 %26) #4
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %27 = load i32, i32* %retval
  ret i32 %27
}

declare i64 @fwrite(i8*, i64, i64, %struct._IO_FILE*) #0

declare i32 @gx_device_raster(%struct.gx_device_s*, i32) #0

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #0

declare i32 @fflush(%struct._IO_FILE*) #0

declare i32 @gdev_prn_copy_scan_lines(%struct.gx_device_printer_s*, i32, i8*, i32) #0

; Function Attrs: nounwind uwtable
define internal i32 @clut2mgr(i32 %v, i32 %bits) #1 {
entry:
  %v.addr = alloca i32, align 4
  %bits.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %v, i32* %v.addr, align 4, !tbaa !5
  store i32 %bits, i32* %bits.addr, align 4, !tbaa !5
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load i32, i32* %bits.addr, align 4, !tbaa !5
  %shl = shl i32 1, %1
  %sub = sub nsw i32 %shl, 1
  %div = udiv i32 -1, %sub
  store i32 %div, i32* %i, align 4, !tbaa !5
  %2 = load i32, i32* %v.addr, align 4, !tbaa !5
  %3 = load i32, i32* %i, align 4, !tbaa !5
  %mul = mul i32 %2, %3
  %div1 = udiv i32 %mul, 65536
  %4 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %4) #2
  ret i32 %div1
}

; Function Attrs: nounwind uwtable
define internal void @swap_bwords(i8* %p, i32 %n) #1 {
entry:
  %p.addr = alloca i8*, align 8
  %n.addr = alloca i32, align 4
  %c = alloca i8, align 1
  store i8* %p, i8** %p.addr, align 8, !tbaa !1
  store i32 %n, i32* %n.addr, align 4, !tbaa !5
  call void @llvm.lifetime.start(i64 1, i8* %c) #2
  %0 = load i32, i32* %n.addr, align 4, !tbaa !5
  %div = sdiv i32 %0, 2
  store i32 %div, i32* %n.addr, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %n.addr, align 4, !tbaa !5
  %cmp = icmp sgt i32 %1, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %p.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 0
  %3 = load i8, i8* %arrayidx, align 1, !tbaa !26
  store i8 %3, i8* %c, align 1, !tbaa !26
  %4 = load i8*, i8** %p.addr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds i8, i8* %4, i64 1
  %5 = load i8, i8* %arrayidx1, align 1, !tbaa !26
  %6 = load i8*, i8** %p.addr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds i8, i8* %6, i64 0
  store i8 %5, i8* %arrayidx2, align 1, !tbaa !26
  %7 = load i8, i8* %c, align 1, !tbaa !26
  %8 = load i8*, i8** %p.addr, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds i8, i8* %8, i64 1
  store i8 %7, i8* %arrayidx3, align 1, !tbaa !26
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %n.addr, align 4, !tbaa !5
  %dec = add nsw i32 %9, -1
  store i32 %dec, i32* %n.addr, align 4, !tbaa !5
  %10 = load i8*, i8** %p.addr, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %10, i64 2
  store i8* %add.ptr, i8** %p.addr, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end(i64 1, i8* %c) #2
  ret void
}

; Function Attrs: nounwind
declare i8* @memset(i8*, i32, i64) #3

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
!7 = !{!8, !6, i64 832}
!8 = !{!"gx_device_mgr_s", !6, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !6, i64 40, !2, i64 48, !9, i64 56, !6, i64 80, !6, i64 84, !6, i64 88, !11, i64 96, !14, i64 816, !6, i64 832, !6, i64 836, !6, i64 840, !6, i64 844, !6, i64 848, !6, i64 852, !3, i64 856, !3, i64 864, !6, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !10, i64 928, !10, i64 936, !6, i64 944, !6, i64 948, !6, i64 952, !6, i64 956, !6, i64 960, !10, i64 968, !10, i64 976, !15, i64 984, !6, i64 1052, !6, i64 1056, !16, i64 1064, !2, i64 1104, !3, i64 1112, !18, i64 1120, !19, i64 1144, !3, i64 1728, !20, i64 12968, !3, i64 13056, !6, i64 17152, !6, i64 17156, !6, i64 17160, !6, i64 17164, !6, i64 17168, !6, i64 17172, !2, i64 17176, !10, i64 17184, !2, i64 17192, !2, i64 17200, !2, i64 17208, !2, i64 17216, !2, i64 17224, !6, i64 17232, !2, i64 17240, !6, i64 17248, !6, i64 17252, !22, i64 17256, !6, i64 17288, !2, i64 17296, !19, i64 17304, !19, i64 17888, !6, i64 18472, !3, i64 18476, !3, i64 18492, !3, i64 18508, !3, i64 18764, !3, i64 19020}
!9 = !{!"rc_header_s", !10, i64 0, !2, i64 8, !2, i64 16}
!10 = !{!"long", !3, i64 0}
!11 = !{!"gx_device_color_info_s", !6, i64 0, !6, i64 4, !3, i64 8, !12, i64 12, !3, i64 14, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !13, i64 32, !3, i64 40, !3, i64 44, !3, i64 108, !3, i64 176, !2, i64 688, !3, i64 696, !10, i64 704, !6, i64 712}
!12 = !{!"short", !3, i64 0}
!13 = !{!"gx_device_anti_alias_info_s", !6, i64 0, !6, i64 4}
!14 = !{!"gx_device_cached_colors_s", !10, i64 0, !10, i64 8}
!15 = !{!"gx_stroked_gradient_recognizer_s", !6, i64 0, !3, i64 4, !3, i64 36}
!16 = !{!"gdev_space_params_s", !10, i64 0, !10, i64 8, !17, i64 16, !6, i64 32, !3, i64 36}
!17 = !{!"gx_band_params_s", !6, i64 0, !6, i64 4, !10, i64 8}
!18 = !{!"gx_page_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16}
!19 = !{!"gx_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176, !2, i64 184, !2, i64 192, !2, i64 200, !2, i64 208, !2, i64 216, !2, i64 224, !2, i64 232, !2, i64 240, !2, i64 248, !2, i64 256, !2, i64 264, !2, i64 272, !2, i64 280, !2, i64 288, !2, i64 296, !2, i64 304, !2, i64 312, !2, i64 320, !2, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !2, i64 376, !2, i64 384, !2, i64 392, !2, i64 400, !2, i64 408, !2, i64 416, !2, i64 424, !2, i64 432, !2, i64 440, !2, i64 448, !2, i64 456, !2, i64 464, !2, i64 472, !2, i64 480, !2, i64 488, !2, i64 496, !2, i64 504, !2, i64 512, !2, i64 520, !2, i64 528, !2, i64 536, !2, i64 544, !2, i64 552, !2, i64 560, !2, i64 568, !2, i64 576}
!20 = !{!"gx_printer_device_procs_s", !2, i64 0, !2, i64 8, !21, i64 16, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80}
!21 = !{!"gx_device_buf_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24}
!22 = !{!"bg_print_s", !2, i64 0, !2, i64 8, !2, i64 16, !6, i64 24, !6, i64 28}
!23 = !{!24, !2, i64 16}
!24 = !{!"mgr_cursor_s", !2, i64 0, !6, i64 8, !6, i64 12, !2, i64 16, !6, i64 24}
!25 = !{!8, !6, i64 18472}
!26 = !{!3, !3, i64 0}
!27 = !{!28, !2, i64 24}
!28 = !{!"gx_device_printer_s", !6, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !6, i64 40, !2, i64 48, !9, i64 56, !6, i64 80, !6, i64 84, !6, i64 88, !11, i64 96, !14, i64 816, !6, i64 832, !6, i64 836, !6, i64 840, !6, i64 844, !6, i64 848, !6, i64 852, !3, i64 856, !3, i64 864, !6, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !10, i64 928, !10, i64 936, !6, i64 944, !6, i64 948, !6, i64 952, !6, i64 956, !6, i64 960, !10, i64 968, !10, i64 976, !15, i64 984, !6, i64 1052, !6, i64 1056, !16, i64 1064, !2, i64 1104, !3, i64 1112, !18, i64 1120, !19, i64 1144, !3, i64 1728, !20, i64 12968, !3, i64 13056, !6, i64 17152, !6, i64 17156, !6, i64 17160, !6, i64 17164, !6, i64 17168, !6, i64 17172, !2, i64 17176, !10, i64 17184, !2, i64 17192, !2, i64 17200, !2, i64 17208, !2, i64 17216, !2, i64 17224, !6, i64 17232, !2, i64 17240, !6, i64 17248, !6, i64 17252, !22, i64 17256, !6, i64 17288, !2, i64 17296, !19, i64 17304, !19, i64 17888}
!29 = !{!30, !2, i64 200}
!30 = !{!"gs_memory_s", !2, i64 0, !31, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!31 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!32 = !{!30, !2, i64 88}
!33 = !{!8, !2, i64 24}
!34 = !{!30, !2, i64 24}
!35 = !{!36, !12, i64 0}
!36 = !{!"nclut", !12, i64 0, !12, i64 2, !12, i64 4, !12, i64 6}
!37 = !{!36, !12, i64 6}
!38 = !{!36, !12, i64 4}
!39 = !{!36, !12, i64 2}
!40 = !{!12, !12, i64 0}
!41 = !{!10, !10, i64 0}
!42 = !{!43, !3, i64 2}
!43 = !{!"b_header", !3, i64 0, !3, i64 2, !3, i64 3, !3, i64 4, !3, i64 5, !3, i64 6, !3, i64 7}
!44 = !{!43, !3, i64 3}
!45 = !{!8, !6, i64 836}
!46 = !{!43, !3, i64 4}
!47 = !{!43, !3, i64 5}
!48 = !{!43, !3, i64 6}
!49 = !{!43, !3, i64 7}
!50 = !{!24, !2, i64 0}
!51 = !{!8, !12, i64 108}
!52 = !{!24, !6, i64 8}
!53 = !{!24, !6, i64 12}
!54 = !{!24, !6, i64 24}
