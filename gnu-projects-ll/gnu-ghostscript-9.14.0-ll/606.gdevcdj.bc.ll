; ModuleID = './gdevcdj.bc'
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
%struct.bjc600_params = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.bjc_params = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.stringParamDescription = type { i8*, i32 }
%struct.gx_device_bjc800_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [11240 x i8], %struct.gx_printer_device_procs_s, [4096 x i8], i32, i32, i32, i32, i32, i32, %struct._IO_FILE*, i64, i8*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s*, i32)*, %struct.gx_page_queue_s*, i32, %struct.gx_device_printer_s*, i32, i32, %struct.bg_print_s, i32, %struct.gx_saved_pages_list_s*, %struct.gx_device_procs_s, %struct.gx_device_procs_s, i16, i32, i32, i32, float, %struct.bjc_params }
%struct.gx_device_colour_prn = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [11240 x i8], %struct.gx_printer_device_procs_s, [4096 x i8], i32, i32, i32, i32, i32, i32, %struct._IO_FILE*, i64, i8*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s*, i32)*, %struct.gx_page_queue_s*, i32, %struct.gx_device_printer_s*, i32, i32, %struct.bg_print_s, i32, %struct.gx_saved_pages_list_s*, %struct.gx_device_procs_s, %struct.gx_device_procs_s, i16, i32, i32 }
%struct.gx_device_cdj_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [11240 x i8], %struct.gx_printer_device_procs_s, [4096 x i8], i32, i32, i32, i32, i32, i32, %struct._IO_FILE*, i64, i8*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s*, i32)*, %struct.gx_page_queue_s*, i32, %struct.gx_device_printer_s*, i32, i32, %struct.bg_print_s, i32, %struct.gx_saved_pages_list_s*, %struct.gx_device_procs_s, %struct.gx_device_procs_s, i16, i32, i32, i32, i32 }
%struct.gx_device_pjxl_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [11240 x i8], %struct.gx_printer_device_procs_s, [4096 x i8], i32, i32, i32, i32, i32, i32, %struct._IO_FILE*, i64, i8*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s*, i32)*, %struct.gx_page_queue_s*, i32, %struct.gx_device_printer_s*, i32, i32, %struct.bg_print_s, i32, %struct.gx_saved_pages_list_s*, %struct.gx_device_procs_s, %struct.gx_device_procs_s, i16, i32, i32, i32, i32 }
%struct.gx_device_bjc600_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [11240 x i8], %struct.gx_printer_device_procs_s, [4096 x i8], i32, i32, i32, i32, i32, i32, %struct._IO_FILE*, i64, i8*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s*, i32)*, %struct.gx_page_queue_s*, i32, %struct.gx_device_printer_s*, i32, i32, %struct.bg_print_s, i32, %struct.gx_saved_pages_list_s*, %struct.gx_device_procs_s, %struct.gx_device_procs_s, i16, i32, i32, i32, float, %struct.bjc600_params }
%struct.gs_param_float_array_s = type { float*, i32, i32 }
%struct.ep_globals = type { i64*, i32, [4 x [64 x i8*]], i8*, i32, i32, i32, i32, i32, i32, %struct.gs_memory_s* }

@cdj500_procs = internal global %struct.gx_device_procs_s { i32 (%struct.gx_device_s*)* @dj500c_open, void (%struct.gx_device_s*, %struct.gs_matrix_s*)* @gx_default_get_initial_matrix, i32 (%struct.gx_device_s*)* @gx_default_sync_output, i32 (%struct.gx_device_s*, i32, i32)* @gdev_prn_bg_output_page, i32 (%struct.gx_device_s*)* @gdev_prn_close, i64 (%struct.gx_device_s*, i16*)* @gdev_pcl_map_rgb_color, i32 (%struct.gx_device_s*, i64, i16*)* @gdev_pcl_map_color_rgb, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* null, i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* null, i32 (%struct.gx_device_s*, i32, i8*, i8**)* @gx_default_get_bits, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @cdj_get_params, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @cdj_put_params, i64 (%struct.gx_device_s*, i16*)* null, %struct.gx_xfont_procs_s* (%struct.gx_device_s*)* null, %struct.gx_device_s* (%struct.gx_device_s*)* null, i64 (%struct.gx_device_s*, i16, i16, i16, i16)* null, %struct.gx_device_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)* null, i32 (%struct.gx_device_s*, i32, i32*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* null, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)* null, i32 (%struct.gx_device_s*, i64, i16*)* null, i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)* null, i32 (%struct.gx_device_s*, %struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_transparency_group_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gx_transparency_mask_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32)* null, i64 (%struct.gx_device_s*, i16*)* null, i32 (%struct.gx_device_s*, i64, i16*)* null, i32 (%struct.gx_device_s*, i64, %struct.gs_pattern1_instance_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* null, %struct.gs_devn_params_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i8*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)* null, void (%struct.gx_device_s*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_process_page_options_s*)* null }, align 8
@.str = private unnamed_addr constant [8 x i8] c"cdjmono\00", align 1
@st_device_printer = external constant %struct.gs_memory_struct_type_s, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"DeviceGray\00", align 1
@gs_cdjmono_device = global { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [11240 x i8], { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* }, [4096 x i8], i32, i32, i32, i32, i32, i32, %struct._IO_FILE*, i64, i8*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s*, i32)*, %struct.gx_page_queue_s*, i32, %struct.gx_device_printer_s*, i32, i32, %struct.bg_print_s, i32, %struct.gx_saved_pages_list_s*, %struct.gx_device_procs_s, %struct.gx_device_procs_s, i16, i32, i32, i32, i32 } { i32 18496, %struct.gx_device_procs_s* @cdj500_procs, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), %struct.gs_memory_s* null, %struct.gs_memory_struct_type_s* @st_device_printer, i32 0, void (%struct.gx_device_s*)* null, %struct.rc_header_s zeroinitializer, i32 0, i32 0, i32 0, %struct.gx_device_color_info_s { i32 1, i32 1, i32 1, i16 1, i8 0, i32 1, i32 0, i32 2, i32 0, %struct.gx_device_anti_alias_info_s { i32 1, i32 1 }, i32 -1, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [64 x i64] zeroinitializer, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 -1, i64 0, i32 0 }, %struct.gx_device_cached_colors_s { i64 -1, i64 -1 }, i32 2550, i32 3300, i32 0, i32 0, i32 0, i32 0, [2 x float] [float 6.120000e+02, float 7.920000e+02], [4 x float] zeroinitializer, i32 0, [2 x float] [float 3.000000e+02, float 3.000000e+02], [2 x float] [float 3.000000e+02, float 3.000000e+02], [2 x float] zeroinitializer, [4 x float] zeroinitializer, i64 0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, %struct.gx_stroked_gradient_recognizer_s zeroinitializer, i32 0, i32 0, %struct.gdev_space_params_s { i64 10000000, i64 4000000, %struct.gx_band_params_s zeroinitializer, i32 0, i32 0 }, %struct.cmm_dev_profile_s* null, i32 0, %struct.gx_page_device_procs_s { i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_install, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_begin_page, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* @gx_default_end_page }, %struct.gx_device_procs_s zeroinitializer, [11240 x i8] zeroinitializer, { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* } { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)* @dj500c_print_page, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_print_page_copies, %struct.gx_device_buf_procs_s { i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, %struct.gx_render_plane_s*, %struct.gs_memory_s*, %struct.gx_colors_usage_s*)* @gx_default_create_buf_device, i32 (%struct.gx_device_buf_space_s*, %struct.gx_device_s*, %struct.gx_render_plane_s*, i32, i32)* @gx_default_size_buf_device, i32 (%struct.gx_device_s*, i8*, i32, i8**, i32, i32, i32)* @gx_default_setup_buf_device, void (%struct.gx_device_s*)* @gx_default_destroy_buf_device }, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)* @gx_default_get_space_params, i32 (%struct.gdev_prn_start_render_params_s*)* @gx_default_start_render_thread, i32 (%struct.gx_device_printer_s*)* @gx_default_open_render_device, i32 (%struct.gx_device_printer_s*)* @gx_default_close_render_device, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_buffer_page }, [4096 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 -1, i32 0, %struct._IO_FILE* null, i64 0, i8* null, %struct.gs_memory_s* null, %struct.gs_memory_s* null, i32 (%struct.gx_device_s*, i32)* null, %struct.gx_page_queue_s* null, i32 0, %struct.gx_device_printer_s* null, i32 0, i32 0, %struct.bg_print_s zeroinitializer, i32 0, %struct.gx_saved_pages_list_s* null, %struct.gx_device_procs_s zeroinitializer, %struct.gx_device_procs_s zeroinitializer, i16 0, i32 1, i32 4, i32 0, i32 1 }, align 8
@.str.2 = private unnamed_addr constant [9 x i8] c"cdeskjet\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"DeviceRGB\00", align 1
@gs_cdeskjet_device = global { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [11240 x i8], { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* }, [4096 x i8], i32, i32, i32, i32, i32, i32, %struct._IO_FILE*, i64, i8*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s*, i32)*, %struct.gx_page_queue_s*, i32, %struct.gx_device_printer_s*, i32, i32, %struct.bg_print_s, i32, %struct.gx_saved_pages_list_s*, %struct.gx_device_procs_s, %struct.gx_device_procs_s, i16, i32, i32, i32, i32 } { i32 18496, %struct.gx_device_procs_s* @cdj500_procs, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), %struct.gs_memory_s* null, %struct.gs_memory_struct_type_s* @st_device_printer, i32 0, void (%struct.gx_device_s*)* null, %struct.rc_header_s zeroinitializer, i32 0, i32 0, i32 0, %struct.gx_device_color_info_s { i32 3, i32 3, i32 1, i16 3, i8 -1, i32 1, i32 1, i32 2, i32 2, %struct.gx_device_anti_alias_info_s { i32 1, i32 1 }, i32 -1, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [64 x i64] zeroinitializer, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i32 -1, i64 0, i32 0 }, %struct.gx_device_cached_colors_s { i64 -1, i64 -1 }, i32 2550, i32 3300, i32 0, i32 0, i32 0, i32 0, [2 x float] [float 6.120000e+02, float 7.920000e+02], [4 x float] zeroinitializer, i32 0, [2 x float] [float 3.000000e+02, float 3.000000e+02], [2 x float] [float 3.000000e+02, float 3.000000e+02], [2 x float] zeroinitializer, [4 x float] zeroinitializer, i64 0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, %struct.gx_stroked_gradient_recognizer_s zeroinitializer, i32 0, i32 0, %struct.gdev_space_params_s { i64 10000000, i64 4000000, %struct.gx_band_params_s zeroinitializer, i32 0, i32 0 }, %struct.cmm_dev_profile_s* null, i32 0, %struct.gx_page_device_procs_s { i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_install, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_begin_page, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* @gx_default_end_page }, %struct.gx_device_procs_s zeroinitializer, [11240 x i8] zeroinitializer, { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* } { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)* @dj500c_print_page, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_print_page_copies, %struct.gx_device_buf_procs_s { i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, %struct.gx_render_plane_s*, %struct.gs_memory_s*, %struct.gx_colors_usage_s*)* @gx_default_create_buf_device, i32 (%struct.gx_device_buf_space_s*, %struct.gx_device_s*, %struct.gx_render_plane_s*, i32, i32)* @gx_default_size_buf_device, i32 (%struct.gx_device_s*, i8*, i32, i8**, i32, i32, i32)* @gx_default_setup_buf_device, void (%struct.gx_device_s*)* @gx_default_destroy_buf_device }, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)* @gx_default_get_space_params, i32 (%struct.gdev_prn_start_render_params_s*)* @gx_default_start_render_thread, i32 (%struct.gx_device_printer_s*)* @gx_default_open_render_device, i32 (%struct.gx_device_printer_s*)* @gx_default_close_render_device, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_buffer_page }, [4096 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 -1, i32 0, %struct._IO_FILE* null, i64 0, i8* null, %struct.gs_memory_s* null, %struct.gs_memory_s* null, i32 (%struct.gx_device_s*, i32)* null, %struct.gx_page_queue_s* null, i32 0, %struct.gx_device_printer_s* null, i32 0, i32 0, %struct.bg_print_s zeroinitializer, i32 0, %struct.gx_saved_pages_list_s* null, %struct.gx_device_procs_s zeroinitializer, %struct.gx_device_procs_s zeroinitializer, i16 0, i32 3, i32 4, i32 2, i32 1 }, align 8
@.str.4 = private unnamed_addr constant [9 x i8] c"cdjcolor\00", align 1
@gs_cdjcolor_device = global { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [11240 x i8], { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* }, [4096 x i8], i32, i32, i32, i32, i32, i32, %struct._IO_FILE*, i64, i8*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s*, i32)*, %struct.gx_page_queue_s*, i32, %struct.gx_device_printer_s*, i32, i32, %struct.bg_print_s, i32, %struct.gx_saved_pages_list_s*, %struct.gx_device_procs_s, %struct.gx_device_procs_s, i16, i32, i32, i32, i32 } { i32 18496, %struct.gx_device_procs_s* @cdj500_procs, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), %struct.gs_memory_s* null, %struct.gs_memory_struct_type_s* @st_device_printer, i32 0, void (%struct.gx_device_s*)* null, %struct.rc_header_s zeroinitializer, i32 0, i32 0, i32 0, %struct.gx_device_color_info_s { i32 3, i32 3, i32 1, i16 24, i8 -1, i32 255, i32 255, i32 256, i32 256, %struct.gx_device_anti_alias_info_s { i32 1, i32 1 }, i32 -1, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [64 x i64] zeroinitializer, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i32 -1, i64 0, i32 0 }, %struct.gx_device_cached_colors_s { i64 -1, i64 -1 }, i32 2550, i32 3300, i32 0, i32 0, i32 0, i32 0, [2 x float] [float 6.120000e+02, float 7.920000e+02], [4 x float] zeroinitializer, i32 0, [2 x float] [float 3.000000e+02, float 3.000000e+02], [2 x float] [float 3.000000e+02, float 3.000000e+02], [2 x float] zeroinitializer, [4 x float] zeroinitializer, i64 0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, %struct.gx_stroked_gradient_recognizer_s zeroinitializer, i32 0, i32 0, %struct.gdev_space_params_s { i64 10000000, i64 4000000, %struct.gx_band_params_s zeroinitializer, i32 0, i32 0 }, %struct.cmm_dev_profile_s* null, i32 0, %struct.gx_page_device_procs_s { i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_install, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_begin_page, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* @gx_default_end_page }, %struct.gx_device_procs_s zeroinitializer, [11240 x i8] zeroinitializer, { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* } { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)* @dj500c_print_page, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_print_page_copies, %struct.gx_device_buf_procs_s { i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, %struct.gx_render_plane_s*, %struct.gs_memory_s*, %struct.gx_colors_usage_s*)* @gx_default_create_buf_device, i32 (%struct.gx_device_buf_space_s*, %struct.gx_device_s*, %struct.gx_render_plane_s*, i32, i32)* @gx_default_size_buf_device, i32 (%struct.gx_device_s*, i8*, i32, i8**, i32, i32, i32)* @gx_default_setup_buf_device, void (%struct.gx_device_s*)* @gx_default_destroy_buf_device }, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)* @gx_default_get_space_params, i32 (%struct.gdev_prn_start_render_params_s*)* @gx_default_start_render_thread, i32 (%struct.gx_device_printer_s*)* @gx_default_open_render_device, i32 (%struct.gx_device_printer_s*)* @gx_default_close_render_device, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_buffer_page }, [4096 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 -1, i32 0, %struct._IO_FILE* null, i64 0, i8* null, %struct.gs_memory_s* null, %struct.gs_memory_s* null, i32 (%struct.gx_device_s*, i32)* null, %struct.gx_page_queue_s* null, i32 0, %struct.gx_device_printer_s* null, i32 0, i32 0, %struct.bg_print_s zeroinitializer, i32 0, %struct.gx_saved_pages_list_s* null, %struct.gx_device_procs_s zeroinitializer, %struct.gx_device_procs_s zeroinitializer, i16 0, i32 24, i32 4, i32 2, i32 1 }, align 8
@.str.5 = private unnamed_addr constant [7 x i8] c"cdj500\00", align 1
@gs_cdj500_device = global { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [11240 x i8], { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* }, [4096 x i8], i32, i32, i32, i32, i32, i32, %struct._IO_FILE*, i64, i8*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s*, i32)*, %struct.gx_page_queue_s*, i32, %struct.gx_device_printer_s*, i32, i32, %struct.bg_print_s, i32, %struct.gx_saved_pages_list_s*, %struct.gx_device_procs_s, %struct.gx_device_procs_s, i16, i32, i32, i32, i32 } { i32 18496, %struct.gx_device_procs_s* @cdj500_procs, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), %struct.gs_memory_s* null, %struct.gs_memory_struct_type_s* @st_device_printer, i32 0, void (%struct.gx_device_s*)* null, %struct.rc_header_s zeroinitializer, i32 0, i32 0, i32 0, %struct.gx_device_color_info_s { i32 3, i32 3, i32 1, i16 24, i8 -1, i32 255, i32 255, i32 256, i32 256, %struct.gx_device_anti_alias_info_s { i32 1, i32 1 }, i32 -1, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [64 x i64] zeroinitializer, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i32 -1, i64 0, i32 0 }, %struct.gx_device_cached_colors_s { i64 -1, i64 -1 }, i32 2550, i32 3300, i32 0, i32 0, i32 0, i32 0, [2 x float] [float 6.120000e+02, float 7.920000e+02], [4 x float] zeroinitializer, i32 0, [2 x float] [float 3.000000e+02, float 3.000000e+02], [2 x float] [float 3.000000e+02, float 3.000000e+02], [2 x float] zeroinitializer, [4 x float] zeroinitializer, i64 0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, %struct.gx_stroked_gradient_recognizer_s zeroinitializer, i32 0, i32 0, %struct.gdev_space_params_s { i64 10000000, i64 4000000, %struct.gx_band_params_s zeroinitializer, i32 0, i32 0 }, %struct.cmm_dev_profile_s* null, i32 0, %struct.gx_page_device_procs_s { i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_install, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_begin_page, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* @gx_default_end_page }, %struct.gx_device_procs_s zeroinitializer, [11240 x i8] zeroinitializer, { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* } { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)* @dj500c_print_page, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_print_page_copies, %struct.gx_device_buf_procs_s { i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, %struct.gx_render_plane_s*, %struct.gs_memory_s*, %struct.gx_colors_usage_s*)* @gx_default_create_buf_device, i32 (%struct.gx_device_buf_space_s*, %struct.gx_device_s*, %struct.gx_render_plane_s*, i32, i32)* @gx_default_size_buf_device, i32 (%struct.gx_device_s*, i8*, i32, i8**, i32, i32, i32)* @gx_default_setup_buf_device, void (%struct.gx_device_s*)* @gx_default_destroy_buf_device }, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)* @gx_default_get_space_params, i32 (%struct.gdev_prn_start_render_params_s*)* @gx_default_start_render_thread, i32 (%struct.gx_device_printer_s*)* @gx_default_open_render_device, i32 (%struct.gx_device_printer_s*)* @gx_default_close_render_device, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_buffer_page }, [4096 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 -1, i32 0, %struct._IO_FILE* null, i64 0, i8* null, %struct.gs_memory_s* null, %struct.gs_memory_s* null, i32 (%struct.gx_device_s*, i32)* null, %struct.gx_page_queue_s* null, i32 0, %struct.gx_device_printer_s* null, i32 0, i32 0, %struct.bg_print_s zeroinitializer, i32 0, %struct.gx_saved_pages_list_s* null, %struct.gx_device_procs_s zeroinitializer, %struct.gx_device_procs_s zeroinitializer, i16 0, i32 24, i32 4, i32 2, i32 1 }, align 8
@cdj550_procs = internal global %struct.gx_device_procs_s { i32 (%struct.gx_device_s*)* @dj550c_open, void (%struct.gx_device_s*, %struct.gs_matrix_s*)* @gx_default_get_initial_matrix, i32 (%struct.gx_device_s*)* @gx_default_sync_output, i32 (%struct.gx_device_s*, i32, i32)* @gdev_prn_bg_output_page, i32 (%struct.gx_device_s*)* @gdev_prn_close, i64 (%struct.gx_device_s*, i16*)* @gdev_pcl_map_rgb_color, i32 (%struct.gx_device_s*, i64, i16*)* @gdev_pcl_map_color_rgb, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* null, i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* null, i32 (%struct.gx_device_s*, i32, i8*, i8**)* @gx_default_get_bits, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @cdj_get_params, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @cdj_put_params, i64 (%struct.gx_device_s*, i16*)* null, %struct.gx_xfont_procs_s* (%struct.gx_device_s*)* null, %struct.gx_device_s* (%struct.gx_device_s*)* null, i64 (%struct.gx_device_s*, i16, i16, i16, i16)* null, %struct.gx_device_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)* null, i32 (%struct.gx_device_s*, i32, i32*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* null, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)* null, i32 (%struct.gx_device_s*, i64, i16*)* null, i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)* null, i32 (%struct.gx_device_s*, %struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_transparency_group_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gx_transparency_mask_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32)* null, i64 (%struct.gx_device_s*, i16*)* null, i32 (%struct.gx_device_s*, i64, i16*)* null, i32 (%struct.gx_device_s*, i64, %struct.gs_pattern1_instance_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* null, %struct.gs_devn_params_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i8*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)* null, void (%struct.gx_device_s*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_process_page_options_s*)* null }, align 8
@.str.6 = private unnamed_addr constant [7 x i8] c"cdj550\00", align 1
@gs_cdj550_device = global { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [11240 x i8], { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* }, [4096 x i8], i32, i32, i32, i32, i32, i32, %struct._IO_FILE*, i64, i8*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s*, i32)*, %struct.gx_page_queue_s*, i32, %struct.gx_device_printer_s*, i32, i32, %struct.bg_print_s, i32, %struct.gx_saved_pages_list_s*, %struct.gx_device_procs_s, %struct.gx_device_procs_s, i16, i32, i32, i32, i32 } { i32 18496, %struct.gx_device_procs_s* @cdj550_procs, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0), %struct.gs_memory_s* null, %struct.gs_memory_struct_type_s* @st_device_printer, i32 0, void (%struct.gx_device_s*)* null, %struct.rc_header_s zeroinitializer, i32 0, i32 0, i32 0, %struct.gx_device_color_info_s { i32 3, i32 3, i32 1, i16 24, i8 -1, i32 255, i32 255, i32 256, i32 256, %struct.gx_device_anti_alias_info_s { i32 1, i32 1 }, i32 -1, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [64 x i64] zeroinitializer, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i32 -1, i64 0, i32 0 }, %struct.gx_device_cached_colors_s { i64 -1, i64 -1 }, i32 2550, i32 3300, i32 0, i32 0, i32 0, i32 0, [2 x float] [float 6.120000e+02, float 7.920000e+02], [4 x float] zeroinitializer, i32 0, [2 x float] [float 3.000000e+02, float 3.000000e+02], [2 x float] [float 3.000000e+02, float 3.000000e+02], [2 x float] zeroinitializer, [4 x float] zeroinitializer, i64 0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, %struct.gx_stroked_gradient_recognizer_s zeroinitializer, i32 0, i32 0, %struct.gdev_space_params_s { i64 10000000, i64 4000000, %struct.gx_band_params_s zeroinitializer, i32 0, i32 0 }, %struct.cmm_dev_profile_s* null, i32 0, %struct.gx_page_device_procs_s { i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_install, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_begin_page, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* @gx_default_end_page }, %struct.gx_device_procs_s zeroinitializer, [11240 x i8] zeroinitializer, { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* } { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)* @dj550c_print_page, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_print_page_copies, %struct.gx_device_buf_procs_s { i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, %struct.gx_render_plane_s*, %struct.gs_memory_s*, %struct.gx_colors_usage_s*)* @gx_default_create_buf_device, i32 (%struct.gx_device_buf_space_s*, %struct.gx_device_s*, %struct.gx_render_plane_s*, i32, i32)* @gx_default_size_buf_device, i32 (%struct.gx_device_s*, i8*, i32, i8**, i32, i32, i32)* @gx_default_setup_buf_device, void (%struct.gx_device_s*)* @gx_default_destroy_buf_device }, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)* @gx_default_get_space_params, i32 (%struct.gdev_prn_start_render_params_s*)* @gx_default_start_render_thread, i32 (%struct.gx_device_printer_s*)* @gx_default_open_render_device, i32 (%struct.gx_device_printer_s*)* @gx_default_close_render_device, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_buffer_page }, [4096 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 -1, i32 0, %struct._IO_FILE* null, i64 0, i8* null, %struct.gs_memory_s* null, %struct.gs_memory_s* null, i32 (%struct.gx_device_s*, i32)* null, %struct.gx_page_queue_s* null, i32 0, %struct.gx_device_printer_s* null, i32 0, i32 0, %struct.bg_print_s zeroinitializer, i32 0, %struct.gx_saved_pages_list_s* null, %struct.gx_device_procs_s zeroinitializer, %struct.gx_device_procs_s zeroinitializer, i16 0, i32 24, i32 0, i32 2, i32 1 }, align 8
@.str.7 = private unnamed_addr constant [9 x i8] c"picty180\00", align 1
@gs_picty180_device = global { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [11240 x i8], { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* }, [4096 x i8], i32, i32, i32, i32, i32, i32, %struct._IO_FILE*, i64, i8*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s*, i32)*, %struct.gx_page_queue_s*, i32, %struct.gx_device_printer_s*, i32, i32, %struct.bg_print_s, i32, %struct.gx_saved_pages_list_s*, %struct.gx_device_procs_s, %struct.gx_device_procs_s, i16, i32, i32, i32, i32 } { i32 18496, %struct.gx_device_procs_s* @cdj550_procs, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i32 0, i32 0), %struct.gs_memory_s* null, %struct.gs_memory_struct_type_s* @st_device_printer, i32 0, void (%struct.gx_device_s*)* null, %struct.rc_header_s zeroinitializer, i32 0, i32 0, i32 0, %struct.gx_device_color_info_s { i32 3, i32 3, i32 1, i16 24, i8 -1, i32 255, i32 255, i32 256, i32 256, %struct.gx_device_anti_alias_info_s { i32 1, i32 1 }, i32 -1, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [64 x i64] zeroinitializer, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i32 -1, i64 0, i32 0 }, %struct.gx_device_cached_colors_s { i64 -1, i64 -1 }, i32 2550, i32 3300, i32 0, i32 0, i32 0, i32 0, [2 x float] [float 6.120000e+02, float 7.920000e+02], [4 x float] zeroinitializer, i32 0, [2 x float] [float 3.000000e+02, float 3.000000e+02], [2 x float] [float 3.000000e+02, float 3.000000e+02], [2 x float] zeroinitializer, [4 x float] zeroinitializer, i64 0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, %struct.gx_stroked_gradient_recognizer_s zeroinitializer, i32 0, i32 0, %struct.gdev_space_params_s { i64 10000000, i64 4000000, %struct.gx_band_params_s zeroinitializer, i32 0, i32 0 }, %struct.cmm_dev_profile_s* null, i32 0, %struct.gx_page_device_procs_s { i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_install, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_begin_page, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* @gx_default_end_page }, %struct.gx_device_procs_s zeroinitializer, [11240 x i8] zeroinitializer, { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* } { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)* @picty180_print_page, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_print_page_copies, %struct.gx_device_buf_procs_s { i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, %struct.gx_render_plane_s*, %struct.gs_memory_s*, %struct.gx_colors_usage_s*)* @gx_default_create_buf_device, i32 (%struct.gx_device_buf_space_s*, %struct.gx_device_s*, %struct.gx_render_plane_s*, i32, i32)* @gx_default_size_buf_device, i32 (%struct.gx_device_s*, i8*, i32, i8**, i32, i32, i32)* @gx_default_setup_buf_device, void (%struct.gx_device_s*)* @gx_default_destroy_buf_device }, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)* @gx_default_get_space_params, i32 (%struct.gdev_prn_start_render_params_s*)* @gx_default_start_render_thread, i32 (%struct.gx_device_printer_s*)* @gx_default_open_render_device, i32 (%struct.gx_device_printer_s*)* @gx_default_close_render_device, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_buffer_page }, [4096 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 -1, i32 0, %struct._IO_FILE* null, i64 0, i8* null, %struct.gs_memory_s* null, %struct.gs_memory_s* null, i32 (%struct.gx_device_s*, i32)* null, %struct.gx_page_queue_s* null, i32 0, %struct.gx_device_printer_s* null, i32 0, i32 0, %struct.bg_print_s zeroinitializer, i32 0, %struct.gx_saved_pages_list_s* null, %struct.gx_device_procs_s zeroinitializer, %struct.gx_device_procs_s zeroinitializer, i16 0, i32 24, i32 0, i32 2, i32 1 }, align 8
@dj505j_procs = internal global %struct.gx_device_procs_s { i32 (%struct.gx_device_s*)* @dj505j_open, void (%struct.gx_device_s*, %struct.gs_matrix_s*)* @gx_default_get_initial_matrix, i32 (%struct.gx_device_s*)* @gx_default_sync_output, i32 (%struct.gx_device_s*, i32, i32)* @gdev_prn_bg_output_page, i32 (%struct.gx_device_s*)* @gdev_prn_close, i64 (%struct.gx_device_s*, i16*)* @gdev_pcl_map_rgb_color, i32 (%struct.gx_device_s*, i64, i16*)* @gdev_pcl_map_color_rgb, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* null, i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* null, i32 (%struct.gx_device_s*, i32, i8*, i8**)* @gx_default_get_bits, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @cdj_get_params, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @cdj_put_params, i64 (%struct.gx_device_s*, i16*)* null, %struct.gx_xfont_procs_s* (%struct.gx_device_s*)* null, %struct.gx_device_s* (%struct.gx_device_s*)* null, i64 (%struct.gx_device_s*, i16, i16, i16, i16)* null, %struct.gx_device_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)* null, i32 (%struct.gx_device_s*, i32, i32*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* null, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)* null, i32 (%struct.gx_device_s*, i64, i16*)* null, i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)* null, i32 (%struct.gx_device_s*, %struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_transparency_group_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gx_transparency_mask_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32)* null, i64 (%struct.gx_device_s*, i16*)* null, i32 (%struct.gx_device_s*, i64, i16*)* null, i32 (%struct.gx_device_s*, i64, %struct.gs_pattern1_instance_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* null, %struct.gs_devn_params_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i8*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)* null, void (%struct.gx_device_s*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_process_page_options_s*)* null }, align 8
@.str.8 = private unnamed_addr constant [7 x i8] c"dj505j\00", align 1
@gs_dj505j_device = global { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [11240 x i8], { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* }, [4096 x i8], i32, i32, i32, i32, i32, i32, %struct._IO_FILE*, i64, i8*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s*, i32)*, %struct.gx_page_queue_s*, i32, %struct.gx_device_printer_s*, i32, i32, %struct.bg_print_s, i32, %struct.gx_saved_pages_list_s*, %struct.gx_device_procs_s, %struct.gx_device_procs_s, i16, i32, i32, i32, i32 } { i32 18496, %struct.gx_device_procs_s* @dj505j_procs, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i32 0, i32 0), %struct.gs_memory_s* null, %struct.gs_memory_struct_type_s* @st_device_printer, i32 0, void (%struct.gx_device_s*)* null, %struct.rc_header_s zeroinitializer, i32 0, i32 0, i32 0, %struct.gx_device_color_info_s { i32 1, i32 1, i32 1, i16 1, i8 0, i32 1, i32 0, i32 2, i32 0, %struct.gx_device_anti_alias_info_s { i32 1, i32 1 }, i32 -1, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [64 x i64] zeroinitializer, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 -1, i64 0, i32 0 }, %struct.gx_device_cached_colors_s { i64 -1, i64 -1 }, i32 2550, i32 3300, i32 0, i32 0, i32 0, i32 0, [2 x float] [float 6.120000e+02, float 7.920000e+02], [4 x float] zeroinitializer, i32 0, [2 x float] [float 3.000000e+02, float 3.000000e+02], [2 x float] [float 3.000000e+02, float 3.000000e+02], [2 x float] zeroinitializer, [4 x float] zeroinitializer, i64 0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, %struct.gx_stroked_gradient_recognizer_s zeroinitializer, i32 0, i32 0, %struct.gdev_space_params_s { i64 10000000, i64 4000000, %struct.gx_band_params_s zeroinitializer, i32 0, i32 0 }, %struct.cmm_dev_profile_s* null, i32 0, %struct.gx_page_device_procs_s { i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_install, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_begin_page, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* @gx_default_end_page }, %struct.gx_device_procs_s zeroinitializer, [11240 x i8] zeroinitializer, { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* } { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)* @dj505j_print_page, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_print_page_copies, %struct.gx_device_buf_procs_s { i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, %struct.gx_render_plane_s*, %struct.gs_memory_s*, %struct.gx_colors_usage_s*)* @gx_default_create_buf_device, i32 (%struct.gx_device_buf_space_s*, %struct.gx_device_s*, %struct.gx_render_plane_s*, i32, i32)* @gx_default_size_buf_device, i32 (%struct.gx_device_s*, i8*, i32, i8**, i32, i32, i32)* @gx_default_setup_buf_device, void (%struct.gx_device_s*)* @gx_default_destroy_buf_device }, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)* @gx_default_get_space_params, i32 (%struct.gdev_prn_start_render_params_s*)* @gx_default_start_render_thread, i32 (%struct.gx_device_printer_s*)* @gx_default_open_render_device, i32 (%struct.gx_device_printer_s*)* @gx_default_close_render_device, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_buffer_page }, [4096 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 -1, i32 0, %struct._IO_FILE* null, i64 0, i8* null, %struct.gs_memory_s* null, %struct.gs_memory_s* null, i32 (%struct.gx_device_s*, i32)* null, %struct.gx_page_queue_s* null, i32 0, %struct.gx_device_printer_s* null, i32 0, i32 0, %struct.bg_print_s zeroinitializer, i32 0, %struct.gx_saved_pages_list_s* null, %struct.gx_device_procs_s zeroinitializer, %struct.gx_device_procs_s zeroinitializer, i16 0, i32 1, i32 4, i32 0, i32 1 }, align 8
@pj_procs = internal global %struct.gx_device_procs_s { i32 (%struct.gx_device_s*)* @pj_open, void (%struct.gx_device_s*, %struct.gs_matrix_s*)* @gx_default_get_initial_matrix, i32 (%struct.gx_device_s*)* @gx_default_sync_output, i32 (%struct.gx_device_s*, i32, i32)* @gdev_prn_bg_output_page, i32 (%struct.gx_device_s*)* @gdev_prn_close, i64 (%struct.gx_device_s*, i16*)* @gdev_pcl_map_rgb_color, i32 (%struct.gx_device_s*, i64, i16*)* @gdev_pcl_map_color_rgb, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* null, i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* null, i32 (%struct.gx_device_s*, i32, i8*, i8**)* @gx_default_get_bits, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @gdev_prn_get_params, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @pj_put_params, i64 (%struct.gx_device_s*, i16*)* null, %struct.gx_xfont_procs_s* (%struct.gx_device_s*)* null, %struct.gx_device_s* (%struct.gx_device_s*)* null, i64 (%struct.gx_device_s*, i16, i16, i16, i16)* null, %struct.gx_device_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)* null, i32 (%struct.gx_device_s*, i32, i32*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* null, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)* null, i32 (%struct.gx_device_s*, i64, i16*)* null, i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)* null, i32 (%struct.gx_device_s*, %struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_transparency_group_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gx_transparency_mask_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32)* null, i64 (%struct.gx_device_s*, i16*)* null, i32 (%struct.gx_device_s*, i64, i16*)* null, i32 (%struct.gx_device_s*, i64, %struct.gs_pattern1_instance_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* null, %struct.gs_devn_params_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i8*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)* null, void (%struct.gx_device_s*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_process_page_options_s*)* null }, align 8
@.str.9 = private unnamed_addr constant [9 x i8] c"declj250\00", align 1
@gs_declj250_device = global { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [11240 x i8], { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* }, [4096 x i8], i32, i32, i32, i32, i32, i32, %struct._IO_FILE*, i64, i8*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s*, i32)*, %struct.gx_page_queue_s*, i32, %struct.gx_device_printer_s*, i32, i32, %struct.bg_print_s, i32, %struct.gx_saved_pages_list_s*, %struct.gx_device_procs_s, %struct.gx_device_procs_s, i16, i32, i32 } { i32 18488, %struct.gx_device_procs_s* @pj_procs, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i32 0, i32 0), %struct.gs_memory_s* null, %struct.gs_memory_struct_type_s* @st_device_printer, i32 0, void (%struct.gx_device_s*)* null, %struct.rc_header_s zeroinitializer, i32 0, i32 0, i32 0, %struct.gx_device_color_info_s { i32 3, i32 3, i32 1, i16 24, i8 -1, i32 255, i32 255, i32 256, i32 256, %struct.gx_device_anti_alias_info_s { i32 1, i32 1 }, i32 -1, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [64 x i64] zeroinitializer, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i32 -1, i64 0, i32 0 }, %struct.gx_device_cached_colors_s { i64 -1, i64 -1 }, i32 1530, i32 1980, i32 0, i32 0, i32 0, i32 0, [2 x float] [float 6.120000e+02, float 7.920000e+02], [4 x float] zeroinitializer, i32 0, [2 x float] [float 1.800000e+02, float 1.800000e+02], [2 x float] [float 1.800000e+02, float 1.800000e+02], [2 x float] zeroinitializer, [4 x float] zeroinitializer, i64 0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, %struct.gx_stroked_gradient_recognizer_s zeroinitializer, i32 0, i32 0, %struct.gdev_space_params_s { i64 10000000, i64 4000000, %struct.gx_band_params_s zeroinitializer, i32 0, i32 0 }, %struct.cmm_dev_profile_s* null, i32 0, %struct.gx_page_device_procs_s { i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_install, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_begin_page, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* @gx_default_end_page }, %struct.gx_device_procs_s zeroinitializer, [11240 x i8] zeroinitializer, { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* } { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)* @declj250_print_page, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_print_page_copies, %struct.gx_device_buf_procs_s { i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, %struct.gx_render_plane_s*, %struct.gs_memory_s*, %struct.gx_colors_usage_s*)* @gx_default_create_buf_device, i32 (%struct.gx_device_buf_space_s*, %struct.gx_device_s*, %struct.gx_render_plane_s*, i32, i32)* @gx_default_size_buf_device, i32 (%struct.gx_device_s*, i8*, i32, i8**, i32, i32, i32)* @gx_default_setup_buf_device, void (%struct.gx_device_s*)* @gx_default_destroy_buf_device }, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)* @gx_default_get_space_params, i32 (%struct.gdev_prn_start_render_params_s*)* @gx_default_start_render_thread, i32 (%struct.gx_device_printer_s*)* @gx_default_open_render_device, i32 (%struct.gx_device_printer_s*)* @gx_default_close_render_device, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_buffer_page }, [4096 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 -1, i32 0, %struct._IO_FILE* null, i64 0, i8* null, %struct.gs_memory_s* null, %struct.gs_memory_s* null, i32 (%struct.gx_device_s*, i32)* null, %struct.gx_page_queue_s* null, i32 0, %struct.gx_device_printer_s* null, i32 0, i32 0, %struct.bg_print_s zeroinitializer, i32 0, %struct.gx_saved_pages_list_s* null, %struct.gx_device_procs_s zeroinitializer, %struct.gx_device_procs_s zeroinitializer, i16 0, i32 24, i32 0 }, align 8
@dnj650c_procs = internal global %struct.gx_device_procs_s { i32 (%struct.gx_device_s*)* @dnj650c_open, void (%struct.gx_device_s*, %struct.gs_matrix_s*)* @gx_default_get_initial_matrix, i32 (%struct.gx_device_s*)* @gx_default_sync_output, i32 (%struct.gx_device_s*, i32, i32)* @gdev_prn_bg_output_page, i32 (%struct.gx_device_s*)* @gdev_prn_close, i64 (%struct.gx_device_s*, i16*)* @gdev_pcl_map_rgb_color, i32 (%struct.gx_device_s*, i64, i16*)* @gdev_pcl_map_color_rgb, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* null, i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* null, i32 (%struct.gx_device_s*, i32, i8*, i8**)* @gx_default_get_bits, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @cdj_get_params, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @cdj_put_params, i64 (%struct.gx_device_s*, i16*)* null, %struct.gx_xfont_procs_s* (%struct.gx_device_s*)* null, %struct.gx_device_s* (%struct.gx_device_s*)* null, i64 (%struct.gx_device_s*, i16, i16, i16, i16)* null, %struct.gx_device_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)* null, i32 (%struct.gx_device_s*, i32, i32*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* null, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)* null, i32 (%struct.gx_device_s*, i64, i16*)* null, i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)* null, i32 (%struct.gx_device_s*, %struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_transparency_group_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gx_transparency_mask_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32)* null, i64 (%struct.gx_device_s*, i16*)* null, i32 (%struct.gx_device_s*, i64, i16*)* null, i32 (%struct.gx_device_s*, i64, %struct.gs_pattern1_instance_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* null, %struct.gs_devn_params_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i8*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)* null, void (%struct.gx_device_s*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_process_page_options_s*)* null }, align 8
@.str.10 = private unnamed_addr constant [8 x i8] c"dnj650c\00", align 1
@gs_dnj650c_device = global { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [11240 x i8], { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* }, [4096 x i8], i32, i32, i32, i32, i32, i32, %struct._IO_FILE*, i64, i8*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s*, i32)*, %struct.gx_page_queue_s*, i32, %struct.gx_device_printer_s*, i32, i32, %struct.bg_print_s, i32, %struct.gx_saved_pages_list_s*, %struct.gx_device_procs_s, %struct.gx_device_procs_s, i16, i32, i32, i32, i32 } { i32 18496, %struct.gx_device_procs_s* @dnj650c_procs, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i32 0, i32 0), %struct.gs_memory_s* null, %struct.gs_memory_struct_type_s* @st_device_printer, i32 0, void (%struct.gx_device_s*)* null, %struct.rc_header_s zeroinitializer, i32 0, i32 0, i32 0, %struct.gx_device_color_info_s { i32 3, i32 3, i32 1, i16 24, i8 -1, i32 255, i32 255, i32 256, i32 256, %struct.gx_device_anti_alias_info_s { i32 1, i32 1 }, i32 -1, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [64 x i64] zeroinitializer, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i32 -1, i64 0, i32 0 }, %struct.gx_device_cached_colors_s { i64 -1, i64 -1 }, i32 2550, i32 3300, i32 0, i32 0, i32 0, i32 0, [2 x float] [float 6.120000e+02, float 7.920000e+02], [4 x float] zeroinitializer, i32 0, [2 x float] [float 3.000000e+02, float 3.000000e+02], [2 x float] [float 3.000000e+02, float 3.000000e+02], [2 x float] zeroinitializer, [4 x float] zeroinitializer, i64 0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, %struct.gx_stroked_gradient_recognizer_s zeroinitializer, i32 0, i32 0, %struct.gdev_space_params_s { i64 10000000, i64 4000000, %struct.gx_band_params_s zeroinitializer, i32 0, i32 0 }, %struct.cmm_dev_profile_s* null, i32 0, %struct.gx_page_device_procs_s { i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_install, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_begin_page, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* @gx_default_end_page }, %struct.gx_device_procs_s zeroinitializer, [11240 x i8] zeroinitializer, { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* } { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)* @dnj650c_print_page, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_print_page_copies, %struct.gx_device_buf_procs_s { i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, %struct.gx_render_plane_s*, %struct.gs_memory_s*, %struct.gx_colors_usage_s*)* @gx_default_create_buf_device, i32 (%struct.gx_device_buf_space_s*, %struct.gx_device_s*, %struct.gx_render_plane_s*, i32, i32)* @gx_default_size_buf_device, i32 (%struct.gx_device_s*, i8*, i32, i8**, i32, i32, i32)* @gx_default_setup_buf_device, void (%struct.gx_device_s*)* @gx_default_destroy_buf_device }, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)* @gx_default_get_space_params, i32 (%struct.gdev_prn_start_render_params_s*)* @gx_default_start_render_thread, i32 (%struct.gx_device_printer_s*)* @gx_default_open_render_device, i32 (%struct.gx_device_printer_s*)* @gx_default_close_render_device, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_buffer_page }, [4096 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 -1, i32 0, %struct._IO_FILE* null, i64 0, i8* null, %struct.gs_memory_s* null, %struct.gs_memory_s* null, i32 (%struct.gx_device_s*, i32)* null, %struct.gx_page_queue_s* null, i32 0, %struct.gx_device_printer_s* null, i32 0, i32 0, %struct.bg_print_s zeroinitializer, i32 0, %struct.gx_saved_pages_list_s* null, %struct.gx_device_procs_s zeroinitializer, %struct.gx_device_procs_s zeroinitializer, i16 0, i32 24, i32 0, i32 2, i32 1 }, align 8
@lj4dith_procs = internal global %struct.gx_device_procs_s { i32 (%struct.gx_device_s*)* @lj4dith_open, void (%struct.gx_device_s*, %struct.gs_matrix_s*)* @gx_default_get_initial_matrix, i32 (%struct.gx_device_s*)* @gx_default_sync_output, i32 (%struct.gx_device_s*, i32, i32)* @gdev_prn_bg_output_page, i32 (%struct.gx_device_s*)* @gdev_prn_close, i64 (%struct.gx_device_s*, i16*)* @gdev_pcl_map_rgb_color, i32 (%struct.gx_device_s*, i64, i16*)* @gdev_pcl_map_color_rgb, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* null, i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* null, i32 (%struct.gx_device_s*, i32, i8*, i8**)* @gx_default_get_bits, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @cdj_get_params, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @cdj_put_params, i64 (%struct.gx_device_s*, i16*)* null, %struct.gx_xfont_procs_s* (%struct.gx_device_s*)* null, %struct.gx_device_s* (%struct.gx_device_s*)* null, i64 (%struct.gx_device_s*, i16, i16, i16, i16)* null, %struct.gx_device_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)* null, i32 (%struct.gx_device_s*, i32, i32*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* null, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)* null, i32 (%struct.gx_device_s*, i64, i16*)* null, i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)* null, i32 (%struct.gx_device_s*, %struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_transparency_group_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gx_transparency_mask_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32)* null, i64 (%struct.gx_device_s*, i16*)* null, i32 (%struct.gx_device_s*, i64, i16*)* null, i32 (%struct.gx_device_s*, i64, %struct.gs_pattern1_instance_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* null, %struct.gs_devn_params_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i8*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)* null, void (%struct.gx_device_s*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_process_page_options_s*)* null }, align 8
@.str.11 = private unnamed_addr constant [8 x i8] c"lj4dith\00", align 1
@gs_lj4dith_device = global { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [11240 x i8], { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* }, [4096 x i8], i32, i32, i32, i32, i32, i32, %struct._IO_FILE*, i64, i8*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s*, i32)*, %struct.gx_page_queue_s*, i32, %struct.gx_device_printer_s*, i32, i32, %struct.bg_print_s, i32, %struct.gx_saved_pages_list_s*, %struct.gx_device_procs_s, %struct.gx_device_procs_s, i16, i32, i32, i32, i32 } { i32 18496, %struct.gx_device_procs_s* @lj4dith_procs, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i32 0, i32 0), %struct.gs_memory_s* null, %struct.gs_memory_struct_type_s* @st_device_printer, i32 0, void (%struct.gx_device_s*)* null, %struct.rc_header_s zeroinitializer, i32 0, i32 0, i32 0, %struct.gx_device_color_info_s { i32 1, i32 1, i32 1, i16 8, i8 0, i32 255, i32 255, i32 256, i32 256, %struct.gx_device_anti_alias_info_s { i32 1, i32 1 }, i32 -1, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [64 x i64] zeroinitializer, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 -1, i64 0, i32 0 }, %struct.gx_device_cached_colors_s { i64 -1, i64 -1 }, i32 5100, i32 6600, i32 0, i32 0, i32 0, i32 0, [2 x float] [float 6.120000e+02, float 7.920000e+02], [4 x float] zeroinitializer, i32 0, [2 x float] [float 6.000000e+02, float 6.000000e+02], [2 x float] [float 6.000000e+02, float 6.000000e+02], [2 x float] zeroinitializer, [4 x float] zeroinitializer, i64 0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, %struct.gx_stroked_gradient_recognizer_s zeroinitializer, i32 0, i32 0, %struct.gdev_space_params_s { i64 10000000, i64 4000000, %struct.gx_band_params_s zeroinitializer, i32 0, i32 0 }, %struct.cmm_dev_profile_s* null, i32 0, %struct.gx_page_device_procs_s { i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_install, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_begin_page, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* @gx_default_end_page }, %struct.gx_device_procs_s zeroinitializer, [11240 x i8] zeroinitializer, { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* } { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)* @lj4dith_print_page, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_print_page_copies, %struct.gx_device_buf_procs_s { i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, %struct.gx_render_plane_s*, %struct.gs_memory_s*, %struct.gx_colors_usage_s*)* @gx_default_create_buf_device, i32 (%struct.gx_device_buf_space_s*, %struct.gx_device_s*, %struct.gx_render_plane_s*, i32, i32)* @gx_default_size_buf_device, i32 (%struct.gx_device_s*, i8*, i32, i8**, i32, i32, i32)* @gx_default_setup_buf_device, void (%struct.gx_device_s*)* @gx_default_destroy_buf_device }, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)* @gx_default_get_space_params, i32 (%struct.gdev_prn_start_render_params_s*)* @gx_default_start_render_thread, i32 (%struct.gx_device_printer_s*)* @gx_default_open_render_device, i32 (%struct.gx_device_printer_s*)* @gx_default_close_render_device, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_buffer_page }, [4096 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 -1, i32 0, %struct._IO_FILE* null, i64 0, i8* null, %struct.gs_memory_s* null, %struct.gs_memory_s* null, i32 (%struct.gx_device_s*, i32)* null, %struct.gx_page_queue_s* null, i32 0, %struct.gx_device_printer_s* null, i32 0, i32 0, %struct.bg_print_s zeroinitializer, i32 0, %struct.gx_saved_pages_list_s* null, %struct.gx_device_procs_s zeroinitializer, %struct.gx_device_procs_s zeroinitializer, i16 0, i32 8, i32 4, i32 0, i32 1 }, align 8
@.str.12 = private unnamed_addr constant [9 x i8] c"lj4dithp\00", align 1
@gs_lj4dithp_device = global { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [11240 x i8], { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* }, [4096 x i8], i32, i32, i32, i32, i32, i32, %struct._IO_FILE*, i64, i8*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s*, i32)*, %struct.gx_page_queue_s*, i32, %struct.gx_device_printer_s*, i32, i32, %struct.bg_print_s, i32, %struct.gx_saved_pages_list_s*, %struct.gx_device_procs_s, %struct.gx_device_procs_s, i16, i32, i32, i32, i32 } { i32 18496, %struct.gx_device_procs_s* @lj4dith_procs, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i32 0, i32 0), %struct.gs_memory_s* null, %struct.gs_memory_struct_type_s* @st_device_printer, i32 0, void (%struct.gx_device_s*)* null, %struct.rc_header_s zeroinitializer, i32 0, i32 0, i32 0, %struct.gx_device_color_info_s { i32 1, i32 1, i32 1, i16 8, i8 0, i32 255, i32 255, i32 256, i32 256, %struct.gx_device_anti_alias_info_s { i32 1, i32 1 }, i32 -1, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [64 x i64] zeroinitializer, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 -1, i64 0, i32 0 }, %struct.gx_device_cached_colors_s { i64 -1, i64 -1 }, i32 5100, i32 6600, i32 0, i32 0, i32 0, i32 0, [2 x float] [float 6.120000e+02, float 7.920000e+02], [4 x float] zeroinitializer, i32 0, [2 x float] [float 6.000000e+02, float 6.000000e+02], [2 x float] [float 6.000000e+02, float 6.000000e+02], [2 x float] zeroinitializer, [4 x float] zeroinitializer, i64 0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, %struct.gx_stroked_gradient_recognizer_s zeroinitializer, i32 0, i32 0, %struct.gdev_space_params_s { i64 10000000, i64 4000000, %struct.gx_band_params_s zeroinitializer, i32 0, i32 0 }, %struct.cmm_dev_profile_s* null, i32 0, %struct.gx_page_device_procs_s { i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_install, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_begin_page, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* @gx_default_end_page }, %struct.gx_device_procs_s zeroinitializer, [11240 x i8] zeroinitializer, { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* } { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)* @lj4dithp_print_page, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_print_page_copies, %struct.gx_device_buf_procs_s { i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, %struct.gx_render_plane_s*, %struct.gs_memory_s*, %struct.gx_colors_usage_s*)* @gx_default_create_buf_device, i32 (%struct.gx_device_buf_space_s*, %struct.gx_device_s*, %struct.gx_render_plane_s*, i32, i32)* @gx_default_size_buf_device, i32 (%struct.gx_device_s*, i8*, i32, i8**, i32, i32, i32)* @gx_default_setup_buf_device, void (%struct.gx_device_s*)* @gx_default_destroy_buf_device }, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)* @gx_default_get_space_params, i32 (%struct.gdev_prn_start_render_params_s*)* @gx_default_start_render_thread, i32 (%struct.gx_device_printer_s*)* @gx_default_open_render_device, i32 (%struct.gx_device_printer_s*)* @gx_default_close_render_device, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_buffer_page }, [4096 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 -1, i32 0, %struct._IO_FILE* null, i64 0, i8* null, %struct.gs_memory_s* null, %struct.gs_memory_s* null, i32 (%struct.gx_device_s*, i32)* null, %struct.gx_page_queue_s* null, i32 0, %struct.gx_device_printer_s* null, i32 0, i32 0, %struct.bg_print_s zeroinitializer, i32 0, %struct.gx_saved_pages_list_s* null, %struct.gx_device_procs_s zeroinitializer, %struct.gx_device_procs_s zeroinitializer, i16 0, i32 8, i32 4, i32 0, i32 1 }, align 8
@.str.13 = private unnamed_addr constant [3 x i8] c"pj\00", align 1
@gs_pj_device = global { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [11240 x i8], { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* }, [4096 x i8], i32, i32, i32, i32, i32, i32, %struct._IO_FILE*, i64, i8*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s*, i32)*, %struct.gx_page_queue_s*, i32, %struct.gx_device_printer_s*, i32, i32, %struct.bg_print_s, i32, %struct.gx_saved_pages_list_s*, %struct.gx_device_procs_s, %struct.gx_device_procs_s, i16, i32, i32 } { i32 18488, %struct.gx_device_procs_s* @pj_procs, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i32 0, i32 0), %struct.gs_memory_s* null, %struct.gs_memory_struct_type_s* @st_device_printer, i32 0, void (%struct.gx_device_s*)* null, %struct.rc_header_s zeroinitializer, i32 0, i32 0, i32 0, %struct.gx_device_color_info_s { i32 3, i32 3, i32 1, i16 24, i8 -1, i32 255, i32 255, i32 256, i32 256, %struct.gx_device_anti_alias_info_s { i32 1, i32 1 }, i32 -1, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [64 x i64] zeroinitializer, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i32 -1, i64 0, i32 0 }, %struct.gx_device_cached_colors_s { i64 -1, i64 -1 }, i32 1530, i32 1980, i32 0, i32 0, i32 0, i32 0, [2 x float] [float 6.120000e+02, float 7.920000e+02], [4 x float] zeroinitializer, i32 0, [2 x float] [float 1.800000e+02, float 1.800000e+02], [2 x float] [float 1.800000e+02, float 1.800000e+02], [2 x float] zeroinitializer, [4 x float] zeroinitializer, i64 0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, %struct.gx_stroked_gradient_recognizer_s zeroinitializer, i32 0, i32 0, %struct.gdev_space_params_s { i64 10000000, i64 4000000, %struct.gx_band_params_s zeroinitializer, i32 0, i32 0 }, %struct.cmm_dev_profile_s* null, i32 0, %struct.gx_page_device_procs_s { i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_install, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_begin_page, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* @gx_default_end_page }, %struct.gx_device_procs_s zeroinitializer, [11240 x i8] zeroinitializer, { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* } { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)* @pj_print_page, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_print_page_copies, %struct.gx_device_buf_procs_s { i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, %struct.gx_render_plane_s*, %struct.gs_memory_s*, %struct.gx_colors_usage_s*)* @gx_default_create_buf_device, i32 (%struct.gx_device_buf_space_s*, %struct.gx_device_s*, %struct.gx_render_plane_s*, i32, i32)* @gx_default_size_buf_device, i32 (%struct.gx_device_s*, i8*, i32, i8**, i32, i32, i32)* @gx_default_setup_buf_device, void (%struct.gx_device_s*)* @gx_default_destroy_buf_device }, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)* @gx_default_get_space_params, i32 (%struct.gdev_prn_start_render_params_s*)* @gx_default_start_render_thread, i32 (%struct.gx_device_printer_s*)* @gx_default_open_render_device, i32 (%struct.gx_device_printer_s*)* @gx_default_close_render_device, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_buffer_page }, [4096 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 -1, i32 0, %struct._IO_FILE* null, i64 0, i8* null, %struct.gs_memory_s* null, %struct.gs_memory_s* null, i32 (%struct.gx_device_s*, i32)* null, %struct.gx_page_queue_s* null, i32 0, %struct.gx_device_printer_s* null, i32 0, i32 0, %struct.bg_print_s zeroinitializer, i32 0, %struct.gx_saved_pages_list_s* null, %struct.gx_device_procs_s zeroinitializer, %struct.gx_device_procs_s zeroinitializer, i16 0, i32 24, i32 0 }, align 8
@pjxl_procs = internal global %struct.gx_device_procs_s { i32 (%struct.gx_device_s*)* @pjxl_open, void (%struct.gx_device_s*, %struct.gs_matrix_s*)* @gx_default_get_initial_matrix, i32 (%struct.gx_device_s*)* @gx_default_sync_output, i32 (%struct.gx_device_s*, i32, i32)* @gdev_prn_bg_output_page, i32 (%struct.gx_device_s*)* @gdev_prn_close, i64 (%struct.gx_device_s*, i16*)* @gdev_pcl_map_rgb_color, i32 (%struct.gx_device_s*, i64, i16*)* @gdev_pcl_map_color_rgb, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* null, i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* null, i32 (%struct.gx_device_s*, i32, i8*, i8**)* @gx_default_get_bits, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @pjxl_get_params, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @pjxl_put_params, i64 (%struct.gx_device_s*, i16*)* null, %struct.gx_xfont_procs_s* (%struct.gx_device_s*)* null, %struct.gx_device_s* (%struct.gx_device_s*)* null, i64 (%struct.gx_device_s*, i16, i16, i16, i16)* null, %struct.gx_device_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)* null, i32 (%struct.gx_device_s*, i32, i32*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* null, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)* null, i32 (%struct.gx_device_s*, i64, i16*)* null, i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)* null, i32 (%struct.gx_device_s*, %struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_transparency_group_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gx_transparency_mask_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32)* null, i64 (%struct.gx_device_s*, i16*)* null, i32 (%struct.gx_device_s*, i64, i16*)* null, i32 (%struct.gx_device_s*, i64, %struct.gs_pattern1_instance_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* null, %struct.gs_devn_params_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i8*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)* null, void (%struct.gx_device_s*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_process_page_options_s*)* null }, align 8
@.str.14 = private unnamed_addr constant [5 x i8] c"pjxl\00", align 1
@gs_pjxl_device = global { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [11240 x i8], { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* }, [4096 x i8], i32, i32, i32, i32, i32, i32, %struct._IO_FILE*, i64, i8*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s*, i32)*, %struct.gx_page_queue_s*, i32, %struct.gx_device_printer_s*, i32, i32, %struct.bg_print_s, i32, %struct.gx_saved_pages_list_s*, %struct.gx_device_procs_s, %struct.gx_device_procs_s, i16, i32, i32, i32, i32 } { i32 18496, %struct.gx_device_procs_s* @pjxl_procs, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0), %struct.gs_memory_s* null, %struct.gs_memory_struct_type_s* @st_device_printer, i32 0, void (%struct.gx_device_s*)* null, %struct.rc_header_s zeroinitializer, i32 0, i32 0, i32 0, %struct.gx_device_color_info_s { i32 3, i32 3, i32 1, i16 24, i8 -1, i32 255, i32 255, i32 256, i32 256, %struct.gx_device_anti_alias_info_s { i32 1, i32 1 }, i32 -1, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [64 x i64] zeroinitializer, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i32 -1, i64 0, i32 0 }, %struct.gx_device_cached_colors_s { i64 -1, i64 -1 }, i32 1530, i32 1980, i32 0, i32 0, i32 0, i32 0, [2 x float] [float 6.120000e+02, float 7.920000e+02], [4 x float] zeroinitializer, i32 0, [2 x float] [float 1.800000e+02, float 1.800000e+02], [2 x float] [float 1.800000e+02, float 1.800000e+02], [2 x float] zeroinitializer, [4 x float] zeroinitializer, i64 0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, %struct.gx_stroked_gradient_recognizer_s zeroinitializer, i32 0, i32 0, %struct.gdev_space_params_s { i64 10000000, i64 4000000, %struct.gx_band_params_s zeroinitializer, i32 0, i32 0 }, %struct.cmm_dev_profile_s* null, i32 0, %struct.gx_page_device_procs_s { i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_install, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_begin_page, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* @gx_default_end_page }, %struct.gx_device_procs_s zeroinitializer, [11240 x i8] zeroinitializer, { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* } { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)* @pjxl_print_page, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_print_page_copies, %struct.gx_device_buf_procs_s { i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, %struct.gx_render_plane_s*, %struct.gs_memory_s*, %struct.gx_colors_usage_s*)* @gx_default_create_buf_device, i32 (%struct.gx_device_buf_space_s*, %struct.gx_device_s*, %struct.gx_render_plane_s*, i32, i32)* @gx_default_size_buf_device, i32 (%struct.gx_device_s*, i8*, i32, i8**, i32, i32, i32)* @gx_default_setup_buf_device, void (%struct.gx_device_s*)* @gx_default_destroy_buf_device }, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)* @gx_default_get_space_params, i32 (%struct.gdev_prn_start_render_params_s*)* @gx_default_start_render_thread, i32 (%struct.gx_device_printer_s*)* @gx_default_open_render_device, i32 (%struct.gx_device_printer_s*)* @gx_default_close_render_device, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_buffer_page }, [4096 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 -1, i32 0, %struct._IO_FILE* null, i64 0, i8* null, %struct.gs_memory_s* null, %struct.gs_memory_s* null, i32 (%struct.gx_device_s*, i32)* null, %struct.gx_page_queue_s* null, i32 0, %struct.gx_device_printer_s* null, i32 0, i32 0, %struct.bg_print_s zeroinitializer, i32 0, %struct.gx_saved_pages_list_s* null, %struct.gx_device_procs_s zeroinitializer, %struct.gx_device_procs_s zeroinitializer, i16 0, i32 24, i32 0, i32 0, i32 0 }, align 8
@pjxl300_procs = internal global %struct.gx_device_procs_s { i32 (%struct.gx_device_s*)* @pjxl300_open, void (%struct.gx_device_s*, %struct.gs_matrix_s*)* @gx_default_get_initial_matrix, i32 (%struct.gx_device_s*)* @gx_default_sync_output, i32 (%struct.gx_device_s*, i32, i32)* @gdev_prn_bg_output_page, i32 (%struct.gx_device_s*)* @gdev_prn_close, i64 (%struct.gx_device_s*, i16*)* @gdev_pcl_map_rgb_color, i32 (%struct.gx_device_s*, i64, i16*)* @gdev_pcl_map_color_rgb, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* null, i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* null, i32 (%struct.gx_device_s*, i32, i8*, i8**)* @gx_default_get_bits, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @pjxl_get_params, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @pjxl_put_params, i64 (%struct.gx_device_s*, i16*)* null, %struct.gx_xfont_procs_s* (%struct.gx_device_s*)* null, %struct.gx_device_s* (%struct.gx_device_s*)* null, i64 (%struct.gx_device_s*, i16, i16, i16, i16)* null, %struct.gx_device_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)* null, i32 (%struct.gx_device_s*, i32, i32*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* null, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)* null, i32 (%struct.gx_device_s*, i64, i16*)* null, i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)* null, i32 (%struct.gx_device_s*, %struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_transparency_group_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gx_transparency_mask_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32)* null, i64 (%struct.gx_device_s*, i16*)* null, i32 (%struct.gx_device_s*, i64, i16*)* null, i32 (%struct.gx_device_s*, i64, %struct.gs_pattern1_instance_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* null, %struct.gs_devn_params_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i8*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)* null, void (%struct.gx_device_s*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_process_page_options_s*)* null }, align 8
@.str.15 = private unnamed_addr constant [8 x i8] c"pjxl300\00", align 1
@gs_pjxl300_device = global { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [11240 x i8], { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* }, [4096 x i8], i32, i32, i32, i32, i32, i32, %struct._IO_FILE*, i64, i8*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s*, i32)*, %struct.gx_page_queue_s*, i32, %struct.gx_device_printer_s*, i32, i32, %struct.bg_print_s, i32, %struct.gx_saved_pages_list_s*, %struct.gx_device_procs_s, %struct.gx_device_procs_s, i16, i32, i32, i32, i32 } { i32 18496, %struct.gx_device_procs_s* @pjxl300_procs, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i32 0, i32 0), %struct.gs_memory_s* null, %struct.gs_memory_struct_type_s* @st_device_printer, i32 0, void (%struct.gx_device_s*)* null, %struct.rc_header_s zeroinitializer, i32 0, i32 0, i32 0, %struct.gx_device_color_info_s { i32 3, i32 3, i32 1, i16 24, i8 -1, i32 255, i32 255, i32 256, i32 256, %struct.gx_device_anti_alias_info_s { i32 1, i32 1 }, i32 -1, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [64 x i64] zeroinitializer, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i32 -1, i64 0, i32 0 }, %struct.gx_device_cached_colors_s { i64 -1, i64 -1 }, i32 2550, i32 3300, i32 0, i32 0, i32 0, i32 0, [2 x float] [float 6.120000e+02, float 7.920000e+02], [4 x float] zeroinitializer, i32 0, [2 x float] [float 3.000000e+02, float 3.000000e+02], [2 x float] [float 3.000000e+02, float 3.000000e+02], [2 x float] zeroinitializer, [4 x float] zeroinitializer, i64 0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, %struct.gx_stroked_gradient_recognizer_s zeroinitializer, i32 0, i32 0, %struct.gdev_space_params_s { i64 10000000, i64 4000000, %struct.gx_band_params_s zeroinitializer, i32 0, i32 0 }, %struct.cmm_dev_profile_s* null, i32 0, %struct.gx_page_device_procs_s { i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_install, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_begin_page, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* @gx_default_end_page }, %struct.gx_device_procs_s zeroinitializer, [11240 x i8] zeroinitializer, { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* } { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)* @pjxl300_print_page, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_print_page_copies, %struct.gx_device_buf_procs_s { i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, %struct.gx_render_plane_s*, %struct.gs_memory_s*, %struct.gx_colors_usage_s*)* @gx_default_create_buf_device, i32 (%struct.gx_device_buf_space_s*, %struct.gx_device_s*, %struct.gx_render_plane_s*, i32, i32)* @gx_default_size_buf_device, i32 (%struct.gx_device_s*, i8*, i32, i8**, i32, i32, i32)* @gx_default_setup_buf_device, void (%struct.gx_device_s*)* @gx_default_destroy_buf_device }, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)* @gx_default_get_space_params, i32 (%struct.gdev_prn_start_render_params_s*)* @gx_default_start_render_thread, i32 (%struct.gx_device_printer_s*)* @gx_default_open_render_device, i32 (%struct.gx_device_printer_s*)* @gx_default_close_render_device, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_buffer_page }, [4096 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 -1, i32 0, %struct._IO_FILE* null, i64 0, i8* null, %struct.gs_memory_s* null, %struct.gs_memory_s* null, i32 (%struct.gx_device_s*, i32)* null, %struct.gx_page_queue_s* null, i32 0, %struct.gx_device_printer_s* null, i32 0, i32 0, %struct.bg_print_s zeroinitializer, i32 0, %struct.gx_saved_pages_list_s* null, %struct.gx_device_procs_s zeroinitializer, %struct.gx_device_procs_s zeroinitializer, i16 0, i32 24, i32 0, i32 0, i32 0 }, align 8
@escp_procs = internal global %struct.gx_device_procs_s { i32 (%struct.gx_device_s*)* @escp_open, void (%struct.gx_device_s*, %struct.gs_matrix_s*)* @gx_default_get_initial_matrix, i32 (%struct.gx_device_s*)* @gx_default_sync_output, i32 (%struct.gx_device_s*, i32, i32)* @gdev_prn_bg_output_page, i32 (%struct.gx_device_s*)* @gdev_prn_close, i64 (%struct.gx_device_s*, i16*)* @gdev_pcl_map_rgb_color, i32 (%struct.gx_device_s*, i64, i16*)* @gdev_pcl_map_color_rgb, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* null, i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* null, i32 (%struct.gx_device_s*, i32, i8*, i8**)* @gx_default_get_bits, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @cdj_get_params, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @cdj_put_params, i64 (%struct.gx_device_s*, i16*)* null, %struct.gx_xfont_procs_s* (%struct.gx_device_s*)* null, %struct.gx_device_s* (%struct.gx_device_s*)* null, i64 (%struct.gx_device_s*, i16, i16, i16, i16)* null, %struct.gx_device_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)* null, i32 (%struct.gx_device_s*, i32, i32*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* null, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)* null, i32 (%struct.gx_device_s*, i64, i16*)* null, i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)* null, i32 (%struct.gx_device_s*, %struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_transparency_group_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gx_transparency_mask_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32)* null, i64 (%struct.gx_device_s*, i16*)* null, i32 (%struct.gx_device_s*, i64, i16*)* null, i32 (%struct.gx_device_s*, i64, %struct.gs_pattern1_instance_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* null, %struct.gs_devn_params_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i8*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)* null, void (%struct.gx_device_s*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_process_page_options_s*)* null }, align 8
@.str.16 = private unnamed_addr constant [5 x i8] c"escp\00", align 1
@gs_escp_device = global { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [11240 x i8], { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* }, [4096 x i8], i32, i32, i32, i32, i32, i32, %struct._IO_FILE*, i64, i8*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s*, i32)*, %struct.gx_page_queue_s*, i32, %struct.gx_device_printer_s*, i32, i32, %struct.bg_print_s, i32, %struct.gx_saved_pages_list_s*, %struct.gx_device_procs_s, %struct.gx_device_procs_s, i16, i32, i32, i32, i32 } { i32 18496, %struct.gx_device_procs_s* @escp_procs, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0), %struct.gs_memory_s* null, %struct.gs_memory_struct_type_s* @st_device_printer, i32 0, void (%struct.gx_device_s*)* null, %struct.rc_header_s zeroinitializer, i32 0, i32 0, i32 0, %struct.gx_device_color_info_s { i32 1, i32 1, i32 1, i16 8, i8 0, i32 255, i32 255, i32 256, i32 256, %struct.gx_device_anti_alias_info_s { i32 1, i32 1 }, i32 -1, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [64 x i64] zeroinitializer, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 -1, i64 0, i32 0 }, %struct.gx_device_cached_colors_s { i64 -1, i64 -1 }, i32 3060, i32 3960, i32 0, i32 0, i32 0, i32 0, [2 x float] [float 6.120000e+02, float 7.920000e+02], [4 x float] zeroinitializer, i32 0, [2 x float] [float 3.600000e+02, float 3.600000e+02], [2 x float] [float 3.600000e+02, float 3.600000e+02], [2 x float] zeroinitializer, [4 x float] zeroinitializer, i64 0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, %struct.gx_stroked_gradient_recognizer_s zeroinitializer, i32 0, i32 0, %struct.gdev_space_params_s { i64 10000000, i64 4000000, %struct.gx_band_params_s zeroinitializer, i32 0, i32 0 }, %struct.cmm_dev_profile_s* null, i32 0, %struct.gx_page_device_procs_s { i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_install, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_begin_page, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* @gx_default_end_page }, %struct.gx_device_procs_s zeroinitializer, [11240 x i8] zeroinitializer, { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* } { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)* @escp_print_page, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_print_page_copies, %struct.gx_device_buf_procs_s { i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, %struct.gx_render_plane_s*, %struct.gs_memory_s*, %struct.gx_colors_usage_s*)* @gx_default_create_buf_device, i32 (%struct.gx_device_buf_space_s*, %struct.gx_device_s*, %struct.gx_render_plane_s*, i32, i32)* @gx_default_size_buf_device, i32 (%struct.gx_device_s*, i8*, i32, i8**, i32, i32, i32)* @gx_default_setup_buf_device, void (%struct.gx_device_s*)* @gx_default_destroy_buf_device }, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)* @gx_default_get_space_params, i32 (%struct.gdev_prn_start_render_params_s*)* @gx_default_start_render_thread, i32 (%struct.gx_device_printer_s*)* @gx_default_open_render_device, i32 (%struct.gx_device_printer_s*)* @gx_default_close_render_device, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_buffer_page }, [4096 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 -1, i32 0, %struct._IO_FILE* null, i64 0, i8* null, %struct.gs_memory_s* null, %struct.gs_memory_s* null, i32 (%struct.gx_device_s*, i32)* null, %struct.gx_page_queue_s* null, i32 0, %struct.gx_device_printer_s* null, i32 0, i32 0, %struct.bg_print_s zeroinitializer, i32 0, %struct.gx_saved_pages_list_s* null, %struct.gx_device_procs_s zeroinitializer, %struct.gx_device_procs_s zeroinitializer, i16 0, i32 8, i32 0, i32 0, i32 1 }, align 8
@.str.17 = private unnamed_addr constant [6 x i8] c"escpc\00", align 1
@gs_escpc_device = global { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [11240 x i8], { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* }, [4096 x i8], i32, i32, i32, i32, i32, i32, %struct._IO_FILE*, i64, i8*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s*, i32)*, %struct.gx_page_queue_s*, i32, %struct.gx_device_printer_s*, i32, i32, %struct.bg_print_s, i32, %struct.gx_saved_pages_list_s*, %struct.gx_device_procs_s, %struct.gx_device_procs_s, i16, i32, i32, i32, i32 } { i32 18496, %struct.gx_device_procs_s* @escp_procs, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i32 0, i32 0), %struct.gs_memory_s* null, %struct.gs_memory_struct_type_s* @st_device_printer, i32 0, void (%struct.gx_device_s*)* null, %struct.rc_header_s zeroinitializer, i32 0, i32 0, i32 0, %struct.gx_device_color_info_s { i32 3, i32 3, i32 1, i16 24, i8 -1, i32 255, i32 255, i32 256, i32 256, %struct.gx_device_anti_alias_info_s { i32 1, i32 1 }, i32 -1, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [64 x i64] zeroinitializer, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i32 -1, i64 0, i32 0 }, %struct.gx_device_cached_colors_s { i64 -1, i64 -1 }, i32 3060, i32 3960, i32 0, i32 0, i32 0, i32 0, [2 x float] [float 6.120000e+02, float 7.920000e+02], [4 x float] zeroinitializer, i32 0, [2 x float] [float 3.600000e+02, float 3.600000e+02], [2 x float] [float 3.600000e+02, float 3.600000e+02], [2 x float] zeroinitializer, [4 x float] zeroinitializer, i64 0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, %struct.gx_stroked_gradient_recognizer_s zeroinitializer, i32 0, i32 0, %struct.gdev_space_params_s { i64 10000000, i64 4000000, %struct.gx_band_params_s zeroinitializer, i32 0, i32 0 }, %struct.cmm_dev_profile_s* null, i32 0, %struct.gx_page_device_procs_s { i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_install, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_begin_page, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* @gx_default_end_page }, %struct.gx_device_procs_s zeroinitializer, [11240 x i8] zeroinitializer, { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* } { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)* @escp_print_page, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_print_page_copies, %struct.gx_device_buf_procs_s { i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, %struct.gx_render_plane_s*, %struct.gs_memory_s*, %struct.gx_colors_usage_s*)* @gx_default_create_buf_device, i32 (%struct.gx_device_buf_space_s*, %struct.gx_device_s*, %struct.gx_render_plane_s*, i32, i32)* @gx_default_size_buf_device, i32 (%struct.gx_device_s*, i8*, i32, i8**, i32, i32, i32)* @gx_default_setup_buf_device, void (%struct.gx_device_s*)* @gx_default_destroy_buf_device }, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)* @gx_default_get_space_params, i32 (%struct.gdev_prn_start_render_params_s*)* @gx_default_start_render_thread, i32 (%struct.gx_device_printer_s*)* @gx_default_open_render_device, i32 (%struct.gx_device_printer_s*)* @gx_default_close_render_device, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_buffer_page }, [4096 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 -1, i32 0, %struct._IO_FILE* null, i64 0, i8* null, %struct.gs_memory_s* null, %struct.gs_memory_s* null, i32 (%struct.gx_device_s*, i32)* null, %struct.gx_page_queue_s* null, i32 0, %struct.gx_device_printer_s* null, i32 0, i32 0, %struct.bg_print_s zeroinitializer, i32 0, %struct.gx_saved_pages_list_s* null, %struct.gx_device_procs_s zeroinitializer, %struct.gx_device_procs_s zeroinitializer, i16 0, i32 24, i32 0, i32 0, i32 1 }, align 8
@bjc_procs = internal global %struct.gx_device_procs_s { i32 (%struct.gx_device_s*)* @bjc_open, void (%struct.gx_device_s*, %struct.gs_matrix_s*)* @gx_default_get_initial_matrix, i32 (%struct.gx_device_s*)* @gx_default_sync_output, i32 (%struct.gx_device_s*, i32, i32)* @gdev_prn_bg_output_page, i32 (%struct.gx_device_s*)* @gdev_prn_close, i64 (%struct.gx_device_s*, i16*)* null, i32 (%struct.gx_device_s*, i64, i16*)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* null, i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* null, i32 (%struct.gx_device_s*, i32, i8*, i8**)* @gx_default_get_bits, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @bjc_get_params, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @bjc_put_params, i64 (%struct.gx_device_s*, i16*)* @gdev_cmyk_map_cmyk_color, %struct.gx_xfont_procs_s* (%struct.gx_device_s*)* null, %struct.gx_device_s* (%struct.gx_device_s*)* null, i64 (%struct.gx_device_s*, i16, i16, i16, i16)* null, %struct.gx_device_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)* null, i32 (%struct.gx_device_s*, i32, i32*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* null, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)* null, i32 (%struct.gx_device_s*, i64, i16*)* null, i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)* null, i32 (%struct.gx_device_s*, %struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_transparency_group_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gx_transparency_mask_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32)* null, i64 (%struct.gx_device_s*, i16*)* @gdev_cmyk_map_cmyk_color, i32 (%struct.gx_device_s*, i64, i16*)* @gdev_cmyk_map_color_cmyk, i32 (%struct.gx_device_s*, i64, %struct.gs_pattern1_instance_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* null, %struct.gs_devn_params_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i8*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)* null, void (%struct.gx_device_s*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_process_page_options_s*)* null }, align 8
@.str.18 = private unnamed_addr constant [7 x i8] c"bjc600\00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"DeviceCMYK\00", align 1
@gs_bjc600_device = global { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [11240 x i8], { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* }, [4096 x i8], i32, i32, i32, i32, i32, i32, %struct._IO_FILE*, i64, i8*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s*, i32)*, %struct.gx_page_queue_s*, i32, %struct.gx_device_printer_s*, i32, i32, %struct.bg_print_s, i32, %struct.gx_saved_pages_list_s*, %struct.gx_device_procs_s, %struct.gx_device_procs_s, i16, i32, i32, i32, float, %struct.bjc600_params } { i32 18528, %struct.gx_device_procs_s* @bjc_procs, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i32 0, i32 0), %struct.gs_memory_s* null, %struct.gs_memory_struct_type_s* @st_device_printer, i32 0, void (%struct.gx_device_s*)* null, %struct.rc_header_s zeroinitializer, i32 0, i32 0, i32 0, %struct.gx_device_color_info_s { i32 4, i32 4, i32 0, i16 24, i8 3, i32 255, i32 63, i32 256, i32 256, %struct.gx_device_anti_alias_info_s { i32 1, i32 1 }, i32 -1, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [64 x i64] zeroinitializer, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i32 0, i32 0), i32 -1, i64 0, i32 0 }, %struct.gx_device_cached_colors_s { i64 -1, i64 -1 }, i32 3060, i32 3960, i32 0, i32 0, i32 0, i32 0, [2 x float] [float 6.120000e+02, float 7.920000e+02], [4 x float] zeroinitializer, i32 0, [2 x float] [float 3.600000e+02, float 3.600000e+02], [2 x float] [float 3.600000e+02, float 3.600000e+02], [2 x float] zeroinitializer, [4 x float] zeroinitializer, i64 0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, %struct.gx_stroked_gradient_recognizer_s zeroinitializer, i32 0, i32 0, %struct.gdev_space_params_s { i64 10000000, i64 4000000, %struct.gx_band_params_s zeroinitializer, i32 0, i32 0 }, %struct.cmm_dev_profile_s* null, i32 0, %struct.gx_page_device_procs_s { i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_install, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_begin_page, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* @gx_default_end_page }, %struct.gx_device_procs_s zeroinitializer, [11240 x i8] zeroinitializer, { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* } { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)* @bjc_print_page, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_print_page_copies, %struct.gx_device_buf_procs_s { i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, %struct.gx_render_plane_s*, %struct.gs_memory_s*, %struct.gx_colors_usage_s*)* @gx_default_create_buf_device, i32 (%struct.gx_device_buf_space_s*, %struct.gx_device_s*, %struct.gx_render_plane_s*, i32, i32)* @gx_default_size_buf_device, i32 (%struct.gx_device_s*, i8*, i32, i8**, i32, i32, i32)* @gx_default_setup_buf_device, void (%struct.gx_device_s*)* @gx_default_destroy_buf_device }, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)* @gx_default_get_space_params, i32 (%struct.gdev_prn_start_render_params_s*)* @gx_default_start_render_thread, i32 (%struct.gx_device_printer_s*)* @gx_default_open_render_device, i32 (%struct.gx_device_printer_s*)* @gx_default_close_render_device, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_buffer_page }, [4096 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 -1, i32 0, %struct._IO_FILE* null, i64 0, i8* null, %struct.gs_memory_s* null, %struct.gs_memory_s* null, i32 (%struct.gx_device_s*, i32)* null, %struct.gx_page_queue_s* null, i32 0, %struct.gx_device_printer_s* null, i32 0, i32 0, %struct.bg_print_s zeroinitializer, i32 0, %struct.gx_saved_pages_list_s* null, %struct.gx_device_procs_s zeroinitializer, %struct.gx_device_procs_s zeroinitializer, i16 1, i32 24, i32 0, i32 10, float 0.000000e+00, %struct.bjc600_params { i32 0, i32 0, i32 0, i32 80, i32 0, i32 1, i32 4, i32 15, i32 0 } }, align 8
@.str.20 = private unnamed_addr constant [7 x i8] c"bjc800\00", align 1
@gs_bjc800_device = global { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [11240 x i8], { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* }, [4096 x i8], i32, i32, i32, i32, i32, i32, %struct._IO_FILE*, i64, i8*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s*, i32)*, %struct.gx_page_queue_s*, i32, %struct.gx_device_printer_s*, i32, i32, %struct.bg_print_s, i32, %struct.gx_saved_pages_list_s*, %struct.gx_device_procs_s, %struct.gx_device_procs_s, i16, i32, i32, i32, float, %struct.bjc_params } { i32 18528, %struct.gx_device_procs_s* @bjc_procs, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i32 0, i32 0), %struct.gs_memory_s* null, %struct.gs_memory_struct_type_s* @st_device_printer, i32 0, void (%struct.gx_device_s*)* null, %struct.rc_header_s zeroinitializer, i32 0, i32 0, i32 0, %struct.gx_device_color_info_s { i32 4, i32 4, i32 0, i16 24, i8 3, i32 255, i32 63, i32 256, i32 256, %struct.gx_device_anti_alias_info_s { i32 1, i32 1 }, i32 -1, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [64 x i64] zeroinitializer, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i32 0, i32 0), i32 -1, i64 0, i32 0 }, %struct.gx_device_cached_colors_s { i64 -1, i64 -1 }, i32 3060, i32 3960, i32 0, i32 0, i32 0, i32 0, [2 x float] [float 6.120000e+02, float 7.920000e+02], [4 x float] zeroinitializer, i32 0, [2 x float] [float 3.600000e+02, float 3.600000e+02], [2 x float] [float 3.600000e+02, float 3.600000e+02], [2 x float] zeroinitializer, [4 x float] zeroinitializer, i64 0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, %struct.gx_stroked_gradient_recognizer_s zeroinitializer, i32 0, i32 0, %struct.gdev_space_params_s { i64 10000000, i64 4000000, %struct.gx_band_params_s zeroinitializer, i32 0, i32 0 }, %struct.cmm_dev_profile_s* null, i32 0, %struct.gx_page_device_procs_s { i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_install, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_begin_page, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* @gx_default_end_page }, %struct.gx_device_procs_s zeroinitializer, [11240 x i8] zeroinitializer, { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* } { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)* @bjc_print_page, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_print_page_copies, %struct.gx_device_buf_procs_s { i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, %struct.gx_render_plane_s*, %struct.gs_memory_s*, %struct.gx_colors_usage_s*)* @gx_default_create_buf_device, i32 (%struct.gx_device_buf_space_s*, %struct.gx_device_s*, %struct.gx_render_plane_s*, i32, i32)* @gx_default_size_buf_device, i32 (%struct.gx_device_s*, i8*, i32, i8**, i32, i32, i32)* @gx_default_setup_buf_device, void (%struct.gx_device_s*)* @gx_default_destroy_buf_device }, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)* @gx_default_get_space_params, i32 (%struct.gdev_prn_start_render_params_s*)* @gx_default_start_render_thread, i32 (%struct.gx_device_printer_s*)* @gx_default_open_render_device, i32 (%struct.gx_device_printer_s*)* @gx_default_close_render_device, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_buffer_page }, [4096 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 -1, i32 0, %struct._IO_FILE* null, i64 0, i8* null, %struct.gs_memory_s* null, %struct.gs_memory_s* null, i32 (%struct.gx_device_s*, i32)* null, %struct.gx_page_queue_s* null, i32 0, %struct.gx_device_printer_s* null, i32 0, i32 0, %struct.bg_print_s zeroinitializer, i32 0, %struct.gx_saved_pages_list_s* null, %struct.gx_device_procs_s zeroinitializer, %struct.gx_device_procs_s zeroinitializer, i16 1, i32 24, i32 0, i32 11, float 0.000000e+00, %struct.bjc_params { i32 0, i32 0, i32 0, i32 80, i32 0, i32 1, i32 4, i32 15 } }, align 8
@hp_colour_open.dj_a4 = internal constant [4 x float] [float 1.250000e-01, float 5.000000e-01, float 0x3FC24DD300000000, float 0x3FC5604180000000], align 16
@hp_colour_open.dj_letter = internal constant [4 x float] [float 2.500000e-01, float 5.000000e-01, float 2.500000e-01, float 0x3FC5604180000000], align 16
@hp_colour_open.dj_505j = internal constant [4 x float] [float 1.250000e-01, float 5.000000e-01, float 1.250000e-01, float 0x3FC5604180000000], align 16
@hp_colour_open.dj_505jc = internal constant [4 x float] [float 1.250000e-01, float 0x3FE547AE20000000, float 1.250000e-01, float 0x3FC5604180000000], align 16
@hp_colour_open.lj4_all = internal constant [4 x float] [float 0x3FD0A3D700000000, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00], align 16
@hp_colour_open.pj_all = internal constant [4 x float] [float 0x3FC5604180000000, float 0x3FC5604180000000, float 0x3FC5604180000000, float 0x3FC5604180000000], align 16
@hp_colour_open.dnj_all = internal constant [4 x float] [float 0x3FC5604180000000, float 0x3FC5604180000000, float 0x3FC5604180000000, float 0x3FC5604180000000], align 16
@hp_colour_open.ep_a4 = internal constant [4 x float] [float 0x3FC126E980000000, float 0x3FDE76C8C0000000, float 0x3FC6872B00000000, float 0x3FD570A3E0000000], align 16
@hp_colour_open.ep_letter = internal constant [4 x float] [float 0x3FC126E980000000, float 0x3FDE76C8C0000000, float 0x3FD8106240000000, float 0x3FD570A3E0000000], align 16
@hp_colour_open.bjc_a3 = internal global [4 x float] [float 0x3FC42850A0000000, float 0x3FD809AD00000000, float 0x3FC42850A0000000, float 0x3FD42850A0000000], align 16
@hp_colour_open.bjc_letter = internal global [4 x float] [float 0x3FD060C180000000, float 0x3FD809AD00000000, float 0x3FD060C180000000, float 0x3FBE3C7900000000], align 16
@hp_colour_open.bjc_a4 = internal global [4 x float] [float 0x3FC1224480000000, float 0x3FD809AD00000000, float 0x3FC1224480000000, float 0x3FBE3C7900000000], align 16
@.str.21 = private unnamed_addr constant [33 x i8] c"\00\00\FF\FFUU\92I\11\11\84!\10A@\81\01\01\02\01\04\01\08\01\10\01 \01@\01\80\01\00", align 1
@.str.22 = private unnamed_addr constant [13 x i8] c"BlackCorrect\00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c"Shingling\00", align 1
@.str.24 = private unnamed_addr constant [10 x i8] c"Depletion\00", align 1
@.str.25 = private unnamed_addr constant [13 x i8] c"BitsPerPixel\00", align 1
@.str.26 = private unnamed_addr constant [18 x i8] c"ProcessColorModel\00", align 1
@.str.27 = private unnamed_addr constant [13 x i8] c"PrintQuality\00", align 1
@.str.28 = private unnamed_addr constant [11 x i8] c"RenderType\00", align 1
@.str.29 = private unnamed_addr constant [11 x i8] c"ManualFeed\00", align 1
@.str.30 = private unnamed_addr constant [10 x i8] c"MediaType\00", align 1
@bjc_mediaTypeStrings = internal global [7 x %struct.stringParamDescription] [%struct.stringParamDescription { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.39, i32 0, i32 0), i32 0 }, %struct.stringParamDescription { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.40, i32 0, i32 0), i32 1 }, %struct.stringParamDescription { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.41, i32 0, i32 0), i32 2 }, %struct.stringParamDescription { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.42, i32 0, i32 0), i32 8 }, %struct.stringParamDescription { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.43, i32 0, i32 0), i32 9 }, %struct.stringParamDescription { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.44, i32 0, i32 0), i32 15 }, %struct.stringParamDescription zeroinitializer], align 16
@bjc800_printQualityStrings = internal global [5 x %struct.stringParamDescription] [%struct.stringParamDescription { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.45, i32 0, i32 0), i32 0 }, %struct.stringParamDescription { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.46, i32 0, i32 0), i32 1 }, %struct.stringParamDescription { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.47, i32 0, i32 0), i32 3 }, %struct.stringParamDescription { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.48, i32 0, i32 0), i32 4 }, %struct.stringParamDescription zeroinitializer], align 16
@bjc600_printQualityStrings = internal global [4 x %struct.stringParamDescription] [%struct.stringParamDescription { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.45, i32 0, i32 0), i32 0 }, %struct.stringParamDescription { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.46, i32 0, i32 0), i32 1 }, %struct.stringParamDescription { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.48, i32 0, i32 0), i32 2 }, %struct.stringParamDescription zeroinitializer], align 16
@.str.31 = private unnamed_addr constant [14 x i8] c"DitheringType\00", align 1
@bjc_ditheringTypeStrings = internal global [3 x %struct.stringParamDescription] [%struct.stringParamDescription { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.49, i32 0, i32 0), i32 0 }, %struct.stringParamDescription { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.50, i32 0, i32 0), i32 1 }, %struct.stringParamDescription zeroinitializer], align 16
@.str.32 = private unnamed_addr constant [12 x i8] c"PrintColors\00", align 1
@.str.33 = private unnamed_addr constant [12 x i8] c"MediaWeight\00", align 1
@.str.34 = private unnamed_addr constant [16 x i8] c"MonochromePrint\00", align 1
@.str.35 = private unnamed_addr constant [29 x i8] c"2.17.00 5/23/96 Yves Arrouye\00", align 1
@.str.36 = private unnamed_addr constant [8 x i8] c"Version\00", align 1
@.str.37 = private unnamed_addr constant [14 x i8] c"VersionString\00", align 1
@.str.38 = private unnamed_addr constant [13 x i8] c"OutputFaceUp\00", align 1
@.str.39 = private unnamed_addr constant [11 x i8] c"PlainPaper\00", align 1
@.str.40 = private unnamed_addr constant [12 x i8] c"CoatedPaper\00", align 1
@.str.41 = private unnamed_addr constant [17 x i8] c"TransparencyFilm\00", align 1
@.str.42 = private unnamed_addr constant [9 x i8] c"Envelope\00", align 1
@.str.43 = private unnamed_addr constant [5 x i8] c"Card\00", align 1
@.str.44 = private unnamed_addr constant [6 x i8] c"Other\00", align 1
@.str.45 = private unnamed_addr constant [7 x i8] c"Normal\00", align 1
@.str.46 = private unnamed_addr constant [5 x i8] c"High\00", align 1
@.str.47 = private unnamed_addr constant [4 x i8] c"Low\00", align 1
@.str.48 = private unnamed_addr constant [6 x i8] c"Draft\00", align 1
@.str.49 = private unnamed_addr constant [5 x i8] c"None\00", align 1
@.str.50 = private unnamed_addr constant [16 x i8] c"Floyd-Steinberg\00", align 1
@bjc_processColorsStrings = internal global [4 x %struct.stringParamDescription] [%struct.stringParamDescription { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 1 }, %struct.stringParamDescription { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i32 3 }, %struct.stringParamDescription { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i32 0, i32 0), i32 4 }, %struct.stringParamDescription zeroinitializer], align 16
@.str.51 = private unnamed_addr constant [13 x i8] c"HWResolution\00", align 1
@.str.52 = private unnamed_addr constant [12 x i8] c"\1B*v6W\00\03\00\05\06\05\00", align 1
@.str.53 = private unnamed_addr constant [12 x i8] c"\1B*v6W\00\03\00\08\08\08\00", align 1
@.str.54 = private unnamed_addr constant [21 x i8] c"hp_colour_print_page\00", align 1
@.str.55 = private unnamed_addr constant [16 x i8] c"ep_print_buffer\00", align 1
@.str.56 = private unnamed_addr constant [3 x i8] c"\1B@\00", align 1
@.str.57 = private unnamed_addr constant [8 x i8] c"\1B_R%c%c\00", align 1
@.str.58 = private unnamed_addr constant [5 x i8] c"\1B*rB\00", align 1
@.str.59 = private unnamed_addr constant [6 x i8] c"\1B*rbC\00", align 1
@.str.60 = private unnamed_addr constant [7 x i8] c"\1B*t%dR\00", align 1
@.str.61 = private unnamed_addr constant [21 x i8] c"\1B&l%dA\1B&l0o0e0L\1B*r0F\00", align 1
@.str.62 = private unnamed_addr constant [8 x i8] c"\1B*p0x0Y\00", align 1
@.str.63 = private unnamed_addr constant [13 x i8] c"\1B&u600D\1B*r1A\00", align 1
@.str.64 = private unnamed_addr constant [10 x i8] c"\1B&l%daolE\00", align 1
@.str.65 = private unnamed_addr constant [10 x i8] c"\1B*o%dd%dQ\00", align 1
@.str.66 = private unnamed_addr constant [7 x i8] c"\1B*p%dY\00", align 1
@.str.67 = private unnamed_addr constant [13 x i8] c"\1B*r%ds-%du0A\00", align 1
@.str.68 = private unnamed_addr constant [11 x i8] c"\1B_D%c\1B_E%c\00", align 1
@.str.69 = private unnamed_addr constant [5 x i8] c"\1B_N\00\00", align 1
@.str.70 = private unnamed_addr constant [6 x i8] c"\1B_J\C4\FF\00", align 1
@.str.71 = private unnamed_addr constant [8 x i8] c"\1B_U%c%c\00", align 1
@.str.72 = private unnamed_addr constant [8 x i8] c"\1B_S%c%c\00", align 1
@.str.73 = private unnamed_addr constant [5 x i8] c"\1B_A\01\00", align 1
@.str.74 = private unnamed_addr constant [37 x i8] c"\1B%%-12345X@PJL SET RESOLUTION = 600\0A\00", align 1
@.str.75 = private unnamed_addr constant [6 x i8] c"\1B%%0B\00", align 1
@.str.76 = private unnamed_addr constant [6 x i8] c"BP5,1\00", align 1
@.str.77 = private unnamed_addr constant [8 x i8] c"PS%d,%d\00", align 1
@.str.78 = private unnamed_addr constant [3 x i8] c"PU\00", align 1
@.str.79 = private unnamed_addr constant [8 x i8] c"PA%d,%d\00", align 1
@.str.80 = private unnamed_addr constant [6 x i8] c"\1B%%1A\00", align 1
@.str.81 = private unnamed_addr constant [6 x i8] c"\1B&a1N\00", align 1
@.str.82 = private unnamed_addr constant [8 x i8] c"\1B*t600R\00", align 1
@hp_colour_print_page.temp = internal constant [11 x i8] c"\1B*v6W\00\00\03\08\08\08", align 1
@.str.83 = private unnamed_addr constant [7 x i8] c"\1B*r%dS\00", align 1
@.str.84 = private unnamed_addr constant [6 x i8] c"\1B*r1A\00", align 1
@.str.85 = private unnamed_addr constant [7 x i8] c"\1B*o%dQ\00", align 1
@.str.86 = private unnamed_addr constant [7 x i8] c"\1B*t%dJ\00", align 1
@.str.87 = private unnamed_addr constant [9 x i8] c"\1B*r%ds1A\00", align 1
@.str.88 = private unnamed_addr constant [12 x i8] c"\1B*r%ds%du0A\00", align 1
@.str.89 = private unnamed_addr constant [5 x i8] c"\1B&lL\00", align 1
@.str.90 = private unnamed_addr constant [7 x i8] c"\1B&a%dV\00", align 1
@.str.91 = private unnamed_addr constant [8 x i8] c"\1B|J%c%c\00", align 1
@.str.92 = private unnamed_addr constant [6 x i8] c"\1B_M%c\00", align 1
@.str.93 = private unnamed_addr constant [4 x i8] c"\1B*b\00", align 1
@.str.94 = private unnamed_addr constant [4 x i8] c"%dm\00", align 1
@.str.95 = private unnamed_addr constant [7 x i8] c"\1B*b%dM\00", align 1
@.str.96 = private unnamed_addr constant [8 x i8] c"\1B_Y%c%c\00", align 1
@.str.97 = private unnamed_addr constant [5 x i8] c"\1B*bY\00", align 1
@.str.98 = private unnamed_addr constant [7 x i8] c"\1B*b%dY\00", align 1
@.str.99 = private unnamed_addr constant [5 x i8] c"\1B*bW\00", align 1
@.str.100 = private unnamed_addr constant [4 x i8] c"%dy\00", align 1
@hp_colour_print_page.spr40 = internal global [8 x i64] [i64 0, i64 64, i64 16384, i64 16448, i64 4194304, i64 4194368, i64 4210688, i64 4210752], align 16
@hp_colour_print_page.spr08 = internal global [8 x i64] [i64 0, i64 8, i64 2048, i64 2056, i64 524288, i64 524296, i64 526336, i64 526344], align 16
@hp_colour_print_page.spr02 = internal global [8 x i64] [i64 0, i64 2, i64 512, i64 514, i64 131072, i64 131074, i64 131584, i64 131586], align 16
@.str.101 = private unnamed_addr constant [3 x i8] c"#m\00", align 1
@.str.102 = private unnamed_addr constant [6 x i8] c"\1B*b#M\00", align 1
@.str.103 = private unnamed_addr constant [3 x i8] c"3m\00", align 1
@.str.104 = private unnamed_addr constant [6 x i8] c"\1B*b3M\00", align 1
@.str.105 = private unnamed_addr constant [3 x i8] c"2m\00", align 1
@.str.106 = private unnamed_addr constant [6 x i8] c"\1B*b2M\00", align 1
@.str.107 = private unnamed_addr constant [9 x i8] c"\1B_%c%c%c\00", align 1
@.str.108 = private unnamed_addr constant [5 x i8] c"WVVV\00", align 1
@.str.109 = private unnamed_addr constant [5 x i8] c"%d%c\00", align 1
@.str.110 = private unnamed_addr constant [5 x i8] c"wvvv\00", align 1
@.str.111 = private unnamed_addr constant [8 x i8] c"\1B*b%d%c\00", align 1
@.str.112 = private unnamed_addr constant [3 x i8] c"0M\00", align 1
@.str.113 = private unnamed_addr constant [4 x i8] c"\1B_C\00", align 1
@.str.114 = private unnamed_addr constant [8 x i8] c"\1B*rbC\1BE\00", align 1
@.str.115 = private unnamed_addr constant [4 x i8] c"\0C\1B@\00", align 1
@.str.116 = private unnamed_addr constant [12 x i8] c"\1B*rC\1B%0BPG;\00", align 1
@.str.117 = private unnamed_addr constant [6 x i8] c"\1B&l0H\00", align 1
@.str.118 = private unnamed_addr constant [4 x i8] c"\1B[K\00", align 1
@.str.119 = private unnamed_addr constant [2 x i8] c"\01\00", align 1
@.str.120 = private unnamed_addr constant [3 x i8] c"\1B(\00", align 1
@.str.121 = private unnamed_addr constant [4 x i8] c"\1B(e\00", align 1
@ep_print_image.color = internal constant [4 x i8] c"\04\01\02\00", align 1
@.str.122 = private unnamed_addr constant [4 x i8] c"\1BJ\FF\00", align 1
@.str.123 = private unnamed_addr constant [4 x i8] c"\1BJ\80\00", align 1
@.str.124 = private unnamed_addr constant [4 x i8] c"\1B|J\00", align 1
@.str.125 = private unnamed_addr constant [4 x i8] c"\0D\1Br\00", align 1
@ep_print_image.zeros = internal constant [8 x i64] zeroinitializer, align 16
@.str.126 = private unnamed_addr constant [4 x i8] c"\1B|B\00", align 1
@.str.127 = private unnamed_addr constant [3 x i8] c"\1B\5C\00", align 1
@.str.128 = private unnamed_addr constant [49 x i8] c"ep_print_image: illegal command character `%c'.\0A\00", align 1
@bjc_raster_cmd.ymckCodes = internal global [4 x i8] c"\04\02\01\08", align 1
@.str.129 = private unnamed_addr constant [5 x i8] c"YMCK\00", align 1
@.str.130 = private unnamed_addr constant [4 x i8] c"\1B(A\00", align 1
@.str.131 = private unnamed_addr constant [2 x i8] zeroinitializer, align 1
@.str.132 = private unnamed_addr constant [41 x i8] c"\1B%-12345X@PJL ENTER LANGUAGE = PCLSLEEK\0A\00", align 1
@.str.133 = private unnamed_addr constant [10 x i8] c"\1B%-12345X\00", align 1
@.str.134 = private unnamed_addr constant [43 x i8] c"\1B%-12345X@PJL\0D\0A@PJL ENTER LANGUAGE = PCL\0D\0A\00", align 1
@.str.135 = private unnamed_addr constant [36 x i8] c"\1B%-12345X@PJL enter language = PCL\0A\00", align 1
@.str.136 = private unnamed_addr constant [4 x i8] c"\1B%8\00", align 1
@.str.137 = private unnamed_addr constant [4 x i8] c"\1B%@\00", align 1

declare i32 @gx_default_install(%struct.gx_device_s*, %struct.gs_state_s*) #0

declare i32 @gx_default_begin_page(%struct.gx_device_s*, %struct.gs_state_s*) #0

declare i32 @gx_default_end_page(%struct.gx_device_s*, i32, %struct.gs_state_s*) #0

; Function Attrs: nounwind uwtable
define internal i32 @dj500c_print_page(%struct.gx_device_printer_s* %pdev, %struct._IO_FILE* %prn_stream) #1 {
entry:
  %pdev.addr = alloca %struct.gx_device_printer_s*, align 8
  %prn_stream.addr = alloca %struct._IO_FILE*, align 8
  store %struct.gx_device_printer_s* %pdev, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  store %struct._IO_FILE* %prn_stream, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %0 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call = call i32 @hp_colour_print_page(%struct.gx_device_printer_s* %0, %struct._IO_FILE* %1, i32 0) #5
  ret i32 %call
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
define internal i32 @dj550c_print_page(%struct.gx_device_printer_s* %pdev, %struct._IO_FILE* %prn_stream) #1 {
entry:
  %pdev.addr = alloca %struct.gx_device_printer_s*, align 8
  %prn_stream.addr = alloca %struct._IO_FILE*, align 8
  store %struct.gx_device_printer_s* %pdev, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  store %struct._IO_FILE* %prn_stream, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %0 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call = call i32 @hp_colour_print_page(%struct.gx_device_printer_s* %0, %struct._IO_FILE* %1, i32 1) #5
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @picty180_print_page(%struct.gx_device_printer_s* %pdev, %struct._IO_FILE* %prn_stream) #1 {
entry:
  %pdev.addr = alloca %struct.gx_device_printer_s*, align 8
  %prn_stream.addr = alloca %struct._IO_FILE*, align 8
  %ret_code = alloca i32, align 4
  store %struct.gx_device_printer_s* %pdev, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  store %struct._IO_FILE* %prn_stream, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %0 = bitcast i32* %ret_code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call = call i32 @fputs(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.132, i32 0, i32 0), %struct._IO_FILE* %1) #5
  %2 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call1 = call i32 @hp_colour_print_page(%struct.gx_device_printer_s* %2, %struct._IO_FILE* %3, i32 1) #5
  store i32 %call1, i32* %ret_code, align 4, !tbaa !5
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call2 = call i32 @fputs(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.133, i32 0, i32 0), %struct._IO_FILE* %4) #5
  %5 = load i32, i32* %ret_code, align 4, !tbaa !5
  %6 = bitcast i32* %ret_code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %6) #2
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define internal i32 @dj505j_print_page(%struct.gx_device_printer_s* %pdev, %struct._IO_FILE* %prn_stream) #1 {
entry:
  %pdev.addr = alloca %struct.gx_device_printer_s*, align 8
  %prn_stream.addr = alloca %struct._IO_FILE*, align 8
  store %struct.gx_device_printer_s* %pdev, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  store %struct._IO_FILE* %prn_stream, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %0 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call = call i32 @hp_colour_print_page(%struct.gx_device_printer_s* %0, %struct._IO_FILE* %1, i32 2) #5
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @declj250_print_page(%struct.gx_device_printer_s* %pdev, %struct._IO_FILE* %prn_stream) #1 {
entry:
  %pdev.addr = alloca %struct.gx_device_printer_s*, align 8
  %prn_stream.addr = alloca %struct._IO_FILE*, align 8
  %ret_code = alloca i32, align 4
  store %struct.gx_device_printer_s* %pdev, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  store %struct._IO_FILE* %prn_stream, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %0 = bitcast i32* %ret_code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call = call i32 @fputs(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.136, i32 0, i32 0), %struct._IO_FILE* %1) #5
  %2 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call1 = call i32 @hp_colour_print_page(%struct.gx_device_printer_s* %2, %struct._IO_FILE* %3, i32 6) #5
  store i32 %call1, i32* %ret_code, align 4, !tbaa !5
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call2 = call i32 @fputs(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.137, i32 0, i32 0), %struct._IO_FILE* %4) #5
  %5 = load i32, i32* %ret_code, align 4, !tbaa !5
  %6 = bitcast i32* %ret_code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %6) #2
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define internal i32 @dnj650c_print_page(%struct.gx_device_printer_s* %pdev, %struct._IO_FILE* %prn_stream) #1 {
entry:
  %pdev.addr = alloca %struct.gx_device_printer_s*, align 8
  %prn_stream.addr = alloca %struct._IO_FILE*, align 8
  store %struct.gx_device_printer_s* %pdev, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  store %struct._IO_FILE* %prn_stream, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %0 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call = call i32 @hp_colour_print_page(%struct.gx_device_printer_s* %0, %struct._IO_FILE* %1, i32 7) #5
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @lj4dith_print_page(%struct.gx_device_printer_s* %pdev, %struct._IO_FILE* %prn_stream) #1 {
entry:
  %pdev.addr = alloca %struct.gx_device_printer_s*, align 8
  %prn_stream.addr = alloca %struct._IO_FILE*, align 8
  store %struct.gx_device_printer_s* %pdev, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  store %struct._IO_FILE* %prn_stream, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %0 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call = call i32 @hp_colour_print_page(%struct.gx_device_printer_s* %0, %struct._IO_FILE* %1, i32 8) #5
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @lj4dithp_print_page(%struct.gx_device_printer_s* %pdev, %struct._IO_FILE* %prn_stream) #1 {
entry:
  %pdev.addr = alloca %struct.gx_device_printer_s*, align 8
  %prn_stream.addr = alloca %struct._IO_FILE*, align 8
  %ret_code = alloca i32, align 4
  store %struct.gx_device_printer_s* %pdev, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  store %struct._IO_FILE* %prn_stream, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %0 = bitcast i32* %ret_code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call = call i32 @fputs(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.134, i32 0, i32 0), %struct._IO_FILE* %1) #5
  %2 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call1 = call i32 @hp_colour_print_page(%struct.gx_device_printer_s* %2, %struct._IO_FILE* %3, i32 8) #5
  store i32 %call1, i32* %ret_code, align 4, !tbaa !5
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call2 = call i32 @fputs(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.133, i32 0, i32 0), %struct._IO_FILE* %4) #5
  %5 = load i32, i32* %ret_code, align 4, !tbaa !5
  %6 = bitcast i32* %ret_code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %6) #2
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define internal i32 @pj_print_page(%struct.gx_device_printer_s* %pdev, %struct._IO_FILE* %prn_stream) #1 {
entry:
  %pdev.addr = alloca %struct.gx_device_printer_s*, align 8
  %prn_stream.addr = alloca %struct._IO_FILE*, align 8
  store %struct.gx_device_printer_s* %pdev, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  store %struct._IO_FILE* %prn_stream, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %0 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call = call i32 @hp_colour_print_page(%struct.gx_device_printer_s* %0, %struct._IO_FILE* %1, i32 4) #5
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @pjxl_print_page(%struct.gx_device_printer_s* %pdev, %struct._IO_FILE* %prn_stream) #1 {
entry:
  %pdev.addr = alloca %struct.gx_device_printer_s*, align 8
  %prn_stream.addr = alloca %struct._IO_FILE*, align 8
  store %struct.gx_device_printer_s* %pdev, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  store %struct._IO_FILE* %prn_stream, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %0 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call = call i32 @hp_colour_print_page(%struct.gx_device_printer_s* %0, %struct._IO_FILE* %1, i32 5) #5
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @pjxl300_print_page(%struct.gx_device_printer_s* %pdev, %struct._IO_FILE* %prn_stream) #1 {
entry:
  %pdev.addr = alloca %struct.gx_device_printer_s*, align 8
  %prn_stream.addr = alloca %struct._IO_FILE*, align 8
  %ret_code = alloca i32, align 4
  store %struct.gx_device_printer_s* %pdev, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  store %struct._IO_FILE* %prn_stream, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %0 = bitcast i32* %ret_code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call = call i32 @fputs(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.135, i32 0, i32 0), %struct._IO_FILE* %1) #5
  %2 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call1 = call i32 @hp_colour_print_page(%struct.gx_device_printer_s* %2, %struct._IO_FILE* %3, i32 3) #5
  store i32 %call1, i32* %ret_code, align 4, !tbaa !5
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call2 = call i32 @fputs(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.133, i32 0, i32 0), %struct._IO_FILE* %4) #5
  %5 = load i32, i32* %ret_code, align 4, !tbaa !5
  %6 = bitcast i32* %ret_code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %6) #2
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define internal i32 @escp_print_page(%struct.gx_device_printer_s* %pdev, %struct._IO_FILE* %prn_stream) #1 {
entry:
  %pdev.addr = alloca %struct.gx_device_printer_s*, align 8
  %prn_stream.addr = alloca %struct._IO_FILE*, align 8
  store %struct.gx_device_printer_s* %pdev, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  store %struct._IO_FILE* %prn_stream, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %0 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call = call i32 @hp_colour_print_page(%struct.gx_device_printer_s* %0, %struct._IO_FILE* %1, i32 9) #5
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @bjc_print_page(%struct.gx_device_printer_s* %pdev, %struct._IO_FILE* %prn_stream) #1 {
entry:
  %pdev.addr = alloca %struct.gx_device_printer_s*, align 8
  %prn_stream.addr = alloca %struct._IO_FILE*, align 8
  store %struct.gx_device_printer_s* %pdev, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  store %struct._IO_FILE* %prn_stream, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %0 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %2 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %3 = bitcast %struct.gx_device_printer_s* %2 to %struct.gx_device_bjc800_s*
  %ptype = getelementptr inbounds %struct.gx_device_bjc800_s, %struct.gx_device_bjc800_s* %3, i32 0, i32 71
  %4 = load i32, i32* %ptype, align 4, !tbaa !7
  %call = call i32 @hp_colour_print_page(%struct.gx_device_printer_s* %0, %struct._IO_FILE* %1, i32 %4) #5
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @dj500c_open(%struct.gx_device_s* %pdev) #1 {
entry:
  %pdev.addr = alloca %struct.gx_device_s*, align 8
  store %struct.gx_device_s* %pdev, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %0 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %call = call i32 @hp_colour_open(%struct.gx_device_s* %0, i32 0) #5
  ret i32 %call
}

declare void @gx_default_get_initial_matrix(%struct.gx_device_s*, %struct.gs_matrix_s*) #0

declare i32 @gx_default_sync_output(%struct.gx_device_s*) #0

declare i32 @gdev_prn_bg_output_page(%struct.gx_device_s*, i32, i32) #0

declare i32 @gdev_prn_close(%struct.gx_device_s*) #0

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
  %correction = alloca i32, align 4
  %c = alloca i16, align 2
  %m = alloca i16, align 2
  %y = alloca i16, align 2
  %maxval = alloca i64, align 8
  %minval = alloca i64, align 8
  %range = alloca i64, align 8
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
  %4 = load i16, i16* %arrayidx, align 2, !tbaa !25
  store i16 %4, i16* %r, align 2, !tbaa !25
  %5 = load i16*, i16** %cv.addr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds i16, i16* %5, i64 1
  %6 = load i16, i16* %arrayidx1, align 2, !tbaa !25
  store i16 %6, i16* %g, align 2, !tbaa !25
  %7 = load i16*, i16** %cv.addr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds i16, i16* %7, i64 2
  %8 = load i16, i16* %arrayidx2, align 2, !tbaa !25
  store i16 %8, i16* %b, align 2, !tbaa !25
  %9 = load i16, i16* %r, align 2, !tbaa !25
  %conv = zext i16 %9 to i32
  %10 = load i16, i16* %g, align 2, !tbaa !25
  %conv3 = zext i16 %10 to i32
  %and = and i32 %conv, %conv3
  %11 = load i16, i16* %b, align 2, !tbaa !25
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
  br label %cleanup.206

if.else:                                          ; preds = %entry
  %12 = bitcast i32* %correction to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #2
  %13 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %14 = bitcast %struct.gx_device_s* %13 to %struct.gx_device_colour_prn*
  %correction9 = getelementptr inbounds %struct.gx_device_colour_prn, %struct.gx_device_colour_prn* %14, i32 0, i32 70
  %15 = load i32, i32* %correction9, align 4, !tbaa !26
  store i32 %15, i32* %correction, align 4, !tbaa !5
  %16 = bitcast i16* %c to i8*
  call void @llvm.lifetime.start(i64 2, i8* %16) #2
  %17 = load i16, i16* %r, align 2, !tbaa !25
  %conv10 = zext i16 %17 to i32
  %sub = sub nsw i32 65535, %conv10
  %conv11 = trunc i32 %sub to i16
  store i16 %conv11, i16* %c, align 2, !tbaa !25
  %18 = bitcast i16* %m to i8*
  call void @llvm.lifetime.start(i64 2, i8* %18) #2
  %19 = load i16, i16* %g, align 2, !tbaa !25
  %conv12 = zext i16 %19 to i32
  %sub13 = sub nsw i32 65535, %conv12
  %conv14 = trunc i32 %sub13 to i16
  store i16 %conv14, i16* %m, align 2, !tbaa !25
  %20 = bitcast i16* %y to i8*
  call void @llvm.lifetime.start(i64 2, i8* %20) #2
  %21 = load i16, i16* %b, align 2, !tbaa !25
  %conv15 = zext i16 %21 to i32
  %sub16 = sub nsw i32 65535, %conv15
  %conv17 = trunc i32 %sub16 to i16
  store i16 %conv17, i16* %y, align 2, !tbaa !25
  %22 = load i32, i32* %correction, align 4, !tbaa !5
  %tobool = icmp ne i32 %22, 0
  br i1 %tobool, label %if.then.18, label %if.end.89

if.then.18:                                       ; preds = %if.else
  %23 = bitcast i64* %maxval to i8*
  call void @llvm.lifetime.start(i64 8, i8* %23) #2
  %24 = bitcast i64* %minval to i8*
  call void @llvm.lifetime.start(i64 8, i8* %24) #2
  %25 = bitcast i64* %range to i8*
  call void @llvm.lifetime.start(i64 8, i8* %25) #2
  %26 = load i16, i16* %c, align 2, !tbaa !25
  %conv19 = zext i16 %26 to i32
  %27 = load i16, i16* %m, align 2, !tbaa !25
  %conv20 = zext i16 %27 to i32
  %cmp21 = icmp sge i32 %conv19, %conv20
  br i1 %cmp21, label %cond.true, label %cond.false.30

cond.true:                                        ; preds = %if.then.18
  %28 = load i16, i16* %c, align 2, !tbaa !25
  %conv23 = zext i16 %28 to i32
  %29 = load i16, i16* %y, align 2, !tbaa !25
  %conv24 = zext i16 %29 to i32
  %cmp25 = icmp sge i32 %conv23, %conv24
  br i1 %cmp25, label %cond.true.27, label %cond.false

cond.true.27:                                     ; preds = %cond.true
  %30 = load i16, i16* %c, align 2, !tbaa !25
  %conv28 = zext i16 %30 to i32
  br label %cond.end

cond.false:                                       ; preds = %cond.true
  %31 = load i16, i16* %y, align 2, !tbaa !25
  %conv29 = zext i16 %31 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true.27
  %cond = phi i32 [ %conv28, %cond.true.27 ], [ %conv29, %cond.false ]
  br label %cond.end.41

cond.false.30:                                    ; preds = %if.then.18
  %32 = load i16, i16* %m, align 2, !tbaa !25
  %conv31 = zext i16 %32 to i32
  %33 = load i16, i16* %y, align 2, !tbaa !25
  %conv32 = zext i16 %33 to i32
  %cmp33 = icmp sge i32 %conv31, %conv32
  br i1 %cmp33, label %cond.true.35, label %cond.false.37

cond.true.35:                                     ; preds = %cond.false.30
  %34 = load i16, i16* %m, align 2, !tbaa !25
  %conv36 = zext i16 %34 to i32
  br label %cond.end.39

cond.false.37:                                    ; preds = %cond.false.30
  %35 = load i16, i16* %y, align 2, !tbaa !25
  %conv38 = zext i16 %35 to i32
  br label %cond.end.39

cond.end.39:                                      ; preds = %cond.false.37, %cond.true.35
  %cond40 = phi i32 [ %conv36, %cond.true.35 ], [ %conv38, %cond.false.37 ]
  br label %cond.end.41

cond.end.41:                                      ; preds = %cond.end.39, %cond.end
  %cond42 = phi i32 [ %cond, %cond.end ], [ %cond40, %cond.end.39 ]
  %conv43 = sext i32 %cond42 to i64
  store i64 %conv43, i64* %maxval, align 8, !tbaa !28
  %36 = load i64, i64* %maxval, align 8, !tbaa !28
  %cmp44 = icmp ugt i64 %36, 0
  br i1 %cmp44, label %if.then.46, label %if.end

if.then.46:                                       ; preds = %cond.end.41
  %37 = load i16, i16* %c, align 2, !tbaa !25
  %conv47 = zext i16 %37 to i32
  %38 = load i16, i16* %m, align 2, !tbaa !25
  %conv48 = zext i16 %38 to i32
  %cmp49 = icmp sle i32 %conv47, %conv48
  br i1 %cmp49, label %cond.true.51, label %cond.false.62

cond.true.51:                                     ; preds = %if.then.46
  %39 = load i16, i16* %c, align 2, !tbaa !25
  %conv52 = zext i16 %39 to i32
  %40 = load i16, i16* %y, align 2, !tbaa !25
  %conv53 = zext i16 %40 to i32
  %cmp54 = icmp sle i32 %conv52, %conv53
  br i1 %cmp54, label %cond.true.56, label %cond.false.58

cond.true.56:                                     ; preds = %cond.true.51
  %41 = load i16, i16* %c, align 2, !tbaa !25
  %conv57 = zext i16 %41 to i32
  br label %cond.end.60

cond.false.58:                                    ; preds = %cond.true.51
  %42 = load i16, i16* %y, align 2, !tbaa !25
  %conv59 = zext i16 %42 to i32
  br label %cond.end.60

cond.end.60:                                      ; preds = %cond.false.58, %cond.true.56
  %cond61 = phi i32 [ %conv57, %cond.true.56 ], [ %conv59, %cond.false.58 ]
  br label %cond.end.73

cond.false.62:                                    ; preds = %if.then.46
  %43 = load i16, i16* %m, align 2, !tbaa !25
  %conv63 = zext i16 %43 to i32
  %44 = load i16, i16* %y, align 2, !tbaa !25
  %conv64 = zext i16 %44 to i32
  %cmp65 = icmp sle i32 %conv63, %conv64
  br i1 %cmp65, label %cond.true.67, label %cond.false.69

cond.true.67:                                     ; preds = %cond.false.62
  %45 = load i16, i16* %m, align 2, !tbaa !25
  %conv68 = zext i16 %45 to i32
  br label %cond.end.71

cond.false.69:                                    ; preds = %cond.false.62
  %46 = load i16, i16* %y, align 2, !tbaa !25
  %conv70 = zext i16 %46 to i32
  br label %cond.end.71

cond.end.71:                                      ; preds = %cond.false.69, %cond.true.67
  %cond72 = phi i32 [ %conv68, %cond.true.67 ], [ %conv70, %cond.false.69 ]
  br label %cond.end.73

cond.end.73:                                      ; preds = %cond.end.71, %cond.end.60
  %cond74 = phi i32 [ %cond61, %cond.end.60 ], [ %cond72, %cond.end.71 ]
  %conv75 = sext i32 %cond74 to i64
  store i64 %conv75, i64* %minval, align 8, !tbaa !28
  %47 = load i64, i64* %maxval, align 8, !tbaa !28
  %48 = load i64, i64* %minval, align 8, !tbaa !28
  %sub76 = sub i64 %47, %48
  store i64 %sub76, i64* %range, align 8, !tbaa !28
  %49 = load i16, i16* %c, align 2, !tbaa !25
  %conv77 = zext i16 %49 to i32
  %shr78 = ashr i32 %conv77, 4
  %conv79 = sext i32 %shr78 to i64
  %50 = load i64, i64* %range, align 8, !tbaa !28
  %51 = load i64, i64* %maxval, align 8, !tbaa !28
  %52 = load i32, i32* %correction, align 4, !tbaa !5
  %conv80 = sext i32 %52 to i64
  %mul81 = mul i64 %51, %conv80
  %add82 = add i64 %50, %mul81
  %mul83 = mul i64 %conv79, %add82
  %53 = load i64, i64* %maxval, align 8, !tbaa !28
  %54 = load i32, i32* %correction, align 4, !tbaa !5
  %add84 = add nsw i32 %54, 1
  %conv85 = sext i32 %add84 to i64
  %mul86 = mul i64 %53, %conv85
  %shr87 = lshr i64 %mul86, 4
  %div = udiv i64 %mul83, %shr87
  %conv88 = trunc i64 %div to i16
  store i16 %conv88, i16* %c, align 2, !tbaa !25
  br label %if.end

if.end:                                           ; preds = %cond.end.73, %cond.end.41
  %55 = bitcast i64* %range to i8*
  call void @llvm.lifetime.end(i64 8, i8* %55) #2
  %56 = bitcast i64* %minval to i8*
  call void @llvm.lifetime.end(i64 8, i8* %56) #2
  %57 = bitcast i64* %maxval to i8*
  call void @llvm.lifetime.end(i64 8, i8* %57) #2
  br label %if.end.89

if.end.89:                                        ; preds = %if.end, %if.else
  %58 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %58, i32 0, i32 11
  %depth = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 3
  %59 = load i16, i16* %depth, align 2, !tbaa !29
  %conv90 = zext i16 %59 to i32
  switch i32 %conv90, label %sw.epilog [
    i32 1, label %sw.bb
    i32 8, label %sw.bb.98
    i32 16, label %sw.bb.123
    i32 24, label %sw.bb.135
    i32 32, label %sw.bb.159
  ]

sw.bb:                                            ; preds = %if.end.89
  %60 = load i16, i16* %c, align 2, !tbaa !25
  %conv91 = zext i16 %60 to i32
  %61 = load i16, i16* %m, align 2, !tbaa !25
  %conv92 = zext i16 %61 to i32
  %or = or i32 %conv91, %conv92
  %62 = load i16, i16* %y, align 2, !tbaa !25
  %conv93 = zext i16 %62 to i32
  %or94 = or i32 %or, %conv93
  %cmp95 = icmp sgt i32 %or94, 32767
  %cond97 = select i1 %cmp95, i64 1, i64 0
  store i64 %cond97, i64* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.98:                                         ; preds = %if.end.89
  %63 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %color_info99 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %63, i32 0, i32 11
  %num_components = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info99, i32 0, i32 1
  %64 = load i32, i32* %num_components, align 4, !tbaa !31
  %cmp100 = icmp sge i32 %64, 3
  br i1 %cmp100, label %if.then.102, label %if.else.113

if.then.102:                                      ; preds = %sw.bb.98
  %65 = load i16, i16* %c, align 2, !tbaa !25
  %conv103 = zext i16 %65 to i32
  %shr104 = ashr i32 %conv103, 15
  %66 = load i16, i16* %m, align 2, !tbaa !25
  %conv105 = zext i16 %66 to i32
  %shr106 = ashr i32 %conv105, 15
  %shl = shl i32 %shr106, 1
  %add107 = add nsw i32 %shr104, %shl
  %67 = load i16, i16* %y, align 2, !tbaa !25
  %conv108 = zext i16 %67 to i32
  %shr109 = ashr i32 %conv108, 15
  %shl110 = shl i32 %shr109, 2
  %add111 = add nsw i32 %add107, %shl110
  %conv112 = sext i32 %add111 to i64
  store i64 %conv112, i64* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else.113:                                      ; preds = %sw.bb.98
  %68 = load i16, i16* %c, align 2, !tbaa !25
  %conv114 = zext i16 %68 to i64
  %mul115 = mul i64 %conv114, 306
  %69 = load i16, i16* %m, align 2, !tbaa !25
  %conv116 = zext i16 %69 to i64
  %mul117 = mul i64 %conv116, 601
  %add118 = add i64 %mul115, %mul117
  %70 = load i16, i16* %y, align 2, !tbaa !25
  %conv119 = zext i16 %70 to i64
  %mul120 = mul i64 %conv119, 117
  %add121 = add i64 %add118, %mul120
  %shr122 = lshr i64 %add121, 18
  store i64 %shr122, i64* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.123:                                        ; preds = %if.end.89
  %71 = load i16, i16* %y, align 2, !tbaa !25
  %conv124 = zext i16 %71 to i32
  %shr125 = ashr i32 %conv124, 11
  %72 = load i16, i16* %m, align 2, !tbaa !25
  %conv126 = zext i16 %72 to i32
  %shr127 = ashr i32 %conv126, 10
  %shl128 = shl i32 %shr127, 5
  %add129 = add nsw i32 %shr125, %shl128
  %73 = load i16, i16* %c, align 2, !tbaa !25
  %conv130 = zext i16 %73 to i32
  %shr131 = ashr i32 %conv130, 11
  %shl132 = shl i32 %shr131, 11
  %add133 = add nsw i32 %add129, %shl132
  %conv134 = sext i32 %add133 to i64
  store i64 %conv134, i64* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.135:                                        ; preds = %if.end.89
  %74 = load i16, i16* %y, align 2, !tbaa !25
  %conv136 = zext i16 %74 to i32
  %mul137 = mul i32 %conv136, 65281
  %add138 = add i32 %mul137, 8388608
  %shr139 = lshr i32 %add138, 24
  %conv140 = trunc i32 %shr139 to i16
  %conv141 = zext i16 %conv140 to i32
  %75 = load i16, i16* %m, align 2, !tbaa !25
  %conv142 = zext i16 %75 to i32
  %mul143 = mul i32 %conv142, 65281
  %add144 = add i32 %mul143, 8388608
  %shr145 = lshr i32 %add144, 24
  %conv146 = trunc i32 %shr145 to i16
  %conv147 = zext i16 %conv146 to i32
  %shl148 = shl i32 %conv147, 8
  %add149 = add nsw i32 %conv141, %shl148
  %conv150 = sext i32 %add149 to i64
  %76 = load i16, i16* %c, align 2, !tbaa !25
  %conv151 = zext i16 %76 to i32
  %mul152 = mul i32 %conv151, 65281
  %add153 = add i32 %mul152, 8388608
  %shr154 = lshr i32 %add153, 24
  %conv155 = trunc i32 %shr154 to i16
  %conv156 = zext i16 %conv155 to i64
  %shl157 = shl i64 %conv156, 16
  %add158 = add i64 %conv150, %shl157
  store i64 %add158, i64* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.159:                                        ; preds = %if.end.89
  %77 = load i16, i16* %c, align 2, !tbaa !25
  %conv160 = zext i16 %77 to i32
  %78 = load i16, i16* %m, align 2, !tbaa !25
  %conv161 = zext i16 %78 to i32
  %cmp162 = icmp eq i32 %conv160, %conv161
  br i1 %cmp162, label %land.lhs.true, label %cond.false.176

land.lhs.true:                                    ; preds = %sw.bb.159
  %79 = load i16, i16* %c, align 2, !tbaa !25
  %conv164 = zext i16 %79 to i32
  %80 = load i16, i16* %y, align 2, !tbaa !25
  %conv165 = zext i16 %80 to i32
  %cmp166 = icmp eq i32 %conv164, %conv165
  br i1 %cmp166, label %cond.true.168, label %cond.false.176

cond.true.168:                                    ; preds = %land.lhs.true
  %81 = load i16, i16* %c, align 2, !tbaa !25
  %conv169 = zext i16 %81 to i32
  %mul170 = mul i32 %conv169, 65281
  %add171 = add i32 %mul170, 8388608
  %shr172 = lshr i32 %add171, 24
  %conv173 = trunc i32 %shr172 to i16
  %conv174 = zext i16 %conv173 to i64
  %shl175 = shl i64 %conv174, 24
  br label %cond.end.200

cond.false.176:                                   ; preds = %land.lhs.true, %sw.bb.159
  %82 = load i16, i16* %y, align 2, !tbaa !25
  %conv177 = zext i16 %82 to i32
  %mul178 = mul i32 %conv177, 65281
  %add179 = add i32 %mul178, 8388608
  %shr180 = lshr i32 %add179, 24
  %conv181 = trunc i32 %shr180 to i16
  %conv182 = zext i16 %conv181 to i32
  %83 = load i16, i16* %m, align 2, !tbaa !25
  %conv183 = zext i16 %83 to i32
  %mul184 = mul i32 %conv183, 65281
  %add185 = add i32 %mul184, 8388608
  %shr186 = lshr i32 %add185, 24
  %conv187 = trunc i32 %shr186 to i16
  %conv188 = zext i16 %conv187 to i32
  %shl189 = shl i32 %conv188, 8
  %add190 = add nsw i32 %conv182, %shl189
  %conv191 = sext i32 %add190 to i64
  %84 = load i16, i16* %c, align 2, !tbaa !25
  %conv192 = zext i16 %84 to i32
  %mul193 = mul i32 %conv192, 65281
  %add194 = add i32 %mul193, 8388608
  %shr195 = lshr i32 %add194, 24
  %conv196 = trunc i32 %shr195 to i16
  %conv197 = zext i16 %conv196 to i64
  %shl198 = shl i64 %conv197, 16
  %add199 = add i64 %conv191, %shl198
  br label %cond.end.200

cond.end.200:                                     ; preds = %cond.false.176, %cond.true.168
  %cond201 = phi i64 [ %shl175, %cond.true.168 ], [ %add199, %cond.false.176 ]
  store i64 %cond201, i64* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.epilog:                                        ; preds = %if.end.89
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %cond.end.200, %sw.bb.135, %sw.bb.123, %if.else.113, %if.then.102, %sw.bb
  %85 = bitcast i16* %y to i8*
  call void @llvm.lifetime.end(i64 2, i8* %85) #2
  %86 = bitcast i16* %m to i8*
  call void @llvm.lifetime.end(i64 2, i8* %86) #2
  %87 = bitcast i16* %c to i8*
  call void @llvm.lifetime.end(i64 2, i8* %87) #2
  %88 = bitcast i32* %correction to i8*
  call void @llvm.lifetime.end(i64 4, i8* %88) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.206 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.205

if.end.205:                                       ; preds = %cleanup.cont
  store i64 0, i64* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.206

cleanup.206:                                      ; preds = %if.end.205, %cleanup, %if.then
  %89 = bitcast i16* %b to i8*
  call void @llvm.lifetime.end(i64 2, i8* %89) #2
  %90 = bitcast i16* %g to i8*
  call void @llvm.lifetime.end(i64 2, i8* %90) #2
  %91 = bitcast i16* %r to i8*
  call void @llvm.lifetime.end(i64 2, i8* %91) #2
  %92 = load i64, i64* %retval
  ret i64 %92
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
  %c94 = alloca i64, align 8
  %w = alloca i16, align 2
  store %struct.gx_device_s* %pdev, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  store i64 %color, i64* %color.addr, align 8, !tbaa !28
  store i16* %prgb, i16** %prgb.addr, align 8, !tbaa !1
  %0 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %0, i32 0, i32 11
  %depth = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 3
  %1 = load i16, i16* %depth, align 2, !tbaa !29
  %conv = zext i16 %1 to i32
  switch i32 %conv, label %sw.epilog [
    i32 1, label %sw.bb
    i32 8, label %sw.bb.6
    i32 16, label %sw.bb.37
    i32 24, label %sw.bb.93
    i32 32, label %sw.bb.131
  ]

sw.bb:                                            ; preds = %entry
  %2 = load i64, i64* %color.addr, align 8, !tbaa !28
  %conv1 = trunc i64 %2 to i16
  %conv2 = zext i16 %conv1 to i32
  %xor = xor i32 %conv2, 1
  %sub = sub nsw i32 0, %xor
  %conv3 = trunc i32 %sub to i16
  %3 = load i16*, i16** %prgb.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %3, i64 2
  store i16 %conv3, i16* %arrayidx, align 2, !tbaa !25
  %4 = load i16*, i16** %prgb.addr, align 8, !tbaa !1
  %arrayidx4 = getelementptr inbounds i16, i16* %4, i64 1
  store i16 %conv3, i16* %arrayidx4, align 2, !tbaa !25
  %5 = load i16*, i16** %prgb.addr, align 8, !tbaa !1
  %arrayidx5 = getelementptr inbounds i16, i16* %5, i64 0
  store i16 %conv3, i16* %arrayidx5, align 2, !tbaa !25
  br label %sw.epilog

sw.bb.6:                                          ; preds = %entry
  %6 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %color_info7 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %6, i32 0, i32 11
  %num_components = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info7, i32 0, i32 1
  %7 = load i32, i32* %num_components, align 4, !tbaa !31
  %cmp = icmp sge i32 %7, 3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb.6
  %8 = bitcast i16* %c to i8*
  call void @llvm.lifetime.start(i64 2, i8* %8) #2
  %9 = load i64, i64* %color.addr, align 8, !tbaa !28
  %conv9 = trunc i64 %9 to i16
  %conv10 = zext i16 %conv9 to i32
  %xor11 = xor i32 %conv10, 7
  %conv12 = trunc i32 %xor11 to i16
  store i16 %conv12, i16* %c, align 2, !tbaa !25
  %10 = load i16, i16* %c, align 2, !tbaa !25
  %conv13 = zext i16 %10 to i32
  %and = and i32 %conv13, 1
  %sub14 = sub nsw i32 0, %and
  %conv15 = trunc i32 %sub14 to i16
  %11 = load i16*, i16** %prgb.addr, align 8, !tbaa !1
  %arrayidx16 = getelementptr inbounds i16, i16* %11, i64 0
  store i16 %conv15, i16* %arrayidx16, align 2, !tbaa !25
  %12 = load i16, i16* %c, align 2, !tbaa !25
  %conv17 = zext i16 %12 to i32
  %shr = ashr i32 %conv17, 1
  %and18 = and i32 %shr, 1
  %sub19 = sub nsw i32 0, %and18
  %conv20 = trunc i32 %sub19 to i16
  %13 = load i16*, i16** %prgb.addr, align 8, !tbaa !1
  %arrayidx21 = getelementptr inbounds i16, i16* %13, i64 1
  store i16 %conv20, i16* %arrayidx21, align 2, !tbaa !25
  %14 = load i16, i16* %c, align 2, !tbaa !25
  %conv22 = zext i16 %14 to i32
  %shr23 = ashr i32 %conv22, 2
  %sub24 = sub nsw i32 0, %shr23
  %conv25 = trunc i32 %sub24 to i16
  %15 = load i16*, i16** %prgb.addr, align 8, !tbaa !1
  %arrayidx26 = getelementptr inbounds i16, i16* %15, i64 2
  store i16 %conv25, i16* %arrayidx26, align 2, !tbaa !25
  %16 = bitcast i16* %c to i8*
  call void @llvm.lifetime.end(i64 2, i8* %16) #2
  br label %if.end

if.else:                                          ; preds = %sw.bb.6
  %17 = bitcast i16* %value to i8*
  call void @llvm.lifetime.start(i64 2, i8* %17) #2
  %18 = load i64, i64* %color.addr, align 8, !tbaa !28
  %conv27 = trunc i64 %18 to i16
  %conv28 = zext i16 %conv27 to i32
  %xor29 = xor i32 %conv28, 255
  %conv30 = trunc i32 %xor29 to i16
  store i16 %conv30, i16* %value, align 2, !tbaa !25
  %19 = load i16, i16* %value, align 2, !tbaa !25
  %conv31 = zext i16 %19 to i32
  %shl = shl i32 %conv31, 8
  %20 = load i16, i16* %value, align 2, !tbaa !25
  %conv32 = zext i16 %20 to i32
  %add = add nsw i32 %shl, %conv32
  %conv33 = trunc i32 %add to i16
  %21 = load i16*, i16** %prgb.addr, align 8, !tbaa !1
  %arrayidx34 = getelementptr inbounds i16, i16* %21, i64 2
  store i16 %conv33, i16* %arrayidx34, align 2, !tbaa !25
  %22 = load i16*, i16** %prgb.addr, align 8, !tbaa !1
  %arrayidx35 = getelementptr inbounds i16, i16* %22, i64 1
  store i16 %conv33, i16* %arrayidx35, align 2, !tbaa !25
  %23 = load i16*, i16** %prgb.addr, align 8, !tbaa !1
  %arrayidx36 = getelementptr inbounds i16, i16* %23, i64 0
  store i16 %conv33, i16* %arrayidx36, align 2, !tbaa !25
  %24 = bitcast i16* %value to i8*
  call void @llvm.lifetime.end(i64 2, i8* %24) #2
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %sw.epilog

sw.bb.37:                                         ; preds = %entry
  %25 = bitcast i16* %c38 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %25) #2
  %26 = load i64, i64* %color.addr, align 8, !tbaa !28
  %conv39 = trunc i64 %26 to i16
  %conv40 = zext i16 %conv39 to i32
  %xor41 = xor i32 %conv40, 65535
  %conv42 = trunc i32 %xor41 to i16
  store i16 %conv42, i16* %c38, align 2, !tbaa !25
  %27 = bitcast i16* %value43 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %27) #2
  %28 = load i16, i16* %c38, align 2, !tbaa !25
  %conv44 = zext i16 %28 to i32
  %shr45 = ashr i32 %conv44, 11
  %conv46 = trunc i32 %shr45 to i16
  store i16 %conv46, i16* %value43, align 2, !tbaa !25
  %29 = load i16, i16* %value43, align 2, !tbaa !25
  %conv47 = zext i16 %29 to i32
  %shl48 = shl i32 %conv47, 11
  %30 = load i16, i16* %value43, align 2, !tbaa !25
  %conv49 = zext i16 %30 to i32
  %shl50 = shl i32 %conv49, 6
  %add51 = add nsw i32 %shl48, %shl50
  %31 = load i16, i16* %value43, align 2, !tbaa !25
  %conv52 = zext i16 %31 to i32
  %shl53 = shl i32 %conv52, 1
  %add54 = add nsw i32 %add51, %shl53
  %32 = load i16, i16* %value43, align 2, !tbaa !25
  %conv55 = zext i16 %32 to i32
  %shr56 = ashr i32 %conv55, 4
  %add57 = add nsw i32 %add54, %shr56
  %shr58 = ashr i32 %add57, 0
  %conv59 = trunc i32 %shr58 to i16
  %33 = load i16*, i16** %prgb.addr, align 8, !tbaa !1
  %arrayidx60 = getelementptr inbounds i16, i16* %33, i64 0
  store i16 %conv59, i16* %arrayidx60, align 2, !tbaa !25
  %34 = load i16, i16* %c38, align 2, !tbaa !25
  %conv61 = zext i16 %34 to i32
  %shr62 = ashr i32 %conv61, 6
  %and63 = and i32 %shr62, 63
  %conv64 = trunc i32 %and63 to i16
  store i16 %conv64, i16* %value43, align 2, !tbaa !25
  %35 = load i16, i16* %value43, align 2, !tbaa !25
  %conv65 = zext i16 %35 to i32
  %shl66 = shl i32 %conv65, 10
  %36 = load i16, i16* %value43, align 2, !tbaa !25
  %conv67 = zext i16 %36 to i32
  %shl68 = shl i32 %conv67, 4
  %add69 = add nsw i32 %shl66, %shl68
  %37 = load i16, i16* %value43, align 2, !tbaa !25
  %conv70 = zext i16 %37 to i32
  %shr71 = ashr i32 %conv70, 2
  %add72 = add nsw i32 %add69, %shr71
  %shr73 = ashr i32 %add72, 0
  %conv74 = trunc i32 %shr73 to i16
  %38 = load i16*, i16** %prgb.addr, align 8, !tbaa !1
  %arrayidx75 = getelementptr inbounds i16, i16* %38, i64 1
  store i16 %conv74, i16* %arrayidx75, align 2, !tbaa !25
  %39 = load i16, i16* %c38, align 2, !tbaa !25
  %conv76 = zext i16 %39 to i32
  %and77 = and i32 %conv76, 31
  %conv78 = trunc i32 %and77 to i16
  store i16 %conv78, i16* %value43, align 2, !tbaa !25
  %40 = load i16, i16* %value43, align 2, !tbaa !25
  %conv79 = zext i16 %40 to i32
  %shl80 = shl i32 %conv79, 11
  %41 = load i16, i16* %value43, align 2, !tbaa !25
  %conv81 = zext i16 %41 to i32
  %shl82 = shl i32 %conv81, 6
  %add83 = add nsw i32 %shl80, %shl82
  %42 = load i16, i16* %value43, align 2, !tbaa !25
  %conv84 = zext i16 %42 to i32
  %shl85 = shl i32 %conv84, 1
  %add86 = add nsw i32 %add83, %shl85
  %43 = load i16, i16* %value43, align 2, !tbaa !25
  %conv87 = zext i16 %43 to i32
  %shr88 = ashr i32 %conv87, 4
  %add89 = add nsw i32 %add86, %shr88
  %shr90 = ashr i32 %add89, 0
  %conv91 = trunc i32 %shr90 to i16
  %44 = load i16*, i16** %prgb.addr, align 8, !tbaa !1
  %arrayidx92 = getelementptr inbounds i16, i16* %44, i64 2
  store i16 %conv91, i16* %arrayidx92, align 2, !tbaa !25
  %45 = bitcast i16* %value43 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %45) #2
  %46 = bitcast i16* %c38 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %46) #2
  br label %sw.epilog

sw.bb.93:                                         ; preds = %entry
  %47 = bitcast i64* %c94 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %47) #2
  %48 = load i64, i64* %color.addr, align 8, !tbaa !28
  %xor95 = xor i64 %48, 16777215
  store i64 %xor95, i64* %c94, align 8, !tbaa !28
  %49 = load i64, i64* %c94, align 8, !tbaa !28
  %shr96 = lshr i64 %49, 16
  %conv97 = trunc i64 %shr96 to i16
  %conv98 = zext i16 %conv97 to i32
  %shl99 = shl i32 %conv98, 8
  %50 = load i64, i64* %c94, align 8, !tbaa !28
  %shr100 = lshr i64 %50, 16
  %conv101 = trunc i64 %shr100 to i16
  %conv102 = zext i16 %conv101 to i32
  %shr103 = ashr i32 %conv102, 0
  %add104 = add nsw i32 %shl99, %shr103
  %conv105 = trunc i32 %add104 to i16
  %51 = load i16*, i16** %prgb.addr, align 8, !tbaa !1
  %arrayidx106 = getelementptr inbounds i16, i16* %51, i64 0
  store i16 %conv105, i16* %arrayidx106, align 2, !tbaa !25
  %52 = load i64, i64* %c94, align 8, !tbaa !28
  %shr107 = lshr i64 %52, 8
  %and108 = and i64 %shr107, 255
  %conv109 = trunc i64 %and108 to i16
  %conv110 = zext i16 %conv109 to i32
  %shl111 = shl i32 %conv110, 8
  %53 = load i64, i64* %c94, align 8, !tbaa !28
  %shr112 = lshr i64 %53, 8
  %and113 = and i64 %shr112, 255
  %conv114 = trunc i64 %and113 to i16
  %conv115 = zext i16 %conv114 to i32
  %shr116 = ashr i32 %conv115, 0
  %add117 = add nsw i32 %shl111, %shr116
  %conv118 = trunc i32 %add117 to i16
  %54 = load i16*, i16** %prgb.addr, align 8, !tbaa !1
  %arrayidx119 = getelementptr inbounds i16, i16* %54, i64 1
  store i16 %conv118, i16* %arrayidx119, align 2, !tbaa !25
  %55 = load i64, i64* %c94, align 8, !tbaa !28
  %and120 = and i64 %55, 255
  %conv121 = trunc i64 %and120 to i16
  %conv122 = zext i16 %conv121 to i32
  %shl123 = shl i32 %conv122, 8
  %56 = load i64, i64* %c94, align 8, !tbaa !28
  %and124 = and i64 %56, 255
  %conv125 = trunc i64 %and124 to i16
  %conv126 = zext i16 %conv125 to i32
  %shr127 = ashr i32 %conv126, 0
  %add128 = add nsw i32 %shl123, %shr127
  %conv129 = trunc i32 %add128 to i16
  %57 = load i16*, i16** %prgb.addr, align 8, !tbaa !1
  %arrayidx130 = getelementptr inbounds i16, i16* %57, i64 2
  store i16 %conv129, i16* %arrayidx130, align 2, !tbaa !25
  %58 = bitcast i64* %c94 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %58) #2
  br label %sw.epilog

sw.bb.131:                                        ; preds = %entry
  %59 = bitcast i16* %w to i8*
  call void @llvm.lifetime.start(i64 2, i8* %59) #2
  %60 = load i64, i64* %color.addr, align 8, !tbaa !28
  %shr132 = lshr i64 %60, 24
  %shl133 = shl i64 %shr132, 8
  %61 = load i64, i64* %color.addr, align 8, !tbaa !28
  %shr134 = lshr i64 %61, 24
  %shr135 = lshr i64 %shr134, 0
  %add136 = add i64 %shl133, %shr135
  %sub137 = sub i64 65535, %add136
  %conv138 = trunc i64 %sub137 to i16
  store i16 %conv138, i16* %w, align 2, !tbaa !25
  %62 = load i16, i16* %w, align 2, !tbaa !25
  %conv139 = zext i16 %62 to i64
  %63 = load i64, i64* %color.addr, align 8, !tbaa !28
  %shr140 = lshr i64 %63, 16
  %and141 = and i64 %shr140, 255
  %shl142 = shl i64 %and141, 8
  %64 = load i64, i64* %color.addr, align 8, !tbaa !28
  %shr143 = lshr i64 %64, 16
  %and144 = and i64 %shr143, 255
  %shr145 = lshr i64 %and144, 0
  %add146 = add i64 %shl142, %shr145
  %sub147 = sub i64 %conv139, %add146
  %conv148 = trunc i64 %sub147 to i16
  %65 = load i16*, i16** %prgb.addr, align 8, !tbaa !1
  %arrayidx149 = getelementptr inbounds i16, i16* %65, i64 0
  store i16 %conv148, i16* %arrayidx149, align 2, !tbaa !25
  %66 = load i16, i16* %w, align 2, !tbaa !25
  %conv150 = zext i16 %66 to i64
  %67 = load i64, i64* %color.addr, align 8, !tbaa !28
  %shr151 = lshr i64 %67, 8
  %and152 = and i64 %shr151, 255
  %shl153 = shl i64 %and152, 8
  %68 = load i64, i64* %color.addr, align 8, !tbaa !28
  %shr154 = lshr i64 %68, 8
  %and155 = and i64 %shr154, 255
  %shr156 = lshr i64 %and155, 0
  %add157 = add i64 %shl153, %shr156
  %sub158 = sub i64 %conv150, %add157
  %conv159 = trunc i64 %sub158 to i16
  %69 = load i16*, i16** %prgb.addr, align 8, !tbaa !1
  %arrayidx160 = getelementptr inbounds i16, i16* %69, i64 1
  store i16 %conv159, i16* %arrayidx160, align 2, !tbaa !25
  %70 = load i16, i16* %w, align 2, !tbaa !25
  %conv161 = zext i16 %70 to i64
  %71 = load i64, i64* %color.addr, align 8, !tbaa !28
  %and162 = and i64 %71, 255
  %shl163 = shl i64 %and162, 8
  %72 = load i64, i64* %color.addr, align 8, !tbaa !28
  %and164 = and i64 %72, 255
  %shr165 = lshr i64 %and164, 0
  %add166 = add i64 %shl163, %shr165
  %sub167 = sub i64 %conv161, %add166
  %conv168 = trunc i64 %sub167 to i16
  %73 = load i16*, i16** %prgb.addr, align 8, !tbaa !1
  %arrayidx169 = getelementptr inbounds i16, i16* %73, i64 2
  store i16 %conv168, i16* %arrayidx169, align 2, !tbaa !25
  %74 = bitcast i16* %w to i8*
  call void @llvm.lifetime.end(i64 2, i8* %74) #2
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %sw.bb.131, %sw.bb.93, %sw.bb.37, %if.end, %sw.bb
  ret i32 0
}

declare i32 @gx_default_get_bits(%struct.gx_device_s*, i32, i8*, i8**) #0

; Function Attrs: nounwind uwtable
define internal i32 @cdj_get_params(%struct.gx_device_s* %pdev, %struct.gs_param_list_s* %plist) #1 {
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
  %call = call i32 @gdev_prn_get_params(%struct.gx_device_s* %1, %struct.gs_param_list_s* %2) #5
  store i32 %call, i32* %code, align 4, !tbaa !5
  %3 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %3, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %4 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %6 = bitcast %struct.gx_device_s* %5 to %struct.gx_device_cdj_s*
  %correction = getelementptr inbounds %struct.gx_device_cdj_s, %struct.gx_device_cdj_s* %6, i32 0, i32 70
  %call1 = call i32 @param_write_int(%struct.gs_param_list_s* %4, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.22, i32 0, i32 0), i32* %correction) #5
  store i32 %call1, i32* %code, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.then, label %lor.lhs.false.3

lor.lhs.false.3:                                  ; preds = %lor.lhs.false
  %7 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %8 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %9 = bitcast %struct.gx_device_s* %8 to %struct.gx_device_cdj_s*
  %shingling = getelementptr inbounds %struct.gx_device_cdj_s, %struct.gx_device_cdj_s* %9, i32 0, i32 71
  %call4 = call i32 @param_write_int(%struct.gs_param_list_s* %7, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.23, i32 0, i32 0), i32* %shingling) #5
  store i32 %call4, i32* %code, align 4, !tbaa !5
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %if.then, label %lor.lhs.false.6

lor.lhs.false.6:                                  ; preds = %lor.lhs.false.3
  %10 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %11 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %12 = bitcast %struct.gx_device_s* %11 to %struct.gx_device_cdj_s*
  %depletion = getelementptr inbounds %struct.gx_device_cdj_s, %struct.gx_device_cdj_s* %12, i32 0, i32 72
  %call7 = call i32 @param_write_int(%struct.gs_param_list_s* %10, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.24, i32 0, i32 0), i32* %depletion) #5
  store i32 %call7, i32* %code, align 4, !tbaa !5
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.6, %lor.lhs.false.3, %lor.lhs.false, %entry
  %13 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %13, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false.6
  %14 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %14, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %15 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %15) #2
  %16 = load i32, i32* %retval
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define internal i32 @cdj_put_params(%struct.gx_device_s* %pdev, %struct.gs_param_list_s* %plist) #1 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_s*, align 8
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %correction = alloca i32, align 4
  %shingling = alloca i32, align 4
  %depletion = alloca i32, align 4
  %bpp = alloca i32, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %pdev, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %0 = bitcast i32* %correction to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_cdj_s*
  %correction1 = getelementptr inbounds %struct.gx_device_cdj_s, %struct.gx_device_cdj_s* %2, i32 0, i32 70
  %3 = load i32, i32* %correction1, align 4, !tbaa !32
  store i32 %3, i32* %correction, align 4, !tbaa !5
  %4 = bitcast i32* %shingling to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %6 = bitcast %struct.gx_device_s* %5 to %struct.gx_device_cdj_s*
  %shingling2 = getelementptr inbounds %struct.gx_device_cdj_s, %struct.gx_device_cdj_s* %6, i32 0, i32 71
  %7 = load i32, i32* %shingling2, align 4, !tbaa !34
  store i32 %7, i32* %shingling, align 4, !tbaa !5
  %8 = bitcast i32* %depletion to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #2
  %9 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %10 = bitcast %struct.gx_device_s* %9 to %struct.gx_device_cdj_s*
  %depletion3 = getelementptr inbounds %struct.gx_device_cdj_s, %struct.gx_device_cdj_s* %10, i32 0, i32 72
  %11 = load i32, i32* %depletion3, align 4, !tbaa !35
  store i32 %11, i32* %depletion, align 4, !tbaa !5
  %12 = bitcast i32* %bpp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #2
  store i32 0, i32* %bpp, align 4, !tbaa !5
  %13 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #2
  store i32 0, i32* %code, align 4, !tbaa !5
  %14 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %15 = load i32, i32* %code, align 4, !tbaa !5
  %call = call i32 @cdj_put_param_int(%struct.gs_param_list_s* %14, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.22, i32 0, i32 0), i32* %correction, i32 0, i32 9, i32 %15) #5
  store i32 %call, i32* %code, align 4, !tbaa !5
  %16 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %17 = load i32, i32* %code, align 4, !tbaa !5
  %call4 = call i32 @cdj_put_param_int(%struct.gs_param_list_s* %16, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.23, i32 0, i32 0), i32* %shingling, i32 0, i32 2, i32 %17) #5
  store i32 %call4, i32* %code, align 4, !tbaa !5
  %18 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %19 = load i32, i32* %code, align 4, !tbaa !5
  %call5 = call i32 @cdj_put_param_int(%struct.gs_param_list_s* %18, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.24, i32 0, i32 0), i32* %depletion, i32 1, i32 3, i32 %19) #5
  store i32 %call5, i32* %code, align 4, !tbaa !5
  %20 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %21 = load i32, i32* %code, align 4, !tbaa !5
  %call6 = call i32 @cdj_put_param_int(%struct.gs_param_list_s* %20, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.25, i32 0, i32 0), i32* %bpp, i32 1, i32 32, i32 %21) #5
  store i32 %call6, i32* %code, align 4, !tbaa !5
  %22 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %22, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %23 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %23, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %24 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %25 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %26 = load i32, i32* %bpp, align 4, !tbaa !5
  %27 = load i32, i32* %bpp, align 4, !tbaa !5
  %call7 = call i32 @cdj_put_param_bpp(%struct.gx_device_s* %24, %struct.gs_param_list_s* %25, i32 %26, i32 %27, i32 0) #5
  store i32 %call7, i32* %code, align 4, !tbaa !5
  %28 = load i32, i32* %code, align 4, !tbaa !5
  %cmp8 = icmp slt i32 %28, 0
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end
  %29 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %29, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.10:                                        ; preds = %if.end
  %30 = load i32, i32* %correction, align 4, !tbaa !5
  %31 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %32 = bitcast %struct.gx_device_s* %31 to %struct.gx_device_cdj_s*
  %correction11 = getelementptr inbounds %struct.gx_device_cdj_s, %struct.gx_device_cdj_s* %32, i32 0, i32 70
  store i32 %30, i32* %correction11, align 4, !tbaa !32
  %33 = load i32, i32* %shingling, align 4, !tbaa !5
  %34 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %35 = bitcast %struct.gx_device_s* %34 to %struct.gx_device_cdj_s*
  %shingling12 = getelementptr inbounds %struct.gx_device_cdj_s, %struct.gx_device_cdj_s* %35, i32 0, i32 71
  store i32 %33, i32* %shingling12, align 4, !tbaa !34
  %36 = load i32, i32* %depletion, align 4, !tbaa !5
  %37 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %38 = bitcast %struct.gx_device_s* %37 to %struct.gx_device_cdj_s*
  %depletion13 = getelementptr inbounds %struct.gx_device_cdj_s, %struct.gx_device_cdj_s* %38, i32 0, i32 72
  store i32 %36, i32* %depletion13, align 4, !tbaa !35
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.10, %if.then.9, %if.then
  %39 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %39) #2
  %40 = bitcast i32* %bpp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %40) #2
  %41 = bitcast i32* %depletion to i8*
  call void @llvm.lifetime.end(i64 4, i8* %41) #2
  %42 = bitcast i32* %shingling to i8*
  call void @llvm.lifetime.end(i64 4, i8* %42) #2
  %43 = bitcast i32* %correction to i8*
  call void @llvm.lifetime.end(i64 4, i8* %43) #2
  %44 = load i32, i32* %retval
  ret i32 %44
}

; Function Attrs: nounwind uwtable
define internal i32 @hp_colour_open(%struct.gx_device_s* %pdev, i32 %ptype) #1 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_s*, align 8
  %ptype.addr = alloca i32, align 4
  %m = alloca float*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %bjcm = alloca float*, align 8
  %pdimen = alloca i8, align 1
  store %struct.gx_device_s* %pdev, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  store i32 %ptype, i32* %ptype.addr, align 4, !tbaa !5
  %0 = bitcast float** %m to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  store float* null, float** %m, align 8, !tbaa !1
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %1, i32 0, i32 11
  %num_components = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 1
  %2 = load i32, i32* %num_components, align 4, !tbaa !31
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end.7

if.then:                                          ; preds = %entry
  %3 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %color_info1 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %5, i32 0, i32 11
  %depth = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info1, i32 0, i32 3
  %6 = load i16, i16* %depth, align 2, !tbaa !29
  %conv = zext i16 %6 to i32
  %7 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %color_info2 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %7, i32 0, i32 11
  %num_components3 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info2, i32 0, i32 1
  %8 = load i32, i32* %num_components3, align 4, !tbaa !31
  %call = call i32 @cdj_set_bpp(%struct.gx_device_s* %4, i32 %conv, i32 %8) #5
  store i32 %call, i32* %code, align 4, !tbaa !5
  %9 = load i32, i32* %code, align 4, !tbaa !5
  %cmp4 = icmp slt i32 %9, 0
  br i1 %cmp4, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %if.then
  %10 = load i32, i32* %code, align 4, !tbaa !5
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
  switch i32 %cleanup.dest, label %cleanup.36 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.7

if.end.7:                                         ; preds = %cleanup.cont, %entry
  %12 = load i32, i32* %ptype.addr, align 4, !tbaa !5
  switch i32 %12, label %sw.epilog.34 [
    i32 0, label %sw.bb
    i32 1, label %sw.bb
    i32 2, label %sw.bb.11
    i32 7, label %sw.bb.17
    i32 8, label %sw.bb.18
    i32 4, label %sw.bb.19
    i32 3, label %sw.bb.19
    i32 5, label %sw.bb.19
    i32 9, label %sw.bb.20
    i32 10, label %sw.bb.25
    i32 11, label %sw.bb.25
  ]

sw.bb:                                            ; preds = %if.end.7, %if.end.7
  %13 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %call8 = call i32 @gdev_pcl_paper_size(%struct.gx_device_s* %13) #5
  %cmp9 = icmp eq i32 %call8, 26
  %cond = select i1 %cmp9, float* getelementptr inbounds ([4 x float], [4 x float]* @hp_colour_open.dj_a4, i32 0, i32 0), float* getelementptr inbounds ([4 x float], [4 x float]* @hp_colour_open.dj_letter, i32 0, i32 0)
  store float* %cond, float** %m, align 8, !tbaa !1
  br label %sw.epilog.34

sw.bb.11:                                         ; preds = %if.end.7
  %14 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %color_info12 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %14, i32 0, i32 11
  %num_components13 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info12, i32 0, i32 1
  %15 = load i32, i32* %num_components13, align 4, !tbaa !31
  %cmp14 = icmp sgt i32 %15, 1
  %cond16 = select i1 %cmp14, float* getelementptr inbounds ([4 x float], [4 x float]* @hp_colour_open.dj_505jc, i32 0, i32 0), float* getelementptr inbounds ([4 x float], [4 x float]* @hp_colour_open.dj_505j, i32 0, i32 0)
  store float* %cond16, float** %m, align 8, !tbaa !1
  br label %sw.epilog.34

sw.bb.17:                                         ; preds = %if.end.7
  store float* getelementptr inbounds ([4 x float], [4 x float]* @hp_colour_open.dnj_all, i32 0, i32 0), float** %m, align 8, !tbaa !1
  br label %sw.epilog.34

sw.bb.18:                                         ; preds = %if.end.7
  store float* getelementptr inbounds ([4 x float], [4 x float]* @hp_colour_open.lj4_all, i32 0, i32 0), float** %m, align 8, !tbaa !1
  br label %sw.epilog.34

sw.bb.19:                                         ; preds = %if.end.7, %if.end.7, %if.end.7
  store float* getelementptr inbounds ([4 x float], [4 x float]* @hp_colour_open.pj_all, i32 0, i32 0), float** %m, align 8, !tbaa !1
  br label %sw.epilog.34

sw.bb.20:                                         ; preds = %if.end.7
  %16 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %call21 = call i32 @gdev_pcl_paper_size(%struct.gx_device_s* %16) #5
  %cmp22 = icmp eq i32 %call21, 26
  %cond24 = select i1 %cmp22, float* getelementptr inbounds ([4 x float], [4 x float]* @hp_colour_open.ep_a4, i32 0, i32 0), float* getelementptr inbounds ([4 x float], [4 x float]* @hp_colour_open.ep_letter, i32 0, i32 0)
  store float* %cond24, float** %m, align 8, !tbaa !1
  br label %sw.epilog.34

sw.bb.25:                                         ; preds = %if.end.7, %if.end.7
  %17 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %call26 = call i32 @gdev_pcl_paper_size(%struct.gx_device_s* %17) #5
  switch i32 %call26, label %sw.default [
    i32 3, label %sw.bb.27
    i32 2, label %sw.bb.27
    i32 30, label %sw.bb.28
    i32 29, label %sw.bb.28
    i32 27, label %sw.bb.28
  ]

sw.bb.27:                                         ; preds = %sw.bb.25, %sw.bb.25
  store float* getelementptr inbounds ([4 x float], [4 x float]* @hp_colour_open.bjc_letter, i32 0, i32 0), float** %m, align 8, !tbaa !1
  br label %sw.epilog

sw.bb.28:                                         ; preds = %sw.bb.25, %sw.bb.25, %sw.bb.25
  store float* getelementptr inbounds ([4 x float], [4 x float]* @hp_colour_open.bjc_a3, i32 0, i32 0), float** %m, align 8, !tbaa !1
  br label %sw.epilog

sw.default:                                       ; preds = %sw.bb.25
  store float* getelementptr inbounds ([4 x float], [4 x float]* @hp_colour_open.bjc_a4, i32 0, i32 0), float** %m, align 8, !tbaa !1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.28, %sw.bb.27
  %18 = load i32, i32* %ptype.addr, align 4, !tbaa !5
  %cmp29 = icmp eq i32 %18, 11
  br i1 %cmp29, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %sw.epilog
  %19 = load float*, float** %m, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds float, float* %19, i64 1
  store float 0x3FD1A34680000000, float* %arrayidx, align 4, !tbaa !36
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.31, %sw.epilog
  %20 = load float*, float** %m, align 8, !tbaa !1
  %arrayidx33 = getelementptr inbounds float, float* %20, i64 3
  %21 = load float, float* %arrayidx33, align 4, !tbaa !36
  %22 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %23 = bitcast %struct.gx_device_s* %22 to %struct.gx_device_bjc800_s*
  %printLimit = getelementptr inbounds %struct.gx_device_bjc800_s, %struct.gx_device_bjc800_s* %23, i32 0, i32 72
  store float %21, float* %printLimit, align 4, !tbaa !37
  br label %sw.epilog.34

sw.epilog.34:                                     ; preds = %if.end.7, %if.end.32, %sw.bb.20, %sw.bb.19, %sw.bb.18, %sw.bb.17, %sw.bb.11, %sw.bb
  %24 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %25 = load float*, float** %m, align 8, !tbaa !1
  call void @gx_device_set_margins(%struct.gx_device_s* %24, float* %25, i32 1) #5
  %26 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %call35 = call i32 @gdev_prn_open(%struct.gx_device_s* %26) #5
  store i32 %call35, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.36

cleanup.36:                                       ; preds = %sw.epilog.34, %cleanup
  %27 = bitcast float** %m to i8*
  call void @llvm.lifetime.end(i64 8, i8* %27) #2
  %28 = load i32, i32* %retval
  ret i32 %28
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
  %code = alloca i32, align 4
  %sp = alloca %struct.gdev_space_params_s, align 8
  store %struct.gx_device_s* %pdev, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  store i32 %bpp, i32* %bpp.addr, align 4, !tbaa !5
  store i32 %ccomps, i32* %ccomps.addr, align 4, !tbaa !5
  %0 = bitcast %struct.gx_device_color_info_s** %ci to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %1, i32 0, i32 11
  store %struct.gx_device_color_info_s* %color_info, %struct.gx_device_color_info_s** %ci, align 8, !tbaa !1
  %2 = load i32, i32* %ccomps.addr, align 4, !tbaa !5
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %land.lhs.true, label %if.end.8

land.lhs.true:                                    ; preds = %entry
  %3 = load i32, i32* %bpp.addr, align 4, !tbaa !5
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.then, label %if.end.8

if.then:                                          ; preds = %land.lhs.true
  %4 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %5 = bitcast %struct.gx_device_s* %4 to %struct.gx_device_colour_prn*
  %cmyk = getelementptr inbounds %struct.gx_device_colour_prn, %struct.gx_device_colour_prn* %5, i32 0, i32 68
  %6 = load i16, i16* %cmyk, align 2, !tbaa !38
  %tobool1 = icmp ne i16 %6, 0
  br i1 %tobool1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %7 = load i32, i32* %ccomps.addr, align 4, !tbaa !5
  switch i32 %7, label %sw.default [
    i32 1, label %sw.bb
    i32 3, label %sw.bb.3
    i32 4, label %sw.bb.4
  ]

sw.default:                                       ; preds = %if.then.2
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.294

sw.bb:                                            ; preds = %if.then.2
  store i32 1, i32* %bpp.addr, align 4, !tbaa !5
  br label %sw.epilog.7

sw.bb.3:                                          ; preds = %if.then.2
  store i32 24, i32* %bpp.addr, align 4, !tbaa !5
  br label %sw.epilog.7

sw.bb.4:                                          ; preds = %if.then.2
  %8 = load %struct.gx_device_color_info_s*, %struct.gx_device_color_info_s** %ci, align 8, !tbaa !1
  %depth = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %8, i32 0, i32 3
  %9 = load i16, i16* %depth, align 2, !tbaa !39
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
  %12 = load i32, i32* %default_depth, align 4, !tbaa !40
  store i32 %12, i32* %bpp.addr, align 4, !tbaa !5
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default.6, %sw.bb.5
  br label %sw.epilog.7

sw.epilog.7:                                      ; preds = %sw.epilog, %sw.bb.3, %sw.bb
  br label %if.end

if.end:                                           ; preds = %sw.epilog.7, %if.then
  br label %if.end.8

if.end.8:                                         ; preds = %if.end, %land.lhs.true, %entry
  %13 = load i32, i32* %bpp.addr, align 4, !tbaa !5
  %cmp9 = icmp eq i32 %13, 0
  br i1 %cmp9, label %if.then.11, label %if.end.14

if.then.11:                                       ; preds = %if.end.8
  %14 = load %struct.gx_device_color_info_s*, %struct.gx_device_color_info_s** %ci, align 8, !tbaa !1
  %depth12 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %14, i32 0, i32 3
  %15 = load i16, i16* %depth12, align 2, !tbaa !39
  %conv13 = zext i16 %15 to i32
  store i32 %conv13, i32* %bpp.addr, align 4, !tbaa !5
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.11, %if.end.8
  %16 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %17 = bitcast %struct.gx_device_s* %16 to %struct.gx_device_colour_prn*
  %cmyk15 = getelementptr inbounds %struct.gx_device_colour_prn, %struct.gx_device_colour_prn* %17, i32 0, i32 68
  %18 = load i16, i16* %cmyk15, align 2, !tbaa !38
  %conv16 = sext i16 %18 to i32
  %cmp17 = icmp slt i32 %conv16, 0
  br i1 %cmp17, label %if.then.19, label %if.end.25

if.then.19:                                       ; preds = %if.end.14
  %19 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %19, i32 0, i32 42
  %encode_color = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 51
  store i64 (%struct.gx_device_s*, i16*)* @gdev_cmyk_map_cmyk_color, i64 (%struct.gx_device_s*, i16*)** %encode_color, align 8, !tbaa !41
  %20 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %procs20 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %20, i32 0, i32 42
  %map_rgb_color = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs20, i32 0, i32 5
  store i64 (%struct.gx_device_s*, i16*)* null, i64 (%struct.gx_device_s*, i16*)** %map_rgb_color, align 8, !tbaa !42
  %21 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %procs21 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %21, i32 0, i32 42
  %decode_color = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs21, i32 0, i32 52
  store i32 (%struct.gx_device_s*, i64, i16*)* @gdev_cmyk_map_color_cmyk, i32 (%struct.gx_device_s*, i64, i16*)** %decode_color, align 8, !tbaa !43
  %22 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %is_open = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %22, i32 0, i32 9
  %23 = load i32, i32* %is_open, align 4, !tbaa !44
  %tobool22 = icmp ne i32 %23, 0
  br i1 %tobool22, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %if.then.19
  %24 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %call = call i32 @gs_closedevice(%struct.gx_device_s* %24) #5
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.23, %if.then.19
  br label %if.end.25

if.end.25:                                        ; preds = %if.end.24, %if.end.14
  %25 = load i32, i32* %bpp.addr, align 4, !tbaa !5
  switch i32 %25, label %sw.default.108 [
    i32 16, label %sw.bb.26
    i32 32, label %sw.bb.26
    i32 24, label %sw.bb.37
    i32 8, label %sw.bb.53
    i32 1, label %sw.bb.79
    i32 3, label %sw.bb.103
  ]

sw.bb.26:                                         ; preds = %if.end.25, %if.end.25
  %26 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %27 = bitcast %struct.gx_device_s* %26 to %struct.gx_device_colour_prn*
  %cmyk27 = getelementptr inbounds %struct.gx_device_colour_prn, %struct.gx_device_colour_prn* %27, i32 0, i32 68
  %28 = load i16, i16* %cmyk27, align 2, !tbaa !38
  %conv28 = sext i16 %28 to i32
  %tobool29 = icmp ne i32 %conv28, 0
  br i1 %tobool29, label %land.lhs.true.30, label %if.end.36

land.lhs.true.30:                                 ; preds = %sw.bb.26
  %29 = load i32, i32* %ccomps.addr, align 4, !tbaa !5
  %tobool31 = icmp ne i32 %29, 0
  br i1 %tobool31, label %land.lhs.true.32, label %if.end.36

land.lhs.true.32:                                 ; preds = %land.lhs.true.30
  %30 = load i32, i32* %ccomps.addr, align 4, !tbaa !5
  %cmp33 = icmp ne i32 %30, 4
  br i1 %cmp33, label %if.then.35, label %if.end.36

if.then.35:                                       ; preds = %land.lhs.true.32
  br label %bppe

if.end.36:                                        ; preds = %land.lhs.true.32, %land.lhs.true.30, %sw.bb.26
  br label %sw.epilog.109

sw.bb.37:                                         ; preds = %if.end.25
  %31 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %32 = bitcast %struct.gx_device_s* %31 to %struct.gx_device_colour_prn*
  %cmyk38 = getelementptr inbounds %struct.gx_device_colour_prn, %struct.gx_device_colour_prn* %32, i32 0, i32 68
  %33 = load i16, i16* %cmyk38, align 2, !tbaa !38
  %tobool39 = icmp ne i16 %33, 0
  br i1 %tobool39, label %lor.lhs.false, label %if.then.45

lor.lhs.false:                                    ; preds = %sw.bb.37
  %34 = load i32, i32* %ccomps.addr, align 4, !tbaa !5
  %cmp40 = icmp eq i32 %34, 0
  br i1 %cmp40, label %if.then.45, label %lor.lhs.false.42

lor.lhs.false.42:                                 ; preds = %lor.lhs.false
  %35 = load i32, i32* %ccomps.addr, align 4, !tbaa !5
  %cmp43 = icmp eq i32 %35, 4
  br i1 %cmp43, label %if.then.45, label %if.else

if.then.45:                                       ; preds = %lor.lhs.false.42, %lor.lhs.false, %sw.bb.37
  br label %sw.epilog.109

if.else:                                          ; preds = %lor.lhs.false.42
  %36 = load i32, i32* %ccomps.addr, align 4, !tbaa !5
  %cmp46 = icmp eq i32 %36, 1
  br i1 %cmp46, label %if.then.48, label %if.else.49

if.then.48:                                       ; preds = %if.else
  br label %bppe

if.else.49:                                       ; preds = %if.else
  %37 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %38 = bitcast %struct.gx_device_s* %37 to %struct.gx_device_colour_prn*
  %cmyk50 = getelementptr inbounds %struct.gx_device_colour_prn, %struct.gx_device_colour_prn* %38, i32 0, i32 68
  store i16 -1, i16* %cmyk50, align 2, !tbaa !38
  br label %if.end.51

if.end.51:                                        ; preds = %if.else.49
  br label %if.end.52

if.end.52:                                        ; preds = %if.end.51
  br label %sw.epilog.109

sw.bb.53:                                         ; preds = %if.end.25
  %39 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %40 = bitcast %struct.gx_device_s* %39 to %struct.gx_device_colour_prn*
  %cmyk54 = getelementptr inbounds %struct.gx_device_colour_prn, %struct.gx_device_colour_prn* %40, i32 0, i32 68
  %41 = load i16, i16* %cmyk54, align 2, !tbaa !38
  %tobool55 = icmp ne i16 %41, 0
  br i1 %tobool55, label %if.then.56, label %if.else.77

if.then.56:                                       ; preds = %sw.bb.53
  %42 = load i32, i32* %ccomps.addr, align 4, !tbaa !5
  %tobool57 = icmp ne i32 %42, 0
  br i1 %tobool57, label %if.then.58, label %if.end.72

if.then.58:                                       ; preds = %if.then.56
  %43 = load i32, i32* %ccomps.addr, align 4, !tbaa !5
  %cmp59 = icmp eq i32 %43, 3
  br i1 %cmp59, label %if.then.61, label %if.else.63

if.then.61:                                       ; preds = %if.then.58
  %44 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %45 = bitcast %struct.gx_device_s* %44 to %struct.gx_device_colour_prn*
  %cmyk62 = getelementptr inbounds %struct.gx_device_colour_prn, %struct.gx_device_colour_prn* %45, i32 0, i32 68
  store i16 -1, i16* %cmyk62, align 2, !tbaa !38
  store i32 3, i32* %bpp.addr, align 4, !tbaa !5
  br label %if.end.71

if.else.63:                                       ; preds = %if.then.58
  %46 = load i32, i32* %ccomps.addr, align 4, !tbaa !5
  %cmp64 = icmp ne i32 %46, 1
  br i1 %cmp64, label %land.lhs.true.66, label %if.end.70

land.lhs.true.66:                                 ; preds = %if.else.63
  %47 = load i32, i32* %ccomps.addr, align 4, !tbaa !5
  %cmp67 = icmp ne i32 %47, 4
  br i1 %cmp67, label %if.then.69, label %if.end.70

if.then.69:                                       ; preds = %land.lhs.true.66
  br label %bppe

if.end.70:                                        ; preds = %land.lhs.true.66, %if.else.63
  br label %if.end.71

if.end.71:                                        ; preds = %if.end.70, %if.then.61
  br label %if.end.72

if.end.72:                                        ; preds = %if.end.71, %if.then.56
  %48 = load i32, i32* %ccomps.addr, align 4, !tbaa !5
  %cmp73 = icmp ne i32 %48, 1
  br i1 %cmp73, label %if.then.75, label %if.end.76

if.then.75:                                       ; preds = %if.end.72
  br label %sw.epilog.109

if.end.76:                                        ; preds = %if.end.72
  br label %if.end.78

if.else.77:                                       ; preds = %sw.bb.53
  br label %sw.epilog.109

if.end.78:                                        ; preds = %if.end.76
  br label %sw.bb.79

sw.bb.79:                                         ; preds = %if.end.25, %if.end.78
  %49 = load i32, i32* %ccomps.addr, align 4, !tbaa !5
  %cmp80 = icmp ne i32 %49, 1
  br i1 %cmp80, label %if.then.82, label %if.end.83

if.then.82:                                       ; preds = %sw.bb.79
  br label %bppe

if.end.83:                                        ; preds = %sw.bb.79
  %50 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %51 = bitcast %struct.gx_device_s* %50 to %struct.gx_device_colour_prn*
  %cmyk84 = getelementptr inbounds %struct.gx_device_colour_prn, %struct.gx_device_colour_prn* %51, i32 0, i32 68
  %52 = load i16, i16* %cmyk84, align 2, !tbaa !38
  %conv85 = sext i16 %52 to i32
  %tobool86 = icmp ne i32 %conv85, 0
  br i1 %tobool86, label %land.lhs.true.87, label %if.end.102

land.lhs.true.87:                                 ; preds = %if.end.83
  %53 = load i32, i32* %bpp.addr, align 4, !tbaa !5
  %54 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %color_info88 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %54, i32 0, i32 11
  %depth89 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info88, i32 0, i32 3
  %55 = load i16, i16* %depth89, align 2, !tbaa !29
  %conv90 = zext i16 %55 to i32
  %cmp91 = icmp ne i32 %53, %conv90
  br i1 %cmp91, label %if.then.93, label %if.end.102

if.then.93:                                       ; preds = %land.lhs.true.87
  %56 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %procs94 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %56, i32 0, i32 42
  %map_cmyk_color = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs94, i32 0, i32 15
  store i64 (%struct.gx_device_s*, i16*)* null, i64 (%struct.gx_device_s*, i16*)** %map_cmyk_color, align 8, !tbaa !45
  %57 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %procs95 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %57, i32 0, i32 42
  %map_rgb_color96 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs95, i32 0, i32 5
  store i64 (%struct.gx_device_s*, i16*)* @gdev_cmyk_map_rgb_color, i64 (%struct.gx_device_s*, i16*)** %map_rgb_color96, align 8, !tbaa !42
  %58 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %is_open97 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %58, i32 0, i32 9
  %59 = load i32, i32* %is_open97, align 4, !tbaa !44
  %tobool98 = icmp ne i32 %59, 0
  br i1 %tobool98, label %if.then.99, label %if.end.101

if.then.99:                                       ; preds = %if.then.93
  %60 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %call100 = call i32 @gs_closedevice(%struct.gx_device_s* %60) #5
  br label %if.end.101

if.end.101:                                       ; preds = %if.then.99, %if.then.93
  br label %if.end.102

if.end.102:                                       ; preds = %if.end.101, %land.lhs.true.87, %if.end.83
  br label %sw.epilog.109

sw.bb.103:                                        ; preds = %if.end.25
  %61 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %62 = bitcast %struct.gx_device_s* %61 to %struct.gx_device_colour_prn*
  %cmyk104 = getelementptr inbounds %struct.gx_device_colour_prn, %struct.gx_device_colour_prn* %62, i32 0, i32 68
  %63 = load i16, i16* %cmyk104, align 2, !tbaa !38
  %tobool105 = icmp ne i16 %63, 0
  br i1 %tobool105, label %if.end.107, label %if.then.106

if.then.106:                                      ; preds = %sw.bb.103
  br label %sw.epilog.109

if.end.107:                                       ; preds = %sw.bb.103
  br label %sw.default.108

sw.default.108:                                   ; preds = %if.end.25, %if.end.107
  br label %bppe

bppe:                                             ; preds = %sw.default.108, %if.then.82, %if.then.69, %if.then.48, %if.then.35
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.294

sw.epilog.109:                                    ; preds = %if.then.106, %if.end.102, %if.else.77, %if.then.75, %if.end.52, %if.then.45, %if.end.36
  %64 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %65 = bitcast %struct.gx_device_s* %64 to %struct.gx_device_colour_prn*
  %cmyk110 = getelementptr inbounds %struct.gx_device_colour_prn, %struct.gx_device_colour_prn* %65, i32 0, i32 68
  %66 = load i16, i16* %cmyk110, align 2, !tbaa !38
  %conv111 = sext i16 %66 to i32
  %cmp112 = icmp eq i32 %conv111, -1
  br i1 %cmp112, label %if.then.114, label %if.end.135

if.then.114:                                      ; preds = %sw.epilog.109
  %67 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %procs115 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %67, i32 0, i32 42
  %map_cmyk_color116 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs115, i32 0, i32 15
  store i64 (%struct.gx_device_s*, i16*)* null, i64 (%struct.gx_device_s*, i16*)** %map_cmyk_color116, align 8, !tbaa !45
  %68 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %procs117 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %68, i32 0, i32 42
  %map_rgb_color118 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs117, i32 0, i32 5
  store i64 (%struct.gx_device_s*, i16*)* @gdev_pcl_map_rgb_color, i64 (%struct.gx_device_s*, i16*)** %map_rgb_color118, align 8, !tbaa !42
  %69 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %procs119 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %69, i32 0, i32 42
  %map_color_rgb = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs119, i32 0, i32 6
  store i32 (%struct.gx_device_s*, i64, i16*)* @gdev_pcl_map_color_rgb, i32 (%struct.gx_device_s*, i64, i16*)** %map_color_rgb, align 8, !tbaa !46
  %70 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %is_open120 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %70, i32 0, i32 9
  %71 = load i32, i32* %is_open120, align 4, !tbaa !44
  %tobool121 = icmp ne i32 %71, 0
  br i1 %tobool121, label %if.then.122, label %if.end.124

if.then.122:                                      ; preds = %if.then.114
  %72 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %call123 = call i32 @gs_closedevice(%struct.gx_device_s* %72) #5
  br label %if.end.124

if.end.124:                                       ; preds = %if.then.122, %if.then.114
  %73 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %is_open125 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %73, i32 0, i32 9
  %74 = load i32, i32* %is_open125, align 4, !tbaa !44
  %tobool126 = icmp ne i32 %74, 0
  br i1 %tobool126, label %if.then.127, label %if.end.134

if.then.127:                                      ; preds = %if.end.124
  %75 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %75) #2
  %76 = bitcast %struct.gdev_space_params_s* %sp to i8*
  call void @llvm.lifetime.start(i64 40, i8* %76) #2
  %77 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %78 = bitcast %struct.gx_device_s* %77 to %struct.gx_device_printer_s*
  %space_params = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %78, i32 0, i32 38
  %79 = bitcast %struct.gdev_space_params_s* %sp to i8*
  %80 = bitcast %struct.gdev_space_params_s* %space_params to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %79, i8* %80, i64 40, i32 8, i1 false), !tbaa.struct !47
  %81 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %82 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %82, i32 0, i32 13
  %83 = load i32, i32* %width, align 4, !tbaa !49
  %84 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %84, i32 0, i32 14
  %85 = load i32, i32* %height, align 4, !tbaa !50
  %call128 = call i32 @gdev_prn_reallocate_memory(%struct.gx_device_s* %81, %struct.gdev_space_params_s* %sp, i32 %83, i32 %85) #5
  store i32 %call128, i32* %code, align 4, !tbaa !5
  %cmp129 = icmp slt i32 %call128, 0
  br i1 %cmp129, label %if.then.131, label %if.end.132

if.then.131:                                      ; preds = %if.then.127
  %86 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %86, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.132:                                       ; preds = %if.then.127
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.132, %if.then.131
  %87 = bitcast %struct.gdev_space_params_s* %sp to i8*
  call void @llvm.lifetime.end(i64 40, i8* %87) #2
  %88 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %88) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.294 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.134

if.end.134:                                       ; preds = %cleanup.cont, %if.end.124
  br label %if.end.135

if.end.135:                                       ; preds = %if.end.134, %sw.epilog.109
  %89 = load i32, i32* %ccomps.addr, align 4, !tbaa !5
  switch i32 %89, label %sw.default.173 [
    i32 0, label %sw.epilog.174
    i32 1, label %sw.bb.136
    i32 4, label %sw.bb.144
    i32 3, label %sw.bb.153
  ]

sw.bb.136:                                        ; preds = %if.end.135
  %90 = load i32, i32* %bpp.addr, align 4, !tbaa !5
  %cmp137 = icmp ne i32 %90, 1
  br i1 %cmp137, label %land.lhs.true.139, label %if.end.143

land.lhs.true.139:                                ; preds = %sw.bb.136
  %91 = load i32, i32* %bpp.addr, align 4, !tbaa !5
  %cmp140 = icmp ne i32 %91, 8
  br i1 %cmp140, label %if.then.142, label %if.end.143

if.then.142:                                      ; preds = %land.lhs.true.139
  br label %cce

if.end.143:                                       ; preds = %land.lhs.true.139, %sw.bb.136
  br label %sw.epilog.174

sw.bb.144:                                        ; preds = %if.end.135
  %92 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %93 = bitcast %struct.gx_device_s* %92 to %struct.gx_device_colour_prn*
  %cmyk145 = getelementptr inbounds %struct.gx_device_colour_prn, %struct.gx_device_colour_prn* %93, i32 0, i32 68
  %94 = load i16, i16* %cmyk145, align 2, !tbaa !38
  %tobool146 = icmp ne i16 %94, 0
  br i1 %tobool146, label %if.then.147, label %if.end.152

if.then.147:                                      ; preds = %sw.bb.144
  %95 = load i32, i32* %bpp.addr, align 4, !tbaa !5
  %cmp148 = icmp sge i32 %95, 8
  br i1 %cmp148, label %if.then.150, label %if.end.151

if.then.150:                                      ; preds = %if.then.147
  br label %sw.epilog.174

if.end.151:                                       ; preds = %if.then.147
  br label %if.end.152

if.end.152:                                       ; preds = %if.end.151, %sw.bb.144
  br label %sw.bb.153

sw.bb.153:                                        ; preds = %if.end.135, %if.end.152
  %96 = load i32, i32* %bpp.addr, align 4, !tbaa !5
  %cmp154 = icmp eq i32 %96, 1
  br i1 %cmp154, label %if.then.171, label %lor.lhs.false.156

lor.lhs.false.156:                                ; preds = %sw.bb.153
  %97 = load i32, i32* %bpp.addr, align 4, !tbaa !5
  %cmp157 = icmp eq i32 %97, 3
  br i1 %cmp157, label %if.then.171, label %lor.lhs.false.159

lor.lhs.false.159:                                ; preds = %lor.lhs.false.156
  %98 = load i32, i32* %bpp.addr, align 4, !tbaa !5
  %cmp160 = icmp eq i32 %98, 8
  br i1 %cmp160, label %if.then.171, label %lor.lhs.false.162

lor.lhs.false.162:                                ; preds = %lor.lhs.false.159
  %99 = load i32, i32* %bpp.addr, align 4, !tbaa !5
  %cmp163 = icmp eq i32 %99, 16
  br i1 %cmp163, label %if.then.171, label %lor.lhs.false.165

lor.lhs.false.165:                                ; preds = %lor.lhs.false.162
  %100 = load i32, i32* %bpp.addr, align 4, !tbaa !5
  %cmp166 = icmp eq i32 %100, 24
  br i1 %cmp166, label %if.then.171, label %lor.lhs.false.168

lor.lhs.false.168:                                ; preds = %lor.lhs.false.165
  %101 = load i32, i32* %bpp.addr, align 4, !tbaa !5
  %cmp169 = icmp eq i32 %101, 32
  br i1 %cmp169, label %if.then.171, label %if.end.172

if.then.171:                                      ; preds = %lor.lhs.false.168, %lor.lhs.false.165, %lor.lhs.false.162, %lor.lhs.false.159, %lor.lhs.false.156, %sw.bb.153
  br label %sw.epilog.174

if.end.172:                                       ; preds = %lor.lhs.false.168
  br label %cce

cce:                                              ; preds = %if.end.172, %if.then.142
  br label %sw.default.173

sw.default.173:                                   ; preds = %if.end.135, %cce
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.294

sw.epilog.174:                                    ; preds = %if.then.171, %if.then.150, %if.end.143, %if.end.135
  %102 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %103 = bitcast %struct.gx_device_s* %102 to %struct.gx_device_colour_prn*
  %cmyk175 = getelementptr inbounds %struct.gx_device_colour_prn, %struct.gx_device_colour_prn* %103, i32 0, i32 68
  %104 = load i16, i16* %cmyk175, align 2, !tbaa !38
  %tobool176 = icmp ne i16 %104, 0
  br i1 %tobool176, label %if.then.177, label %if.else.247

if.then.177:                                      ; preds = %sw.epilog.174
  %105 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %106 = bitcast %struct.gx_device_s* %105 to %struct.gx_device_colour_prn*
  %cmyk178 = getelementptr inbounds %struct.gx_device_colour_prn, %struct.gx_device_colour_prn* %106, i32 0, i32 68
  %107 = load i16, i16* %cmyk178, align 2, !tbaa !38
  %conv179 = sext i16 %107 to i32
  %cmp180 = icmp sgt i32 %conv179, 0
  br i1 %cmp180, label %if.then.182, label %if.else.187

if.then.182:                                      ; preds = %if.then.177
  %108 = load i32, i32* %ccomps.addr, align 4, !tbaa !5
  %tobool183 = icmp ne i32 %108, 0
  br i1 %tobool183, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.182
  %109 = load i32, i32* %ccomps.addr, align 4, !tbaa !5
  br label %cond.end

cond.false:                                       ; preds = %if.then.182
  %110 = load i32, i32* %bpp.addr, align 4, !tbaa !5
  %cmp184 = icmp slt i32 %110, 8
  %cond = select i1 %cmp184, i32 1, i32 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond186 = phi i32 [ %109, %cond.true ], [ %cond, %cond.false ]
  %111 = load %struct.gx_device_color_info_s*, %struct.gx_device_color_info_s** %ci, align 8, !tbaa !1
  %num_components = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %111, i32 0, i32 1
  store i32 %cond186, i32* %num_components, align 4, !tbaa !51
  br label %if.end.197

if.else.187:                                      ; preds = %if.then.177
  %112 = load i32, i32* %ccomps.addr, align 4, !tbaa !5
  %tobool188 = icmp ne i32 %112, 0
  br i1 %tobool188, label %cond.true.189, label %cond.false.190

cond.true.189:                                    ; preds = %if.else.187
  %113 = load i32, i32* %ccomps.addr, align 4, !tbaa !5
  br label %cond.end.194

cond.false.190:                                   ; preds = %if.else.187
  %114 = load i32, i32* %bpp.addr, align 4, !tbaa !5
  %cmp191 = icmp slt i32 %114, 8
  %cond193 = select i1 %cmp191, i32 1, i32 3
  br label %cond.end.194

cond.end.194:                                     ; preds = %cond.false.190, %cond.true.189
  %cond195 = phi i32 [ %113, %cond.true.189 ], [ %cond193, %cond.false.190 ]
  %115 = load %struct.gx_device_color_info_s*, %struct.gx_device_color_info_s** %ci, align 8, !tbaa !1
  %num_components196 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %115, i32 0, i32 1
  store i32 %cond195, i32* %num_components196, align 4, !tbaa !51
  br label %if.end.197

if.end.197:                                       ; preds = %cond.end.194, %cond.end
  %116 = load i32, i32* %bpp.addr, align 4, !tbaa !5
  %cmp198 = icmp ne i32 %116, 1
  br i1 %cmp198, label %land.lhs.true.200, label %if.end.211

land.lhs.true.200:                                ; preds = %if.end.197
  %117 = load %struct.gx_device_color_info_s*, %struct.gx_device_color_info_s** %ci, align 8, !tbaa !1
  %num_components201 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %117, i32 0, i32 1
  %118 = load i32, i32* %num_components201, align 4, !tbaa !51
  %cmp202 = icmp eq i32 %118, 1
  br i1 %cmp202, label %if.then.204, label %if.end.211

if.then.204:                                      ; preds = %land.lhs.true.200
  %119 = load i32, i32* %bpp.addr, align 4, !tbaa !5
  %cmp205 = icmp slt i32 %119, 8
  br i1 %cmp205, label %cond.true.207, label %cond.false.208

cond.true.207:                                    ; preds = %if.then.204
  br label %cond.end.209

cond.false.208:                                   ; preds = %if.then.204
  %120 = load i32, i32* %bpp.addr, align 4, !tbaa !5
  br label %cond.end.209

cond.end.209:                                     ; preds = %cond.false.208, %cond.true.207
  %cond210 = phi i32 [ 8, %cond.true.207 ], [ %120, %cond.false.208 ]
  store i32 %cond210, i32* %bpp.addr, align 4, !tbaa !5
  br label %if.end.211

if.end.211:                                       ; preds = %cond.end.209, %land.lhs.true.200, %if.end.197
  %121 = load i32, i32* %bpp.addr, align 4, !tbaa !5
  %shr = ashr i32 %121, 2
  %shl = shl i32 1, %shr
  %sub = sub nsw i32 %shl, 1
  %122 = load %struct.gx_device_color_info_s*, %struct.gx_device_color_info_s** %ci, align 8, !tbaa !1
  %max_color = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %122, i32 0, i32 6
  store i32 %sub, i32* %max_color, align 4, !tbaa !52
  %123 = load i32, i32* %bpp.addr, align 4, !tbaa !5
  %cmp212 = icmp sge i32 %123, 8
  %cond214 = select i1 %cmp212, i32 255, i32 1
  %124 = load %struct.gx_device_color_info_s*, %struct.gx_device_color_info_s** %ci, align 8, !tbaa !1
  %max_gray = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %124, i32 0, i32 5
  store i32 %cond214, i32* %max_gray, align 4, !tbaa !53
  %125 = load %struct.gx_device_color_info_s*, %struct.gx_device_color_info_s** %ci, align 8, !tbaa !1
  %num_components215 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %125, i32 0, i32 1
  %126 = load i32, i32* %num_components215, align 4, !tbaa !51
  %cmp216 = icmp eq i32 %126, 1
  br i1 %cmp216, label %if.then.218, label %if.else.231

if.then.218:                                      ; preds = %if.end.211
  %127 = load i32, i32* %bpp.addr, align 4, !tbaa !5
  %cmp219 = icmp sge i32 %127, 8
  %cond221 = select i1 %cmp219, i32 256, i32 2
  %128 = load %struct.gx_device_color_info_s*, %struct.gx_device_color_info_s** %ci, align 8, !tbaa !1
  %dither_grays = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %128, i32 0, i32 7
  store i32 %cond221, i32* %dither_grays, align 4, !tbaa !54
  %129 = load i32, i32* %bpp.addr, align 4, !tbaa !5
  %cmp222 = icmp sge i32 %129, 8
  br i1 %cmp222, label %cond.true.224, label %cond.false.225

cond.true.224:                                    ; preds = %if.then.218
  br label %cond.end.229

cond.false.225:                                   ; preds = %if.then.218
  %130 = load i32, i32* %bpp.addr, align 4, !tbaa !5
  %cmp226 = icmp sgt i32 %130, 1
  %cond228 = select i1 %cmp226, i32 2, i32 0
  br label %cond.end.229

cond.end.229:                                     ; preds = %cond.false.225, %cond.true.224
  %cond230 = phi i32 [ 256, %cond.true.224 ], [ %cond228, %cond.false.225 ]
  %131 = load %struct.gx_device_color_info_s*, %struct.gx_device_color_info_s** %ci, align 8, !tbaa !1
  %dither_colors = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %131, i32 0, i32 8
  store i32 %cond230, i32* %dither_colors, align 4, !tbaa !55
  br label %if.end.246

if.else.231:                                      ; preds = %if.end.211
  %132 = load i32, i32* %bpp.addr, align 4, !tbaa !5
  %cmp232 = icmp sgt i32 %132, 8
  %cond234 = select i1 %cmp232, i32 256, i32 2
  %133 = load %struct.gx_device_color_info_s*, %struct.gx_device_color_info_s** %ci, align 8, !tbaa !1
  %dither_grays235 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %133, i32 0, i32 7
  store i32 %cond234, i32* %dither_grays235, align 4, !tbaa !54
  %134 = load i32, i32* %bpp.addr, align 4, !tbaa !5
  %cmp236 = icmp sgt i32 %134, 8
  br i1 %cmp236, label %cond.true.238, label %cond.false.239

cond.true.238:                                    ; preds = %if.else.231
  br label %cond.end.243

cond.false.239:                                   ; preds = %if.else.231
  %135 = load i32, i32* %bpp.addr, align 4, !tbaa !5
  %cmp240 = icmp sgt i32 %135, 1
  %cond242 = select i1 %cmp240, i32 2, i32 0
  br label %cond.end.243

cond.end.243:                                     ; preds = %cond.false.239, %cond.true.238
  %cond244 = phi i32 [ 256, %cond.true.238 ], [ %cond242, %cond.false.239 ]
  %136 = load %struct.gx_device_color_info_s*, %struct.gx_device_color_info_s** %ci, align 8, !tbaa !1
  %dither_colors245 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %136, i32 0, i32 8
  store i32 %cond244, i32* %dither_colors245, align 4, !tbaa !55
  br label %if.end.246

if.end.246:                                       ; preds = %cond.end.243, %cond.end.229
  br label %if.end.282

if.else.247:                                      ; preds = %sw.epilog.174
  %137 = load i32, i32* %bpp.addr, align 4, !tbaa !5
  %cmp248 = icmp eq i32 %137, 1
  br i1 %cmp248, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.else.247
  %138 = load i32, i32* %bpp.addr, align 4, !tbaa !5
  %cmp250 = icmp eq i32 %138, 8
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.else.247
  %139 = phi i1 [ true, %if.else.247 ], [ %cmp250, %lor.rhs ]
  %cond252 = select i1 %139, i32 1, i32 3
  %140 = load %struct.gx_device_color_info_s*, %struct.gx_device_color_info_s** %ci, align 8, !tbaa !1
  %num_components253 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %140, i32 0, i32 1
  store i32 %cond252, i32* %num_components253, align 4, !tbaa !51
  %141 = load i32, i32* %bpp.addr, align 4, !tbaa !5
  %cmp254 = icmp sge i32 %141, 8
  br i1 %cmp254, label %cond.true.256, label %cond.false.257

cond.true.256:                                    ; preds = %lor.end
  br label %cond.end.261

cond.false.257:                                   ; preds = %lor.end
  %142 = load i32, i32* %bpp.addr, align 4, !tbaa !5
  %cmp258 = icmp sgt i32 %142, 1
  %cond260 = select i1 %cmp258, i32 1, i32 0
  br label %cond.end.261

cond.end.261:                                     ; preds = %cond.false.257, %cond.true.256
  %cond262 = phi i32 [ 255, %cond.true.256 ], [ %cond260, %cond.false.257 ]
  %143 = load %struct.gx_device_color_info_s*, %struct.gx_device_color_info_s** %ci, align 8, !tbaa !1
  %max_color263 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %143, i32 0, i32 6
  store i32 %cond262, i32* %max_color263, align 4, !tbaa !52
  %144 = load i32, i32* %bpp.addr, align 4, !tbaa !5
  %cmp264 = icmp sge i32 %144, 8
  %cond266 = select i1 %cmp264, i32 255, i32 1
  %145 = load %struct.gx_device_color_info_s*, %struct.gx_device_color_info_s** %ci, align 8, !tbaa !1
  %max_gray267 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %145, i32 0, i32 5
  store i32 %cond266, i32* %max_gray267, align 4, !tbaa !53
  %146 = load i32, i32* %bpp.addr, align 4, !tbaa !5
  %cmp268 = icmp sge i32 %146, 8
  %cond270 = select i1 %cmp268, i32 256, i32 2
  %147 = load %struct.gx_device_color_info_s*, %struct.gx_device_color_info_s** %ci, align 8, !tbaa !1
  %dither_grays271 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %147, i32 0, i32 7
  store i32 %cond270, i32* %dither_grays271, align 4, !tbaa !54
  %148 = load i32, i32* %bpp.addr, align 4, !tbaa !5
  %cmp272 = icmp sge i32 %148, 8
  br i1 %cmp272, label %cond.true.274, label %cond.false.275

cond.true.274:                                    ; preds = %cond.end.261
  br label %cond.end.279

cond.false.275:                                   ; preds = %cond.end.261
  %149 = load i32, i32* %bpp.addr, align 4, !tbaa !5
  %cmp276 = icmp sgt i32 %149, 1
  %cond278 = select i1 %cmp276, i32 2, i32 0
  br label %cond.end.279

cond.end.279:                                     ; preds = %cond.false.275, %cond.true.274
  %cond280 = phi i32 [ 256, %cond.true.274 ], [ %cond278, %cond.false.275 ]
  %150 = load %struct.gx_device_color_info_s*, %struct.gx_device_color_info_s** %ci, align 8, !tbaa !1
  %dither_colors281 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %150, i32 0, i32 8
  store i32 %cond280, i32* %dither_colors281, align 4, !tbaa !55
  br label %if.end.282

if.end.282:                                       ; preds = %cond.end.279, %if.end.246
  %151 = load i32, i32* %bpp.addr, align 4, !tbaa !5
  %cmp283 = icmp sgt i32 %151, 1
  br i1 %cmp283, label %land.lhs.true.285, label %cond.false.289

land.lhs.true.285:                                ; preds = %if.end.282
  %152 = load i32, i32* %bpp.addr, align 4, !tbaa !5
  %cmp286 = icmp slt i32 %152, 8
  br i1 %cmp286, label %cond.true.288, label %cond.false.289

cond.true.288:                                    ; preds = %land.lhs.true.285
  br label %cond.end.290

cond.false.289:                                   ; preds = %land.lhs.true.285, %if.end.282
  %153 = load i32, i32* %bpp.addr, align 4, !tbaa !5
  br label %cond.end.290

cond.end.290:                                     ; preds = %cond.false.289, %cond.true.288
  %cond291 = phi i32 [ 8, %cond.true.288 ], [ %153, %cond.false.289 ]
  %conv292 = trunc i32 %cond291 to i16
  %154 = load %struct.gx_device_color_info_s*, %struct.gx_device_color_info_s** %ci, align 8, !tbaa !1
  %depth293 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %154, i32 0, i32 3
  store i16 %conv292, i16* %depth293, align 2, !tbaa !39
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.294

cleanup.294:                                      ; preds = %cond.end.290, %sw.default.173, %cleanup, %bppe, %sw.default
  %155 = bitcast %struct.gx_device_color_info_s** %ci to i8*
  call void @llvm.lifetime.end(i64 8, i8* %155) #2
  %156 = load i32, i32* %retval
  ret i32 %156
}

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

declare i32 @gdev_pcl_paper_size(%struct.gx_device_s*) #0

declare void @gx_device_set_margins(%struct.gx_device_s*, float*, i32) #0

declare i32 @gdev_prn_open(%struct.gx_device_s*) #0

; Function Attrs: nounwind uwtable
define internal i64 @gdev_cmyk_map_cmyk_color(%struct.gx_device_s* %pdev, i16* %cv) #1 {
entry:
  %pdev.addr = alloca %struct.gx_device_s*, align 8
  %cv.addr = alloca i16*, align 8
  %cyan = alloca i16, align 2
  %magenta = alloca i16, align 2
  %yellow = alloca i16, align 2
  %black = alloca i16, align 2
  %color = alloca i64, align 8
  %COLROUND_M = alloca i32, align 4
  %COLROUND_S = alloca i32, align 4
  %COLROUND_R = alloca i32, align 4
  %nbits = alloca i32, align 4
  store %struct.gx_device_s* %pdev, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  store i16* %cv, i16** %cv.addr, align 8, !tbaa !1
  %0 = bitcast i16* %cyan to i8*
  call void @llvm.lifetime.start(i64 2, i8* %0) #2
  %1 = bitcast i16* %magenta to i8*
  call void @llvm.lifetime.start(i64 2, i8* %1) #2
  %2 = bitcast i16* %yellow to i8*
  call void @llvm.lifetime.start(i64 2, i8* %2) #2
  %3 = bitcast i16* %black to i8*
  call void @llvm.lifetime.start(i64 2, i8* %3) #2
  %4 = bitcast i64* %color to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #2
  %5 = load i16*, i16** %cv.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %5, i64 0
  %6 = load i16, i16* %arrayidx, align 2, !tbaa !25
  store i16 %6, i16* %cyan, align 2, !tbaa !25
  %7 = load i16*, i16** %cv.addr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds i16, i16* %7, i64 1
  %8 = load i16, i16* %arrayidx1, align 2, !tbaa !25
  store i16 %8, i16* %magenta, align 2, !tbaa !25
  %9 = load i16*, i16** %cv.addr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds i16, i16* %9, i64 2
  %10 = load i16, i16* %arrayidx2, align 2, !tbaa !25
  store i16 %10, i16* %yellow, align 2, !tbaa !25
  %11 = load i16*, i16** %cv.addr, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds i16, i16* %11, i64 3
  %12 = load i16, i16* %arrayidx3, align 2, !tbaa !25
  store i16 %12, i16* %black, align 2, !tbaa !25
  %13 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %13, i32 0, i32 11
  %depth = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 3
  %14 = load i16, i16* %depth, align 2, !tbaa !29
  %conv = zext i16 %14 to i32
  switch i32 %conv, label %sw.default [
    i32 1, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry
  %15 = load i16, i16* %cyan, align 2, !tbaa !25
  %conv4 = zext i16 %15 to i32
  %16 = load i16, i16* %magenta, align 2, !tbaa !25
  %conv5 = zext i16 %16 to i32
  %or = or i32 %conv4, %conv5
  %17 = load i16, i16* %yellow, align 2, !tbaa !25
  %conv6 = zext i16 %17 to i32
  %or7 = or i32 %or, %conv6
  %18 = load i16, i16* %black, align 2, !tbaa !25
  %conv8 = zext i16 %18 to i32
  %or9 = or i32 %or7, %conv8
  %cmp = icmp sgt i32 %or9, 32767
  %cond = select i1 %cmp, i64 1, i64 0
  store i64 %cond, i64* %color, align 8, !tbaa !28
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %19 = bitcast i32* %COLROUND_M to i8*
  call void @llvm.lifetime.start(i64 4, i8* %19) #2
  %20 = bitcast i32* %COLROUND_S to i8*
  call void @llvm.lifetime.start(i64 4, i8* %20) #2
  %21 = bitcast i32* %COLROUND_R to i8*
  call void @llvm.lifetime.start(i64 4, i8* %21) #2
  %22 = bitcast i32* %nbits to i8*
  call void @llvm.lifetime.start(i64 4, i8* %22) #2
  %23 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %color_info11 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %23, i32 0, i32 11
  %depth12 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info11, i32 0, i32 3
  %24 = load i16, i16* %depth12, align 2, !tbaa !29
  %conv13 = zext i16 %24 to i32
  %shr = ashr i32 %conv13, 2
  store i32 %shr, i32* %nbits, align 4, !tbaa !5
  br label %do.body

do.body:                                          ; preds = %sw.default
  %25 = load i32, i32* %nbits, align 4, !tbaa !5
  %shl = shl i32 1, %25
  %sub = sub nsw i32 %shl, 1
  %26 = load i32, i32* %nbits, align 4, !tbaa !5
  %conv14 = sext i32 %26 to i64
  %sub15 = sub i64 16, %conv14
  %sh_prom = trunc i64 %sub15 to i32
  %shl16 = shl i32 %sub, %sh_prom
  %add = add nsw i32 %shl16, 1
  store i32 %add, i32* %COLROUND_M, align 4, !tbaa !5
  %27 = load i32, i32* %nbits, align 4, !tbaa !5
  %conv17 = sext i32 %27 to i64
  %sub18 = sub i64 32, %conv17
  %conv19 = trunc i64 %sub18 to i32
  store i32 %conv19, i32* %COLROUND_S, align 4, !tbaa !5
  %28 = load i32, i32* %COLROUND_S, align 4, !tbaa !5
  %sub20 = sub i32 %28, 1
  %shl21 = shl i32 1, %sub20
  store i32 %shl21, i32* %COLROUND_R, align 4, !tbaa !5
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %29 = load i32, i32* %COLROUND_M, align 4, !tbaa !5
  %30 = load i16, i16* %black, align 2, !tbaa !25
  %conv22 = zext i16 %30 to i32
  %mul = mul i32 %29, %conv22
  %31 = load i32, i32* %COLROUND_R, align 4, !tbaa !5
  %add23 = add i32 %mul, %31
  %32 = load i32, i32* %COLROUND_S, align 4, !tbaa !5
  %shr24 = lshr i32 %add23, %32
  %conv25 = zext i32 %shr24 to i64
  %33 = load i32, i32* %nbits, align 4, !tbaa !5
  %mul26 = mul nsw i32 3, %33
  %sh_prom27 = zext i32 %mul26 to i64
  %shl28 = shl i64 %conv25, %sh_prom27
  %34 = load i32, i32* %COLROUND_M, align 4, !tbaa !5
  %35 = load i16, i16* %cyan, align 2, !tbaa !25
  %conv29 = zext i16 %35 to i32
  %mul30 = mul i32 %34, %conv29
  %36 = load i32, i32* %COLROUND_R, align 4, !tbaa !5
  %add31 = add i32 %mul30, %36
  %37 = load i32, i32* %COLROUND_S, align 4, !tbaa !5
  %shr32 = lshr i32 %add31, %37
  %conv33 = zext i32 %shr32 to i64
  %38 = load i32, i32* %nbits, align 4, !tbaa !5
  %mul34 = mul nsw i32 2, %38
  %sh_prom35 = zext i32 %mul34 to i64
  %shl36 = shl i64 %conv33, %sh_prom35
  %or37 = or i64 %shl28, %shl36
  %39 = load i32, i32* %COLROUND_M, align 4, !tbaa !5
  %40 = load i16, i16* %magenta, align 2, !tbaa !25
  %conv38 = zext i16 %40 to i32
  %mul39 = mul i32 %39, %conv38
  %41 = load i32, i32* %COLROUND_R, align 4, !tbaa !5
  %add40 = add i32 %mul39, %41
  %42 = load i32, i32* %COLROUND_S, align 4, !tbaa !5
  %shr41 = lshr i32 %add40, %42
  %conv42 = zext i32 %shr41 to i64
  %43 = load i32, i32* %nbits, align 4, !tbaa !5
  %sh_prom43 = zext i32 %43 to i64
  %shl44 = shl i64 %conv42, %sh_prom43
  %or45 = or i64 %or37, %shl44
  %44 = load i32, i32* %COLROUND_M, align 4, !tbaa !5
  %45 = load i16, i16* %yellow, align 2, !tbaa !25
  %conv46 = zext i16 %45 to i32
  %mul47 = mul i32 %44, %conv46
  %46 = load i32, i32* %COLROUND_R, align 4, !tbaa !5
  %add48 = add i32 %mul47, %46
  %47 = load i32, i32* %COLROUND_S, align 4, !tbaa !5
  %shr49 = lshr i32 %add48, %47
  %conv50 = zext i32 %shr49 to i64
  %or51 = or i64 %or45, %conv50
  store i64 %or51, i64* %color, align 8, !tbaa !28
  %48 = bitcast i32* %nbits to i8*
  call void @llvm.lifetime.end(i64 4, i8* %48) #2
  %49 = bitcast i32* %COLROUND_R to i8*
  call void @llvm.lifetime.end(i64 4, i8* %49) #2
  %50 = bitcast i32* %COLROUND_S to i8*
  call void @llvm.lifetime.end(i64 4, i8* %50) #2
  %51 = bitcast i32* %COLROUND_M to i8*
  call void @llvm.lifetime.end(i64 4, i8* %51) #2
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb
  %52 = load i64, i64* %color, align 8, !tbaa !28
  %53 = bitcast i64* %color to i8*
  call void @llvm.lifetime.end(i64 8, i8* %53) #2
  %54 = bitcast i16* %black to i8*
  call void @llvm.lifetime.end(i64 2, i8* %54) #2
  %55 = bitcast i16* %yellow to i8*
  call void @llvm.lifetime.end(i64 2, i8* %55) #2
  %56 = bitcast i16* %magenta to i8*
  call void @llvm.lifetime.end(i64 2, i8* %56) #2
  %57 = bitcast i16* %cyan to i8*
  call void @llvm.lifetime.end(i64 2, i8* %57) #2
  ret i64 %52
}

; Function Attrs: nounwind uwtable
define internal i32 @gdev_cmyk_map_color_cmyk(%struct.gx_device_s* %pdev, i64 %color, i16* %prgb) #1 {
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
  %COLDUP_M = alloca i32, align 4
  %COLDUP_S = alloca i32, align 4
  store %struct.gx_device_s* %pdev, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  store i64 %color, i64* %color.addr, align 8, !tbaa !28
  store i16* %prgb, i16** %prgb.addr, align 8, !tbaa !1
  %0 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %0, i32 0, i32 11
  %depth = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 3
  %1 = load i16, i16* %depth, align 2, !tbaa !29
  %conv = zext i16 %1 to i32
  switch i32 %conv, label %sw.default [
    i32 1, label %sw.bb
    i32 8, label %sw.bb.2
  ]

sw.bb:                                            ; preds = %entry
  %2 = load i64, i64* %color.addr, align 8, !tbaa !28
  %sub = sub i64 1, %2
  %mul = mul i64 65535, %sub
  %conv1 = trunc i64 %mul to i16
  %3 = load i16*, i16** %prgb.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %3, i64 0
  store i16 %conv1, i16* %arrayidx, align 2, !tbaa !25
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  %4 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %color_info3 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %4, i32 0, i32 11
  %num_components = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info3, i32 0, i32 1
  %5 = load i32, i32* %num_components, align 4, !tbaa !31
  %cmp = icmp eq i32 %5, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb.2
  %6 = bitcast i16* %value to i8*
  call void @llvm.lifetime.start(i64 2, i8* %6) #2
  %7 = load i64, i64* %color.addr, align 8, !tbaa !28
  %conv5 = trunc i64 %7 to i16
  %conv6 = zext i16 %conv5 to i32
  %xor = xor i32 %conv6, 255
  %conv7 = trunc i32 %xor to i16
  store i16 %conv7, i16* %value, align 2, !tbaa !25
  %8 = load i16, i16* %value, align 2, !tbaa !25
  %conv8 = zext i16 %8 to i32
  %shl = shl i32 %conv8, 8
  %9 = load i16, i16* %value, align 2, !tbaa !25
  %conv9 = zext i16 %9 to i32
  %add = add nsw i32 %shl, %conv9
  %conv10 = trunc i32 %add to i16
  %10 = load i16*, i16** %prgb.addr, align 8, !tbaa !1
  %arrayidx11 = getelementptr inbounds i16, i16* %10, i64 0
  store i16 %conv10, i16* %arrayidx11, align 2, !tbaa !25
  %11 = bitcast i16* %value to i8*
  call void @llvm.lifetime.end(i64 2, i8* %11) #2
  br label %sw.epilog

if.end:                                           ; preds = %sw.bb.2
  br label %sw.default

sw.default:                                       ; preds = %entry, %if.end
  %12 = bitcast i64* %bcyan to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #2
  %13 = bitcast i64* %bmagenta to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #2
  %14 = bitcast i64* %byellow to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #2
  %15 = bitcast i64* %black to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15) #2
  %16 = bitcast i32* %nbits to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #2
  %17 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %color_info12 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %17, i32 0, i32 11
  %depth13 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info12, i32 0, i32 3
  %18 = load i16, i16* %depth13, align 2, !tbaa !29
  %conv14 = zext i16 %18 to i32
  %shr = ashr i32 %conv14, 2
  store i32 %shr, i32* %nbits, align 4, !tbaa !5
  %19 = bitcast i32* %COLDUP_M to i8*
  call void @llvm.lifetime.start(i64 4, i8* %19) #2
  %20 = bitcast i32* %COLDUP_S to i8*
  call void @llvm.lifetime.start(i64 4, i8* %20) #2
  br label %do.body

do.body:                                          ; preds = %sw.default
  %21 = load i32, i32* %nbits, align 4, !tbaa !5
  %mul15 = mul nsw i32 2, %21
  %idxprom = sext i32 %mul15 to i64
  %arrayidx16 = getelementptr inbounds [33 x i8], [33 x i8]* @.str.21, i32 0, i64 %idxprom
  %22 = load i8, i8* %arrayidx16, align 1, !tbaa !48
  %conv17 = zext i8 %22 to i32
  %shl18 = shl i32 %conv17, 8
  %23 = load i32, i32* %nbits, align 4, !tbaa !5
  %mul19 = mul nsw i32 2, %23
  %add20 = add nsw i32 %mul19, 1
  %idxprom21 = sext i32 %add20 to i64
  %arrayidx22 = getelementptr inbounds [33 x i8], [33 x i8]* @.str.21, i32 0, i64 %idxprom21
  %24 = load i8, i8* %arrayidx22, align 1, !tbaa !48
  %conv23 = zext i8 %24 to i32
  %or = or i32 %shl18, %conv23
  store i32 %or, i32* %COLDUP_M, align 4, !tbaa !5
  %25 = load i32, i32* %nbits, align 4, !tbaa !5
  %conv24 = sext i32 %25 to i64
  %26 = load i32, i32* %nbits, align 4, !tbaa !5
  %conv25 = sext i32 %26 to i64
  %rem = urem i64 16, %conv25
  %sub26 = sub i64 %conv24, %rem
  %27 = load i32, i32* %nbits, align 4, !tbaa !5
  %conv27 = sext i32 %27 to i64
  %rem28 = urem i64 %sub26, %conv27
  %conv29 = trunc i64 %rem28 to i32
  store i32 %conv29, i32* %COLDUP_S, align 4, !tbaa !5
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %28 = load i64, i64* %color.addr, align 8, !tbaa !28
  %29 = load i32, i32* %nbits, align 4, !tbaa !5
  %mul30 = mul nsw i32 3, %29
  %sh_prom = zext i32 %mul30 to i64
  %shr31 = lshr i64 %28, %sh_prom
  %conv32 = trunc i64 %shr31 to i32
  %30 = load i32, i32* %nbits, align 4, !tbaa !5
  %shl33 = shl i32 1, %30
  %sub34 = sub nsw i32 %shl33, 1
  %and = and i32 %conv32, %sub34
  %31 = load i32, i32* %COLDUP_M, align 4, !tbaa !5
  %mul35 = mul i32 %and, %31
  %conv36 = trunc i32 %mul35 to i16
  %conv37 = zext i16 %conv36 to i32
  %32 = load i32, i32* %COLDUP_S, align 4, !tbaa !5
  %shr38 = ashr i32 %conv37, %32
  %conv39 = sext i32 %shr38 to i64
  store i64 %conv39, i64* %black, align 8, !tbaa !28
  %33 = load i64, i64* %color.addr, align 8, !tbaa !28
  %34 = load i32, i32* %nbits, align 4, !tbaa !5
  %mul40 = mul nsw i32 2, %34
  %sh_prom41 = zext i32 %mul40 to i64
  %shr42 = lshr i64 %33, %sh_prom41
  %conv43 = trunc i64 %shr42 to i32
  %35 = load i32, i32* %nbits, align 4, !tbaa !5
  %shl44 = shl i32 1, %35
  %sub45 = sub nsw i32 %shl44, 1
  %and46 = and i32 %conv43, %sub45
  %36 = load i32, i32* %COLDUP_M, align 4, !tbaa !5
  %mul47 = mul i32 %and46, %36
  %conv48 = trunc i32 %mul47 to i16
  %conv49 = zext i16 %conv48 to i32
  %37 = load i32, i32* %COLDUP_S, align 4, !tbaa !5
  %shr50 = ashr i32 %conv49, %37
  %conv51 = sext i32 %shr50 to i64
  store i64 %conv51, i64* %bcyan, align 8, !tbaa !28
  %38 = load i64, i64* %color.addr, align 8, !tbaa !28
  %39 = load i32, i32* %nbits, align 4, !tbaa !5
  %sh_prom52 = zext i32 %39 to i64
  %shr53 = lshr i64 %38, %sh_prom52
  %conv54 = trunc i64 %shr53 to i32
  %40 = load i32, i32* %nbits, align 4, !tbaa !5
  %shl55 = shl i32 1, %40
  %sub56 = sub nsw i32 %shl55, 1
  %and57 = and i32 %conv54, %sub56
  %41 = load i32, i32* %COLDUP_M, align 4, !tbaa !5
  %mul58 = mul i32 %and57, %41
  %conv59 = trunc i32 %mul58 to i16
  %conv60 = zext i16 %conv59 to i32
  %42 = load i32, i32* %COLDUP_S, align 4, !tbaa !5
  %shr61 = ashr i32 %conv60, %42
  %conv62 = sext i32 %shr61 to i64
  store i64 %conv62, i64* %bmagenta, align 8, !tbaa !28
  %43 = load i64, i64* %color.addr, align 8, !tbaa !28
  %conv63 = trunc i64 %43 to i32
  %44 = load i32, i32* %nbits, align 4, !tbaa !5
  %shl64 = shl i32 1, %44
  %sub65 = sub nsw i32 %shl64, 1
  %and66 = and i32 %conv63, %sub65
  %45 = load i32, i32* %COLDUP_M, align 4, !tbaa !5
  %mul67 = mul i32 %and66, %45
  %conv68 = trunc i32 %mul67 to i16
  %conv69 = zext i16 %conv68 to i32
  %46 = load i32, i32* %COLDUP_S, align 4, !tbaa !5
  %shr70 = ashr i32 %conv69, %46
  %conv71 = sext i32 %shr70 to i64
  store i64 %conv71, i64* %byellow, align 8, !tbaa !28
  %47 = load i64, i64* %bcyan, align 8, !tbaa !28
  %conv72 = trunc i64 %47 to i16
  %48 = load i16*, i16** %prgb.addr, align 8, !tbaa !1
  %arrayidx73 = getelementptr inbounds i16, i16* %48, i64 0
  store i16 %conv72, i16* %arrayidx73, align 2, !tbaa !25
  %49 = load i64, i64* %bmagenta, align 8, !tbaa !28
  %conv74 = trunc i64 %49 to i16
  %50 = load i16*, i16** %prgb.addr, align 8, !tbaa !1
  %arrayidx75 = getelementptr inbounds i16, i16* %50, i64 1
  store i16 %conv74, i16* %arrayidx75, align 2, !tbaa !25
  %51 = load i64, i64* %byellow, align 8, !tbaa !28
  %conv76 = trunc i64 %51 to i16
  %52 = load i16*, i16** %prgb.addr, align 8, !tbaa !1
  %arrayidx77 = getelementptr inbounds i16, i16* %52, i64 2
  store i16 %conv76, i16* %arrayidx77, align 2, !tbaa !25
  %53 = load i64, i64* %black, align 8, !tbaa !28
  %conv78 = trunc i64 %53 to i16
  %54 = load i16*, i16** %prgb.addr, align 8, !tbaa !1
  %arrayidx79 = getelementptr inbounds i16, i16* %54, i64 3
  store i16 %conv78, i16* %arrayidx79, align 2, !tbaa !25
  %55 = bitcast i32* %COLDUP_S to i8*
  call void @llvm.lifetime.end(i64 4, i8* %55) #2
  %56 = bitcast i32* %COLDUP_M to i8*
  call void @llvm.lifetime.end(i64 4, i8* %56) #2
  %57 = bitcast i32* %nbits to i8*
  call void @llvm.lifetime.end(i64 4, i8* %57) #2
  %58 = bitcast i64* %black to i8*
  call void @llvm.lifetime.end(i64 8, i8* %58) #2
  %59 = bitcast i64* %byellow to i8*
  call void @llvm.lifetime.end(i64 8, i8* %59) #2
  %60 = bitcast i64* %bmagenta to i8*
  call void @llvm.lifetime.end(i64 8, i8* %60) #2
  %61 = bitcast i64* %bcyan to i8*
  call void @llvm.lifetime.end(i64 8, i8* %61) #2
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %if.then, %sw.bb
  ret i32 0
}

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
  %4 = load i16, i16* %arrayidx, align 2, !tbaa !25
  store i16 %4, i16* %r, align 2, !tbaa !25
  %5 = load i16*, i16** %cv.addr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds i16, i16* %5, i64 1
  %6 = load i16, i16* %arrayidx1, align 2, !tbaa !25
  store i16 %6, i16* %g, align 2, !tbaa !25
  %7 = load i16*, i16** %cv.addr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds i16, i16* %7, i64 2
  %8 = load i16, i16* %arrayidx2, align 2, !tbaa !25
  store i16 %8, i16* %b, align 2, !tbaa !25
  %9 = load i16, i16* %r, align 2, !tbaa !25
  %conv = zext i16 %9 to i32
  %10 = load i16, i16* %g, align 2, !tbaa !25
  %conv3 = zext i16 %10 to i32
  %and = and i32 %conv, %conv3
  %11 = load i16, i16* %b, align 2, !tbaa !25
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
  %13 = load i16, i16* %r, align 2, !tbaa !25
  %conv9 = zext i16 %13 to i32
  %sub = sub nsw i32 65535, %conv9
  %conv10 = trunc i32 %sub to i16
  store i16 %conv10, i16* %c, align 2, !tbaa !25
  %14 = bitcast i16* %m to i8*
  call void @llvm.lifetime.start(i64 2, i8* %14) #2
  %15 = load i16, i16* %g, align 2, !tbaa !25
  %conv11 = zext i16 %15 to i32
  %sub12 = sub nsw i32 65535, %conv11
  %conv13 = trunc i32 %sub12 to i16
  store i16 %conv13, i16* %m, align 2, !tbaa !25
  %16 = bitcast i16* %y to i8*
  call void @llvm.lifetime.start(i64 2, i8* %16) #2
  %17 = load i16, i16* %b, align 2, !tbaa !25
  %conv14 = zext i16 %17 to i32
  %sub15 = sub nsw i32 65535, %conv14
  %conv16 = trunc i32 %sub15 to i16
  store i16 %conv16, i16* %y, align 2, !tbaa !25
  %18 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %18, i32 0, i32 11
  %depth = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 3
  %19 = load i16, i16* %depth, align 2, !tbaa !29
  %conv17 = zext i16 %19 to i32
  switch i32 %conv17, label %sw.epilog [
    i32 1, label %sw.bb
    i32 8, label %sw.bb.24
  ]

sw.bb:                                            ; preds = %if.else
  %20 = load i16, i16* %c, align 2, !tbaa !25
  %conv18 = zext i16 %20 to i32
  %21 = load i16, i16* %m, align 2, !tbaa !25
  %conv19 = zext i16 %21 to i32
  %or = or i32 %conv18, %conv19
  %22 = load i16, i16* %y, align 2, !tbaa !25
  %conv20 = zext i16 %22 to i32
  %or21 = or i32 %or, %conv20
  %cmp22 = icmp sgt i32 %or21, 32767
  %cond = select i1 %cmp22, i64 1, i64 0
  store i64 %cond, i64* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.24:                                         ; preds = %if.else
  %23 = load i16, i16* %c, align 2, !tbaa !25
  %conv25 = zext i16 %23 to i64
  %mul26 = mul i64 %conv25, 30
  %mul27 = mul i64 %mul26, 10
  %24 = load i16, i16* %m, align 2, !tbaa !25
  %conv28 = zext i16 %24 to i64
  %mul29 = mul i64 %conv28, 59
  %mul30 = mul i64 %mul29, 10
  %add31 = add i64 %mul27, %mul30
  %25 = load i16, i16* %y, align 2, !tbaa !25
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

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

declare i32 @gdev_prn_reallocate_memory(%struct.gx_device_s*, %struct.gdev_space_params_s*, i32, i32) #0

declare i32 @gdev_prn_get_params(%struct.gx_device_s*, %struct.gs_param_list_s*) #0

declare i32 @param_write_int(%struct.gs_param_list_s*, i8*, i32*) #0

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
  store i32 %minval, i32* %minval.addr, align 4, !tbaa !5
  store i32 %maxval, i32* %maxval.addr, align 4, !tbaa !5
  store i32 %ecode, i32* %ecode.addr, align 4, !tbaa !5
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast i32* %value to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %3 = load i8*, i8** %pname.addr, align 8, !tbaa !1
  %call = call i32 @param_read_int(%struct.gs_param_list_s* %2, i8* %3, i32* %value) #5
  store i32 %call, i32* %code, align 4, !tbaa !5
  switch i32 %call, label %sw.default [
    i32 1, label %sw.bb
    i32 0, label %sw.bb.1
  ]

sw.default:                                       ; preds = %entry
  %4 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %4, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %5 = load i32, i32* %ecode.addr, align 4, !tbaa !5
  store i32 %5, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.1:                                          ; preds = %entry
  %6 = load i32, i32* %value, align 4, !tbaa !5
  %7 = load i32, i32* %minval.addr, align 4, !tbaa !5
  %cmp = icmp slt i32 %6, %7
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.bb.1
  %8 = load i32, i32* %value, align 4, !tbaa !5
  %9 = load i32, i32* %maxval.addr, align 4, !tbaa !5
  %cmp2 = icmp sgt i32 %8, %9
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %sw.bb.1
  %10 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %10, i32 0, i32 0
  %11 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs, align 8, !tbaa !56
  %signal_error = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %11, i32 0, i32 7
  %12 = load i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*, i8*, i32)** %signal_error, align 8, !tbaa !58
  %13 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %14 = load i8*, i8** %pname.addr, align 8, !tbaa !1
  %call3 = call i32 %12(%struct.gs_param_list_s* %13, i8* %14, i32 -15) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %15 = load i32, i32* %value, align 4, !tbaa !5
  %16 = load i32*, i32** %pvalue.addr, align 8, !tbaa !1
  store i32 %15, i32* %16, align 4, !tbaa !5
  %17 = load i32, i32* %ecode.addr, align 4, !tbaa !5
  %cmp4 = icmp slt i32 %17, 0
  br i1 %cmp4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %18 = load i32, i32* %ecode.addr, align 4, !tbaa !5
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
  store i32 %new_bpp, i32* %new_bpp.addr, align 4, !tbaa !5
  store i32 %real_bpp, i32* %real_bpp.addr, align 4, !tbaa !5
  store i32 %ccomps, i32* %ccomps.addr, align 4, !tbaa !5
  %0 = load i32, i32* %new_bpp.addr, align 4, !tbaa !5
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* %ccomps.addr, align 4, !tbaa !5
  %cmp1 = icmp eq i32 %1, 0
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %2 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %3 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call = call i32 @gdev_prn_put_params(%struct.gx_device_s* %2, %struct.gs_param_list_s* %3) #5
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
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* %9, i64 720, i32 8, i1 false), !tbaa.struct !60
  %depth = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %save_info, i32 0, i32 3
  %10 = load i16, i16* %depth, align 2, !tbaa !39
  %conv = zext i16 %10 to i32
  store i32 %conv, i32* %save_bpp, align 4, !tbaa !5
  %11 = load i32, i32* %save_bpp, align 4, !tbaa !5
  %cmp2 = icmp eq i32 %11, 8
  br i1 %cmp2, label %land.lhs.true.4, label %if.end

land.lhs.true.4:                                  ; preds = %if.else
  %num_components = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %save_info, i32 0, i32 1
  %12 = load i32, i32* %num_components, align 4, !tbaa !51
  %cmp5 = icmp eq i32 %12, 3
  br i1 %cmp5, label %land.lhs.true.7, label %if.end

land.lhs.true.7:                                  ; preds = %land.lhs.true.4
  %13 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %14 = bitcast %struct.gx_device_s* %13 to %struct.gx_device_colour_prn*
  %cmyk = getelementptr inbounds %struct.gx_device_colour_prn, %struct.gx_device_colour_prn* %14, i32 0, i32 68
  %15 = load i16, i16* %cmyk, align 2, !tbaa !38
  %tobool = icmp ne i16 %15, 0
  br i1 %tobool, label %if.end, label %if.then.8

if.then.8:                                        ; preds = %land.lhs.true.7
  store i32 3, i32* %save_bpp, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then.8, %land.lhs.true.7, %land.lhs.true.4, %if.else
  %16 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %17 = load i32, i32* %real_bpp.addr, align 4, !tbaa !5
  %18 = load i32, i32* %ccomps.addr, align 4, !tbaa !5
  %call9 = call i32 @cdj_set_bpp(%struct.gx_device_s* %16, i32 %17, i32 %18) #5
  store i32 %call9, i32* %code, align 4, !tbaa !5
  %19 = load i32, i32* %code, align 4, !tbaa !5
  %cmp10 = icmp slt i32 %19, 0
  br i1 %cmp10, label %if.then.12, label %if.end.17

if.then.12:                                       ; preds = %if.end
  %20 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %20, i32 0, i32 0
  %21 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs, align 8, !tbaa !56
  %signal_error = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %21, i32 0, i32 7
  %22 = load i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*, i8*, i32)** %signal_error, align 8, !tbaa !58
  %23 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %24 = load i32, i32* %code, align 4, !tbaa !5
  %call13 = call i32 %22(%struct.gs_param_list_s* %23, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.25, i32 0, i32 0), i32 %24) #5
  %25 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs14 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %25, i32 0, i32 0
  %26 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs14, align 8, !tbaa !56
  %signal_error15 = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %26, i32 0, i32 7
  %27 = load i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*, i8*, i32)** %signal_error15, align 8, !tbaa !58
  %28 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %29 = load i32, i32* %code, align 4, !tbaa !5
  %call16 = call i32 %27(%struct.gs_param_list_s* %28, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.26, i32 0, i32 0), i32 %29) #5
  %30 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %30, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.17:                                        ; preds = %if.end
  %31 = load i32, i32* %new_bpp.addr, align 4, !tbaa !5
  %conv18 = trunc i32 %31 to i16
  %32 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %color_info19 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %32, i32 0, i32 11
  %depth20 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info19, i32 0, i32 3
  store i16 %conv18, i16* %depth20, align 2, !tbaa !29
  %33 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %34 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call21 = call i32 @gdev_prn_put_params(%struct.gx_device_s* %33, %struct.gs_param_list_s* %34) #5
  store i32 %call21, i32* %code, align 4, !tbaa !5
  %35 = load i32, i32* %code, align 4, !tbaa !5
  %cmp22 = icmp slt i32 %35, 0
  br i1 %cmp22, label %if.then.24, label %if.end.27

if.then.24:                                       ; preds = %if.end.17
  %36 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %37 = load i32, i32* %save_bpp, align 4, !tbaa !5
  %num_components25 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %save_info, i32 0, i32 1
  %38 = load i32, i32* %num_components25, align 4, !tbaa !51
  %call26 = call i32 @cdj_set_bpp(%struct.gx_device_s* %36, i32 %37, i32 %38) #5
  %39 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %39, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.27:                                        ; preds = %if.end.17
  %40 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %41 = load i32, i32* %real_bpp.addr, align 4, !tbaa !5
  %42 = load i32, i32* %ccomps.addr, align 4, !tbaa !5
  %call28 = call i32 @cdj_set_bpp(%struct.gx_device_s* %40, i32 %41, i32 %42) #5
  %43 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %44 = bitcast %struct.gx_device_s* %43 to %struct.gx_device_cdj_s*
  %color_info29 = getelementptr inbounds %struct.gx_device_cdj_s, %struct.gx_device_cdj_s* %44, i32 0, i32 11
  %depth30 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info29, i32 0, i32 3
  %45 = load i16, i16* %depth30, align 2, !tbaa !61
  %conv31 = zext i16 %45 to i32
  %46 = load i32, i32* %save_bpp, align 4, !tbaa !5
  %cmp32 = icmp ne i32 %conv31, %46
  br i1 %cmp32, label %land.lhs.true.40, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.27
  %47 = load i32, i32* %ccomps.addr, align 4, !tbaa !5
  %cmp34 = icmp ne i32 %47, 0
  br i1 %cmp34, label %land.lhs.true.36, label %if.end.44

land.lhs.true.36:                                 ; preds = %lor.lhs.false
  %48 = load i32, i32* %ccomps.addr, align 4, !tbaa !5
  %num_components37 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %save_info, i32 0, i32 1
  %49 = load i32, i32* %num_components37, align 4, !tbaa !51
  %cmp38 = icmp ne i32 %48, %49
  br i1 %cmp38, label %land.lhs.true.40, label %if.end.44

land.lhs.true.40:                                 ; preds = %land.lhs.true.36, %if.end.27
  %50 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %is_open = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %50, i32 0, i32 9
  %51 = load i32, i32* %is_open, align 4, !tbaa !44
  %tobool41 = icmp ne i32 %51, 0
  br i1 %tobool41, label %if.then.42, label %if.end.44

if.then.42:                                       ; preds = %land.lhs.true.40
  %52 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %call43 = call i32 @gs_closedevice(%struct.gx_device_s* %52) #5
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

declare i32 @gdev_prn_put_params(%struct.gx_device_s*, %struct.gs_param_list_s*) #0

; Function Attrs: nounwind uwtable
define internal i32 @dj550c_open(%struct.gx_device_s* %pdev) #1 {
entry:
  %pdev.addr = alloca %struct.gx_device_s*, align 8
  store %struct.gx_device_s* %pdev, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %0 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %call = call i32 @hp_colour_open(%struct.gx_device_s* %0, i32 1) #5
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @dj505j_open(%struct.gx_device_s* %pdev) #1 {
entry:
  %pdev.addr = alloca %struct.gx_device_s*, align 8
  store %struct.gx_device_s* %pdev, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %0 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %call = call i32 @hp_colour_open(%struct.gx_device_s* %0, i32 2) #5
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @pj_open(%struct.gx_device_s* %pdev) #1 {
entry:
  %pdev.addr = alloca %struct.gx_device_s*, align 8
  store %struct.gx_device_s* %pdev, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %0 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %call = call i32 @hp_colour_open(%struct.gx_device_s* %0, i32 4) #5
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @pj_put_params(%struct.gx_device_s* %pdev, %struct.gs_param_list_s* %plist) #1 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_s*, align 8
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %bpp = alloca i32, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %pdev, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %0 = bitcast i32* %bpp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  store i32 0, i32* %bpp, align 4, !tbaa !5
  %1 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call = call i32 @cdj_put_param_int(%struct.gs_param_list_s* %2, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.25, i32 0, i32 0), i32* %bpp, i32 1, i32 32, i32 0) #5
  store i32 %call, i32* %code, align 4, !tbaa !5
  %3 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %4, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %6 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %7 = load i32, i32* %bpp, align 4, !tbaa !5
  %8 = load i32, i32* %bpp, align 4, !tbaa !5
  %call1 = call i32 @cdj_put_param_bpp(%struct.gx_device_s* %5, %struct.gs_param_list_s* %6, i32 %7, i32 %8, i32 0) #5
  store i32 %call1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %9 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %9) #2
  %10 = bitcast i32* %bpp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %10) #2
  %11 = load i32, i32* %retval
  ret i32 %11
}

; Function Attrs: nounwind uwtable
define internal i32 @dnj650c_open(%struct.gx_device_s* %pdev) #1 {
entry:
  %pdev.addr = alloca %struct.gx_device_s*, align 8
  store %struct.gx_device_s* %pdev, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %0 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %call = call i32 @hp_colour_open(%struct.gx_device_s* %0, i32 7) #5
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @lj4dith_open(%struct.gx_device_s* %pdev) #1 {
entry:
  %pdev.addr = alloca %struct.gx_device_s*, align 8
  store %struct.gx_device_s* %pdev, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %0 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %call = call i32 @hp_colour_open(%struct.gx_device_s* %0, i32 8) #5
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @pjxl_open(%struct.gx_device_s* %pdev) #1 {
entry:
  %pdev.addr = alloca %struct.gx_device_s*, align 8
  store %struct.gx_device_s* %pdev, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %0 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %call = call i32 @hp_colour_open(%struct.gx_device_s* %0, i32 5) #5
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @pjxl_get_params(%struct.gx_device_s* %pdev, %struct.gs_param_list_s* %plist) #1 {
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
  %call = call i32 @gdev_prn_get_params(%struct.gx_device_s* %1, %struct.gs_param_list_s* %2) #5
  store i32 %call, i32* %code, align 4, !tbaa !5
  %3 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %3, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %4 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %6 = bitcast %struct.gx_device_s* %5 to %struct.gx_device_pjxl_s*
  %printqual = getelementptr inbounds %struct.gx_device_pjxl_s, %struct.gx_device_pjxl_s* %6, i32 0, i32 71
  %call1 = call i32 @param_write_int(%struct.gs_param_list_s* %4, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.27, i32 0, i32 0), i32* %printqual) #5
  store i32 %call1, i32* %code, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.then, label %lor.lhs.false.3

lor.lhs.false.3:                                  ; preds = %lor.lhs.false
  %7 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %8 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %9 = bitcast %struct.gx_device_s* %8 to %struct.gx_device_pjxl_s*
  %rendertype = getelementptr inbounds %struct.gx_device_pjxl_s, %struct.gx_device_pjxl_s* %9, i32 0, i32 72
  %call4 = call i32 @param_write_int(%struct.gs_param_list_s* %7, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.28, i32 0, i32 0), i32* %rendertype) #5
  store i32 %call4, i32* %code, align 4, !tbaa !5
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.3, %lor.lhs.false, %entry
  %10 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false.3
  %11 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %11, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %12 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %12) #2
  %13 = load i32, i32* %retval
  ret i32 %13
}

; Function Attrs: nounwind uwtable
define internal i32 @pjxl_put_params(%struct.gx_device_s* %pdev, %struct.gs_param_list_s* %plist) #1 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_s*, align 8
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %printqual = alloca i32, align 4
  %rendertype = alloca i32, align 4
  %bpp = alloca i32, align 4
  %real_bpp = alloca i32, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %pdev, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %0 = bitcast i32* %printqual to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_pjxl_s*
  %printqual1 = getelementptr inbounds %struct.gx_device_pjxl_s, %struct.gx_device_pjxl_s* %2, i32 0, i32 71
  %3 = load i32, i32* %printqual1, align 4, !tbaa !62
  store i32 %3, i32* %printqual, align 4, !tbaa !5
  %4 = bitcast i32* %rendertype to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %6 = bitcast %struct.gx_device_s* %5 to %struct.gx_device_pjxl_s*
  %rendertype2 = getelementptr inbounds %struct.gx_device_pjxl_s, %struct.gx_device_pjxl_s* %6, i32 0, i32 72
  %7 = load i32, i32* %rendertype2, align 4, !tbaa !64
  store i32 %7, i32* %rendertype, align 4, !tbaa !5
  %8 = bitcast i32* %bpp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #2
  store i32 0, i32* %bpp, align 4, !tbaa !5
  %9 = bitcast i32* %real_bpp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #2
  store i32 0, i32* %real_bpp, align 4, !tbaa !5
  %10 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #2
  store i32 0, i32* %code, align 4, !tbaa !5
  %11 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %12 = load i32, i32* %code, align 4, !tbaa !5
  %call = call i32 @cdj_put_param_int(%struct.gs_param_list_s* %11, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.27, i32 0, i32 0), i32* %printqual, i32 -1, i32 1, i32 %12) #5
  store i32 %call, i32* %code, align 4, !tbaa !5
  %13 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %14 = load i32, i32* %code, align 4, !tbaa !5
  %call3 = call i32 @cdj_put_param_int(%struct.gs_param_list_s* %13, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.28, i32 0, i32 0), i32* %rendertype, i32 0, i32 10, i32 %14) #5
  store i32 %call3, i32* %code, align 4, !tbaa !5
  %15 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %16 = load i32, i32* %code, align 4, !tbaa !5
  %call4 = call i32 @cdj_put_param_int(%struct.gs_param_list_s* %15, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.25, i32 0, i32 0), i32* %bpp, i32 1, i32 32, i32 %16) #5
  store i32 %call4, i32* %code, align 4, !tbaa !5
  %17 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %17, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %18 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %18, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %19 = load i32, i32* %bpp, align 4, !tbaa !5
  store i32 %19, i32* %real_bpp, align 4, !tbaa !5
  %20 = load i32, i32* %rendertype, align 4, !tbaa !5
  %cmp5 = icmp sgt i32 %20, 0
  br i1 %cmp5, label %if.then.6, label %if.end.11

if.then.6:                                        ; preds = %if.end
  %21 = load i32, i32* %bpp, align 4, !tbaa !5
  %cmp7 = icmp sgt i32 %21, 0
  br i1 %cmp7, label %land.lhs.true, label %if.end.10

land.lhs.true:                                    ; preds = %if.then.6
  %22 = load i32, i32* %bpp, align 4, !tbaa !5
  %cmp8 = icmp slt i32 %22, 16
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %land.lhs.true
  store i32 24, i32* %real_bpp, align 4, !tbaa !5
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.9, %land.lhs.true, %if.then.6
  br label %if.end.11

if.end.11:                                        ; preds = %if.end.10, %if.end
  %23 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %24 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %25 = load i32, i32* %bpp, align 4, !tbaa !5
  %26 = load i32, i32* %real_bpp, align 4, !tbaa !5
  %call12 = call i32 @cdj_put_param_bpp(%struct.gx_device_s* %23, %struct.gs_param_list_s* %24, i32 %25, i32 %26, i32 0) #5
  store i32 %call12, i32* %code, align 4, !tbaa !5
  %27 = load i32, i32* %code, align 4, !tbaa !5
  %cmp13 = icmp slt i32 %27, 0
  br i1 %cmp13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.end.11
  %28 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %28, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.15:                                        ; preds = %if.end.11
  %29 = load i32, i32* %printqual, align 4, !tbaa !5
  %30 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %31 = bitcast %struct.gx_device_s* %30 to %struct.gx_device_pjxl_s*
  %printqual16 = getelementptr inbounds %struct.gx_device_pjxl_s, %struct.gx_device_pjxl_s* %31, i32 0, i32 71
  store i32 %29, i32* %printqual16, align 4, !tbaa !62
  %32 = load i32, i32* %rendertype, align 4, !tbaa !5
  %33 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %34 = bitcast %struct.gx_device_s* %33 to %struct.gx_device_pjxl_s*
  %rendertype17 = getelementptr inbounds %struct.gx_device_pjxl_s, %struct.gx_device_pjxl_s* %34, i32 0, i32 72
  store i32 %32, i32* %rendertype17, align 4, !tbaa !64
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.15, %if.then.14, %if.then
  %35 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %35) #2
  %36 = bitcast i32* %real_bpp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %36) #2
  %37 = bitcast i32* %bpp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %37) #2
  %38 = bitcast i32* %rendertype to i8*
  call void @llvm.lifetime.end(i64 4, i8* %38) #2
  %39 = bitcast i32* %printqual to i8*
  call void @llvm.lifetime.end(i64 4, i8* %39) #2
  %40 = load i32, i32* %retval
  ret i32 %40
}

; Function Attrs: nounwind uwtable
define internal i32 @pjxl300_open(%struct.gx_device_s* %pdev) #1 {
entry:
  %pdev.addr = alloca %struct.gx_device_s*, align 8
  store %struct.gx_device_s* %pdev, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %0 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %call = call i32 @hp_colour_open(%struct.gx_device_s* %0, i32 3) #5
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @escp_open(%struct.gx_device_s* %pdev) #1 {
entry:
  %pdev.addr = alloca %struct.gx_device_s*, align 8
  store %struct.gx_device_s* %pdev, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %0 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %call = call i32 @hp_colour_open(%struct.gx_device_s* %0, i32 9) #5
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @bjc_open(%struct.gx_device_s* %pdev) #1 {
entry:
  %pdev.addr = alloca %struct.gx_device_s*, align 8
  store %struct.gx_device_s* %pdev, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %0 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_bjc800_s*
  %ptype = getelementptr inbounds %struct.gx_device_bjc800_s, %struct.gx_device_bjc800_s* %2, i32 0, i32 71
  %3 = load i32, i32* %ptype, align 4, !tbaa !7
  %call = call i32 @hp_colour_open(%struct.gx_device_s* %0, i32 %3) #5
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @bjc_get_params(%struct.gx_device_s* %pdev, %struct.gs_param_list_s* %plist) #1 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_s*, align 8
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %code = alloca i32, align 4
  %ncode = alloca i32, align 4
  %pmedia = alloca %struct.gs_param_string_s, align 8
  %pquality = alloca %struct.gs_param_string_s, align 8
  %dithering = alloca %struct.gs_param_string_s, align 8
  %cleanup.dest.slot = alloca i32
  %version = alloca float, align 4
  %versionString = alloca %struct.gs_param_string_s, align 8
  %bTrue = alloca i32, align 4
  store %struct.gx_device_s* %pdev, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %2 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call = call i32 @gdev_prn_get_params(%struct.gx_device_s* %1, %struct.gs_param_list_s* %2) #5
  store i32 %call, i32* %code, align 4, !tbaa !5
  %3 = bitcast i32* %ncode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = bitcast %struct.gs_param_string_s* %pmedia to i8*
  call void @llvm.lifetime.start(i64 16, i8* %4) #2
  %5 = bitcast %struct.gs_param_string_s* %pquality to i8*
  call void @llvm.lifetime.start(i64 16, i8* %5) #2
  %6 = bitcast %struct.gs_param_string_s* %dithering to i8*
  call void @llvm.lifetime.start(i64 16, i8* %6) #2
  %7 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %7, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %8, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %10 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %11 = bitcast %struct.gx_device_s* %10 to %struct.gx_device_bjc800_s*
  %bjc_p = getelementptr inbounds %struct.gx_device_bjc800_s, %struct.gx_device_bjc800_s* %11, i32 0, i32 73
  %manualFeed = getelementptr inbounds %struct.bjc_params, %struct.bjc_params* %bjc_p, i32 0, i32 0
  %call1 = call i32 @param_write_bool(%struct.gs_param_list_s* %9, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.29, i32 0, i32 0), i32* %manualFeed) #5
  store i32 %call1, i32* %ncode, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  %12 = load i32, i32* %ncode, align 4, !tbaa !5
  store i32 %12, i32* %code, align 4, !tbaa !5
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.3, %if.end
  %13 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %14 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %15 = bitcast %struct.gx_device_s* %14 to %struct.gx_device_bjc800_s*
  %bjc_p5 = getelementptr inbounds %struct.gx_device_bjc800_s, %struct.gx_device_bjc800_s* %15, i32 0, i32 73
  %mediaType = getelementptr inbounds %struct.bjc_params, %struct.bjc_params* %bjc_p5, i32 0, i32 1
  %16 = load i32, i32* %mediaType, align 4, !tbaa !65
  %17 = load i32, i32* %code, align 4, !tbaa !5
  %call6 = call i32 @get_param_string(%struct.gs_param_list_s* %13, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.30, i32 0, i32 0), %struct.gs_param_string_s* %pmedia, %struct.stringParamDescription* getelementptr inbounds ([7 x %struct.stringParamDescription], [7 x %struct.stringParamDescription]* @bjc_mediaTypeStrings, i32 0, i32 0), i32 %16, i32 1, i32 %17) #5
  store i32 %call6, i32* %code, align 4, !tbaa !5
  %18 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %19 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %20 = bitcast %struct.gx_device_s* %19 to %struct.gx_device_bjc800_s*
  %ptype = getelementptr inbounds %struct.gx_device_bjc800_s, %struct.gx_device_bjc800_s* %20, i32 0, i32 71
  %21 = load i32, i32* %ptype, align 4, !tbaa !7
  %cmp7 = icmp eq i32 %21, 11
  %cond = select i1 %cmp7, %struct.stringParamDescription* getelementptr inbounds ([5 x %struct.stringParamDescription], [5 x %struct.stringParamDescription]* @bjc800_printQualityStrings, i32 0, i32 0), %struct.stringParamDescription* getelementptr inbounds ([4 x %struct.stringParamDescription], [4 x %struct.stringParamDescription]* @bjc600_printQualityStrings, i32 0, i32 0)
  %22 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %23 = bitcast %struct.gx_device_s* %22 to %struct.gx_device_bjc800_s*
  %bjc_p8 = getelementptr inbounds %struct.gx_device_bjc800_s, %struct.gx_device_bjc800_s* %23, i32 0, i32 73
  %printQuality = getelementptr inbounds %struct.bjc_params, %struct.bjc_params* %bjc_p8, i32 0, i32 4
  %24 = load i32, i32* %printQuality, align 4, !tbaa !66
  %25 = load i32, i32* %code, align 4, !tbaa !5
  %call9 = call i32 @get_param_string(%struct.gs_param_list_s* %18, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.27, i32 0, i32 0), %struct.gs_param_string_s* %pquality, %struct.stringParamDescription* %cond, i32 %24, i32 1, i32 %25) #5
  store i32 %call9, i32* %code, align 4, !tbaa !5
  %26 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %27 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %28 = bitcast %struct.gx_device_s* %27 to %struct.gx_device_bjc800_s*
  %bjc_p10 = getelementptr inbounds %struct.gx_device_bjc800_s, %struct.gx_device_bjc800_s* %28, i32 0, i32 73
  %ditheringType = getelementptr inbounds %struct.bjc_params, %struct.bjc_params* %bjc_p10, i32 0, i32 5
  %29 = load i32, i32* %ditheringType, align 4, !tbaa !67
  %30 = load i32, i32* %code, align 4, !tbaa !5
  %call11 = call i32 @get_param_string(%struct.gs_param_list_s* %26, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.31, i32 0, i32 0), %struct.gs_param_string_s* %dithering, %struct.stringParamDescription* getelementptr inbounds ([3 x %struct.stringParamDescription], [3 x %struct.stringParamDescription]* @bjc_ditheringTypeStrings, i32 0, i32 0), i32 %29, i32 1, i32 %30) #5
  store i32 %call11, i32* %code, align 4, !tbaa !5
  %31 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %32 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %33 = bitcast %struct.gx_device_s* %32 to %struct.gx_device_bjc800_s*
  %bjc_p12 = getelementptr inbounds %struct.gx_device_bjc800_s, %struct.gx_device_bjc800_s* %33, i32 0, i32 73
  %printColors = getelementptr inbounds %struct.bjc_params, %struct.bjc_params* %bjc_p12, i32 0, i32 7
  %call13 = call i32 @param_write_int(%struct.gs_param_list_s* %31, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.32, i32 0, i32 0), i32* %printColors) #5
  store i32 %call13, i32* %ncode, align 4, !tbaa !5
  %cmp14 = icmp slt i32 %call13, 0
  br i1 %cmp14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.end.4
  %34 = load i32, i32* %ncode, align 4, !tbaa !5
  store i32 %34, i32* %code, align 4, !tbaa !5
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.15, %if.end.4
  %35 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %36 = bitcast %struct.gx_device_s* %35 to %struct.gx_device_bjc800_s*
  %bjc_p17 = getelementptr inbounds %struct.gx_device_bjc800_s, %struct.gx_device_bjc800_s* %36, i32 0, i32 73
  %mediaWeight_isSet = getelementptr inbounds %struct.bjc_params, %struct.bjc_params* %bjc_p17, i32 0, i32 2
  %37 = load i32, i32* %mediaWeight_isSet, align 4, !tbaa !68
  %tobool = icmp ne i32 %37, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.16
  %38 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %39 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %40 = bitcast %struct.gx_device_s* %39 to %struct.gx_device_bjc800_s*
  %bjc_p18 = getelementptr inbounds %struct.gx_device_bjc800_s, %struct.gx_device_bjc800_s* %40, i32 0, i32 73
  %mediaWeight = getelementptr inbounds %struct.bjc_params, %struct.bjc_params* %bjc_p18, i32 0, i32 3
  %call19 = call i32 @param_write_int(%struct.gs_param_list_s* %38, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.33, i32 0, i32 0), i32* %mediaWeight) #5
  br label %cond.end

cond.false:                                       ; preds = %if.end.16
  %41 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call20 = call i32 @param_write_null(%struct.gs_param_list_s* %41, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.33, i32 0, i32 0)) #5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond21 = phi i32 [ %call19, %cond.true ], [ %call20, %cond.false ]
  store i32 %cond21, i32* %ncode, align 4, !tbaa !5
  %cmp22 = icmp slt i32 %cond21, 0
  br i1 %cmp22, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %cond.end
  %42 = load i32, i32* %ncode, align 4, !tbaa !5
  store i32 %42, i32* %code, align 4, !tbaa !5
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.23, %cond.end
  %43 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %44 = bitcast %struct.gx_device_s* %43 to %struct.gx_device_bjc800_s*
  %ptype25 = getelementptr inbounds %struct.gx_device_bjc800_s, %struct.gx_device_bjc800_s* %44, i32 0, i32 71
  %45 = load i32, i32* %ptype25, align 4, !tbaa !7
  %cmp26 = icmp ne i32 %45, 11
  br i1 %cmp26, label %if.then.27, label %if.end.33

if.then.27:                                       ; preds = %if.end.24
  %46 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %47 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %48 = bitcast %struct.gx_device_s* %47 to %struct.gx_device_bjc600_s*
  %bjc_p28 = getelementptr inbounds %struct.gx_device_bjc600_s, %struct.gx_device_bjc600_s* %48, i32 0, i32 73
  %monochromePrint = getelementptr inbounds %struct.bjc600_params, %struct.bjc600_params* %bjc_p28, i32 0, i32 8
  %call29 = call i32 @param_write_bool(%struct.gs_param_list_s* %46, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.34, i32 0, i32 0), i32* %monochromePrint) #5
  store i32 %call29, i32* %ncode, align 4, !tbaa !5
  %cmp30 = icmp slt i32 %call29, 0
  br i1 %cmp30, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %if.then.27
  %49 = load i32, i32* %ncode, align 4, !tbaa !5
  store i32 %49, i32* %code, align 4, !tbaa !5
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.31, %if.then.27
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32, %if.end.24
  %50 = bitcast float* %version to i8*
  call void @llvm.lifetime.start(i64 4, i8* %50) #2
  %51 = bitcast %struct.gs_param_string_s* %versionString to i8*
  call void @llvm.lifetime.start(i64 16, i8* %51) #2
  %52 = bitcast i32* %bTrue to i8*
  call void @llvm.lifetime.start(i64 4, i8* %52) #2
  store i32 1, i32* %bTrue, align 4, !tbaa !5
  %53 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %54 = bitcast %struct.gx_device_s* %53 to %struct.gx_device_bjc800_s*
  %ptype34 = getelementptr inbounds %struct.gx_device_bjc800_s, %struct.gx_device_bjc800_s* %54, i32 0, i32 71
  %55 = load i32, i32* %ptype34, align 4, !tbaa !7
  %cmp35 = icmp eq i32 %55, 11
  %cond36 = select i1 %cmp35, double 2.170000e+00, double 2.170000e+00
  %conv = fptrunc double %cond36 to float
  store float %conv, float* %version, align 4, !tbaa !36
  %56 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %57 = bitcast %struct.gx_device_s* %56 to %struct.gx_device_bjc800_s*
  %ptype37 = getelementptr inbounds %struct.gx_device_bjc800_s, %struct.gx_device_bjc800_s* %57, i32 0, i32 71
  %58 = load i32, i32* %ptype37, align 4, !tbaa !7
  %cmp38 = icmp eq i32 %58, 11
  %cond40 = select i1 %cmp38, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.35, i32 0, i32 0)
  %data = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %versionString, i32 0, i32 0
  store i8* %cond40, i8** %data, align 8, !tbaa !69
  %data41 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %versionString, i32 0, i32 0
  %59 = load i8*, i8** %data41, align 8, !tbaa !69
  %call42 = call i64 @strlen(i8* %59) #6
  %conv43 = trunc i64 %call42 to i32
  %size = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %versionString, i32 0, i32 1
  store i32 %conv43, i32* %size, align 4, !tbaa !71
  %persistent = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %versionString, i32 0, i32 2
  store i32 1, i32* %persistent, align 4, !tbaa !72
  %60 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call44 = call i32 @param_write_float(%struct.gs_param_list_s* %60, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.36, i32 0, i32 0), float* %version) #5
  store i32 %call44, i32* %ncode, align 4, !tbaa !5
  %cmp45 = icmp slt i32 %call44, 0
  br i1 %cmp45, label %if.then.47, label %if.end.48

if.then.47:                                       ; preds = %if.end.33
  %61 = load i32, i32* %ncode, align 4, !tbaa !5
  store i32 %61, i32* %code, align 4, !tbaa !5
  br label %if.end.48

if.end.48:                                        ; preds = %if.then.47, %if.end.33
  %62 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call49 = call i32 @param_write_string(%struct.gs_param_list_s* %62, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.37, i32 0, i32 0), %struct.gs_param_string_s* %versionString) #5
  store i32 %call49, i32* %ncode, align 4, !tbaa !5
  %cmp50 = icmp slt i32 %call49, 0
  br i1 %cmp50, label %if.then.52, label %if.end.53

if.then.52:                                       ; preds = %if.end.48
  %63 = load i32, i32* %ncode, align 4, !tbaa !5
  store i32 %63, i32* %code, align 4, !tbaa !5
  br label %if.end.53

if.end.53:                                        ; preds = %if.then.52, %if.end.48
  %64 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call54 = call i32 @param_write_bool(%struct.gs_param_list_s* %64, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.38, i32 0, i32 0), i32* %bTrue) #5
  store i32 %call54, i32* %ncode, align 4, !tbaa !5
  %cmp55 = icmp slt i32 %call54, 0
  br i1 %cmp55, label %if.then.57, label %if.end.58

if.then.57:                                       ; preds = %if.end.53
  %65 = load i32, i32* %ncode, align 4, !tbaa !5
  store i32 %65, i32* %code, align 4, !tbaa !5
  br label %if.end.58

if.end.58:                                        ; preds = %if.then.57, %if.end.53
  %66 = bitcast i32* %bTrue to i8*
  call void @llvm.lifetime.end(i64 4, i8* %66) #2
  %67 = bitcast %struct.gs_param_string_s* %versionString to i8*
  call void @llvm.lifetime.end(i64 16, i8* %67) #2
  %68 = bitcast float* %version to i8*
  call void @llvm.lifetime.end(i64 4, i8* %68) #2
  %69 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %69, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.58, %if.then
  %70 = bitcast %struct.gs_param_string_s* %dithering to i8*
  call void @llvm.lifetime.end(i64 16, i8* %70) #2
  %71 = bitcast %struct.gs_param_string_s* %pquality to i8*
  call void @llvm.lifetime.end(i64 16, i8* %71) #2
  %72 = bitcast %struct.gs_param_string_s* %pmedia to i8*
  call void @llvm.lifetime.end(i64 16, i8* %72) #2
  %73 = bitcast i32* %ncode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %73) #2
  %74 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %74) #2
  %75 = load i32, i32* %retval
  ret i32 %75
}

; Function Attrs: nounwind uwtable
define internal i32 @bjc_put_params(%struct.gx_device_s* %pdev, %struct.gs_param_list_s* %plist) #1 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_s*, align 8
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %bpp = alloca i32, align 4
  %ccomps = alloca i32, align 4
  %code = alloca i32, align 4
  %ncode = alloca i32, align 4
  %aBool = alloca i32, align 4
  %oname = alloca i8*, align 8
  %new600Params = alloca %struct.bjc600_params, align 4
  %new800Params = alloca %struct.bjc_params, align 4
  %params = alloca %struct.bjc_params*, align 8
  %pprocesscolors = alloca %struct.gs_param_string_s, align 8
  %pmedia = alloca %struct.gs_param_string_s, align 8
  %pquality = alloca %struct.gs_param_string_s, align 8
  %dithering = alloca %struct.gs_param_string_s, align 8
  %hwra = alloca %struct.gs_param_float_array_s, align 8
  %params600 = alloca %struct.bjc600_params*, align 8
  %n = alloca i32, align 4
  %res = alloca float, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %pdev, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %0 = bitcast i32* %bpp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  store i32 0, i32* %bpp, align 4, !tbaa !5
  %1 = bitcast i32* %ccomps to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  store i32 0, i32* %ccomps, align 4, !tbaa !5
  %2 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  store i32 0, i32* %code, align 4, !tbaa !5
  %3 = bitcast i32* %ncode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = bitcast i32* %aBool to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  store i32 1, i32* %aBool, align 4, !tbaa !5
  %5 = bitcast i8** %oname to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #2
  store i8* null, i8** %oname, align 8, !tbaa !1
  %6 = bitcast %struct.bjc600_params* %new600Params to i8*
  call void @llvm.lifetime.start(i64 36, i8* %6) #2
  %7 = bitcast %struct.bjc_params* %new800Params to i8*
  call void @llvm.lifetime.start(i64 32, i8* %7) #2
  %8 = bitcast %struct.bjc_params** %params to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #2
  %9 = bitcast %struct.gs_param_string_s* %pprocesscolors to i8*
  call void @llvm.lifetime.start(i64 16, i8* %9) #2
  %10 = bitcast %struct.gs_param_string_s* %pmedia to i8*
  call void @llvm.lifetime.start(i64 16, i8* %10) #2
  %11 = bitcast %struct.gs_param_string_s* %pquality to i8*
  call void @llvm.lifetime.start(i64 16, i8* %11) #2
  %12 = bitcast %struct.gs_param_string_s* %dithering to i8*
  call void @llvm.lifetime.start(i64 16, i8* %12) #2
  %13 = bitcast %struct.gs_param_float_array_s* %hwra to i8*
  call void @llvm.lifetime.start(i64 16, i8* %13) #2
  %14 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %15 = bitcast %struct.gx_device_s* %14 to %struct.gx_device_bjc800_s*
  %ptype = getelementptr inbounds %struct.gx_device_bjc800_s, %struct.gx_device_bjc800_s* %15, i32 0, i32 71
  %16 = load i32, i32* %ptype, align 4, !tbaa !7
  %cmp = icmp ne i32 %16, 11
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %17 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %18 = bitcast %struct.gx_device_s* %17 to %struct.gx_device_bjc600_s*
  %bjc_p = getelementptr inbounds %struct.gx_device_bjc600_s, %struct.gx_device_bjc600_s* %18, i32 0, i32 73
  %19 = bitcast %struct.bjc600_params* %new600Params to i8*
  %20 = bitcast %struct.bjc600_params* %bjc_p to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %19, i8* %20, i64 36, i32 4, i1 false), !tbaa.struct !73
  %21 = bitcast %struct.bjc600_params* %new600Params to %struct.bjc_params*
  store %struct.bjc_params* %21, %struct.bjc_params** %params, align 8, !tbaa !1
  br label %if.end

if.else:                                          ; preds = %entry
  %22 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %23 = bitcast %struct.gx_device_s* %22 to %struct.gx_device_bjc800_s*
  %bjc_p1 = getelementptr inbounds %struct.gx_device_bjc800_s, %struct.gx_device_bjc800_s* %23, i32 0, i32 73
  %24 = bitcast %struct.bjc_params* %new800Params to i8*
  %25 = bitcast %struct.bjc_params* %bjc_p1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %24, i8* %25, i64 32, i32 4, i1 false), !tbaa.struct !74
  store %struct.bjc_params* %new800Params, %struct.bjc_params** %params, align 8, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %26 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %27 = load i32, i32* %code, align 4, !tbaa !5
  %call = call i32 @cdj_put_param_int(%struct.gs_param_list_s* %26, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.25, i32 0, i32 0), i32* %bpp, i32 1, i32 32, i32 %27) #5
  store i32 %call, i32* %code, align 4, !tbaa !5
  %cmp2 = icmp ne i32 %call, 1
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  %28 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %28, i32 0, i32 11
  %depth = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 3
  %29 = load i16, i16* %depth, align 2, !tbaa !29
  %conv = zext i16 %29 to i32
  store i32 %conv, i32* %bpp, align 4, !tbaa !5
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.3, %if.end
  %30 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %31 = load i32, i32* %code, align 4, !tbaa !5
  %call5 = call i32 @put_param_string(%struct.gs_param_list_s* %30, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.26, i32 0, i32 0), %struct.gs_param_string_s* %pprocesscolors, %struct.stringParamDescription* getelementptr inbounds ([4 x %struct.stringParamDescription], [4 x %struct.stringParamDescription]* @bjc_processColorsStrings, i32 0, i32 0), i32* %ccomps, i32 %31) #5
  store i32 %call5, i32* %code, align 4, !tbaa !5
  %cmp6 = icmp ne i32 %call5, 1
  br i1 %cmp6, label %if.then.8, label %if.end.10

if.then.8:                                        ; preds = %if.end.4
  %32 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %color_info9 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %32, i32 0, i32 11
  %num_components = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info9, i32 0, i32 1
  %33 = load i32, i32* %num_components, align 4, !tbaa !31
  store i32 %33, i32* %ccomps, align 4, !tbaa !5
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.8, %if.end.4
  %34 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.29, i32 0, i32 0), i8** %oname, align 8, !tbaa !1
  %35 = load %struct.bjc_params*, %struct.bjc_params** %params, align 8, !tbaa !1
  %manualFeed = getelementptr inbounds %struct.bjc_params, %struct.bjc_params* %35, i32 0, i32 0
  %call11 = call i32 @param_read_bool(%struct.gs_param_list_s* %34, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.29, i32 0, i32 0), i32* %manualFeed) #5
  store i32 %call11, i32* %ncode, align 4, !tbaa !5
  %cmp12 = icmp slt i32 %call11, 0
  br i1 %cmp12, label %if.then.14, label %if.end.16

if.then.14:                                       ; preds = %if.end.10
  %36 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %36, i32 0, i32 0
  %37 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs, align 8, !tbaa !56
  %signal_error = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %37, i32 0, i32 7
  %38 = load i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*, i8*, i32)** %signal_error, align 8, !tbaa !58
  %39 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %40 = load i8*, i8** %oname, align 8, !tbaa !1
  %41 = load i32, i32* %ncode, align 4, !tbaa !5
  store i32 %41, i32* %code, align 4, !tbaa !5
  %call15 = call i32 %38(%struct.gs_param_list_s* %39, i8* %40, i32 %41) #5
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.14, %if.end.10
  %42 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %43 = load %struct.bjc_params*, %struct.bjc_params** %params, align 8, !tbaa !1
  %mediaType = getelementptr inbounds %struct.bjc_params, %struct.bjc_params* %43, i32 0, i32 1
  %44 = load i32, i32* %code, align 4, !tbaa !5
  %call17 = call i32 @put_param_string(%struct.gs_param_list_s* %42, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.30, i32 0, i32 0), %struct.gs_param_string_s* %pmedia, %struct.stringParamDescription* getelementptr inbounds ([7 x %struct.stringParamDescription], [7 x %struct.stringParamDescription]* @bjc_mediaTypeStrings, i32 0, i32 0), i32* %mediaType, i32 %44) #5
  store i32 %call17, i32* %code, align 4, !tbaa !5
  %45 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %46 = load %struct.bjc_params*, %struct.bjc_params** %params, align 8, !tbaa !1
  %printColors = getelementptr inbounds %struct.bjc_params, %struct.bjc_params* %46, i32 0, i32 7
  %47 = load i32, i32* %code, align 4, !tbaa !5
  %call18 = call i32 @cdj_put_param_int(%struct.gs_param_list_s* %45, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.32, i32 0, i32 0), i32* %printColors, i32 0, i32 15, i32 %47) #5
  store i32 %call18, i32* %code, align 4, !tbaa !5
  %48 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %49 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %50 = bitcast %struct.gx_device_s* %49 to %struct.gx_device_bjc800_s*
  %ptype19 = getelementptr inbounds %struct.gx_device_bjc800_s, %struct.gx_device_bjc800_s* %50, i32 0, i32 71
  %51 = load i32, i32* %ptype19, align 4, !tbaa !7
  %cmp20 = icmp eq i32 %51, 11
  %cond = select i1 %cmp20, %struct.stringParamDescription* getelementptr inbounds ([5 x %struct.stringParamDescription], [5 x %struct.stringParamDescription]* @bjc800_printQualityStrings, i32 0, i32 0), %struct.stringParamDescription* getelementptr inbounds ([4 x %struct.stringParamDescription], [4 x %struct.stringParamDescription]* @bjc600_printQualityStrings, i32 0, i32 0)
  %52 = load %struct.bjc_params*, %struct.bjc_params** %params, align 8, !tbaa !1
  %printQuality = getelementptr inbounds %struct.bjc_params, %struct.bjc_params* %52, i32 0, i32 4
  %53 = load i32, i32* %code, align 4, !tbaa !5
  %call22 = call i32 @put_param_string(%struct.gs_param_list_s* %48, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.27, i32 0, i32 0), %struct.gs_param_string_s* %pquality, %struct.stringParamDescription* %cond, i32* %printQuality, i32 %53) #5
  store i32 %call22, i32* %code, align 4, !tbaa !5
  %54 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %55 = load %struct.bjc_params*, %struct.bjc_params** %params, align 8, !tbaa !1
  %ditheringType = getelementptr inbounds %struct.bjc_params, %struct.bjc_params* %55, i32 0, i32 5
  %56 = load i32, i32* %code, align 4, !tbaa !5
  %call23 = call i32 @put_param_string(%struct.gs_param_list_s* %54, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.31, i32 0, i32 0), %struct.gs_param_string_s* %dithering, %struct.stringParamDescription* getelementptr inbounds ([3 x %struct.stringParamDescription], [3 x %struct.stringParamDescription]* @bjc_ditheringTypeStrings, i32 0, i32 0), i32* %ditheringType, i32 %56) #5
  store i32 %call23, i32* %code, align 4, !tbaa !5
  %57 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.33, i32 0, i32 0), i8** %oname, align 8, !tbaa !1
  %58 = load %struct.bjc_params*, %struct.bjc_params** %params, align 8, !tbaa !1
  %mediaWeight = getelementptr inbounds %struct.bjc_params, %struct.bjc_params* %58, i32 0, i32 3
  %call24 = call i32 @param_read_int(%struct.gs_param_list_s* %57, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.33, i32 0, i32 0), i32* %mediaWeight) #5
  store i32 %call24, i32* %ncode, align 4, !tbaa !5
  switch i32 %call24, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.epilog
  ]

sw.bb:                                            ; preds = %if.end.16
  %59 = load %struct.bjc_params*, %struct.bjc_params** %params, align 8, !tbaa !1
  %mediaWeight25 = getelementptr inbounds %struct.bjc_params, %struct.bjc_params* %59, i32 0, i32 3
  %60 = load i32, i32* %mediaWeight25, align 4, !tbaa !75
  %cmp26 = icmp sle i32 %60, 0
  br i1 %cmp26, label %if.then.28, label %if.else.29

if.then.28:                                       ; preds = %sw.bb
  store i32 -15, i32* %ncode, align 4, !tbaa !5
  br label %if.end.30

if.else.29:                                       ; preds = %sw.bb
  %61 = load %struct.bjc_params*, %struct.bjc_params** %params, align 8, !tbaa !1
  %mediaWeight_isSet = getelementptr inbounds %struct.bjc_params, %struct.bjc_params* %61, i32 0, i32 2
  store i32 1, i32* %mediaWeight_isSet, align 4, !tbaa !76
  br label %sw.epilog

if.end.30:                                        ; preds = %if.then.28
  br label %mwe

sw.default:                                       ; preds = %if.end.16
  %62 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %63 = load i8*, i8** %oname, align 8, !tbaa !1
  %call31 = call i32 @param_read_null(%struct.gs_param_list_s* %62, i8* %63) #5
  store i32 %call31, i32* %ncode, align 4, !tbaa !5
  %cmp32 = icmp eq i32 %call31, 0
  br i1 %cmp32, label %if.then.34, label %if.end.36

if.then.34:                                       ; preds = %sw.default
  %64 = load %struct.bjc_params*, %struct.bjc_params** %params, align 8, !tbaa !1
  %mediaWeight_isSet35 = getelementptr inbounds %struct.bjc_params, %struct.bjc_params* %64, i32 0, i32 2
  store i32 0, i32* %mediaWeight_isSet35, align 4, !tbaa !76
  br label %sw.epilog

if.end.36:                                        ; preds = %sw.default
  br label %mwe

mwe:                                              ; preds = %if.end.36, %if.end.30
  %65 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs37 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %65, i32 0, i32 0
  %66 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs37, align 8, !tbaa !56
  %signal_error38 = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %66, i32 0, i32 7
  %67 = load i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*, i8*, i32)** %signal_error38, align 8, !tbaa !58
  %68 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %69 = load i8*, i8** %oname, align 8, !tbaa !1
  %70 = load i32, i32* %ncode, align 4, !tbaa !5
  store i32 %70, i32* %code, align 4, !tbaa !5
  %call39 = call i32 %67(%struct.gs_param_list_s* %68, i8* %69, i32 %70) #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %mwe, %if.end.16, %if.then.34, %if.else.29
  %71 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %72 = bitcast %struct.gx_device_s* %71 to %struct.gx_device_bjc800_s*
  %ptype40 = getelementptr inbounds %struct.gx_device_bjc800_s, %struct.gx_device_bjc800_s* %72, i32 0, i32 71
  %73 = load i32, i32* %ptype40, align 4, !tbaa !7
  %cmp41 = icmp ne i32 %73, 11
  br i1 %cmp41, label %if.then.43, label %if.end.52

if.then.43:                                       ; preds = %sw.epilog
  %74 = bitcast %struct.bjc600_params** %params600 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %74) #2
  %75 = load %struct.bjc_params*, %struct.bjc_params** %params, align 8, !tbaa !1
  %76 = bitcast %struct.bjc_params* %75 to %struct.bjc600_params*
  store %struct.bjc600_params* %76, %struct.bjc600_params** %params600, align 8, !tbaa !1
  %77 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.34, i32 0, i32 0), i8** %oname, align 8, !tbaa !1
  %78 = load %struct.bjc600_params*, %struct.bjc600_params** %params600, align 8, !tbaa !1
  %monochromePrint = getelementptr inbounds %struct.bjc600_params, %struct.bjc600_params* %78, i32 0, i32 8
  %call44 = call i32 @param_read_bool(%struct.gs_param_list_s* %77, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.34, i32 0, i32 0), i32* %monochromePrint) #5
  store i32 %call44, i32* %ncode, align 4, !tbaa !5
  %cmp45 = icmp slt i32 %call44, 0
  br i1 %cmp45, label %if.then.47, label %if.end.51

if.then.47:                                       ; preds = %if.then.43
  %79 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs48 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %79, i32 0, i32 0
  %80 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs48, align 8, !tbaa !56
  %signal_error49 = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %80, i32 0, i32 7
  %81 = load i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*, i8*, i32)** %signal_error49, align 8, !tbaa !58
  %82 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %83 = load i8*, i8** %oname, align 8, !tbaa !1
  %84 = load i32, i32* %ncode, align 4, !tbaa !5
  store i32 %84, i32* %code, align 4, !tbaa !5
  %call50 = call i32 %81(%struct.gs_param_list_s* %82, i8* %83, i32 %84) #5
  br label %if.end.51

if.end.51:                                        ; preds = %if.then.47, %if.then.43
  %85 = bitcast %struct.bjc600_params** %params600 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %85) #2
  br label %if.end.52

if.end.52:                                        ; preds = %if.end.51, %sw.epilog
  %86 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %87 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %88 = bitcast %struct.gx_device_s* %87 to %struct.gx_device_bjc800_s*
  %ptype53 = getelementptr inbounds %struct.gx_device_bjc800_s, %struct.gx_device_bjc800_s* %88, i32 0, i32 71
  %89 = load i32, i32* %ptype53, align 4, !tbaa !7
  %cmp54 = icmp eq i32 %89, 11
  %cond56 = select i1 %cmp54, double 2.170000e+00, double 2.170000e+00
  %call57 = call i32 @cdj_param_check_float(%struct.gs_param_list_s* %86, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.36, i32 0, i32 0), double %cond56, i32 1) #5
  store i32 %call57, i32* %ncode, align 4, !tbaa !5
  %cmp58 = icmp slt i32 %call57, 0
  br i1 %cmp58, label %if.then.60, label %if.end.61

if.then.60:                                       ; preds = %if.end.52
  %90 = load i32, i32* %ncode, align 4, !tbaa !5
  store i32 %90, i32* %code, align 4, !tbaa !5
  br label %if.end.61

if.end.61:                                        ; preds = %if.then.60, %if.end.52
  %91 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %92 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %93 = bitcast %struct.gx_device_s* %92 to %struct.gx_device_bjc800_s*
  %ptype62 = getelementptr inbounds %struct.gx_device_bjc800_s, %struct.gx_device_bjc800_s* %93, i32 0, i32 71
  %94 = load i32, i32* %ptype62, align 4, !tbaa !7
  %cmp63 = icmp eq i32 %94, 11
  %cond65 = select i1 %cmp63, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.35, i32 0, i32 0)
  %95 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %96 = bitcast %struct.gx_device_s* %95 to %struct.gx_device_bjc800_s*
  %ptype66 = getelementptr inbounds %struct.gx_device_bjc800_s, %struct.gx_device_bjc800_s* %96, i32 0, i32 71
  %97 = load i32, i32* %ptype66, align 4, !tbaa !7
  %cmp67 = icmp eq i32 %97, 11
  %cond69 = select i1 %cmp67, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.35, i32 0, i32 0)
  %call70 = call i64 @strlen(i8* %cond69) #6
  %conv71 = trunc i64 %call70 to i32
  %call72 = call i32 @cdj_param_check_bytes(%struct.gs_param_list_s* %91, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.37, i32 0, i32 0), i8* %cond65, i32 %conv71, i32 1) #5
  store i32 %call72, i32* %ncode, align 4, !tbaa !5
  %cmp73 = icmp slt i32 %call72, 0
  br i1 %cmp73, label %if.then.75, label %if.end.76

if.then.75:                                       ; preds = %if.end.61
  %98 = load i32, i32* %ncode, align 4, !tbaa !5
  store i32 %98, i32* %code, align 4, !tbaa !5
  br label %if.end.76

if.end.76:                                        ; preds = %if.then.75, %if.end.61
  %99 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.38, i32 0, i32 0), i8** %oname, align 8, !tbaa !1
  %call77 = call i32 @param_read_bool(%struct.gs_param_list_s* %99, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.38, i32 0, i32 0), i32* %aBool) #5
  store i32 %call77, i32* %ncode, align 4, !tbaa !5
  %cmp78 = icmp slt i32 %call77, 0
  br i1 %cmp78, label %if.then.80, label %if.else.84

if.then.80:                                       ; preds = %if.end.76
  %100 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs81 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %100, i32 0, i32 0
  %101 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs81, align 8, !tbaa !56
  %signal_error82 = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %101, i32 0, i32 7
  %102 = load i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*, i8*, i32)** %signal_error82, align 8, !tbaa !58
  %103 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %104 = load i8*, i8** %oname, align 8, !tbaa !1
  %105 = load i32, i32* %ncode, align 4, !tbaa !5
  store i32 %105, i32* %code, align 4, !tbaa !5
  %call83 = call i32 %102(%struct.gs_param_list_s* %103, i8* %104, i32 %105) #5
  br label %if.end.92

if.else.84:                                       ; preds = %if.end.76
  %106 = load i32, i32* %aBool, align 4, !tbaa !5
  %cmp85 = icmp ne i32 %106, 1
  br i1 %cmp85, label %if.then.87, label %if.end.91

if.then.87:                                       ; preds = %if.else.84
  %107 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs88 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %107, i32 0, i32 0
  %108 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs88, align 8, !tbaa !56
  %signal_error89 = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %108, i32 0, i32 7
  %109 = load i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*, i8*, i32)** %signal_error89, align 8, !tbaa !58
  %110 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %111 = load i8*, i8** %oname, align 8, !tbaa !1
  store i32 -15, i32* %ncode, align 4, !tbaa !5
  store i32 -15, i32* %code, align 4, !tbaa !5
  %call90 = call i32 %109(%struct.gs_param_list_s* %110, i8* %111, i32 -15) #5
  br label %if.end.91

if.end.91:                                        ; preds = %if.then.87, %if.else.84
  br label %if.end.92

if.end.92:                                        ; preds = %if.end.91, %if.then.80
  %112 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.51, i32 0, i32 0), i8** %oname, align 8, !tbaa !1
  %call93 = call i32 @param_read_float_array(%struct.gs_param_list_s* %112, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.51, i32 0, i32 0), %struct.gs_param_float_array_s* %hwra) #5
  store i32 %call93, i32* %ncode, align 4, !tbaa !5
  switch i32 %call93, label %sw.default.142 [
    i32 0, label %sw.bb.94
    i32 1, label %sw.bb.146
  ]

sw.bb.94:                                         ; preds = %if.end.92
  %size = getelementptr inbounds %struct.gs_param_float_array_s, %struct.gs_param_float_array_s* %hwra, i32 0, i32 1
  %113 = load i32, i32* %size, align 4, !tbaa !77
  %cmp95 = icmp ne i32 %113, 2
  br i1 %cmp95, label %if.then.97, label %if.else.98

if.then.97:                                       ; preds = %sw.bb.94
  store i32 -15, i32* %code, align 4, !tbaa !5
  br label %if.end.141

if.else.98:                                       ; preds = %sw.bb.94
  %data = getelementptr inbounds %struct.gs_param_float_array_s, %struct.gs_param_float_array_s* %hwra, i32 0, i32 0
  %114 = load float*, float** %data, align 8, !tbaa !79
  %arrayidx = getelementptr inbounds float, float* %114, i64 0
  %115 = load float, float* %arrayidx, align 4, !tbaa !36
  %cmp99 = fcmp ole float %115, 0.000000e+00
  br i1 %cmp99, label %if.then.112, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else.98
  %data101 = getelementptr inbounds %struct.gs_param_float_array_s, %struct.gs_param_float_array_s* %hwra, i32 0, i32 0
  %116 = load float*, float** %data101, align 8, !tbaa !79
  %arrayidx102 = getelementptr inbounds float, float* %116, i64 1
  %117 = load float, float* %arrayidx102, align 4, !tbaa !36
  %cmp103 = fcmp ole float %117, 0.000000e+00
  br i1 %cmp103, label %if.then.112, label %lor.lhs.false.105

lor.lhs.false.105:                                ; preds = %lor.lhs.false
  %data106 = getelementptr inbounds %struct.gs_param_float_array_s, %struct.gs_param_float_array_s* %hwra, i32 0, i32 0
  %118 = load float*, float** %data106, align 8, !tbaa !79
  %arrayidx107 = getelementptr inbounds float, float* %118, i64 0
  %119 = load float, float* %arrayidx107, align 4, !tbaa !36
  %data108 = getelementptr inbounds %struct.gs_param_float_array_s, %struct.gs_param_float_array_s* %hwra, i32 0, i32 0
  %120 = load float*, float** %data108, align 8, !tbaa !79
  %arrayidx109 = getelementptr inbounds float, float* %120, i64 1
  %121 = load float, float* %arrayidx109, align 4, !tbaa !36
  %cmp110 = fcmp une float %119, %121
  br i1 %cmp110, label %if.then.112, label %if.else.113

if.then.112:                                      ; preds = %lor.lhs.false.105, %lor.lhs.false, %if.else.98
  store i32 -15, i32* %ncode, align 4, !tbaa !5
  br label %if.end.140

if.else.113:                                      ; preds = %lor.lhs.false.105
  %122 = bitcast i32* %n to i8*
  call void @llvm.lifetime.start(i64 4, i8* %122) #2
  store i32 0, i32* %n, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else.113
  %123 = load i32, i32* %n, align 4, !tbaa !5
  %conv114 = sext i32 %123 to i64
  %cmp115 = icmp ult i64 %conv114, 0
  br i1 %cmp115, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %124 = bitcast float* %res to i8*
  call void @llvm.lifetime.start(i64 4, i8* %124) #2
  %125 = load i32, i32* %n, align 4, !tbaa !5
  %shl = shl i32 1, %125
  %mul = mul nsw i32 90, %shl
  %conv117 = sitofp i32 %mul to float
  store float %conv117, float* %res, align 4, !tbaa !36
  %126 = load float, float* %res, align 4, !tbaa !36
  %data118 = getelementptr inbounds %struct.gs_param_float_array_s, %struct.gs_param_float_array_s* %hwra, i32 0, i32 0
  %127 = load float*, float** %data118, align 8, !tbaa !79
  %arrayidx119 = getelementptr inbounds float, float* %127, i64 0
  %128 = load float, float* %arrayidx119, align 4, !tbaa !36
  %cmp120 = fcmp oeq float %126, %128
  br i1 %cmp120, label %if.then.122, label %if.end.123

if.then.122:                                      ; preds = %for.body
  store i32 5, i32* %cleanup.dest.slot
  br label %cleanup

if.end.123:                                       ; preds = %for.body
  %129 = load float, float* %res, align 4, !tbaa !36
  %data124 = getelementptr inbounds %struct.gs_param_float_array_s, %struct.gs_param_float_array_s* %hwra, i32 0, i32 0
  %130 = load float*, float** %data124, align 8, !tbaa !79
  %arrayidx125 = getelementptr inbounds float, float* %130, i64 0
  %131 = load float, float* %arrayidx125, align 4, !tbaa !36
  %cmp126 = fcmp ogt float %129, %131
  br i1 %cmp126, label %if.then.128, label %if.end.129

if.then.128:                                      ; preds = %if.end.123
  store i32 -15, i32* %ncode, align 4, !tbaa !5
  br label %if.end.129

if.end.129:                                       ; preds = %if.then.128, %if.end.123
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.129, %if.then.122
  %132 = bitcast float* %res to i8*
  call void @llvm.lifetime.end(i64 4, i8* %132) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 5, label %for.end
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %133 = load i32, i32* %n, align 4, !tbaa !5
  %inc = add nsw i32 %133, 1
  store i32 %inc, i32* %n, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %cleanup, %for.cond
  %134 = load i32, i32* %n, align 4, !tbaa !5
  %conv130 = sext i32 %134 to i64
  %cmp131 = icmp eq i64 %conv130, 32
  br i1 %cmp131, label %if.then.133, label %if.end.134

if.then.133:                                      ; preds = %for.end
  store i32 -15, i32* %ncode, align 4, !tbaa !5
  br label %if.end.134

if.end.134:                                       ; preds = %if.then.133, %for.end
  %135 = bitcast i32* %n to i8*
  call void @llvm.lifetime.end(i64 4, i8* %135) #2
  %136 = load i32, i32* %ncode, align 4, !tbaa !5
  %cmp135 = icmp slt i32 %136, 0
  br i1 %cmp135, label %if.then.137, label %if.else.138

if.then.137:                                      ; preds = %if.end.134
  %137 = load i32, i32* %ncode, align 4, !tbaa !5
  store i32 %137, i32* %code, align 4, !tbaa !5
  br label %if.end.139

if.else.138:                                      ; preds = %if.end.134
  br label %sw.epilog.148

if.end.139:                                       ; preds = %if.then.137
  br label %if.end.140

if.end.140:                                       ; preds = %if.end.139, %if.then.112
  br label %if.end.141

if.end.141:                                       ; preds = %if.end.140, %if.then.97
  br label %hwre

sw.default.142:                                   ; preds = %if.end.92
  %138 = load i32, i32* %ncode, align 4, !tbaa !5
  store i32 %138, i32* %code, align 4, !tbaa !5
  br label %hwre

hwre:                                             ; preds = %sw.default.142, %if.end.141
  %139 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs143 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %139, i32 0, i32 0
  %140 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs143, align 8, !tbaa !56
  %signal_error144 = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %140, i32 0, i32 7
  %141 = load i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*, i8*, i32)** %signal_error144, align 8, !tbaa !58
  %142 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %143 = load i8*, i8** %oname, align 8, !tbaa !1
  %144 = load i32, i32* %code, align 4, !tbaa !5
  %call145 = call i32 %141(%struct.gs_param_list_s* %142, i8* %143, i32 %144) #5
  br label %sw.bb.146

sw.bb.146:                                        ; preds = %if.end.92, %hwre
  %data147 = getelementptr inbounds %struct.gs_param_float_array_s, %struct.gs_param_float_array_s* %hwra, i32 0, i32 0
  store float* null, float** %data147, align 8, !tbaa !79
  br label %sw.epilog.148

sw.epilog.148:                                    ; preds = %sw.bb.146, %if.else.138
  %145 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %146 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %147 = load i32, i32* %bpp, align 4, !tbaa !5
  %148 = load i32, i32* %bpp, align 4, !tbaa !5
  %149 = load i32, i32* %ccomps, align 4, !tbaa !5
  %call149 = call i32 @cdj_put_param_bpp(%struct.gx_device_s* %145, %struct.gs_param_list_s* %146, i32 %147, i32 %148, i32 %149) #5
  store i32 %call149, i32* %ncode, align 4, !tbaa !5
  %cmp150 = icmp slt i32 %call149, 0
  br i1 %cmp150, label %if.then.152, label %if.end.153

if.then.152:                                      ; preds = %sw.epilog.148
  %150 = load i32, i32* %ncode, align 4, !tbaa !5
  store i32 %150, i32* %code, align 4, !tbaa !5
  br label %if.end.153

if.end.153:                                       ; preds = %if.then.152, %sw.epilog.148
  %151 = load i32, i32* %code, align 4, !tbaa !5
  %cmp154 = icmp slt i32 %151, 0
  br i1 %cmp154, label %if.then.156, label %if.end.157

if.then.156:                                      ; preds = %if.end.153
  %152 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %152, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.171

if.end.157:                                       ; preds = %if.end.153
  %153 = load i32, i32* %bpp, align 4, !tbaa !5
  %cmp158 = icmp eq i32 %153, 1
  br i1 %cmp158, label %if.then.160, label %if.end.162

if.then.160:                                      ; preds = %if.end.157
  %154 = load %struct.bjc_params*, %struct.bjc_params** %params, align 8, !tbaa !1
  %ditheringType161 = getelementptr inbounds %struct.bjc_params, %struct.bjc_params* %154, i32 0, i32 5
  store i32 0, i32* %ditheringType161, align 4, !tbaa !80
  br label %if.end.162

if.end.162:                                       ; preds = %if.then.160, %if.end.157
  %155 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %156 = bitcast %struct.gx_device_s* %155 to %struct.gx_device_bjc800_s*
  %ptype163 = getelementptr inbounds %struct.gx_device_bjc800_s, %struct.gx_device_bjc800_s* %156, i32 0, i32 71
  %157 = load i32, i32* %ptype163, align 4, !tbaa !7
  %cmp164 = icmp ne i32 %157, 11
  br i1 %cmp164, label %if.then.166, label %if.else.168

if.then.166:                                      ; preds = %if.end.162
  %158 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %159 = bitcast %struct.gx_device_s* %158 to %struct.gx_device_bjc600_s*
  %bjc_p167 = getelementptr inbounds %struct.gx_device_bjc600_s, %struct.gx_device_bjc600_s* %159, i32 0, i32 73
  %160 = bitcast %struct.bjc600_params* %bjc_p167 to i8*
  %161 = bitcast %struct.bjc600_params* %new600Params to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %160, i8* %161, i64 36, i32 4, i1 false), !tbaa.struct !73
  br label %if.end.170

if.else.168:                                      ; preds = %if.end.162
  %162 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %163 = bitcast %struct.gx_device_s* %162 to %struct.gx_device_bjc800_s*
  %bjc_p169 = getelementptr inbounds %struct.gx_device_bjc800_s, %struct.gx_device_bjc800_s* %163, i32 0, i32 73
  %164 = bitcast %struct.bjc_params* %bjc_p169 to i8*
  %165 = bitcast %struct.bjc_params* %new800Params to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %164, i8* %165, i64 32, i32 4, i1 false), !tbaa.struct !74
  br label %if.end.170

if.end.170:                                       ; preds = %if.else.168, %if.then.166
  %166 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %166, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.171

cleanup.171:                                      ; preds = %if.end.170, %if.then.156
  %167 = bitcast %struct.gs_param_float_array_s* %hwra to i8*
  call void @llvm.lifetime.end(i64 16, i8* %167) #2
  %168 = bitcast %struct.gs_param_string_s* %dithering to i8*
  call void @llvm.lifetime.end(i64 16, i8* %168) #2
  %169 = bitcast %struct.gs_param_string_s* %pquality to i8*
  call void @llvm.lifetime.end(i64 16, i8* %169) #2
  %170 = bitcast %struct.gs_param_string_s* %pmedia to i8*
  call void @llvm.lifetime.end(i64 16, i8* %170) #2
  %171 = bitcast %struct.gs_param_string_s* %pprocesscolors to i8*
  call void @llvm.lifetime.end(i64 16, i8* %171) #2
  %172 = bitcast %struct.bjc_params** %params to i8*
  call void @llvm.lifetime.end(i64 8, i8* %172) #2
  %173 = bitcast %struct.bjc_params* %new800Params to i8*
  call void @llvm.lifetime.end(i64 32, i8* %173) #2
  %174 = bitcast %struct.bjc600_params* %new600Params to i8*
  call void @llvm.lifetime.end(i64 36, i8* %174) #2
  %175 = bitcast i8** %oname to i8*
  call void @llvm.lifetime.end(i64 8, i8* %175) #2
  %176 = bitcast i32* %aBool to i8*
  call void @llvm.lifetime.end(i64 4, i8* %176) #2
  %177 = bitcast i32* %ncode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %177) #2
  %178 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %178) #2
  %179 = bitcast i32* %ccomps to i8*
  call void @llvm.lifetime.end(i64 4, i8* %179) #2
  %180 = bitcast i32* %bpp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %180) #2
  %181 = load i32, i32* %retval
  ret i32 %181

unreachable:                                      ; preds = %cleanup
  unreachable
}

declare i32 @param_write_bool(%struct.gs_param_list_s*, i8*, i32*) #0

; Function Attrs: nounwind uwtable
define internal i32 @get_param_string(%struct.gs_param_list_s* %plist, i8* %pname, %struct.gs_param_string_s* %pstring, %struct.stringParamDescription* %params, i32 %pvalue, i32 %persist, i32 %code) #1 {
entry:
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %pname.addr = alloca i8*, align 8
  %pstring.addr = alloca %struct.gs_param_string_s*, align 8
  %params.addr = alloca %struct.stringParamDescription*, align 8
  %pvalue.addr = alloca i32, align 4
  %persist.addr = alloca i32, align 4
  %code.addr = alloca i32, align 4
  %ncode = alloca i32, align 4
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* %pname, i8** %pname.addr, align 8, !tbaa !1
  store %struct.gs_param_string_s* %pstring, %struct.gs_param_string_s** %pstring.addr, align 8, !tbaa !1
  store %struct.stringParamDescription* %params, %struct.stringParamDescription** %params.addr, align 8, !tbaa !1
  store i32 %pvalue, i32* %pvalue.addr, align 4, !tbaa !5
  store i32 %persist, i32* %persist.addr, align 4, !tbaa !5
  store i32 %code, i32* %code.addr, align 4, !tbaa !5
  %0 = bitcast i32* %ncode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.stringParamDescription*, %struct.stringParamDescription** %params.addr, align 8, !tbaa !1
  %2 = load i32, i32* %pvalue.addr, align 4, !tbaa !5
  %call = call i8* @paramValueToString(%struct.stringParamDescription* %1, i32 %2) #5
  %3 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pstring.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %3, i32 0, i32 0
  store i8* %call, i8** %data, align 8, !tbaa !69
  %4 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pstring.addr, align 8, !tbaa !1
  %data1 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %4, i32 0, i32 0
  %5 = load i8*, i8** %data1, align 8, !tbaa !69
  %cmp = icmp eq i8* %5, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %6 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %6, i32 0, i32 0
  %7 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs, align 8, !tbaa !56
  %signal_error = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %7, i32 0, i32 7
  %8 = load i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*, i8*, i32)** %signal_error, align 8, !tbaa !58
  %9 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %10 = load i8*, i8** %pname.addr, align 8, !tbaa !1
  store i32 -1, i32* %ncode, align 4, !tbaa !5
  %call2 = call i32 %8(%struct.gs_param_list_s* %9, i8* %10, i32 -1) #5
  br label %if.end

if.else:                                          ; preds = %entry
  %11 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pstring.addr, align 8, !tbaa !1
  %data3 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %11, i32 0, i32 0
  %12 = load i8*, i8** %data3, align 8, !tbaa !69
  %call4 = call i64 @strlen(i8* %12) #6
  %conv = trunc i64 %call4 to i32
  %13 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pstring.addr, align 8, !tbaa !1
  %size = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %13, i32 0, i32 1
  store i32 %conv, i32* %size, align 4, !tbaa !71
  %14 = load i32, i32* %persist.addr, align 4, !tbaa !5
  %15 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pstring.addr, align 8, !tbaa !1
  %persistent = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %15, i32 0, i32 2
  store i32 %14, i32* %persistent, align 4, !tbaa !72
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %16 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %17 = load i8*, i8** %pname.addr, align 8, !tbaa !1
  %18 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pstring.addr, align 8, !tbaa !1
  %call5 = call i32 @param_write_string(%struct.gs_param_list_s* %16, i8* %17, %struct.gs_param_string_s* %18) #5
  store i32 %call5, i32* %ncode, align 4, !tbaa !5
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end
  %19 = load i32, i32* %ncode, align 4, !tbaa !5
  store i32 %19, i32* %code.addr, align 4, !tbaa !5
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.8, %if.end
  %20 = load i32, i32* %code.addr, align 4, !tbaa !5
  %21 = bitcast i32* %ncode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %21) #2
  ret i32 %20
}

declare i32 @param_write_null(%struct.gs_param_list_s*, i8*) #0

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

declare i32 @param_write_float(%struct.gs_param_list_s*, i8*, float*) #0

declare i32 @param_write_string(%struct.gs_param_list_s*, i8*, %struct.gs_param_string_s*) #0

; Function Attrs: nounwind uwtable
define internal i8* @paramValueToString(%struct.stringParamDescription* %params, i32 %value) #1 {
entry:
  %retval = alloca i8*, align 8
  %params.addr = alloca %struct.stringParamDescription*, align 8
  %value.addr = alloca i32, align 4
  store %struct.stringParamDescription* %params, %struct.stringParamDescription** %params.addr, align 8, !tbaa !1
  store i32 %value, i32* %value.addr, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load %struct.stringParamDescription*, %struct.stringParamDescription** %params.addr, align 8, !tbaa !1
  %p_name = getelementptr inbounds %struct.stringParamDescription, %struct.stringParamDescription* %0, i32 0, i32 0
  %1 = load i8*, i8** %p_name, align 8, !tbaa !81
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct.stringParamDescription*, %struct.stringParamDescription** %params.addr, align 8, !tbaa !1
  %p_value = getelementptr inbounds %struct.stringParamDescription, %struct.stringParamDescription* %2, i32 0, i32 1
  %3 = load i32, i32* %p_value, align 4, !tbaa !83
  %4 = load i32, i32* %value.addr, align 4, !tbaa !5
  %cmp = icmp eq i32 %3, %4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %5 = load %struct.stringParamDescription*, %struct.stringParamDescription** %params.addr, align 8, !tbaa !1
  %p_name1 = getelementptr inbounds %struct.stringParamDescription, %struct.stringParamDescription* %5, i32 0, i32 0
  %6 = load i8*, i8** %p_name1, align 8, !tbaa !81
  store i8* %6, i8** %retval
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %7 = load %struct.stringParamDescription*, %struct.stringParamDescription** %params.addr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds %struct.stringParamDescription, %struct.stringParamDescription* %7, i32 1
  store %struct.stringParamDescription* %incdec.ptr, %struct.stringParamDescription** %params.addr, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i8* null, i8** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %8 = load i8*, i8** %retval
  ret i8* %8
}

; Function Attrs: nounwind uwtable
define internal i32 @put_param_string(%struct.gs_param_list_s* %plist, i8* %pname, %struct.gs_param_string_s* %pstring, %struct.stringParamDescription* %params, i32* %pvalue, i32 %code) #1 {
entry:
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %pname.addr = alloca i8*, align 8
  %pstring.addr = alloca %struct.gs_param_string_s*, align 8
  %params.addr = alloca %struct.stringParamDescription*, align 8
  %pvalue.addr = alloca i32*, align 8
  %code.addr = alloca i32, align 4
  %ncode = alloca i32, align 4
  %value = alloca i32, align 4
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* %pname, i8** %pname.addr, align 8, !tbaa !1
  store %struct.gs_param_string_s* %pstring, %struct.gs_param_string_s** %pstring.addr, align 8, !tbaa !1
  store %struct.stringParamDescription* %params, %struct.stringParamDescription** %params.addr, align 8, !tbaa !1
  store i32* %pvalue, i32** %pvalue.addr, align 8, !tbaa !1
  store i32 %code, i32* %code.addr, align 4, !tbaa !5
  %0 = bitcast i32* %ncode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %2 = load i8*, i8** %pname.addr, align 8, !tbaa !1
  %3 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pstring.addr, align 8, !tbaa !1
  %call = call i32 @param_read_string(%struct.gs_param_list_s* %1, i8* %2, %struct.gs_param_string_s* %3) #5
  store i32 %call, i32* %ncode, align 4, !tbaa !5
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %4, i32 0, i32 0
  %5 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs, align 8, !tbaa !56
  %signal_error = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %5, i32 0, i32 7
  %6 = load i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*, i8*, i32)** %signal_error, align 8, !tbaa !58
  %7 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %8 = load i8*, i8** %pname.addr, align 8, !tbaa !1
  %9 = load i32, i32* %ncode, align 4, !tbaa !5
  store i32 %9, i32* %code.addr, align 4, !tbaa !5
  %call1 = call i32 %6(%struct.gs_param_list_s* %7, i8* %8, i32 %9) #5
  br label %if.end.15

if.else:                                          ; preds = %entry
  %10 = load i32, i32* %ncode, align 4, !tbaa !5
  %cmp2 = icmp eq i32 %10, 1
  br i1 %cmp2, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %if.else
  %11 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pstring.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %11, i32 0, i32 0
  store i8* null, i8** %data, align 8, !tbaa !69
  %12 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pstring.addr, align 8, !tbaa !1
  %size = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %12, i32 0, i32 1
  store i32 0, i32* %size, align 4, !tbaa !71
  br label %if.end.14

if.else.4:                                        ; preds = %if.else
  %13 = bitcast i32* %value to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #2
  store i32 0, i32* %value, align 4, !tbaa !5
  %14 = load %struct.stringParamDescription*, %struct.stringParamDescription** %params.addr, align 8, !tbaa !1
  %15 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pstring.addr, align 8, !tbaa !1
  %data5 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %15, i32 0, i32 0
  %16 = load i8*, i8** %data5, align 8, !tbaa !69
  %17 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pstring.addr, align 8, !tbaa !1
  %size6 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %17, i32 0, i32 1
  %18 = load i32, i32* %size6, align 4, !tbaa !71
  %call7 = call i32 @paramStringValue(%struct.stringParamDescription* %14, i8* %16, i32 %18, i32* %value) #5
  %cmp8 = icmp eq i32 %call7, 0
  br i1 %cmp8, label %if.then.9, label %if.else.13

if.then.9:                                        ; preds = %if.else.4
  %19 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs10 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %19, i32 0, i32 0
  %20 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs10, align 8, !tbaa !56
  %signal_error11 = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %20, i32 0, i32 7
  %21 = load i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*, i8*, i32)** %signal_error11, align 8, !tbaa !58
  %22 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %23 = load i8*, i8** %pname.addr, align 8, !tbaa !1
  store i32 -15, i32* %code.addr, align 4, !tbaa !5
  %call12 = call i32 %21(%struct.gs_param_list_s* %22, i8* %23, i32 -15) #5
  br label %if.end

if.else.13:                                       ; preds = %if.else.4
  %24 = load i32, i32* %value, align 4, !tbaa !5
  %25 = load i32*, i32** %pvalue.addr, align 8, !tbaa !1
  store i32 %24, i32* %25, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.else.13, %if.then.9
  %26 = bitcast i32* %value to i8*
  call void @llvm.lifetime.end(i64 4, i8* %26) #2
  br label %if.end.14

if.end.14:                                        ; preds = %if.end, %if.then.3
  br label %if.end.15

if.end.15:                                        ; preds = %if.end.14, %if.then
  %27 = load i32, i32* %code.addr, align 4, !tbaa !5
  %28 = bitcast i32* %ncode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %28) #2
  ret i32 %27
}

declare i32 @param_read_bool(%struct.gs_param_list_s*, i8*, i32*) #0

declare i32 @param_read_null(%struct.gs_param_list_s*, i8*) #0

; Function Attrs: nounwind uwtable
define internal i32 @cdj_param_check_float(%struct.gs_param_list_s* %plist, i8* %pname, double %fval, i32 %is_defined) #1 {
entry:
  %retval = alloca i32, align 4
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %pname.addr = alloca i8*, align 8
  %fval.addr = alloca double, align 8
  %is_defined.addr = alloca i32, align 4
  %code = alloca i32, align 4
  %new_value = alloca float, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* %pname, i8** %pname.addr, align 8, !tbaa !1
  store double %fval, double* %fval.addr, align 8, !tbaa !84
  store i32 %is_defined, i32* %is_defined.addr, align 4, !tbaa !5
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast float* %new_value to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %3 = load i8*, i8** %pname.addr, align 8, !tbaa !1
  %call = call i32 @param_read_float(%struct.gs_param_list_s* %2, i8* %3, float* %new_value) #5
  store i32 %call, i32* %code, align 4, !tbaa !5
  switch i32 %call, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.8
  ]

sw.bb:                                            ; preds = %entry
  %4 = load i32, i32* %is_defined.addr, align 4, !tbaa !5
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %sw.bb
  %5 = load float, float* %new_value, align 4, !tbaa !36
  %6 = load double, double* %fval.addr, align 8, !tbaa !84
  %conv = fptrunc double %6 to float
  %cmp = fcmp oeq float %5, %conv
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  br label %sw.epilog

if.end:                                           ; preds = %land.lhs.true, %sw.bb
  store i32 -15, i32* %code, align 4, !tbaa !5
  br label %e

sw.default:                                       ; preds = %entry
  %7 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %8 = load i8*, i8** %pname.addr, align 8, !tbaa !1
  %call2 = call i32 @param_read_null(%struct.gs_param_list_s* %7, i8* %8) #5
  %cmp3 = icmp eq i32 %call2, 0
  br i1 %cmp3, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %sw.default
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.6:                                         ; preds = %sw.default
  br label %e

e:                                                ; preds = %if.end.6, %if.end
  %9 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %9, i32 0, i32 0
  %10 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs, align 8, !tbaa !56
  %signal_error = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %10, i32 0, i32 7
  %11 = load i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*, i8*, i32)** %signal_error, align 8, !tbaa !58
  %12 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %13 = load i8*, i8** %pname.addr, align 8, !tbaa !1
  %14 = load i32, i32* %code, align 4, !tbaa !5
  %call7 = call i32 %11(%struct.gs_param_list_s* %12, i8* %13, i32 %14) #5
  br label %sw.bb.8

sw.bb.8:                                          ; preds = %entry, %e
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb.8, %if.then
  %15 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.then.5
  %16 = bitcast float* %new_value to i8*
  call void @llvm.lifetime.end(i64 4, i8* %16) #2
  %17 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %17) #2
  %18 = load i32, i32* %retval
  ret i32 %18
}

; Function Attrs: nounwind uwtable
define internal i32 @cdj_param_check_bytes(%struct.gs_param_list_s* %plist, i8* %pname, i8* %str, i32 %size, i32 %is_defined) #1 {
entry:
  %retval = alloca i32, align 4
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %pname.addr = alloca i8*, align 8
  %str.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %is_defined.addr = alloca i32, align 4
  %code = alloca i32, align 4
  %new_value = alloca %struct.gs_param_string_s, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* %pname, i8** %pname.addr, align 8, !tbaa !1
  store i8* %str, i8** %str.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !5
  store i32 %is_defined, i32* %is_defined.addr, align 4, !tbaa !5
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast %struct.gs_param_string_s* %new_value to i8*
  call void @llvm.lifetime.start(i64 16, i8* %1) #2
  %2 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %3 = load i8*, i8** %pname.addr, align 8, !tbaa !1
  %call = call i32 @param_read_string(%struct.gs_param_list_s* %2, i8* %3, %struct.gs_param_string_s* %new_value) #5
  store i32 %call, i32* %code, align 4, !tbaa !5
  switch i32 %call, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.11
  ]

sw.bb:                                            ; preds = %entry
  %4 = load i32, i32* %is_defined.addr, align 4, !tbaa !5
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %sw.bb
  %size1 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %new_value, i32 0, i32 1
  %5 = load i32, i32* %size1, align 4, !tbaa !71
  %6 = load i32, i32* %size.addr, align 4, !tbaa !5
  %cmp = icmp eq i32 %5, %6
  br i1 %cmp, label %land.lhs.true.2, label %if.end

land.lhs.true.2:                                  ; preds = %land.lhs.true
  %7 = load i8*, i8** %str.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %new_value, i32 0, i32 0
  %8 = load i8*, i8** %data, align 8, !tbaa !69
  %9 = load i32, i32* %size.addr, align 4, !tbaa !5
  %conv = zext i32 %9 to i64
  %call3 = call i32 @memcmp(i8* %7, i8* %8, i64 %conv) #6
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true.2
  br label %sw.epilog

if.end:                                           ; preds = %land.lhs.true.2, %land.lhs.true, %sw.bb
  store i32 -15, i32* %code, align 4, !tbaa !5
  br label %e

sw.default:                                       ; preds = %entry
  %10 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %11 = load i8*, i8** %pname.addr, align 8, !tbaa !1
  %call5 = call i32 @param_read_null(%struct.gs_param_list_s* %10, i8* %11) #5
  %cmp6 = icmp eq i32 %call5, 0
  br i1 %cmp6, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %sw.default
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.9:                                         ; preds = %sw.default
  br label %e

e:                                                ; preds = %if.end.9, %if.end
  %12 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %12, i32 0, i32 0
  %13 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs, align 8, !tbaa !56
  %signal_error = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %13, i32 0, i32 7
  %14 = load i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*, i8*, i32)** %signal_error, align 8, !tbaa !58
  %15 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %16 = load i8*, i8** %pname.addr, align 8, !tbaa !1
  %17 = load i32, i32* %code, align 4, !tbaa !5
  %call10 = call i32 %14(%struct.gs_param_list_s* %15, i8* %16, i32 %17) #5
  br label %sw.bb.11

sw.bb.11:                                         ; preds = %entry, %e
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb.11, %if.then
  %18 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %18, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.then.8
  %19 = bitcast %struct.gs_param_string_s* %new_value to i8*
  call void @llvm.lifetime.end(i64 16, i8* %19) #2
  %20 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %20) #2
  %21 = load i32, i32* %retval
  ret i32 %21
}

declare i32 @param_read_float_array(%struct.gs_param_list_s*, i8*, %struct.gs_param_float_array_s*) #0

declare i32 @param_read_string(%struct.gs_param_list_s*, i8*, %struct.gs_param_string_s*) #0

; Function Attrs: nounwind uwtable
define internal i32 @paramStringValue(%struct.stringParamDescription* %params, i8* %name, i32 %namelen, i32* %value) #1 {
entry:
  %retval = alloca i32, align 4
  %params.addr = alloca %struct.stringParamDescription*, align 8
  %name.addr = alloca i8*, align 8
  %namelen.addr = alloca i32, align 4
  %value.addr = alloca i32*, align 8
  store %struct.stringParamDescription* %params, %struct.stringParamDescription** %params.addr, align 8, !tbaa !1
  store i8* %name, i8** %name.addr, align 8, !tbaa !1
  store i32 %namelen, i32* %namelen.addr, align 4, !tbaa !5
  store i32* %value, i32** %value.addr, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load %struct.stringParamDescription*, %struct.stringParamDescription** %params.addr, align 8, !tbaa !1
  %p_name = getelementptr inbounds %struct.stringParamDescription, %struct.stringParamDescription* %0, i32 0, i32 0
  %1 = load i8*, i8** %p_name, align 8, !tbaa !81
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct.stringParamDescription*, %struct.stringParamDescription** %params.addr, align 8, !tbaa !1
  %p_name1 = getelementptr inbounds %struct.stringParamDescription, %struct.stringParamDescription* %2, i32 0, i32 0
  %3 = load i8*, i8** %p_name1, align 8, !tbaa !81
  %4 = load i8*, i8** %name.addr, align 8, !tbaa !1
  %5 = load i32, i32* %namelen.addr, align 4, !tbaa !5
  %conv = sext i32 %5 to i64
  %call = call i32 @strncmp(i8* %3, i8* %4, i64 %conv) #6
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %6 = load i32, i32* %namelen.addr, align 4, !tbaa !5
  %idxprom = sext i32 %6 to i64
  %7 = load %struct.stringParamDescription*, %struct.stringParamDescription** %params.addr, align 8, !tbaa !1
  %p_name3 = getelementptr inbounds %struct.stringParamDescription, %struct.stringParamDescription* %7, i32 0, i32 0
  %8 = load i8*, i8** %p_name3, align 8, !tbaa !81
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %idxprom
  %9 = load i8, i8* %arrayidx, align 1, !tbaa !48
  %conv4 = sext i8 %9 to i32
  %cmp5 = icmp eq i32 %conv4, 0
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %10 = load %struct.stringParamDescription*, %struct.stringParamDescription** %params.addr, align 8, !tbaa !1
  %p_value = getelementptr inbounds %struct.stringParamDescription, %struct.stringParamDescription* %10, i32 0, i32 1
  %11 = load i32, i32* %p_value, align 4, !tbaa !83
  %12 = load i32*, i32** %value.addr, align 8, !tbaa !1
  store i32 %11, i32* %12, align 4, !tbaa !5
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %13 = load %struct.stringParamDescription*, %struct.stringParamDescription** %params.addr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds %struct.stringParamDescription, %struct.stringParamDescription* %13, i32 1
  store %struct.stringParamDescription* %incdec.ptr, %struct.stringParamDescription** %params.addr, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %14 = load i32, i32* %retval
  ret i32 %14
}

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #3

declare i32 @param_read_float(%struct.gs_param_list_s*, i8*, float*) #0

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8*, i8*, i64) #3

; Function Attrs: nounwind uwtable
define internal i32 @hp_colour_print_page(%struct.gx_device_printer_s* %pdev, %struct._IO_FILE* %prn_stream, i32 %ptype) #1 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_printer_s*, align 8
  %prn_stream.addr = alloca %struct._IO_FILE*, align 8
  %ptype.addr = alloca i32, align 4
  %raster_width = alloca i32, align 4
  %line_size = alloca i32, align 4
  %line_size_words = alloca i32, align 4
  %paper_size = alloca i32, align 4
  %num_comps = alloca i32, align 4
  %bits_per_pixel = alloca i32, align 4
  %storage_bpp = alloca i32, align 4
  %expanded_bpp = alloca i32, align 4
  %plane_size = alloca i32, align 4
  %databuff_size = alloca i32, align 4
  %combined_escapes = alloca i32, align 4
  %errbuff_size = alloca i32, align 4
  %outbuff_size = alloca i32, align 4
  %compression = alloca i32, align 4
  %scan = alloca i32, align 4
  %errors = alloca [2 x i32*], align 16
  %cid_string = alloca i8*, align 8
  %data = alloca [4 x i8*], align 16
  %plane_data = alloca [4 x [4 x i8*]], align 16
  %out_data = alloca i8*, align 8
  %out_row = alloca i8*, align 8
  %out_row_alt = alloca i8*, align 8
  %storage = alloca i64*, align 8
  %storage_size_words = alloca i32, align 4
  %eg = alloca %struct.ep_globals, align 8
  %cleanup.dest.slot = alloca i32
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %p = alloca i8*, align 8
  %ep_p = alloca i8*, align 8
  %cErr = alloca i32, align 4
  %mErr = alloca i32, align 4
  %yErr = alloca i32, align 4
  %kErr = alloca i32, align 4
  %this_pass = alloca i32, align 4
  %lnum = alloca i32, align 4
  %i430 = alloca i32, align 4
  %start_rows = alloca i32, align 4
  %lend = alloca i32, align 4
  %num_blank_lines = alloca i32, align 4
  %rmask = alloca i64, align 8
  %ep = alloca i32*, align 8
  %data_words = alloca i64*, align 8
  %end_data = alloca i64*, align 8
  %kP = alloca i8*, align 8
  %cP = alloca i8*, align 8
  %mP = alloca i8*, align 8
  %yP = alloca i8*, align 8
  %dp = alloca i8*, align 8
  %ep604 = alloca i32*, align 8
  %zero_row_count = alloca i32, align 4
  %i607 = alloca i32, align 4
  %j608 = alloca i32, align 4
  %odp = alloca i8*, align 8
  %dp627 = alloca i8*, align 8
  %pword = alloca i64, align 8
  %c = alloca i8, align 1
  %y = alloca i8, align 1
  %m = alloca i8, align 1
  %k = alloca i8, align 1
  %bitmask = alloca i8, align 1
  %c723 = alloca i8, align 1
  %y724 = alloca i8, align 1
  %m725 = alloca i8, align 1
  %k726 = alloca i8, align 1
  %bitmask727 = alloca i8, align 1
  %c762 = alloca i8, align 1
  %y763 = alloca i8, align 1
  %m764 = alloca i8, align 1
  %k765 = alloca i8, align 1
  %bitmask766 = alloca i8, align 1
  %oldErr = alloca i32, align 4
  %c816 = alloca i8, align 1
  %y817 = alloca i8, align 1
  %m818 = alloca i8, align 1
  %k819 = alloca i8, align 1
  %bitmask820 = alloca i8, align 1
  %oldErr821 = alloca i32, align 4
  %c876 = alloca i8, align 1
  %y877 = alloca i8, align 1
  %m878 = alloca i8, align 1
  %k879 = alloca i8, align 1
  %bitmask880 = alloca i8, align 1
  %oldErr881 = alloca i32, align 4
  %c989 = alloca i8, align 1
  %y990 = alloca i8, align 1
  %m991 = alloca i8, align 1
  %k992 = alloca i8, align 1
  %bitmask993 = alloca i8, align 1
  %oldErr994 = alloca i32, align 4
  %c1116 = alloca i8, align 1
  %y1117 = alloca i8, align 1
  %m1118 = alloca i8, align 1
  %k1119 = alloca i8, align 1
  %bitmask1120 = alloca i8, align 1
  %oldErr1121 = alloca i32, align 4
  %c1262 = alloca i8, align 1
  %y1263 = alloca i8, align 1
  %m1264 = alloca i8, align 1
  %k1265 = alloca i8, align 1
  %bitmask1266 = alloca i8, align 1
  %oldErr1267 = alloca i32, align 4
  %kp = alloca i64*, align 8
  %cp = alloca i64*, align 8
  %mp = alloca i64*, align 8
  %yp = alloca i64*, align 8
  %bits = alloca i64, align 8
  %bits1456 = alloca i64, align 8
  %output_plane = alloca i32, align 4
  %out_count = alloca i32, align 4
  %wp = alloca i64*, align 8
  %wp1555 = alloca i64*, align 8
  %plane = alloca i8*, align 8
  %prev_plane = alloca i8*, align 8
  %row = alloca i64*, align 8
  %end_row = alloca i64*, align 8
  %count2 = alloca i32, align 4
  %count3 = alloca i32, align 4
  %penalty = alloca i32, align 4
  %penalty2 = alloca i32, align 4
  %penalty3 = alloca i32, align 4
  %plane1631 = alloca i8*, align 8
  %count21636 = alloca i32, align 4
  store %struct.gx_device_printer_s* %pdev, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  store %struct._IO_FILE* %prn_stream, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  store i32 %ptype, i32* %ptype.addr, align 4, !tbaa !5
  %0 = bitcast i32* %raster_width to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %call = call i32 @gdev_prn_rasterwidth(%struct.gx_device_printer_s* %1, i32 1) #5
  store i32 %call, i32* %raster_width, align 4, !tbaa !5
  %2 = bitcast i32* %line_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  %3 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %4 = bitcast %struct.gx_device_printer_s* %3 to %struct.gx_device_s*
  %call1 = call i32 @gx_device_raster(%struct.gx_device_s* %4, i32 0) #5
  store i32 %call1, i32* %line_size, align 4, !tbaa !5
  %5 = bitcast i32* %line_size_words to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  %6 = load i32, i32* %line_size, align 4, !tbaa !5
  %add = add nsw i32 %6, 8
  %sub = sub nsw i32 %add, 1
  %div = sdiv i32 %sub, 8
  store i32 %div, i32* %line_size_words, align 4, !tbaa !5
  %7 = bitcast i32* %paper_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #2
  %8 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %9 = bitcast %struct.gx_device_printer_s* %8 to %struct.gx_device_s*
  %call2 = call i32 @gdev_pcl_paper_size(%struct.gx_device_s* %9) #5
  store i32 %call2, i32* %paper_size, align 4, !tbaa !5
  %10 = bitcast i32* %num_comps to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #2
  %11 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %11, i32 0, i32 11
  %num_components = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 1
  %12 = load i32, i32* %num_components, align 4, !tbaa !86
  store i32 %12, i32* %num_comps, align 4, !tbaa !5
  %13 = bitcast i32* %bits_per_pixel to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #2
  %14 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %color_info3 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %14, i32 0, i32 11
  %depth = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info3, i32 0, i32 3
  %15 = load i16, i16* %depth, align 2, !tbaa !88
  %conv = zext i16 %15 to i32
  store i32 %conv, i32* %bits_per_pixel, align 4, !tbaa !5
  %16 = bitcast i32* %storage_bpp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #2
  %17 = load i32, i32* %bits_per_pixel, align 4, !tbaa !5
  store i32 %17, i32* %storage_bpp, align 4, !tbaa !5
  %18 = bitcast i32* %expanded_bpp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #2
  %19 = load i32, i32* %bits_per_pixel, align 4, !tbaa !5
  store i32 %19, i32* %expanded_bpp, align 4, !tbaa !5
  %20 = bitcast i32* %plane_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %20) #2
  %21 = bitcast i32* %databuff_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %21) #2
  %22 = bitcast i32* %combined_escapes to i8*
  call void @llvm.lifetime.start(i64 4, i8* %22) #2
  store i32 1, i32* %combined_escapes, align 4, !tbaa !5
  %23 = bitcast i32* %errbuff_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %23) #2
  store i32 0, i32* %errbuff_size, align 4, !tbaa !5
  %24 = bitcast i32* %outbuff_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %24) #2
  store i32 0, i32* %outbuff_size, align 4, !tbaa !5
  %25 = bitcast i32* %compression to i8*
  call void @llvm.lifetime.start(i64 4, i8* %25) #2
  store i32 0, i32* %compression, align 4, !tbaa !5
  %26 = bitcast i32* %scan to i8*
  call void @llvm.lifetime.start(i64 4, i8* %26) #2
  store i32 0, i32* %scan, align 4, !tbaa !5
  %27 = bitcast [2 x i32*]* %errors to i8*
  call void @llvm.lifetime.start(i64 16, i8* %27) #2
  %28 = bitcast i8** %cid_string to i8*
  call void @llvm.lifetime.start(i64 8, i8* %28) #2
  store i8* null, i8** %cid_string, align 8, !tbaa !1
  %29 = bitcast [4 x i8*]* %data to i8*
  call void @llvm.lifetime.start(i64 32, i8* %29) #2
  %30 = bitcast [4 x [4 x i8*]]* %plane_data to i8*
  call void @llvm.lifetime.start(i64 128, i8* %30) #2
  %31 = bitcast i8** %out_data to i8*
  call void @llvm.lifetime.start(i64 8, i8* %31) #2
  %32 = bitcast i8** %out_row to i8*
  call void @llvm.lifetime.start(i64 8, i8* %32) #2
  %33 = bitcast i8** %out_row_alt to i8*
  call void @llvm.lifetime.start(i64 8, i8* %33) #2
  %34 = bitcast i64** %storage to i8*
  call void @llvm.lifetime.start(i64 8, i8* %34) #2
  %35 = bitcast i32* %storage_size_words to i8*
  call void @llvm.lifetime.start(i64 4, i8* %35) #2
  %36 = bitcast %struct.ep_globals* %eg to i8*
  call void @llvm.lifetime.start(i64 2104, i8* %36) #2
  %37 = bitcast %struct.ep_globals* %eg to i8*
  %call4 = call i8* @memset(i8* %37, i32 0, i64 2104) #7
  %img_rows = getelementptr inbounds %struct.ep_globals, %struct.ep_globals* %eg, i32 0, i32 6
  store i32 64, i32* %img_rows, align 4, !tbaa !89
  %38 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %38, i32 0, i32 3
  %39 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !91
  %mem = getelementptr inbounds %struct.ep_globals, %struct.ep_globals* %eg, i32 0, i32 10
  store %struct.gs_memory_s* %39, %struct.gs_memory_s** %mem, align 8, !tbaa !92
  %40 = load i32, i32* %ptype.addr, align 4, !tbaa !5
  switch i32 %40, label %sw.epilog [
    i32 1, label %sw.bb
    i32 9, label %sw.bb.6
    i32 3, label %sw.bb.15
    i32 5, label %sw.bb.15
  ]

sw.bb:                                            ; preds = %entry
  %41 = load i32, i32* %num_comps, align 4, !tbaa !5
  %cmp = icmp eq i32 %41, 3
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %sw.bb
  %42 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %43 = bitcast %struct.gx_device_printer_s* %42 to %struct.gx_device_colour_prn*
  %cmyk = getelementptr inbounds %struct.gx_device_colour_prn, %struct.gx_device_colour_prn* %43, i32 0, i32 68
  %44 = load i16, i16* %cmyk, align 2, !tbaa !38
  %tobool = icmp ne i16 %44, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  store i32 4, i32* %num_comps, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %sw.bb
  br label %sw.epilog

sw.bb.6:                                          ; preds = %entry
  %45 = load i32, i32* %bits_per_pixel, align 4, !tbaa !5
  %cmp7 = icmp eq i32 %45, 24
  br i1 %cmp7, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %sw.bb.6
  store i32 3, i32* %num_comps, align 4, !tbaa !5
  br label %if.end.14

if.else:                                          ; preds = %sw.bb.6
  %46 = load i32, i32* %num_comps, align 4, !tbaa !5
  %cmp10 = icmp ne i32 %46, 1
  br i1 %cmp10, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.else
  store i32 4, i32* %num_comps, align 4, !tbaa !5
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.12, %if.else
  br label %if.end.14

if.end.14:                                        ; preds = %if.end.13, %if.then.9
  br label %sw.epilog

sw.bb.15:                                         ; preds = %entry, %entry
  %47 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %48 = bitcast %struct.gx_device_printer_s* %47 to %struct.gx_device_pjxl_s*
  %rendertype = getelementptr inbounds %struct.gx_device_pjxl_s, %struct.gx_device_pjxl_s* %48, i32 0, i32 72
  %49 = load i32, i32* %rendertype, align 4, !tbaa !64
  %cmp16 = icmp sgt i32 %49, 0
  br i1 %cmp16, label %if.then.18, label %if.end.27

if.then.18:                                       ; preds = %sw.bb.15
  %50 = load i32, i32* %bits_per_pixel, align 4, !tbaa !5
  %cmp19 = icmp slt i32 %50, 16
  br i1 %cmp19, label %if.then.21, label %if.else.23

if.then.21:                                       ; preds = %if.then.18
  %51 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %52 = bitcast %struct.gx_device_printer_s* %51 to %struct.gx_device_pjxl_s*
  %rendertype22 = getelementptr inbounds %struct.gx_device_pjxl_s, %struct.gx_device_pjxl_s* %52, i32 0, i32 72
  store i32 0, i32* %rendertype22, align 4, !tbaa !64
  br label %if.end.26

if.else.23:                                       ; preds = %if.then.18
  %53 = load i32, i32* %bits_per_pixel, align 4, !tbaa !5
  %cmp24 = icmp eq i32 %53, 16
  %cond = select i1 %cmp24, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.52, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.53, i32 0, i32 0)
  store i8* %cond, i8** %cid_string, align 8, !tbaa !1
  store i32 1, i32* %expanded_bpp, align 4, !tbaa !5
  store i32 1, i32* %storage_bpp, align 4, !tbaa !5
  store i32 1, i32* %bits_per_pixel, align 4, !tbaa !5
  store i32 1, i32* %num_comps, align 4, !tbaa !5
  br label %if.end.26

if.end.26:                                        ; preds = %if.else.23, %if.then.21
  br label %if.end.27

if.end.27:                                        ; preds = %if.end.26, %sw.bb.15
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %if.end.27, %if.end.14, %if.end
  %54 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %55 = bitcast %struct.gx_device_printer_s* %54 to %struct.gx_device_colour_prn*
  %cmyk28 = getelementptr inbounds %struct.gx_device_colour_prn, %struct.gx_device_colour_prn* %55, i32 0, i32 68
  %56 = load i16, i16* %cmyk28, align 2, !tbaa !38
  %conv29 = sext i16 %56 to i32
  %cmp30 = icmp sle i32 %conv29, 0
  br i1 %cmp30, label %if.then.32, label %if.end.40

if.then.32:                                       ; preds = %sw.epilog
  %57 = load i32, i32* %storage_bpp, align 4, !tbaa !5
  %cmp33 = icmp eq i32 %57, 8
  br i1 %cmp33, label %land.lhs.true.35, label %if.end.39

land.lhs.true.35:                                 ; preds = %if.then.32
  %58 = load i32, i32* %num_comps, align 4, !tbaa !5
  %cmp36 = icmp sge i32 %58, 3
  br i1 %cmp36, label %if.then.38, label %if.end.39

if.then.38:                                       ; preds = %land.lhs.true.35
  store i32 3, i32* %expanded_bpp, align 4, !tbaa !5
  store i32 3, i32* %bits_per_pixel, align 4, !tbaa !5
  br label %if.end.39

if.end.39:                                        ; preds = %if.then.38, %land.lhs.true.35, %if.then.32
  br label %if.end.40

if.end.40:                                        ; preds = %if.end.39, %sw.epilog
  %59 = load i32, i32* %line_size, align 4, !tbaa !5
  %60 = load i32, i32* %storage_bpp, align 4, !tbaa !5
  %mul = mul nsw i32 %60, 8
  %add41 = add nsw i32 %59, %mul
  %sub42 = sub nsw i32 %add41, 1
  %61 = load i32, i32* %storage_bpp, align 4, !tbaa !5
  %mul43 = mul nsw i32 %61, 8
  %div44 = sdiv i32 %sub42, %mul43
  %mul45 = mul nsw i32 %div44, 8
  store i32 %mul45, i32* %plane_size, align 4, !tbaa !5
  %62 = load i32, i32* %plane_size, align 4, !tbaa !5
  %plane_size46 = getelementptr inbounds %struct.ep_globals, %struct.ep_globals* %eg, i32 0, i32 5
  store i32 %62, i32* %plane_size46, align 4, !tbaa !93
  %63 = load i32, i32* %bits_per_pixel, align 4, !tbaa !5
  %cmp47 = icmp eq i32 %63, 1
  br i1 %cmp47, label %if.then.49, label %if.end.51

if.then.49:                                       ; preds = %if.end.40
  store i32 0, i32* %databuff_size, align 4, !tbaa !5
  %64 = load i32, i32* %plane_size, align 4, !tbaa !5
  %mul50 = mul nsw i32 %64, 4
  store i32 %mul50, i32* %outbuff_size, align 4, !tbaa !5
  br label %if.end.51

if.end.51:                                        ; preds = %if.then.49, %if.end.40
  %65 = load i32, i32* %bits_per_pixel, align 4, !tbaa !5
  %cmp52 = icmp sgt i32 %65, 4
  br i1 %cmp52, label %if.then.54, label %if.end.76

if.then.54:                                       ; preds = %if.end.51
  %66 = load i32, i32* %num_comps, align 4, !tbaa !5
  %mul55 = mul nsw i32 %66, 8
  store i32 %mul55, i32* %expanded_bpp, align 4, !tbaa !5
  store i32 %mul55, i32* %storage_bpp, align 4, !tbaa !5
  %67 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %68 = bitcast %struct.gx_device_printer_s* %67 to %struct.gx_device_colour_prn*
  %cmyk56 = getelementptr inbounds %struct.gx_device_colour_prn, %struct.gx_device_colour_prn* %68, i32 0, i32 68
  %69 = load i16, i16* %cmyk56, align 2, !tbaa !38
  %conv57 = sext i16 %69 to i32
  %cmp58 = icmp sgt i32 %conv57, 0
  br i1 %cmp58, label %if.then.60, label %if.else.66

if.then.60:                                       ; preds = %if.then.54
  %70 = load i32, i32* %line_size, align 4, !tbaa !5
  %add61 = add nsw i32 7, %70
  %add62 = add nsw i32 %add61, 1
  %add63 = add nsw i32 %add62, 2
  %mul64 = mul nsw i32 4, %add63
  %mul65 = mul nsw i32 %mul64, 4
  store i32 %mul65, i32* %errbuff_size, align 4, !tbaa !5
  br label %if.end.75

if.else.66:                                       ; preds = %if.then.54
  %71 = load i32, i32* %plane_size, align 4, !tbaa !5
  %72 = load i32, i32* %expanded_bpp, align 4, !tbaa !5
  %mul67 = mul nsw i32 %71, %72
  %73 = load i32, i32* %num_comps, align 4, !tbaa !5
  %mul68 = mul nsw i32 %73, 4
  %add69 = add nsw i32 %mul67, %mul68
  %mul70 = mul nsw i32 %add69, 4
  %add71 = add nsw i32 %mul70, 8
  %sub72 = sub nsw i32 %add71, 1
  %div73 = sdiv i32 %sub72, 8
  %mul74 = mul nsw i32 %div73, 8
  store i32 %mul74, i32* %errbuff_size, align 4, !tbaa !5
  br label %if.end.75

if.end.75:                                        ; preds = %if.else.66, %if.then.60
  br label %if.end.76

if.end.76:                                        ; preds = %if.end.75, %if.end.51
  %74 = load i32, i32* %plane_size, align 4, !tbaa !5
  %75 = load i32, i32* %storage_bpp, align 4, !tbaa !5
  %mul77 = mul nsw i32 %74, %75
  store i32 %mul77, i32* %databuff_size, align 4, !tbaa !5
  %76 = load i32, i32* %plane_size, align 4, !tbaa !5
  %77 = load i32, i32* %plane_size, align 4, !tbaa !5
  %add78 = add nsw i32 %76, %77
  %78 = load i32, i32* %num_comps, align 4, !tbaa !5
  %mul79 = mul nsw i32 %add78, %78
  %79 = load i32, i32* %databuff_size, align 4, !tbaa !5
  %add80 = add nsw i32 %mul79, %79
  %80 = load i32, i32* %errbuff_size, align 4, !tbaa !5
  %add81 = add nsw i32 %add80, %80
  %81 = load i32, i32* %outbuff_size, align 4, !tbaa !5
  %add82 = add nsw i32 %add81, %81
  %div83 = sdiv i32 %add82, 8
  store i32 %div83, i32* %storage_size_words, align 4, !tbaa !5
  %82 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory84 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %82, i32 0, i32 3
  %83 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory84, align 8, !tbaa !91
  %non_gc_memory = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %83, i32 0, i32 3
  %84 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory, align 8, !tbaa !94
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %84, i32 0, i32 1
  %alloc_byte_array = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 10
  %85 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array, align 8, !tbaa !97
  %86 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory85 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %86, i32 0, i32 3
  %87 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory85, align 8, !tbaa !91
  %non_gc_memory86 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %87, i32 0, i32 3
  %88 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory86, align 8, !tbaa !94
  %89 = load i32, i32* %storage_size_words, align 4, !tbaa !5
  %call87 = call i8* %85(%struct.gs_memory_s* %88, i32 %89, i32 8, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.54, i32 0, i32 0)) #5
  %90 = bitcast i8* %call87 to i64*
  store i64* %90, i64** %storage, align 8, !tbaa !1
  %91 = load i32, i32* %plane_size, align 4, !tbaa !5
  %92 = load i32, i32* %num_comps, align 4, !tbaa !5
  %add88 = add nsw i32 %92, 1
  %mul89 = mul nsw i32 %91, %add88
  %div90 = sdiv i32 %mul89, 8
  %img_rows91 = getelementptr inbounds %struct.ep_globals, %struct.ep_globals* %eg, i32 0, i32 6
  %93 = load i32, i32* %img_rows91, align 4, !tbaa !89
  %mul92 = mul nsw i32 %div90, %93
  %add93 = add nsw i32 %mul92, 16
  %storage_size_words94 = getelementptr inbounds %struct.ep_globals, %struct.ep_globals* %eg, i32 0, i32 1
  store i32 %add93, i32* %storage_size_words94, align 4, !tbaa !98
  %94 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory95 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %94, i32 0, i32 3
  %95 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory95, align 8, !tbaa !91
  %non_gc_memory96 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %95, i32 0, i32 3
  %96 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory96, align 8, !tbaa !94
  %procs97 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %96, i32 0, i32 1
  %alloc_byte_array98 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs97, i32 0, i32 10
  %97 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array98, align 8, !tbaa !97
  %98 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory99 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %98, i32 0, i32 3
  %99 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory99, align 8, !tbaa !91
  %non_gc_memory100 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %99, i32 0, i32 3
  %100 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory100, align 8, !tbaa !94
  %storage_size_words101 = getelementptr inbounds %struct.ep_globals, %struct.ep_globals* %eg, i32 0, i32 1
  %101 = load i32, i32* %storage_size_words101, align 4, !tbaa !98
  %call102 = call i8* %97(%struct.gs_memory_s* %100, i32 %101, i32 8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.55, i32 0, i32 0)) #5
  %102 = bitcast i8* %call102 to i64*
  %storage103 = getelementptr inbounds %struct.ep_globals, %struct.ep_globals* %eg, i32 0, i32 0
  store i64* %102, i64** %storage103, align 8, !tbaa !99
  %103 = load i64*, i64** %storage, align 8, !tbaa !1
  %cmp104 = icmp eq i64* %103, null
  br i1 %cmp104, label %if.then.109, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.76
  %storage106 = getelementptr inbounds %struct.ep_globals, %struct.ep_globals* %eg, i32 0, i32 0
  %104 = load i64*, i64** %storage106, align 8, !tbaa !99
  %cmp107 = icmp eq i64* %104, null
  br i1 %cmp107, label %if.then.109, label %if.else.110

if.then.109:                                      ; preds = %lor.lhs.false, %if.end.76
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.1791

if.else.110:                                      ; preds = %lor.lhs.false
  %105 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %105) #2
  %106 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %106) #2
  %107 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %107) #2
  %108 = load i64*, i64** %storage, align 8, !tbaa !1
  %109 = bitcast i64* %108 to i8*
  store i8* %109, i8** %out_row, align 8, !tbaa !1
  store i8* %109, i8** %out_data, align 8, !tbaa !1
  store i8* %109, i8** %p, align 8, !tbaa !1
  %110 = bitcast i8** %ep_p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %110) #2
  %storage111 = getelementptr inbounds %struct.ep_globals, %struct.ep_globals* %eg, i32 0, i32 0
  %111 = load i64*, i64** %storage111, align 8, !tbaa !99
  %112 = bitcast i64* %111 to i8*
  store i8* %112, i8** %ep_p, align 8, !tbaa !1
  %113 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds [4 x i8*], [4 x i8*]* %data, i32 0, i64 2
  store i8* %113, i8** %arrayidx, align 8, !tbaa !1
  %arrayidx112 = getelementptr inbounds [4 x i8*], [4 x i8*]* %data, i32 0, i64 1
  store i8* %113, i8** %arrayidx112, align 8, !tbaa !1
  %arrayidx113 = getelementptr inbounds [4 x i8*], [4 x i8*]* %data, i32 0, i64 0
  store i8* %113, i8** %arrayidx113, align 8, !tbaa !1
  %114 = load i8*, i8** %p, align 8, !tbaa !1
  %115 = load i32, i32* %databuff_size, align 4, !tbaa !5
  %idx.ext = sext i32 %115 to i64
  %add.ptr = getelementptr inbounds i8, i8* %114, i64 %idx.ext
  %arrayidx114 = getelementptr inbounds [4 x i8*], [4 x i8*]* %data, i32 0, i64 3
  store i8* %add.ptr, i8** %arrayidx114, align 8, !tbaa !1
  %116 = load i8*, i8** %out_row, align 8, !tbaa !1
  %117 = load i32, i32* %plane_size, align 4, !tbaa !5
  %mul115 = mul nsw i32 %117, 2
  %idx.ext116 = sext i32 %mul115 to i64
  %add.ptr117 = getelementptr inbounds i8, i8* %116, i64 %idx.ext116
  store i8* %add.ptr117, i8** %out_row_alt, align 8, !tbaa !1
  %118 = load i32, i32* %bits_per_pixel, align 4, !tbaa !5
  %cmp118 = icmp sgt i32 %118, 1
  br i1 %cmp118, label %if.then.120, label %if.end.123

if.then.120:                                      ; preds = %if.else.110
  %119 = load i32, i32* %databuff_size, align 4, !tbaa !5
  %120 = load i8*, i8** %p, align 8, !tbaa !1
  %idx.ext121 = sext i32 %119 to i64
  %add.ptr122 = getelementptr inbounds i8, i8* %120, i64 %idx.ext121
  store i8* %add.ptr122, i8** %p, align 8, !tbaa !1
  br label %if.end.123

if.end.123:                                       ; preds = %if.then.120, %if.else.110
  %121 = load i32, i32* %bits_per_pixel, align 4, !tbaa !5
  %cmp124 = icmp sgt i32 %121, 4
  br i1 %cmp124, label %if.then.126, label %if.end.137

if.then.126:                                      ; preds = %if.end.123
  %122 = load i8*, i8** %p, align 8, !tbaa !1
  %123 = bitcast i8* %122 to i32*
  %124 = load i32, i32* %num_comps, align 4, !tbaa !5
  %mul127 = mul nsw i32 %124, 2
  %idx.ext128 = sext i32 %mul127 to i64
  %add.ptr129 = getelementptr inbounds i32, i32* %123, i64 %idx.ext128
  %arrayidx130 = getelementptr inbounds [2 x i32*], [2 x i32*]* %errors, i32 0, i64 0
  store i32* %add.ptr129, i32** %arrayidx130, align 8, !tbaa !1
  %arrayidx131 = getelementptr inbounds [2 x i32*], [2 x i32*]* %errors, i32 0, i64 0
  %125 = load i32*, i32** %arrayidx131, align 8, !tbaa !1
  %126 = load i32, i32* %databuff_size, align 4, !tbaa !5
  %idx.ext132 = sext i32 %126 to i64
  %add.ptr133 = getelementptr inbounds i32, i32* %125, i64 %idx.ext132
  %arrayidx134 = getelementptr inbounds [2 x i32*], [2 x i32*]* %errors, i32 0, i64 1
  store i32* %add.ptr133, i32** %arrayidx134, align 8, !tbaa !1
  %127 = load i32, i32* %errbuff_size, align 4, !tbaa !5
  %128 = load i8*, i8** %p, align 8, !tbaa !1
  %idx.ext135 = sext i32 %127 to i64
  %add.ptr136 = getelementptr inbounds i8, i8* %128, i64 %idx.ext135
  store i8* %add.ptr136, i8** %p, align 8, !tbaa !1
  br label %if.end.137

if.end.137:                                       ; preds = %if.then.126, %if.end.123
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.137
  %129 = load i32, i32* %i, align 4, !tbaa !5
  %130 = load i32, i32* %num_comps, align 4, !tbaa !5
  %cmp138 = icmp slt i32 %129, %130
  br i1 %cmp138, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %131 = load i8*, i8** %p, align 8, !tbaa !1
  %132 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %132 to i64
  %arrayidx140 = getelementptr inbounds [4 x [4 x i8*]], [4 x [4 x i8*]]* %plane_data, i32 0, i64 2
  %arrayidx141 = getelementptr inbounds [4 x i8*], [4 x i8*]* %arrayidx140, i32 0, i64 %idxprom
  store i8* %131, i8** %arrayidx141, align 8, !tbaa !1
  %133 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom142 = sext i32 %133 to i64
  %arrayidx143 = getelementptr inbounds [4 x [4 x i8*]], [4 x [4 x i8*]]* %plane_data, i32 0, i64 0
  %arrayidx144 = getelementptr inbounds [4 x i8*], [4 x i8*]* %arrayidx143, i32 0, i64 %idxprom142
  store i8* %131, i8** %arrayidx144, align 8, !tbaa !1
  %134 = load i32, i32* %plane_size, align 4, !tbaa !5
  %135 = load i8*, i8** %p, align 8, !tbaa !1
  %idx.ext145 = sext i32 %134 to i64
  %add.ptr146 = getelementptr inbounds i8, i8* %135, i64 %idx.ext145
  store i8* %add.ptr146, i8** %p, align 8, !tbaa !1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %136 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %136, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.147

for.cond.147:                                     ; preds = %for.inc.161, %for.end
  %137 = load i32, i32* %i, align 4, !tbaa !5
  %138 = load i32, i32* %num_comps, align 4, !tbaa !5
  %cmp148 = icmp slt i32 %137, %138
  br i1 %cmp148, label %for.body.150, label %for.end.163

for.body.150:                                     ; preds = %for.cond.147
  %139 = load i8*, i8** %p, align 8, !tbaa !1
  %140 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom151 = sext i32 %140 to i64
  %arrayidx152 = getelementptr inbounds [4 x [4 x i8*]], [4 x [4 x i8*]]* %plane_data, i32 0, i64 1
  %arrayidx153 = getelementptr inbounds [4 x i8*], [4 x i8*]* %arrayidx152, i32 0, i64 %idxprom151
  store i8* %139, i8** %arrayidx153, align 8, !tbaa !1
  %141 = load i8*, i8** %p, align 8, !tbaa !1
  %142 = load i32, i32* %plane_size, align 4, !tbaa !5
  %idx.ext154 = sext i32 %142 to i64
  %add.ptr155 = getelementptr inbounds i8, i8* %141, i64 %idx.ext154
  %143 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom156 = sext i32 %143 to i64
  %arrayidx157 = getelementptr inbounds [4 x [4 x i8*]], [4 x [4 x i8*]]* %plane_data, i32 0, i64 3
  %arrayidx158 = getelementptr inbounds [4 x i8*], [4 x i8*]* %arrayidx157, i32 0, i64 %idxprom156
  store i8* %add.ptr155, i8** %arrayidx158, align 8, !tbaa !1
  %144 = load i32, i32* %plane_size, align 4, !tbaa !5
  %145 = load i8*, i8** %p, align 8, !tbaa !1
  %idx.ext159 = sext i32 %144 to i64
  %add.ptr160 = getelementptr inbounds i8, i8* %145, i64 %idx.ext159
  store i8* %add.ptr160, i8** %p, align 8, !tbaa !1
  br label %for.inc.161

for.inc.161:                                      ; preds = %for.body.150
  %146 = load i32, i32* %i, align 4, !tbaa !5
  %inc162 = add nsw i32 %146, 1
  store i32 %inc162, i32* %i, align 4, !tbaa !5
  br label %for.cond.147

for.end.163:                                      ; preds = %for.cond.147
  %147 = load i32, i32* %bits_per_pixel, align 4, !tbaa !5
  %cmp164 = icmp eq i32 %147, 1
  br i1 %cmp164, label %if.then.166, label %if.end.176

if.then.166:                                      ; preds = %for.end.163
  %148 = load i8*, i8** %p, align 8, !tbaa !1
  store i8* %148, i8** %out_row, align 8, !tbaa !1
  store i8* %148, i8** %out_data, align 8, !tbaa !1
  %149 = load i8*, i8** %out_row, align 8, !tbaa !1
  %150 = load i32, i32* %plane_size, align 4, !tbaa !5
  %mul167 = mul nsw i32 %150, 2
  %idx.ext168 = sext i32 %mul167 to i64
  %add.ptr169 = getelementptr inbounds i8, i8* %149, i64 %idx.ext168
  store i8* %add.ptr169, i8** %out_row_alt, align 8, !tbaa !1
  %151 = load i32, i32* %databuff_size, align 4, !tbaa !5
  %arrayidx170 = getelementptr inbounds [4 x i8*], [4 x i8*]* %data, i32 0, i64 1
  %152 = load i8*, i8** %arrayidx170, align 8, !tbaa !1
  %idx.ext171 = sext i32 %151 to i64
  %add.ptr172 = getelementptr inbounds i8, i8* %152, i64 %idx.ext171
  store i8* %add.ptr172, i8** %arrayidx170, align 8, !tbaa !1
  %153 = load i32, i32* %databuff_size, align 4, !tbaa !5
  %arrayidx173 = getelementptr inbounds [4 x i8*], [4 x i8*]* %data, i32 0, i64 3
  %154 = load i8*, i8** %arrayidx173, align 8, !tbaa !1
  %idx.ext174 = sext i32 %153 to i64
  %add.ptr175 = getelementptr inbounds i8, i8* %154, i64 %idx.ext174
  store i8* %add.ptr175, i8** %arrayidx173, align 8, !tbaa !1
  br label %if.end.176

if.end.176:                                       ; preds = %if.then.166, %for.end.163
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.177

for.cond.177:                                     ; preds = %for.inc.196, %if.end.176
  %155 = load i32, i32* %i, align 4, !tbaa !5
  %156 = load i32, i32* %num_comps, align 4, !tbaa !5
  %cmp178 = icmp slt i32 %155, %156
  br i1 %cmp178, label %for.body.180, label %for.end.198

for.body.180:                                     ; preds = %for.cond.177
  store i32 0, i32* %j, align 4, !tbaa !5
  br label %for.cond.181

for.cond.181:                                     ; preds = %for.inc.192, %for.body.180
  %157 = load i32, i32* %j, align 4, !tbaa !5
  %img_rows182 = getelementptr inbounds %struct.ep_globals, %struct.ep_globals* %eg, i32 0, i32 6
  %158 = load i32, i32* %img_rows182, align 4, !tbaa !89
  %cmp183 = icmp slt i32 %157, %158
  br i1 %cmp183, label %for.body.185, label %for.end.194

for.body.185:                                     ; preds = %for.cond.181
  %159 = load i8*, i8** %ep_p, align 8, !tbaa !1
  %160 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom186 = sext i32 %160 to i64
  %161 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom187 = sext i32 %161 to i64
  %raster_buf = getelementptr inbounds %struct.ep_globals, %struct.ep_globals* %eg, i32 0, i32 2
  %arrayidx188 = getelementptr inbounds [4 x [64 x i8*]], [4 x [64 x i8*]]* %raster_buf, i32 0, i64 %idxprom187
  %arrayidx189 = getelementptr inbounds [64 x i8*], [64 x i8*]* %arrayidx188, i32 0, i64 %idxprom186
  store i8* %159, i8** %arrayidx189, align 8, !tbaa !1
  %162 = load i32, i32* %plane_size, align 4, !tbaa !5
  %163 = load i8*, i8** %ep_p, align 8, !tbaa !1
  %idx.ext190 = sext i32 %162 to i64
  %add.ptr191 = getelementptr inbounds i8, i8* %163, i64 %idx.ext190
  store i8* %add.ptr191, i8** %ep_p, align 8, !tbaa !1
  br label %for.inc.192

for.inc.192:                                      ; preds = %for.body.185
  %164 = load i32, i32* %j, align 4, !tbaa !5
  %inc193 = add nsw i32 %164, 1
  store i32 %inc193, i32* %j, align 4, !tbaa !5
  br label %for.cond.181

for.end.194:                                      ; preds = %for.cond.181
  %165 = load i8*, i8** %ep_p, align 8, !tbaa !1
  %add.ptr195 = getelementptr inbounds i8, i8* %165, i64 8
  %166 = ptrtoint i8* %add.ptr195 to i64
  %and = and i64 %166, -8
  %167 = inttoptr i64 %and to i8*
  %print_buf = getelementptr inbounds %struct.ep_globals, %struct.ep_globals* %eg, i32 0, i32 3
  store i8* %167, i8** %print_buf, align 8, !tbaa !100
  br label %for.inc.196

for.inc.196:                                      ; preds = %for.end.194
  %168 = load i32, i32* %i, align 4, !tbaa !5
  %inc197 = add nsw i32 %168, 1
  store i32 %inc197, i32* %i, align 4, !tbaa !5
  br label %for.cond.177

for.end.198:                                      ; preds = %for.cond.177
  %169 = load i32, i32* %num_comps, align 4, !tbaa !5
  %num_comps199 = getelementptr inbounds %struct.ep_globals, %struct.ep_globals* %eg, i32 0, i32 4
  store i32 %169, i32* %num_comps199, align 4, !tbaa !101
  %170 = bitcast i8** %ep_p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %170) #2
  %171 = bitcast i8** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %171) #2
  %172 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %172) #2
  %173 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %173) #2
  br label %if.end.200

if.end.200:                                       ; preds = %for.end.198
  %174 = load i32, i32* %ptype.addr, align 4, !tbaa !5
  %cmp201 = icmp eq i32 %174, 2
  br i1 %cmp201, label %if.then.203, label %if.else.213

if.then.203:                                      ; preds = %if.end.200
  %175 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call204 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.56, i32 0, i32 0), %struct._IO_FILE* %175) #5
  %176 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %177 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %HWResolution = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %177, i32 0, i32 22
  %arrayidx205 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution, i32 0, i64 0
  %178 = load float, float* %arrayidx205, align 4, !tbaa !36
  %conv206 = fptosi float %178 to i32
  %and207 = and i32 %conv206, 255
  %179 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %HWResolution208 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %179, i32 0, i32 22
  %arrayidx209 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution208, i32 0, i64 0
  %180 = load float, float* %arrayidx209, align 4, !tbaa !36
  %conv210 = fptosi float %180 to i32
  %shr = ashr i32 %conv210, 8
  %and211 = and i32 %shr, 255
  %call212 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %176, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.57, i32 0, i32 0), i32 %and207, i32 %and211) #5
  br label %if.end.234

if.else.213:                                      ; preds = %if.end.200
  %181 = load i32, i32* %ptype.addr, align 4, !tbaa !5
  %cmp214 = icmp eq i32 %181, 10
  br i1 %cmp214, label %if.then.219, label %lor.lhs.false.216

lor.lhs.false.216:                                ; preds = %if.else.213
  %182 = load i32, i32* %ptype.addr, align 4, !tbaa !5
  %cmp217 = icmp eq i32 %182, 11
  br i1 %cmp217, label %if.then.219, label %if.else.221

if.then.219:                                      ; preds = %lor.lhs.false.216, %if.else.213
  %183 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %184 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call220 = call i32 @bjc_init_page(%struct.gx_device_printer_s* %183, %struct._IO_FILE* %184) #5
  br label %if.end.233

if.else.221:                                      ; preds = %lor.lhs.false.216
  %185 = load i32, i32* %ptype.addr, align 4, !tbaa !5
  %cmp222 = icmp eq i32 %185, 8
  br i1 %cmp222, label %if.then.224, label %if.else.226

if.then.224:                                      ; preds = %if.else.221
  %186 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call225 = call i32 @fputs(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.58, i32 0, i32 0), %struct._IO_FILE* %186) #5
  br label %if.end.228

if.else.226:                                      ; preds = %if.else.221
  %187 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call227 = call i32 @fputs(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.59, i32 0, i32 0), %struct._IO_FILE* %187) #5
  br label %if.end.228

if.end.228:                                       ; preds = %if.else.226, %if.then.224
  %188 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %189 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %HWResolution229 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %189, i32 0, i32 22
  %arrayidx230 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution229, i32 0, i64 0
  %190 = load float, float* %arrayidx230, align 4, !tbaa !36
  %conv231 = fptosi float %190 to i32
  %call232 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %188, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.60, i32 0, i32 0), i32 %conv231) #5
  br label %if.end.233

if.end.233:                                       ; preds = %if.end.228, %if.then.219
  br label %if.end.234

if.end.234:                                       ; preds = %if.end.233, %if.then.203
  %191 = load i64*, i64** %storage, align 8, !tbaa !1
  %192 = bitcast i64* %191 to i8*
  %193 = load i32, i32* %storage_size_words, align 4, !tbaa !5
  %mul235 = mul i32 %193, 8
  %conv236 = zext i32 %mul235 to i64
  %call237 = call i8* @memset(i8* %192, i32 0, i64 %conv236) #7
  %194 = load i32, i32* %ptype.addr, align 4, !tbaa !5
  switch i32 %194, label %sw.epilog.402 [
    i32 8, label %sw.bb.238
    i32 0, label %sw.bb.242
    i32 1, label %sw.bb.242
    i32 2, label %sw.bb.253
    i32 7, label %sw.bb.272
    i32 3, label %sw.bb.309
    i32 5, label %sw.bb.332
    i32 4, label %sw.bb.355
    i32 6, label %sw.bb.355
    i32 9, label %sw.bb.370
    i32 10, label %sw.bb.389
    i32 11, label %sw.bb.389
  ]

sw.bb.238:                                        ; preds = %if.end.234
  %195 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %196 = load i32, i32* %paper_size, align 4, !tbaa !5
  %call239 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %195, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.61, i32 0, i32 0), i32 %196) #5
  %197 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call240 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %197, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.62, i32 0, i32 0)) #5
  %198 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call241 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %198, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.63, i32 0, i32 0)) #5
  store i32 3, i32* %compression, align 4, !tbaa !5
  store i32 0, i32* %combined_escapes, align 4, !tbaa !5
  br label %sw.epilog.402

sw.bb.242:                                        ; preds = %if.end.234, %if.end.234
  %199 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %200 = load i32, i32* %paper_size, align 4, !tbaa !5
  %call243 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %199, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.64, i32 0, i32 0), i32 %200) #5
  %201 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %202 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %203 = bitcast %struct.gx_device_printer_s* %202 to %struct.gx_device_cdj_s*
  %depletion = getelementptr inbounds %struct.gx_device_cdj_s, %struct.gx_device_cdj_s* %203, i32 0, i32 72
  %204 = load i32, i32* %depletion, align 4, !tbaa !35
  %205 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %206 = bitcast %struct.gx_device_printer_s* %205 to %struct.gx_device_cdj_s*
  %shingling = getelementptr inbounds %struct.gx_device_cdj_s, %struct.gx_device_cdj_s* %206, i32 0, i32 71
  %207 = load i32, i32* %shingling, align 4, !tbaa !34
  %call244 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %201, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.65, i32 0, i32 0), i32 %204, i32 %207) #5
  %208 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %209 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %HWMargins = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %209, i32 0, i32 25
  %arrayidx245 = getelementptr inbounds [4 x float], [4 x float]* %HWMargins, i32 0, i64 3
  %210 = load float, float* %arrayidx245, align 4, !tbaa !36
  %conv246 = fpext float %210 to double
  %div247 = fdiv double %conv246, 7.200000e+01
  %sub248 = fsub double %div247, 4.000000e-02
  %mul249 = fmul double 3.000000e+02, %sub248
  %conv250 = fptosi double %mul249 to i32
  %call251 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %208, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.66, i32 0, i32 0), i32 %conv250) #5
  %211 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %212 = load i32, i32* %raster_width, align 4, !tbaa !5
  %213 = load i32, i32* %num_comps, align 4, !tbaa !5
  %call252 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %211, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.67, i32 0, i32 0), i32 %212, i32 %213) #5
  store i32 9, i32* %compression, align 4, !tbaa !5
  br label %sw.epilog.402

sw.bb.253:                                        ; preds = %if.end.234
  %214 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %215 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %216 = bitcast %struct.gx_device_printer_s* %215 to %struct.gx_device_cdj_s*
  %depletion254 = getelementptr inbounds %struct.gx_device_cdj_s, %struct.gx_device_cdj_s* %216, i32 0, i32 72
  %217 = load i32, i32* %depletion254, align 4, !tbaa !35
  %218 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %219 = bitcast %struct.gx_device_printer_s* %218 to %struct.gx_device_cdj_s*
  %shingling255 = getelementptr inbounds %struct.gx_device_cdj_s, %struct.gx_device_cdj_s* %219, i32 0, i32 71
  %220 = load i32, i32* %shingling255, align 4, !tbaa !34
  %call256 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %214, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.68, i32 0, i32 0), i32 %217, i32 %220) #5
  %221 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call257 = call i64 @fwrite(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.69, i32 0, i32 0), i64 4, i64 1, %struct._IO_FILE* %221) #5
  %222 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call258 = call i64 @fwrite(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.70, i32 0, i32 0), i64 5, i64 1, %struct._IO_FILE* %222) #5
  %223 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %224 = load i32, i32* %num_comps, align 4, !tbaa !5
  %sub259 = sub nsw i32 65535, %224
  %add260 = add nsw i32 %sub259, 1
  %and261 = and i32 %add260, 255
  %225 = load i32, i32* %num_comps, align 4, !tbaa !5
  %sub262 = sub nsw i32 65535, %225
  %add263 = add nsw i32 %sub262, 1
  %shr264 = ashr i32 %add263, 8
  %and265 = and i32 %shr264, 255
  %call266 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %223, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.71, i32 0, i32 0), i32 %and261, i32 %and265) #5
  %226 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %227 = load i32, i32* %raster_width, align 4, !tbaa !5
  %and267 = and i32 %227, 255
  %228 = load i32, i32* %raster_width, align 4, !tbaa !5
  %shr268 = lshr i32 %228, 8
  %and269 = and i32 %shr268, 255
  %call270 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %226, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.72, i32 0, i32 0), i32 %and267, i32 %and269) #5
  %229 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call271 = call i64 @fwrite(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.73, i32 0, i32 0), i64 4, i64 1, %struct._IO_FILE* %229) #5
  store i32 1, i32* %compression, align 4, !tbaa !5
  store i32 0, i32* %combined_escapes, align 4, !tbaa !5
  br label %sw.epilog.402

sw.bb.272:                                        ; preds = %if.end.234
  %230 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %HWResolution273 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %230, i32 0, i32 22
  %arrayidx274 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution273, i32 0, i64 0
  %231 = load float, float* %arrayidx274, align 4, !tbaa !36
  %cmp275 = fcmp oeq float %231, 6.000000e+02
  br i1 %cmp275, label %if.then.277, label %if.end.279

if.then.277:                                      ; preds = %sw.bb.272
  %232 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call278 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %232, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.74, i32 0, i32 0)) #5
  br label %if.end.279

if.end.279:                                       ; preds = %if.then.277, %sw.bb.272
  %233 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call280 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %233, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.75, i32 0, i32 0)) #5
  %234 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call281 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %234, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.76, i32 0, i32 0)) #5
  %235 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %236 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %236, i32 0, i32 14
  %237 = load i32, i32* %height, align 4, !tbaa !102
  %conv282 = sitofp i32 %237 to float
  %238 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %HWResolution283 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %238, i32 0, i32 22
  %arrayidx284 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution283, i32 0, i64 1
  %239 = load float, float* %arrayidx284, align 4, !tbaa !36
  %div285 = fdiv float %conv282, %239
  %mul286 = fmul float %div285, 1.016000e+03
  %conv287 = fptosi float %mul286 to i32
  %240 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %240, i32 0, i32 13
  %241 = load i32, i32* %width, align 4, !tbaa !103
  %conv288 = sitofp i32 %241 to float
  %242 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %HWResolution289 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %242, i32 0, i32 22
  %arrayidx290 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution289, i32 0, i64 0
  %243 = load float, float* %arrayidx290, align 4, !tbaa !36
  %div291 = fdiv float %conv288, %243
  %mul292 = fmul float %div291, 1.016000e+03
  %conv293 = fptosi float %mul292 to i32
  %call294 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %235, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.77, i32 0, i32 0), i32 %conv287, i32 %conv293) #5
  %244 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call295 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %244, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.78, i32 0, i32 0)) #5
  %245 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call296 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %245, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.79, i32 0, i32 0), i32 0, i32 0) #5
  %246 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call297 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %246, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.80, i32 0, i32 0)) #5
  %247 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call298 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %247, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.81, i32 0, i32 0)) #5
  %248 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %HWResolution299 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %248, i32 0, i32 22
  %arrayidx300 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution299, i32 0, i64 0
  %249 = load float, float* %arrayidx300, align 4, !tbaa !36
  %cmp301 = fcmp oeq float %249, 6.000000e+02
  br i1 %cmp301, label %if.then.303, label %if.end.305

if.then.303:                                      ; preds = %if.end.279
  %250 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call304 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %250, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.82, i32 0, i32 0)) #5
  br label %if.end.305

if.end.305:                                       ; preds = %if.then.303, %if.end.279
  %251 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call306 = call i64 @fwrite(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @hp_colour_print_page.temp, i32 0, i32 0), i64 1, i64 11, %struct._IO_FILE* %251) #5
  %252 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %253 = load i32, i32* %raster_width, align 4, !tbaa !5
  %call307 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %252, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.83, i32 0, i32 0), i32 %253) #5
  %254 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call308 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %254, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.84, i32 0, i32 0)) #5
  store i32 1, i32* %compression, align 4, !tbaa !5
  store i32 0, i32* %combined_escapes, align 4, !tbaa !5
  br label %sw.epilog.402

sw.bb.309:                                        ; preds = %if.end.234
  %255 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %256 = load i32, i32* %paper_size, align 4, !tbaa !5
  %call310 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %255, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.64, i32 0, i32 0), i32 %256) #5
  %257 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call311 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %257, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.81, i32 0, i32 0)) #5
  %258 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %259 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %260 = bitcast %struct.gx_device_printer_s* %259 to %struct.gx_device_pjxl_s*
  %printqual = getelementptr inbounds %struct.gx_device_pjxl_s, %struct.gx_device_pjxl_s* %260, i32 0, i32 71
  %261 = load i32, i32* %printqual, align 4, !tbaa !62
  %call312 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %258, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.85, i32 0, i32 0), i32 %261) #5
  %262 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %263 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %HWMargins313 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %263, i32 0, i32 25
  %arrayidx314 = getelementptr inbounds [4 x float], [4 x float]* %HWMargins313, i32 0, i64 3
  %264 = load float, float* %arrayidx314, align 4, !tbaa !36
  %conv315 = fpext float %264 to double
  %div316 = fdiv double %conv315, 7.200000e+01
  %sub317 = fsub double %div316, 0.000000e+00
  %mul318 = fmul double 3.000000e+02, %sub317
  %conv319 = fptosi double %mul318 to i32
  %call320 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %262, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.66, i32 0, i32 0), i32 %conv319) #5
  %265 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %266 = bitcast %struct.gx_device_printer_s* %265 to %struct.gx_device_pjxl_s*
  %rendertype321 = getelementptr inbounds %struct.gx_device_pjxl_s, %struct.gx_device_pjxl_s* %266, i32 0, i32 72
  %267 = load i32, i32* %rendertype321, align 4, !tbaa !64
  %cmp322 = icmp sgt i32 %267, 0
  br i1 %cmp322, label %if.then.324, label %if.else.329

if.then.324:                                      ; preds = %sw.bb.309
  %268 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %269 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %270 = bitcast %struct.gx_device_printer_s* %269 to %struct.gx_device_pjxl_s*
  %rendertype325 = getelementptr inbounds %struct.gx_device_pjxl_s, %struct.gx_device_pjxl_s* %270, i32 0, i32 72
  %271 = load i32, i32* %rendertype325, align 4, !tbaa !64
  %call326 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %268, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.86, i32 0, i32 0), i32 %271) #5
  %272 = load i8*, i8** %cid_string, align 8, !tbaa !1
  %273 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call327 = call i32 @fputs(i8* %272, %struct._IO_FILE* %273) #5
  %274 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %275 = load i32, i32* %raster_width, align 4, !tbaa !5
  %call328 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %274, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.87, i32 0, i32 0), i32 %275) #5
  br label %if.end.331

if.else.329:                                      ; preds = %sw.bb.309
  %276 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %277 = load i32, i32* %raster_width, align 4, !tbaa !5
  %278 = load i32, i32* %num_comps, align 4, !tbaa !5
  %call330 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %276, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.67, i32 0, i32 0), i32 %277, i32 %278) #5
  br label %if.end.331

if.end.331:                                       ; preds = %if.else.329, %if.then.324
  store i32 0, i32* %combined_escapes, align 4, !tbaa !5
  br label %sw.epilog.402

sw.bb.332:                                        ; preds = %if.end.234
  %279 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %280 = load i32, i32* %paper_size, align 4, !tbaa !5
  %call333 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %279, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.64, i32 0, i32 0), i32 %280) #5
  %281 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %282 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %283 = bitcast %struct.gx_device_printer_s* %282 to %struct.gx_device_pjxl_s*
  %printqual334 = getelementptr inbounds %struct.gx_device_pjxl_s, %struct.gx_device_pjxl_s* %283, i32 0, i32 71
  %284 = load i32, i32* %printqual334, align 4, !tbaa !62
  %call335 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %281, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.85, i32 0, i32 0), i32 %284) #5
  %285 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %286 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %HWMargins336 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %286, i32 0, i32 25
  %arrayidx337 = getelementptr inbounds [4 x float], [4 x float]* %HWMargins336, i32 0, i64 3
  %287 = load float, float* %arrayidx337, align 4, !tbaa !36
  %conv338 = fpext float %287 to double
  %div339 = fdiv double %conv338, 7.200000e+01
  %sub340 = fsub double %div339, 0.000000e+00
  %mul341 = fmul double 1.800000e+02, %sub340
  %conv342 = fptosi double %mul341 to i32
  %call343 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %285, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.66, i32 0, i32 0), i32 %conv342) #5
  %288 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %289 = bitcast %struct.gx_device_printer_s* %288 to %struct.gx_device_pjxl_s*
  %rendertype344 = getelementptr inbounds %struct.gx_device_pjxl_s, %struct.gx_device_pjxl_s* %289, i32 0, i32 72
  %290 = load i32, i32* %rendertype344, align 4, !tbaa !64
  %cmp345 = icmp sgt i32 %290, 0
  br i1 %cmp345, label %if.then.347, label %if.else.352

if.then.347:                                      ; preds = %sw.bb.332
  %291 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %292 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %293 = bitcast %struct.gx_device_printer_s* %292 to %struct.gx_device_pjxl_s*
  %rendertype348 = getelementptr inbounds %struct.gx_device_pjxl_s, %struct.gx_device_pjxl_s* %293, i32 0, i32 72
  %294 = load i32, i32* %rendertype348, align 4, !tbaa !64
  %call349 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %291, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.86, i32 0, i32 0), i32 %294) #5
  %295 = load i8*, i8** %cid_string, align 8, !tbaa !1
  %296 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call350 = call i32 @fputs(i8* %295, %struct._IO_FILE* %296) #5
  %297 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %298 = load i32, i32* %raster_width, align 4, !tbaa !5
  %call351 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %297, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.87, i32 0, i32 0), i32 %298) #5
  br label %if.end.354

if.else.352:                                      ; preds = %sw.bb.332
  %299 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %300 = load i32, i32* %raster_width, align 4, !tbaa !5
  %301 = load i32, i32* %num_comps, align 4, !tbaa !5
  %call353 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %299, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.88, i32 0, i32 0), i32 %300, i32 %301) #5
  br label %if.end.354

if.end.354:                                       ; preds = %if.else.352, %if.then.347
  br label %sw.epilog.402

sw.bb.355:                                        ; preds = %if.end.234, %if.end.234
  %302 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call356 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %302, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.89, i32 0, i32 0)) #5
  %303 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %304 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %HWMargins357 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %304, i32 0, i32 25
  %arrayidx358 = getelementptr inbounds [4 x float], [4 x float]* %HWMargins357, i32 0, i64 3
  %305 = load float, float* %arrayidx358, align 4, !tbaa !36
  %conv359 = fpext float %305 to double
  %div360 = fdiv double %conv359, 7.200000e+01
  %sub361 = fsub double %div360, 0.000000e+00
  %mul362 = fmul double 7.200000e+02, %sub361
  %conv363 = fptosi double %mul362 to i32
  %call364 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %303, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.90, i32 0, i32 0), i32 %conv363) #5
  %306 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %307 = load i32, i32* %raster_width, align 4, !tbaa !5
  %308 = load i32, i32* %num_comps, align 4, !tbaa !5
  %call365 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %306, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.88, i32 0, i32 0), i32 %307, i32 %308) #5
  %309 = load i32, i32* %ptype.addr, align 4, !tbaa !5
  %cmp366 = icmp eq i32 %309, 6
  br i1 %cmp366, label %if.then.368, label %if.end.369

if.then.368:                                      ; preds = %sw.bb.355
  store i32 0, i32* %combined_escapes, align 4, !tbaa !5
  store i32 4, i32* %ptype.addr, align 4, !tbaa !5
  br label %if.end.369

if.end.369:                                       ; preds = %if.then.368, %sw.bb.355
  store i32 1, i32* %compression, align 4, !tbaa !5
  br label %sw.epilog.402

sw.bb.370:                                        ; preds = %if.end.234
  %310 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %HWMargins371 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %310, i32 0, i32 25
  %arrayidx372 = getelementptr inbounds [4 x float], [4 x float]* %HWMargins371, i32 0, i64 3
  %311 = load float, float* %arrayidx372, align 4, !tbaa !36
  %conv373 = fpext float %311 to double
  %div374 = fdiv double %conv373, 7.200000e+01
  %sub375 = fsub double %div374, 3.350000e-01
  %mul376 = fmul double %sub375, 3.600000e+02
  %conv377 = fptosi double %mul376 to i32
  %tobool378 = icmp ne i32 %conv377, 0
  br i1 %tobool378, label %if.then.379, label %if.end.388

if.then.379:                                      ; preds = %sw.bb.370
  %312 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %313 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %HWMargins380 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %313, i32 0, i32 25
  %arrayidx381 = getelementptr inbounds [4 x float], [4 x float]* %HWMargins380, i32 0, i64 3
  %314 = load float, float* %arrayidx381, align 4, !tbaa !36
  %conv382 = fpext float %314 to double
  %div383 = fdiv double %conv382, 7.200000e+01
  %sub384 = fsub double %div383, 3.350000e-01
  %mul385 = fmul double 3.600000e+02, %sub384
  %conv386 = fptosi double %mul385 to i32
  %call387 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %312, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.91, i32 0, i32 0), i32 0, i32 %conv386) #5
  br label %if.end.388

if.end.388:                                       ; preds = %if.then.379, %sw.bb.370
  store i32 0, i32* %combined_escapes, align 4, !tbaa !5
  br label %sw.epilog.402

sw.bb.389:                                        ; preds = %if.end.234, %if.end.234
  %315 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %HWResolution390 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %315, i32 0, i32 22
  %arrayidx391 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution390, i32 0, i64 1
  %316 = load float, float* %arrayidx391, align 4, !tbaa !36
  %conv392 = fpext float %316 to double
  %317 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %HWMargins393 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %317, i32 0, i32 25
  %arrayidx394 = getelementptr inbounds [4 x float], [4 x float]* %HWMargins393, i32 0, i64 3
  %318 = load float, float* %arrayidx394, align 4, !tbaa !36
  %conv395 = fpext float %318 to double
  %div396 = fdiv double %conv395, 7.200000e+01
  %319 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %320 = bitcast %struct.gx_device_printer_s* %319 to %struct.gx_device_bjc800_s*
  %printLimit = getelementptr inbounds %struct.gx_device_bjc800_s, %struct.gx_device_bjc800_s* %320, i32 0, i32 72
  %321 = load float, float* %printLimit, align 4, !tbaa !37
  %conv397 = fpext float %321 to double
  %sub398 = fsub double %div396, %conv397
  %mul399 = fmul double %conv392, %sub398
  %conv400 = fptosi double %mul399 to i32
  %322 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %323 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call401 = call i32 @bjc_v_skip(i32 %conv400, %struct.gx_device_printer_s* %322, %struct._IO_FILE* %323) #5
  store i32 0, i32* %combined_escapes, align 4, !tbaa !5
  store i32 2, i32* %compression, align 4, !tbaa !5
  br label %sw.epilog.402

sw.epilog.402:                                    ; preds = %if.end.234, %sw.bb.389, %if.end.388, %if.end.369, %if.end.354, %if.end.331, %if.end.305, %sw.bb.253, %sw.bb.242, %sw.bb.238
  %324 = load i32, i32* %ptype.addr, align 4, !tbaa !5
  %cmp403 = icmp eq i32 %324, 2
  br i1 %cmp403, label %if.then.405, label %if.else.407

if.then.405:                                      ; preds = %sw.epilog.402
  %325 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %326 = load i32, i32* %compression, align 4, !tbaa !5
  %call406 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %325, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.92, i32 0, i32 0), i32 %326) #5
  br label %if.end.429

if.else.407:                                      ; preds = %sw.epilog.402
  %327 = load i32, i32* %combined_escapes, align 4, !tbaa !5
  %tobool408 = icmp ne i32 %327, 0
  br i1 %tobool408, label %if.then.409, label %if.else.415

if.then.409:                                      ; preds = %if.else.407
  %328 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call410 = call i32 @fputs(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.93, i32 0, i32 0), %struct._IO_FILE* %328) #5
  %329 = load i32, i32* %compression, align 4, !tbaa !5
  %tobool411 = icmp ne i32 %329, 0
  br i1 %tobool411, label %if.then.412, label %if.end.414

if.then.412:                                      ; preds = %if.then.409
  %330 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %331 = load i32, i32* %compression, align 4, !tbaa !5
  %call413 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %330, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.94, i32 0, i32 0), i32 %331) #5
  br label %if.end.414

if.end.414:                                       ; preds = %if.then.412, %if.then.409
  br label %if.end.428

if.else.415:                                      ; preds = %if.else.407
  %332 = load i32, i32* %ptype.addr, align 4, !tbaa !5
  %cmp416 = icmp eq i32 %332, 10
  br i1 %cmp416, label %if.then.421, label %lor.lhs.false.418

lor.lhs.false.418:                                ; preds = %if.else.415
  %333 = load i32, i32* %ptype.addr, align 4, !tbaa !5
  %cmp419 = icmp eq i32 %333, 11
  br i1 %cmp419, label %if.then.421, label %if.else.422

if.then.421:                                      ; preds = %lor.lhs.false.418, %if.else.415
  br label %if.end.427

if.else.422:                                      ; preds = %lor.lhs.false.418
  %334 = load i32, i32* %compression, align 4, !tbaa !5
  %tobool423 = icmp ne i32 %334, 0
  br i1 %tobool423, label %if.then.424, label %if.end.426

if.then.424:                                      ; preds = %if.else.422
  %335 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %336 = load i32, i32* %compression, align 4, !tbaa !5
  %call425 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %335, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.95, i32 0, i32 0), i32 %336) #5
  br label %if.end.426

if.end.426:                                       ; preds = %if.then.424, %if.else.422
  br label %if.end.427

if.end.427:                                       ; preds = %if.end.426, %if.then.421
  br label %if.end.428

if.end.428:                                       ; preds = %if.end.427, %if.end.414
  br label %if.end.429

if.end.429:                                       ; preds = %if.end.428, %if.then.405
  %337 = bitcast i32* %cErr to i8*
  call void @llvm.lifetime.start(i64 4, i8* %337) #2
  %338 = bitcast i32* %mErr to i8*
  call void @llvm.lifetime.start(i64 4, i8* %338) #2
  %339 = bitcast i32* %yErr to i8*
  call void @llvm.lifetime.start(i64 4, i8* %339) #2
  %340 = bitcast i32* %kErr to i8*
  call void @llvm.lifetime.start(i64 4, i8* %340) #2
  %341 = bitcast i32* %this_pass to i8*
  call void @llvm.lifetime.start(i64 4, i8* %341) #2
  %342 = bitcast i32* %lnum to i8*
  call void @llvm.lifetime.start(i64 4, i8* %342) #2
  %343 = bitcast i32* %i430 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %343) #2
  %344 = bitcast i32* %start_rows to i8*
  call void @llvm.lifetime.start(i64 4, i8* %344) #2
  %345 = bitcast i32* %lend to i8*
  call void @llvm.lifetime.start(i64 4, i8* %345) #2
  %346 = bitcast i32* %num_blank_lines to i8*
  call void @llvm.lifetime.start(i64 4, i8* %346) #2
  store i32 0, i32* %num_blank_lines, align 4, !tbaa !5
  %347 = bitcast i64* %rmask to i8*
  call void @llvm.lifetime.start(i64 8, i8* %347) #2
  %348 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %width431 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %348, i32 0, i32 13
  %349 = load i32, i32* %width431, align 4, !tbaa !103
  %sub432 = sub nsw i32 0, %349
  %350 = load i32, i32* %storage_bpp, align 4, !tbaa !5
  %mul433 = mul nsw i32 %sub432, %350
  %and434 = and i32 %mul433, 63
  %sh_prom = zext i32 %and434 to i64
  %shl = shl i64 -1, %sh_prom
  store i64 %shl, i64* %rmask, align 8, !tbaa !28
  %351 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %height435 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %351, i32 0, i32 14
  %352 = load i32, i32* %height435, align 4, !tbaa !102
  %353 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %HWMargins436 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %353, i32 0, i32 25
  %arrayidx437 = getelementptr inbounds [4 x float], [4 x float]* %HWMargins436, i32 0, i64 3
  %354 = load float, float* %arrayidx437, align 4, !tbaa !36
  %conv438 = fpext float %354 to double
  %div439 = fdiv double %conv438, 7.200000e+01
  %355 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %HWMargins440 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %355, i32 0, i32 25
  %arrayidx441 = getelementptr inbounds [4 x float], [4 x float]* %HWMargins440, i32 0, i64 1
  %356 = load float, float* %arrayidx441, align 4, !tbaa !36
  %conv442 = fpext float %356 to double
  %div443 = fdiv double %conv442, 7.200000e+01
  %add444 = fadd double %div439, %div443
  %357 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %HWResolution445 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %357, i32 0, i32 22
  %arrayidx446 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution445, i32 0, i64 1
  %358 = load float, float* %arrayidx446, align 4, !tbaa !36
  %conv447 = fpext float %358 to double
  %mul448 = fmul double %add444, %conv447
  %conv449 = fptosi double %mul448 to i32
  %sub450 = sub nsw i32 %352, %conv449
  store i32 %sub450, i32* %lend, align 4, !tbaa !5
  %359 = load i32, i32* %ptype.addr, align 4, !tbaa !5
  switch i32 %359, label %sw.default [
    i32 10, label %sw.bb.451
    i32 11, label %sw.bb.451
    i32 4, label %sw.bb.452
    i32 5, label %sw.bb.452
    i32 3, label %sw.bb.452
  ]

sw.bb.451:                                        ; preds = %if.end.429, %if.end.429
  store i32 64, i32* %start_rows, align 4, !tbaa !5
  br label %sw.epilog.456

sw.bb.452:                                        ; preds = %if.end.429, %if.end.429, %if.end.429
  store i32 -1, i32* %start_rows, align 4, !tbaa !5
  br label %sw.epilog.456

sw.default:                                       ; preds = %if.end.429
  %360 = load i32, i32* %num_comps, align 4, !tbaa !5
  %cmp453 = icmp eq i32 %360, 1
  %cond455 = select i1 %cmp453, i32 49, i32 15
  store i32 %cond455, i32* %start_rows, align 4, !tbaa !5
  br label %sw.epilog.456

sw.epilog.456:                                    ; preds = %sw.default, %sw.bb.452, %sw.bb.451
  store i32 0, i32* %kErr, align 4, !tbaa !5
  store i32 0, i32* %yErr, align 4, !tbaa !5
  store i32 0, i32* %mErr, align 4, !tbaa !5
  store i32 0, i32* %cErr, align 4, !tbaa !5
  %361 = load i32, i32* %bits_per_pixel, align 4, !tbaa !5
  %cmp457 = icmp sgt i32 %361, 4
  br i1 %cmp457, label %if.then.459, label %if.end.484

if.then.459:                                      ; preds = %sw.epilog.456
  %362 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %363 = bitcast %struct.gx_device_printer_s* %362 to %struct.gx_device_colour_prn*
  %cmyk460 = getelementptr inbounds %struct.gx_device_colour_prn, %struct.gx_device_colour_prn* %363, i32 0, i32 68
  %364 = load i16, i16* %cmyk460, align 2, !tbaa !38
  %conv461 = sext i16 %364 to i32
  %cmp462 = icmp sgt i32 %conv461, 0
  br i1 %cmp462, label %land.lhs.true.464, label %if.else.471

land.lhs.true.464:                                ; preds = %if.then.459
  %365 = load i32, i32* %expanded_bpp, align 4, !tbaa !5
  %cmp465 = icmp eq i32 %365, 32
  br i1 %cmp465, label %if.then.467, label %if.else.471

if.then.467:                                      ; preds = %land.lhs.true.464
  %arraydecay = getelementptr inbounds [4 x i8*], [4 x i8*]* %data, i32 0, i32 0
  %arraydecay468 = getelementptr inbounds [4 x [4 x i8*]], [4 x [4 x i8*]]* %plane_data, i32 0, i32 0
  %arraydecay469 = getelementptr inbounds [2 x i32*], [2 x i32*]* %errors, i32 0, i32 0
  %366 = load i32, i32* %plane_size, align 4, !tbaa !5
  %call470 = call i32 @bjc_fscmyk(i8** %arraydecay, [4 x i8*]* %arraydecay468, i32** %arraydecay469, i32 %366, i32 -1) #5
  br label %if.end.483

if.else.471:                                      ; preds = %land.lhs.true.464, %if.then.459
  %367 = bitcast i32** %ep to i8*
  call void @llvm.lifetime.start(i64 8, i8* %367) #2
  %arrayidx472 = getelementptr inbounds [2 x i32*], [2 x i32*]* %errors, i32 0, i64 0
  %368 = load i32*, i32** %arrayidx472, align 8, !tbaa !1
  store i32* %368, i32** %ep, align 8, !tbaa !1
  store i32 0, i32* %i430, align 4, !tbaa !5
  br label %for.cond.473

for.cond.473:                                     ; preds = %for.inc.480, %if.else.471
  %369 = load i32, i32* %i430, align 4, !tbaa !5
  %370 = load i32, i32* %databuff_size, align 4, !tbaa !5
  %cmp474 = icmp slt i32 %369, %370
  br i1 %cmp474, label %for.body.476, label %for.end.482

for.body.476:                                     ; preds = %for.cond.473
  %call477 = call i32 @rand() #7
  %shl478 = shl i32 %call477, 16
  %rem = srem i32 %shl478, 66846720
  %sub479 = sub nsw i32 %rem, 33423360
  %371 = load i32*, i32** %ep, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i32, i32* %371, i32 1
  store i32* %incdec.ptr, i32** %ep, align 8, !tbaa !1
  store i32 %sub479, i32* %371, align 4, !tbaa !5
  br label %for.inc.480

for.inc.480:                                      ; preds = %for.body.476
  %372 = load i32, i32* %i430, align 4, !tbaa !5
  %inc481 = add nsw i32 %372, 1
  store i32 %inc481, i32* %i430, align 4, !tbaa !5
  br label %for.cond.473

for.end.482:                                      ; preds = %for.cond.473
  %373 = bitcast i32** %ep to i8*
  call void @llvm.lifetime.end(i64 8, i8* %373) #2
  br label %if.end.483

if.end.483:                                       ; preds = %for.end.482, %if.then.467
  br label %if.end.484

if.end.484:                                       ; preds = %if.end.483, %sw.epilog.456
  %374 = load i32, i32* %start_rows, align 4, !tbaa !5
  store i32 %374, i32* %this_pass, align 4, !tbaa !5
  store i32 0, i32* %lnum, align 4, !tbaa !5
  br label %for.cond.485

for.cond.485:                                     ; preds = %for.inc.1718, %if.end.484
  %375 = load i32, i32* %lnum, align 4, !tbaa !5
  %376 = load i32, i32* %lend, align 4, !tbaa !5
  %cmp486 = icmp slt i32 %375, %376
  br i1 %cmp486, label %for.body.488, label %for.end.1720

for.body.488:                                     ; preds = %for.cond.485
  %377 = bitcast i64** %data_words to i8*
  call void @llvm.lifetime.start(i64 8, i8* %377) #2
  %378 = load i32, i32* %scan, align 4, !tbaa !5
  %idxprom489 = sext i32 %378 to i64
  %arrayidx490 = getelementptr inbounds [4 x i8*], [4 x i8*]* %data, i32 0, i64 %idxprom489
  %379 = load i8*, i8** %arrayidx490, align 8, !tbaa !1
  %380 = bitcast i8* %379 to i64*
  store i64* %380, i64** %data_words, align 8, !tbaa !1
  %381 = bitcast i64** %end_data to i8*
  call void @llvm.lifetime.start(i64 8, i8* %381) #2
  %382 = load i64*, i64** %data_words, align 8, !tbaa !1
  %383 = load i32, i32* %line_size_words, align 4, !tbaa !5
  %idx.ext491 = sext i32 %383 to i64
  %add.ptr492 = getelementptr inbounds i64, i64* %382, i64 %idx.ext491
  store i64* %add.ptr492, i64** %end_data, align 8, !tbaa !1
  %384 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %385 = load i32, i32* %lnum, align 4, !tbaa !5
  %386 = load i32, i32* %scan, align 4, !tbaa !5
  %idxprom493 = sext i32 %386 to i64
  %arrayidx494 = getelementptr inbounds [4 x i8*], [4 x i8*]* %data, i32 0, i64 %idxprom493
  %387 = load i8*, i8** %arrayidx494, align 8, !tbaa !1
  %388 = load i32, i32* %line_size, align 4, !tbaa !5
  %call495 = call i32 @gdev_prn_copy_scan_lines(%struct.gx_device_printer_s* %384, i32 %385, i8* %387, i32 %388) #5
  %389 = load i64, i64* %rmask, align 8, !tbaa !28
  %390 = load i64*, i64** %end_data, align 8, !tbaa !1
  %arrayidx496 = getelementptr inbounds i64, i64* %390, i64 -1
  %391 = load i64, i64* %arrayidx496, align 8, !tbaa !28
  %and497 = and i64 %391, %389
  store i64 %and497, i64* %arrayidx496, align 8, !tbaa !28
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.body.488
  %392 = load i64*, i64** %end_data, align 8, !tbaa !1
  %393 = load i64*, i64** %data_words, align 8, !tbaa !1
  %cmp498 = icmp ugt i64* %392, %393
  br i1 %cmp498, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %394 = load i64*, i64** %end_data, align 8, !tbaa !1
  %arrayidx500 = getelementptr inbounds i64, i64* %394, i64 -1
  %395 = load i64, i64* %arrayidx500, align 8, !tbaa !28
  %cmp501 = icmp eq i64 %395, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %396 = phi i1 [ false, %while.cond ], [ %cmp501, %land.rhs ]
  br i1 %396, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %397 = load i64*, i64** %end_data, align 8, !tbaa !1
  %incdec.ptr503 = getelementptr inbounds i64, i64* %397, i32 -1
  store i64* %incdec.ptr503, i64** %end_data, align 8, !tbaa !1
  br label %while.cond

while.end:                                        ; preds = %land.end
  %398 = load i32, i32* %ptype.addr, align 4, !tbaa !5
  %cmp504 = icmp ne i32 %398, 7
  br i1 %cmp504, label %if.then.506, label %if.end.512

if.then.506:                                      ; preds = %while.end
  %399 = load i64*, i64** %end_data, align 8, !tbaa !1
  %400 = load i64*, i64** %data_words, align 8, !tbaa !1
  %cmp507 = icmp eq i64* %399, %400
  br i1 %cmp507, label %if.then.509, label %if.end.511

if.then.509:                                      ; preds = %if.then.506
  %401 = load i32, i32* %num_blank_lines, align 4, !tbaa !5
  %inc510 = add nsw i32 %401, 1
  store i32 %inc510, i32* %num_blank_lines, align 4, !tbaa !5
  store i32 22, i32* %cleanup.dest.slot
  br label %cleanup

if.end.511:                                       ; preds = %if.then.506
  br label %if.end.512

if.end.512:                                       ; preds = %if.end.511, %while.end
  %402 = load i32, i32* %num_blank_lines, align 4, !tbaa !5
  %cmp513 = icmp sgt i32 %402, 0
  br i1 %cmp513, label %if.then.515, label %if.end.584

if.then.515:                                      ; preds = %if.end.512
  %403 = load i32, i32* %ptype.addr, align 4, !tbaa !5
  %cmp516 = icmp eq i32 %403, 2
  br i1 %cmp516, label %if.then.518, label %if.else.523

if.then.518:                                      ; preds = %if.then.515
  %404 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %405 = load i32, i32* %num_blank_lines, align 4, !tbaa !5
  %and519 = and i32 %405, 255
  %406 = load i32, i32* %num_blank_lines, align 4, !tbaa !5
  %shr520 = ashr i32 %406, 8
  %and521 = and i32 %shr520, 255
  %call522 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %404, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.96, i32 0, i32 0), i32 %and519, i32 %and521) #5
  br label %if.end.576

if.else.523:                                      ; preds = %if.then.515
  %407 = load i32, i32* %ptype.addr, align 4, !tbaa !5
  %cmp524 = icmp eq i32 %407, 9
  br i1 %cmp524, label %if.then.526, label %if.else.528

if.then.526:                                      ; preds = %if.else.523
  %408 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %409 = load i32, i32* %num_blank_lines, align 4, !tbaa !5
  %call527 = call i32 @ep_print_image(%struct._IO_FILE* %408, %struct.ep_globals* %eg, i8 signext 66, i8* null, i32 %409) #5
  br label %if.end.575

if.else.528:                                      ; preds = %if.else.523
  %410 = load i32, i32* %ptype.addr, align 4, !tbaa !5
  %cmp529 = icmp eq i32 %410, 10
  br i1 %cmp529, label %if.then.534, label %lor.lhs.false.531

lor.lhs.false.531:                                ; preds = %if.else.528
  %411 = load i32, i32* %ptype.addr, align 4, !tbaa !5
  %cmp532 = icmp eq i32 %411, 11
  br i1 %cmp532, label %if.then.534, label %if.else.536

if.then.534:                                      ; preds = %lor.lhs.false.531, %if.else.528
  %412 = load i32, i32* %num_blank_lines, align 4, !tbaa !5
  %413 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %414 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call535 = call i32 @bjc_v_skip(i32 %412, %struct.gx_device_printer_s* %413, %struct._IO_FILE* %414) #5
  br label %if.end.574

if.else.536:                                      ; preds = %lor.lhs.false.531
  %415 = load i32, i32* %num_blank_lines, align 4, !tbaa !5
  %416 = load i32, i32* %this_pass, align 4, !tbaa !5
  %cmp537 = icmp slt i32 %415, %416
  br i1 %cmp537, label %if.then.539, label %if.else.566

if.then.539:                                      ; preds = %if.else.536
  %417 = load i32, i32* %num_blank_lines, align 4, !tbaa !5
  %418 = load i32, i32* %this_pass, align 4, !tbaa !5
  %sub540 = sub nsw i32 %418, %417
  store i32 %sub540, i32* %this_pass, align 4, !tbaa !5
  %419 = load i32, i32* %combined_escapes, align 4, !tbaa !5
  %tobool541 = icmp ne i32 %419, 0
  br i1 %tobool541, label %if.then.542, label %if.else.550

if.then.542:                                      ; preds = %if.then.539
  %420 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call543 = call i32 @fputc(i32 121, %struct._IO_FILE* %420) #5
  br label %for.cond.544

for.cond.544:                                     ; preds = %for.inc.548, %if.then.542
  %421 = load i32, i32* %num_blank_lines, align 4, !tbaa !5
  %tobool545 = icmp ne i32 %421, 0
  br i1 %tobool545, label %for.body.546, label %for.end.549

for.body.546:                                     ; preds = %for.cond.544
  %422 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call547 = call i32 @fputc(i32 119, %struct._IO_FILE* %422) #5
  br label %for.inc.548

for.inc.548:                                      ; preds = %for.body.546
  %423 = load i32, i32* %num_blank_lines, align 4, !tbaa !5
  %dec = add nsw i32 %423, -1
  store i32 %dec, i32* %num_blank_lines, align 4, !tbaa !5
  br label %for.cond.544

for.end.549:                                      ; preds = %for.cond.544
  br label %if.end.565

if.else.550:                                      ; preds = %if.then.539
  %424 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call551 = call i32 @fputs(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.97, i32 0, i32 0), %struct._IO_FILE* %424) #5
  %425 = load i32, i32* %ptype.addr, align 4, !tbaa !5
  %cmp552 = icmp eq i32 %425, 7
  br i1 %cmp552, label %if.then.554, label %if.else.556

if.then.554:                                      ; preds = %if.else.550
  %426 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %427 = load i32, i32* %num_blank_lines, align 4, !tbaa !5
  %call555 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %426, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.98, i32 0, i32 0), i32 %427) #5
  store i32 0, i32* %num_blank_lines, align 4, !tbaa !5
  br label %if.end.564

if.else.556:                                      ; preds = %if.else.550
  br label %for.cond.557

for.cond.557:                                     ; preds = %for.inc.561, %if.else.556
  %428 = load i32, i32* %num_blank_lines, align 4, !tbaa !5
  %tobool558 = icmp ne i32 %428, 0
  br i1 %tobool558, label %for.body.559, label %for.end.563

for.body.559:                                     ; preds = %for.cond.557
  %429 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call560 = call i32 @fputs(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.99, i32 0, i32 0), %struct._IO_FILE* %429) #5
  br label %for.inc.561

for.inc.561:                                      ; preds = %for.body.559
  %430 = load i32, i32* %num_blank_lines, align 4, !tbaa !5
  %dec562 = add nsw i32 %430, -1
  store i32 %dec562, i32* %num_blank_lines, align 4, !tbaa !5
  br label %for.cond.557

for.end.563:                                      ; preds = %for.cond.557
  br label %if.end.564

if.end.564:                                       ; preds = %for.end.563, %if.then.554
  br label %if.end.565

if.end.565:                                       ; preds = %if.end.564, %for.end.549
  br label %if.end.573

if.else.566:                                      ; preds = %if.else.536
  %431 = load i32, i32* %combined_escapes, align 4, !tbaa !5
  %tobool567 = icmp ne i32 %431, 0
  br i1 %tobool567, label %if.then.568, label %if.else.570

if.then.568:                                      ; preds = %if.else.566
  %432 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %433 = load i32, i32* %num_blank_lines, align 4, !tbaa !5
  %call569 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %432, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.100, i32 0, i32 0), i32 %433) #5
  br label %if.end.572

if.else.570:                                      ; preds = %if.else.566
  %434 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %435 = load i32, i32* %num_blank_lines, align 4, !tbaa !5
  %call571 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %434, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.98, i32 0, i32 0), i32 %435) #5
  br label %if.end.572

if.end.572:                                       ; preds = %if.else.570, %if.then.568
  br label %if.end.573

if.end.573:                                       ; preds = %if.end.572, %if.end.565
  br label %if.end.574

if.end.574:                                       ; preds = %if.end.573, %if.then.534
  br label %if.end.575

if.end.575:                                       ; preds = %if.end.574, %if.then.526
  br label %if.end.576

if.end.576:                                       ; preds = %if.end.575, %if.then.518
  %436 = load i32, i32* %scan, align 4, !tbaa !5
  %sub577 = sub nsw i32 1, %436
  %idxprom578 = sext i32 %sub577 to i64
  %arrayidx579 = getelementptr inbounds [4 x [4 x i8*]], [4 x [4 x i8*]]* %plane_data, i32 0, i64 %idxprom578
  %arrayidx580 = getelementptr inbounds [4 x i8*], [4 x i8*]* %arrayidx579, i32 0, i64 0
  %437 = load i8*, i8** %arrayidx580, align 8, !tbaa !1
  %438 = load i32, i32* %plane_size, align 4, !tbaa !5
  %439 = load i32, i32* %num_comps, align 4, !tbaa !5
  %mul581 = mul nsw i32 %438, %439
  %conv582 = sext i32 %mul581 to i64
  %call583 = call i8* @memset(i8* %437, i32 0, i64 %conv582) #7
  store i32 0, i32* %num_blank_lines, align 4, !tbaa !5
  %440 = load i32, i32* %start_rows, align 4, !tbaa !5
  store i32 %440, i32* %this_pass, align 4, !tbaa !5
  br label %if.end.584

if.end.584:                                       ; preds = %if.end.576, %if.end.512
  %441 = bitcast i8** %kP to i8*
  call void @llvm.lifetime.start(i64 8, i8* %441) #2
  %442 = load i32, i32* %scan, align 4, !tbaa !5
  %add585 = add nsw i32 %442, 2
  %idxprom586 = sext i32 %add585 to i64
  %arrayidx587 = getelementptr inbounds [4 x [4 x i8*]], [4 x [4 x i8*]]* %plane_data, i32 0, i64 %idxprom586
  %arrayidx588 = getelementptr inbounds [4 x i8*], [4 x i8*]* %arrayidx587, i32 0, i64 3
  %443 = load i8*, i8** %arrayidx588, align 8, !tbaa !1
  store i8* %443, i8** %kP, align 8, !tbaa !1
  %444 = bitcast i8** %cP to i8*
  call void @llvm.lifetime.start(i64 8, i8* %444) #2
  %445 = load i32, i32* %scan, align 4, !tbaa !5
  %add589 = add nsw i32 %445, 2
  %idxprom590 = sext i32 %add589 to i64
  %arrayidx591 = getelementptr inbounds [4 x [4 x i8*]], [4 x [4 x i8*]]* %plane_data, i32 0, i64 %idxprom590
  %arrayidx592 = getelementptr inbounds [4 x i8*], [4 x i8*]* %arrayidx591, i32 0, i64 2
  %446 = load i8*, i8** %arrayidx592, align 8, !tbaa !1
  store i8* %446, i8** %cP, align 8, !tbaa !1
  %447 = bitcast i8** %mP to i8*
  call void @llvm.lifetime.start(i64 8, i8* %447) #2
  %448 = load i32, i32* %scan, align 4, !tbaa !5
  %add593 = add nsw i32 %448, 2
  %idxprom594 = sext i32 %add593 to i64
  %arrayidx595 = getelementptr inbounds [4 x [4 x i8*]], [4 x [4 x i8*]]* %plane_data, i32 0, i64 %idxprom594
  %arrayidx596 = getelementptr inbounds [4 x i8*], [4 x i8*]* %arrayidx595, i32 0, i64 1
  %449 = load i8*, i8** %arrayidx596, align 8, !tbaa !1
  store i8* %449, i8** %mP, align 8, !tbaa !1
  %450 = bitcast i8** %yP to i8*
  call void @llvm.lifetime.start(i64 8, i8* %450) #2
  %451 = load i32, i32* %scan, align 4, !tbaa !5
  %add597 = add nsw i32 %451, 2
  %idxprom598 = sext i32 %add597 to i64
  %arrayidx599 = getelementptr inbounds [4 x [4 x i8*]], [4 x [4 x i8*]]* %plane_data, i32 0, i64 %idxprom598
  %arrayidx600 = getelementptr inbounds [4 x i8*], [4 x i8*]* %arrayidx599, i32 0, i64 0
  %452 = load i8*, i8** %arrayidx600, align 8, !tbaa !1
  store i8* %452, i8** %yP, align 8, !tbaa !1
  %453 = bitcast i8** %dp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %453) #2
  %454 = load i32, i32* %scan, align 4, !tbaa !5
  %add601 = add nsw i32 %454, 2
  %idxprom602 = sext i32 %add601 to i64
  %arrayidx603 = getelementptr inbounds [4 x i8*], [4 x i8*]* %data, i32 0, i64 %idxprom602
  %455 = load i8*, i8** %arrayidx603, align 8, !tbaa !1
  store i8* %455, i8** %dp, align 8, !tbaa !1
  %456 = bitcast i32** %ep604 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %456) #2
  %457 = load i32, i32* %scan, align 4, !tbaa !5
  %idxprom605 = sext i32 %457 to i64
  %arrayidx606 = getelementptr inbounds [2 x i32*], [2 x i32*]* %errors, i32 0, i64 %idxprom605
  %458 = load i32*, i32** %arrayidx606, align 8, !tbaa !1
  store i32* %458, i32** %ep604, align 8, !tbaa !1
  %459 = bitcast i32* %zero_row_count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %459) #2
  %460 = bitcast i32* %i607 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %460) #2
  %461 = bitcast i32* %j608 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %461) #2
  %462 = bitcast i8** %odp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %462) #2
  %463 = load i32, i32* %this_pass, align 4, !tbaa !5
  %tobool609 = icmp ne i32 %463, 0
  br i1 %tobool609, label %if.then.610, label %if.else.612

if.then.610:                                      ; preds = %if.end.584
  %464 = load i32, i32* %this_pass, align 4, !tbaa !5
  %dec611 = add nsw i32 %464, -1
  store i32 %dec611, i32* %this_pass, align 4, !tbaa !5
  br label %if.end.613

if.else.612:                                      ; preds = %if.end.584
  %465 = load i32, i32* %start_rows, align 4, !tbaa !5
  store i32 %465, i32* %this_pass, align 4, !tbaa !5
  br label %if.end.613

if.end.613:                                       ; preds = %if.else.612, %if.then.610
  %466 = load i32, i32* %expanded_bpp, align 4, !tbaa !5
  %467 = load i32, i32* %bits_per_pixel, align 4, !tbaa !5
  %cmp614 = icmp sgt i32 %466, %467
  br i1 %cmp614, label %if.then.616, label %if.end.618

if.then.616:                                      ; preds = %if.end.613
  %468 = load i64*, i64** %data_words, align 8, !tbaa !1
  %469 = load i32, i32* %line_size, align 4, !tbaa !5
  %470 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %471 = bitcast %struct.gx_device_printer_s* %470 to %struct.gx_device_colour_prn*
  %cmyk617 = getelementptr inbounds %struct.gx_device_colour_prn, %struct.gx_device_colour_prn* %471, i32 0, i32 68
  %472 = load i16, i16* %cmyk617, align 2, !tbaa !38
  %473 = load i32, i32* %bits_per_pixel, align 4, !tbaa !5
  %474 = load i32, i32* %expanded_bpp, align 4, !tbaa !5
  call void @cdj_expand_line(i64* %468, i32 %469, i16 signext %472, i32 %473, i32 %474) #5
  br label %if.end.618

if.end.618:                                       ; preds = %if.then.616, %if.end.613
  %475 = load i32, i32* %expanded_bpp, align 4, !tbaa !5
  switch i32 %475, label %sw.epilog.1405 [
    i32 3, label %sw.bb.619
    i32 8, label %sw.bb.683
    i32 24, label %sw.bb.868
    i32 32, label %sw.bb.1098
  ]

sw.bb.619:                                        ; preds = %if.end.618
  store i32 0, i32* %i607, align 4, !tbaa !5
  %476 = load i32, i32* %scan, align 4, !tbaa !5
  %idxprom620 = sext i32 %476 to i64
  %arrayidx621 = getelementptr inbounds [4 x [4 x i8*]], [4 x [4 x i8*]]* %plane_data, i32 0, i64 %idxprom620
  %arrayidx622 = getelementptr inbounds [4 x i8*], [4 x i8*]* %arrayidx621, i32 0, i64 0
  %477 = load i8*, i8** %arrayidx622, align 8, !tbaa !1
  store i8* %477, i8** %odp, align 8, !tbaa !1
  br label %for.cond.623

for.cond.623:                                     ; preds = %for.inc.679, %sw.bb.619
  %478 = load i32, i32* %i607, align 4, !tbaa !5
  %479 = load i32, i32* %databuff_size, align 4, !tbaa !5
  %cmp624 = icmp slt i32 %478, %479
  br i1 %cmp624, label %for.body.626, label %for.end.682

for.body.626:                                     ; preds = %for.cond.623
  %480 = bitcast i8** %dp627 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %480) #2
  %481 = load i32, i32* %scan, align 4, !tbaa !5
  %idxprom628 = sext i32 %481 to i64
  %arrayidx629 = getelementptr inbounds [4 x i8*], [4 x i8*]* %data, i32 0, i64 %idxprom628
  %482 = load i8*, i8** %arrayidx629, align 8, !tbaa !1
  %483 = load i32, i32* %i607, align 4, !tbaa !5
  %idx.ext630 = sext i32 %483 to i64
  %add.ptr631 = getelementptr inbounds i8, i8* %482, i64 %idx.ext630
  store i8* %add.ptr631, i8** %dp627, align 8, !tbaa !1
  %484 = bitcast i64* %pword to i8*
  call void @llvm.lifetime.start(i64 8, i8* %484) #2
  %485 = load i8*, i8** %dp627, align 8, !tbaa !1
  %arrayidx632 = getelementptr inbounds i8, i8* %485, i64 0
  %486 = load i8, i8* %arrayidx632, align 1, !tbaa !48
  %idxprom633 = zext i8 %486 to i64
  %arrayidx634 = getelementptr inbounds [8 x i64], [8 x i64]* @hp_colour_print_page.spr40, i32 0, i64 %idxprom633
  %487 = load i64, i64* %arrayidx634, align 8, !tbaa !28
  %shl635 = shl i64 %487, 1
  %488 = load i8*, i8** %dp627, align 8, !tbaa !1
  %arrayidx636 = getelementptr inbounds i8, i8* %488, i64 1
  %489 = load i8, i8* %arrayidx636, align 1, !tbaa !48
  %idxprom637 = zext i8 %489 to i64
  %arrayidx638 = getelementptr inbounds [8 x i64], [8 x i64]* @hp_colour_print_page.spr40, i32 0, i64 %idxprom637
  %490 = load i64, i64* %arrayidx638, align 8, !tbaa !28
  %add639 = add i64 %shl635, %490
  %491 = load i8*, i8** %dp627, align 8, !tbaa !1
  %arrayidx640 = getelementptr inbounds i8, i8* %491, i64 2
  %492 = load i8, i8* %arrayidx640, align 1, !tbaa !48
  %idxprom641 = zext i8 %492 to i64
  %arrayidx642 = getelementptr inbounds [8 x i64], [8 x i64]* @hp_colour_print_page.spr40, i32 0, i64 %idxprom641
  %493 = load i64, i64* %arrayidx642, align 8, !tbaa !28
  %shr643 = lshr i64 %493, 1
  %add644 = add i64 %add639, %shr643
  %494 = load i8*, i8** %dp627, align 8, !tbaa !1
  %arrayidx645 = getelementptr inbounds i8, i8* %494, i64 3
  %495 = load i8, i8* %arrayidx645, align 1, !tbaa !48
  %idxprom646 = zext i8 %495 to i64
  %arrayidx647 = getelementptr inbounds [8 x i64], [8 x i64]* @hp_colour_print_page.spr08, i32 0, i64 %idxprom646
  %496 = load i64, i64* %arrayidx647, align 8, !tbaa !28
  %shl648 = shl i64 %496, 1
  %add649 = add i64 %add644, %shl648
  %497 = load i8*, i8** %dp627, align 8, !tbaa !1
  %arrayidx650 = getelementptr inbounds i8, i8* %497, i64 4
  %498 = load i8, i8* %arrayidx650, align 1, !tbaa !48
  %idxprom651 = zext i8 %498 to i64
  %arrayidx652 = getelementptr inbounds [8 x i64], [8 x i64]* @hp_colour_print_page.spr08, i32 0, i64 %idxprom651
  %499 = load i64, i64* %arrayidx652, align 8, !tbaa !28
  %add653 = add i64 %add649, %499
  %500 = load i8*, i8** %dp627, align 8, !tbaa !1
  %arrayidx654 = getelementptr inbounds i8, i8* %500, i64 5
  %501 = load i8, i8* %arrayidx654, align 1, !tbaa !48
  %idxprom655 = zext i8 %501 to i64
  %arrayidx656 = getelementptr inbounds [8 x i64], [8 x i64]* @hp_colour_print_page.spr08, i32 0, i64 %idxprom655
  %502 = load i64, i64* %arrayidx656, align 8, !tbaa !28
  %shr657 = lshr i64 %502, 1
  %add658 = add i64 %add653, %shr657
  %503 = load i8*, i8** %dp627, align 8, !tbaa !1
  %arrayidx659 = getelementptr inbounds i8, i8* %503, i64 6
  %504 = load i8, i8* %arrayidx659, align 1, !tbaa !48
  %idxprom660 = zext i8 %504 to i64
  %arrayidx661 = getelementptr inbounds [8 x i64], [8 x i64]* @hp_colour_print_page.spr02, i32 0, i64 %idxprom660
  %505 = load i64, i64* %arrayidx661, align 8, !tbaa !28
  %add662 = add i64 %add658, %505
  %506 = load i8*, i8** %dp627, align 8, !tbaa !1
  %arrayidx663 = getelementptr inbounds i8, i8* %506, i64 7
  %507 = load i8, i8* %arrayidx663, align 1, !tbaa !48
  %idxprom664 = zext i8 %507 to i64
  %arrayidx665 = getelementptr inbounds [8 x i64], [8 x i64]* @hp_colour_print_page.spr02, i32 0, i64 %idxprom664
  %508 = load i64, i64* %arrayidx665, align 8, !tbaa !28
  %shr666 = lshr i64 %508, 1
  %add667 = add i64 %add662, %shr666
  store i64 %add667, i64* %pword, align 8, !tbaa !28
  %509 = load i64, i64* %pword, align 8, !tbaa !28
  %shr668 = lshr i64 %509, 16
  %conv669 = trunc i64 %shr668 to i8
  %510 = load i8*, i8** %odp, align 8, !tbaa !1
  %arrayidx670 = getelementptr inbounds i8, i8* %510, i64 0
  store i8 %conv669, i8* %arrayidx670, align 1, !tbaa !48
  %511 = load i64, i64* %pword, align 8, !tbaa !28
  %shr671 = lshr i64 %511, 8
  %conv672 = trunc i64 %shr671 to i8
  %512 = load i32, i32* %plane_size, align 4, !tbaa !5
  %idxprom673 = sext i32 %512 to i64
  %513 = load i8*, i8** %odp, align 8, !tbaa !1
  %arrayidx674 = getelementptr inbounds i8, i8* %513, i64 %idxprom673
  store i8 %conv672, i8* %arrayidx674, align 1, !tbaa !48
  %514 = load i64, i64* %pword, align 8, !tbaa !28
  %conv675 = trunc i64 %514 to i8
  %515 = load i32, i32* %plane_size, align 4, !tbaa !5
  %mul676 = mul nsw i32 %515, 2
  %idxprom677 = sext i32 %mul676 to i64
  %516 = load i8*, i8** %odp, align 8, !tbaa !1
  %arrayidx678 = getelementptr inbounds i8, i8* %516, i64 %idxprom677
  store i8 %conv675, i8* %arrayidx678, align 1, !tbaa !48
  %517 = bitcast i64* %pword to i8*
  call void @llvm.lifetime.end(i64 8, i8* %517) #2
  %518 = bitcast i8** %dp627 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %518) #2
  br label %for.inc.679

for.inc.679:                                      ; preds = %for.body.626
  %519 = load i32, i32* %i607, align 4, !tbaa !5
  %add680 = add nsw i32 %519, 8
  store i32 %add680, i32* %i607, align 4, !tbaa !5
  %520 = load i8*, i8** %odp, align 8, !tbaa !1
  %incdec.ptr681 = getelementptr inbounds i8, i8* %520, i32 1
  store i8* %incdec.ptr681, i8** %odp, align 8, !tbaa !1
  br label %for.cond.623

for.end.682:                                      ; preds = %for.cond.623
  br label %sw.epilog.1405

sw.bb.683:                                        ; preds = %if.end.618
  %521 = load i32, i32* %ptype.addr, align 4, !tbaa !5
  switch i32 %521, label %sw.default.754 [
    i32 10, label %sw.bb.684
    i32 11, label %sw.bb.684
  ]

sw.bb.684:                                        ; preds = %sw.bb.683, %sw.bb.683
  %522 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %523 = bitcast %struct.gx_device_printer_s* %522 to %struct.gx_device_bjc800_s*
  %bjc_p = getelementptr inbounds %struct.gx_device_bjc800_s, %struct.gx_device_bjc800_s* %523, i32 0, i32 73
  %ditheringType = getelementptr inbounds %struct.bjc_params, %struct.bjc_params* %bjc_p, i32 0, i32 5
  %524 = load i32, i32* %ditheringType, align 4, !tbaa !67
  %cmp685 = icmp eq i32 %524, 0
  br i1 %cmp685, label %if.then.687, label %if.end.753

if.then.687:                                      ; preds = %sw.bb.684
  %525 = load i32, i32* %scan, align 4, !tbaa !5
  %cmp688 = icmp eq i32 %525, 0
  br i1 %cmp688, label %if.then.690, label %if.else.718

if.then.690:                                      ; preds = %if.then.687
  store i32 0, i32* %i607, align 4, !tbaa !5
  br label %for.cond.691

for.cond.691:                                     ; preds = %for.inc.715, %if.then.690
  %526 = load i32, i32* %i607, align 4, !tbaa !5
  %527 = load i32, i32* %plane_size, align 4, !tbaa !5
  %cmp692 = icmp slt i32 %526, %527
  br i1 %cmp692, label %for.body.694, label %for.end.717

for.body.694:                                     ; preds = %for.cond.691
  call void @llvm.lifetime.start(i64 1, i8* %c) #2
  call void @llvm.lifetime.start(i64 1, i8* %y) #2
  call void @llvm.lifetime.start(i64 1, i8* %m) #2
  call void @llvm.lifetime.start(i64 1, i8* %k) #2
  call void @llvm.lifetime.start(i64 1, i8* %bitmask) #2
  store i8 -128, i8* %bitmask, align 1, !tbaa !48
  store i8 0, i8* %k, align 1, !tbaa !48
  store i8 0, i8* %y, align 1, !tbaa !48
  store i8 0, i8* %m, align 1, !tbaa !48
  store i8 0, i8* %c, align 1, !tbaa !48
  br label %for.cond.695

for.cond.695:                                     ; preds = %for.inc.709, %for.body.694
  %528 = load i8, i8* %bitmask, align 1, !tbaa !48
  %conv696 = zext i8 %528 to i32
  %cmp697 = icmp ne i32 %conv696, 0
  br i1 %cmp697, label %for.body.699, label %for.end.713

for.body.699:                                     ; preds = %for.cond.695
  %529 = load i8*, i8** %dp, align 8, !tbaa !1
  %arrayidx700 = getelementptr inbounds i8, i8* %529, i64 0
  %530 = load i8, i8* %arrayidx700, align 1, !tbaa !48
  %tobool701 = icmp ne i8 %530, 0
  br i1 %tobool701, label %if.then.702, label %if.end.706

if.then.702:                                      ; preds = %for.body.699
  %531 = load i8, i8* %bitmask, align 1, !tbaa !48
  %conv703 = zext i8 %531 to i32
  %532 = load i8, i8* %y, align 1, !tbaa !48
  %conv704 = zext i8 %532 to i32
  %or = or i32 %conv704, %conv703
  %conv705 = trunc i32 %or to i8
  store i8 %conv705, i8* %y, align 1, !tbaa !48
  br label %if.end.706

if.end.706:                                       ; preds = %if.then.702, %for.body.699
  %533 = load i8*, i8** %dp, align 8, !tbaa !1
  %add.ptr707 = getelementptr inbounds i8, i8* %533, i64 1
  store i8* %add.ptr707, i8** %dp, align 8, !tbaa !1
  %534 = load i32*, i32** %ep604, align 8, !tbaa !1
  %add.ptr708 = getelementptr inbounds i32, i32* %534, i64 1
  store i32* %add.ptr708, i32** %ep604, align 8, !tbaa !1
  br label %for.inc.709

for.inc.709:                                      ; preds = %if.end.706
  %535 = load i8, i8* %bitmask, align 1, !tbaa !48
  %conv710 = zext i8 %535 to i32
  %shr711 = ashr i32 %conv710, 1
  %conv712 = trunc i32 %shr711 to i8
  store i8 %conv712, i8* %bitmask, align 1, !tbaa !48
  br label %for.cond.695

for.end.713:                                      ; preds = %for.cond.695
  %536 = load i8, i8* %y, align 1, !tbaa !48
  %537 = load i8*, i8** %yP, align 8, !tbaa !1
  %incdec.ptr714 = getelementptr inbounds i8, i8* %537, i32 1
  store i8* %incdec.ptr714, i8** %yP, align 8, !tbaa !1
  store i8 %536, i8* %537, align 1, !tbaa !48
  call void @llvm.lifetime.end(i64 1, i8* %bitmask) #2
  call void @llvm.lifetime.end(i64 1, i8* %k) #2
  call void @llvm.lifetime.end(i64 1, i8* %m) #2
  call void @llvm.lifetime.end(i64 1, i8* %y) #2
  call void @llvm.lifetime.end(i64 1, i8* %c) #2
  br label %for.inc.715

for.inc.715:                                      ; preds = %for.end.713
  %538 = load i32, i32* %i607, align 4, !tbaa !5
  %inc716 = add nsw i32 %538, 1
  store i32 %inc716, i32* %i607, align 4, !tbaa !5
  br label %for.cond.691

for.end.717:                                      ; preds = %for.cond.691
  br label %if.end.752

if.else.718:                                      ; preds = %if.then.687
  store i32 0, i32* %i607, align 4, !tbaa !5
  br label %for.cond.719

for.cond.719:                                     ; preds = %for.inc.749, %if.else.718
  %539 = load i32, i32* %i607, align 4, !tbaa !5
  %540 = load i32, i32* %plane_size, align 4, !tbaa !5
  %cmp720 = icmp slt i32 %539, %540
  br i1 %cmp720, label %for.body.722, label %for.end.751

for.body.722:                                     ; preds = %for.cond.719
  call void @llvm.lifetime.start(i64 1, i8* %c723) #2
  call void @llvm.lifetime.start(i64 1, i8* %y724) #2
  call void @llvm.lifetime.start(i64 1, i8* %m725) #2
  call void @llvm.lifetime.start(i64 1, i8* %k726) #2
  call void @llvm.lifetime.start(i64 1, i8* %bitmask727) #2
  store i8 1, i8* %bitmask727, align 1, !tbaa !48
  store i8 0, i8* %k726, align 1, !tbaa !48
  store i8 0, i8* %y724, align 1, !tbaa !48
  store i8 0, i8* %m725, align 1, !tbaa !48
  store i8 0, i8* %c723, align 1, !tbaa !48
  br label %for.cond.728

for.cond.728:                                     ; preds = %for.inc.743, %for.body.722
  %541 = load i8, i8* %bitmask727, align 1, !tbaa !48
  %conv729 = zext i8 %541 to i32
  %cmp730 = icmp ne i32 %conv729, 0
  br i1 %cmp730, label %for.body.732, label %for.end.747

for.body.732:                                     ; preds = %for.cond.728
  %542 = load i8*, i8** %dp, align 8, !tbaa !1
  %add.ptr733 = getelementptr inbounds i8, i8* %542, i64 -1
  store i8* %add.ptr733, i8** %dp, align 8, !tbaa !1
  %543 = load i32*, i32** %ep604, align 8, !tbaa !1
  %add.ptr734 = getelementptr inbounds i32, i32* %543, i64 -1
  store i32* %add.ptr734, i32** %ep604, align 8, !tbaa !1
  %544 = load i8*, i8** %dp, align 8, !tbaa !1
  %arrayidx735 = getelementptr inbounds i8, i8* %544, i64 0
  %545 = load i8, i8* %arrayidx735, align 1, !tbaa !48
  %tobool736 = icmp ne i8 %545, 0
  br i1 %tobool736, label %if.then.737, label %if.end.742

if.then.737:                                      ; preds = %for.body.732
  %546 = load i8, i8* %bitmask727, align 1, !tbaa !48
  %conv738 = zext i8 %546 to i32
  %547 = load i8, i8* %y724, align 1, !tbaa !48
  %conv739 = zext i8 %547 to i32
  %or740 = or i32 %conv739, %conv738
  %conv741 = trunc i32 %or740 to i8
  store i8 %conv741, i8* %y724, align 1, !tbaa !48
  br label %if.end.742

if.end.742:                                       ; preds = %if.then.737, %for.body.732
  br label %for.inc.743

for.inc.743:                                      ; preds = %if.end.742
  %548 = load i8, i8* %bitmask727, align 1, !tbaa !48
  %conv744 = zext i8 %548 to i32
  %shl745 = shl i32 %conv744, 1
  %conv746 = trunc i32 %shl745 to i8
  store i8 %conv746, i8* %bitmask727, align 1, !tbaa !48
  br label %for.cond.728

for.end.747:                                      ; preds = %for.cond.728
  %549 = load i8, i8* %y724, align 1, !tbaa !48
  %550 = load i8*, i8** %yP, align 8, !tbaa !1
  %incdec.ptr748 = getelementptr inbounds i8, i8* %550, i32 -1
  store i8* %incdec.ptr748, i8** %yP, align 8, !tbaa !1
  store i8 %549, i8* %incdec.ptr748, align 1, !tbaa !48
  call void @llvm.lifetime.end(i64 1, i8* %bitmask727) #2
  call void @llvm.lifetime.end(i64 1, i8* %k726) #2
  call void @llvm.lifetime.end(i64 1, i8* %m725) #2
  call void @llvm.lifetime.end(i64 1, i8* %y724) #2
  call void @llvm.lifetime.end(i64 1, i8* %c723) #2
  br label %for.inc.749

for.inc.749:                                      ; preds = %for.end.747
  %551 = load i32, i32* %i607, align 4, !tbaa !5
  %inc750 = add nsw i32 %551, 1
  store i32 %inc750, i32* %i607, align 4, !tbaa !5
  br label %for.cond.719

for.end.751:                                      ; preds = %for.cond.719
  br label %if.end.752

if.end.752:                                       ; preds = %for.end.751, %for.end.717
  br label %sw.epilog.867

if.end.753:                                       ; preds = %sw.bb.684
  br label %sw.default.754

sw.default.754:                                   ; preds = %sw.bb.683, %if.end.753
  %552 = load i32, i32* %scan, align 4, !tbaa !5
  %cmp755 = icmp eq i32 %552, 0
  br i1 %cmp755, label %if.then.757, label %if.else.811

if.then.757:                                      ; preds = %sw.default.754
  store i32 0, i32* %i607, align 4, !tbaa !5
  br label %for.cond.758

for.cond.758:                                     ; preds = %for.inc.808, %if.then.757
  %553 = load i32, i32* %i607, align 4, !tbaa !5
  %554 = load i32, i32* %plane_size, align 4, !tbaa !5
  %cmp759 = icmp slt i32 %553, %554
  br i1 %cmp759, label %for.body.761, label %for.end.810

for.body.761:                                     ; preds = %for.cond.758
  call void @llvm.lifetime.start(i64 1, i8* %c762) #2
  call void @llvm.lifetime.start(i64 1, i8* %y763) #2
  call void @llvm.lifetime.start(i64 1, i8* %m764) #2
  call void @llvm.lifetime.start(i64 1, i8* %k765) #2
  call void @llvm.lifetime.start(i64 1, i8* %bitmask766) #2
  %555 = bitcast i32* %oldErr to i8*
  call void @llvm.lifetime.start(i64 4, i8* %555) #2
  store i8 -128, i8* %bitmask766, align 1, !tbaa !48
  store i8 0, i8* %k765, align 1, !tbaa !48
  store i8 0, i8* %y763, align 1, !tbaa !48
  store i8 0, i8* %m764, align 1, !tbaa !48
  store i8 0, i8* %c762, align 1, !tbaa !48
  br label %for.cond.767

for.cond.767:                                     ; preds = %for.inc.802, %for.body.761
  %556 = load i8, i8* %bitmask766, align 1, !tbaa !48
  %conv768 = zext i8 %556 to i32
  %cmp769 = icmp ne i32 %conv768, 0
  br i1 %cmp769, label %for.body.771, label %for.end.806

for.body.771:                                     ; preds = %for.cond.767
  %557 = load i32, i32* %yErr, align 4, !tbaa !5
  store i32 %557, i32* %oldErr, align 4, !tbaa !5
  %558 = load i32*, i32** %ep604, align 8, !tbaa !1
  %arrayidx772 = getelementptr inbounds i32, i32* %558, i64 0
  %559 = load i32, i32* %arrayidx772, align 4, !tbaa !5
  %560 = load i32, i32* %yErr, align 4, !tbaa !5
  %mul773 = mul nsw i32 %560, 7
  %add774 = add nsw i32 %mul773, 8
  %shr775 = ashr i32 %add774, 4
  %add776 = add nsw i32 %559, %shr775
  %561 = load i8*, i8** %dp, align 8, !tbaa !1
  %arrayidx777 = getelementptr inbounds i8, i8* %561, i64 0
  %562 = load i8, i8* %arrayidx777, align 1, !tbaa !48
  %conv778 = zext i8 %562 to i32
  %shl779 = shl i32 %conv778, 19
  %add780 = add nsw i32 %add776, %shl779
  store i32 %add780, i32* %yErr, align 4, !tbaa !5
  %563 = load i32, i32* %yErr, align 4, !tbaa !5
  %cmp781 = icmp sgt i32 %563, 67108864
  br i1 %cmp781, label %if.then.783, label %if.end.789

if.then.783:                                      ; preds = %for.body.771
  %564 = load i8, i8* %bitmask766, align 1, !tbaa !48
  %conv784 = zext i8 %564 to i32
  %565 = load i8, i8* %y763, align 1, !tbaa !48
  %conv785 = zext i8 %565 to i32
  %or786 = or i32 %conv785, %conv784
  %conv787 = trunc i32 %or786 to i8
  store i8 %conv787, i8* %y763, align 1, !tbaa !48
  %566 = load i32, i32* %yErr, align 4, !tbaa !5
  %sub788 = sub nsw i32 %566, 133693440
  store i32 %sub788, i32* %yErr, align 4, !tbaa !5
  br label %if.end.789

if.end.789:                                       ; preds = %if.then.783, %for.body.771
  %567 = load i32, i32* %yErr, align 4, !tbaa !5
  %mul790 = mul nsw i32 %567, 3
  %add791 = add nsw i32 %mul790, 8
  %shr792 = ashr i32 %add791, 4
  %568 = load i32*, i32** %ep604, align 8, !tbaa !1
  %arrayidx793 = getelementptr inbounds i32, i32* %568, i64 -1
  %569 = load i32, i32* %arrayidx793, align 4, !tbaa !5
  %add794 = add nsw i32 %569, %shr792
  store i32 %add794, i32* %arrayidx793, align 4, !tbaa !5
  %570 = load i32, i32* %yErr, align 4, !tbaa !5
  %mul795 = mul nsw i32 %570, 5
  %571 = load i32, i32* %oldErr, align 4, !tbaa !5
  %add796 = add nsw i32 %mul795, %571
  %add797 = add nsw i32 %add796, 8
  %shr798 = ashr i32 %add797, 4
  %572 = load i32*, i32** %ep604, align 8, !tbaa !1
  %arrayidx799 = getelementptr inbounds i32, i32* %572, i64 0
  store i32 %shr798, i32* %arrayidx799, align 4, !tbaa !5
  %573 = load i8*, i8** %dp, align 8, !tbaa !1
  %add.ptr800 = getelementptr inbounds i8, i8* %573, i64 1
  store i8* %add.ptr800, i8** %dp, align 8, !tbaa !1
  %574 = load i32*, i32** %ep604, align 8, !tbaa !1
  %add.ptr801 = getelementptr inbounds i32, i32* %574, i64 1
  store i32* %add.ptr801, i32** %ep604, align 8, !tbaa !1
  br label %for.inc.802

for.inc.802:                                      ; preds = %if.end.789
  %575 = load i8, i8* %bitmask766, align 1, !tbaa !48
  %conv803 = zext i8 %575 to i32
  %shr804 = ashr i32 %conv803, 1
  %conv805 = trunc i32 %shr804 to i8
  store i8 %conv805, i8* %bitmask766, align 1, !tbaa !48
  br label %for.cond.767

for.end.806:                                      ; preds = %for.cond.767
  %576 = load i8, i8* %y763, align 1, !tbaa !48
  %577 = load i8*, i8** %yP, align 8, !tbaa !1
  %incdec.ptr807 = getelementptr inbounds i8, i8* %577, i32 1
  store i8* %incdec.ptr807, i8** %yP, align 8, !tbaa !1
  store i8 %576, i8* %577, align 1, !tbaa !48
  %578 = bitcast i32* %oldErr to i8*
  call void @llvm.lifetime.end(i64 4, i8* %578) #2
  call void @llvm.lifetime.end(i64 1, i8* %bitmask766) #2
  call void @llvm.lifetime.end(i64 1, i8* %k765) #2
  call void @llvm.lifetime.end(i64 1, i8* %m764) #2
  call void @llvm.lifetime.end(i64 1, i8* %y763) #2
  call void @llvm.lifetime.end(i64 1, i8* %c762) #2
  br label %for.inc.808

for.inc.808:                                      ; preds = %for.end.806
  %579 = load i32, i32* %i607, align 4, !tbaa !5
  %inc809 = add nsw i32 %579, 1
  store i32 %inc809, i32* %i607, align 4, !tbaa !5
  br label %for.cond.758

for.end.810:                                      ; preds = %for.cond.758
  br label %if.end.866

if.else.811:                                      ; preds = %sw.default.754
  store i32 0, i32* %i607, align 4, !tbaa !5
  br label %for.cond.812

for.cond.812:                                     ; preds = %for.inc.863, %if.else.811
  %580 = load i32, i32* %i607, align 4, !tbaa !5
  %581 = load i32, i32* %plane_size, align 4, !tbaa !5
  %cmp813 = icmp slt i32 %580, %581
  br i1 %cmp813, label %for.body.815, label %for.end.865

for.body.815:                                     ; preds = %for.cond.812
  call void @llvm.lifetime.start(i64 1, i8* %c816) #2
  call void @llvm.lifetime.start(i64 1, i8* %y817) #2
  call void @llvm.lifetime.start(i64 1, i8* %m818) #2
  call void @llvm.lifetime.start(i64 1, i8* %k819) #2
  call void @llvm.lifetime.start(i64 1, i8* %bitmask820) #2
  %582 = bitcast i32* %oldErr821 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %582) #2
  store i8 1, i8* %bitmask820, align 1, !tbaa !48
  store i8 0, i8* %k819, align 1, !tbaa !48
  store i8 0, i8* %y817, align 1, !tbaa !48
  store i8 0, i8* %m818, align 1, !tbaa !48
  store i8 0, i8* %c816, align 1, !tbaa !48
  br label %for.cond.822

for.cond.822:                                     ; preds = %for.inc.857, %for.body.815
  %583 = load i8, i8* %bitmask820, align 1, !tbaa !48
  %conv823 = zext i8 %583 to i32
  %cmp824 = icmp ne i32 %conv823, 0
  br i1 %cmp824, label %for.body.826, label %for.end.861

for.body.826:                                     ; preds = %for.cond.822
  %584 = load i8*, i8** %dp, align 8, !tbaa !1
  %add.ptr827 = getelementptr inbounds i8, i8* %584, i64 -1
  store i8* %add.ptr827, i8** %dp, align 8, !tbaa !1
  %585 = load i32*, i32** %ep604, align 8, !tbaa !1
  %add.ptr828 = getelementptr inbounds i32, i32* %585, i64 -1
  store i32* %add.ptr828, i32** %ep604, align 8, !tbaa !1
  %586 = load i32, i32* %yErr, align 4, !tbaa !5
  store i32 %586, i32* %oldErr821, align 4, !tbaa !5
  %587 = load i32*, i32** %ep604, align 8, !tbaa !1
  %arrayidx829 = getelementptr inbounds i32, i32* %587, i64 0
  %588 = load i32, i32* %arrayidx829, align 4, !tbaa !5
  %589 = load i32, i32* %yErr, align 4, !tbaa !5
  %mul830 = mul nsw i32 %589, 7
  %add831 = add nsw i32 %mul830, 8
  %shr832 = ashr i32 %add831, 4
  %add833 = add nsw i32 %588, %shr832
  %590 = load i8*, i8** %dp, align 8, !tbaa !1
  %arrayidx834 = getelementptr inbounds i8, i8* %590, i64 0
  %591 = load i8, i8* %arrayidx834, align 1, !tbaa !48
  %conv835 = zext i8 %591 to i32
  %shl836 = shl i32 %conv835, 19
  %add837 = add nsw i32 %add833, %shl836
  store i32 %add837, i32* %yErr, align 4, !tbaa !5
  %592 = load i32, i32* %yErr, align 4, !tbaa !5
  %cmp838 = icmp sgt i32 %592, 67108864
  br i1 %cmp838, label %if.then.840, label %if.end.846

if.then.840:                                      ; preds = %for.body.826
  %593 = load i8, i8* %bitmask820, align 1, !tbaa !48
  %conv841 = zext i8 %593 to i32
  %594 = load i8, i8* %y817, align 1, !tbaa !48
  %conv842 = zext i8 %594 to i32
  %or843 = or i32 %conv842, %conv841
  %conv844 = trunc i32 %or843 to i8
  store i8 %conv844, i8* %y817, align 1, !tbaa !48
  %595 = load i32, i32* %yErr, align 4, !tbaa !5
  %sub845 = sub nsw i32 %595, 133693440
  store i32 %sub845, i32* %yErr, align 4, !tbaa !5
  br label %if.end.846

if.end.846:                                       ; preds = %if.then.840, %for.body.826
  %596 = load i32, i32* %yErr, align 4, !tbaa !5
  %mul847 = mul nsw i32 %596, 3
  %add848 = add nsw i32 %mul847, 8
  %shr849 = ashr i32 %add848, 4
  %597 = load i32*, i32** %ep604, align 8, !tbaa !1
  %arrayidx850 = getelementptr inbounds i32, i32* %597, i64 1
  %598 = load i32, i32* %arrayidx850, align 4, !tbaa !5
  %add851 = add nsw i32 %598, %shr849
  store i32 %add851, i32* %arrayidx850, align 4, !tbaa !5
  %599 = load i32, i32* %yErr, align 4, !tbaa !5
  %mul852 = mul nsw i32 %599, 5
  %600 = load i32, i32* %oldErr821, align 4, !tbaa !5
  %add853 = add nsw i32 %mul852, %600
  %add854 = add nsw i32 %add853, 8
  %shr855 = ashr i32 %add854, 4
  %601 = load i32*, i32** %ep604, align 8, !tbaa !1
  %arrayidx856 = getelementptr inbounds i32, i32* %601, i64 0
  store i32 %shr855, i32* %arrayidx856, align 4, !tbaa !5
  br label %for.inc.857

for.inc.857:                                      ; preds = %if.end.846
  %602 = load i8, i8* %bitmask820, align 1, !tbaa !48
  %conv858 = zext i8 %602 to i32
  %shl859 = shl i32 %conv858, 1
  %conv860 = trunc i32 %shl859 to i8
  store i8 %conv860, i8* %bitmask820, align 1, !tbaa !48
  br label %for.cond.822

for.end.861:                                      ; preds = %for.cond.822
  %603 = load i8, i8* %y817, align 1, !tbaa !48
  %604 = load i8*, i8** %yP, align 8, !tbaa !1
  %incdec.ptr862 = getelementptr inbounds i8, i8* %604, i32 -1
  store i8* %incdec.ptr862, i8** %yP, align 8, !tbaa !1
  store i8 %603, i8* %incdec.ptr862, align 1, !tbaa !48
  %605 = bitcast i32* %oldErr821 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %605) #2
  call void @llvm.lifetime.end(i64 1, i8* %bitmask820) #2
  call void @llvm.lifetime.end(i64 1, i8* %k819) #2
  call void @llvm.lifetime.end(i64 1, i8* %m818) #2
  call void @llvm.lifetime.end(i64 1, i8* %y817) #2
  call void @llvm.lifetime.end(i64 1, i8* %c816) #2
  br label %for.inc.863

for.inc.863:                                      ; preds = %for.end.861
  %606 = load i32, i32* %i607, align 4, !tbaa !5
  %inc864 = add nsw i32 %606, 1
  store i32 %inc864, i32* %i607, align 4, !tbaa !5
  br label %for.cond.812

for.end.865:                                      ; preds = %for.cond.812
  br label %if.end.866

if.end.866:                                       ; preds = %for.end.865, %for.end.810
  br label %sw.epilog.867

sw.epilog.867:                                    ; preds = %if.end.866, %if.end.752
  br label %sw.epilog.1405

sw.bb.868:                                        ; preds = %if.end.618
  %607 = load i32, i32* %scan, align 4, !tbaa !5
  %cmp869 = icmp eq i32 %607, 0
  br i1 %cmp869, label %if.then.871, label %if.else.984

if.then.871:                                      ; preds = %sw.bb.868
  store i32 0, i32* %i607, align 4, !tbaa !5
  br label %for.cond.872

for.cond.872:                                     ; preds = %for.inc.981, %if.then.871
  %608 = load i32, i32* %i607, align 4, !tbaa !5
  %609 = load i32, i32* %plane_size, align 4, !tbaa !5
  %cmp873 = icmp slt i32 %608, %609
  br i1 %cmp873, label %for.body.875, label %for.end.983

for.body.875:                                     ; preds = %for.cond.872
  call void @llvm.lifetime.start(i64 1, i8* %c876) #2
  call void @llvm.lifetime.start(i64 1, i8* %y877) #2
  call void @llvm.lifetime.start(i64 1, i8* %m878) #2
  call void @llvm.lifetime.start(i64 1, i8* %k879) #2
  call void @llvm.lifetime.start(i64 1, i8* %bitmask880) #2
  %610 = bitcast i32* %oldErr881 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %610) #2
  store i8 -128, i8* %bitmask880, align 1, !tbaa !48
  store i8 0, i8* %k879, align 1, !tbaa !48
  store i8 0, i8* %y877, align 1, !tbaa !48
  store i8 0, i8* %m878, align 1, !tbaa !48
  store i8 0, i8* %c876, align 1, !tbaa !48
  br label %for.cond.882

for.cond.882:                                     ; preds = %for.inc.973, %for.body.875
  %611 = load i8, i8* %bitmask880, align 1, !tbaa !48
  %conv883 = zext i8 %611 to i32
  %cmp884 = icmp ne i32 %conv883, 0
  br i1 %cmp884, label %for.body.886, label %for.end.977

for.body.886:                                     ; preds = %for.cond.882
  %612 = load i32, i32* %cErr, align 4, !tbaa !5
  store i32 %612, i32* %oldErr881, align 4, !tbaa !5
  %613 = load i32*, i32** %ep604, align 8, !tbaa !1
  %arrayidx887 = getelementptr inbounds i32, i32* %613, i64 0
  %614 = load i32, i32* %arrayidx887, align 4, !tbaa !5
  %615 = load i32, i32* %cErr, align 4, !tbaa !5
  %mul888 = mul nsw i32 %615, 7
  %add889 = add nsw i32 %mul888, 8
  %shr890 = ashr i32 %add889, 4
  %add891 = add nsw i32 %614, %shr890
  %616 = load i8*, i8** %dp, align 8, !tbaa !1
  %arrayidx892 = getelementptr inbounds i8, i8* %616, i64 0
  %617 = load i8, i8* %arrayidx892, align 1, !tbaa !48
  %conv893 = zext i8 %617 to i32
  %shl894 = shl i32 %conv893, 19
  %add895 = add nsw i32 %add891, %shl894
  store i32 %add895, i32* %cErr, align 4, !tbaa !5
  %618 = load i32, i32* %cErr, align 4, !tbaa !5
  %cmp896 = icmp sgt i32 %618, 67108864
  br i1 %cmp896, label %if.then.898, label %if.end.904

if.then.898:                                      ; preds = %for.body.886
  %619 = load i8, i8* %bitmask880, align 1, !tbaa !48
  %conv899 = zext i8 %619 to i32
  %620 = load i8, i8* %c876, align 1, !tbaa !48
  %conv900 = zext i8 %620 to i32
  %or901 = or i32 %conv900, %conv899
  %conv902 = trunc i32 %or901 to i8
  store i8 %conv902, i8* %c876, align 1, !tbaa !48
  %621 = load i32, i32* %cErr, align 4, !tbaa !5
  %sub903 = sub nsw i32 %621, 133693440
  store i32 %sub903, i32* %cErr, align 4, !tbaa !5
  br label %if.end.904

if.end.904:                                       ; preds = %if.then.898, %for.body.886
  %622 = load i32, i32* %cErr, align 4, !tbaa !5
  %mul905 = mul nsw i32 %622, 3
  %add906 = add nsw i32 %mul905, 8
  %shr907 = ashr i32 %add906, 4
  %623 = load i32*, i32** %ep604, align 8, !tbaa !1
  %arrayidx908 = getelementptr inbounds i32, i32* %623, i64 -3
  %624 = load i32, i32* %arrayidx908, align 4, !tbaa !5
  %add909 = add nsw i32 %624, %shr907
  store i32 %add909, i32* %arrayidx908, align 4, !tbaa !5
  %625 = load i32, i32* %cErr, align 4, !tbaa !5
  %mul910 = mul nsw i32 %625, 5
  %626 = load i32, i32* %oldErr881, align 4, !tbaa !5
  %add911 = add nsw i32 %mul910, %626
  %add912 = add nsw i32 %add911, 8
  %shr913 = ashr i32 %add912, 4
  %627 = load i32*, i32** %ep604, align 8, !tbaa !1
  %arrayidx914 = getelementptr inbounds i32, i32* %627, i64 0
  store i32 %shr913, i32* %arrayidx914, align 4, !tbaa !5
  %628 = load i32, i32* %mErr, align 4, !tbaa !5
  store i32 %628, i32* %oldErr881, align 4, !tbaa !5
  %629 = load i32*, i32** %ep604, align 8, !tbaa !1
  %arrayidx915 = getelementptr inbounds i32, i32* %629, i64 1
  %630 = load i32, i32* %arrayidx915, align 4, !tbaa !5
  %631 = load i32, i32* %mErr, align 4, !tbaa !5
  %mul916 = mul nsw i32 %631, 7
  %add917 = add nsw i32 %mul916, 8
  %shr918 = ashr i32 %add917, 4
  %add919 = add nsw i32 %630, %shr918
  %632 = load i8*, i8** %dp, align 8, !tbaa !1
  %arrayidx920 = getelementptr inbounds i8, i8* %632, i64 1
  %633 = load i8, i8* %arrayidx920, align 1, !tbaa !48
  %conv921 = zext i8 %633 to i32
  %shl922 = shl i32 %conv921, 19
  %add923 = add nsw i32 %add919, %shl922
  store i32 %add923, i32* %mErr, align 4, !tbaa !5
  %634 = load i32, i32* %mErr, align 4, !tbaa !5
  %cmp924 = icmp sgt i32 %634, 67108864
  br i1 %cmp924, label %if.then.926, label %if.end.932

if.then.926:                                      ; preds = %if.end.904
  %635 = load i8, i8* %bitmask880, align 1, !tbaa !48
  %conv927 = zext i8 %635 to i32
  %636 = load i8, i8* %m878, align 1, !tbaa !48
  %conv928 = zext i8 %636 to i32
  %or929 = or i32 %conv928, %conv927
  %conv930 = trunc i32 %or929 to i8
  store i8 %conv930, i8* %m878, align 1, !tbaa !48
  %637 = load i32, i32* %mErr, align 4, !tbaa !5
  %sub931 = sub nsw i32 %637, 133693440
  store i32 %sub931, i32* %mErr, align 4, !tbaa !5
  br label %if.end.932

if.end.932:                                       ; preds = %if.then.926, %if.end.904
  %638 = load i32, i32* %mErr, align 4, !tbaa !5
  %mul933 = mul nsw i32 %638, 3
  %add934 = add nsw i32 %mul933, 8
  %shr935 = ashr i32 %add934, 4
  %639 = load i32*, i32** %ep604, align 8, !tbaa !1
  %arrayidx936 = getelementptr inbounds i32, i32* %639, i64 -2
  %640 = load i32, i32* %arrayidx936, align 4, !tbaa !5
  %add937 = add nsw i32 %640, %shr935
  store i32 %add937, i32* %arrayidx936, align 4, !tbaa !5
  %641 = load i32, i32* %mErr, align 4, !tbaa !5
  %mul938 = mul nsw i32 %641, 5
  %642 = load i32, i32* %oldErr881, align 4, !tbaa !5
  %add939 = add nsw i32 %mul938, %642
  %add940 = add nsw i32 %add939, 8
  %shr941 = ashr i32 %add940, 4
  %643 = load i32*, i32** %ep604, align 8, !tbaa !1
  %arrayidx942 = getelementptr inbounds i32, i32* %643, i64 1
  store i32 %shr941, i32* %arrayidx942, align 4, !tbaa !5
  %644 = load i32, i32* %yErr, align 4, !tbaa !5
  store i32 %644, i32* %oldErr881, align 4, !tbaa !5
  %645 = load i32*, i32** %ep604, align 8, !tbaa !1
  %arrayidx943 = getelementptr inbounds i32, i32* %645, i64 2
  %646 = load i32, i32* %arrayidx943, align 4, !tbaa !5
  %647 = load i32, i32* %yErr, align 4, !tbaa !5
  %mul944 = mul nsw i32 %647, 7
  %add945 = add nsw i32 %mul944, 8
  %shr946 = ashr i32 %add945, 4
  %add947 = add nsw i32 %646, %shr946
  %648 = load i8*, i8** %dp, align 8, !tbaa !1
  %arrayidx948 = getelementptr inbounds i8, i8* %648, i64 2
  %649 = load i8, i8* %arrayidx948, align 1, !tbaa !48
  %conv949 = zext i8 %649 to i32
  %shl950 = shl i32 %conv949, 19
  %add951 = add nsw i32 %add947, %shl950
  store i32 %add951, i32* %yErr, align 4, !tbaa !5
  %650 = load i32, i32* %yErr, align 4, !tbaa !5
  %cmp952 = icmp sgt i32 %650, 67108864
  br i1 %cmp952, label %if.then.954, label %if.end.960

if.then.954:                                      ; preds = %if.end.932
  %651 = load i8, i8* %bitmask880, align 1, !tbaa !48
  %conv955 = zext i8 %651 to i32
  %652 = load i8, i8* %y877, align 1, !tbaa !48
  %conv956 = zext i8 %652 to i32
  %or957 = or i32 %conv956, %conv955
  %conv958 = trunc i32 %or957 to i8
  store i8 %conv958, i8* %y877, align 1, !tbaa !48
  %653 = load i32, i32* %yErr, align 4, !tbaa !5
  %sub959 = sub nsw i32 %653, 133693440
  store i32 %sub959, i32* %yErr, align 4, !tbaa !5
  br label %if.end.960

if.end.960:                                       ; preds = %if.then.954, %if.end.932
  %654 = load i32, i32* %yErr, align 4, !tbaa !5
  %mul961 = mul nsw i32 %654, 3
  %add962 = add nsw i32 %mul961, 8
  %shr963 = ashr i32 %add962, 4
  %655 = load i32*, i32** %ep604, align 8, !tbaa !1
  %arrayidx964 = getelementptr inbounds i32, i32* %655, i64 -1
  %656 = load i32, i32* %arrayidx964, align 4, !tbaa !5
  %add965 = add nsw i32 %656, %shr963
  store i32 %add965, i32* %arrayidx964, align 4, !tbaa !5
  %657 = load i32, i32* %yErr, align 4, !tbaa !5
  %mul966 = mul nsw i32 %657, 5
  %658 = load i32, i32* %oldErr881, align 4, !tbaa !5
  %add967 = add nsw i32 %mul966, %658
  %add968 = add nsw i32 %add967, 8
  %shr969 = ashr i32 %add968, 4
  %659 = load i32*, i32** %ep604, align 8, !tbaa !1
  %arrayidx970 = getelementptr inbounds i32, i32* %659, i64 2
  store i32 %shr969, i32* %arrayidx970, align 4, !tbaa !5
  %660 = load i8*, i8** %dp, align 8, !tbaa !1
  %add.ptr971 = getelementptr inbounds i8, i8* %660, i64 3
  store i8* %add.ptr971, i8** %dp, align 8, !tbaa !1
  %661 = load i32*, i32** %ep604, align 8, !tbaa !1
  %add.ptr972 = getelementptr inbounds i32, i32* %661, i64 3
  store i32* %add.ptr972, i32** %ep604, align 8, !tbaa !1
  br label %for.inc.973

for.inc.973:                                      ; preds = %if.end.960
  %662 = load i8, i8* %bitmask880, align 1, !tbaa !48
  %conv974 = zext i8 %662 to i32
  %shr975 = ashr i32 %conv974, 1
  %conv976 = trunc i32 %shr975 to i8
  store i8 %conv976, i8* %bitmask880, align 1, !tbaa !48
  br label %for.cond.882

for.end.977:                                      ; preds = %for.cond.882
  %663 = load i8, i8* %c876, align 1, !tbaa !48
  %664 = load i8*, i8** %cP, align 8, !tbaa !1
  %incdec.ptr978 = getelementptr inbounds i8, i8* %664, i32 1
  store i8* %incdec.ptr978, i8** %cP, align 8, !tbaa !1
  store i8 %663, i8* %664, align 1, !tbaa !48
  %665 = load i8, i8* %m878, align 1, !tbaa !48
  %666 = load i8*, i8** %mP, align 8, !tbaa !1
  %incdec.ptr979 = getelementptr inbounds i8, i8* %666, i32 1
  store i8* %incdec.ptr979, i8** %mP, align 8, !tbaa !1
  store i8 %665, i8* %666, align 1, !tbaa !48
  %667 = load i8, i8* %y877, align 1, !tbaa !48
  %668 = load i8*, i8** %yP, align 8, !tbaa !1
  %incdec.ptr980 = getelementptr inbounds i8, i8* %668, i32 1
  store i8* %incdec.ptr980, i8** %yP, align 8, !tbaa !1
  store i8 %667, i8* %668, align 1, !tbaa !48
  %669 = bitcast i32* %oldErr881 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %669) #2
  call void @llvm.lifetime.end(i64 1, i8* %bitmask880) #2
  call void @llvm.lifetime.end(i64 1, i8* %k879) #2
  call void @llvm.lifetime.end(i64 1, i8* %m878) #2
  call void @llvm.lifetime.end(i64 1, i8* %y877) #2
  call void @llvm.lifetime.end(i64 1, i8* %c876) #2
  br label %for.inc.981

for.inc.981:                                      ; preds = %for.end.977
  %670 = load i32, i32* %i607, align 4, !tbaa !5
  %inc982 = add nsw i32 %670, 1
  store i32 %inc982, i32* %i607, align 4, !tbaa !5
  br label %for.cond.872

for.end.983:                                      ; preds = %for.cond.872
  br label %if.end.1097

if.else.984:                                      ; preds = %sw.bb.868
  store i32 0, i32* %i607, align 4, !tbaa !5
  br label %for.cond.985

for.cond.985:                                     ; preds = %for.inc.1094, %if.else.984
  %671 = load i32, i32* %i607, align 4, !tbaa !5
  %672 = load i32, i32* %plane_size, align 4, !tbaa !5
  %cmp986 = icmp slt i32 %671, %672
  br i1 %cmp986, label %for.body.988, label %for.end.1096

for.body.988:                                     ; preds = %for.cond.985
  call void @llvm.lifetime.start(i64 1, i8* %c989) #2
  call void @llvm.lifetime.start(i64 1, i8* %y990) #2
  call void @llvm.lifetime.start(i64 1, i8* %m991) #2
  call void @llvm.lifetime.start(i64 1, i8* %k992) #2
  call void @llvm.lifetime.start(i64 1, i8* %bitmask993) #2
  %673 = bitcast i32* %oldErr994 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %673) #2
  store i8 1, i8* %bitmask993, align 1, !tbaa !48
  store i8 0, i8* %k992, align 1, !tbaa !48
  store i8 0, i8* %y990, align 1, !tbaa !48
  store i8 0, i8* %m991, align 1, !tbaa !48
  store i8 0, i8* %c989, align 1, !tbaa !48
  br label %for.cond.995

for.cond.995:                                     ; preds = %for.inc.1086, %for.body.988
  %674 = load i8, i8* %bitmask993, align 1, !tbaa !48
  %conv996 = zext i8 %674 to i32
  %cmp997 = icmp ne i32 %conv996, 0
  br i1 %cmp997, label %for.body.999, label %for.end.1090

for.body.999:                                     ; preds = %for.cond.995
  %675 = load i8*, i8** %dp, align 8, !tbaa !1
  %add.ptr1000 = getelementptr inbounds i8, i8* %675, i64 -3
  store i8* %add.ptr1000, i8** %dp, align 8, !tbaa !1
  %676 = load i32*, i32** %ep604, align 8, !tbaa !1
  %add.ptr1001 = getelementptr inbounds i32, i32* %676, i64 -3
  store i32* %add.ptr1001, i32** %ep604, align 8, !tbaa !1
  %677 = load i32, i32* %yErr, align 4, !tbaa !5
  store i32 %677, i32* %oldErr994, align 4, !tbaa !5
  %678 = load i32*, i32** %ep604, align 8, !tbaa !1
  %arrayidx1002 = getelementptr inbounds i32, i32* %678, i64 2
  %679 = load i32, i32* %arrayidx1002, align 4, !tbaa !5
  %680 = load i32, i32* %yErr, align 4, !tbaa !5
  %mul1003 = mul nsw i32 %680, 7
  %add1004 = add nsw i32 %mul1003, 8
  %shr1005 = ashr i32 %add1004, 4
  %add1006 = add nsw i32 %679, %shr1005
  %681 = load i8*, i8** %dp, align 8, !tbaa !1
  %arrayidx1007 = getelementptr inbounds i8, i8* %681, i64 2
  %682 = load i8, i8* %arrayidx1007, align 1, !tbaa !48
  %conv1008 = zext i8 %682 to i32
  %shl1009 = shl i32 %conv1008, 19
  %add1010 = add nsw i32 %add1006, %shl1009
  store i32 %add1010, i32* %yErr, align 4, !tbaa !5
  %683 = load i32, i32* %yErr, align 4, !tbaa !5
  %cmp1011 = icmp sgt i32 %683, 67108864
  br i1 %cmp1011, label %if.then.1013, label %if.end.1019

if.then.1013:                                     ; preds = %for.body.999
  %684 = load i8, i8* %bitmask993, align 1, !tbaa !48
  %conv1014 = zext i8 %684 to i32
  %685 = load i8, i8* %y990, align 1, !tbaa !48
  %conv1015 = zext i8 %685 to i32
  %or1016 = or i32 %conv1015, %conv1014
  %conv1017 = trunc i32 %or1016 to i8
  store i8 %conv1017, i8* %y990, align 1, !tbaa !48
  %686 = load i32, i32* %yErr, align 4, !tbaa !5
  %sub1018 = sub nsw i32 %686, 133693440
  store i32 %sub1018, i32* %yErr, align 4, !tbaa !5
  br label %if.end.1019

if.end.1019:                                      ; preds = %if.then.1013, %for.body.999
  %687 = load i32, i32* %yErr, align 4, !tbaa !5
  %mul1020 = mul nsw i32 %687, 3
  %add1021 = add nsw i32 %mul1020, 8
  %shr1022 = ashr i32 %add1021, 4
  %688 = load i32*, i32** %ep604, align 8, !tbaa !1
  %arrayidx1023 = getelementptr inbounds i32, i32* %688, i64 5
  %689 = load i32, i32* %arrayidx1023, align 4, !tbaa !5
  %add1024 = add nsw i32 %689, %shr1022
  store i32 %add1024, i32* %arrayidx1023, align 4, !tbaa !5
  %690 = load i32, i32* %yErr, align 4, !tbaa !5
  %mul1025 = mul nsw i32 %690, 5
  %691 = load i32, i32* %oldErr994, align 4, !tbaa !5
  %add1026 = add nsw i32 %mul1025, %691
  %add1027 = add nsw i32 %add1026, 8
  %shr1028 = ashr i32 %add1027, 4
  %692 = load i32*, i32** %ep604, align 8, !tbaa !1
  %arrayidx1029 = getelementptr inbounds i32, i32* %692, i64 2
  store i32 %shr1028, i32* %arrayidx1029, align 4, !tbaa !5
  %693 = load i32, i32* %mErr, align 4, !tbaa !5
  store i32 %693, i32* %oldErr994, align 4, !tbaa !5
  %694 = load i32*, i32** %ep604, align 8, !tbaa !1
  %arrayidx1030 = getelementptr inbounds i32, i32* %694, i64 1
  %695 = load i32, i32* %arrayidx1030, align 4, !tbaa !5
  %696 = load i32, i32* %mErr, align 4, !tbaa !5
  %mul1031 = mul nsw i32 %696, 7
  %add1032 = add nsw i32 %mul1031, 8
  %shr1033 = ashr i32 %add1032, 4
  %add1034 = add nsw i32 %695, %shr1033
  %697 = load i8*, i8** %dp, align 8, !tbaa !1
  %arrayidx1035 = getelementptr inbounds i8, i8* %697, i64 1
  %698 = load i8, i8* %arrayidx1035, align 1, !tbaa !48
  %conv1036 = zext i8 %698 to i32
  %shl1037 = shl i32 %conv1036, 19
  %add1038 = add nsw i32 %add1034, %shl1037
  store i32 %add1038, i32* %mErr, align 4, !tbaa !5
  %699 = load i32, i32* %mErr, align 4, !tbaa !5
  %cmp1039 = icmp sgt i32 %699, 67108864
  br i1 %cmp1039, label %if.then.1041, label %if.end.1047

if.then.1041:                                     ; preds = %if.end.1019
  %700 = load i8, i8* %bitmask993, align 1, !tbaa !48
  %conv1042 = zext i8 %700 to i32
  %701 = load i8, i8* %m991, align 1, !tbaa !48
  %conv1043 = zext i8 %701 to i32
  %or1044 = or i32 %conv1043, %conv1042
  %conv1045 = trunc i32 %or1044 to i8
  store i8 %conv1045, i8* %m991, align 1, !tbaa !48
  %702 = load i32, i32* %mErr, align 4, !tbaa !5
  %sub1046 = sub nsw i32 %702, 133693440
  store i32 %sub1046, i32* %mErr, align 4, !tbaa !5
  br label %if.end.1047

if.end.1047:                                      ; preds = %if.then.1041, %if.end.1019
  %703 = load i32, i32* %mErr, align 4, !tbaa !5
  %mul1048 = mul nsw i32 %703, 3
  %add1049 = add nsw i32 %mul1048, 8
  %shr1050 = ashr i32 %add1049, 4
  %704 = load i32*, i32** %ep604, align 8, !tbaa !1
  %arrayidx1051 = getelementptr inbounds i32, i32* %704, i64 4
  %705 = load i32, i32* %arrayidx1051, align 4, !tbaa !5
  %add1052 = add nsw i32 %705, %shr1050
  store i32 %add1052, i32* %arrayidx1051, align 4, !tbaa !5
  %706 = load i32, i32* %mErr, align 4, !tbaa !5
  %mul1053 = mul nsw i32 %706, 5
  %707 = load i32, i32* %oldErr994, align 4, !tbaa !5
  %add1054 = add nsw i32 %mul1053, %707
  %add1055 = add nsw i32 %add1054, 8
  %shr1056 = ashr i32 %add1055, 4
  %708 = load i32*, i32** %ep604, align 8, !tbaa !1
  %arrayidx1057 = getelementptr inbounds i32, i32* %708, i64 1
  store i32 %shr1056, i32* %arrayidx1057, align 4, !tbaa !5
  %709 = load i32, i32* %cErr, align 4, !tbaa !5
  store i32 %709, i32* %oldErr994, align 4, !tbaa !5
  %710 = load i32*, i32** %ep604, align 8, !tbaa !1
  %arrayidx1058 = getelementptr inbounds i32, i32* %710, i64 0
  %711 = load i32, i32* %arrayidx1058, align 4, !tbaa !5
  %712 = load i32, i32* %cErr, align 4, !tbaa !5
  %mul1059 = mul nsw i32 %712, 7
  %add1060 = add nsw i32 %mul1059, 8
  %shr1061 = ashr i32 %add1060, 4
  %add1062 = add nsw i32 %711, %shr1061
  %713 = load i8*, i8** %dp, align 8, !tbaa !1
  %arrayidx1063 = getelementptr inbounds i8, i8* %713, i64 0
  %714 = load i8, i8* %arrayidx1063, align 1, !tbaa !48
  %conv1064 = zext i8 %714 to i32
  %shl1065 = shl i32 %conv1064, 19
  %add1066 = add nsw i32 %add1062, %shl1065
  store i32 %add1066, i32* %cErr, align 4, !tbaa !5
  %715 = load i32, i32* %cErr, align 4, !tbaa !5
  %cmp1067 = icmp sgt i32 %715, 67108864
  br i1 %cmp1067, label %if.then.1069, label %if.end.1075

if.then.1069:                                     ; preds = %if.end.1047
  %716 = load i8, i8* %bitmask993, align 1, !tbaa !48
  %conv1070 = zext i8 %716 to i32
  %717 = load i8, i8* %c989, align 1, !tbaa !48
  %conv1071 = zext i8 %717 to i32
  %or1072 = or i32 %conv1071, %conv1070
  %conv1073 = trunc i32 %or1072 to i8
  store i8 %conv1073, i8* %c989, align 1, !tbaa !48
  %718 = load i32, i32* %cErr, align 4, !tbaa !5
  %sub1074 = sub nsw i32 %718, 133693440
  store i32 %sub1074, i32* %cErr, align 4, !tbaa !5
  br label %if.end.1075

if.end.1075:                                      ; preds = %if.then.1069, %if.end.1047
  %719 = load i32, i32* %cErr, align 4, !tbaa !5
  %mul1076 = mul nsw i32 %719, 3
  %add1077 = add nsw i32 %mul1076, 8
  %shr1078 = ashr i32 %add1077, 4
  %720 = load i32*, i32** %ep604, align 8, !tbaa !1
  %arrayidx1079 = getelementptr inbounds i32, i32* %720, i64 3
  %721 = load i32, i32* %arrayidx1079, align 4, !tbaa !5
  %add1080 = add nsw i32 %721, %shr1078
  store i32 %add1080, i32* %arrayidx1079, align 4, !tbaa !5
  %722 = load i32, i32* %cErr, align 4, !tbaa !5
  %mul1081 = mul nsw i32 %722, 5
  %723 = load i32, i32* %oldErr994, align 4, !tbaa !5
  %add1082 = add nsw i32 %mul1081, %723
  %add1083 = add nsw i32 %add1082, 8
  %shr1084 = ashr i32 %add1083, 4
  %724 = load i32*, i32** %ep604, align 8, !tbaa !1
  %arrayidx1085 = getelementptr inbounds i32, i32* %724, i64 0
  store i32 %shr1084, i32* %arrayidx1085, align 4, !tbaa !5
  br label %for.inc.1086

for.inc.1086:                                     ; preds = %if.end.1075
  %725 = load i8, i8* %bitmask993, align 1, !tbaa !48
  %conv1087 = zext i8 %725 to i32
  %shl1088 = shl i32 %conv1087, 1
  %conv1089 = trunc i32 %shl1088 to i8
  store i8 %conv1089, i8* %bitmask993, align 1, !tbaa !48
  br label %for.cond.995

for.end.1090:                                     ; preds = %for.cond.995
  %726 = load i8, i8* %y990, align 1, !tbaa !48
  %727 = load i8*, i8** %yP, align 8, !tbaa !1
  %incdec.ptr1091 = getelementptr inbounds i8, i8* %727, i32 -1
  store i8* %incdec.ptr1091, i8** %yP, align 8, !tbaa !1
  store i8 %726, i8* %incdec.ptr1091, align 1, !tbaa !48
  %728 = load i8, i8* %m991, align 1, !tbaa !48
  %729 = load i8*, i8** %mP, align 8, !tbaa !1
  %incdec.ptr1092 = getelementptr inbounds i8, i8* %729, i32 -1
  store i8* %incdec.ptr1092, i8** %mP, align 8, !tbaa !1
  store i8 %728, i8* %incdec.ptr1092, align 1, !tbaa !48
  %730 = load i8, i8* %c989, align 1, !tbaa !48
  %731 = load i8*, i8** %cP, align 8, !tbaa !1
  %incdec.ptr1093 = getelementptr inbounds i8, i8* %731, i32 -1
  store i8* %incdec.ptr1093, i8** %cP, align 8, !tbaa !1
  store i8 %730, i8* %incdec.ptr1093, align 1, !tbaa !48
  %732 = bitcast i32* %oldErr994 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %732) #2
  call void @llvm.lifetime.end(i64 1, i8* %bitmask993) #2
  call void @llvm.lifetime.end(i64 1, i8* %k992) #2
  call void @llvm.lifetime.end(i64 1, i8* %m991) #2
  call void @llvm.lifetime.end(i64 1, i8* %y990) #2
  call void @llvm.lifetime.end(i64 1, i8* %c989) #2
  br label %for.inc.1094

for.inc.1094:                                     ; preds = %for.end.1090
  %733 = load i32, i32* %i607, align 4, !tbaa !5
  %inc1095 = add nsw i32 %733, 1
  store i32 %inc1095, i32* %i607, align 4, !tbaa !5
  br label %for.cond.985

for.end.1096:                                     ; preds = %for.cond.985
  br label %if.end.1097

if.end.1097:                                      ; preds = %for.end.1096, %for.end.983
  br label %sw.epilog.1405

sw.bb.1098:                                       ; preds = %if.end.618
  %734 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %735 = bitcast %struct.gx_device_printer_s* %734 to %struct.gx_device_colour_prn*
  %cmyk1099 = getelementptr inbounds %struct.gx_device_colour_prn, %struct.gx_device_colour_prn* %735, i32 0, i32 68
  %736 = load i16, i16* %cmyk1099, align 2, !tbaa !38
  %conv1100 = sext i16 %736 to i32
  %cmp1101 = icmp sgt i32 %conv1100, 0
  br i1 %cmp1101, label %if.then.1103, label %if.else.1108

if.then.1103:                                     ; preds = %sw.bb.1098
  %arraydecay1104 = getelementptr inbounds [4 x i8*], [4 x i8*]* %data, i32 0, i32 0
  %arraydecay1105 = getelementptr inbounds [4 x [4 x i8*]], [4 x [4 x i8*]]* %plane_data, i32 0, i32 0
  %arraydecay1106 = getelementptr inbounds [2 x i32*], [2 x i32*]* %errors, i32 0, i32 0
  %737 = load i32, i32* %plane_size, align 4, !tbaa !5
  %738 = load i32, i32* %scan, align 4, !tbaa !5
  %call1107 = call i32 @bjc_fscmyk(i8** %arraydecay1104, [4 x i8*]* %arraydecay1105, i32** %arraydecay1106, i32 %737, i32 %738) #5
  br label %if.end.1404

if.else.1108:                                     ; preds = %sw.bb.1098
  %739 = load i32, i32* %scan, align 4, !tbaa !5
  %cmp1109 = icmp eq i32 %739, 0
  br i1 %cmp1109, label %if.then.1111, label %if.else.1257

if.then.1111:                                     ; preds = %if.else.1108
  store i32 0, i32* %i607, align 4, !tbaa !5
  br label %for.cond.1112

for.cond.1112:                                    ; preds = %for.inc.1254, %if.then.1111
  %740 = load i32, i32* %i607, align 4, !tbaa !5
  %741 = load i32, i32* %plane_size, align 4, !tbaa !5
  %cmp1113 = icmp slt i32 %740, %741
  br i1 %cmp1113, label %for.body.1115, label %for.end.1256

for.body.1115:                                    ; preds = %for.cond.1112
  call void @llvm.lifetime.start(i64 1, i8* %c1116) #2
  call void @llvm.lifetime.start(i64 1, i8* %y1117) #2
  call void @llvm.lifetime.start(i64 1, i8* %m1118) #2
  call void @llvm.lifetime.start(i64 1, i8* %k1119) #2
  call void @llvm.lifetime.start(i64 1, i8* %bitmask1120) #2
  %742 = bitcast i32* %oldErr1121 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %742) #2
  store i8 -128, i8* %bitmask1120, align 1, !tbaa !48
  store i8 0, i8* %k1119, align 1, !tbaa !48
  store i8 0, i8* %y1117, align 1, !tbaa !48
  store i8 0, i8* %m1118, align 1, !tbaa !48
  store i8 0, i8* %c1116, align 1, !tbaa !48
  br label %for.cond.1122

for.cond.1122:                                    ; preds = %for.inc.1245, %for.body.1115
  %743 = load i8, i8* %bitmask1120, align 1, !tbaa !48
  %conv1123 = zext i8 %743 to i32
  %cmp1124 = icmp ne i32 %conv1123, 0
  br i1 %cmp1124, label %for.body.1126, label %for.end.1249

for.body.1126:                                    ; preds = %for.cond.1122
  %744 = load i8*, i8** %dp, align 8, !tbaa !1
  %745 = load i8, i8* %744, align 1, !tbaa !48
  %tobool1127 = icmp ne i8 %745, 0
  br i1 %tobool1127, label %if.then.1128, label %if.else.1157

if.then.1128:                                     ; preds = %for.body.1126
  %746 = load i32, i32* %kErr, align 4, !tbaa !5
  store i32 %746, i32* %oldErr1121, align 4, !tbaa !5
  %747 = load i32*, i32** %ep604, align 8, !tbaa !1
  %arrayidx1129 = getelementptr inbounds i32, i32* %747, i64 0
  %748 = load i32, i32* %arrayidx1129, align 4, !tbaa !5
  %749 = load i32, i32* %kErr, align 4, !tbaa !5
  %mul1130 = mul nsw i32 %749, 7
  %add1131 = add nsw i32 %mul1130, 8
  %shr1132 = ashr i32 %add1131, 4
  %add1133 = add nsw i32 %748, %shr1132
  %750 = load i8*, i8** %dp, align 8, !tbaa !1
  %arrayidx1134 = getelementptr inbounds i8, i8* %750, i64 0
  %751 = load i8, i8* %arrayidx1134, align 1, !tbaa !48
  %conv1135 = zext i8 %751 to i32
  %shl1136 = shl i32 %conv1135, 19
  %add1137 = add nsw i32 %add1133, %shl1136
  store i32 %add1137, i32* %kErr, align 4, !tbaa !5
  %752 = load i32, i32* %kErr, align 4, !tbaa !5
  %cmp1138 = icmp sgt i32 %752, 67108864
  br i1 %cmp1138, label %if.then.1140, label %if.end.1146

if.then.1140:                                     ; preds = %if.then.1128
  %753 = load i8, i8* %bitmask1120, align 1, !tbaa !48
  %conv1141 = zext i8 %753 to i32
  %754 = load i8, i8* %k1119, align 1, !tbaa !48
  %conv1142 = zext i8 %754 to i32
  %or1143 = or i32 %conv1142, %conv1141
  %conv1144 = trunc i32 %or1143 to i8
  store i8 %conv1144, i8* %k1119, align 1, !tbaa !48
  %755 = load i32, i32* %kErr, align 4, !tbaa !5
  %sub1145 = sub nsw i32 %755, 133693440
  store i32 %sub1145, i32* %kErr, align 4, !tbaa !5
  br label %if.end.1146

if.end.1146:                                      ; preds = %if.then.1140, %if.then.1128
  %756 = load i32, i32* %kErr, align 4, !tbaa !5
  %mul1147 = mul nsw i32 %756, 3
  %add1148 = add nsw i32 %mul1147, 8
  %shr1149 = ashr i32 %add1148, 4
  %757 = load i32*, i32** %ep604, align 8, !tbaa !1
  %arrayidx1150 = getelementptr inbounds i32, i32* %757, i64 -4
  %758 = load i32, i32* %arrayidx1150, align 4, !tbaa !5
  %add1151 = add nsw i32 %758, %shr1149
  store i32 %add1151, i32* %arrayidx1150, align 4, !tbaa !5
  %759 = load i32, i32* %kErr, align 4, !tbaa !5
  %mul1152 = mul nsw i32 %759, 5
  %760 = load i32, i32* %oldErr1121, align 4, !tbaa !5
  %add1153 = add nsw i32 %mul1152, %760
  %add1154 = add nsw i32 %add1153, 8
  %shr1155 = ashr i32 %add1154, 4
  %761 = load i32*, i32** %ep604, align 8, !tbaa !1
  %arrayidx1156 = getelementptr inbounds i32, i32* %761, i64 0
  store i32 %shr1155, i32* %arrayidx1156, align 4, !tbaa !5
  store i32 0, i32* %yErr, align 4, !tbaa !5
  store i32 0, i32* %mErr, align 4, !tbaa !5
  store i32 0, i32* %cErr, align 4, !tbaa !5
  br label %if.end.1242

if.else.1157:                                     ; preds = %for.body.1126
  %762 = load i32, i32* %cErr, align 4, !tbaa !5
  store i32 %762, i32* %oldErr1121, align 4, !tbaa !5
  %763 = load i32*, i32** %ep604, align 8, !tbaa !1
  %arrayidx1158 = getelementptr inbounds i32, i32* %763, i64 1
  %764 = load i32, i32* %arrayidx1158, align 4, !tbaa !5
  %765 = load i32, i32* %cErr, align 4, !tbaa !5
  %mul1159 = mul nsw i32 %765, 7
  %add1160 = add nsw i32 %mul1159, 8
  %shr1161 = ashr i32 %add1160, 4
  %add1162 = add nsw i32 %764, %shr1161
  %766 = load i8*, i8** %dp, align 8, !tbaa !1
  %arrayidx1163 = getelementptr inbounds i8, i8* %766, i64 1
  %767 = load i8, i8* %arrayidx1163, align 1, !tbaa !48
  %conv1164 = zext i8 %767 to i32
  %shl1165 = shl i32 %conv1164, 19
  %add1166 = add nsw i32 %add1162, %shl1165
  store i32 %add1166, i32* %cErr, align 4, !tbaa !5
  %768 = load i32, i32* %cErr, align 4, !tbaa !5
  %cmp1167 = icmp sgt i32 %768, 67108864
  br i1 %cmp1167, label %if.then.1169, label %if.end.1175

if.then.1169:                                     ; preds = %if.else.1157
  %769 = load i8, i8* %bitmask1120, align 1, !tbaa !48
  %conv1170 = zext i8 %769 to i32
  %770 = load i8, i8* %c1116, align 1, !tbaa !48
  %conv1171 = zext i8 %770 to i32
  %or1172 = or i32 %conv1171, %conv1170
  %conv1173 = trunc i32 %or1172 to i8
  store i8 %conv1173, i8* %c1116, align 1, !tbaa !48
  %771 = load i32, i32* %cErr, align 4, !tbaa !5
  %sub1174 = sub nsw i32 %771, 133693440
  store i32 %sub1174, i32* %cErr, align 4, !tbaa !5
  br label %if.end.1175

if.end.1175:                                      ; preds = %if.then.1169, %if.else.1157
  %772 = load i32, i32* %cErr, align 4, !tbaa !5
  %mul1176 = mul nsw i32 %772, 3
  %add1177 = add nsw i32 %mul1176, 8
  %shr1178 = ashr i32 %add1177, 4
  %773 = load i32*, i32** %ep604, align 8, !tbaa !1
  %arrayidx1179 = getelementptr inbounds i32, i32* %773, i64 -3
  %774 = load i32, i32* %arrayidx1179, align 4, !tbaa !5
  %add1180 = add nsw i32 %774, %shr1178
  store i32 %add1180, i32* %arrayidx1179, align 4, !tbaa !5
  %775 = load i32, i32* %cErr, align 4, !tbaa !5
  %mul1181 = mul nsw i32 %775, 5
  %776 = load i32, i32* %oldErr1121, align 4, !tbaa !5
  %add1182 = add nsw i32 %mul1181, %776
  %add1183 = add nsw i32 %add1182, 8
  %shr1184 = ashr i32 %add1183, 4
  %777 = load i32*, i32** %ep604, align 8, !tbaa !1
  %arrayidx1185 = getelementptr inbounds i32, i32* %777, i64 1
  store i32 %shr1184, i32* %arrayidx1185, align 4, !tbaa !5
  %778 = load i32, i32* %mErr, align 4, !tbaa !5
  store i32 %778, i32* %oldErr1121, align 4, !tbaa !5
  %779 = load i32*, i32** %ep604, align 8, !tbaa !1
  %arrayidx1186 = getelementptr inbounds i32, i32* %779, i64 2
  %780 = load i32, i32* %arrayidx1186, align 4, !tbaa !5
  %781 = load i32, i32* %mErr, align 4, !tbaa !5
  %mul1187 = mul nsw i32 %781, 7
  %add1188 = add nsw i32 %mul1187, 8
  %shr1189 = ashr i32 %add1188, 4
  %add1190 = add nsw i32 %780, %shr1189
  %782 = load i8*, i8** %dp, align 8, !tbaa !1
  %arrayidx1191 = getelementptr inbounds i8, i8* %782, i64 2
  %783 = load i8, i8* %arrayidx1191, align 1, !tbaa !48
  %conv1192 = zext i8 %783 to i32
  %shl1193 = shl i32 %conv1192, 19
  %add1194 = add nsw i32 %add1190, %shl1193
  store i32 %add1194, i32* %mErr, align 4, !tbaa !5
  %784 = load i32, i32* %mErr, align 4, !tbaa !5
  %cmp1195 = icmp sgt i32 %784, 67108864
  br i1 %cmp1195, label %if.then.1197, label %if.end.1203

if.then.1197:                                     ; preds = %if.end.1175
  %785 = load i8, i8* %bitmask1120, align 1, !tbaa !48
  %conv1198 = zext i8 %785 to i32
  %786 = load i8, i8* %m1118, align 1, !tbaa !48
  %conv1199 = zext i8 %786 to i32
  %or1200 = or i32 %conv1199, %conv1198
  %conv1201 = trunc i32 %or1200 to i8
  store i8 %conv1201, i8* %m1118, align 1, !tbaa !48
  %787 = load i32, i32* %mErr, align 4, !tbaa !5
  %sub1202 = sub nsw i32 %787, 133693440
  store i32 %sub1202, i32* %mErr, align 4, !tbaa !5
  br label %if.end.1203

if.end.1203:                                      ; preds = %if.then.1197, %if.end.1175
  %788 = load i32, i32* %mErr, align 4, !tbaa !5
  %mul1204 = mul nsw i32 %788, 3
  %add1205 = add nsw i32 %mul1204, 8
  %shr1206 = ashr i32 %add1205, 4
  %789 = load i32*, i32** %ep604, align 8, !tbaa !1
  %arrayidx1207 = getelementptr inbounds i32, i32* %789, i64 -2
  %790 = load i32, i32* %arrayidx1207, align 4, !tbaa !5
  %add1208 = add nsw i32 %790, %shr1206
  store i32 %add1208, i32* %arrayidx1207, align 4, !tbaa !5
  %791 = load i32, i32* %mErr, align 4, !tbaa !5
  %mul1209 = mul nsw i32 %791, 5
  %792 = load i32, i32* %oldErr1121, align 4, !tbaa !5
  %add1210 = add nsw i32 %mul1209, %792
  %add1211 = add nsw i32 %add1210, 8
  %shr1212 = ashr i32 %add1211, 4
  %793 = load i32*, i32** %ep604, align 8, !tbaa !1
  %arrayidx1213 = getelementptr inbounds i32, i32* %793, i64 2
  store i32 %shr1212, i32* %arrayidx1213, align 4, !tbaa !5
  %794 = load i32, i32* %yErr, align 4, !tbaa !5
  store i32 %794, i32* %oldErr1121, align 4, !tbaa !5
  %795 = load i32*, i32** %ep604, align 8, !tbaa !1
  %arrayidx1214 = getelementptr inbounds i32, i32* %795, i64 3
  %796 = load i32, i32* %arrayidx1214, align 4, !tbaa !5
  %797 = load i32, i32* %yErr, align 4, !tbaa !5
  %mul1215 = mul nsw i32 %797, 7
  %add1216 = add nsw i32 %mul1215, 8
  %shr1217 = ashr i32 %add1216, 4
  %add1218 = add nsw i32 %796, %shr1217
  %798 = load i8*, i8** %dp, align 8, !tbaa !1
  %arrayidx1219 = getelementptr inbounds i8, i8* %798, i64 3
  %799 = load i8, i8* %arrayidx1219, align 1, !tbaa !48
  %conv1220 = zext i8 %799 to i32
  %shl1221 = shl i32 %conv1220, 19
  %add1222 = add nsw i32 %add1218, %shl1221
  store i32 %add1222, i32* %yErr, align 4, !tbaa !5
  %800 = load i32, i32* %yErr, align 4, !tbaa !5
  %cmp1223 = icmp sgt i32 %800, 67108864
  br i1 %cmp1223, label %if.then.1225, label %if.end.1231

if.then.1225:                                     ; preds = %if.end.1203
  %801 = load i8, i8* %bitmask1120, align 1, !tbaa !48
  %conv1226 = zext i8 %801 to i32
  %802 = load i8, i8* %y1117, align 1, !tbaa !48
  %conv1227 = zext i8 %802 to i32
  %or1228 = or i32 %conv1227, %conv1226
  %conv1229 = trunc i32 %or1228 to i8
  store i8 %conv1229, i8* %y1117, align 1, !tbaa !48
  %803 = load i32, i32* %yErr, align 4, !tbaa !5
  %sub1230 = sub nsw i32 %803, 133693440
  store i32 %sub1230, i32* %yErr, align 4, !tbaa !5
  br label %if.end.1231

if.end.1231:                                      ; preds = %if.then.1225, %if.end.1203
  %804 = load i32, i32* %yErr, align 4, !tbaa !5
  %mul1232 = mul nsw i32 %804, 3
  %add1233 = add nsw i32 %mul1232, 8
  %shr1234 = ashr i32 %add1233, 4
  %805 = load i32*, i32** %ep604, align 8, !tbaa !1
  %arrayidx1235 = getelementptr inbounds i32, i32* %805, i64 -1
  %806 = load i32, i32* %arrayidx1235, align 4, !tbaa !5
  %add1236 = add nsw i32 %806, %shr1234
  store i32 %add1236, i32* %arrayidx1235, align 4, !tbaa !5
  %807 = load i32, i32* %yErr, align 4, !tbaa !5
  %mul1237 = mul nsw i32 %807, 5
  %808 = load i32, i32* %oldErr1121, align 4, !tbaa !5
  %add1238 = add nsw i32 %mul1237, %808
  %add1239 = add nsw i32 %add1238, 8
  %shr1240 = ashr i32 %add1239, 4
  %809 = load i32*, i32** %ep604, align 8, !tbaa !1
  %arrayidx1241 = getelementptr inbounds i32, i32* %809, i64 3
  store i32 %shr1240, i32* %arrayidx1241, align 4, !tbaa !5
  br label %if.end.1242

if.end.1242:                                      ; preds = %if.end.1231, %if.end.1146
  %810 = load i8*, i8** %dp, align 8, !tbaa !1
  %add.ptr1243 = getelementptr inbounds i8, i8* %810, i64 4
  store i8* %add.ptr1243, i8** %dp, align 8, !tbaa !1
  %811 = load i32*, i32** %ep604, align 8, !tbaa !1
  %add.ptr1244 = getelementptr inbounds i32, i32* %811, i64 4
  store i32* %add.ptr1244, i32** %ep604, align 8, !tbaa !1
  br label %for.inc.1245

for.inc.1245:                                     ; preds = %if.end.1242
  %812 = load i8, i8* %bitmask1120, align 1, !tbaa !48
  %conv1246 = zext i8 %812 to i32
  %shr1247 = ashr i32 %conv1246, 1
  %conv1248 = trunc i32 %shr1247 to i8
  store i8 %conv1248, i8* %bitmask1120, align 1, !tbaa !48
  br label %for.cond.1122

for.end.1249:                                     ; preds = %for.cond.1122
  %813 = load i8, i8* %k1119, align 1, !tbaa !48
  %814 = load i8*, i8** %kP, align 8, !tbaa !1
  %incdec.ptr1250 = getelementptr inbounds i8, i8* %814, i32 1
  store i8* %incdec.ptr1250, i8** %kP, align 8, !tbaa !1
  store i8 %813, i8* %814, align 1, !tbaa !48
  %815 = load i8, i8* %c1116, align 1, !tbaa !48
  %816 = load i8*, i8** %cP, align 8, !tbaa !1
  %incdec.ptr1251 = getelementptr inbounds i8, i8* %816, i32 1
  store i8* %incdec.ptr1251, i8** %cP, align 8, !tbaa !1
  store i8 %815, i8* %816, align 1, !tbaa !48
  %817 = load i8, i8* %m1118, align 1, !tbaa !48
  %818 = load i8*, i8** %mP, align 8, !tbaa !1
  %incdec.ptr1252 = getelementptr inbounds i8, i8* %818, i32 1
  store i8* %incdec.ptr1252, i8** %mP, align 8, !tbaa !1
  store i8 %817, i8* %818, align 1, !tbaa !48
  %819 = load i8, i8* %y1117, align 1, !tbaa !48
  %820 = load i8*, i8** %yP, align 8, !tbaa !1
  %incdec.ptr1253 = getelementptr inbounds i8, i8* %820, i32 1
  store i8* %incdec.ptr1253, i8** %yP, align 8, !tbaa !1
  store i8 %819, i8* %820, align 1, !tbaa !48
  %821 = bitcast i32* %oldErr1121 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %821) #2
  call void @llvm.lifetime.end(i64 1, i8* %bitmask1120) #2
  call void @llvm.lifetime.end(i64 1, i8* %k1119) #2
  call void @llvm.lifetime.end(i64 1, i8* %m1118) #2
  call void @llvm.lifetime.end(i64 1, i8* %y1117) #2
  call void @llvm.lifetime.end(i64 1, i8* %c1116) #2
  br label %for.inc.1254

for.inc.1254:                                     ; preds = %for.end.1249
  %822 = load i32, i32* %i607, align 4, !tbaa !5
  %inc1255 = add nsw i32 %822, 1
  store i32 %inc1255, i32* %i607, align 4, !tbaa !5
  br label %for.cond.1112

for.end.1256:                                     ; preds = %for.cond.1112
  br label %if.end.1403

if.else.1257:                                     ; preds = %if.else.1108
  store i32 0, i32* %i607, align 4, !tbaa !5
  br label %for.cond.1258

for.cond.1258:                                    ; preds = %for.inc.1400, %if.else.1257
  %823 = load i32, i32* %i607, align 4, !tbaa !5
  %824 = load i32, i32* %plane_size, align 4, !tbaa !5
  %cmp1259 = icmp slt i32 %823, %824
  br i1 %cmp1259, label %for.body.1261, label %for.end.1402

for.body.1261:                                    ; preds = %for.cond.1258
  call void @llvm.lifetime.start(i64 1, i8* %c1262) #2
  call void @llvm.lifetime.start(i64 1, i8* %y1263) #2
  call void @llvm.lifetime.start(i64 1, i8* %m1264) #2
  call void @llvm.lifetime.start(i64 1, i8* %k1265) #2
  call void @llvm.lifetime.start(i64 1, i8* %bitmask1266) #2
  %825 = bitcast i32* %oldErr1267 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %825) #2
  store i8 1, i8* %bitmask1266, align 1, !tbaa !48
  store i8 0, i8* %k1265, align 1, !tbaa !48
  store i8 0, i8* %y1263, align 1, !tbaa !48
  store i8 0, i8* %m1264, align 1, !tbaa !48
  store i8 0, i8* %c1262, align 1, !tbaa !48
  br label %for.cond.1268

for.cond.1268:                                    ; preds = %for.inc.1391, %for.body.1261
  %826 = load i8, i8* %bitmask1266, align 1, !tbaa !48
  %conv1269 = zext i8 %826 to i32
  %cmp1270 = icmp ne i32 %conv1269, 0
  br i1 %cmp1270, label %for.body.1272, label %for.end.1395

for.body.1272:                                    ; preds = %for.cond.1268
  %827 = load i8*, i8** %dp, align 8, !tbaa !1
  %add.ptr1273 = getelementptr inbounds i8, i8* %827, i64 -4
  store i8* %add.ptr1273, i8** %dp, align 8, !tbaa !1
  %828 = load i32*, i32** %ep604, align 8, !tbaa !1
  %add.ptr1274 = getelementptr inbounds i32, i32* %828, i64 -4
  store i32* %add.ptr1274, i32** %ep604, align 8, !tbaa !1
  %829 = load i8*, i8** %dp, align 8, !tbaa !1
  %830 = load i8, i8* %829, align 1, !tbaa !48
  %tobool1275 = icmp ne i8 %830, 0
  br i1 %tobool1275, label %if.then.1276, label %if.else.1305

if.then.1276:                                     ; preds = %for.body.1272
  %831 = load i32, i32* %kErr, align 4, !tbaa !5
  store i32 %831, i32* %oldErr1267, align 4, !tbaa !5
  %832 = load i32*, i32** %ep604, align 8, !tbaa !1
  %arrayidx1277 = getelementptr inbounds i32, i32* %832, i64 0
  %833 = load i32, i32* %arrayidx1277, align 4, !tbaa !5
  %834 = load i32, i32* %kErr, align 4, !tbaa !5
  %mul1278 = mul nsw i32 %834, 7
  %add1279 = add nsw i32 %mul1278, 8
  %shr1280 = ashr i32 %add1279, 4
  %add1281 = add nsw i32 %833, %shr1280
  %835 = load i8*, i8** %dp, align 8, !tbaa !1
  %arrayidx1282 = getelementptr inbounds i8, i8* %835, i64 0
  %836 = load i8, i8* %arrayidx1282, align 1, !tbaa !48
  %conv1283 = zext i8 %836 to i32
  %shl1284 = shl i32 %conv1283, 19
  %add1285 = add nsw i32 %add1281, %shl1284
  store i32 %add1285, i32* %kErr, align 4, !tbaa !5
  %837 = load i32, i32* %kErr, align 4, !tbaa !5
  %cmp1286 = icmp sgt i32 %837, 67108864
  br i1 %cmp1286, label %if.then.1288, label %if.end.1294

if.then.1288:                                     ; preds = %if.then.1276
  %838 = load i8, i8* %bitmask1266, align 1, !tbaa !48
  %conv1289 = zext i8 %838 to i32
  %839 = load i8, i8* %k1265, align 1, !tbaa !48
  %conv1290 = zext i8 %839 to i32
  %or1291 = or i32 %conv1290, %conv1289
  %conv1292 = trunc i32 %or1291 to i8
  store i8 %conv1292, i8* %k1265, align 1, !tbaa !48
  %840 = load i32, i32* %kErr, align 4, !tbaa !5
  %sub1293 = sub nsw i32 %840, 133693440
  store i32 %sub1293, i32* %kErr, align 4, !tbaa !5
  br label %if.end.1294

if.end.1294:                                      ; preds = %if.then.1288, %if.then.1276
  %841 = load i32, i32* %kErr, align 4, !tbaa !5
  %mul1295 = mul nsw i32 %841, 3
  %add1296 = add nsw i32 %mul1295, 8
  %shr1297 = ashr i32 %add1296, 4
  %842 = load i32*, i32** %ep604, align 8, !tbaa !1
  %arrayidx1298 = getelementptr inbounds i32, i32* %842, i64 4
  %843 = load i32, i32* %arrayidx1298, align 4, !tbaa !5
  %add1299 = add nsw i32 %843, %shr1297
  store i32 %add1299, i32* %arrayidx1298, align 4, !tbaa !5
  %844 = load i32, i32* %kErr, align 4, !tbaa !5
  %mul1300 = mul nsw i32 %844, 5
  %845 = load i32, i32* %oldErr1267, align 4, !tbaa !5
  %add1301 = add nsw i32 %mul1300, %845
  %add1302 = add nsw i32 %add1301, 8
  %shr1303 = ashr i32 %add1302, 4
  %846 = load i32*, i32** %ep604, align 8, !tbaa !1
  %arrayidx1304 = getelementptr inbounds i32, i32* %846, i64 0
  store i32 %shr1303, i32* %arrayidx1304, align 4, !tbaa !5
  store i32 0, i32* %yErr, align 4, !tbaa !5
  store i32 0, i32* %mErr, align 4, !tbaa !5
  store i32 0, i32* %cErr, align 4, !tbaa !5
  br label %if.end.1390

if.else.1305:                                     ; preds = %for.body.1272
  %847 = load i32, i32* %yErr, align 4, !tbaa !5
  store i32 %847, i32* %oldErr1267, align 4, !tbaa !5
  %848 = load i32*, i32** %ep604, align 8, !tbaa !1
  %arrayidx1306 = getelementptr inbounds i32, i32* %848, i64 3
  %849 = load i32, i32* %arrayidx1306, align 4, !tbaa !5
  %850 = load i32, i32* %yErr, align 4, !tbaa !5
  %mul1307 = mul nsw i32 %850, 7
  %add1308 = add nsw i32 %mul1307, 8
  %shr1309 = ashr i32 %add1308, 4
  %add1310 = add nsw i32 %849, %shr1309
  %851 = load i8*, i8** %dp, align 8, !tbaa !1
  %arrayidx1311 = getelementptr inbounds i8, i8* %851, i64 3
  %852 = load i8, i8* %arrayidx1311, align 1, !tbaa !48
  %conv1312 = zext i8 %852 to i32
  %shl1313 = shl i32 %conv1312, 19
  %add1314 = add nsw i32 %add1310, %shl1313
  store i32 %add1314, i32* %yErr, align 4, !tbaa !5
  %853 = load i32, i32* %yErr, align 4, !tbaa !5
  %cmp1315 = icmp sgt i32 %853, 67108864
  br i1 %cmp1315, label %if.then.1317, label %if.end.1323

if.then.1317:                                     ; preds = %if.else.1305
  %854 = load i8, i8* %bitmask1266, align 1, !tbaa !48
  %conv1318 = zext i8 %854 to i32
  %855 = load i8, i8* %y1263, align 1, !tbaa !48
  %conv1319 = zext i8 %855 to i32
  %or1320 = or i32 %conv1319, %conv1318
  %conv1321 = trunc i32 %or1320 to i8
  store i8 %conv1321, i8* %y1263, align 1, !tbaa !48
  %856 = load i32, i32* %yErr, align 4, !tbaa !5
  %sub1322 = sub nsw i32 %856, 133693440
  store i32 %sub1322, i32* %yErr, align 4, !tbaa !5
  br label %if.end.1323

if.end.1323:                                      ; preds = %if.then.1317, %if.else.1305
  %857 = load i32, i32* %yErr, align 4, !tbaa !5
  %mul1324 = mul nsw i32 %857, 3
  %add1325 = add nsw i32 %mul1324, 8
  %shr1326 = ashr i32 %add1325, 4
  %858 = load i32*, i32** %ep604, align 8, !tbaa !1
  %arrayidx1327 = getelementptr inbounds i32, i32* %858, i64 7
  %859 = load i32, i32* %arrayidx1327, align 4, !tbaa !5
  %add1328 = add nsw i32 %859, %shr1326
  store i32 %add1328, i32* %arrayidx1327, align 4, !tbaa !5
  %860 = load i32, i32* %yErr, align 4, !tbaa !5
  %mul1329 = mul nsw i32 %860, 5
  %861 = load i32, i32* %oldErr1267, align 4, !tbaa !5
  %add1330 = add nsw i32 %mul1329, %861
  %add1331 = add nsw i32 %add1330, 8
  %shr1332 = ashr i32 %add1331, 4
  %862 = load i32*, i32** %ep604, align 8, !tbaa !1
  %arrayidx1333 = getelementptr inbounds i32, i32* %862, i64 3
  store i32 %shr1332, i32* %arrayidx1333, align 4, !tbaa !5
  %863 = load i32, i32* %mErr, align 4, !tbaa !5
  store i32 %863, i32* %oldErr1267, align 4, !tbaa !5
  %864 = load i32*, i32** %ep604, align 8, !tbaa !1
  %arrayidx1334 = getelementptr inbounds i32, i32* %864, i64 2
  %865 = load i32, i32* %arrayidx1334, align 4, !tbaa !5
  %866 = load i32, i32* %mErr, align 4, !tbaa !5
  %mul1335 = mul nsw i32 %866, 7
  %add1336 = add nsw i32 %mul1335, 8
  %shr1337 = ashr i32 %add1336, 4
  %add1338 = add nsw i32 %865, %shr1337
  %867 = load i8*, i8** %dp, align 8, !tbaa !1
  %arrayidx1339 = getelementptr inbounds i8, i8* %867, i64 2
  %868 = load i8, i8* %arrayidx1339, align 1, !tbaa !48
  %conv1340 = zext i8 %868 to i32
  %shl1341 = shl i32 %conv1340, 19
  %add1342 = add nsw i32 %add1338, %shl1341
  store i32 %add1342, i32* %mErr, align 4, !tbaa !5
  %869 = load i32, i32* %mErr, align 4, !tbaa !5
  %cmp1343 = icmp sgt i32 %869, 67108864
  br i1 %cmp1343, label %if.then.1345, label %if.end.1351

if.then.1345:                                     ; preds = %if.end.1323
  %870 = load i8, i8* %bitmask1266, align 1, !tbaa !48
  %conv1346 = zext i8 %870 to i32
  %871 = load i8, i8* %m1264, align 1, !tbaa !48
  %conv1347 = zext i8 %871 to i32
  %or1348 = or i32 %conv1347, %conv1346
  %conv1349 = trunc i32 %or1348 to i8
  store i8 %conv1349, i8* %m1264, align 1, !tbaa !48
  %872 = load i32, i32* %mErr, align 4, !tbaa !5
  %sub1350 = sub nsw i32 %872, 133693440
  store i32 %sub1350, i32* %mErr, align 4, !tbaa !5
  br label %if.end.1351

if.end.1351:                                      ; preds = %if.then.1345, %if.end.1323
  %873 = load i32, i32* %mErr, align 4, !tbaa !5
  %mul1352 = mul nsw i32 %873, 3
  %add1353 = add nsw i32 %mul1352, 8
  %shr1354 = ashr i32 %add1353, 4
  %874 = load i32*, i32** %ep604, align 8, !tbaa !1
  %arrayidx1355 = getelementptr inbounds i32, i32* %874, i64 6
  %875 = load i32, i32* %arrayidx1355, align 4, !tbaa !5
  %add1356 = add nsw i32 %875, %shr1354
  store i32 %add1356, i32* %arrayidx1355, align 4, !tbaa !5
  %876 = load i32, i32* %mErr, align 4, !tbaa !5
  %mul1357 = mul nsw i32 %876, 5
  %877 = load i32, i32* %oldErr1267, align 4, !tbaa !5
  %add1358 = add nsw i32 %mul1357, %877
  %add1359 = add nsw i32 %add1358, 8
  %shr1360 = ashr i32 %add1359, 4
  %878 = load i32*, i32** %ep604, align 8, !tbaa !1
  %arrayidx1361 = getelementptr inbounds i32, i32* %878, i64 2
  store i32 %shr1360, i32* %arrayidx1361, align 4, !tbaa !5
  %879 = load i32, i32* %cErr, align 4, !tbaa !5
  store i32 %879, i32* %oldErr1267, align 4, !tbaa !5
  %880 = load i32*, i32** %ep604, align 8, !tbaa !1
  %arrayidx1362 = getelementptr inbounds i32, i32* %880, i64 1
  %881 = load i32, i32* %arrayidx1362, align 4, !tbaa !5
  %882 = load i32, i32* %cErr, align 4, !tbaa !5
  %mul1363 = mul nsw i32 %882, 7
  %add1364 = add nsw i32 %mul1363, 8
  %shr1365 = ashr i32 %add1364, 4
  %add1366 = add nsw i32 %881, %shr1365
  %883 = load i8*, i8** %dp, align 8, !tbaa !1
  %arrayidx1367 = getelementptr inbounds i8, i8* %883, i64 1
  %884 = load i8, i8* %arrayidx1367, align 1, !tbaa !48
  %conv1368 = zext i8 %884 to i32
  %shl1369 = shl i32 %conv1368, 19
  %add1370 = add nsw i32 %add1366, %shl1369
  store i32 %add1370, i32* %cErr, align 4, !tbaa !5
  %885 = load i32, i32* %cErr, align 4, !tbaa !5
  %cmp1371 = icmp sgt i32 %885, 67108864
  br i1 %cmp1371, label %if.then.1373, label %if.end.1379

if.then.1373:                                     ; preds = %if.end.1351
  %886 = load i8, i8* %bitmask1266, align 1, !tbaa !48
  %conv1374 = zext i8 %886 to i32
  %887 = load i8, i8* %c1262, align 1, !tbaa !48
  %conv1375 = zext i8 %887 to i32
  %or1376 = or i32 %conv1375, %conv1374
  %conv1377 = trunc i32 %or1376 to i8
  store i8 %conv1377, i8* %c1262, align 1, !tbaa !48
  %888 = load i32, i32* %cErr, align 4, !tbaa !5
  %sub1378 = sub nsw i32 %888, 133693440
  store i32 %sub1378, i32* %cErr, align 4, !tbaa !5
  br label %if.end.1379

if.end.1379:                                      ; preds = %if.then.1373, %if.end.1351
  %889 = load i32, i32* %cErr, align 4, !tbaa !5
  %mul1380 = mul nsw i32 %889, 3
  %add1381 = add nsw i32 %mul1380, 8
  %shr1382 = ashr i32 %add1381, 4
  %890 = load i32*, i32** %ep604, align 8, !tbaa !1
  %arrayidx1383 = getelementptr inbounds i32, i32* %890, i64 5
  %891 = load i32, i32* %arrayidx1383, align 4, !tbaa !5
  %add1384 = add nsw i32 %891, %shr1382
  store i32 %add1384, i32* %arrayidx1383, align 4, !tbaa !5
  %892 = load i32, i32* %cErr, align 4, !tbaa !5
  %mul1385 = mul nsw i32 %892, 5
  %893 = load i32, i32* %oldErr1267, align 4, !tbaa !5
  %add1386 = add nsw i32 %mul1385, %893
  %add1387 = add nsw i32 %add1386, 8
  %shr1388 = ashr i32 %add1387, 4
  %894 = load i32*, i32** %ep604, align 8, !tbaa !1
  %arrayidx1389 = getelementptr inbounds i32, i32* %894, i64 1
  store i32 %shr1388, i32* %arrayidx1389, align 4, !tbaa !5
  br label %if.end.1390

if.end.1390:                                      ; preds = %if.end.1379, %if.end.1294
  br label %for.inc.1391

for.inc.1391:                                     ; preds = %if.end.1390
  %895 = load i8, i8* %bitmask1266, align 1, !tbaa !48
  %conv1392 = zext i8 %895 to i32
  %shl1393 = shl i32 %conv1392, 1
  %conv1394 = trunc i32 %shl1393 to i8
  store i8 %conv1394, i8* %bitmask1266, align 1, !tbaa !48
  br label %for.cond.1268

for.end.1395:                                     ; preds = %for.cond.1268
  %896 = load i8, i8* %y1263, align 1, !tbaa !48
  %897 = load i8*, i8** %yP, align 8, !tbaa !1
  %incdec.ptr1396 = getelementptr inbounds i8, i8* %897, i32 -1
  store i8* %incdec.ptr1396, i8** %yP, align 8, !tbaa !1
  store i8 %896, i8* %incdec.ptr1396, align 1, !tbaa !48
  %898 = load i8, i8* %m1264, align 1, !tbaa !48
  %899 = load i8*, i8** %mP, align 8, !tbaa !1
  %incdec.ptr1397 = getelementptr inbounds i8, i8* %899, i32 -1
  store i8* %incdec.ptr1397, i8** %mP, align 8, !tbaa !1
  store i8 %898, i8* %incdec.ptr1397, align 1, !tbaa !48
  %900 = load i8, i8* %c1262, align 1, !tbaa !48
  %901 = load i8*, i8** %cP, align 8, !tbaa !1
  %incdec.ptr1398 = getelementptr inbounds i8, i8* %901, i32 -1
  store i8* %incdec.ptr1398, i8** %cP, align 8, !tbaa !1
  store i8 %900, i8* %incdec.ptr1398, align 1, !tbaa !48
  %902 = load i8, i8* %k1265, align 1, !tbaa !48
  %903 = load i8*, i8** %kP, align 8, !tbaa !1
  %incdec.ptr1399 = getelementptr inbounds i8, i8* %903, i32 -1
  store i8* %incdec.ptr1399, i8** %kP, align 8, !tbaa !1
  store i8 %902, i8* %incdec.ptr1399, align 1, !tbaa !48
  %904 = bitcast i32* %oldErr1267 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %904) #2
  call void @llvm.lifetime.end(i64 1, i8* %bitmask1266) #2
  call void @llvm.lifetime.end(i64 1, i8* %k1265) #2
  call void @llvm.lifetime.end(i64 1, i8* %m1264) #2
  call void @llvm.lifetime.end(i64 1, i8* %y1263) #2
  call void @llvm.lifetime.end(i64 1, i8* %c1262) #2
  br label %for.inc.1400

for.inc.1400:                                     ; preds = %for.end.1395
  %905 = load i32, i32* %i607, align 4, !tbaa !5
  %inc1401 = add nsw i32 %905, 1
  store i32 %inc1401, i32* %i607, align 4, !tbaa !5
  br label %for.cond.1258

for.end.1402:                                     ; preds = %for.cond.1258
  br label %if.end.1403

if.end.1403:                                      ; preds = %for.end.1402, %for.end.1256
  br label %if.end.1404

if.end.1404:                                      ; preds = %if.end.1403, %if.then.1103
  br label %sw.epilog.1405

sw.epilog.1405:                                   ; preds = %if.end.618, %if.end.1404, %if.end.1097, %sw.epilog.867, %for.end.682
  %906 = load i32, i32* %num_comps, align 4, !tbaa !5
  %cmp1406 = icmp eq i32 %906, 4
  br i1 %cmp1406, label %land.lhs.true.1408, label %if.end.1471

land.lhs.true.1408:                               ; preds = %sw.epilog.1405
  %907 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %908 = bitcast %struct.gx_device_printer_s* %907 to %struct.gx_device_colour_prn*
  %cmyk1409 = getelementptr inbounds %struct.gx_device_colour_prn, %struct.gx_device_colour_prn* %908, i32 0, i32 68
  %909 = load i16, i16* %cmyk1409, align 2, !tbaa !38
  %conv1410 = sext i16 %909 to i32
  %cmp1411 = icmp sle i32 %conv1410, 0
  br i1 %cmp1411, label %if.then.1416, label %lor.lhs.false.1413

lor.lhs.false.1413:                               ; preds = %land.lhs.true.1408
  %910 = load i32, i32* %expanded_bpp, align 4, !tbaa !5
  %cmp1414 = icmp ne i32 %910, 32
  br i1 %cmp1414, label %if.then.1416, label %if.end.1471

if.then.1416:                                     ; preds = %lor.lhs.false.1413, %land.lhs.true.1408
  %911 = bitcast i64** %kp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %911) #2
  %912 = load i32, i32* %scan, align 4, !tbaa !5
  %idxprom1417 = sext i32 %912 to i64
  %arrayidx1418 = getelementptr inbounds [4 x [4 x i8*]], [4 x [4 x i8*]]* %plane_data, i32 0, i64 %idxprom1417
  %arrayidx1419 = getelementptr inbounds [4 x i8*], [4 x i8*]* %arrayidx1418, i32 0, i64 3
  %913 = load i8*, i8** %arrayidx1419, align 8, !tbaa !1
  %914 = bitcast i8* %913 to i64*
  store i64* %914, i64** %kp, align 8, !tbaa !1
  %915 = bitcast i64** %cp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %915) #2
  %916 = load i32, i32* %scan, align 4, !tbaa !5
  %idxprom1420 = sext i32 %916 to i64
  %arrayidx1421 = getelementptr inbounds [4 x [4 x i8*]], [4 x [4 x i8*]]* %plane_data, i32 0, i64 %idxprom1420
  %arrayidx1422 = getelementptr inbounds [4 x i8*], [4 x i8*]* %arrayidx1421, i32 0, i64 2
  %917 = load i8*, i8** %arrayidx1422, align 8, !tbaa !1
  %918 = bitcast i8* %917 to i64*
  store i64* %918, i64** %cp, align 8, !tbaa !1
  %919 = bitcast i64** %mp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %919) #2
  %920 = load i32, i32* %scan, align 4, !tbaa !5
  %idxprom1423 = sext i32 %920 to i64
  %arrayidx1424 = getelementptr inbounds [4 x [4 x i8*]], [4 x [4 x i8*]]* %plane_data, i32 0, i64 %idxprom1423
  %arrayidx1425 = getelementptr inbounds [4 x i8*], [4 x i8*]* %arrayidx1424, i32 0, i64 1
  %921 = load i8*, i8** %arrayidx1425, align 8, !tbaa !1
  %922 = bitcast i8* %921 to i64*
  store i64* %922, i64** %mp, align 8, !tbaa !1
  %923 = bitcast i64** %yp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %923) #2
  %924 = load i32, i32* %scan, align 4, !tbaa !5
  %idxprom1426 = sext i32 %924 to i64
  %arrayidx1427 = getelementptr inbounds [4 x [4 x i8*]], [4 x [4 x i8*]]* %plane_data, i32 0, i64 %idxprom1426
  %arrayidx1428 = getelementptr inbounds [4 x i8*], [4 x i8*]* %arrayidx1427, i32 0, i64 0
  %925 = load i8*, i8** %arrayidx1428, align 8, !tbaa !1
  %926 = bitcast i8* %925 to i64*
  store i64* %926, i64** %yp, align 8, !tbaa !1
  %927 = load i32, i32* %bits_per_pixel, align 4, !tbaa !5
  %cmp1429 = icmp sgt i32 %927, 4
  br i1 %cmp1429, label %if.then.1431, label %if.else.1450

if.then.1431:                                     ; preds = %if.then.1416
  store i32 0, i32* %i607, align 4, !tbaa !5
  br label %for.cond.1432

for.cond.1432:                                    ; preds = %for.inc.1447, %if.then.1431
  %928 = load i32, i32* %i607, align 4, !tbaa !5
  %929 = load i32, i32* %plane_size, align 4, !tbaa !5
  %div1433 = sdiv i32 %929, 8
  %cmp1434 = icmp slt i32 %928, %div1433
  br i1 %cmp1434, label %for.body.1436, label %for.end.1449

for.body.1436:                                    ; preds = %for.cond.1432
  %930 = bitcast i64* %bits to i8*
  call void @llvm.lifetime.start(i64 8, i8* %930) #2
  %931 = load i64*, i64** %cp, align 8, !tbaa !1
  %932 = load i64, i64* %931, align 8, !tbaa !28
  %933 = load i64*, i64** %mp, align 8, !tbaa !1
  %934 = load i64, i64* %933, align 8, !tbaa !28
  %and1437 = and i64 %932, %934
  %935 = load i64*, i64** %yp, align 8, !tbaa !1
  %936 = load i64, i64* %935, align 8, !tbaa !28
  %and1438 = and i64 %and1437, %936
  store i64 %and1438, i64* %bits, align 8, !tbaa !28
  %937 = load i64, i64* %bits, align 8, !tbaa !28
  %938 = load i64*, i64** %kp, align 8, !tbaa !1
  %incdec.ptr1439 = getelementptr inbounds i64, i64* %938, i32 1
  store i64* %incdec.ptr1439, i64** %kp, align 8, !tbaa !1
  %939 = load i64, i64* %938, align 8, !tbaa !28
  %or1440 = or i64 %939, %937
  store i64 %or1440, i64* %938, align 8, !tbaa !28
  %940 = load i64, i64* %bits, align 8, !tbaa !28
  %neg = xor i64 %940, -1
  store i64 %neg, i64* %bits, align 8, !tbaa !28
  %941 = load i64, i64* %bits, align 8, !tbaa !28
  %942 = load i64*, i64** %cp, align 8, !tbaa !1
  %incdec.ptr1441 = getelementptr inbounds i64, i64* %942, i32 1
  store i64* %incdec.ptr1441, i64** %cp, align 8, !tbaa !1
  %943 = load i64, i64* %942, align 8, !tbaa !28
  %and1442 = and i64 %943, %941
  store i64 %and1442, i64* %942, align 8, !tbaa !28
  %944 = load i64, i64* %bits, align 8, !tbaa !28
  %945 = load i64*, i64** %mp, align 8, !tbaa !1
  %incdec.ptr1443 = getelementptr inbounds i64, i64* %945, i32 1
  store i64* %incdec.ptr1443, i64** %mp, align 8, !tbaa !1
  %946 = load i64, i64* %945, align 8, !tbaa !28
  %and1444 = and i64 %946, %944
  store i64 %and1444, i64* %945, align 8, !tbaa !28
  %947 = load i64, i64* %bits, align 8, !tbaa !28
  %948 = load i64*, i64** %yp, align 8, !tbaa !1
  %incdec.ptr1445 = getelementptr inbounds i64, i64* %948, i32 1
  store i64* %incdec.ptr1445, i64** %yp, align 8, !tbaa !1
  %949 = load i64, i64* %948, align 8, !tbaa !28
  %and1446 = and i64 %949, %947
  store i64 %and1446, i64* %948, align 8, !tbaa !28
  %950 = bitcast i64* %bits to i8*
  call void @llvm.lifetime.end(i64 8, i8* %950) #2
  br label %for.inc.1447

for.inc.1447:                                     ; preds = %for.body.1436
  %951 = load i32, i32* %i607, align 4, !tbaa !5
  %inc1448 = add nsw i32 %951, 1
  store i32 %inc1448, i32* %i607, align 4, !tbaa !5
  br label %for.cond.1432

for.end.1449:                                     ; preds = %for.cond.1432
  br label %if.end.1470

if.else.1450:                                     ; preds = %if.then.1416
  store i32 0, i32* %i607, align 4, !tbaa !5
  br label %for.cond.1451

for.cond.1451:                                    ; preds = %for.inc.1467, %if.else.1450
  %952 = load i32, i32* %i607, align 4, !tbaa !5
  %953 = load i32, i32* %plane_size, align 4, !tbaa !5
  %div1452 = sdiv i32 %953, 8
  %cmp1453 = icmp slt i32 %952, %div1452
  br i1 %cmp1453, label %for.body.1455, label %for.end.1469

for.body.1455:                                    ; preds = %for.cond.1451
  %954 = bitcast i64* %bits1456 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %954) #2
  %955 = load i64*, i64** %cp, align 8, !tbaa !1
  %956 = load i64, i64* %955, align 8, !tbaa !28
  %957 = load i64*, i64** %mp, align 8, !tbaa !1
  %958 = load i64, i64* %957, align 8, !tbaa !28
  %and1457 = and i64 %956, %958
  %959 = load i64*, i64** %yp, align 8, !tbaa !1
  %960 = load i64, i64* %959, align 8, !tbaa !28
  %and1458 = and i64 %and1457, %960
  store i64 %and1458, i64* %bits1456, align 8, !tbaa !28
  %961 = load i64, i64* %bits1456, align 8, !tbaa !28
  %962 = load i64*, i64** %kp, align 8, !tbaa !1
  %incdec.ptr1459 = getelementptr inbounds i64, i64* %962, i32 1
  store i64* %incdec.ptr1459, i64** %kp, align 8, !tbaa !1
  store i64 %961, i64* %962, align 8, !tbaa !28
  %963 = load i64, i64* %bits1456, align 8, !tbaa !28
  %neg1460 = xor i64 %963, -1
  store i64 %neg1460, i64* %bits1456, align 8, !tbaa !28
  %964 = load i64, i64* %bits1456, align 8, !tbaa !28
  %965 = load i64*, i64** %cp, align 8, !tbaa !1
  %incdec.ptr1461 = getelementptr inbounds i64, i64* %965, i32 1
  store i64* %incdec.ptr1461, i64** %cp, align 8, !tbaa !1
  %966 = load i64, i64* %965, align 8, !tbaa !28
  %and1462 = and i64 %966, %964
  store i64 %and1462, i64* %965, align 8, !tbaa !28
  %967 = load i64, i64* %bits1456, align 8, !tbaa !28
  %968 = load i64*, i64** %mp, align 8, !tbaa !1
  %incdec.ptr1463 = getelementptr inbounds i64, i64* %968, i32 1
  store i64* %incdec.ptr1463, i64** %mp, align 8, !tbaa !1
  %969 = load i64, i64* %968, align 8, !tbaa !28
  %and1464 = and i64 %969, %967
  store i64 %and1464, i64* %968, align 8, !tbaa !28
  %970 = load i64, i64* %bits1456, align 8, !tbaa !28
  %971 = load i64*, i64** %yp, align 8, !tbaa !1
  %incdec.ptr1465 = getelementptr inbounds i64, i64* %971, i32 1
  store i64* %incdec.ptr1465, i64** %yp, align 8, !tbaa !1
  %972 = load i64, i64* %971, align 8, !tbaa !28
  %and1466 = and i64 %972, %970
  store i64 %and1466, i64* %971, align 8, !tbaa !28
  %973 = bitcast i64* %bits1456 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %973) #2
  br label %for.inc.1467

for.inc.1467:                                     ; preds = %for.body.1455
  %974 = load i32, i32* %i607, align 4, !tbaa !5
  %inc1468 = add nsw i32 %974, 1
  store i32 %inc1468, i32* %i607, align 4, !tbaa !5
  br label %for.cond.1451

for.end.1469:                                     ; preds = %for.cond.1451
  br label %if.end.1470

if.end.1470:                                      ; preds = %for.end.1469, %for.end.1449
  %975 = bitcast i64** %yp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %975) #2
  %976 = bitcast i64** %mp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %976) #2
  %977 = bitcast i64** %cp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %977) #2
  %978 = bitcast i64** %kp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %978) #2
  br label %if.end.1471

if.end.1471:                                      ; preds = %if.end.1470, %lor.lhs.false.1413, %sw.epilog.1405
  store i32 0, i32* %zero_row_count, align 4, !tbaa !5
  %979 = load i32, i32* %num_comps, align 4, !tbaa !5
  %sub1472 = sub nsw i32 %979, 1
  store i32 %sub1472, i32* %i607, align 4, !tbaa !5
  br label %for.cond.1473

for.cond.1473:                                    ; preds = %for.inc.1708, %if.end.1471
  %980 = load i32, i32* %i607, align 4, !tbaa !5
  %cmp1474 = icmp sge i32 %980, 0
  br i1 %cmp1474, label %for.body.1476, label %for.end.1710

for.body.1476:                                    ; preds = %for.cond.1473
  %981 = bitcast i32* %output_plane to i8*
  call void @llvm.lifetime.start(i64 4, i8* %981) #2
  store i32 1, i32* %output_plane, align 4, !tbaa !5
  %982 = bitcast i32* %out_count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %982) #2
  store i32 0, i32* %out_count, align 4, !tbaa !5
  %983 = load i32, i32* %ptype.addr, align 4, !tbaa !5
  switch i32 %983, label %sw.epilog.1640 [
    i32 0, label %sw.bb.1477
    i32 1, label %sw.bb.1477
    i32 2, label %sw.bb.1507
    i32 4, label %sw.bb.1520
    i32 7, label %sw.bb.1520
    i32 5, label %sw.bb.1551
    i32 3, label %sw.bb.1571
    i32 8, label %sw.bb.1571
    i32 10, label %sw.bb.1630
    i32 11, label %sw.bb.1630
  ]

sw.bb.1477:                                       ; preds = %for.body.1476, %for.body.1476
  %984 = load i32, i32* %plane_size, align 4, !tbaa !5
  %985 = load i32, i32* %i607, align 4, !tbaa !5
  %idxprom1478 = sext i32 %985 to i64
  %986 = load i32, i32* %scan, align 4, !tbaa !5
  %idxprom1479 = sext i32 %986 to i64
  %arrayidx1480 = getelementptr inbounds [4 x [4 x i8*]], [4 x [4 x i8*]]* %plane_data, i32 0, i64 %idxprom1479
  %arrayidx1481 = getelementptr inbounds [4 x i8*], [4 x i8*]* %arrayidx1480, i32 0, i64 %idxprom1478
  %987 = load i8*, i8** %arrayidx1481, align 8, !tbaa !1
  %988 = load i32, i32* %i607, align 4, !tbaa !5
  %idxprom1482 = sext i32 %988 to i64
  %989 = load i32, i32* %scan, align 4, !tbaa !5
  %sub1483 = sub nsw i32 1, %989
  %idxprom1484 = sext i32 %sub1483 to i64
  %arrayidx1485 = getelementptr inbounds [4 x [4 x i8*]], [4 x [4 x i8*]]* %plane_data, i32 0, i64 %idxprom1484
  %arrayidx1486 = getelementptr inbounds [4 x i8*], [4 x i8*]* %arrayidx1485, i32 0, i64 %idxprom1482
  %990 = load i8*, i8** %arrayidx1486, align 8, !tbaa !1
  %991 = load i8*, i8** %out_data, align 8, !tbaa !1
  %call1487 = call i32 @gdev_pcl_mode9compress(i32 %984, i8* %987, i8* %990, i8* %991) #5
  store i32 %call1487, i32* %out_count, align 4, !tbaa !5
  %992 = load i32, i32* %out_count, align 4, !tbaa !5
  %cmp1488 = icmp eq i32 %992, 0
  br i1 %cmp1488, label %if.then.1490, label %if.else.1498

if.then.1490:                                     ; preds = %sw.bb.1477
  store i32 0, i32* %output_plane, align 4, !tbaa !5
  %993 = load i32, i32* %i607, align 4, !tbaa !5
  %cmp1491 = icmp eq i32 %993, 0
  br i1 %cmp1491, label %if.then.1493, label %if.else.1495

if.then.1493:                                     ; preds = %if.then.1490
  %994 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call1494 = call i32 @fputc(i32 119, %struct._IO_FILE* %994) #5
  br label %if.end.1497

if.else.1495:                                     ; preds = %if.then.1490
  %995 = load i32, i32* %zero_row_count, align 4, !tbaa !5
  %inc1496 = add nsw i32 %995, 1
  store i32 %inc1496, i32* %zero_row_count, align 4, !tbaa !5
  br label %if.end.1497

if.end.1497:                                      ; preds = %if.else.1495, %if.then.1493
  br label %if.end.1506

if.else.1498:                                     ; preds = %sw.bb.1477
  br label %for.cond.1499

for.cond.1499:                                    ; preds = %for.inc.1503, %if.else.1498
  %996 = load i32, i32* %zero_row_count, align 4, !tbaa !5
  %tobool1500 = icmp ne i32 %996, 0
  br i1 %tobool1500, label %for.body.1501, label %for.end.1505

for.body.1501:                                    ; preds = %for.cond.1499
  %997 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call1502 = call i32 @fputc(i32 118, %struct._IO_FILE* %997) #5
  br label %for.inc.1503

for.inc.1503:                                     ; preds = %for.body.1501
  %998 = load i32, i32* %zero_row_count, align 4, !tbaa !5
  %dec1504 = add nsw i32 %998, -1
  store i32 %dec1504, i32* %zero_row_count, align 4, !tbaa !5
  br label %for.cond.1499

for.end.1505:                                     ; preds = %for.cond.1499
  br label %if.end.1506

if.end.1506:                                      ; preds = %for.end.1505, %if.end.1497
  br label %sw.epilog.1640

sw.bb.1507:                                       ; preds = %for.body.1476
  %999 = load i32, i32* %i607, align 4, !tbaa !5
  %idxprom1508 = sext i32 %999 to i64
  %1000 = load i32, i32* %scan, align 4, !tbaa !5
  %idxprom1509 = sext i32 %1000 to i64
  %arrayidx1510 = getelementptr inbounds [4 x [4 x i8*]], [4 x [4 x i8*]]* %plane_data, i32 0, i64 %idxprom1509
  %arrayidx1511 = getelementptr inbounds [4 x i8*], [4 x i8*]* %arrayidx1510, i32 0, i64 %idxprom1508
  %1001 = load i8*, i8** %arrayidx1511, align 8, !tbaa !1
  %1002 = load i32, i32* %i607, align 4, !tbaa !5
  %idxprom1512 = sext i32 %1002 to i64
  %1003 = load i32, i32* %scan, align 4, !tbaa !5
  %idxprom1513 = sext i32 %1003 to i64
  %arrayidx1514 = getelementptr inbounds [4 x [4 x i8*]], [4 x [4 x i8*]]* %plane_data, i32 0, i64 %idxprom1513
  %arrayidx1515 = getelementptr inbounds [4 x i8*], [4 x i8*]* %arrayidx1514, i32 0, i64 %idxprom1512
  %1004 = load i8*, i8** %arrayidx1515, align 8, !tbaa !1
  %1005 = load i32, i32* %plane_size, align 4, !tbaa !5
  %idx.ext1516 = sext i32 %1005 to i64
  %add.ptr1517 = getelementptr inbounds i8, i8* %1004, i64 %idx.ext1516
  %add.ptr1518 = getelementptr inbounds i8, i8* %add.ptr1517, i64 -1
  %1006 = load i8*, i8** %out_data, align 8, !tbaa !1
  %call1519 = call i32 @gdev_pcl_mode1compress(i8* %1001, i8* %add.ptr1518, i8* %1006) #5
  store i32 %call1519, i32* %out_count, align 4, !tbaa !5
  br label %sw.epilog.1640

sw.bb.1520:                                       ; preds = %for.body.1476, %for.body.1476
  %1007 = load i32, i32* %num_comps, align 4, !tbaa !5
  %cmp1521 = icmp sgt i32 %1007, 1
  br i1 %cmp1521, label %if.then.1523, label %if.end.1538

if.then.1523:                                     ; preds = %sw.bb.1520
  %1008 = bitcast i64** %wp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1008) #2
  %1009 = load i32, i32* %i607, align 4, !tbaa !5
  %idxprom1524 = sext i32 %1009 to i64
  %1010 = load i32, i32* %scan, align 4, !tbaa !5
  %idxprom1525 = sext i32 %1010 to i64
  %arrayidx1526 = getelementptr inbounds [4 x [4 x i8*]], [4 x [4 x i8*]]* %plane_data, i32 0, i64 %idxprom1525
  %arrayidx1527 = getelementptr inbounds [4 x i8*], [4 x i8*]* %arrayidx1526, i32 0, i64 %idxprom1524
  %1011 = load i8*, i8** %arrayidx1527, align 8, !tbaa !1
  %1012 = bitcast i8* %1011 to i64*
  store i64* %1012, i64** %wp, align 8, !tbaa !1
  store i32 0, i32* %j608, align 4, !tbaa !5
  br label %for.cond.1528

for.cond.1528:                                    ; preds = %for.inc.1534, %if.then.1523
  %1013 = load i32, i32* %j608, align 4, !tbaa !5
  %1014 = load i32, i32* %plane_size, align 4, !tbaa !5
  %div1529 = sdiv i32 %1014, 8
  %cmp1530 = icmp slt i32 %1013, %div1529
  br i1 %cmp1530, label %for.body.1532, label %for.end.1537

for.body.1532:                                    ; preds = %for.cond.1528
  %1015 = load i64*, i64** %wp, align 8, !tbaa !1
  %1016 = load i64, i64* %1015, align 8, !tbaa !28
  %neg1533 = xor i64 %1016, -1
  %1017 = load i64*, i64** %wp, align 8, !tbaa !1
  store i64 %neg1533, i64* %1017, align 8, !tbaa !28
  br label %for.inc.1534

for.inc.1534:                                     ; preds = %for.body.1532
  %1018 = load i32, i32* %j608, align 4, !tbaa !5
  %inc1535 = add nsw i32 %1018, 1
  store i32 %inc1535, i32* %j608, align 4, !tbaa !5
  %1019 = load i64*, i64** %wp, align 8, !tbaa !1
  %incdec.ptr1536 = getelementptr inbounds i64, i64* %1019, i32 1
  store i64* %incdec.ptr1536, i64** %wp, align 8, !tbaa !1
  br label %for.cond.1528

for.end.1537:                                     ; preds = %for.cond.1528
  %1020 = bitcast i64** %wp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1020) #2
  br label %if.end.1538

if.end.1538:                                      ; preds = %for.end.1537, %sw.bb.1520
  %1021 = load i32, i32* %i607, align 4, !tbaa !5
  %idxprom1539 = sext i32 %1021 to i64
  %1022 = load i32, i32* %scan, align 4, !tbaa !5
  %idxprom1540 = sext i32 %1022 to i64
  %arrayidx1541 = getelementptr inbounds [4 x [4 x i8*]], [4 x [4 x i8*]]* %plane_data, i32 0, i64 %idxprom1540
  %arrayidx1542 = getelementptr inbounds [4 x i8*], [4 x i8*]* %arrayidx1541, i32 0, i64 %idxprom1539
  %1023 = load i8*, i8** %arrayidx1542, align 8, !tbaa !1
  %1024 = load i32, i32* %i607, align 4, !tbaa !5
  %idxprom1543 = sext i32 %1024 to i64
  %1025 = load i32, i32* %scan, align 4, !tbaa !5
  %idxprom1544 = sext i32 %1025 to i64
  %arrayidx1545 = getelementptr inbounds [4 x [4 x i8*]], [4 x [4 x i8*]]* %plane_data, i32 0, i64 %idxprom1544
  %arrayidx1546 = getelementptr inbounds [4 x i8*], [4 x i8*]* %arrayidx1545, i32 0, i64 %idxprom1543
  %1026 = load i8*, i8** %arrayidx1546, align 8, !tbaa !1
  %1027 = load i32, i32* %plane_size, align 4, !tbaa !5
  %idx.ext1547 = sext i32 %1027 to i64
  %add.ptr1548 = getelementptr inbounds i8, i8* %1026, i64 %idx.ext1547
  %add.ptr1549 = getelementptr inbounds i8, i8* %add.ptr1548, i64 -1
  %1028 = load i8*, i8** %out_data, align 8, !tbaa !1
  %call1550 = call i32 @gdev_pcl_mode1compress(i8* %1023, i8* %add.ptr1549, i8* %1028) #5
  store i32 %call1550, i32* %out_count, align 4, !tbaa !5
  br label %sw.epilog.1640

sw.bb.1551:                                       ; preds = %for.body.1476
  %1029 = load i32, i32* %num_comps, align 4, !tbaa !5
  %cmp1552 = icmp sgt i32 %1029, 1
  br i1 %cmp1552, label %if.then.1554, label %if.end.1570

if.then.1554:                                     ; preds = %sw.bb.1551
  %1030 = bitcast i64** %wp1555 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1030) #2
  %1031 = load i32, i32* %i607, align 4, !tbaa !5
  %idxprom1556 = sext i32 %1031 to i64
  %1032 = load i32, i32* %scan, align 4, !tbaa !5
  %idxprom1557 = sext i32 %1032 to i64
  %arrayidx1558 = getelementptr inbounds [4 x [4 x i8*]], [4 x [4 x i8*]]* %plane_data, i32 0, i64 %idxprom1557
  %arrayidx1559 = getelementptr inbounds [4 x i8*], [4 x i8*]* %arrayidx1558, i32 0, i64 %idxprom1556
  %1033 = load i8*, i8** %arrayidx1559, align 8, !tbaa !1
  %1034 = bitcast i8* %1033 to i64*
  store i64* %1034, i64** %wp1555, align 8, !tbaa !1
  store i32 0, i32* %j608, align 4, !tbaa !5
  br label %for.cond.1560

for.cond.1560:                                    ; preds = %for.inc.1566, %if.then.1554
  %1035 = load i32, i32* %j608, align 4, !tbaa !5
  %1036 = load i32, i32* %plane_size, align 4, !tbaa !5
  %div1561 = sdiv i32 %1036, 8
  %cmp1562 = icmp slt i32 %1035, %div1561
  br i1 %cmp1562, label %for.body.1564, label %for.end.1569

for.body.1564:                                    ; preds = %for.cond.1560
  %1037 = load i64*, i64** %wp1555, align 8, !tbaa !1
  %1038 = load i64, i64* %1037, align 8, !tbaa !28
  %neg1565 = xor i64 %1038, -1
  %1039 = load i64*, i64** %wp1555, align 8, !tbaa !1
  store i64 %neg1565, i64* %1039, align 8, !tbaa !28
  br label %for.inc.1566

for.inc.1566:                                     ; preds = %for.body.1564
  %1040 = load i32, i32* %j608, align 4, !tbaa !5
  %inc1567 = add nsw i32 %1040, 1
  store i32 %inc1567, i32* %j608, align 4, !tbaa !5
  %1041 = load i64*, i64** %wp1555, align 8, !tbaa !1
  %incdec.ptr1568 = getelementptr inbounds i64, i64* %1041, i32 1
  store i64* %incdec.ptr1568, i64** %wp1555, align 8, !tbaa !1
  br label %for.cond.1560

for.end.1569:                                     ; preds = %for.cond.1560
  %1042 = bitcast i64** %wp1555 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1042) #2
  br label %if.end.1570

if.end.1570:                                      ; preds = %for.end.1569, %sw.bb.1551
  br label %sw.bb.1571

sw.bb.1571:                                       ; preds = %for.body.1476, %for.body.1476, %if.end.1570
  %1043 = bitcast i8** %plane to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1043) #2
  %1044 = load i32, i32* %i607, align 4, !tbaa !5
  %idxprom1572 = sext i32 %1044 to i64
  %1045 = load i32, i32* %scan, align 4, !tbaa !5
  %idxprom1573 = sext i32 %1045 to i64
  %arrayidx1574 = getelementptr inbounds [4 x [4 x i8*]], [4 x [4 x i8*]]* %plane_data, i32 0, i64 %idxprom1573
  %arrayidx1575 = getelementptr inbounds [4 x i8*], [4 x i8*]* %arrayidx1574, i32 0, i64 %idxprom1572
  %1046 = load i8*, i8** %arrayidx1575, align 8, !tbaa !1
  store i8* %1046, i8** %plane, align 8, !tbaa !1
  %1047 = bitcast i8** %prev_plane to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1047) #2
  %1048 = load i32, i32* %i607, align 4, !tbaa !5
  %idxprom1576 = sext i32 %1048 to i64
  %1049 = load i32, i32* %scan, align 4, !tbaa !5
  %sub1577 = sub nsw i32 1, %1049
  %idxprom1578 = sext i32 %sub1577 to i64
  %arrayidx1579 = getelementptr inbounds [4 x [4 x i8*]], [4 x [4 x i8*]]* %plane_data, i32 0, i64 %idxprom1578
  %arrayidx1580 = getelementptr inbounds [4 x i8*], [4 x i8*]* %arrayidx1579, i32 0, i64 %idxprom1576
  %1050 = load i8*, i8** %arrayidx1580, align 8, !tbaa !1
  store i8* %1050, i8** %prev_plane, align 8, !tbaa !1
  %1051 = bitcast i64** %row to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1051) #2
  %1052 = load i8*, i8** %plane, align 8, !tbaa !1
  %1053 = bitcast i8* %1052 to i64*
  store i64* %1053, i64** %row, align 8, !tbaa !1
  %1054 = bitcast i64** %end_row to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1054) #2
  %1055 = load i64*, i64** %row, align 8, !tbaa !1
  %1056 = load i32, i32* %plane_size, align 4, !tbaa !5
  %div1581 = sdiv i32 %1056, 8
  %idx.ext1582 = sext i32 %div1581 to i64
  %add.ptr1583 = getelementptr inbounds i64, i64* %1055, i64 %idx.ext1582
  store i64* %add.ptr1583, i64** %end_row, align 8, !tbaa !1
  %1057 = bitcast i32* %count2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1057) #2
  %1058 = load i64*, i64** %row, align 8, !tbaa !1
  %1059 = load i64*, i64** %end_row, align 8, !tbaa !1
  %1060 = load i8*, i8** %out_row_alt, align 8, !tbaa !1
  %call1584 = call i32 @gdev_pcl_mode2compress(i64* %1058, i64* %1059, i8* %1060) #5
  store i32 %call1584, i32* %count2, align 4, !tbaa !5
  %1061 = bitcast i32* %count3 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1061) #2
  %1062 = load i32, i32* %plane_size, align 4, !tbaa !5
  %1063 = load i8*, i8** %plane, align 8, !tbaa !1
  %1064 = load i8*, i8** %prev_plane, align 8, !tbaa !1
  %1065 = load i8*, i8** %out_row, align 8, !tbaa !1
  %call1585 = call i32 @gdev_pcl_mode3compress(i32 %1062, i8* %1063, i8* %1064, i8* %1065) #5
  store i32 %call1585, i32* %count3, align 4, !tbaa !5
  %1066 = bitcast i32* %penalty to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1066) #2
  %1067 = load i32, i32* %combined_escapes, align 4, !tbaa !5
  %tobool1586 = icmp ne i32 %1067, 0
  br i1 %tobool1586, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.bb.1571
  %call1587 = call i64 @strlen(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.101, i32 0, i32 0)) #6
  br label %cond.end

cond.false:                                       ; preds = %sw.bb.1571
  %call1588 = call i64 @strlen(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.102, i32 0, i32 0)) #6
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond1589 = phi i64 [ %call1587, %cond.true ], [ %call1588, %cond.false ]
  %conv1590 = trunc i64 %cond1589 to i32
  store i32 %conv1590, i32* %penalty, align 4, !tbaa !5
  %1068 = bitcast i32* %penalty2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1068) #2
  %1069 = load i32, i32* %compression, align 4, !tbaa !5
  %cmp1591 = icmp eq i32 %1069, 2
  br i1 %cmp1591, label %cond.true.1593, label %cond.false.1594

cond.true.1593:                                   ; preds = %cond.end
  br label %cond.end.1595

cond.false.1594:                                  ; preds = %cond.end
  %1070 = load i32, i32* %penalty, align 4, !tbaa !5
  br label %cond.end.1595

cond.end.1595:                                    ; preds = %cond.false.1594, %cond.true.1593
  %cond1596 = phi i32 [ 0, %cond.true.1593 ], [ %1070, %cond.false.1594 ]
  store i32 %cond1596, i32* %penalty2, align 4, !tbaa !5
  %1071 = bitcast i32* %penalty3 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1071) #2
  %1072 = load i32, i32* %compression, align 4, !tbaa !5
  %cmp1597 = icmp eq i32 %1072, 3
  br i1 %cmp1597, label %cond.true.1599, label %cond.false.1600

cond.true.1599:                                   ; preds = %cond.end.1595
  br label %cond.end.1601

cond.false.1600:                                  ; preds = %cond.end.1595
  %1073 = load i32, i32* %penalty, align 4, !tbaa !5
  br label %cond.end.1601

cond.end.1601:                                    ; preds = %cond.false.1600, %cond.true.1599
  %cond1602 = phi i32 [ 0, %cond.true.1599 ], [ %1073, %cond.false.1600 ]
  store i32 %cond1602, i32* %penalty3, align 4, !tbaa !5
  %1074 = load i32, i32* %count3, align 4, !tbaa !5
  %1075 = load i32, i32* %penalty3, align 4, !tbaa !5
  %add1603 = add nsw i32 %1074, %1075
  %1076 = load i32, i32* %count2, align 4, !tbaa !5
  %1077 = load i32, i32* %penalty2, align 4, !tbaa !5
  %add1604 = add nsw i32 %1076, %1077
  %cmp1605 = icmp slt i32 %add1603, %add1604
  br i1 %cmp1605, label %if.then.1607, label %if.else.1618

if.then.1607:                                     ; preds = %cond.end.1601
  %1078 = load i32, i32* %compression, align 4, !tbaa !5
  %cmp1608 = icmp ne i32 %1078, 3
  br i1 %cmp1608, label %if.then.1610, label %if.end.1617

if.then.1610:                                     ; preds = %if.then.1607
  %1079 = load i32, i32* %combined_escapes, align 4, !tbaa !5
  %tobool1611 = icmp ne i32 %1079, 0
  br i1 %tobool1611, label %if.then.1612, label %if.else.1614

if.then.1612:                                     ; preds = %if.then.1610
  %1080 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call1613 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.103, i32 0, i32 0), %struct._IO_FILE* %1080) #5
  br label %if.end.1616

if.else.1614:                                     ; preds = %if.then.1610
  %1081 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call1615 = call i32 @fputs(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.104, i32 0, i32 0), %struct._IO_FILE* %1081) #5
  br label %if.end.1616

if.end.1616:                                      ; preds = %if.else.1614, %if.then.1612
  store i32 3, i32* %compression, align 4, !tbaa !5
  br label %if.end.1617

if.end.1617:                                      ; preds = %if.end.1616, %if.then.1607
  %1082 = load i8*, i8** %out_row, align 8, !tbaa !1
  store i8* %1082, i8** %out_data, align 8, !tbaa !1
  %1083 = load i32, i32* %count3, align 4, !tbaa !5
  store i32 %1083, i32* %out_count, align 4, !tbaa !5
  br label %if.end.1629

if.else.1618:                                     ; preds = %cond.end.1601
  %1084 = load i32, i32* %compression, align 4, !tbaa !5
  %cmp1619 = icmp ne i32 %1084, 2
  br i1 %cmp1619, label %if.then.1621, label %if.end.1628

if.then.1621:                                     ; preds = %if.else.1618
  %1085 = load i32, i32* %combined_escapes, align 4, !tbaa !5
  %tobool1622 = icmp ne i32 %1085, 0
  br i1 %tobool1622, label %if.then.1623, label %if.else.1625

if.then.1623:                                     ; preds = %if.then.1621
  %1086 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call1624 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.105, i32 0, i32 0), %struct._IO_FILE* %1086) #5
  br label %if.end.1627

if.else.1625:                                     ; preds = %if.then.1621
  %1087 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call1626 = call i32 @fputs(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.106, i32 0, i32 0), %struct._IO_FILE* %1087) #5
  br label %if.end.1627

if.end.1627:                                      ; preds = %if.else.1625, %if.then.1623
  store i32 2, i32* %compression, align 4, !tbaa !5
  br label %if.end.1628

if.end.1628:                                      ; preds = %if.end.1627, %if.else.1618
  %1088 = load i8*, i8** %out_row_alt, align 8, !tbaa !1
  store i8* %1088, i8** %out_data, align 8, !tbaa !1
  %1089 = load i32, i32* %count2, align 4, !tbaa !5
  store i32 %1089, i32* %out_count, align 4, !tbaa !5
  br label %if.end.1629

if.end.1629:                                      ; preds = %if.end.1628, %if.end.1617
  %1090 = bitcast i32* %penalty3 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1090) #2
  %1091 = bitcast i32* %penalty2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1091) #2
  %1092 = bitcast i32* %penalty to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1092) #2
  %1093 = bitcast i32* %count3 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1093) #2
  %1094 = bitcast i32* %count2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1094) #2
  %1095 = bitcast i64** %end_row to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1095) #2
  %1096 = bitcast i64** %row to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1096) #2
  %1097 = bitcast i8** %prev_plane to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1097) #2
  %1098 = bitcast i8** %plane to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1098) #2
  br label %sw.epilog.1640

sw.bb.1630:                                       ; preds = %for.body.1476, %for.body.1476
  %1099 = bitcast i8** %plane1631 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1099) #2
  %1100 = load i32, i32* %i607, align 4, !tbaa !5
  %idxprom1632 = sext i32 %1100 to i64
  %1101 = load i32, i32* %scan, align 4, !tbaa !5
  %idxprom1633 = sext i32 %1101 to i64
  %arrayidx1634 = getelementptr inbounds [4 x [4 x i8*]], [4 x [4 x i8*]]* %plane_data, i32 0, i64 %idxprom1633
  %arrayidx1635 = getelementptr inbounds [4 x i8*], [4 x i8*]* %arrayidx1634, i32 0, i64 %idxprom1632
  %1102 = load i8*, i8** %arrayidx1635, align 8, !tbaa !1
  store i8* %1102, i8** %plane1631, align 8, !tbaa !1
  %1103 = bitcast i32* %count21636 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1103) #2
  %1104 = load i8*, i8** %plane1631, align 8, !tbaa !1
  %1105 = load i8*, i8** %plane1631, align 8, !tbaa !1
  %1106 = load i32, i32* %plane_size, align 4, !tbaa !5
  %idx.ext1637 = sext i32 %1106 to i64
  %add.ptr1638 = getelementptr inbounds i8, i8* %1105, i64 %idx.ext1637
  %1107 = load i8*, i8** %out_row_alt, align 8, !tbaa !1
  %call1639 = call i32 @bjc_compress(i8* %1104, i8* %add.ptr1638, i8* %1107) #5
  store i32 %call1639, i32* %count21636, align 4, !tbaa !5
  %1108 = load i8*, i8** %out_row_alt, align 8, !tbaa !1
  store i8* %1108, i8** %out_data, align 8, !tbaa !1
  %1109 = load i32, i32* %count21636, align 4, !tbaa !5
  store i32 %1109, i32* %out_count, align 4, !tbaa !5
  %1110 = bitcast i32* %count21636 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1110) #2
  %1111 = bitcast i8** %plane1631 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1111) #2
  br label %sw.epilog.1640

sw.epilog.1640:                                   ; preds = %for.body.1476, %sw.bb.1630, %if.end.1629, %if.end.1538, %sw.bb.1507, %if.end.1506
  %1112 = load i32, i32* %output_plane, align 4, !tbaa !5
  %tobool1641 = icmp ne i32 %1112, 0
  br i1 %tobool1641, label %if.then.1642, label %if.end.1707

if.then.1642:                                     ; preds = %sw.epilog.1640
  %1113 = load i32, i32* %ptype.addr, align 4, !tbaa !5
  %cmp1643 = icmp eq i32 %1113, 2
  br i1 %cmp1643, label %if.then.1645, label %if.else.1653

if.then.1645:                                     ; preds = %if.then.1642
  %1114 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %1115 = load i32, i32* %i607, align 4, !tbaa !5
  %idxprom1646 = sext i32 %1115 to i64
  %arrayidx1647 = getelementptr inbounds [5 x i8], [5 x i8]* @.str.108, i32 0, i64 %idxprom1646
  %1116 = load i8, i8* %arrayidx1647, align 1, !tbaa !48
  %conv1648 = sext i8 %1116 to i32
  %1117 = load i32, i32* %out_count, align 4, !tbaa !5
  %and1649 = and i32 %1117, 255
  %1118 = load i32, i32* %out_count, align 4, !tbaa !5
  %shr1650 = ashr i32 %1118, 8
  %and1651 = and i32 %shr1650, 255
  %call1652 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1114, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.107, i32 0, i32 0), i32 %conv1648, i32 %and1649, i32 %and1651) #5
  br label %if.end.1700

if.else.1653:                                     ; preds = %if.then.1642
  %1119 = load i32, i32* %combined_escapes, align 4, !tbaa !5
  %tobool1654 = icmp ne i32 %1119, 0
  br i1 %tobool1654, label %if.then.1655, label %if.else.1660

if.then.1655:                                     ; preds = %if.else.1653
  %1120 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %1121 = load i32, i32* %out_count, align 4, !tbaa !5
  %1122 = load i32, i32* %i607, align 4, !tbaa !5
  %idxprom1656 = sext i32 %1122 to i64
  %arrayidx1657 = getelementptr inbounds [5 x i8], [5 x i8]* @.str.110, i32 0, i64 %idxprom1656
  %1123 = load i8, i8* %arrayidx1657, align 1, !tbaa !48
  %conv1658 = sext i8 %1123 to i32
  %call1659 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1120, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.109, i32 0, i32 0), i32 %1121, i32 %conv1658) #5
  br label %if.end.1699

if.else.1660:                                     ; preds = %if.else.1653
  %1124 = load i32, i32* %ptype.addr, align 4, !tbaa !5
  %cmp1661 = icmp eq i32 %1124, 10
  br i1 %cmp1661, label %if.then.1666, label %lor.lhs.false.1663

lor.lhs.false.1663:                               ; preds = %if.else.1660
  %1125 = load i32, i32* %ptype.addr, align 4, !tbaa !5
  %cmp1664 = icmp eq i32 %1125, 11
  br i1 %cmp1664, label %if.then.1666, label %if.else.1682

if.then.1666:                                     ; preds = %lor.lhs.false.1663, %if.else.1660
  %1126 = load i32, i32* %out_count, align 4, !tbaa !5
  %tobool1667 = icmp ne i32 %1126, 0
  br i1 %tobool1667, label %if.then.1668, label %if.end.1676

if.then.1668:                                     ; preds = %if.then.1666
  %1127 = load i32, i32* %num_comps, align 4, !tbaa !5
  %cmp1669 = icmp eq i32 %1127, 1
  br i1 %cmp1669, label %cond.true.1671, label %cond.false.1672

cond.true.1671:                                   ; preds = %if.then.1668
  br label %cond.end.1673

cond.false.1672:                                  ; preds = %if.then.1668
  %1128 = load i32, i32* %i607, align 4, !tbaa !5
  br label %cond.end.1673

cond.end.1673:                                    ; preds = %cond.false.1672, %cond.true.1671
  %cond1674 = phi i32 [ 3, %cond.true.1671 ], [ %1128, %cond.false.1672 ]
  %1129 = load i32, i32* %out_count, align 4, !tbaa !5
  %1130 = load i8*, i8** %out_data, align 8, !tbaa !1
  %1131 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %1132 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call1675 = call i32 @bjc_raster_cmd(i32 %cond1674, i32 %1129, i8* %1130, %struct.gx_device_printer_s* %1131, %struct._IO_FILE* %1132) #5
  br label %if.end.1676

if.end.1676:                                      ; preds = %cond.end.1673, %if.then.1666
  %1133 = load i32, i32* %i607, align 4, !tbaa !5
  %cmp1677 = icmp eq i32 %1133, 0
  br i1 %cmp1677, label %if.then.1679, label %if.end.1681

if.then.1679:                                     ; preds = %if.end.1676
  %1134 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %1135 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call1680 = call i32 @bjc_v_skip(i32 1, %struct.gx_device_printer_s* %1134, %struct._IO_FILE* %1135) #5
  br label %if.end.1681

if.end.1681:                                      ; preds = %if.then.1679, %if.end.1676
  br label %if.end.1698

if.else.1682:                                     ; preds = %lor.lhs.false.1663
  %1136 = load i32, i32* %ptype.addr, align 4, !tbaa !5
  %cmp1683 = icmp eq i32 %1136, 9
  br i1 %cmp1683, label %if.then.1685, label %if.else.1692

if.then.1685:                                     ; preds = %if.else.1682
  %1137 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %1138 = load i32, i32* %i607, align 4, !tbaa !5
  %conv1686 = trunc i32 %1138 to i8
  %1139 = load i32, i32* %i607, align 4, !tbaa !5
  %idxprom1687 = sext i32 %1139 to i64
  %1140 = load i32, i32* %scan, align 4, !tbaa !5
  %idxprom1688 = sext i32 %1140 to i64
  %arrayidx1689 = getelementptr inbounds [4 x [4 x i8*]], [4 x [4 x i8*]]* %plane_data, i32 0, i64 %idxprom1688
  %arrayidx1690 = getelementptr inbounds [4 x i8*], [4 x i8*]* %arrayidx1689, i32 0, i64 %idxprom1687
  %1141 = load i8*, i8** %arrayidx1690, align 8, !tbaa !1
  %1142 = load i32, i32* %plane_size, align 4, !tbaa !5
  %call1691 = call i32 @ep_print_image(%struct._IO_FILE* %1137, %struct.ep_globals* %eg, i8 signext %conv1686, i8* %1141, i32 %1142) #5
  br label %if.end.1697

if.else.1692:                                     ; preds = %if.else.1682
  %1143 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %1144 = load i32, i32* %out_count, align 4, !tbaa !5
  %1145 = load i32, i32* %i607, align 4, !tbaa !5
  %idxprom1693 = sext i32 %1145 to i64
  %arrayidx1694 = getelementptr inbounds [5 x i8], [5 x i8]* @.str.108, i32 0, i64 %idxprom1693
  %1146 = load i8, i8* %arrayidx1694, align 1, !tbaa !48
  %conv1695 = sext i8 %1146 to i32
  %call1696 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1143, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.111, i32 0, i32 0), i32 %1144, i32 %conv1695) #5
  br label %if.end.1697

if.end.1697:                                      ; preds = %if.else.1692, %if.then.1685
  br label %if.end.1698

if.end.1698:                                      ; preds = %if.end.1697, %if.end.1681
  br label %if.end.1699

if.end.1699:                                      ; preds = %if.end.1698, %if.then.1655
  br label %if.end.1700

if.end.1700:                                      ; preds = %if.end.1699, %if.then.1645
  %1147 = load i32, i32* %ptype.addr, align 4, !tbaa !5
  %cmp1701 = icmp slt i32 %1147, 9
  br i1 %cmp1701, label %if.then.1703, label %if.end.1706

if.then.1703:                                     ; preds = %if.end.1700
  %1148 = load i8*, i8** %out_data, align 8, !tbaa !1
  %1149 = load i32, i32* %out_count, align 4, !tbaa !5
  %conv1704 = sext i32 %1149 to i64
  %1150 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call1705 = call i64 @fwrite(i8* %1148, i64 1, i64 %conv1704, %struct._IO_FILE* %1150) #5
  br label %if.end.1706

if.end.1706:                                      ; preds = %if.then.1703, %if.end.1700
  br label %if.end.1707

if.end.1707:                                      ; preds = %if.end.1706, %sw.epilog.1640
  %1151 = bitcast i32* %out_count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1151) #2
  %1152 = bitcast i32* %output_plane to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1152) #2
  br label %for.inc.1708

for.inc.1708:                                     ; preds = %if.end.1707
  %1153 = load i32, i32* %i607, align 4, !tbaa !5
  %dec1709 = add nsw i32 %1153, -1
  store i32 %dec1709, i32* %i607, align 4, !tbaa !5
  br label %for.cond.1473

for.end.1710:                                     ; preds = %for.cond.1473
  %1154 = load i32, i32* %ptype.addr, align 4, !tbaa !5
  %cmp1711 = icmp eq i32 %1154, 9
  br i1 %cmp1711, label %if.then.1713, label %if.end.1715

if.then.1713:                                     ; preds = %for.end.1710
  %1155 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call1714 = call i32 @ep_print_image(%struct._IO_FILE* %1155, %struct.ep_globals* %eg, i8 signext 73, i8* null, i32 0) #5
  br label %if.end.1715

if.end.1715:                                      ; preds = %if.then.1713, %for.end.1710
  %1156 = load i32, i32* %scan, align 4, !tbaa !5
  %sub1716 = sub nsw i32 1, %1156
  store i32 %sub1716, i32* %scan, align 4, !tbaa !5
  %1157 = bitcast i8** %odp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1157) #2
  %1158 = bitcast i32* %j608 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1158) #2
  %1159 = bitcast i32* %i607 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1159) #2
  %1160 = bitcast i32* %zero_row_count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1160) #2
  %1161 = bitcast i32** %ep604 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1161) #2
  %1162 = bitcast i8** %dp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1162) #2
  %1163 = bitcast i8** %yP to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1163) #2
  %1164 = bitcast i8** %mP to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1164) #2
  %1165 = bitcast i8** %cP to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1165) #2
  %1166 = bitcast i8** %kP to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1166) #2
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.1715, %if.then.509
  %1167 = bitcast i64** %end_data to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1167) #2
  %1168 = bitcast i64** %data_words to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1168) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 22, label %for.inc.1718
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc.1718

for.inc.1718:                                     ; preds = %cleanup.cont, %cleanup
  %1169 = load i32, i32* %lnum, align 4, !tbaa !5
  %inc1719 = add nsw i32 %1169, 1
  store i32 %inc1719, i32* %lnum, align 4, !tbaa !5
  br label %for.cond.485

for.end.1720:                                     ; preds = %for.cond.485
  %1170 = bitcast i64* %rmask to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1170) #2
  %1171 = bitcast i32* %num_blank_lines to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1171) #2
  %1172 = bitcast i32* %lend to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1172) #2
  %1173 = bitcast i32* %start_rows to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1173) #2
  %1174 = bitcast i32* %i430 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1174) #2
  %1175 = bitcast i32* %lnum to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1175) #2
  %1176 = bitcast i32* %this_pass to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1176) #2
  %1177 = bitcast i32* %kErr to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1177) #2
  %1178 = bitcast i32* %yErr to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1178) #2
  %1179 = bitcast i32* %mErr to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1179) #2
  %1180 = bitcast i32* %cErr to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1180) #2
  %1181 = load i32, i32* %combined_escapes, align 4, !tbaa !5
  %tobool1721 = icmp ne i32 %1181, 0
  br i1 %tobool1721, label %if.then.1722, label %if.end.1724

if.then.1722:                                     ; preds = %for.end.1720
  %1182 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call1723 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.112, i32 0, i32 0), %struct._IO_FILE* %1182) #5
  br label %if.end.1724

if.end.1724:                                      ; preds = %if.then.1722, %for.end.1720
  %1183 = load i32, i32* %ptype.addr, align 4, !tbaa !5
  %cmp1725 = icmp eq i32 %1183, 10
  br i1 %cmp1725, label %if.then.1730, label %lor.lhs.false.1727

lor.lhs.false.1727:                               ; preds = %if.end.1724
  %1184 = load i32, i32* %ptype.addr, align 4, !tbaa !5
  %cmp1728 = icmp eq i32 %1184, 11
  br i1 %cmp1728, label %if.then.1730, label %if.else.1732

if.then.1730:                                     ; preds = %lor.lhs.false.1727, %if.end.1724
  %1185 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %1186 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call1731 = call i32 @bjc_finish_page(%struct.gx_device_printer_s* %1185, %struct._IO_FILE* %1186) #5
  br label %if.end.1744

if.else.1732:                                     ; preds = %lor.lhs.false.1727
  %1187 = load i32, i32* %ptype.addr, align 4, !tbaa !5
  %cmp1733 = icmp eq i32 %1187, 2
  br i1 %cmp1733, label %if.then.1735, label %if.else.1737

if.then.1735:                                     ; preds = %if.else.1732
  %1188 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call1736 = call i32 @fputs(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.113, i32 0, i32 0), %struct._IO_FILE* %1188) #5
  br label %if.end.1743

if.else.1737:                                     ; preds = %if.else.1732
  %1189 = load i32, i32* %ptype.addr, align 4, !tbaa !5
  %cmp1738 = icmp ne i32 %1189, 9
  br i1 %cmp1738, label %if.then.1740, label %if.end.1742

if.then.1740:                                     ; preds = %if.else.1737
  %1190 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call1741 = call i32 @fputs(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.114, i32 0, i32 0), %struct._IO_FILE* %1190) #5
  br label %if.end.1742

if.end.1742:                                      ; preds = %if.then.1740, %if.else.1737
  br label %if.end.1743

if.end.1743:                                      ; preds = %if.end.1742, %if.then.1735
  br label %if.end.1744

if.end.1744:                                      ; preds = %if.end.1743, %if.then.1730
  %1191 = load i32, i32* %ptype.addr, align 4, !tbaa !5
  %cmp1745 = icmp eq i32 %1191, 4
  br i1 %cmp1745, label %if.then.1747, label %if.else.1749

if.then.1747:                                     ; preds = %if.end.1744
  %1192 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call1748 = call i32 @fputc(i32 12, %struct._IO_FILE* %1192) #5
  br label %if.end.1778

if.else.1749:                                     ; preds = %if.end.1744
  %1193 = load i32, i32* %ptype.addr, align 4, !tbaa !5
  %cmp1750 = icmp eq i32 %1193, 2
  br i1 %cmp1750, label %if.then.1752, label %if.else.1754

if.then.1752:                                     ; preds = %if.else.1749
  %1194 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call1753 = call i32 @fputs(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.115, i32 0, i32 0), %struct._IO_FILE* %1194) #5
  br label %if.end.1777

if.else.1754:                                     ; preds = %if.else.1749
  %1195 = load i32, i32* %ptype.addr, align 4, !tbaa !5
  %cmp1755 = icmp eq i32 %1195, 7
  br i1 %cmp1755, label %if.then.1757, label %if.else.1759

if.then.1757:                                     ; preds = %if.else.1754
  %1196 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call1758 = call i32 @fputs(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.116, i32 0, i32 0), %struct._IO_FILE* %1196) #5
  br label %if.end.1776

if.else.1759:                                     ; preds = %if.else.1754
  %1197 = load i32, i32* %ptype.addr, align 4, !tbaa !5
  %cmp1760 = icmp eq i32 %1197, 10
  br i1 %cmp1760, label %if.then.1765, label %lor.lhs.false.1762

lor.lhs.false.1762:                               ; preds = %if.else.1759
  %1198 = load i32, i32* %ptype.addr, align 4, !tbaa !5
  %cmp1763 = icmp eq i32 %1198, 11
  br i1 %cmp1763, label %if.then.1765, label %if.else.1766

if.then.1765:                                     ; preds = %lor.lhs.false.1762, %if.else.1759
  br label %if.end.1775

if.else.1766:                                     ; preds = %lor.lhs.false.1762
  %1199 = load i32, i32* %ptype.addr, align 4, !tbaa !5
  %cmp1767 = icmp eq i32 %1199, 9
  br i1 %cmp1767, label %if.then.1769, label %if.else.1772

if.then.1769:                                     ; preds = %if.else.1766
  %1200 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call1770 = call i32 @ep_print_image(%struct._IO_FILE* %1200, %struct.ep_globals* %eg, i8 signext 70, i8* null, i32 0) #5
  %1201 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call1771 = call i32 @fputs(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.115, i32 0, i32 0), %struct._IO_FILE* %1201) #5
  br label %if.end.1774

if.else.1772:                                     ; preds = %if.else.1766
  %1202 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call1773 = call i32 @fputs(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.117, i32 0, i32 0), %struct._IO_FILE* %1202) #5
  br label %if.end.1774

if.end.1774:                                      ; preds = %if.else.1772, %if.then.1769
  br label %if.end.1775

if.end.1775:                                      ; preds = %if.end.1774, %if.then.1765
  br label %if.end.1776

if.end.1776:                                      ; preds = %if.end.1775, %if.then.1757
  br label %if.end.1777

if.end.1777:                                      ; preds = %if.end.1776, %if.then.1752
  br label %if.end.1778

if.end.1778:                                      ; preds = %if.end.1777, %if.then.1747
  %1203 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory1779 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %1203, i32 0, i32 3
  %1204 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory1779, align 8, !tbaa !91
  %non_gc_memory1780 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %1204, i32 0, i32 3
  %1205 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory1780, align 8, !tbaa !94
  %procs1781 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %1205, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs1781, i32 0, i32 2
  %1206 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !104
  %1207 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory1782 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %1207, i32 0, i32 3
  %1208 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory1782, align 8, !tbaa !91
  %non_gc_memory1783 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %1208, i32 0, i32 3
  %1209 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory1783, align 8, !tbaa !94
  %storage1784 = getelementptr inbounds %struct.ep_globals, %struct.ep_globals* %eg, i32 0, i32 0
  %1210 = load i64*, i64** %storage1784, align 8, !tbaa !99
  %1211 = bitcast i64* %1210 to i8*
  call void %1206(%struct.gs_memory_s* %1209, i8* %1211, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.55, i32 0, i32 0)) #5
  %1212 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory1785 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %1212, i32 0, i32 3
  %1213 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory1785, align 8, !tbaa !91
  %non_gc_memory1786 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %1213, i32 0, i32 3
  %1214 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory1786, align 8, !tbaa !94
  %procs1787 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %1214, i32 0, i32 1
  %free_object1788 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs1787, i32 0, i32 2
  %1215 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object1788, align 8, !tbaa !104
  %1216 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory1789 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %1216, i32 0, i32 3
  %1217 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory1789, align 8, !tbaa !91
  %non_gc_memory1790 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %1217, i32 0, i32 3
  %1218 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory1790, align 8, !tbaa !94
  %1219 = load i64*, i64** %storage, align 8, !tbaa !1
  %1220 = bitcast i64* %1219 to i8*
  call void %1215(%struct.gs_memory_s* %1218, i8* %1220, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.54, i32 0, i32 0)) #5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.1791

cleanup.1791:                                     ; preds = %if.end.1778, %if.then.109
  %1221 = bitcast %struct.ep_globals* %eg to i8*
  call void @llvm.lifetime.end(i64 2104, i8* %1221) #2
  %1222 = bitcast i32* %storage_size_words to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1222) #2
  %1223 = bitcast i64** %storage to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1223) #2
  %1224 = bitcast i8** %out_row_alt to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1224) #2
  %1225 = bitcast i8** %out_row to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1225) #2
  %1226 = bitcast i8** %out_data to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1226) #2
  %1227 = bitcast [4 x [4 x i8*]]* %plane_data to i8*
  call void @llvm.lifetime.end(i64 128, i8* %1227) #2
  %1228 = bitcast [4 x i8*]* %data to i8*
  call void @llvm.lifetime.end(i64 32, i8* %1228) #2
  %1229 = bitcast i8** %cid_string to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1229) #2
  %1230 = bitcast [2 x i32*]* %errors to i8*
  call void @llvm.lifetime.end(i64 16, i8* %1230) #2
  %1231 = bitcast i32* %scan to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1231) #2
  %1232 = bitcast i32* %compression to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1232) #2
  %1233 = bitcast i32* %outbuff_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1233) #2
  %1234 = bitcast i32* %errbuff_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1234) #2
  %1235 = bitcast i32* %combined_escapes to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1235) #2
  %1236 = bitcast i32* %databuff_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1236) #2
  %1237 = bitcast i32* %plane_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1237) #2
  %1238 = bitcast i32* %expanded_bpp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1238) #2
  %1239 = bitcast i32* %storage_bpp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1239) #2
  %1240 = bitcast i32* %bits_per_pixel to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1240) #2
  %1241 = bitcast i32* %num_comps to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1241) #2
  %1242 = bitcast i32* %paper_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1242) #2
  %1243 = bitcast i32* %line_size_words to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1243) #2
  %1244 = bitcast i32* %line_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1244) #2
  %1245 = bitcast i32* %raster_width to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1245) #2
  %1246 = load i32, i32* %retval
  ret i32 %1246

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define internal i32 @gdev_prn_rasterwidth(%struct.gx_device_printer_s* %pdev, i32 %pixelcount) #1 {
entry:
  %pdev.addr = alloca %struct.gx_device_printer_s*, align 8
  %pixelcount.addr = alloca i32, align 4
  %raster_width = alloca i64, align 8
  store %struct.gx_device_printer_s* %pdev, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  store i32 %pixelcount, i32* %pixelcount.addr, align 4, !tbaa !5
  %0 = bitcast i64* %raster_width to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %1, i32 0, i32 13
  %2 = load i32, i32* %width, align 4, !tbaa !103
  %conv = sitofp i32 %2 to double
  %3 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %HWResolution = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %3, i32 0, i32 22
  %arrayidx = getelementptr inbounds [2 x float], [2 x float]* %HWResolution, i32 0, i64 0
  %4 = load float, float* %arrayidx, align 4, !tbaa !36
  %conv1 = fpext float %4 to double
  %5 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %HWMargins = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %5, i32 0, i32 25
  %arrayidx2 = getelementptr inbounds [4 x float], [4 x float]* %HWMargins, i32 0, i64 0
  %6 = load float, float* %arrayidx2, align 4, !tbaa !36
  %conv3 = fpext float %6 to double
  %div = fdiv double %conv3, 7.200000e+01
  %7 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %HWMargins4 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %7, i32 0, i32 25
  %arrayidx5 = getelementptr inbounds [4 x float], [4 x float]* %HWMargins4, i32 0, i64 2
  %8 = load float, float* %arrayidx5, align 4, !tbaa !36
  %conv6 = fpext float %8 to double
  %div7 = fdiv double %conv6, 7.200000e+01
  %add = fadd double %div, %div7
  %mul = fmul double %conv1, %add
  %sub = fsub double %conv, %mul
  %conv8 = fptoui double %sub to i64
  store i64 %conv8, i64* %raster_width, align 8, !tbaa !28
  %9 = load i32, i32* %pixelcount.addr, align 4, !tbaa !5
  %tobool = icmp ne i32 %9, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %10 = load i64, i64* %raster_width, align 8, !tbaa !28
  %conv9 = trunc i64 %10 to i32
  br label %cond.end

cond.false:                                       ; preds = %entry
  %11 = load i64, i64* %raster_width, align 8, !tbaa !28
  %12 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %12, i32 0, i32 11
  %depth = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 3
  %13 = load i16, i16* %depth, align 2, !tbaa !88
  %conv10 = zext i16 %13 to i64
  %mul11 = mul i64 %11, %conv10
  %add12 = add i64 %mul11, 7
  %shr = lshr i64 %add12, 3
  %conv13 = trunc i64 %shr to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv9, %cond.true ], [ %conv13, %cond.false ]
  %14 = bitcast i64* %raster_width to i8*
  call void @llvm.lifetime.end(i64 8, i8* %14) #2
  ret i32 %cond
}

declare i32 @gx_device_raster(%struct.gx_device_s*, i32) #0

; Function Attrs: nounwind
declare i8* @memset(i8*, i32, i64) #4

declare i32 @fputs(i8*, %struct._IO_FILE*) #0

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #0

; Function Attrs: nounwind uwtable
define internal i32 @bjc_init_page(%struct.gx_device_printer_s* %pdev, %struct._IO_FILE* %f) #1 {
entry:
  %pdev.addr = alloca %struct.gx_device_printer_s*, align 8
  %f.addr = alloca %struct._IO_FILE*, align 8
  %pagemargins = alloca [3 x i8], align 1
  %resolution = alloca [4 x i8], align 1
  %paperloading = alloca [2 x i8], align 1
  %printmode = alloca [2 x i8], align 1
  %printmeth = alloca [3 x i8], align 1
  store %struct.gx_device_printer_s* %pdev, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  store %struct._IO_FILE* %f, %struct._IO_FILE** %f.addr, align 8, !tbaa !1
  %0 = bitcast [3 x i8]* %pagemargins to i8*
  call void @llvm.lifetime.start(i64 3, i8* %0) #2
  %1 = bitcast [4 x i8]* %resolution to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = bitcast [2 x i8]* %paperloading to i8*
  call void @llvm.lifetime.start(i64 2, i8* %2) #2
  %3 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %3, i32 0, i32 14
  %4 = load i32, i32* %height, align 4, !tbaa !102
  %conv = sitofp i32 %4 to float
  %5 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %HWResolution = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %5, i32 0, i32 22
  %arrayidx = getelementptr inbounds [2 x float], [2 x float]* %HWResolution, i32 0, i64 1
  %6 = load float, float* %arrayidx, align 4, !tbaa !36
  %div = fdiv float %conv, %6
  %mul = fmul float %div, 1.000000e+01
  %conv1 = fpext float %mul to double
  %add = fadd double %conv1, 5.000000e-01
  %conv2 = fptoui double %add to i8
  %arrayidx3 = getelementptr inbounds [3 x i8], [3 x i8]* %pagemargins, i32 0, i64 0
  store i8 %conv2, i8* %arrayidx3, align 1, !tbaa !48
  %arrayidx4 = getelementptr inbounds [3 x i8], [3 x i8]* %pagemargins, i32 0, i64 1
  store i8 1, i8* %arrayidx4, align 1, !tbaa !48
  %7 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %7, i32 0, i32 13
  %8 = load i32, i32* %width, align 4, !tbaa !103
  %conv5 = sitofp i32 %8 to float
  %9 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %HWResolution6 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %9, i32 0, i32 22
  %arrayidx7 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution6, i32 0, i64 0
  %10 = load float, float* %arrayidx7, align 4, !tbaa !36
  %div8 = fdiv float %conv5, %10
  %mul9 = fmul float %div8, 1.000000e+01
  %conv10 = fpext float %mul9 to double
  %11 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %HWMargins = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %11, i32 0, i32 25
  %arrayidx11 = getelementptr inbounds [4 x float], [4 x float]* %HWMargins, i32 0, i64 0
  %12 = load float, float* %arrayidx11, align 4, !tbaa !36
  %conv12 = fpext float %12 to double
  %div13 = fdiv double %conv12, 7.200000e+00
  %sub = fsub double %conv10, %div13
  %13 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %HWMargins14 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %13, i32 0, i32 25
  %arrayidx15 = getelementptr inbounds [4 x float], [4 x float]* %HWMargins14, i32 0, i64 2
  %14 = load float, float* %arrayidx15, align 4, !tbaa !36
  %conv16 = fpext float %14 to double
  %div17 = fdiv double %conv16, 7.200000e+00
  %sub18 = fsub double %sub, %div17
  %add19 = fadd double %sub18, 5.000000e-01
  %conv20 = fptoui double %add19 to i8
  %arrayidx21 = getelementptr inbounds [3 x i8], [3 x i8]* %pagemargins, i32 0, i64 2
  store i8 %conv20, i8* %arrayidx21, align 1, !tbaa !48
  %15 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %16 = bitcast %struct.gx_device_printer_s* %15 to %struct.gx_device_bjc800_s*
  %ptype = getelementptr inbounds %struct.gx_device_bjc800_s, %struct.gx_device_bjc800_s* %16, i32 0, i32 71
  %17 = load i32, i32* %ptype, align 4, !tbaa !7
  switch i32 %17, label %sw.default [
    i32 11, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry
  %arrayidx22 = getelementptr inbounds [3 x i8], [3 x i8]* %pagemargins, i32 0, i64 2
  %18 = load i8, i8* %arrayidx22, align 1, !tbaa !48
  %conv23 = zext i8 %18 to i32
  %cmp = icmp sgt i32 %conv23, 114
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  %arrayidx25 = getelementptr inbounds [3 x i8], [3 x i8]* %pagemargins, i32 0, i64 2
  store i8 114, i8* %arrayidx25, align 1, !tbaa !48
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %arrayidx26 = getelementptr inbounds [3 x i8], [3 x i8]* %pagemargins, i32 0, i64 2
  %19 = load i8, i8* %arrayidx26, align 1, !tbaa !48
  %conv27 = zext i8 %19 to i32
  %cmp28 = icmp sgt i32 %conv27, 80
  br i1 %cmp28, label %if.then.30, label %if.end.32

if.then.30:                                       ; preds = %sw.default
  %arrayidx31 = getelementptr inbounds [3 x i8], [3 x i8]* %pagemargins, i32 0, i64 2
  store i8 80, i8* %arrayidx31, align 1, !tbaa !48
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.30, %sw.default
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.32, %if.end
  %20 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %HWResolution33 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %20, i32 0, i32 22
  %arrayidx34 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution33, i32 0, i64 1
  %21 = load float, float* %arrayidx34, align 4, !tbaa !36
  %conv35 = fptosi float %21 to i32
  %div36 = sdiv i32 %conv35, 256
  %conv37 = trunc i32 %div36 to i8
  %arrayidx38 = getelementptr inbounds [4 x i8], [4 x i8]* %resolution, i32 0, i64 0
  store i8 %conv37, i8* %arrayidx38, align 1, !tbaa !48
  %22 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %HWResolution39 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %22, i32 0, i32 22
  %arrayidx40 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution39, i32 0, i64 1
  %23 = load float, float* %arrayidx40, align 4, !tbaa !36
  %conv41 = fptosi float %23 to i32
  %rem = srem i32 %conv41, 256
  %conv42 = trunc i32 %rem to i8
  %arrayidx43 = getelementptr inbounds [4 x i8], [4 x i8]* %resolution, i32 0, i64 1
  store i8 %conv42, i8* %arrayidx43, align 1, !tbaa !48
  %24 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %HWResolution44 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %24, i32 0, i32 22
  %arrayidx45 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution44, i32 0, i64 0
  %25 = load float, float* %arrayidx45, align 4, !tbaa !36
  %conv46 = fptosi float %25 to i32
  %div47 = sdiv i32 %conv46, 256
  %conv48 = trunc i32 %div47 to i8
  %arrayidx49 = getelementptr inbounds [4 x i8], [4 x i8]* %resolution, i32 0, i64 2
  store i8 %conv48, i8* %arrayidx49, align 1, !tbaa !48
  %26 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %HWResolution50 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %26, i32 0, i32 22
  %arrayidx51 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution50, i32 0, i64 0
  %27 = load float, float* %arrayidx51, align 4, !tbaa !36
  %conv52 = fptosi float %27 to i32
  %rem53 = srem i32 %conv52, 256
  %conv54 = trunc i32 %rem53 to i8
  %arrayidx55 = getelementptr inbounds [4 x i8], [4 x i8]* %resolution, i32 0, i64 3
  store i8 %conv54, i8* %arrayidx55, align 1, !tbaa !48
  %28 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %29 = bitcast %struct.gx_device_printer_s* %28 to %struct.gx_device_bjc800_s*
  %bjc_p = getelementptr inbounds %struct.gx_device_bjc800_s, %struct.gx_device_bjc800_s* %29, i32 0, i32 73
  %manualFeed = getelementptr inbounds %struct.bjc_params, %struct.bjc_params* %bjc_p, i32 0, i32 0
  %30 = load i32, i32* %manualFeed, align 4, !tbaa !105
  %sub56 = sub nsw i32 1, %30
  %shl = shl i32 %sub56, 2
  %add57 = add nsw i32 16, %shl
  %conv58 = trunc i32 %add57 to i8
  %arrayidx59 = getelementptr inbounds [2 x i8], [2 x i8]* %paperloading, i32 0, i64 0
  store i8 %conv58, i8* %arrayidx59, align 1, !tbaa !48
  %31 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %32 = bitcast %struct.gx_device_printer_s* %31 to %struct.gx_device_bjc800_s*
  %bjc_p60 = getelementptr inbounds %struct.gx_device_bjc800_s, %struct.gx_device_bjc800_s* %32, i32 0, i32 73
  %mediaType = getelementptr inbounds %struct.bjc_params, %struct.bjc_params* %bjc_p60, i32 0, i32 1
  %33 = load i32, i32* %mediaType, align 4, !tbaa !65
  %shl61 = shl i32 %33, 4
  %conv62 = trunc i32 %shl61 to i8
  %arrayidx63 = getelementptr inbounds [2 x i8], [2 x i8]* %paperloading, i32 0, i64 1
  store i8 %conv62, i8* %arrayidx63, align 1, !tbaa !48
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8, !tbaa !1
  %call = call i32 @fputs(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.118, i32 0, i32 0), %struct._IO_FILE* %34) #5
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8, !tbaa !1
  %call64 = call i32 @fputc(i32 2, %struct._IO_FILE* %35) #5
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8, !tbaa !1
  %call65 = call i32 @fputc(i32 0, %struct._IO_FILE* %36) #5
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8, !tbaa !1
  %call66 = call i32 @fputc(i32 0, %struct._IO_FILE* %37) #5
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8, !tbaa !1
  %call67 = call i32 @fputc(i32 15, %struct._IO_FILE* %38) #5
  %39 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8, !tbaa !1
  %call68 = call i32 @bjc_cmd(i8 zeroext 97, i32 1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.119, i32 0, i32 0), %struct.gx_device_printer_s* %39, %struct._IO_FILE* %40) #5
  %arraydecay = getelementptr inbounds [3 x i8], [3 x i8]* %pagemargins, i32 0, i32 0
  %41 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8, !tbaa !1
  %call69 = call i32 @bjc_cmd(i8 zeroext 103, i32 3, i8* %arraydecay, %struct.gx_device_printer_s* %41, %struct._IO_FILE* %42) #5
  %43 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8, !tbaa !1
  %call70 = call i32 @bjc_cmd(i8 zeroext 98, i32 1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.119, i32 0, i32 0), %struct.gx_device_printer_s* %43, %struct._IO_FILE* %44) #5
  %arraydecay71 = getelementptr inbounds [2 x i8], [2 x i8]* %paperloading, i32 0, i32 0
  %45 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8, !tbaa !1
  %call72 = call i32 @bjc_cmd(i8 zeroext 108, i32 2, i8* %arraydecay71, %struct.gx_device_printer_s* %45, %struct._IO_FILE* %46) #5
  %47 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %48 = bitcast %struct.gx_device_printer_s* %47 to %struct.gx_device_bjc800_s*
  %ptype73 = getelementptr inbounds %struct.gx_device_bjc800_s, %struct.gx_device_bjc800_s* %48, i32 0, i32 71
  %49 = load i32, i32* %ptype73, align 4, !tbaa !7
  %cmp74 = icmp eq i32 %49, 11
  br i1 %cmp74, label %if.then.76, label %if.else

if.then.76:                                       ; preds = %sw.epilog
  %50 = bitcast [2 x i8]* %printmode to i8*
  call void @llvm.lifetime.start(i64 2, i8* %50) #2
  %51 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %52 = bitcast %struct.gx_device_printer_s* %51 to %struct.gx_device_bjc800_s*
  %bjc_p77 = getelementptr inbounds %struct.gx_device_bjc800_s, %struct.gx_device_bjc800_s* %52, i32 0, i32 73
  %printQuality = getelementptr inbounds %struct.bjc_params, %struct.bjc_params* %bjc_p77, i32 0, i32 4
  %53 = load i32, i32* %printQuality, align 4, !tbaa !66
  %conv78 = trunc i32 %53 to i8
  %arrayidx79 = getelementptr inbounds [2 x i8], [2 x i8]* %printmode, i32 0, i64 0
  store i8 %conv78, i8* %arrayidx79, align 1, !tbaa !48
  %54 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %55 = bitcast %struct.gx_device_printer_s* %54 to %struct.gx_device_bjc800_s*
  %bjc_p80 = getelementptr inbounds %struct.gx_device_bjc800_s, %struct.gx_device_bjc800_s* %55, i32 0, i32 73
  %printQuality81 = getelementptr inbounds %struct.bjc_params, %struct.bjc_params* %bjc_p80, i32 0, i32 4
  %56 = load i32, i32* %printQuality81, align 4, !tbaa !66
  switch i32 %56, label %sw.epilog.84 [
    i32 2, label %sw.bb.82
  ]

sw.bb.82:                                         ; preds = %if.then.76
  %arrayidx83 = getelementptr inbounds [2 x i8], [2 x i8]* %printmode, i32 0, i64 0
  store i8 4, i8* %arrayidx83, align 1, !tbaa !48
  br label %sw.epilog.84

sw.epilog.84:                                     ; preds = %if.then.76, %sw.bb.82
  %57 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %58 = bitcast %struct.gx_device_printer_s* %57 to %struct.gx_device_bjc800_s*
  %bjc_p85 = getelementptr inbounds %struct.gx_device_bjc800_s, %struct.gx_device_bjc800_s* %58, i32 0, i32 73
  %mediaType86 = getelementptr inbounds %struct.bjc_params, %struct.bjc_params* %bjc_p85, i32 0, i32 1
  %59 = load i32, i32* %mediaType86, align 4, !tbaa !65
  %cmp87 = icmp sge i32 %59, 8
  br i1 %cmp87, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.epilog.84
  br label %cond.end

cond.false:                                       ; preds = %sw.epilog.84
  %60 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %61 = bitcast %struct.gx_device_printer_s* %60 to %struct.gx_device_bjc800_s*
  %bjc_p89 = getelementptr inbounds %struct.gx_device_bjc800_s, %struct.gx_device_bjc800_s* %61, i32 0, i32 73
  %mediaWeight_isSet = getelementptr inbounds %struct.bjc_params, %struct.bjc_params* %bjc_p89, i32 0, i32 2
  %62 = load i32, i32* %mediaWeight_isSet, align 4, !tbaa !68
  %tobool = icmp ne i32 %62, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %cond.false
  %63 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %64 = bitcast %struct.gx_device_printer_s* %63 to %struct.gx_device_bjc800_s*
  %bjc_p90 = getelementptr inbounds %struct.gx_device_bjc800_s, %struct.gx_device_bjc800_s* %64, i32 0, i32 73
  %mediaWeight = getelementptr inbounds %struct.bjc_params, %struct.bjc_params* %bjc_p90, i32 0, i32 3
  %65 = load i32, i32* %mediaWeight, align 4, !tbaa !106
  %cmp91 = icmp sgt i32 %65, 105
  br label %land.end

land.end:                                         ; preds = %land.rhs, %cond.false
  %66 = phi i1 [ false, %cond.false ], [ %cmp91, %land.rhs ]
  %land.ext = zext i1 %66 to i32
  br label %cond.end

cond.end:                                         ; preds = %land.end, %cond.true
  %cond = phi i32 [ 1, %cond.true ], [ %land.ext, %land.end ]
  %conv93 = trunc i32 %cond to i8
  %arrayidx94 = getelementptr inbounds [2 x i8], [2 x i8]* %printmode, i32 0, i64 1
  store i8 %conv93, i8* %arrayidx94, align 1, !tbaa !48
  %arraydecay95 = getelementptr inbounds [2 x i8], [2 x i8]* %printmode, i32 0, i32 0
  %67 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %68 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8, !tbaa !1
  %call96 = call i32 @bjc_cmd(i8 zeroext 99, i32 2, i8* %arraydecay95, %struct.gx_device_printer_s* %67, %struct._IO_FILE* %68) #5
  %69 = bitcast [2 x i8]* %printmode to i8*
  call void @llvm.lifetime.end(i64 2, i8* %69) #2
  br label %if.end.140

if.else:                                          ; preds = %sw.epilog
  %70 = bitcast [3 x i8]* %printmeth to i8*
  call void @llvm.lifetime.start(i64 3, i8* %70) #2
  %71 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %72 = bitcast %struct.gx_device_printer_s* %71 to %struct.gx_device_bjc800_s*
  %bjc_p97 = getelementptr inbounds %struct.gx_device_bjc800_s, %struct.gx_device_bjc800_s* %72, i32 0, i32 73
  %manualFeed98 = getelementptr inbounds %struct.bjc_params, %struct.bjc_params* %bjc_p97, i32 0, i32 0
  %73 = load i32, i32* %manualFeed98, align 4, !tbaa !105
  %sub99 = sub nsw i32 1, %73
  %shl100 = shl i32 %sub99, 2
  %add101 = add nsw i32 16, %shl100
  %conv102 = trunc i32 %add101 to i8
  %arrayidx103 = getelementptr inbounds [3 x i8], [3 x i8]* %printmeth, i32 0, i64 0
  store i8 %conv102, i8* %arrayidx103, align 1, !tbaa !48
  %74 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %75 = bitcast %struct.gx_device_printer_s* %74 to %struct.gx_device_bjc800_s*
  %bjc_p104 = getelementptr inbounds %struct.gx_device_bjc800_s, %struct.gx_device_bjc800_s* %75, i32 0, i32 73
  %mediaType105 = getelementptr inbounds %struct.bjc_params, %struct.bjc_params* %bjc_p104, i32 0, i32 1
  %76 = load i32, i32* %mediaType105, align 4, !tbaa !65
  %shl106 = shl i32 %76, 4
  %77 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %78 = bitcast %struct.gx_device_printer_s* %77 to %struct.gx_device_bjc800_s*
  %bjc_p107 = getelementptr inbounds %struct.gx_device_bjc800_s, %struct.gx_device_bjc800_s* %78, i32 0, i32 73
  %printQuality108 = getelementptr inbounds %struct.bjc_params, %struct.bjc_params* %bjc_p107, i32 0, i32 4
  %79 = load i32, i32* %printQuality108, align 4, !tbaa !66
  %add109 = add nsw i32 %shl106, %79
  %conv110 = trunc i32 %add109 to i8
  %arrayidx111 = getelementptr inbounds [3 x i8], [3 x i8]* %printmeth, i32 0, i64 1
  store i8 %conv110, i8* %arrayidx111, align 1, !tbaa !48
  %80 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %81 = bitcast %struct.gx_device_printer_s* %80 to %struct.gx_device_bjc800_s*
  %bjc_p112 = getelementptr inbounds %struct.gx_device_bjc800_s, %struct.gx_device_bjc800_s* %81, i32 0, i32 73
  %printQuality113 = getelementptr inbounds %struct.bjc_params, %struct.bjc_params* %bjc_p112, i32 0, i32 4
  %82 = load i32, i32* %printQuality113, align 4, !tbaa !66
  %cmp114 = icmp eq i32 %82, 1
  %cond116 = select i1 %cmp114, i32 16, i32 0
  %83 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %84 = bitcast %struct.gx_device_printer_s* %83 to %struct.gx_device_bjc800_s*
  %bjc_p117 = getelementptr inbounds %struct.gx_device_bjc800_s, %struct.gx_device_bjc800_s* %84, i32 0, i32 73
  %mediaType118 = getelementptr inbounds %struct.bjc_params, %struct.bjc_params* %bjc_p117, i32 0, i32 1
  %85 = load i32, i32* %mediaType118, align 4, !tbaa !65
  %cmp119 = icmp sge i32 %85, 8
  br i1 %cmp119, label %cond.true.121, label %cond.false.122

cond.true.121:                                    ; preds = %if.else
  br label %cond.end.133

cond.false.122:                                   ; preds = %if.else
  %86 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %87 = bitcast %struct.gx_device_printer_s* %86 to %struct.gx_device_bjc800_s*
  %bjc_p123 = getelementptr inbounds %struct.gx_device_bjc800_s, %struct.gx_device_bjc800_s* %87, i32 0, i32 73
  %mediaWeight_isSet124 = getelementptr inbounds %struct.bjc_params, %struct.bjc_params* %bjc_p123, i32 0, i32 2
  %88 = load i32, i32* %mediaWeight_isSet124, align 4, !tbaa !68
  %tobool125 = icmp ne i32 %88, 0
  br i1 %tobool125, label %land.rhs.126, label %land.end.131

land.rhs.126:                                     ; preds = %cond.false.122
  %89 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %90 = bitcast %struct.gx_device_printer_s* %89 to %struct.gx_device_bjc800_s*
  %bjc_p127 = getelementptr inbounds %struct.gx_device_bjc800_s, %struct.gx_device_bjc800_s* %90, i32 0, i32 73
  %mediaWeight128 = getelementptr inbounds %struct.bjc_params, %struct.bjc_params* %bjc_p127, i32 0, i32 3
  %91 = load i32, i32* %mediaWeight128, align 4, !tbaa !106
  %cmp129 = icmp sgt i32 %91, 105
  br label %land.end.131

land.end.131:                                     ; preds = %land.rhs.126, %cond.false.122
  %92 = phi i1 [ false, %cond.false.122 ], [ %cmp129, %land.rhs.126 ]
  %land.ext132 = zext i1 %92 to i32
  br label %cond.end.133

cond.end.133:                                     ; preds = %land.end.131, %cond.true.121
  %cond134 = phi i32 [ 1, %cond.true.121 ], [ %land.ext132, %land.end.131 ]
  %add135 = add nsw i32 %cond116, %cond134
  %conv136 = trunc i32 %add135 to i8
  %arrayidx137 = getelementptr inbounds [3 x i8], [3 x i8]* %printmeth, i32 0, i64 2
  store i8 %conv136, i8* %arrayidx137, align 1, !tbaa !48
  %arraydecay138 = getelementptr inbounds [3 x i8], [3 x i8]* %printmeth, i32 0, i32 0
  %93 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %94 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8, !tbaa !1
  %call139 = call i32 @bjc_cmd(i8 zeroext 99, i32 3, i8* %arraydecay138, %struct.gx_device_printer_s* %93, %struct._IO_FILE* %94) #5
  %95 = bitcast [3 x i8]* %printmeth to i8*
  call void @llvm.lifetime.end(i64 3, i8* %95) #2
  br label %if.end.140

if.end.140:                                       ; preds = %cond.end.133, %cond.end
  %arraydecay141 = getelementptr inbounds [4 x i8], [4 x i8]* %resolution, i32 0, i32 0
  %96 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %97 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8, !tbaa !1
  %call142 = call i32 @bjc_cmd(i8 zeroext 100, i32 4, i8* %arraydecay141, %struct.gx_device_printer_s* %96, %struct._IO_FILE* %97) #5
  %98 = bitcast [2 x i8]* %paperloading to i8*
  call void @llvm.lifetime.end(i64 2, i8* %98) #2
  %99 = bitcast [4 x i8]* %resolution to i8*
  call void @llvm.lifetime.end(i64 4, i8* %99) #2
  %100 = bitcast [3 x i8]* %pagemargins to i8*
  call void @llvm.lifetime.end(i64 3, i8* %100) #2
  ret i32 0
}

declare i64 @fwrite(i8*, i64, i64, %struct._IO_FILE*) #0

; Function Attrs: nounwind uwtable
define internal i32 @bjc_v_skip(i32 %n, %struct.gx_device_printer_s* %pdev, %struct._IO_FILE* %f) #1 {
entry:
  %n.addr = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_printer_s*, align 8
  %f.addr = alloca %struct._IO_FILE*, align 8
  store i32 %n, i32* %n.addr, align 4, !tbaa !5
  store %struct.gx_device_printer_s* %pdev, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  store %struct._IO_FILE* %f, %struct._IO_FILE** %f.addr, align 8, !tbaa !1
  %0 = load i32, i32* %n.addr, align 4, !tbaa !5
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8, !tbaa !1
  %call = call i32 @fputs(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.121, i32 0, i32 0), %struct._IO_FILE* %1) #5
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8, !tbaa !1
  %call1 = call i32 @_IO_putc(i32 2, %struct._IO_FILE* %2) #5
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8, !tbaa !1
  %call2 = call i32 @_IO_putc(i32 0, %struct._IO_FILE* %3) #5
  %4 = load i32, i32* %n.addr, align 4, !tbaa !5
  %div = sdiv i32 %4, 256
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8, !tbaa !1
  %call3 = call i32 @_IO_putc(i32 %div, %struct._IO_FILE* %5) #5
  %6 = load i32, i32* %n.addr, align 4, !tbaa !5
  %rem = srem i32 %6, 256
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8, !tbaa !1
  %call4 = call i32 @_IO_putc(i32 %rem, %struct._IO_FILE* %7) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @bjc_fscmyk(i8** %inplanes, [4 x i8*]* %outplanes, i32** %errplanes, i32 %plane_size, i32 %scan) #1 {
entry:
  %inplanes.addr = alloca i8**, align 8
  %outplanes.addr = alloca [4 x i8*]*, align 8
  %errplanes.addr = alloca i32**, align 8
  %plane_size.addr = alloca i32, align 4
  %scan.addr = alloca i32, align 4
  %err = alloca i8*, align 8
  %p = alloca i32, align 4
  %i = alloca i32, align 4
  %v = alloca i32, align 4
  %direction = alloca i32*, align 8
  %threshold = alloca i32*, align 8
  %spotsize = alloca i32*, align 8
  %emin = alloca i32*, align 8
  %emax = alloca i32*, align 8
  %errv = alloca i32*, align 8
  %errc = alloca i32*, align 8
  %j = alloca i32, align 4
  %maxv = alloca float, align 4
  %w = alloca i32, align 4
  %p147 = alloca i32, align 4
  %dir = alloca i32, align 4
  %thedir = alloca i32, align 4
  %out = alloca [4 x i8*], align 16
  %pixel = alloca [4 x i8], align 1
  %bit = alloca i8, align 1
  %direction148 = alloca i32*, align 8
  %threshold149 = alloca i32*, align 8
  %spotsize151 = alloca i32*, align 8
  %emin153 = alloca i32*, align 8
  %emax155 = alloca i32*, align 8
  %errc157 = alloca i32*, align 8
  %errv159 = alloca i32*, align 8
  %kerr = alloca i32, align 4
  %cerr = alloca i32, align 4
  %merr = alloca i32, align 4
  %yerr = alloca i32, align 4
  %in = alloca i8*, align 8
  %cmy = alloca i32, align 4
  %kv = alloca i32, align 4
  %cv = alloca i32, align 4
  store i8** %inplanes, i8*** %inplanes.addr, align 8, !tbaa !1
  store [4 x i8*]* %outplanes, [4 x i8*]** %outplanes.addr, align 8, !tbaa !1
  store i32** %errplanes, i32*** %errplanes.addr, align 8, !tbaa !1
  store i32 %plane_size, i32* %plane_size.addr, align 4, !tbaa !5
  store i32 %scan, i32* %scan.addr, align 4, !tbaa !5
  %0 = bitcast i8** %err to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load i32**, i32*** %errplanes.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i32*, i32** %1, i64 0
  %2 = load i32*, i32** %arrayidx, align 8, !tbaa !1
  %3 = bitcast i32* %2 to i8*
  store i8* %3, i8** %err, align 8, !tbaa !1
  %4 = load i32, i32* %scan.addr, align 4, !tbaa !5
  %cmp = icmp slt i32 %4, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %5 = bitcast i32* %p to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  %6 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = bitcast i32* %v to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #2
  %8 = bitcast i32** %direction to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #2
  %9 = bitcast i32** %threshold to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #2
  %10 = bitcast i32** %spotsize to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #2
  %11 = bitcast i32** %emin to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #2
  %12 = bitcast i32** %emax to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #2
  %13 = bitcast i32** %errv to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #2
  %14 = bitcast i32** %errc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #2
  %15 = load i8*, i8** %err, align 8, !tbaa !1
  %16 = bitcast i8* %15 to i32*
  store i32* %16, i32** %direction, align 8, !tbaa !1
  %17 = load i32*, i32** %direction, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i32, i32* %17, i64 4
  store i32* %add.ptr, i32** %threshold, align 8, !tbaa !1
  %18 = load i32*, i32** %threshold, align 8, !tbaa !1
  %add.ptr1 = getelementptr inbounds i32, i32* %18, i64 4
  store i32* %add.ptr1, i32** %spotsize, align 8, !tbaa !1
  %19 = load i32*, i32** %spotsize, align 8, !tbaa !1
  %add.ptr2 = getelementptr inbounds i32, i32* %19, i64 4
  store i32* %add.ptr2, i32** %emin, align 8, !tbaa !1
  %20 = load i32*, i32** %emin, align 8, !tbaa !1
  %add.ptr3 = getelementptr inbounds i32, i32* %20, i64 4
  store i32* %add.ptr3, i32** %emax, align 8, !tbaa !1
  %21 = load i32*, i32** %emax, align 8, !tbaa !1
  %add.ptr4 = getelementptr inbounds i32, i32* %21, i64 4
  store i32* %add.ptr4, i32** %errc, align 8, !tbaa !1
  %22 = load i32*, i32** %errc, align 8, !tbaa !1
  %add.ptr5 = getelementptr inbounds i32, i32* %22, i64 8
  store i32* %add.ptr5, i32** %errv, align 8, !tbaa !1
  %23 = load i32*, i32** %direction, align 8, !tbaa !1
  %arrayidx6 = getelementptr inbounds i32, i32* %23, i64 0
  store i32 -1, i32* %arrayidx6, align 4, !tbaa !5
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %24 = load i32, i32* %i, align 4, !tbaa !5
  %cmp7 = icmp slt i32 %24, 4
  br i1 %cmp7, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %25 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %25) #2
  %26 = bitcast float* %maxv to i8*
  call void @llvm.lifetime.start(i64 4, i8* %26) #2
  store float 1.000000e+00, float* %maxv, align 4, !tbaa !36
  %27 = load float, float* %maxv, align 4, !tbaa !36
  %conv = fpext float %27 to double
  %div = fdiv double 1.270000e+02, %conv
  %add = fadd double %div, 5.000000e-01
  %conv8 = fptosi double %add to i32
  %28 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %28 to i64
  %29 = load i32*, i32** %threshold, align 8, !tbaa !1
  %arrayidx9 = getelementptr inbounds i32, i32* %29, i64 %idxprom
  store i32 %conv8, i32* %arrayidx9, align 4, !tbaa !5
  %30 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom10 = sext i32 %30 to i64
  %31 = load i32*, i32** %threshold, align 8, !tbaa !1
  %arrayidx11 = getelementptr inbounds i32, i32* %31, i64 %idxprom10
  %32 = load i32, i32* %arrayidx11, align 4, !tbaa !5
  %shl = shl i32 %32, 1
  %add12 = add nsw i32 %shl, 1
  %33 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom13 = sext i32 %33 to i64
  %34 = load i32*, i32** %spotsize, align 8, !tbaa !1
  %arrayidx14 = getelementptr inbounds i32, i32* %34, i64 %idxprom13
  store i32 %add12, i32* %arrayidx14, align 4, !tbaa !5
  %35 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom15 = sext i32 %35 to i64
  %36 = load i32*, i32** %threshold, align 8, !tbaa !1
  %arrayidx16 = getelementptr inbounds i32, i32* %36, i64 %idxprom15
  %37 = load i32, i32* %arrayidx16, align 4, !tbaa !5
  store i32 %37, i32* %j, align 4, !tbaa !5
  %38 = load i32*, i32** %errc, align 8, !tbaa !1
  %arrayidx17 = getelementptr inbounds i32, i32* %38, i64 3
  store i32 0, i32* %arrayidx17, align 4, !tbaa !5
  %39 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom18 = sext i32 %39 to i64
  %40 = load i32*, i32** %threshold, align 8, !tbaa !1
  %arrayidx19 = getelementptr inbounds i32, i32* %40, i64 %idxprom18
  %41 = load i32, i32* %arrayidx19, align 4, !tbaa !5
  %mul = mul nsw i32 3, %41
  %add20 = add nsw i32 %mul, 8
  %shr = ashr i32 %add20, 4
  %42 = load i32*, i32** %errv, align 8, !tbaa !1
  %arrayidx21 = getelementptr inbounds i32, i32* %42, i64 -4
  %43 = load i32, i32* %arrayidx21, align 4, !tbaa !5
  %add22 = add nsw i32 %43, %shr
  store i32 %add22, i32* %arrayidx21, align 4, !tbaa !5
  %44 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom23 = sext i32 %44 to i64
  %45 = load i32*, i32** %threshold, align 8, !tbaa !1
  %arrayidx24 = getelementptr inbounds i32, i32* %45, i64 %idxprom23
  %46 = load i32, i32* %arrayidx24, align 4, !tbaa !5
  %mul25 = mul nsw i32 5, %46
  %47 = load i32*, i32** %errc, align 8, !tbaa !1
  %arrayidx26 = getelementptr inbounds i32, i32* %47, i64 0
  %48 = load i32, i32* %arrayidx26, align 4, !tbaa !5
  %add27 = add nsw i32 %mul25, %48
  %add28 = add nsw i32 %add27, 8
  %shr29 = ashr i32 %add28, 4
  %49 = load i32*, i32** %errv, align 8, !tbaa !1
  %arrayidx30 = getelementptr inbounds i32, i32* %49, i64 0
  store i32 %shr29, i32* %arrayidx30, align 4, !tbaa !5
  %50 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom31 = sext i32 %50 to i64
  %51 = load i32*, i32** %threshold, align 8, !tbaa !1
  %arrayidx32 = getelementptr inbounds i32, i32* %51, i64 %idxprom31
  %52 = load i32, i32* %arrayidx32, align 4, !tbaa !5
  %53 = load i32*, i32** %errc, align 8, !tbaa !1
  %arrayidx33 = getelementptr inbounds i32, i32* %53, i64 0
  store i32 %52, i32* %arrayidx33, align 4, !tbaa !5
  %54 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom34 = sext i32 %54 to i64
  %55 = load i32*, i32** %threshold, align 8, !tbaa !1
  %arrayidx35 = getelementptr inbounds i32, i32* %55, i64 %idxprom34
  %56 = load i32, i32* %arrayidx35, align 4, !tbaa !5
  %mul36 = mul nsw i32 3, %56
  %add37 = add nsw i32 %mul36, 8
  %shr38 = ashr i32 %add37, 4
  %57 = load i32*, i32** %errv, align 8, !tbaa !1
  %arrayidx39 = getelementptr inbounds i32, i32* %57, i64 -4
  %58 = load i32, i32* %arrayidx39, align 4, !tbaa !5
  %add40 = add nsw i32 %58, %shr38
  store i32 %add40, i32* %arrayidx39, align 4, !tbaa !5
  %59 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom41 = sext i32 %59 to i64
  %60 = load i32*, i32** %threshold, align 8, !tbaa !1
  %arrayidx42 = getelementptr inbounds i32, i32* %60, i64 %idxprom41
  %61 = load i32, i32* %arrayidx42, align 4, !tbaa !5
  %mul43 = mul nsw i32 5, %61
  %62 = load i32*, i32** %errc, align 8, !tbaa !1
  %arrayidx44 = getelementptr inbounds i32, i32* %62, i64 0
  %63 = load i32, i32* %arrayidx44, align 4, !tbaa !5
  %add45 = add nsw i32 %mul43, %63
  %add46 = add nsw i32 %add45, 8
  %shr47 = ashr i32 %add46, 4
  %64 = load i32*, i32** %errv, align 8, !tbaa !1
  %arrayidx48 = getelementptr inbounds i32, i32* %64, i64 0
  store i32 %shr47, i32* %arrayidx48, align 4, !tbaa !5
  %65 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom49 = sext i32 %65 to i64
  %66 = load i32*, i32** %threshold, align 8, !tbaa !1
  %arrayidx50 = getelementptr inbounds i32, i32* %66, i64 %idxprom49
  %67 = load i32, i32* %arrayidx50, align 4, !tbaa !5
  %68 = load i32*, i32** %errc, align 8, !tbaa !1
  %arrayidx51 = getelementptr inbounds i32, i32* %68, i64 0
  store i32 %67, i32* %arrayidx51, align 4, !tbaa !5
  %69 = load i32*, i32** %errv, align 8, !tbaa !1
  %arrayidx52 = getelementptr inbounds i32, i32* %69, i64 0
  %70 = load i32, i32* %arrayidx52, align 4, !tbaa !5
  %71 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom53 = sext i32 %71 to i64
  %72 = load i32*, i32** %emax, align 8, !tbaa !1
  %arrayidx54 = getelementptr inbounds i32, i32* %72, i64 %idxprom53
  store i32 %70, i32* %arrayidx54, align 4, !tbaa !5
  %73 = load i32*, i32** %errc, align 8, !tbaa !1
  %arrayidx55 = getelementptr inbounds i32, i32* %73, i64 0
  store i32 0, i32* %arrayidx55, align 4, !tbaa !5
  %74 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom56 = sext i32 %74 to i64
  %75 = load i32*, i32** %threshold, align 8, !tbaa !1
  %arrayidx57 = getelementptr inbounds i32, i32* %75, i64 %idxprom56
  %76 = load i32, i32* %arrayidx57, align 4, !tbaa !5
  %sub = sub nsw i32 0, %76
  %mul58 = mul nsw i32 3, %sub
  %add59 = add nsw i32 %mul58, 8
  %shr60 = ashr i32 %add59, 4
  %77 = load i32*, i32** %errv, align 8, !tbaa !1
  %arrayidx61 = getelementptr inbounds i32, i32* %77, i64 -4
  %78 = load i32, i32* %arrayidx61, align 4, !tbaa !5
  %add62 = add nsw i32 %78, %shr60
  store i32 %add62, i32* %arrayidx61, align 4, !tbaa !5
  %79 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom63 = sext i32 %79 to i64
  %80 = load i32*, i32** %threshold, align 8, !tbaa !1
  %arrayidx64 = getelementptr inbounds i32, i32* %80, i64 %idxprom63
  %81 = load i32, i32* %arrayidx64, align 4, !tbaa !5
  %sub65 = sub nsw i32 0, %81
  %mul66 = mul nsw i32 5, %sub65
  %82 = load i32*, i32** %errc, align 8, !tbaa !1
  %arrayidx67 = getelementptr inbounds i32, i32* %82, i64 0
  %83 = load i32, i32* %arrayidx67, align 4, !tbaa !5
  %add68 = add nsw i32 %mul66, %83
  %add69 = add nsw i32 %add68, 8
  %shr70 = ashr i32 %add69, 4
  %84 = load i32*, i32** %errv, align 8, !tbaa !1
  %arrayidx71 = getelementptr inbounds i32, i32* %84, i64 0
  store i32 %shr70, i32* %arrayidx71, align 4, !tbaa !5
  %85 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom72 = sext i32 %85 to i64
  %86 = load i32*, i32** %threshold, align 8, !tbaa !1
  %arrayidx73 = getelementptr inbounds i32, i32* %86, i64 %idxprom72
  %87 = load i32, i32* %arrayidx73, align 4, !tbaa !5
  %sub74 = sub nsw i32 0, %87
  %88 = load i32*, i32** %errc, align 8, !tbaa !1
  %arrayidx75 = getelementptr inbounds i32, i32* %88, i64 0
  store i32 %sub74, i32* %arrayidx75, align 4, !tbaa !5
  %89 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom76 = sext i32 %89 to i64
  %90 = load i32*, i32** %threshold, align 8, !tbaa !1
  %arrayidx77 = getelementptr inbounds i32, i32* %90, i64 %idxprom76
  %91 = load i32, i32* %arrayidx77, align 4, !tbaa !5
  %sub78 = sub nsw i32 0, %91
  %mul79 = mul nsw i32 3, %sub78
  %add80 = add nsw i32 %mul79, 8
  %shr81 = ashr i32 %add80, 4
  %92 = load i32*, i32** %errv, align 8, !tbaa !1
  %arrayidx82 = getelementptr inbounds i32, i32* %92, i64 -4
  %93 = load i32, i32* %arrayidx82, align 4, !tbaa !5
  %add83 = add nsw i32 %93, %shr81
  store i32 %add83, i32* %arrayidx82, align 4, !tbaa !5
  %94 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom84 = sext i32 %94 to i64
  %95 = load i32*, i32** %threshold, align 8, !tbaa !1
  %arrayidx85 = getelementptr inbounds i32, i32* %95, i64 %idxprom84
  %96 = load i32, i32* %arrayidx85, align 4, !tbaa !5
  %sub86 = sub nsw i32 0, %96
  %mul87 = mul nsw i32 5, %sub86
  %97 = load i32*, i32** %errc, align 8, !tbaa !1
  %arrayidx88 = getelementptr inbounds i32, i32* %97, i64 0
  %98 = load i32, i32* %arrayidx88, align 4, !tbaa !5
  %add89 = add nsw i32 %mul87, %98
  %add90 = add nsw i32 %add89, 8
  %shr91 = ashr i32 %add90, 4
  %99 = load i32*, i32** %errv, align 8, !tbaa !1
  %arrayidx92 = getelementptr inbounds i32, i32* %99, i64 0
  store i32 %shr91, i32* %arrayidx92, align 4, !tbaa !5
  %100 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom93 = sext i32 %100 to i64
  %101 = load i32*, i32** %threshold, align 8, !tbaa !1
  %arrayidx94 = getelementptr inbounds i32, i32* %101, i64 %idxprom93
  %102 = load i32, i32* %arrayidx94, align 4, !tbaa !5
  %sub95 = sub nsw i32 0, %102
  %103 = load i32*, i32** %errc, align 8, !tbaa !1
  %arrayidx96 = getelementptr inbounds i32, i32* %103, i64 0
  store i32 %sub95, i32* %arrayidx96, align 4, !tbaa !5
  %104 = load i32*, i32** %errv, align 8, !tbaa !1
  %arrayidx97 = getelementptr inbounds i32, i32* %104, i64 0
  %105 = load i32, i32* %arrayidx97, align 4, !tbaa !5
  %106 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom98 = sext i32 %106 to i64
  %107 = load i32*, i32** %emin, align 8, !tbaa !1
  %arrayidx99 = getelementptr inbounds i32, i32* %107, i64 %idxprom98
  store i32 %105, i32* %arrayidx99, align 4, !tbaa !5
  %108 = bitcast float* %maxv to i8*
  call void @llvm.lifetime.end(i64 4, i8* %108) #2
  %109 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %109) #2
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %110 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %110, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.100

for.cond.100:                                     ; preds = %for.inc.106, %for.end
  %111 = load i32, i32* %i, align 4, !tbaa !5
  %cmp101 = icmp slt i32 %111, 4
  br i1 %cmp101, label %for.body.103, label %for.end.108

for.body.103:                                     ; preds = %for.cond.100
  %112 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom104 = sext i32 %112 to i64
  %113 = load i32*, i32** %errc, align 8, !tbaa !1
  %arrayidx105 = getelementptr inbounds i32, i32* %113, i64 %idxprom104
  store i32 0, i32* %arrayidx105, align 4, !tbaa !5
  br label %for.inc.106

for.inc.106:                                      ; preds = %for.body.103
  %114 = load i32, i32* %i, align 4, !tbaa !5
  %inc107 = add nsw i32 %114, 1
  store i32 %inc107, i32* %i, align 4, !tbaa !5
  br label %for.cond.100

for.end.108:                                      ; preds = %for.cond.100
  store i32 0, i32* %p, align 4, !tbaa !5
  br label %for.cond.109

for.cond.109:                                     ; preds = %for.inc.144, %for.end.108
  %115 = load i32, i32* %p, align 4, !tbaa !5
  %116 = load i32, i32* %plane_size.addr, align 4, !tbaa !5
  %mul110 = mul nsw i32 %116, 8
  %cmp111 = icmp slt i32 %115, %mul110
  br i1 %cmp111, label %for.body.113, label %for.end.146

for.body.113:                                     ; preds = %for.cond.109
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.114

for.cond.114:                                     ; preds = %for.inc.140, %for.body.113
  %117 = load i32, i32* %i, align 4, !tbaa !5
  %cmp115 = icmp slt i32 %117, 4
  br i1 %cmp115, label %for.body.117, label %for.end.142

for.body.117:                                     ; preds = %for.cond.114
  %call = call i32 @rand() #7
  %118 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom118 = sext i32 %118 to i64
  %119 = load i32*, i32** %spotsize, align 8, !tbaa !1
  %arrayidx119 = getelementptr inbounds i32, i32* %119, i64 %idxprom118
  %120 = load i32, i32* %arrayidx119, align 4, !tbaa !5
  %rem = srem i32 %call, %120
  %121 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom120 = sext i32 %121 to i64
  %122 = load i32*, i32** %threshold, align 8, !tbaa !1
  %arrayidx121 = getelementptr inbounds i32, i32* %122, i64 %idxprom120
  %123 = load i32, i32* %arrayidx121, align 4, !tbaa !5
  %sub122 = sub nsw i32 %rem, %123
  store i32 %sub122, i32* %v, align 4, !tbaa !5
  %124 = load i32, i32* %v, align 4, !tbaa !5
  %mul123 = mul nsw i32 3, %124
  %add124 = add nsw i32 %mul123, 8
  %shr125 = ashr i32 %add124, 4
  %125 = load i32, i32* %i, align 4, !tbaa !5
  %sub126 = sub nsw i32 %125, 4
  %idxprom127 = sext i32 %sub126 to i64
  %126 = load i32*, i32** %errv, align 8, !tbaa !1
  %arrayidx128 = getelementptr inbounds i32, i32* %126, i64 %idxprom127
  %127 = load i32, i32* %arrayidx128, align 4, !tbaa !5
  %add129 = add nsw i32 %127, %shr125
  store i32 %add129, i32* %arrayidx128, align 4, !tbaa !5
  %128 = load i32, i32* %v, align 4, !tbaa !5
  %mul130 = mul nsw i32 5, %128
  %129 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom131 = sext i32 %129 to i64
  %130 = load i32*, i32** %errc, align 8, !tbaa !1
  %arrayidx132 = getelementptr inbounds i32, i32* %130, i64 %idxprom131
  %131 = load i32, i32* %arrayidx132, align 4, !tbaa !5
  %add133 = add nsw i32 %mul130, %131
  %add134 = add nsw i32 %add133, 8
  %shr135 = ashr i32 %add134, 4
  %132 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom136 = sext i32 %132 to i64
  %133 = load i32*, i32** %errv, align 8, !tbaa !1
  %arrayidx137 = getelementptr inbounds i32, i32* %133, i64 %idxprom136
  store i32 %shr135, i32* %arrayidx137, align 4, !tbaa !5
  %134 = load i32, i32* %v, align 4, !tbaa !5
  %135 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom138 = sext i32 %135 to i64
  %136 = load i32*, i32** %errc, align 8, !tbaa !1
  %arrayidx139 = getelementptr inbounds i32, i32* %136, i64 %idxprom138
  store i32 %134, i32* %arrayidx139, align 4, !tbaa !5
  br label %for.inc.140

for.inc.140:                                      ; preds = %for.body.117
  %137 = load i32, i32* %i, align 4, !tbaa !5
  %inc141 = add nsw i32 %137, 1
  store i32 %inc141, i32* %i, align 4, !tbaa !5
  br label %for.cond.114

for.end.142:                                      ; preds = %for.cond.114
  %138 = load i32, i32* %i, align 4, !tbaa !5
  %139 = load i32*, i32** %errv, align 8, !tbaa !1
  %idx.ext = sext i32 %138 to i64
  %add.ptr143 = getelementptr inbounds i32, i32* %139, i64 %idx.ext
  store i32* %add.ptr143, i32** %errv, align 8, !tbaa !1
  br label %for.inc.144

for.inc.144:                                      ; preds = %for.end.142
  %140 = load i32, i32* %p, align 4, !tbaa !5
  %inc145 = add nsw i32 %140, 1
  store i32 %inc145, i32* %p, align 4, !tbaa !5
  br label %for.cond.109

for.end.146:                                      ; preds = %for.cond.109
  %141 = bitcast i32** %errc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %141) #2
  %142 = bitcast i32** %errv to i8*
  call void @llvm.lifetime.end(i64 8, i8* %142) #2
  %143 = bitcast i32** %emax to i8*
  call void @llvm.lifetime.end(i64 8, i8* %143) #2
  %144 = bitcast i32** %emin to i8*
  call void @llvm.lifetime.end(i64 8, i8* %144) #2
  %145 = bitcast i32** %spotsize to i8*
  call void @llvm.lifetime.end(i64 8, i8* %145) #2
  %146 = bitcast i32** %threshold to i8*
  call void @llvm.lifetime.end(i64 8, i8* %146) #2
  %147 = bitcast i32** %direction to i8*
  call void @llvm.lifetime.end(i64 8, i8* %147) #2
  %148 = bitcast i32* %v to i8*
  call void @llvm.lifetime.end(i64 4, i8* %148) #2
  %149 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %149) #2
  %150 = bitcast i32* %p to i8*
  call void @llvm.lifetime.end(i64 4, i8* %150) #2
  br label %if.end.648

if.else:                                          ; preds = %entry
  %151 = bitcast i32* %w to i8*
  call void @llvm.lifetime.start(i64 4, i8* %151) #2
  %152 = bitcast i32* %p147 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %152) #2
  %153 = bitcast i32* %dir to i8*
  call void @llvm.lifetime.start(i64 4, i8* %153) #2
  %154 = bitcast i32* %thedir to i8*
  call void @llvm.lifetime.start(i64 4, i8* %154) #2
  %155 = bitcast [4 x i8*]* %out to i8*
  call void @llvm.lifetime.start(i64 32, i8* %155) #2
  %156 = bitcast [4 x i8]* %pixel to i8*
  call void @llvm.lifetime.start(i64 4, i8* %156) #2
  call void @llvm.lifetime.start(i64 1, i8* %bit) #2
  %157 = bitcast i32** %direction148 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %157) #2
  %158 = load i8*, i8** %err, align 8, !tbaa !1
  %159 = bitcast i8* %158 to i32*
  store i32* %159, i32** %direction148, align 8, !tbaa !1
  %160 = bitcast i32** %threshold149 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %160) #2
  %161 = load i32*, i32** %direction148, align 8, !tbaa !1
  %add.ptr150 = getelementptr inbounds i32, i32* %161, i64 4
  store i32* %add.ptr150, i32** %threshold149, align 8, !tbaa !1
  %162 = bitcast i32** %spotsize151 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %162) #2
  %163 = load i32*, i32** %threshold149, align 8, !tbaa !1
  %add.ptr152 = getelementptr inbounds i32, i32* %163, i64 4
  store i32* %add.ptr152, i32** %spotsize151, align 8, !tbaa !1
  %164 = bitcast i32** %emin153 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %164) #2
  %165 = load i32*, i32** %spotsize151, align 8, !tbaa !1
  %add.ptr154 = getelementptr inbounds i32, i32* %165, i64 4
  store i32* %add.ptr154, i32** %emin153, align 8, !tbaa !1
  %166 = bitcast i32** %emax155 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %166) #2
  %167 = load i32*, i32** %emin153, align 8, !tbaa !1
  %add.ptr156 = getelementptr inbounds i32, i32* %167, i64 4
  store i32* %add.ptr156, i32** %emax155, align 8, !tbaa !1
  %168 = bitcast i32** %errc157 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %168) #2
  %169 = load i32*, i32** %emax155, align 8, !tbaa !1
  %add.ptr158 = getelementptr inbounds i32, i32* %169, i64 4
  store i32* %add.ptr158, i32** %errc157, align 8, !tbaa !1
  %170 = bitcast i32** %errv159 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %170) #2
  %171 = load i32*, i32** %errc157, align 8, !tbaa !1
  %add.ptr160 = getelementptr inbounds i32, i32* %171, i64 8
  store i32* %add.ptr160, i32** %errv159, align 8, !tbaa !1
  %172 = bitcast i32* %kerr to i8*
  call void @llvm.lifetime.start(i64 4, i8* %172) #2
  %173 = bitcast i32* %cerr to i8*
  call void @llvm.lifetime.start(i64 4, i8* %173) #2
  %174 = bitcast i32* %merr to i8*
  call void @llvm.lifetime.start(i64 4, i8* %174) #2
  %175 = bitcast i32* %yerr to i8*
  call void @llvm.lifetime.start(i64 4, i8* %175) #2
  %176 = bitcast i8** %in to i8*
  call void @llvm.lifetime.start(i64 8, i8* %176) #2
  %177 = load i32*, i32** %errc157, align 8, !tbaa !1
  %arrayidx161 = getelementptr inbounds i32, i32* %177, i64 0
  %178 = load i32, i32* %arrayidx161, align 4, !tbaa !5
  store i32 %178, i32* %cerr, align 4, !tbaa !5
  %179 = load i32*, i32** %errc157, align 8, !tbaa !1
  %arrayidx162 = getelementptr inbounds i32, i32* %179, i64 1
  %180 = load i32, i32* %arrayidx162, align 4, !tbaa !5
  store i32 %180, i32* %merr, align 4, !tbaa !5
  %181 = load i32*, i32** %errc157, align 8, !tbaa !1
  %arrayidx163 = getelementptr inbounds i32, i32* %181, i64 2
  %182 = load i32, i32* %arrayidx163, align 4, !tbaa !5
  store i32 %182, i32* %yerr, align 4, !tbaa !5
  %183 = load i32*, i32** %errc157, align 8, !tbaa !1
  %arrayidx164 = getelementptr inbounds i32, i32* %183, i64 3
  %184 = load i32, i32* %arrayidx164, align 4, !tbaa !5
  store i32 %184, i32* %kerr, align 4, !tbaa !5
  %185 = load i32, i32* %scan.addr, align 4, !tbaa !5
  %add165 = add nsw i32 %185, 2
  %idxprom166 = sext i32 %add165 to i64
  %186 = load [4 x i8*]*, [4 x i8*]** %outplanes.addr, align 8, !tbaa !1
  %arrayidx167 = getelementptr inbounds [4 x i8*], [4 x i8*]* %186, i64 %idxprom166
  %arrayidx168 = getelementptr inbounds [4 x i8*], [4 x i8*]* %arrayidx167, i32 0, i64 2
  %187 = load i8*, i8** %arrayidx168, align 8, !tbaa !1
  %arrayidx169 = getelementptr inbounds [4 x i8*], [4 x i8*]* %out, i32 0, i64 0
  store i8* %187, i8** %arrayidx169, align 8, !tbaa !1
  %188 = load i32, i32* %scan.addr, align 4, !tbaa !5
  %add170 = add nsw i32 %188, 2
  %idxprom171 = sext i32 %add170 to i64
  %189 = load [4 x i8*]*, [4 x i8*]** %outplanes.addr, align 8, !tbaa !1
  %arrayidx172 = getelementptr inbounds [4 x i8*], [4 x i8*]* %189, i64 %idxprom171
  %arrayidx173 = getelementptr inbounds [4 x i8*], [4 x i8*]* %arrayidx172, i32 0, i64 1
  %190 = load i8*, i8** %arrayidx173, align 8, !tbaa !1
  %arrayidx174 = getelementptr inbounds [4 x i8*], [4 x i8*]* %out, i32 0, i64 1
  store i8* %190, i8** %arrayidx174, align 8, !tbaa !1
  %191 = load i32, i32* %scan.addr, align 4, !tbaa !5
  %add175 = add nsw i32 %191, 2
  %idxprom176 = sext i32 %add175 to i64
  %192 = load [4 x i8*]*, [4 x i8*]** %outplanes.addr, align 8, !tbaa !1
  %arrayidx177 = getelementptr inbounds [4 x i8*], [4 x i8*]* %192, i64 %idxprom176
  %arrayidx178 = getelementptr inbounds [4 x i8*], [4 x i8*]* %arrayidx177, i32 0, i64 0
  %193 = load i8*, i8** %arrayidx178, align 8, !tbaa !1
  %arrayidx179 = getelementptr inbounds [4 x i8*], [4 x i8*]* %out, i32 0, i64 2
  store i8* %193, i8** %arrayidx179, align 8, !tbaa !1
  %194 = load i32, i32* %scan.addr, align 4, !tbaa !5
  %add180 = add nsw i32 %194, 2
  %idxprom181 = sext i32 %add180 to i64
  %195 = load [4 x i8*]*, [4 x i8*]** %outplanes.addr, align 8, !tbaa !1
  %arrayidx182 = getelementptr inbounds [4 x i8*], [4 x i8*]* %195, i64 %idxprom181
  %arrayidx183 = getelementptr inbounds [4 x i8*], [4 x i8*]* %arrayidx182, i32 0, i64 3
  %196 = load i8*, i8** %arrayidx183, align 8, !tbaa !1
  %arrayidx184 = getelementptr inbounds [4 x i8*], [4 x i8*]* %out, i32 0, i64 3
  store i8* %196, i8** %arrayidx184, align 8, !tbaa !1
  %arrayidx185 = getelementptr inbounds [4 x i8], [4 x i8]* %pixel, i32 0, i64 3
  store i8 0, i8* %arrayidx185, align 1, !tbaa !48
  %arrayidx186 = getelementptr inbounds [4 x i8], [4 x i8]* %pixel, i32 0, i64 2
  store i8 0, i8* %arrayidx186, align 1, !tbaa !48
  %arrayidx187 = getelementptr inbounds [4 x i8], [4 x i8]* %pixel, i32 0, i64 1
  store i8 0, i8* %arrayidx187, align 1, !tbaa !48
  %arrayidx188 = getelementptr inbounds [4 x i8], [4 x i8]* %pixel, i32 0, i64 0
  store i8 0, i8* %arrayidx188, align 1, !tbaa !48
  %197 = load i32*, i32** %direction148, align 8, !tbaa !1
  %arrayidx189 = getelementptr inbounds i32, i32* %197, i64 0
  %198 = load i32, i32* %arrayidx189, align 4, !tbaa !5
  %cmp190 = icmp slt i32 %198, 0
  br i1 %cmp190, label %if.then.192, label %if.else.216

if.then.192:                                      ; preds = %if.else
  %199 = load i32, i32* %plane_size.addr, align 4, !tbaa !5
  %mul193 = mul nsw i32 %199, 8
  store i32 %mul193, i32* %w, align 4, !tbaa !5
  %200 = load i8**, i8*** %inplanes.addr, align 8, !tbaa !1
  %arrayidx194 = getelementptr inbounds i8*, i8** %200, i64 2
  %201 = load i8*, i8** %arrayidx194, align 8, !tbaa !1
  %202 = load i32, i32* %plane_size.addr, align 4, !tbaa !5
  %mul195 = mul nsw i32 %202, 8
  %sub196 = sub nsw i32 %mul195, 1
  %mul197 = mul nsw i32 4, %sub196
  %idx.ext198 = sext i32 %mul197 to i64
  %add.ptr199 = getelementptr inbounds i8, i8* %201, i64 %idx.ext198
  store i8* %add.ptr199, i8** %in, align 8, !tbaa !1
  %203 = load i32, i32* %w, align 4, !tbaa !5
  %sub200 = sub nsw i32 %203, 1
  %shl201 = shl i32 %sub200, 2
  %204 = load i32*, i32** %errv159, align 8, !tbaa !1
  %idx.ext202 = sext i32 %shl201 to i64
  %add.ptr203 = getelementptr inbounds i32, i32* %204, i64 %idx.ext202
  store i32* %add.ptr203, i32** %errv159, align 8, !tbaa !1
  store i32 -4, i32* %dir, align 4, !tbaa !5
  store i32 -1, i32* %thedir, align 4, !tbaa !5
  store i32 0, i32* %p147, align 4, !tbaa !5
  br label %for.cond.204

for.cond.204:                                     ; preds = %for.inc.213, %if.then.192
  %205 = load i32, i32* %p147, align 4, !tbaa !5
  %cmp205 = icmp slt i32 %205, 4
  br i1 %cmp205, label %for.body.207, label %for.end.215

for.body.207:                                     ; preds = %for.cond.204
  %206 = load i32, i32* %plane_size.addr, align 4, !tbaa !5
  %sub208 = sub nsw i32 %206, 1
  %207 = load i32, i32* %p147, align 4, !tbaa !5
  %idxprom209 = sext i32 %207 to i64
  %arrayidx210 = getelementptr inbounds [4 x i8*], [4 x i8*]* %out, i32 0, i64 %idxprom209
  %208 = load i8*, i8** %arrayidx210, align 8, !tbaa !1
  %idx.ext211 = sext i32 %sub208 to i64
  %add.ptr212 = getelementptr inbounds i8, i8* %208, i64 %idx.ext211
  store i8* %add.ptr212, i8** %arrayidx210, align 8, !tbaa !1
  br label %for.inc.213

for.inc.213:                                      ; preds = %for.body.207
  %209 = load i32, i32* %p147, align 4, !tbaa !5
  %inc214 = add nsw i32 %209, 1
  store i32 %inc214, i32* %p147, align 4, !tbaa !5
  br label %for.cond.204

for.end.215:                                      ; preds = %for.cond.204
  br label %if.end

if.else.216:                                      ; preds = %if.else
  store i32 1, i32* %w, align 4, !tbaa !5
  %210 = load i8**, i8*** %inplanes.addr, align 8, !tbaa !1
  %arrayidx217 = getelementptr inbounds i8*, i8** %210, i64 3
  %211 = load i8*, i8** %arrayidx217, align 8, !tbaa !1
  %212 = load i32, i32* %plane_size.addr, align 4, !tbaa !5
  %mul218 = mul nsw i32 %212, 8
  %mul219 = mul nsw i32 4, %mul218
  %idx.ext220 = sext i32 %mul219 to i64
  %idx.neg = sub i64 0, %idx.ext220
  %add.ptr221 = getelementptr inbounds i8, i8* %211, i64 %idx.neg
  store i8* %add.ptr221, i8** %in, align 8, !tbaa !1
  store i32 4, i32* %dir, align 4, !tbaa !5
  store i32 1, i32* %thedir, align 4, !tbaa !5
  store i32 0, i32* %p147, align 4, !tbaa !5
  br label %for.cond.222

for.cond.222:                                     ; preds = %for.inc.231, %if.else.216
  %213 = load i32, i32* %p147, align 4, !tbaa !5
  %cmp223 = icmp slt i32 %213, 4
  br i1 %cmp223, label %for.body.225, label %for.end.233

for.body.225:                                     ; preds = %for.cond.222
  %214 = load i32, i32* %plane_size.addr, align 4, !tbaa !5
  %215 = load i32, i32* %p147, align 4, !tbaa !5
  %idxprom226 = sext i32 %215 to i64
  %arrayidx227 = getelementptr inbounds [4 x i8*], [4 x i8*]* %out, i32 0, i64 %idxprom226
  %216 = load i8*, i8** %arrayidx227, align 8, !tbaa !1
  %idx.ext228 = sext i32 %214 to i64
  %idx.neg229 = sub i64 0, %idx.ext228
  %add.ptr230 = getelementptr inbounds i8, i8* %216, i64 %idx.neg229
  store i8* %add.ptr230, i8** %arrayidx227, align 8, !tbaa !1
  br label %for.inc.231

for.inc.231:                                      ; preds = %for.body.225
  %217 = load i32, i32* %p147, align 4, !tbaa !5
  %inc232 = add nsw i32 %217, 1
  store i32 %inc232, i32* %p147, align 4, !tbaa !5
  br label %for.cond.222

for.end.233:                                      ; preds = %for.cond.222
  br label %if.end

if.end:                                           ; preds = %for.end.233, %for.end.215
  %218 = load i32*, i32** %direction148, align 8, !tbaa !1
  %arrayidx234 = getelementptr inbounds i32, i32* %218, i64 0
  %219 = load i32, i32* %arrayidx234, align 4, !tbaa !5
  %sub235 = sub nsw i32 0, %219
  %220 = load i32*, i32** %direction148, align 8, !tbaa !1
  %arrayidx236 = getelementptr inbounds i32, i32* %220, i64 0
  store i32 %sub235, i32* %arrayidx236, align 4, !tbaa !5
  %221 = load i32, i32* %w, align 4, !tbaa !5
  %sub237 = sub nsw i32 %221, 1
  %and = and i32 %sub237, 7
  %shr238 = ashr i32 128, %and
  %conv239 = trunc i32 %shr238 to i8
  store i8 %conv239, i8* %bit, align 1, !tbaa !48
  %222 = load i32, i32* %w, align 4, !tbaa !5
  %add240 = add nsw i32 %222, 7
  %shr241 = ashr i32 %add240, 3
  store i32 %shr241, i32* %w, align 4, !tbaa !5
  %223 = load i32, i32* %plane_size.addr, align 4, !tbaa !5
  %mul242 = mul nsw i32 %223, 8
  store i32 %mul242, i32* %p147, align 4, !tbaa !5
  br label %for.cond.243

for.cond.243:                                     ; preds = %for.inc.642, %if.end
  %224 = load i32, i32* %p147, align 4, !tbaa !5
  %tobool = icmp ne i32 %224, 0
  br i1 %tobool, label %for.body.244, label %for.end.643

for.body.244:                                     ; preds = %for.cond.243
  %225 = bitcast i32* %cmy to i8*
  call void @llvm.lifetime.start(i64 4, i8* %225) #2
  %226 = load i8*, i8** %in, align 8, !tbaa !1
  %arrayidx245 = getelementptr inbounds i8, i8* %226, i64 1
  %227 = load i8, i8* %arrayidx245, align 1, !tbaa !48
  %conv246 = zext i8 %227 to i32
  %228 = load i8*, i8** %in, align 8, !tbaa !1
  %arrayidx247 = getelementptr inbounds i8, i8* %228, i64 2
  %229 = load i8, i8* %arrayidx247, align 1, !tbaa !48
  %conv248 = zext i8 %229 to i32
  %or = or i32 %conv246, %conv248
  %230 = load i8*, i8** %in, align 8, !tbaa !1
  %arrayidx249 = getelementptr inbounds i8, i8* %230, i64 3
  %231 = load i8, i8* %arrayidx249, align 1, !tbaa !48
  %conv250 = zext i8 %231 to i32
  %or251 = or i32 %or, %conv250
  store i32 %or251, i32* %cmy, align 4, !tbaa !5
  %232 = bitcast i32* %kv to i8*
  call void @llvm.lifetime.start(i64 4, i8* %232) #2
  %233 = load i8*, i8** %in, align 8, !tbaa !1
  %arrayidx252 = getelementptr inbounds i8, i8* %233, i64 0
  %234 = load i8, i8* %arrayidx252, align 1, !tbaa !48
  %conv253 = zext i8 %234 to i32
  %235 = load i32*, i32** %errv159, align 8, !tbaa !1
  %arrayidx254 = getelementptr inbounds i32, i32* %235, i64 3
  %236 = load i32, i32* %arrayidx254, align 4, !tbaa !5
  %add255 = add nsw i32 %conv253, %236
  %237 = load i32, i32* %kerr, align 4, !tbaa !5
  %mul256 = mul nsw i32 7, %237
  %shr257 = ashr i32 %mul256, 4
  %add258 = add nsw i32 %add255, %shr257
  store i32 %add258, i32* %kv, align 4, !tbaa !5
  %238 = bitcast i32* %cv to i8*
  call void @llvm.lifetime.start(i64 4, i8* %238) #2
  %239 = load i32, i32* %kv, align 4, !tbaa !5
  %240 = load i32*, i32** %threshold149, align 8, !tbaa !1
  %arrayidx259 = getelementptr inbounds i32, i32* %240, i64 3
  %241 = load i32, i32* %arrayidx259, align 4, !tbaa !5
  %cmp260 = icmp sgt i32 %239, %241
  br i1 %cmp260, label %if.then.262, label %if.end.270

if.then.262:                                      ; preds = %for.body.244
  %242 = load i8, i8* %bit, align 1, !tbaa !48
  %conv263 = zext i8 %242 to i32
  %arrayidx264 = getelementptr inbounds [4 x i8], [4 x i8]* %pixel, i32 0, i64 3
  %243 = load i8, i8* %arrayidx264, align 1, !tbaa !48
  %conv265 = zext i8 %243 to i32
  %or266 = or i32 %conv265, %conv263
  %conv267 = trunc i32 %or266 to i8
  store i8 %conv267, i8* %arrayidx264, align 1, !tbaa !48
  %244 = load i32*, i32** %spotsize151, align 8, !tbaa !1
  %arrayidx268 = getelementptr inbounds i32, i32* %244, i64 3
  %245 = load i32, i32* %arrayidx268, align 4, !tbaa !5
  %246 = load i32, i32* %kv, align 4, !tbaa !5
  %sub269 = sub nsw i32 %246, %245
  store i32 %sub269, i32* %kv, align 4, !tbaa !5
  br label %if.end.270

if.end.270:                                       ; preds = %if.then.262, %for.body.244
  %247 = load i32, i32* %cmy, align 4, !tbaa !5
  %tobool271 = icmp ne i32 %247, 0
  br i1 %tobool271, label %if.then.272, label %if.else.530

if.then.272:                                      ; preds = %if.end.270
  %arrayidx273 = getelementptr inbounds [4 x i8], [4 x i8]* %pixel, i32 0, i64 3
  %248 = load i8, i8* %arrayidx273, align 1, !tbaa !48
  %conv274 = zext i8 %248 to i32
  %249 = load i8, i8* %bit, align 1, !tbaa !48
  %conv275 = zext i8 %249 to i32
  %and276 = and i32 %conv274, %conv275
  %tobool277 = icmp ne i32 %and276, 0
  br i1 %tobool277, label %if.then.278, label %if.else.378

if.then.278:                                      ; preds = %if.then.272
  %250 = load i32, i32* %kv, align 4, !tbaa !5
  %mul279 = mul nsw i32 3, %250
  %add280 = add nsw i32 %mul279, 8
  %shr281 = ashr i32 %add280, 4
  %251 = load i32, i32* %dir, align 4, !tbaa !5
  %sub282 = sub nsw i32 3, %251
  %idxprom283 = sext i32 %sub282 to i64
  %252 = load i32*, i32** %errv159, align 8, !tbaa !1
  %arrayidx284 = getelementptr inbounds i32, i32* %252, i64 %idxprom283
  %253 = load i32, i32* %arrayidx284, align 4, !tbaa !5
  %add285 = add nsw i32 %253, %shr281
  store i32 %add285, i32* %arrayidx284, align 4, !tbaa !5
  %254 = load i32, i32* %kv, align 4, !tbaa !5
  %mul286 = mul nsw i32 5, %254
  %255 = load i32, i32* %kerr, align 4, !tbaa !5
  %add287 = add nsw i32 %mul286, %255
  %add288 = add nsw i32 %add287, 8
  %shr289 = ashr i32 %add288, 4
  %256 = load i32*, i32** %errv159, align 8, !tbaa !1
  %arrayidx290 = getelementptr inbounds i32, i32* %256, i64 3
  store i32 %shr289, i32* %arrayidx290, align 4, !tbaa !5
  %257 = load i32, i32* %kv, align 4, !tbaa !5
  store i32 %257, i32* %kerr, align 4, !tbaa !5
  %258 = load i8*, i8** %in, align 8, !tbaa !1
  %arrayidx291 = getelementptr inbounds i8, i8* %258, i64 1
  %259 = load i8, i8* %arrayidx291, align 1, !tbaa !48
  %conv292 = zext i8 %259 to i32
  %260 = load i32*, i32** %errv159, align 8, !tbaa !1
  %arrayidx293 = getelementptr inbounds i32, i32* %260, i64 0
  %261 = load i32, i32* %arrayidx293, align 4, !tbaa !5
  %add294 = add nsw i32 %conv292, %261
  %262 = load i32, i32* %cerr, align 4, !tbaa !5
  %mul295 = mul nsw i32 7, %262
  %shr296 = ashr i32 %mul295, 4
  %add297 = add nsw i32 %add294, %shr296
  store i32 %add297, i32* %cv, align 4, !tbaa !5
  %263 = load i32*, i32** %spotsize151, align 8, !tbaa !1
  %arrayidx298 = getelementptr inbounds i32, i32* %263, i64 0
  %264 = load i32, i32* %arrayidx298, align 4, !tbaa !5
  %265 = load i32, i32* %cv, align 4, !tbaa !5
  %sub299 = sub nsw i32 %265, %264
  store i32 %sub299, i32* %cv, align 4, !tbaa !5
  %266 = load i32, i32* %cv, align 4, !tbaa !5
  %267 = load i32*, i32** %threshold149, align 8, !tbaa !1
  %arrayidx300 = getelementptr inbounds i32, i32* %267, i64 0
  %268 = load i32, i32* %arrayidx300, align 4, !tbaa !5
  %add301 = add nsw i32 %266, %268
  %cmp302 = icmp slt i32 %add301, 0
  br i1 %cmp302, label %if.then.304, label %if.end.307

if.then.304:                                      ; preds = %if.then.278
  %269 = load i32*, i32** %threshold149, align 8, !tbaa !1
  %arrayidx305 = getelementptr inbounds i32, i32* %269, i64 0
  %270 = load i32, i32* %arrayidx305, align 4, !tbaa !5
  %sub306 = sub nsw i32 0, %270
  store i32 %sub306, i32* %cv, align 4, !tbaa !5
  br label %if.end.307

if.end.307:                                       ; preds = %if.then.304, %if.then.278
  %271 = load i32, i32* %cv, align 4, !tbaa !5
  %mul308 = mul nsw i32 3, %271
  %add309 = add nsw i32 %mul308, 8
  %shr310 = ashr i32 %add309, 4
  %272 = load i32, i32* %dir, align 4, !tbaa !5
  %sub311 = sub nsw i32 0, %272
  %idxprom312 = sext i32 %sub311 to i64
  %273 = load i32*, i32** %errv159, align 8, !tbaa !1
  %arrayidx313 = getelementptr inbounds i32, i32* %273, i64 %idxprom312
  %274 = load i32, i32* %arrayidx313, align 4, !tbaa !5
  %add314 = add nsw i32 %274, %shr310
  store i32 %add314, i32* %arrayidx313, align 4, !tbaa !5
  %275 = load i32, i32* %cv, align 4, !tbaa !5
  %mul315 = mul nsw i32 5, %275
  %276 = load i32, i32* %cerr, align 4, !tbaa !5
  %add316 = add nsw i32 %mul315, %276
  %add317 = add nsw i32 %add316, 8
  %shr318 = ashr i32 %add317, 4
  %277 = load i32*, i32** %errv159, align 8, !tbaa !1
  %arrayidx319 = getelementptr inbounds i32, i32* %277, i64 0
  store i32 %shr318, i32* %arrayidx319, align 4, !tbaa !5
  %278 = load i32, i32* %cv, align 4, !tbaa !5
  store i32 %278, i32* %cerr, align 4, !tbaa !5
  %279 = load i8*, i8** %in, align 8, !tbaa !1
  %arrayidx320 = getelementptr inbounds i8, i8* %279, i64 2
  %280 = load i8, i8* %arrayidx320, align 1, !tbaa !48
  %conv321 = zext i8 %280 to i32
  %281 = load i32*, i32** %errv159, align 8, !tbaa !1
  %arrayidx322 = getelementptr inbounds i32, i32* %281, i64 1
  %282 = load i32, i32* %arrayidx322, align 4, !tbaa !5
  %add323 = add nsw i32 %conv321, %282
  %283 = load i32, i32* %merr, align 4, !tbaa !5
  %mul324 = mul nsw i32 7, %283
  %shr325 = ashr i32 %mul324, 4
  %add326 = add nsw i32 %add323, %shr325
  store i32 %add326, i32* %cv, align 4, !tbaa !5
  %284 = load i32*, i32** %spotsize151, align 8, !tbaa !1
  %arrayidx327 = getelementptr inbounds i32, i32* %284, i64 1
  %285 = load i32, i32* %arrayidx327, align 4, !tbaa !5
  %286 = load i32, i32* %cv, align 4, !tbaa !5
  %sub328 = sub nsw i32 %286, %285
  store i32 %sub328, i32* %cv, align 4, !tbaa !5
  %287 = load i32, i32* %cv, align 4, !tbaa !5
  %288 = load i32*, i32** %threshold149, align 8, !tbaa !1
  %arrayidx329 = getelementptr inbounds i32, i32* %288, i64 1
  %289 = load i32, i32* %arrayidx329, align 4, !tbaa !5
  %add330 = add nsw i32 %287, %289
  %cmp331 = icmp slt i32 %add330, 0
  br i1 %cmp331, label %if.then.333, label %if.end.336

if.then.333:                                      ; preds = %if.end.307
  %290 = load i32*, i32** %threshold149, align 8, !tbaa !1
  %arrayidx334 = getelementptr inbounds i32, i32* %290, i64 1
  %291 = load i32, i32* %arrayidx334, align 4, !tbaa !5
  %sub335 = sub nsw i32 0, %291
  store i32 %sub335, i32* %cv, align 4, !tbaa !5
  br label %if.end.336

if.end.336:                                       ; preds = %if.then.333, %if.end.307
  %292 = load i32, i32* %cv, align 4, !tbaa !5
  %mul337 = mul nsw i32 3, %292
  %add338 = add nsw i32 %mul337, 8
  %shr339 = ashr i32 %add338, 4
  %293 = load i32, i32* %dir, align 4, !tbaa !5
  %sub340 = sub nsw i32 1, %293
  %idxprom341 = sext i32 %sub340 to i64
  %294 = load i32*, i32** %errv159, align 8, !tbaa !1
  %arrayidx342 = getelementptr inbounds i32, i32* %294, i64 %idxprom341
  %295 = load i32, i32* %arrayidx342, align 4, !tbaa !5
  %add343 = add nsw i32 %295, %shr339
  store i32 %add343, i32* %arrayidx342, align 4, !tbaa !5
  %296 = load i32, i32* %cv, align 4, !tbaa !5
  %mul344 = mul nsw i32 5, %296
  %297 = load i32, i32* %merr, align 4, !tbaa !5
  %add345 = add nsw i32 %mul344, %297
  %add346 = add nsw i32 %add345, 8
  %shr347 = ashr i32 %add346, 4
  %298 = load i32*, i32** %errv159, align 8, !tbaa !1
  %arrayidx348 = getelementptr inbounds i32, i32* %298, i64 1
  store i32 %shr347, i32* %arrayidx348, align 4, !tbaa !5
  %299 = load i32, i32* %cv, align 4, !tbaa !5
  store i32 %299, i32* %merr, align 4, !tbaa !5
  %300 = load i8*, i8** %in, align 8, !tbaa !1
  %arrayidx349 = getelementptr inbounds i8, i8* %300, i64 3
  %301 = load i8, i8* %arrayidx349, align 1, !tbaa !48
  %conv350 = zext i8 %301 to i32
  %302 = load i32*, i32** %errv159, align 8, !tbaa !1
  %arrayidx351 = getelementptr inbounds i32, i32* %302, i64 2
  %303 = load i32, i32* %arrayidx351, align 4, !tbaa !5
  %add352 = add nsw i32 %conv350, %303
  %304 = load i32, i32* %yerr, align 4, !tbaa !5
  %mul353 = mul nsw i32 7, %304
  %shr354 = ashr i32 %mul353, 4
  %add355 = add nsw i32 %add352, %shr354
  store i32 %add355, i32* %cv, align 4, !tbaa !5
  %305 = load i32*, i32** %spotsize151, align 8, !tbaa !1
  %arrayidx356 = getelementptr inbounds i32, i32* %305, i64 2
  %306 = load i32, i32* %arrayidx356, align 4, !tbaa !5
  %307 = load i32, i32* %cv, align 4, !tbaa !5
  %sub357 = sub nsw i32 %307, %306
  store i32 %sub357, i32* %cv, align 4, !tbaa !5
  %308 = load i32, i32* %cv, align 4, !tbaa !5
  %309 = load i32*, i32** %threshold149, align 8, !tbaa !1
  %arrayidx358 = getelementptr inbounds i32, i32* %309, i64 2
  %310 = load i32, i32* %arrayidx358, align 4, !tbaa !5
  %add359 = add nsw i32 %308, %310
  %cmp360 = icmp slt i32 %add359, 0
  br i1 %cmp360, label %if.then.362, label %if.end.365

if.then.362:                                      ; preds = %if.end.336
  %311 = load i32*, i32** %threshold149, align 8, !tbaa !1
  %arrayidx363 = getelementptr inbounds i32, i32* %311, i64 2
  %312 = load i32, i32* %arrayidx363, align 4, !tbaa !5
  %sub364 = sub nsw i32 0, %312
  store i32 %sub364, i32* %cv, align 4, !tbaa !5
  br label %if.end.365

if.end.365:                                       ; preds = %if.then.362, %if.end.336
  %313 = load i32, i32* %cv, align 4, !tbaa !5
  %mul366 = mul nsw i32 3, %313
  %add367 = add nsw i32 %mul366, 8
  %shr368 = ashr i32 %add367, 4
  %314 = load i32, i32* %dir, align 4, !tbaa !5
  %sub369 = sub nsw i32 2, %314
  %idxprom370 = sext i32 %sub369 to i64
  %315 = load i32*, i32** %errv159, align 8, !tbaa !1
  %arrayidx371 = getelementptr inbounds i32, i32* %315, i64 %idxprom370
  %316 = load i32, i32* %arrayidx371, align 4, !tbaa !5
  %add372 = add nsw i32 %316, %shr368
  store i32 %add372, i32* %arrayidx371, align 4, !tbaa !5
  %317 = load i32, i32* %cv, align 4, !tbaa !5
  %mul373 = mul nsw i32 5, %317
  %318 = load i32, i32* %yerr, align 4, !tbaa !5
  %add374 = add nsw i32 %mul373, %318
  %add375 = add nsw i32 %add374, 8
  %shr376 = ashr i32 %add375, 4
  %319 = load i32*, i32** %errv159, align 8, !tbaa !1
  %arrayidx377 = getelementptr inbounds i32, i32* %319, i64 2
  store i32 %shr376, i32* %arrayidx377, align 4, !tbaa !5
  %320 = load i32, i32* %cv, align 4, !tbaa !5
  store i32 %320, i32* %yerr, align 4, !tbaa !5
  br label %if.end.529

if.else.378:                                      ; preds = %if.then.272
  %321 = load i8*, i8** %in, align 8, !tbaa !1
  %arrayidx379 = getelementptr inbounds i8, i8* %321, i64 1
  %322 = load i8, i8* %arrayidx379, align 1, !tbaa !48
  %conv380 = zext i8 %322 to i32
  %323 = load i32*, i32** %errv159, align 8, !tbaa !1
  %arrayidx381 = getelementptr inbounds i32, i32* %323, i64 0
  %324 = load i32, i32* %arrayidx381, align 4, !tbaa !5
  %add382 = add nsw i32 %conv380, %324
  %325 = load i32, i32* %cerr, align 4, !tbaa !5
  %mul383 = mul nsw i32 7, %325
  %shr384 = ashr i32 %mul383, 4
  %add385 = add nsw i32 %add382, %shr384
  store i32 %add385, i32* %cv, align 4, !tbaa !5
  %326 = load i32, i32* %cv, align 4, !tbaa !5
  %327 = load i32*, i32** %threshold149, align 8, !tbaa !1
  %arrayidx386 = getelementptr inbounds i32, i32* %327, i64 0
  %328 = load i32, i32* %arrayidx386, align 4, !tbaa !5
  %cmp387 = icmp sgt i32 %326, %328
  br i1 %cmp387, label %if.then.389, label %if.end.397

if.then.389:                                      ; preds = %if.else.378
  %329 = load i8, i8* %bit, align 1, !tbaa !48
  %conv390 = zext i8 %329 to i32
  %arrayidx391 = getelementptr inbounds [4 x i8], [4 x i8]* %pixel, i32 0, i64 0
  %330 = load i8, i8* %arrayidx391, align 1, !tbaa !48
  %conv392 = zext i8 %330 to i32
  %or393 = or i32 %conv392, %conv390
  %conv394 = trunc i32 %or393 to i8
  store i8 %conv394, i8* %arrayidx391, align 1, !tbaa !48
  %331 = load i32*, i32** %spotsize151, align 8, !tbaa !1
  %arrayidx395 = getelementptr inbounds i32, i32* %331, i64 0
  %332 = load i32, i32* %arrayidx395, align 4, !tbaa !5
  %333 = load i32, i32* %cv, align 4, !tbaa !5
  %sub396 = sub nsw i32 %333, %332
  store i32 %sub396, i32* %cv, align 4, !tbaa !5
  br label %if.end.397

if.end.397:                                       ; preds = %if.then.389, %if.else.378
  %334 = load i32, i32* %cv, align 4, !tbaa !5
  %mul398 = mul nsw i32 3, %334
  %add399 = add nsw i32 %mul398, 8
  %shr400 = ashr i32 %add399, 4
  %335 = load i32, i32* %dir, align 4, !tbaa !5
  %sub401 = sub nsw i32 0, %335
  %idxprom402 = sext i32 %sub401 to i64
  %336 = load i32*, i32** %errv159, align 8, !tbaa !1
  %arrayidx403 = getelementptr inbounds i32, i32* %336, i64 %idxprom402
  %337 = load i32, i32* %arrayidx403, align 4, !tbaa !5
  %add404 = add nsw i32 %337, %shr400
  store i32 %add404, i32* %arrayidx403, align 4, !tbaa !5
  %338 = load i32, i32* %cv, align 4, !tbaa !5
  %mul405 = mul nsw i32 5, %338
  %339 = load i32, i32* %cerr, align 4, !tbaa !5
  %add406 = add nsw i32 %mul405, %339
  %add407 = add nsw i32 %add406, 8
  %shr408 = ashr i32 %add407, 4
  %340 = load i32*, i32** %errv159, align 8, !tbaa !1
  %arrayidx409 = getelementptr inbounds i32, i32* %340, i64 0
  store i32 %shr408, i32* %arrayidx409, align 4, !tbaa !5
  %341 = load i32, i32* %cv, align 4, !tbaa !5
  store i32 %341, i32* %cerr, align 4, !tbaa !5
  %342 = load i8*, i8** %in, align 8, !tbaa !1
  %arrayidx410 = getelementptr inbounds i8, i8* %342, i64 2
  %343 = load i8, i8* %arrayidx410, align 1, !tbaa !48
  %conv411 = zext i8 %343 to i32
  %344 = load i32*, i32** %errv159, align 8, !tbaa !1
  %arrayidx412 = getelementptr inbounds i32, i32* %344, i64 1
  %345 = load i32, i32* %arrayidx412, align 4, !tbaa !5
  %add413 = add nsw i32 %conv411, %345
  %346 = load i32, i32* %merr, align 4, !tbaa !5
  %mul414 = mul nsw i32 7, %346
  %shr415 = ashr i32 %mul414, 4
  %add416 = add nsw i32 %add413, %shr415
  store i32 %add416, i32* %cv, align 4, !tbaa !5
  %347 = load i32, i32* %cv, align 4, !tbaa !5
  %348 = load i32*, i32** %threshold149, align 8, !tbaa !1
  %arrayidx417 = getelementptr inbounds i32, i32* %348, i64 1
  %349 = load i32, i32* %arrayidx417, align 4, !tbaa !5
  %cmp418 = icmp sgt i32 %347, %349
  br i1 %cmp418, label %if.then.420, label %if.end.428

if.then.420:                                      ; preds = %if.end.397
  %350 = load i8, i8* %bit, align 1, !tbaa !48
  %conv421 = zext i8 %350 to i32
  %arrayidx422 = getelementptr inbounds [4 x i8], [4 x i8]* %pixel, i32 0, i64 1
  %351 = load i8, i8* %arrayidx422, align 1, !tbaa !48
  %conv423 = zext i8 %351 to i32
  %or424 = or i32 %conv423, %conv421
  %conv425 = trunc i32 %or424 to i8
  store i8 %conv425, i8* %arrayidx422, align 1, !tbaa !48
  %352 = load i32*, i32** %spotsize151, align 8, !tbaa !1
  %arrayidx426 = getelementptr inbounds i32, i32* %352, i64 1
  %353 = load i32, i32* %arrayidx426, align 4, !tbaa !5
  %354 = load i32, i32* %cv, align 4, !tbaa !5
  %sub427 = sub nsw i32 %354, %353
  store i32 %sub427, i32* %cv, align 4, !tbaa !5
  br label %if.end.428

if.end.428:                                       ; preds = %if.then.420, %if.end.397
  %355 = load i32, i32* %cv, align 4, !tbaa !5
  %mul429 = mul nsw i32 3, %355
  %add430 = add nsw i32 %mul429, 8
  %shr431 = ashr i32 %add430, 4
  %356 = load i32, i32* %dir, align 4, !tbaa !5
  %sub432 = sub nsw i32 1, %356
  %idxprom433 = sext i32 %sub432 to i64
  %357 = load i32*, i32** %errv159, align 8, !tbaa !1
  %arrayidx434 = getelementptr inbounds i32, i32* %357, i64 %idxprom433
  %358 = load i32, i32* %arrayidx434, align 4, !tbaa !5
  %add435 = add nsw i32 %358, %shr431
  store i32 %add435, i32* %arrayidx434, align 4, !tbaa !5
  %359 = load i32, i32* %cv, align 4, !tbaa !5
  %mul436 = mul nsw i32 5, %359
  %360 = load i32, i32* %merr, align 4, !tbaa !5
  %add437 = add nsw i32 %mul436, %360
  %add438 = add nsw i32 %add437, 8
  %shr439 = ashr i32 %add438, 4
  %361 = load i32*, i32** %errv159, align 8, !tbaa !1
  %arrayidx440 = getelementptr inbounds i32, i32* %361, i64 1
  store i32 %shr439, i32* %arrayidx440, align 4, !tbaa !5
  %362 = load i32, i32* %cv, align 4, !tbaa !5
  store i32 %362, i32* %merr, align 4, !tbaa !5
  %363 = load i8*, i8** %in, align 8, !tbaa !1
  %arrayidx441 = getelementptr inbounds i8, i8* %363, i64 3
  %364 = load i8, i8* %arrayidx441, align 1, !tbaa !48
  %conv442 = zext i8 %364 to i32
  %365 = load i32*, i32** %errv159, align 8, !tbaa !1
  %arrayidx443 = getelementptr inbounds i32, i32* %365, i64 2
  %366 = load i32, i32* %arrayidx443, align 4, !tbaa !5
  %add444 = add nsw i32 %conv442, %366
  %367 = load i32, i32* %yerr, align 4, !tbaa !5
  %mul445 = mul nsw i32 7, %367
  %shr446 = ashr i32 %mul445, 4
  %add447 = add nsw i32 %add444, %shr446
  store i32 %add447, i32* %cv, align 4, !tbaa !5
  %368 = load i32, i32* %cv, align 4, !tbaa !5
  %369 = load i32*, i32** %threshold149, align 8, !tbaa !1
  %arrayidx448 = getelementptr inbounds i32, i32* %369, i64 2
  %370 = load i32, i32* %arrayidx448, align 4, !tbaa !5
  %cmp449 = icmp sgt i32 %368, %370
  br i1 %cmp449, label %if.then.451, label %if.end.459

if.then.451:                                      ; preds = %if.end.428
  %371 = load i8, i8* %bit, align 1, !tbaa !48
  %conv452 = zext i8 %371 to i32
  %arrayidx453 = getelementptr inbounds [4 x i8], [4 x i8]* %pixel, i32 0, i64 2
  %372 = load i8, i8* %arrayidx453, align 1, !tbaa !48
  %conv454 = zext i8 %372 to i32
  %or455 = or i32 %conv454, %conv452
  %conv456 = trunc i32 %or455 to i8
  store i8 %conv456, i8* %arrayidx453, align 1, !tbaa !48
  %373 = load i32*, i32** %spotsize151, align 8, !tbaa !1
  %arrayidx457 = getelementptr inbounds i32, i32* %373, i64 2
  %374 = load i32, i32* %arrayidx457, align 4, !tbaa !5
  %375 = load i32, i32* %cv, align 4, !tbaa !5
  %sub458 = sub nsw i32 %375, %374
  store i32 %sub458, i32* %cv, align 4, !tbaa !5
  br label %if.end.459

if.end.459:                                       ; preds = %if.then.451, %if.end.428
  %376 = load i32, i32* %cv, align 4, !tbaa !5
  %mul460 = mul nsw i32 3, %376
  %add461 = add nsw i32 %mul460, 8
  %shr462 = ashr i32 %add461, 4
  %377 = load i32, i32* %dir, align 4, !tbaa !5
  %sub463 = sub nsw i32 2, %377
  %idxprom464 = sext i32 %sub463 to i64
  %378 = load i32*, i32** %errv159, align 8, !tbaa !1
  %arrayidx465 = getelementptr inbounds i32, i32* %378, i64 %idxprom464
  %379 = load i32, i32* %arrayidx465, align 4, !tbaa !5
  %add466 = add nsw i32 %379, %shr462
  store i32 %add466, i32* %arrayidx465, align 4, !tbaa !5
  %380 = load i32, i32* %cv, align 4, !tbaa !5
  %mul467 = mul nsw i32 5, %380
  %381 = load i32, i32* %yerr, align 4, !tbaa !5
  %add468 = add nsw i32 %mul467, %381
  %add469 = add nsw i32 %add468, 8
  %shr470 = ashr i32 %add469, 4
  %382 = load i32*, i32** %errv159, align 8, !tbaa !1
  %arrayidx471 = getelementptr inbounds i32, i32* %382, i64 2
  store i32 %shr470, i32* %arrayidx471, align 4, !tbaa !5
  %383 = load i32, i32* %cv, align 4, !tbaa !5
  store i32 %383, i32* %yerr, align 4, !tbaa !5
  %arrayidx472 = getelementptr inbounds [4 x i8], [4 x i8]* %pixel, i32 0, i64 0
  %384 = load i8, i8* %arrayidx472, align 1, !tbaa !48
  %conv473 = zext i8 %384 to i32
  %arrayidx474 = getelementptr inbounds [4 x i8], [4 x i8]* %pixel, i32 0, i64 1
  %385 = load i8, i8* %arrayidx474, align 1, !tbaa !48
  %conv475 = zext i8 %385 to i32
  %and476 = and i32 %conv473, %conv475
  %arrayidx477 = getelementptr inbounds [4 x i8], [4 x i8]* %pixel, i32 0, i64 2
  %386 = load i8, i8* %arrayidx477, align 1, !tbaa !48
  %conv478 = zext i8 %386 to i32
  %and479 = and i32 %and476, %conv478
  %387 = load i8, i8* %bit, align 1, !tbaa !48
  %conv480 = zext i8 %387 to i32
  %and481 = and i32 %and479, %conv480
  %tobool482 = icmp ne i32 %and481, 0
  br i1 %tobool482, label %if.then.483, label %if.end.528

if.then.483:                                      ; preds = %if.end.459
  %388 = load i8, i8* %bit, align 1, !tbaa !48
  %conv484 = zext i8 %388 to i32
  %neg = xor i32 %conv484, -1
  %arrayidx485 = getelementptr inbounds [4 x i8], [4 x i8]* %pixel, i32 0, i64 0
  %389 = load i8, i8* %arrayidx485, align 1, !tbaa !48
  %conv486 = zext i8 %389 to i32
  %and487 = and i32 %conv486, %neg
  %conv488 = trunc i32 %and487 to i8
  store i8 %conv488, i8* %arrayidx485, align 1, !tbaa !48
  %390 = load i8, i8* %bit, align 1, !tbaa !48
  %conv489 = zext i8 %390 to i32
  %neg490 = xor i32 %conv489, -1
  %arrayidx491 = getelementptr inbounds [4 x i8], [4 x i8]* %pixel, i32 0, i64 1
  %391 = load i8, i8* %arrayidx491, align 1, !tbaa !48
  %conv492 = zext i8 %391 to i32
  %and493 = and i32 %conv492, %neg490
  %conv494 = trunc i32 %and493 to i8
  store i8 %conv494, i8* %arrayidx491, align 1, !tbaa !48
  %392 = load i8, i8* %bit, align 1, !tbaa !48
  %conv495 = zext i8 %392 to i32
  %neg496 = xor i32 %conv495, -1
  %arrayidx497 = getelementptr inbounds [4 x i8], [4 x i8]* %pixel, i32 0, i64 2
  %393 = load i8, i8* %arrayidx497, align 1, !tbaa !48
  %conv498 = zext i8 %393 to i32
  %and499 = and i32 %conv498, %neg496
  %conv500 = trunc i32 %and499 to i8
  store i8 %conv500, i8* %arrayidx497, align 1, !tbaa !48
  %394 = load i8, i8* %bit, align 1, !tbaa !48
  %conv501 = zext i8 %394 to i32
  %arrayidx502 = getelementptr inbounds [4 x i8], [4 x i8]* %pixel, i32 0, i64 3
  %395 = load i8, i8* %arrayidx502, align 1, !tbaa !48
  %conv503 = zext i8 %395 to i32
  %or504 = or i32 %conv503, %conv501
  %conv505 = trunc i32 %or504 to i8
  store i8 %conv505, i8* %arrayidx502, align 1, !tbaa !48
  %396 = load i32*, i32** %spotsize151, align 8, !tbaa !1
  %arrayidx506 = getelementptr inbounds i32, i32* %396, i64 3
  %397 = load i32, i32* %arrayidx506, align 4, !tbaa !5
  %398 = load i32, i32* %kv, align 4, !tbaa !5
  %sub507 = sub nsw i32 %398, %397
  store i32 %sub507, i32* %kv, align 4, !tbaa !5
  %399 = load i32, i32* %kv, align 4, !tbaa !5
  %400 = load i32*, i32** %threshold149, align 8, !tbaa !1
  %arrayidx508 = getelementptr inbounds i32, i32* %400, i64 3
  %401 = load i32, i32* %arrayidx508, align 4, !tbaa !5
  %add509 = add nsw i32 %399, %401
  %cmp510 = icmp slt i32 %add509, 0
  br i1 %cmp510, label %if.then.512, label %if.end.515

if.then.512:                                      ; preds = %if.then.483
  %402 = load i32*, i32** %threshold149, align 8, !tbaa !1
  %arrayidx513 = getelementptr inbounds i32, i32* %402, i64 0
  %403 = load i32, i32* %arrayidx513, align 4, !tbaa !5
  %sub514 = sub nsw i32 0, %403
  store i32 %sub514, i32* %kv, align 4, !tbaa !5
  br label %if.end.515

if.end.515:                                       ; preds = %if.then.512, %if.then.483
  %404 = load i32, i32* %kv, align 4, !tbaa !5
  %mul516 = mul nsw i32 3, %404
  %add517 = add nsw i32 %mul516, 8
  %shr518 = ashr i32 %add517, 4
  %405 = load i32, i32* %dir, align 4, !tbaa !5
  %sub519 = sub nsw i32 3, %405
  %idxprom520 = sext i32 %sub519 to i64
  %406 = load i32*, i32** %errv159, align 8, !tbaa !1
  %arrayidx521 = getelementptr inbounds i32, i32* %406, i64 %idxprom520
  %407 = load i32, i32* %arrayidx521, align 4, !tbaa !5
  %add522 = add nsw i32 %407, %shr518
  store i32 %add522, i32* %arrayidx521, align 4, !tbaa !5
  %408 = load i32, i32* %kv, align 4, !tbaa !5
  %mul523 = mul nsw i32 5, %408
  %409 = load i32, i32* %kerr, align 4, !tbaa !5
  %add524 = add nsw i32 %mul523, %409
  %add525 = add nsw i32 %add524, 8
  %shr526 = ashr i32 %add525, 4
  %410 = load i32*, i32** %errv159, align 8, !tbaa !1
  %arrayidx527 = getelementptr inbounds i32, i32* %410, i64 3
  store i32 %shr526, i32* %arrayidx527, align 4, !tbaa !5
  %411 = load i32, i32* %kv, align 4, !tbaa !5
  store i32 %411, i32* %kerr, align 4, !tbaa !5
  br label %if.end.528

if.end.528:                                       ; preds = %if.end.515, %if.end.459
  br label %if.end.529

if.end.529:                                       ; preds = %if.end.528, %if.end.365
  br label %if.end.594

if.else.530:                                      ; preds = %if.end.270
  %412 = load i32, i32* %kv, align 4, !tbaa !5
  %mul531 = mul nsw i32 3, %412
  %add532 = add nsw i32 %mul531, 8
  %shr533 = ashr i32 %add532, 4
  %413 = load i32, i32* %dir, align 4, !tbaa !5
  %sub534 = sub nsw i32 3, %413
  %idxprom535 = sext i32 %sub534 to i64
  %414 = load i32*, i32** %errv159, align 8, !tbaa !1
  %arrayidx536 = getelementptr inbounds i32, i32* %414, i64 %idxprom535
  %415 = load i32, i32* %arrayidx536, align 4, !tbaa !5
  %add537 = add nsw i32 %415, %shr533
  store i32 %add537, i32* %arrayidx536, align 4, !tbaa !5
  %416 = load i32, i32* %kv, align 4, !tbaa !5
  %mul538 = mul nsw i32 5, %416
  %417 = load i32, i32* %kerr, align 4, !tbaa !5
  %add539 = add nsw i32 %mul538, %417
  %add540 = add nsw i32 %add539, 8
  %shr541 = ashr i32 %add540, 4
  %418 = load i32*, i32** %errv159, align 8, !tbaa !1
  %arrayidx542 = getelementptr inbounds i32, i32* %418, i64 3
  store i32 %shr541, i32* %arrayidx542, align 4, !tbaa !5
  %419 = load i32, i32* %kv, align 4, !tbaa !5
  store i32 %419, i32* %kerr, align 4, !tbaa !5
  %420 = load i32*, i32** %errv159, align 8, !tbaa !1
  %arrayidx543 = getelementptr inbounds i32, i32* %420, i64 0
  %421 = load i32, i32* %arrayidx543, align 4, !tbaa !5
  %422 = load i32*, i32** %emax155, align 8, !tbaa !1
  %arrayidx544 = getelementptr inbounds i32, i32* %422, i64 0
  %423 = load i32, i32* %arrayidx544, align 4, !tbaa !5
  %cmp545 = icmp sgt i32 %421, %423
  br i1 %cmp545, label %if.then.547, label %if.else.550

if.then.547:                                      ; preds = %if.else.530
  %424 = load i32*, i32** %emax155, align 8, !tbaa !1
  %arrayidx548 = getelementptr inbounds i32, i32* %424, i64 0
  %425 = load i32, i32* %arrayidx548, align 4, !tbaa !5
  %426 = load i32*, i32** %errv159, align 8, !tbaa !1
  %arrayidx549 = getelementptr inbounds i32, i32* %426, i64 0
  store i32 %425, i32* %arrayidx549, align 4, !tbaa !5
  br label %if.end.559

if.else.550:                                      ; preds = %if.else.530
  %427 = load i32*, i32** %errv159, align 8, !tbaa !1
  %arrayidx551 = getelementptr inbounds i32, i32* %427, i64 0
  %428 = load i32, i32* %arrayidx551, align 4, !tbaa !5
  %429 = load i32*, i32** %emin153, align 8, !tbaa !1
  %arrayidx552 = getelementptr inbounds i32, i32* %429, i64 0
  %430 = load i32, i32* %arrayidx552, align 4, !tbaa !5
  %cmp553 = icmp slt i32 %428, %430
  br i1 %cmp553, label %if.then.555, label %if.end.558

if.then.555:                                      ; preds = %if.else.550
  %431 = load i32*, i32** %emin153, align 8, !tbaa !1
  %arrayidx556 = getelementptr inbounds i32, i32* %431, i64 0
  %432 = load i32, i32* %arrayidx556, align 4, !tbaa !5
  %433 = load i32*, i32** %errv159, align 8, !tbaa !1
  %arrayidx557 = getelementptr inbounds i32, i32* %433, i64 0
  store i32 %432, i32* %arrayidx557, align 4, !tbaa !5
  br label %if.end.558

if.end.558:                                       ; preds = %if.then.555, %if.else.550
  br label %if.end.559

if.end.559:                                       ; preds = %if.end.558, %if.then.547
  %434 = load i32*, i32** %errv159, align 8, !tbaa !1
  %arrayidx560 = getelementptr inbounds i32, i32* %434, i64 1
  %435 = load i32, i32* %arrayidx560, align 4, !tbaa !5
  %436 = load i32*, i32** %emax155, align 8, !tbaa !1
  %arrayidx561 = getelementptr inbounds i32, i32* %436, i64 1
  %437 = load i32, i32* %arrayidx561, align 4, !tbaa !5
  %cmp562 = icmp sgt i32 %435, %437
  br i1 %cmp562, label %if.then.564, label %if.else.567

if.then.564:                                      ; preds = %if.end.559
  %438 = load i32*, i32** %emax155, align 8, !tbaa !1
  %arrayidx565 = getelementptr inbounds i32, i32* %438, i64 1
  %439 = load i32, i32* %arrayidx565, align 4, !tbaa !5
  %440 = load i32*, i32** %errv159, align 8, !tbaa !1
  %arrayidx566 = getelementptr inbounds i32, i32* %440, i64 1
  store i32 %439, i32* %arrayidx566, align 4, !tbaa !5
  br label %if.end.576

if.else.567:                                      ; preds = %if.end.559
  %441 = load i32*, i32** %errv159, align 8, !tbaa !1
  %arrayidx568 = getelementptr inbounds i32, i32* %441, i64 1
  %442 = load i32, i32* %arrayidx568, align 4, !tbaa !5
  %443 = load i32*, i32** %emin153, align 8, !tbaa !1
  %arrayidx569 = getelementptr inbounds i32, i32* %443, i64 1
  %444 = load i32, i32* %arrayidx569, align 4, !tbaa !5
  %cmp570 = icmp slt i32 %442, %444
  br i1 %cmp570, label %if.then.572, label %if.end.575

if.then.572:                                      ; preds = %if.else.567
  %445 = load i32*, i32** %emin153, align 8, !tbaa !1
  %arrayidx573 = getelementptr inbounds i32, i32* %445, i64 1
  %446 = load i32, i32* %arrayidx573, align 4, !tbaa !5
  %447 = load i32*, i32** %errv159, align 8, !tbaa !1
  %arrayidx574 = getelementptr inbounds i32, i32* %447, i64 1
  store i32 %446, i32* %arrayidx574, align 4, !tbaa !5
  br label %if.end.575

if.end.575:                                       ; preds = %if.then.572, %if.else.567
  br label %if.end.576

if.end.576:                                       ; preds = %if.end.575, %if.then.564
  %448 = load i32*, i32** %errv159, align 8, !tbaa !1
  %arrayidx577 = getelementptr inbounds i32, i32* %448, i64 2
  %449 = load i32, i32* %arrayidx577, align 4, !tbaa !5
  %450 = load i32*, i32** %emax155, align 8, !tbaa !1
  %arrayidx578 = getelementptr inbounds i32, i32* %450, i64 2
  %451 = load i32, i32* %arrayidx578, align 4, !tbaa !5
  %cmp579 = icmp sgt i32 %449, %451
  br i1 %cmp579, label %if.then.581, label %if.else.584

if.then.581:                                      ; preds = %if.end.576
  %452 = load i32*, i32** %emax155, align 8, !tbaa !1
  %arrayidx582 = getelementptr inbounds i32, i32* %452, i64 2
  %453 = load i32, i32* %arrayidx582, align 4, !tbaa !5
  %454 = load i32*, i32** %errv159, align 8, !tbaa !1
  %arrayidx583 = getelementptr inbounds i32, i32* %454, i64 2
  store i32 %453, i32* %arrayidx583, align 4, !tbaa !5
  br label %if.end.593

if.else.584:                                      ; preds = %if.end.576
  %455 = load i32*, i32** %errv159, align 8, !tbaa !1
  %arrayidx585 = getelementptr inbounds i32, i32* %455, i64 2
  %456 = load i32, i32* %arrayidx585, align 4, !tbaa !5
  %457 = load i32*, i32** %emin153, align 8, !tbaa !1
  %arrayidx586 = getelementptr inbounds i32, i32* %457, i64 2
  %458 = load i32, i32* %arrayidx586, align 4, !tbaa !5
  %cmp587 = icmp slt i32 %456, %458
  br i1 %cmp587, label %if.then.589, label %if.end.592

if.then.589:                                      ; preds = %if.else.584
  %459 = load i32*, i32** %emin153, align 8, !tbaa !1
  %arrayidx590 = getelementptr inbounds i32, i32* %459, i64 2
  %460 = load i32, i32* %arrayidx590, align 4, !tbaa !5
  %461 = load i32*, i32** %errv159, align 8, !tbaa !1
  %arrayidx591 = getelementptr inbounds i32, i32* %461, i64 2
  store i32 %460, i32* %arrayidx591, align 4, !tbaa !5
  br label %if.end.592

if.end.592:                                       ; preds = %if.then.589, %if.else.584
  br label %if.end.593

if.end.593:                                       ; preds = %if.end.592, %if.then.581
  br label %if.end.594

if.end.594:                                       ; preds = %if.end.593, %if.end.529
  %462 = load i32, i32* %dir, align 4, !tbaa !5
  %cmp595 = icmp sgt i32 %462, 0
  br i1 %cmp595, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.594
  %463 = load i8, i8* %bit, align 1, !tbaa !48
  %conv597 = zext i8 %463 to i32
  %shr598 = ashr i32 %conv597, 1
  br label %cond.end

cond.false:                                       ; preds = %if.end.594
  %464 = load i8, i8* %bit, align 1, !tbaa !48
  %conv599 = zext i8 %464 to i32
  %shl600 = shl i32 %conv599, 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %shr598, %cond.true ], [ %shl600, %cond.false ]
  %conv601 = trunc i32 %cond to i8
  store i8 %conv601, i8* %bit, align 1, !tbaa !48
  %465 = load i8, i8* %bit, align 1, !tbaa !48
  %conv602 = zext i8 %465 to i32
  %cmp603 = icmp eq i32 %conv602, 0
  br i1 %cmp603, label %if.then.605, label %if.end.637

if.then.605:                                      ; preds = %cond.end
  %arrayidx606 = getelementptr inbounds [4 x i8], [4 x i8]* %pixel, i32 0, i64 0
  %466 = load i8, i8* %arrayidx606, align 1, !tbaa !48
  %arrayidx607 = getelementptr inbounds [4 x i8*], [4 x i8*]* %out, i32 0, i64 0
  %467 = load i8*, i8** %arrayidx607, align 8, !tbaa !1
  store i8 %466, i8* %467, align 1, !tbaa !48
  %arrayidx608 = getelementptr inbounds [4 x i8], [4 x i8]* %pixel, i32 0, i64 1
  %468 = load i8, i8* %arrayidx608, align 1, !tbaa !48
  %arrayidx609 = getelementptr inbounds [4 x i8*], [4 x i8*]* %out, i32 0, i64 1
  %469 = load i8*, i8** %arrayidx609, align 8, !tbaa !1
  store i8 %468, i8* %469, align 1, !tbaa !48
  %arrayidx610 = getelementptr inbounds [4 x i8], [4 x i8]* %pixel, i32 0, i64 2
  %470 = load i8, i8* %arrayidx610, align 1, !tbaa !48
  %arrayidx611 = getelementptr inbounds [4 x i8*], [4 x i8*]* %out, i32 0, i64 2
  %471 = load i8*, i8** %arrayidx611, align 8, !tbaa !1
  store i8 %470, i8* %471, align 1, !tbaa !48
  %arrayidx612 = getelementptr inbounds [4 x i8], [4 x i8]* %pixel, i32 0, i64 3
  %472 = load i8, i8* %arrayidx612, align 1, !tbaa !48
  %arrayidx613 = getelementptr inbounds [4 x i8*], [4 x i8*]* %out, i32 0, i64 3
  %473 = load i8*, i8** %arrayidx613, align 8, !tbaa !1
  store i8 %472, i8* %473, align 1, !tbaa !48
  %474 = load i32, i32* %thedir, align 4, !tbaa !5
  %arrayidx614 = getelementptr inbounds [4 x i8*], [4 x i8*]* %out, i32 0, i64 0
  %475 = load i8*, i8** %arrayidx614, align 8, !tbaa !1
  %idx.ext615 = sext i32 %474 to i64
  %add.ptr616 = getelementptr inbounds i8, i8* %475, i64 %idx.ext615
  store i8* %add.ptr616, i8** %arrayidx614, align 8, !tbaa !1
  %476 = load i32, i32* %thedir, align 4, !tbaa !5
  %arrayidx617 = getelementptr inbounds [4 x i8*], [4 x i8*]* %out, i32 0, i64 1
  %477 = load i8*, i8** %arrayidx617, align 8, !tbaa !1
  %idx.ext618 = sext i32 %476 to i64
  %add.ptr619 = getelementptr inbounds i8, i8* %477, i64 %idx.ext618
  store i8* %add.ptr619, i8** %arrayidx617, align 8, !tbaa !1
  %478 = load i32, i32* %thedir, align 4, !tbaa !5
  %arrayidx620 = getelementptr inbounds [4 x i8*], [4 x i8*]* %out, i32 0, i64 2
  %479 = load i8*, i8** %arrayidx620, align 8, !tbaa !1
  %idx.ext621 = sext i32 %478 to i64
  %add.ptr622 = getelementptr inbounds i8, i8* %479, i64 %idx.ext621
  store i8* %add.ptr622, i8** %arrayidx620, align 8, !tbaa !1
  %480 = load i32, i32* %thedir, align 4, !tbaa !5
  %arrayidx623 = getelementptr inbounds [4 x i8*], [4 x i8*]* %out, i32 0, i64 3
  %481 = load i8*, i8** %arrayidx623, align 8, !tbaa !1
  %idx.ext624 = sext i32 %480 to i64
  %add.ptr625 = getelementptr inbounds i8, i8* %481, i64 %idx.ext624
  store i8* %add.ptr625, i8** %arrayidx623, align 8, !tbaa !1
  %arrayidx626 = getelementptr inbounds [4 x i8], [4 x i8]* %pixel, i32 0, i64 3
  store i8 0, i8* %arrayidx626, align 1, !tbaa !48
  %arrayidx627 = getelementptr inbounds [4 x i8], [4 x i8]* %pixel, i32 0, i64 2
  store i8 0, i8* %arrayidx627, align 1, !tbaa !48
  %arrayidx628 = getelementptr inbounds [4 x i8], [4 x i8]* %pixel, i32 0, i64 1
  store i8 0, i8* %arrayidx628, align 1, !tbaa !48
  %arrayidx629 = getelementptr inbounds [4 x i8], [4 x i8]* %pixel, i32 0, i64 0
  store i8 0, i8* %arrayidx629, align 1, !tbaa !48
  %482 = load i32, i32* %dir, align 4, !tbaa !5
  %cmp630 = icmp sgt i32 %482, 0
  br i1 %cmp630, label %if.then.632, label %if.else.633

if.then.632:                                      ; preds = %if.then.605
  store i8 -128, i8* %bit, align 1, !tbaa !48
  br label %if.end.634

if.else.633:                                      ; preds = %if.then.605
  store i8 1, i8* %bit, align 1, !tbaa !48
  br label %if.end.634

if.end.634:                                       ; preds = %if.else.633, %if.then.632
  %483 = load i32, i32* %dir, align 4, !tbaa !5
  %shr635 = ashr i32 %483, 2
  %484 = load i32, i32* %w, align 4, !tbaa !5
  %add636 = add nsw i32 %484, %shr635
  store i32 %add636, i32* %w, align 4, !tbaa !5
  br label %if.end.637

if.end.637:                                       ; preds = %if.end.634, %cond.end
  %485 = load i32, i32* %dir, align 4, !tbaa !5
  %486 = load i8*, i8** %in, align 8, !tbaa !1
  %idx.ext638 = sext i32 %485 to i64
  %add.ptr639 = getelementptr inbounds i8, i8* %486, i64 %idx.ext638
  store i8* %add.ptr639, i8** %in, align 8, !tbaa !1
  %487 = load i32, i32* %dir, align 4, !tbaa !5
  %488 = load i32*, i32** %errv159, align 8, !tbaa !1
  %idx.ext640 = sext i32 %487 to i64
  %add.ptr641 = getelementptr inbounds i32, i32* %488, i64 %idx.ext640
  store i32* %add.ptr641, i32** %errv159, align 8, !tbaa !1
  %489 = bitcast i32* %cv to i8*
  call void @llvm.lifetime.end(i64 4, i8* %489) #2
  %490 = bitcast i32* %kv to i8*
  call void @llvm.lifetime.end(i64 4, i8* %490) #2
  %491 = bitcast i32* %cmy to i8*
  call void @llvm.lifetime.end(i64 4, i8* %491) #2
  br label %for.inc.642

for.inc.642:                                      ; preds = %if.end.637
  %492 = load i32, i32* %p147, align 4, !tbaa !5
  %dec = add nsw i32 %492, -1
  store i32 %dec, i32* %p147, align 4, !tbaa !5
  br label %for.cond.243

for.end.643:                                      ; preds = %for.cond.243
  %493 = load i32, i32* %cerr, align 4, !tbaa !5
  %494 = load i32*, i32** %errc157, align 8, !tbaa !1
  %arrayidx644 = getelementptr inbounds i32, i32* %494, i64 0
  store i32 %493, i32* %arrayidx644, align 4, !tbaa !5
  store i32 %493, i32* %cerr, align 4, !tbaa !5
  %495 = load i32, i32* %merr, align 4, !tbaa !5
  %496 = load i32*, i32** %errc157, align 8, !tbaa !1
  %arrayidx645 = getelementptr inbounds i32, i32* %496, i64 1
  store i32 %495, i32* %arrayidx645, align 4, !tbaa !5
  store i32 %495, i32* %merr, align 4, !tbaa !5
  %497 = load i32, i32* %yerr, align 4, !tbaa !5
  %498 = load i32*, i32** %errc157, align 8, !tbaa !1
  %arrayidx646 = getelementptr inbounds i32, i32* %498, i64 2
  store i32 %497, i32* %arrayidx646, align 4, !tbaa !5
  store i32 %497, i32* %yerr, align 4, !tbaa !5
  %499 = load i32, i32* %kerr, align 4, !tbaa !5
  %500 = load i32*, i32** %errc157, align 8, !tbaa !1
  %arrayidx647 = getelementptr inbounds i32, i32* %500, i64 3
  store i32 %499, i32* %arrayidx647, align 4, !tbaa !5
  store i32 %499, i32* %kerr, align 4, !tbaa !5
  %501 = bitcast i8** %in to i8*
  call void @llvm.lifetime.end(i64 8, i8* %501) #2
  %502 = bitcast i32* %yerr to i8*
  call void @llvm.lifetime.end(i64 4, i8* %502) #2
  %503 = bitcast i32* %merr to i8*
  call void @llvm.lifetime.end(i64 4, i8* %503) #2
  %504 = bitcast i32* %cerr to i8*
  call void @llvm.lifetime.end(i64 4, i8* %504) #2
  %505 = bitcast i32* %kerr to i8*
  call void @llvm.lifetime.end(i64 4, i8* %505) #2
  %506 = bitcast i32** %errv159 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %506) #2
  %507 = bitcast i32** %errc157 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %507) #2
  %508 = bitcast i32** %emax155 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %508) #2
  %509 = bitcast i32** %emin153 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %509) #2
  %510 = bitcast i32** %spotsize151 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %510) #2
  %511 = bitcast i32** %threshold149 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %511) #2
  %512 = bitcast i32** %direction148 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %512) #2
  call void @llvm.lifetime.end(i64 1, i8* %bit) #2
  %513 = bitcast [4 x i8]* %pixel to i8*
  call void @llvm.lifetime.end(i64 4, i8* %513) #2
  %514 = bitcast [4 x i8*]* %out to i8*
  call void @llvm.lifetime.end(i64 32, i8* %514) #2
  %515 = bitcast i32* %thedir to i8*
  call void @llvm.lifetime.end(i64 4, i8* %515) #2
  %516 = bitcast i32* %dir to i8*
  call void @llvm.lifetime.end(i64 4, i8* %516) #2
  %517 = bitcast i32* %p147 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %517) #2
  %518 = bitcast i32* %w to i8*
  call void @llvm.lifetime.end(i64 4, i8* %518) #2
  br label %if.end.648

if.end.648:                                       ; preds = %for.end.643, %for.end.146
  %519 = bitcast i8** %err to i8*
  call void @llvm.lifetime.end(i64 8, i8* %519) #2
  ret i32 0
}

; Function Attrs: nounwind
declare i32 @rand() #4

declare i32 @gdev_prn_copy_scan_lines(%struct.gx_device_printer_s*, i32, i8*, i32) #0

; Function Attrs: nounwind uwtable
define internal i32 @ep_print_image(%struct._IO_FILE* %prn_stream, %struct.ep_globals* %eg, i8 signext %cmd, i8* %data, i32 %size) #1 {
entry:
  %retval = alloca i32, align 4
  %prn_stream.addr = alloca %struct._IO_FILE*, align 8
  %eg.addr = alloca %struct.ep_globals*, align 8
  %cmd.addr = alloca i8, align 1
  %data.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %real_rows = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %lnum = alloca i32, align 4
  %hskip = alloca i32, align 4
  %print_size = alloca i32, align 4
  %img_rows84 = alloca i32, align 4
  %p0 = alloca i8*, align 8
  %p1 = alloca i8*, align 8
  %p2 = alloca i8*, align 8
  %p3 = alloca i8*, align 8
  %inp = alloca i8*, align 8
  %inbuf = alloca i8*, align 8
  %outp = alloca i8*, align 8
  %outbuf = alloca i8*, align 8
  store %struct._IO_FILE* %prn_stream, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  store %struct.ep_globals* %eg, %struct.ep_globals** %eg.addr, align 8, !tbaa !1
  store i8 %cmd, i8* %cmd.addr, align 1, !tbaa !48
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !5
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast i32* %real_rows to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = load i8, i8* %cmd.addr, align 1, !tbaa !48
  %conv = sext i8 %2 to i32
  switch i32 %conv, label %sw.default [
    i32 3, label %sw.bb
    i32 2, label %sw.bb
    i32 1, label %sw.bb
    i32 0, label %sw.bb
    i32 66, label %sw.bb.5
    i32 73, label %sw.bb.25
    i32 70, label %sw.bb.37
    i32 82, label %sw.bb.213
  ]

sw.bb:                                            ; preds = %entry, %entry, %entry, %entry
  %3 = load %struct.ep_globals*, %struct.ep_globals** %eg.addr, align 8, !tbaa !1
  %ln_idx = getelementptr inbounds %struct.ep_globals, %struct.ep_globals* %3, i32 0, i32 7
  %4 = load i32, i32* %ln_idx, align 4, !tbaa !107
  %5 = load %struct.ep_globals*, %struct.ep_globals** %eg.addr, align 8, !tbaa !1
  %vskip2 = getelementptr inbounds %struct.ep_globals, %struct.ep_globals* %5, i32 0, i32 9
  %6 = load i32, i32* %vskip2, align 4, !tbaa !108
  %add = add nsw i32 %4, %6
  %idxprom = sext i32 %add to i64
  %7 = load i8, i8* %cmd.addr, align 1, !tbaa !48
  %conv1 = sext i8 %7 to i32
  %idxprom2 = sext i32 %conv1 to i64
  %8 = load %struct.ep_globals*, %struct.ep_globals** %eg.addr, align 8, !tbaa !1
  %raster_buf = getelementptr inbounds %struct.ep_globals, %struct.ep_globals* %8, i32 0, i32 2
  %arrayidx = getelementptr inbounds [4 x [64 x i8*]], [4 x [64 x i8*]]* %raster_buf, i32 0, i64 %idxprom2
  %arrayidx3 = getelementptr inbounds [64 x i8*], [64 x i8*]* %arrayidx, i32 0, i64 %idxprom
  %9 = load i8*, i8** %arrayidx3, align 8, !tbaa !1
  %10 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %11 = load i32, i32* %size.addr, align 4, !tbaa !5
  %conv4 = sext i32 %11 to i64
  %call = call i8* @memcpy(i8* %9, i8* %10, i64 %conv4) #7
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.5:                                          ; preds = %entry
  %12 = load %struct.ep_globals*, %struct.ep_globals** %eg.addr, align 8, !tbaa !1
  %ln_idx6 = getelementptr inbounds %struct.ep_globals, %struct.ep_globals* %12, i32 0, i32 7
  %13 = load i32, i32* %ln_idx6, align 4, !tbaa !107
  %tobool = icmp ne i32 %13, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %sw.bb.5
  %14 = load i32, i32* %size.addr, align 4, !tbaa !5
  %15 = load %struct.ep_globals*, %struct.ep_globals** %eg.addr, align 8, !tbaa !1
  %vskip1 = getelementptr inbounds %struct.ep_globals, %struct.ep_globals* %15, i32 0, i32 8
  %16 = load i32, i32* %vskip1, align 4, !tbaa !109
  %add7 = add nsw i32 %16, %14
  store i32 %add7, i32* %vskip1, align 4, !tbaa !109
  br label %if.end.24

if.else:                                          ; preds = %sw.bb.5
  %17 = load i32, i32* %size.addr, align 4, !tbaa !5
  %18 = load %struct.ep_globals*, %struct.ep_globals** %eg.addr, align 8, !tbaa !1
  %img_rows = getelementptr inbounds %struct.ep_globals, %struct.ep_globals* %18, i32 0, i32 6
  %19 = load i32, i32* %img_rows, align 4, !tbaa !89
  %20 = load %struct.ep_globals*, %struct.ep_globals** %eg.addr, align 8, !tbaa !1
  %ln_idx8 = getelementptr inbounds %struct.ep_globals, %struct.ep_globals* %20, i32 0, i32 7
  %21 = load i32, i32* %ln_idx8, align 4, !tbaa !107
  %22 = load %struct.ep_globals*, %struct.ep_globals** %eg.addr, align 8, !tbaa !1
  %vskip29 = getelementptr inbounds %struct.ep_globals, %struct.ep_globals* %22, i32 0, i32 9
  %23 = load i32, i32* %vskip29, align 4, !tbaa !108
  %add10 = add nsw i32 %21, %23
  %sub = sub nsw i32 %19, %add10
  %cmp = icmp sge i32 %17, %sub
  br i1 %cmp, label %if.then.17, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %24 = load %struct.ep_globals*, %struct.ep_globals** %eg.addr, align 8, !tbaa !1
  %ln_idx12 = getelementptr inbounds %struct.ep_globals, %struct.ep_globals* %24, i32 0, i32 7
  %25 = load i32, i32* %ln_idx12, align 4, !tbaa !107
  %26 = load %struct.ep_globals*, %struct.ep_globals** %eg.addr, align 8, !tbaa !1
  %vskip213 = getelementptr inbounds %struct.ep_globals, %struct.ep_globals* %26, i32 0, i32 9
  %27 = load i32, i32* %vskip213, align 4, !tbaa !108
  %add14 = add nsw i32 %25, %27
  %cmp15 = icmp sge i32 %add14, 32
  br i1 %cmp15, label %if.then.17, label %if.else.21

if.then.17:                                       ; preds = %lor.lhs.false, %if.else
  %28 = load i32, i32* %size.addr, align 4, !tbaa !5
  %29 = load %struct.ep_globals*, %struct.ep_globals** %eg.addr, align 8, !tbaa !1
  %vskip218 = getelementptr inbounds %struct.ep_globals, %struct.ep_globals* %29, i32 0, i32 9
  %30 = load i32, i32* %vskip218, align 4, !tbaa !108
  %add19 = add nsw i32 %30, %28
  store i32 %add19, i32* %vskip218, align 4, !tbaa !108
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %32 = load %struct.ep_globals*, %struct.ep_globals** %eg.addr, align 8, !tbaa !1
  %call20 = call i32 @ep_print_image(%struct._IO_FILE* %31, %struct.ep_globals* %32, i8 signext 70, i8* null, i32 0) #5
  br label %if.end

if.else.21:                                       ; preds = %lor.lhs.false
  %33 = load i32, i32* %size.addr, align 4, !tbaa !5
  %34 = load %struct.ep_globals*, %struct.ep_globals** %eg.addr, align 8, !tbaa !1
  %vskip222 = getelementptr inbounds %struct.ep_globals, %struct.ep_globals* %34, i32 0, i32 9
  %35 = load i32, i32* %vskip222, align 4, !tbaa !108
  %add23 = add nsw i32 %35, %33
  store i32 %add23, i32* %vskip222, align 4, !tbaa !108
  br label %if.end

if.end:                                           ; preds = %if.else.21, %if.then.17
  br label %if.end.24

if.end.24:                                        ; preds = %if.end, %if.then
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.25:                                         ; preds = %entry
  %36 = load %struct.ep_globals*, %struct.ep_globals** %eg.addr, align 8, !tbaa !1
  %vskip226 = getelementptr inbounds %struct.ep_globals, %struct.ep_globals* %36, i32 0, i32 9
  %37 = load i32, i32* %vskip226, align 4, !tbaa !108
  %add27 = add nsw i32 %37, 1
  %38 = load %struct.ep_globals*, %struct.ep_globals** %eg.addr, align 8, !tbaa !1
  %ln_idx28 = getelementptr inbounds %struct.ep_globals, %struct.ep_globals* %38, i32 0, i32 7
  %39 = load i32, i32* %ln_idx28, align 4, !tbaa !107
  %add29 = add nsw i32 %39, %add27
  store i32 %add29, i32* %ln_idx28, align 4, !tbaa !107
  %40 = load %struct.ep_globals*, %struct.ep_globals** %eg.addr, align 8, !tbaa !1
  %vskip230 = getelementptr inbounds %struct.ep_globals, %struct.ep_globals* %40, i32 0, i32 9
  store i32 0, i32* %vskip230, align 4, !tbaa !108
  %41 = load %struct.ep_globals*, %struct.ep_globals** %eg.addr, align 8, !tbaa !1
  %ln_idx31 = getelementptr inbounds %struct.ep_globals, %struct.ep_globals* %41, i32 0, i32 7
  %42 = load i32, i32* %ln_idx31, align 4, !tbaa !107
  %43 = load %struct.ep_globals*, %struct.ep_globals** %eg.addr, align 8, !tbaa !1
  %img_rows32 = getelementptr inbounds %struct.ep_globals, %struct.ep_globals* %43, i32 0, i32 6
  %44 = load i32, i32* %img_rows32, align 4, !tbaa !89
  %cmp33 = icmp slt i32 %42, %44
  br i1 %cmp33, label %if.then.35, label %if.end.36

if.then.35:                                       ; preds = %sw.bb.25
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.36:                                        ; preds = %sw.bb.25
  br label %sw.bb.37

sw.bb.37:                                         ; preds = %entry, %if.end.36
  %45 = load %struct.ep_globals*, %struct.ep_globals** %eg.addr, align 8, !tbaa !1
  %ln_idx38 = getelementptr inbounds %struct.ep_globals, %struct.ep_globals* %45, i32 0, i32 7
  %46 = load i32, i32* %ln_idx38, align 4, !tbaa !107
  %tobool39 = icmp ne i32 %46, 0
  br i1 %tobool39, label %if.end.41, label %if.then.40

if.then.40:                                       ; preds = %sw.bb.37
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.41:                                        ; preds = %sw.bb.37
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.41
  %47 = load %struct.ep_globals*, %struct.ep_globals** %eg.addr, align 8, !tbaa !1
  %vskip142 = getelementptr inbounds %struct.ep_globals, %struct.ep_globals* %47, i32 0, i32 8
  %48 = load i32, i32* %vskip142, align 4, !tbaa !109
  %cmp43 = icmp sge i32 %48, 510
  br i1 %cmp43, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call45 = call i32 @fputs(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.122, i32 0, i32 0), %struct._IO_FILE* %49) #5
  %50 = load %struct.ep_globals*, %struct.ep_globals** %eg.addr, align 8, !tbaa !1
  %vskip146 = getelementptr inbounds %struct.ep_globals, %struct.ep_globals* %50, i32 0, i32 8
  %51 = load i32, i32* %vskip146, align 4, !tbaa !109
  %sub47 = sub nsw i32 %51, 510
  store i32 %sub47, i32* %vskip146, align 4, !tbaa !109
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %52 = load %struct.ep_globals*, %struct.ep_globals** %eg.addr, align 8, !tbaa !1
  %vskip148 = getelementptr inbounds %struct.ep_globals, %struct.ep_globals* %52, i32 0, i32 8
  %53 = load i32, i32* %vskip148, align 4, !tbaa !109
  %cmp49 = icmp sgt i32 %53, 255
  br i1 %cmp49, label %if.then.51, label %if.end.55

if.then.51:                                       ; preds = %while.end
  %54 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call52 = call i32 @fputs(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.123, i32 0, i32 0), %struct._IO_FILE* %54) #5
  %55 = load %struct.ep_globals*, %struct.ep_globals** %eg.addr, align 8, !tbaa !1
  %vskip153 = getelementptr inbounds %struct.ep_globals, %struct.ep_globals* %55, i32 0, i32 8
  %56 = load i32, i32* %vskip153, align 4, !tbaa !109
  %sub54 = sub nsw i32 %56, 256
  store i32 %sub54, i32* %vskip153, align 4, !tbaa !109
  br label %if.end.55

if.end.55:                                        ; preds = %if.then.51, %while.end
  %57 = load %struct.ep_globals*, %struct.ep_globals** %eg.addr, align 8, !tbaa !1
  %vskip156 = getelementptr inbounds %struct.ep_globals, %struct.ep_globals* %57, i32 0, i32 8
  %58 = load i32, i32* %vskip156, align 4, !tbaa !109
  %tobool57 = icmp ne i32 %58, 0
  br i1 %tobool57, label %if.then.58, label %if.end.63

if.then.58:                                       ; preds = %if.end.55
  %59 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call59 = call i32 @fputs(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.124, i32 0, i32 0), %struct._IO_FILE* %59) #5
  %60 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call60 = call i32 @_IO_putc(i32 0, %struct._IO_FILE* %60) #5
  %61 = load %struct.ep_globals*, %struct.ep_globals** %eg.addr, align 8, !tbaa !1
  %vskip161 = getelementptr inbounds %struct.ep_globals, %struct.ep_globals* %61, i32 0, i32 8
  %62 = load i32, i32* %vskip161, align 4, !tbaa !109
  %63 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call62 = call i32 @_IO_putc(i32 %62, %struct._IO_FILE* %63) #5
  br label %if.end.63

if.end.63:                                        ; preds = %if.then.58, %if.end.55
  %64 = load %struct.ep_globals*, %struct.ep_globals** %eg.addr, align 8, !tbaa !1
  %ln_idx64 = getelementptr inbounds %struct.ep_globals, %struct.ep_globals* %64, i32 0, i32 7
  %65 = load i32, i32* %ln_idx64, align 4, !tbaa !107
  %cmp65 = icmp sgt i32 %65, 56
  br i1 %cmp65, label %if.then.67, label %if.else.68

if.then.67:                                       ; preds = %if.end.63
  store i32 64, i32* %real_rows, align 4, !tbaa !5
  br label %if.end.81

if.else.68:                                       ; preds = %if.end.63
  %66 = load %struct.ep_globals*, %struct.ep_globals** %eg.addr, align 8, !tbaa !1
  %ln_idx69 = getelementptr inbounds %struct.ep_globals, %struct.ep_globals* %66, i32 0, i32 7
  %67 = load i32, i32* %ln_idx69, align 4, !tbaa !107
  %cmp70 = icmp sgt i32 %67, 48
  br i1 %cmp70, label %if.then.72, label %if.else.73

if.then.72:                                       ; preds = %if.else.68
  store i32 56, i32* %real_rows, align 4, !tbaa !5
  br label %if.end.80

if.else.73:                                       ; preds = %if.else.68
  %68 = load %struct.ep_globals*, %struct.ep_globals** %eg.addr, align 8, !tbaa !1
  %ln_idx74 = getelementptr inbounds %struct.ep_globals, %struct.ep_globals* %68, i32 0, i32 7
  %69 = load i32, i32* %ln_idx74, align 4, !tbaa !107
  %cmp75 = icmp sgt i32 %69, 32
  br i1 %cmp75, label %if.then.77, label %if.else.78

if.then.77:                                       ; preds = %if.else.73
  store i32 48, i32* %real_rows, align 4, !tbaa !5
  br label %if.end.79

if.else.78:                                       ; preds = %if.else.73
  store i32 32, i32* %real_rows, align 4, !tbaa !5
  br label %if.end.79

if.end.79:                                        ; preds = %if.else.78, %if.then.77
  br label %if.end.80

if.end.80:                                        ; preds = %if.end.79, %if.then.72
  br label %if.end.81

if.end.81:                                        ; preds = %if.end.80, %if.then.67
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc.207, %if.end.81
  %70 = load i32, i32* %i, align 4, !tbaa !5
  %71 = load %struct.ep_globals*, %struct.ep_globals** %eg.addr, align 8, !tbaa !1
  %num_comps = getelementptr inbounds %struct.ep_globals, %struct.ep_globals* %71, i32 0, i32 4
  %72 = load i32, i32* %num_comps, align 4, !tbaa !101
  %cmp82 = icmp slt i32 %70, %72
  br i1 %cmp82, label %for.body, label %for.end.208

for.body:                                         ; preds = %for.cond
  %73 = bitcast i32* %lnum to i8*
  call void @llvm.lifetime.start(i64 4, i8* %73) #2
  %74 = bitcast i32* %hskip to i8*
  call void @llvm.lifetime.start(i64 4, i8* %74) #2
  %75 = bitcast i32* %print_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %75) #2
  %76 = bitcast i32* %img_rows84 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %76) #2
  %77 = bitcast i8** %p0 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %77) #2
  %78 = bitcast i8** %p1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %78) #2
  %79 = bitcast i8** %p2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %79) #2
  %80 = bitcast i8** %p3 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %80) #2
  %81 = bitcast i8** %inp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %81) #2
  %82 = bitcast i8** %inbuf to i8*
  call void @llvm.lifetime.start(i64 8, i8* %82) #2
  %83 = bitcast i8** %outp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %83) #2
  %84 = bitcast i8** %outbuf to i8*
  call void @llvm.lifetime.start(i64 8, i8* %84) #2
  %85 = load i32, i32* %real_rows, align 4, !tbaa !5
  store i32 %85, i32* %img_rows84, align 4, !tbaa !5
  %86 = load %struct.ep_globals*, %struct.ep_globals** %eg.addr, align 8, !tbaa !1
  %print_buf = getelementptr inbounds %struct.ep_globals, %struct.ep_globals* %86, i32 0, i32 3
  %87 = load i8*, i8** %print_buf, align 8, !tbaa !100
  store i8* %87, i8** %outbuf, align 8, !tbaa !1
  store i32 0, i32* %lnum, align 4, !tbaa !5
  br label %for.cond.85

for.cond.85:                                      ; preds = %for.inc.101, %for.body
  %88 = load i32, i32* %lnum, align 4, !tbaa !5
  %89 = load i32, i32* %img_rows84, align 4, !tbaa !5
  %cmp86 = icmp slt i32 %88, %89
  br i1 %cmp86, label %for.body.88, label %for.end.104

for.body.88:                                      ; preds = %for.cond.85
  %90 = load i32, i32* %lnum, align 4, !tbaa !5
  %idxprom89 = sext i32 %90 to i64
  %91 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom90 = sext i32 %91 to i64
  %92 = load %struct.ep_globals*, %struct.ep_globals** %eg.addr, align 8, !tbaa !1
  %raster_buf91 = getelementptr inbounds %struct.ep_globals, %struct.ep_globals* %92, i32 0, i32 2
  %arrayidx92 = getelementptr inbounds [4 x [64 x i8*]], [4 x [64 x i8*]]* %raster_buf91, i32 0, i64 %idxprom90
  %arrayidx93 = getelementptr inbounds [64 x i8*], [64 x i8*]* %arrayidx92, i32 0, i64 %idxprom89
  %93 = load i8*, i8** %arrayidx93, align 8, !tbaa !1
  store i8* %93, i8** %inp, align 8, !tbaa !1
  store i8* %93, i8** %inbuf, align 8, !tbaa !1
  %94 = load i8*, i8** %outbuf, align 8, !tbaa !1
  store i8* %94, i8** %outp, align 8, !tbaa !1
  br label %for.cond.94

for.cond.94:                                      ; preds = %for.inc, %for.body.88
  %95 = load i8*, i8** %inp, align 8, !tbaa !1
  %96 = load i8*, i8** %inbuf, align 8, !tbaa !1
  %97 = load %struct.ep_globals*, %struct.ep_globals** %eg.addr, align 8, !tbaa !1
  %plane_size = getelementptr inbounds %struct.ep_globals, %struct.ep_globals* %97, i32 0, i32 5
  %98 = load i32, i32* %plane_size, align 4, !tbaa !93
  %idx.ext = sext i32 %98 to i64
  %add.ptr = getelementptr inbounds i8, i8* %96, i64 %idx.ext
  %cmp95 = icmp ult i8* %95, %add.ptr
  br i1 %cmp95, label %for.body.97, label %for.end

for.body.97:                                      ; preds = %for.cond.94
  %99 = load i8*, i8** %inp, align 8, !tbaa !1
  %100 = load %struct.ep_globals*, %struct.ep_globals** %eg.addr, align 8, !tbaa !1
  %plane_size98 = getelementptr inbounds %struct.ep_globals, %struct.ep_globals* %100, i32 0, i32 5
  %101 = load i32, i32* %plane_size98, align 4, !tbaa !93
  %102 = load i8*, i8** %outp, align 8, !tbaa !1
  %103 = load i32, i32* %img_rows84, align 4, !tbaa !5
  %div = sdiv i32 %103, 8
  call void @memflip8x8(i8* %99, i32 %101, i8* %102, i32 %div) #5
  br label %for.inc

for.inc:                                          ; preds = %for.body.97
  %104 = load i8*, i8** %inp, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %104, i32 1
  store i8* %incdec.ptr, i8** %inp, align 8, !tbaa !1
  %105 = load i32, i32* %img_rows84, align 4, !tbaa !5
  %106 = load i8*, i8** %outp, align 8, !tbaa !1
  %idx.ext99 = sext i32 %105 to i64
  %add.ptr100 = getelementptr inbounds i8, i8* %106, i64 %idx.ext99
  store i8* %add.ptr100, i8** %outp, align 8, !tbaa !1
  br label %for.cond.94

for.end:                                          ; preds = %for.cond.94
  br label %for.inc.101

for.inc.101:                                      ; preds = %for.end
  %107 = load i32, i32* %lnum, align 4, !tbaa !5
  %add102 = add nsw i32 %107, 8
  store i32 %add102, i32* %lnum, align 4, !tbaa !5
  %108 = load i8*, i8** %outbuf, align 8, !tbaa !1
  %incdec.ptr103 = getelementptr inbounds i8, i8* %108, i32 1
  store i8* %incdec.ptr103, i8** %outbuf, align 8, !tbaa !1
  br label %for.cond.85

for.end.104:                                      ; preds = %for.cond.85
  %109 = load %struct.ep_globals*, %struct.ep_globals** %eg.addr, align 8, !tbaa !1
  %num_comps105 = getelementptr inbounds %struct.ep_globals, %struct.ep_globals* %109, i32 0, i32 4
  %110 = load i32, i32* %num_comps105, align 4, !tbaa !101
  %cmp106 = icmp eq i32 %110, 1
  br i1 %cmp106, label %if.then.108, label %if.else.110

if.then.108:                                      ; preds = %for.end.104
  %111 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call109 = call i32 @_IO_putc(i32 13, %struct._IO_FILE* %111) #5
  br label %if.end.116

if.else.110:                                      ; preds = %for.end.104
  %112 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call111 = call i32 @fputs(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.125, i32 0, i32 0), %struct._IO_FILE* %112) #5
  %113 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom112 = sext i32 %113 to i64
  %arrayidx113 = getelementptr inbounds [4 x i8], [4 x i8]* @ep_print_image.color, i32 0, i64 %idxprom112
  %114 = load i8, i8* %arrayidx113, align 1, !tbaa !48
  %conv114 = sext i8 %114 to i32
  %115 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call115 = call i32 @_IO_putc(i32 %conv114, %struct._IO_FILE* %115) #5
  br label %if.end.116

if.end.116:                                       ; preds = %if.else.110, %if.then.108
  %116 = load %struct.ep_globals*, %struct.ep_globals** %eg.addr, align 8, !tbaa !1
  %print_buf117 = getelementptr inbounds %struct.ep_globals, %struct.ep_globals* %116, i32 0, i32 3
  %117 = load i8*, i8** %print_buf117, align 8, !tbaa !100
  %118 = load %struct.ep_globals*, %struct.ep_globals** %eg.addr, align 8, !tbaa !1
  %plane_size118 = getelementptr inbounds %struct.ep_globals, %struct.ep_globals* %118, i32 0, i32 5
  %119 = load i32, i32* %plane_size118, align 4, !tbaa !93
  %120 = load i32, i32* %img_rows84, align 4, !tbaa !5
  %mul = mul nsw i32 %119, %120
  %idx.ext119 = sext i32 %mul to i64
  %add.ptr120 = getelementptr inbounds i8, i8* %117, i64 %idx.ext119
  store i8* %add.ptr120, i8** %outp, align 8, !tbaa !1
  store i8 1, i8* %add.ptr120, align 1, !tbaa !48
  %121 = load %struct.ep_globals*, %struct.ep_globals** %eg.addr, align 8, !tbaa !1
  %print_buf121 = getelementptr inbounds %struct.ep_globals, %struct.ep_globals* %121, i32 0, i32 3
  %122 = load i8*, i8** %print_buf121, align 8, !tbaa !100
  store i8* %122, i8** %p3, align 8, !tbaa !1
  store i8* %122, i8** %p0, align 8, !tbaa !1
  br label %while.cond.122

while.cond.122:                                   ; preds = %if.end.205, %if.end.116
  %123 = load i8*, i8** %p0, align 8, !tbaa !1
  %124 = load i8*, i8** %outp, align 8, !tbaa !1
  %cmp123 = icmp ult i8* %123, %124
  br i1 %cmp123, label %while.body.125, label %while.end.206

while.body.125:                                   ; preds = %while.cond.122
  %125 = load i8*, i8** %p3, align 8, !tbaa !1
  %126 = load i8*, i8** %outp, align 8, !tbaa !1
  %cmp126 = icmp ult i8* %125, %126
  br i1 %cmp126, label %if.then.128, label %if.else.167

if.then.128:                                      ; preds = %while.body.125
  %127 = load i8*, i8** %p3, align 8, !tbaa !1
  store i8* %127, i8** %p1, align 8, !tbaa !1
  br label %for.cond.129

for.cond.129:                                     ; preds = %for.inc.136, %if.then.128
  %128 = load i8*, i8** %p3, align 8, !tbaa !1
  %129 = load i32, i32* %img_rows84, align 4, !tbaa !5
  %div130 = sdiv i32 %129, 8
  %mul131 = mul nsw i32 %div130, 2
  %conv132 = sext i32 %mul131 to i64
  %call133 = call i32 @memcmp(i8* %128, i8* bitcast ([8 x i64]* @ep_print_image.zeros to i8*), i64 %conv132) #6
  %tobool134 = icmp ne i32 %call133, 0
  %lnot = xor i1 %tobool134, true
  br i1 %lnot, label %for.body.135, label %for.end.141

for.body.135:                                     ; preds = %for.cond.129
  br label %for.inc.136

for.inc.136:                                      ; preds = %for.body.135
  %130 = load i32, i32* %img_rows84, align 4, !tbaa !5
  %div137 = sdiv i32 %130, 8
  %mul138 = mul nsw i32 %div137, 2
  %131 = load i8*, i8** %p3, align 8, !tbaa !1
  %idx.ext139 = sext i32 %mul138 to i64
  %add.ptr140 = getelementptr inbounds i8, i8* %131, i64 %idx.ext139
  store i8* %add.ptr140, i8** %p3, align 8, !tbaa !1
  br label %for.cond.129

for.end.141:                                      ; preds = %for.cond.129
  %132 = load i8*, i8** %p3, align 8, !tbaa !1
  store i8* %132, i8** %p2, align 8, !tbaa !1
  br label %redo

redo:                                             ; preds = %if.then.165, %for.end.141
  %133 = load i32, i32* %img_rows84, align 4, !tbaa !5
  %div142 = sdiv i32 %133, 8
  %134 = load i8*, i8** %p3, align 8, !tbaa !1
  %idx.ext143 = sext i32 %div142 to i64
  %add.ptr144 = getelementptr inbounds i8, i8* %134, i64 %idx.ext143
  store i8* %add.ptr144, i8** %p3, align 8, !tbaa !1
  br label %for.cond.145

for.cond.145:                                     ; preds = %for.inc.151, %redo
  %135 = load i8*, i8** %p3, align 8, !tbaa !1
  %136 = load i32, i32* %img_rows84, align 4, !tbaa !5
  %div146 = sdiv i32 %136, 8
  %conv147 = sext i32 %div146 to i64
  %call148 = call i32 @memcmp(i8* %135, i8* bitcast ([8 x i64]* @ep_print_image.zeros to i8*), i64 %conv147) #6
  %tobool149 = icmp ne i32 %call148, 0
  br i1 %tobool149, label %for.body.150, label %for.end.155

for.body.150:                                     ; preds = %for.cond.145
  br label %for.inc.151

for.inc.151:                                      ; preds = %for.body.150
  %137 = load i32, i32* %img_rows84, align 4, !tbaa !5
  %div152 = sdiv i32 %137, 8
  %138 = load i8*, i8** %p3, align 8, !tbaa !1
  %idx.ext153 = sext i32 %div152 to i64
  %add.ptr154 = getelementptr inbounds i8, i8* %138, i64 %idx.ext153
  store i8* %add.ptr154, i8** %p3, align 8, !tbaa !1
  br label %for.cond.145

for.end.155:                                      ; preds = %for.cond.145
  %139 = load i8*, i8** %p3, align 8, !tbaa !1
  %140 = load i8*, i8** %outp, align 8, !tbaa !1
  %cmp156 = icmp ult i8* %139, %140
  br i1 %cmp156, label %land.lhs.true, label %if.end.166

land.lhs.true:                                    ; preds = %for.end.155
  %141 = load i8*, i8** %p3, align 8, !tbaa !1
  %142 = load i32, i32* %img_rows84, align 4, !tbaa !5
  %div158 = sdiv i32 %142, 8
  %idx.ext159 = sext i32 %div158 to i64
  %add.ptr160 = getelementptr inbounds i8, i8* %141, i64 %idx.ext159
  %143 = load i32, i32* %img_rows84, align 4, !tbaa !5
  %div161 = sdiv i32 %143, 8
  %conv162 = sext i32 %div161 to i64
  %call163 = call i32 @memcmp(i8* %add.ptr160, i8* bitcast ([8 x i64]* @ep_print_image.zeros to i8*), i64 %conv162) #6
  %tobool164 = icmp ne i32 %call163, 0
  br i1 %tobool164, label %if.then.165, label %if.end.166

if.then.165:                                      ; preds = %land.lhs.true
  br label %redo

if.end.166:                                       ; preds = %land.lhs.true, %for.end.155
  br label %if.end.168

if.else.167:                                      ; preds = %while.body.125
  %144 = load i8*, i8** %outp, align 8, !tbaa !1
  store i8* %144, i8** %p2, align 8, !tbaa !1
  store i8* %144, i8** %p1, align 8, !tbaa !1
  br label %if.end.168

if.end.168:                                       ; preds = %if.else.167, %if.end.166
  %145 = load i8*, i8** %p0, align 8, !tbaa !1
  %146 = load i8*, i8** %p1, align 8, !tbaa !1
  %cmp169 = icmp ult i8* %145, %146
  br i1 %cmp169, label %if.then.171, label %if.end.182

if.then.171:                                      ; preds = %if.end.168
  %147 = load i8*, i8** %p1, align 8, !tbaa !1
  %148 = load i8*, i8** %outp, align 8, !tbaa !1
  %cmp172 = icmp ult i8* %147, %148
  br i1 %cmp172, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.171
  %149 = load i8*, i8** %p1, align 8, !tbaa !1
  br label %cond.end

cond.false:                                       ; preds = %if.then.171
  %150 = load i8*, i8** %outp, align 8, !tbaa !1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %149, %cond.true ], [ %150, %cond.false ]
  %151 = load i8*, i8** %p0, align 8, !tbaa !1
  %sub.ptr.lhs.cast = ptrtoint i8* %cond to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %151 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv174 = trunc i64 %sub.ptr.sub to i32
  store i32 %conv174, i32* %print_size, align 4, !tbaa !5
  %152 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call175 = call i32 @fputs(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.126, i32 0, i32 0), %struct._IO_FILE* %152) #5
  %153 = load i32, i32* %img_rows84, align 4, !tbaa !5
  %154 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call176 = call i32 @_IO_putc(i32 %153, %struct._IO_FILE* %154) #5
  %155 = load i32, i32* %print_size, align 4, !tbaa !5
  %rem = srem i32 %155, 256
  %156 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call177 = call i32 @fputc(i32 %rem, %struct._IO_FILE* %156) #5
  %157 = load i32, i32* %print_size, align 4, !tbaa !5
  %div178 = sdiv i32 %157, 256
  %158 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call179 = call i32 @fputc(i32 %div178, %struct._IO_FILE* %158) #5
  %159 = load i8*, i8** %p0, align 8, !tbaa !1
  %160 = load i32, i32* %print_size, align 4, !tbaa !5
  %conv180 = sext i32 %160 to i64
  %161 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call181 = call i64 @fwrite(i8* %159, i64 1, i64 %conv180, %struct._IO_FILE* %161) #5
  br label %if.end.182

if.end.182:                                       ; preds = %cond.end, %if.end.168
  %162 = load i8*, i8** %p1, align 8, !tbaa !1
  %163 = load i8*, i8** %p2, align 8, !tbaa !1
  %cmp183 = icmp ult i8* %162, %163
  br i1 %cmp183, label %if.then.185, label %if.end.205

if.then.185:                                      ; preds = %if.end.182
  %164 = load i8*, i8** %p2, align 8, !tbaa !1
  %165 = load i8*, i8** %outp, align 8, !tbaa !1
  %cmp186 = icmp ult i8* %164, %165
  br i1 %cmp186, label %cond.true.188, label %cond.false.189

cond.true.188:                                    ; preds = %if.then.185
  %166 = load i8*, i8** %p2, align 8, !tbaa !1
  br label %cond.end.190

cond.false.189:                                   ; preds = %if.then.185
  %167 = load i8*, i8** %outp, align 8, !tbaa !1
  br label %cond.end.190

cond.end.190:                                     ; preds = %cond.false.189, %cond.true.188
  %cond191 = phi i8* [ %166, %cond.true.188 ], [ %167, %cond.false.189 ]
  %168 = load i8*, i8** %p1, align 8, !tbaa !1
  %sub.ptr.lhs.cast192 = ptrtoint i8* %cond191 to i64
  %sub.ptr.rhs.cast193 = ptrtoint i8* %168 to i64
  %sub.ptr.sub194 = sub i64 %sub.ptr.lhs.cast192, %sub.ptr.rhs.cast193
  %169 = load i32, i32* %img_rows84, align 4, !tbaa !5
  %div195 = sdiv i32 %169, 8
  %conv196 = sext i32 %div195 to i64
  %div197 = sdiv i64 %sub.ptr.sub194, %conv196
  %div198 = sdiv i64 %div197, 2
  %conv199 = trunc i64 %div198 to i32
  store i32 %conv199, i32* %hskip, align 4, !tbaa !5
  %170 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call200 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.127, i32 0, i32 0), %struct._IO_FILE* %170) #5
  %171 = load i32, i32* %hskip, align 4, !tbaa !5
  %rem201 = srem i32 %171, 256
  %172 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call202 = call i32 @fputc(i32 %rem201, %struct._IO_FILE* %172) #5
  %173 = load i32, i32* %hskip, align 4, !tbaa !5
  %div203 = sdiv i32 %173, 256
  %174 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call204 = call i32 @fputc(i32 %div203, %struct._IO_FILE* %174) #5
  br label %if.end.205

if.end.205:                                       ; preds = %cond.end.190, %if.end.182
  %175 = load i8*, i8** %p2, align 8, !tbaa !1
  store i8* %175, i8** %p0, align 8, !tbaa !1
  br label %while.cond.122

while.end.206:                                    ; preds = %while.cond.122
  %176 = bitcast i8** %outbuf to i8*
  call void @llvm.lifetime.end(i64 8, i8* %176) #2
  %177 = bitcast i8** %outp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %177) #2
  %178 = bitcast i8** %inbuf to i8*
  call void @llvm.lifetime.end(i64 8, i8* %178) #2
  %179 = bitcast i8** %inp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %179) #2
  %180 = bitcast i8** %p3 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %180) #2
  %181 = bitcast i8** %p2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %181) #2
  %182 = bitcast i8** %p1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %182) #2
  %183 = bitcast i8** %p0 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %183) #2
  %184 = bitcast i32* %img_rows84 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %184) #2
  %185 = bitcast i32* %print_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %185) #2
  %186 = bitcast i32* %hskip to i8*
  call void @llvm.lifetime.end(i64 4, i8* %186) #2
  %187 = bitcast i32* %lnum to i8*
  call void @llvm.lifetime.end(i64 4, i8* %187) #2
  br label %for.inc.207

for.inc.207:                                      ; preds = %while.end.206
  %188 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %188, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end.208:                                      ; preds = %for.cond
  %189 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %190 = load %struct.ep_globals*, %struct.ep_globals** %eg.addr, align 8, !tbaa !1
  %191 = load %struct.ep_globals*, %struct.ep_globals** %eg.addr, align 8, !tbaa !1
  %vskip2209 = getelementptr inbounds %struct.ep_globals, %struct.ep_globals* %191, i32 0, i32 9
  %192 = load i32, i32* %vskip2209, align 4, !tbaa !108
  %193 = load %struct.ep_globals*, %struct.ep_globals** %eg.addr, align 8, !tbaa !1
  %ln_idx210 = getelementptr inbounds %struct.ep_globals, %struct.ep_globals* %193, i32 0, i32 7
  %194 = load i32, i32* %ln_idx210, align 4, !tbaa !107
  %add211 = add nsw i32 %192, %194
  %call212 = call i32 @ep_print_image(%struct._IO_FILE* %189, %struct.ep_globals* %190, i8 signext 82, i8* null, i32 %add211) #5
  store i32 %call212, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.213:                                        ; preds = %entry
  %195 = load %struct.ep_globals*, %struct.ep_globals** %eg.addr, align 8, !tbaa !1
  %ln_idx214 = getelementptr inbounds %struct.ep_globals, %struct.ep_globals* %195, i32 0, i32 7
  store i32 0, i32* %ln_idx214, align 4, !tbaa !107
  %196 = load i32, i32* %size.addr, align 4, !tbaa !5
  %197 = load %struct.ep_globals*, %struct.ep_globals** %eg.addr, align 8, !tbaa !1
  %vskip1215 = getelementptr inbounds %struct.ep_globals, %struct.ep_globals* %197, i32 0, i32 8
  store i32 %196, i32* %vskip1215, align 4, !tbaa !109
  %198 = load %struct.ep_globals*, %struct.ep_globals** %eg.addr, align 8, !tbaa !1
  %vskip2216 = getelementptr inbounds %struct.ep_globals, %struct.ep_globals* %198, i32 0, i32 9
  store i32 0, i32* %vskip2216, align 4, !tbaa !108
  %199 = load %struct.ep_globals*, %struct.ep_globals** %eg.addr, align 8, !tbaa !1
  %storage = getelementptr inbounds %struct.ep_globals, %struct.ep_globals* %199, i32 0, i32 0
  %200 = load i64*, i64** %storage, align 8, !tbaa !99
  %201 = bitcast i64* %200 to i8*
  %202 = load %struct.ep_globals*, %struct.ep_globals** %eg.addr, align 8, !tbaa !1
  %storage_size_words = getelementptr inbounds %struct.ep_globals, %struct.ep_globals* %202, i32 0, i32 1
  %203 = load i32, i32* %storage_size_words, align 4, !tbaa !98
  %mul217 = mul i32 %203, 8
  %conv218 = zext i32 %mul217 to i64
  %call219 = call i8* @memset(i8* %201, i32 0, i64 %conv218) #7
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.default:                                       ; preds = %entry
  %204 = load %struct.ep_globals*, %struct.ep_globals** %eg.addr, align 8, !tbaa !1
  %mem = getelementptr inbounds %struct.ep_globals, %struct.ep_globals* %204, i32 0, i32 10
  %205 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !92
  %206 = load i8, i8* %cmd.addr, align 1, !tbaa !48
  %conv220 = sext i8 %206 to i32
  %call221 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %205, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.128, i32 0, i32 0), i32 %conv220) #5
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %sw.bb.213, %for.end.208, %if.then.40, %if.then.35, %if.end.24, %sw.bb
  %207 = bitcast i32* %real_rows to i8*
  call void @llvm.lifetime.end(i64 4, i8* %207) #2
  %208 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %208) #2
  %209 = load i32, i32* %retval
  ret i32 %209
}

declare i32 @fputc(i32, %struct._IO_FILE*) #0

; Function Attrs: nounwind uwtable
define internal void @cdj_expand_line(i64* %line, i32 %linesize, i16 signext %cmyk, i32 %bpp, i32 %ebpp) #1 {
entry:
  %line.addr = alloca i64*, align 8
  %linesize.addr = alloca i32, align 4
  %cmyk.addr = alloca i16, align 2
  %bpp.addr = alloca i32, align 4
  %ebpp.addr = alloca i32, align 4
  %endline = alloca i32, align 4
  %start = alloca i8*, align 8
  %in = alloca i8*, align 8
  %out = alloca i8*, align 8
  %b0 = alloca i8, align 1
  %bs0 = alloca i8, align 1
  %bs1 = alloca i8, align 1
  %bs2 = alloca i8, align 1
  %bs3 = alloca i8, align 1
  %b058 = alloca i8, align 1
  %b1 = alloca i8, align 1
  %b2 = alloca i8, align 1
  %b0119 = alloca i8, align 1
  %b1120 = alloca i8, align 1
  %b0162 = alloca i8, align 1
  %b1163 = alloca i8, align 1
  %c = alloca i8, align 1
  %m = alloca i8, align 1
  %y = alloca i8, align 1
  store i64* %line, i64** %line.addr, align 8, !tbaa !1
  store i32 %linesize, i32* %linesize.addr, align 4, !tbaa !5
  store i16 %cmyk, i16* %cmyk.addr, align 2, !tbaa !25
  store i32 %bpp, i32* %bpp.addr, align 4, !tbaa !5
  store i32 %ebpp, i32* %ebpp.addr, align 4, !tbaa !5
  %0 = bitcast i32* %endline to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load i32, i32* %linesize.addr, align 4, !tbaa !5
  store i32 %1, i32* %endline, align 4, !tbaa !5
  %2 = bitcast i8** %start to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #2
  %3 = load i64*, i64** %line.addr, align 8, !tbaa !1
  %4 = bitcast i64* %3 to i8*
  store i8* %4, i8** %start, align 8, !tbaa !1
  %5 = bitcast i8** %in to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #2
  %6 = bitcast i8** %out to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #2
  %7 = load i16, i16* %cmyk.addr, align 2, !tbaa !25
  %conv = sext i16 %7 to i32
  %cmp = icmp sgt i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.else.158

if.then:                                          ; preds = %entry
  %8 = load i32, i32* %bpp.addr, align 4, !tbaa !5
  %cmp2 = icmp eq i32 %8, 8
  br i1 %cmp2, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.then
  %9 = load i8*, i8** %start, align 8, !tbaa !1
  %10 = load i32, i32* %endline, align 4, !tbaa !5
  %idx.ext = sext i32 %10 to i64
  %add.ptr = getelementptr inbounds i8, i8* %9, i64 %idx.ext
  store i8* %add.ptr, i8** %in, align 8, !tbaa !1
  %11 = load i8*, i8** %start, align 8, !tbaa !1
  %12 = load i32, i32* %endline, align 4, !tbaa !5
  %mul = mul nsw i32 %12, 2
  store i32 %mul, i32* %endline, align 4, !tbaa !5
  %idx.ext5 = sext i32 %mul to i64
  %add.ptr6 = getelementptr inbounds i8, i8* %11, i64 %idx.ext5
  store i8* %add.ptr6, i8** %out, align 8, !tbaa !1
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.4
  %13 = load i8*, i8** %in, align 8, !tbaa !1
  %14 = load i8*, i8** %start, align 8, !tbaa !1
  %cmp7 = icmp ugt i8* %13, %14
  br i1 %cmp7, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start(i64 1, i8* %b0) #2
  call void @llvm.lifetime.start(i64 1, i8* %bs0) #2
  call void @llvm.lifetime.start(i64 1, i8* %bs1) #2
  call void @llvm.lifetime.start(i64 1, i8* %bs2) #2
  call void @llvm.lifetime.start(i64 1, i8* %bs3) #2
  %15 = load i8*, i8** %in, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %15, i32 -1
  store i8* %incdec.ptr, i8** %in, align 8, !tbaa !1
  %16 = load i8, i8* %incdec.ptr, align 1, !tbaa !48
  store i8 %16, i8* %b0, align 1, !tbaa !48
  %17 = load i8, i8* %b0, align 1, !tbaa !48
  %conv9 = zext i8 %17 to i32
  %and = and i32 %conv9, 3
  %conv10 = trunc i32 %and to i8
  store i8 %conv10, i8* %bs0, align 1, !tbaa !48
  %18 = load i8, i8* %b0, align 1, !tbaa !48
  %conv11 = zext i8 %18 to i32
  %shr = ashr i32 %conv11, 2
  %and12 = and i32 %shr, 3
  %conv13 = trunc i32 %and12 to i8
  store i8 %conv13, i8* %bs1, align 1, !tbaa !48
  %19 = load i8, i8* %b0, align 1, !tbaa !48
  %conv14 = zext i8 %19 to i32
  %shr15 = ashr i32 %conv14, 4
  %and16 = and i32 %shr15, 3
  %conv17 = trunc i32 %and16 to i8
  store i8 %conv17, i8* %bs2, align 1, !tbaa !48
  %20 = load i8, i8* %b0, align 1, !tbaa !48
  %conv18 = zext i8 %20 to i32
  %shr19 = ashr i32 %conv18, 6
  %and20 = and i32 %shr19, 3
  %conv21 = trunc i32 %and20 to i8
  store i8 %conv21, i8* %bs3, align 1, !tbaa !48
  %21 = load i8, i8* %bs0, align 1, !tbaa !48
  %conv22 = zext i8 %21 to i32
  %shl = shl i32 %conv22, 2
  %22 = load i8, i8* %bs0, align 1, !tbaa !48
  %conv23 = zext i8 %22 to i32
  %add = add nsw i32 %shl, %conv23
  %23 = load i8, i8* %bs1, align 1, !tbaa !48
  %conv24 = zext i8 %23 to i32
  %shl25 = shl i32 %conv24, 6
  %add26 = add nsw i32 %add, %shl25
  %24 = load i8, i8* %bs1, align 1, !tbaa !48
  %conv27 = zext i8 %24 to i32
  %shl28 = shl i32 %conv27, 4
  %add29 = add nsw i32 %add26, %shl28
  %conv30 = trunc i32 %add29 to i8
  %25 = load i8*, i8** %out, align 8, !tbaa !1
  %incdec.ptr31 = getelementptr inbounds i8, i8* %25, i32 -1
  store i8* %incdec.ptr31, i8** %out, align 8, !tbaa !1
  store i8 %conv30, i8* %incdec.ptr31, align 1, !tbaa !48
  %26 = load i8, i8* %bs2, align 1, !tbaa !48
  %conv32 = zext i8 %26 to i32
  %shl33 = shl i32 %conv32, 2
  %27 = load i8, i8* %bs2, align 1, !tbaa !48
  %conv34 = zext i8 %27 to i32
  %add35 = add nsw i32 %shl33, %conv34
  %28 = load i8, i8* %bs3, align 1, !tbaa !48
  %conv36 = zext i8 %28 to i32
  %shl37 = shl i32 %conv36, 6
  %add38 = add nsw i32 %add35, %shl37
  %29 = load i8, i8* %bs3, align 1, !tbaa !48
  %conv39 = zext i8 %29 to i32
  %shl40 = shl i32 %conv39, 4
  %add41 = add nsw i32 %add38, %shl40
  %conv42 = trunc i32 %add41 to i8
  %30 = load i8*, i8** %out, align 8, !tbaa !1
  %incdec.ptr43 = getelementptr inbounds i8, i8* %30, i32 -1
  store i8* %incdec.ptr43, i8** %out, align 8, !tbaa !1
  store i8 %conv42, i8* %incdec.ptr43, align 1, !tbaa !48
  call void @llvm.lifetime.end(i64 1, i8* %bs3) #2
  call void @llvm.lifetime.end(i64 1, i8* %bs2) #2
  call void @llvm.lifetime.end(i64 1, i8* %bs1) #2
  call void @llvm.lifetime.end(i64 1, i8* %bs0) #2
  call void @llvm.lifetime.end(i64 1, i8* %b0) #2
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end

if.end:                                           ; preds = %while.end, %if.then
  %31 = load i32, i32* %bpp.addr, align 4, !tbaa !5
  %cmp44 = icmp eq i32 %31, 24
  br i1 %cmp44, label %if.then.46, label %if.else

if.then.46:                                       ; preds = %if.end
  %32 = load i32, i32* %endline, align 4, !tbaa !5
  %add47 = add nsw i32 %32, 2
  %div = sdiv i32 %add47, 3
  store i32 %div, i32* %endline, align 4, !tbaa !5
  %33 = load i8*, i8** %start, align 8, !tbaa !1
  %34 = load i32, i32* %endline, align 4, !tbaa !5
  %mul48 = mul nsw i32 %34, 3
  %idx.ext49 = sext i32 %mul48 to i64
  %add.ptr50 = getelementptr inbounds i8, i8* %33, i64 %idx.ext49
  store i8* %add.ptr50, i8** %in, align 8, !tbaa !1
  %35 = load i8*, i8** %start, align 8, !tbaa !1
  %36 = load i32, i32* %endline, align 4, !tbaa !5
  %mul51 = mul nsw i32 %36, 4
  %idx.ext52 = sext i32 %mul51 to i64
  %add.ptr53 = getelementptr inbounds i8, i8* %35, i64 %idx.ext52
  store i8* %add.ptr53, i8** %out, align 8, !tbaa !1
  br label %while.cond.54

while.cond.54:                                    ; preds = %while.body.57, %if.then.46
  %37 = load i8*, i8** %in, align 8, !tbaa !1
  %38 = load i8*, i8** %start, align 8, !tbaa !1
  %cmp55 = icmp ugt i8* %37, %38
  br i1 %cmp55, label %while.body.57, label %while.end.103

while.body.57:                                    ; preds = %while.cond.54
  call void @llvm.lifetime.start(i64 1, i8* %b058) #2
  call void @llvm.lifetime.start(i64 1, i8* %b1) #2
  call void @llvm.lifetime.start(i64 1, i8* %b2) #2
  %39 = load i8*, i8** %in, align 8, !tbaa !1
  %incdec.ptr59 = getelementptr inbounds i8, i8* %39, i32 -1
  store i8* %incdec.ptr59, i8** %in, align 8, !tbaa !1
  %40 = load i8, i8* %incdec.ptr59, align 1, !tbaa !48
  store i8 %40, i8* %b058, align 1, !tbaa !48
  %41 = load i8*, i8** %in, align 8, !tbaa !1
  %incdec.ptr60 = getelementptr inbounds i8, i8* %41, i32 -1
  store i8* %incdec.ptr60, i8** %in, align 8, !tbaa !1
  %42 = load i8, i8* %incdec.ptr60, align 1, !tbaa !48
  store i8 %42, i8* %b1, align 1, !tbaa !48
  %43 = load i8*, i8** %in, align 8, !tbaa !1
  %incdec.ptr61 = getelementptr inbounds i8, i8* %43, i32 -1
  store i8* %incdec.ptr61, i8** %in, align 8, !tbaa !1
  %44 = load i8, i8* %incdec.ptr61, align 1, !tbaa !48
  store i8 %44, i8* %b2, align 1, !tbaa !48
  %45 = load i8, i8* %b058, align 1, !tbaa !48
  %conv62 = zext i8 %45 to i32
  %shl63 = shl i32 %conv62, 2
  %46 = load i8, i8* %b058, align 1, !tbaa !48
  %conv64 = zext i8 %46 to i32
  %shr65 = ashr i32 %conv64, 4
  %and66 = and i32 %shr65, 3
  %add67 = add nsw i32 %shl63, %and66
  %conv68 = trunc i32 %add67 to i8
  %47 = load i8*, i8** %out, align 8, !tbaa !1
  %incdec.ptr69 = getelementptr inbounds i8, i8* %47, i32 -1
  store i8* %incdec.ptr69, i8** %out, align 8, !tbaa !1
  store i8 %conv68, i8* %incdec.ptr69, align 1, !tbaa !48
  %48 = load i8, i8* %b1, align 1, !tbaa !48
  %conv70 = zext i8 %48 to i32
  %and71 = and i32 %conv70, 15
  %shl72 = shl i32 %and71, 4
  %49 = load i8, i8* %b058, align 1, !tbaa !48
  %conv73 = zext i8 %49 to i32
  %shr74 = ashr i32 %conv73, 6
  %shl75 = shl i32 %shr74, 2
  %add76 = add nsw i32 %shl72, %shl75
  %50 = load i8, i8* %b1, align 1, !tbaa !48
  %conv77 = zext i8 %50 to i32
  %shr78 = ashr i32 %conv77, 2
  %and79 = and i32 %shr78, 3
  %add80 = add nsw i32 %add76, %and79
  %conv81 = trunc i32 %add80 to i8
  %51 = load i8*, i8** %out, align 8, !tbaa !1
  %incdec.ptr82 = getelementptr inbounds i8, i8* %51, i32 -1
  store i8* %incdec.ptr82, i8** %out, align 8, !tbaa !1
  store i8 %conv81, i8* %incdec.ptr82, align 1, !tbaa !48
  %52 = load i8, i8* %b2, align 1, !tbaa !48
  %conv83 = zext i8 %52 to i32
  %and84 = and i32 %conv83, 3
  %shl85 = shl i32 %and84, 6
  %53 = load i8, i8* %b1, align 1, !tbaa !48
  %conv86 = zext i8 %53 to i32
  %shr87 = ashr i32 %conv86, 4
  %shl88 = shl i32 %shr87, 2
  %add89 = add nsw i32 %shl85, %shl88
  %54 = load i8, i8* %b2, align 1, !tbaa !48
  %conv90 = zext i8 %54 to i32
  %and91 = and i32 %conv90, 3
  %add92 = add nsw i32 %add89, %and91
  %conv93 = trunc i32 %add92 to i8
  %55 = load i8*, i8** %out, align 8, !tbaa !1
  %incdec.ptr94 = getelementptr inbounds i8, i8* %55, i32 -1
  store i8* %incdec.ptr94, i8** %out, align 8, !tbaa !1
  store i8 %conv93, i8* %incdec.ptr94, align 1, !tbaa !48
  %56 = load i8, i8* %b2, align 1, !tbaa !48
  %conv95 = zext i8 %56 to i32
  %and96 = and i32 %conv95, 252
  %57 = load i8, i8* %b2, align 1, !tbaa !48
  %conv97 = zext i8 %57 to i32
  %shr98 = ashr i32 %conv97, 6
  %and99 = and i32 %shr98, 3
  %add100 = add nsw i32 %and96, %and99
  %conv101 = trunc i32 %add100 to i8
  %58 = load i8*, i8** %out, align 8, !tbaa !1
  %incdec.ptr102 = getelementptr inbounds i8, i8* %58, i32 -1
  store i8* %incdec.ptr102, i8** %out, align 8, !tbaa !1
  store i8 %conv101, i8* %incdec.ptr102, align 1, !tbaa !48
  call void @llvm.lifetime.end(i64 1, i8* %b2) #2
  call void @llvm.lifetime.end(i64 1, i8* %b1) #2
  call void @llvm.lifetime.end(i64 1, i8* %b058) #2
  br label %while.cond.54

while.end.103:                                    ; preds = %while.cond.54
  br label %if.end.157

if.else:                                          ; preds = %if.end
  %59 = load i32, i32* %ebpp.addr, align 4, !tbaa !5
  %cmp104 = icmp eq i32 %59, 32
  br i1 %cmp104, label %if.then.106, label %if.end.156

if.then.106:                                      ; preds = %if.else
  %60 = load i32, i32* %endline, align 4, !tbaa !5
  %add107 = add nsw i32 %60, 1
  %div108 = sdiv i32 %add107, 2
  store i32 %div108, i32* %endline, align 4, !tbaa !5
  %61 = load i8*, i8** %start, align 8, !tbaa !1
  %62 = load i32, i32* %endline, align 4, !tbaa !5
  %mul109 = mul nsw i32 %62, 2
  %idx.ext110 = sext i32 %mul109 to i64
  %add.ptr111 = getelementptr inbounds i8, i8* %61, i64 %idx.ext110
  store i8* %add.ptr111, i8** %in, align 8, !tbaa !1
  %63 = load i8*, i8** %start, align 8, !tbaa !1
  %64 = load i32, i32* %endline, align 4, !tbaa !5
  %mul112 = mul nsw i32 %64, 4
  store i32 %mul112, i32* %endline, align 4, !tbaa !5
  %idx.ext113 = sext i32 %mul112 to i64
  %add.ptr114 = getelementptr inbounds i8, i8* %63, i64 %idx.ext113
  store i8* %add.ptr114, i8** %out, align 8, !tbaa !1
  br label %while.cond.115

while.cond.115:                                   ; preds = %while.body.118, %if.then.106
  %65 = load i8*, i8** %in, align 8, !tbaa !1
  %66 = load i8*, i8** %start, align 8, !tbaa !1
  %cmp116 = icmp ugt i8* %65, %66
  br i1 %cmp116, label %while.body.118, label %while.end.155

while.body.118:                                   ; preds = %while.cond.115
  call void @llvm.lifetime.start(i64 1, i8* %b0119) #2
  call void @llvm.lifetime.start(i64 1, i8* %b1120) #2
  %67 = load i8*, i8** %in, align 8, !tbaa !1
  %incdec.ptr121 = getelementptr inbounds i8, i8* %67, i32 -1
  store i8* %incdec.ptr121, i8** %in, align 8, !tbaa !1
  %68 = load i8, i8* %incdec.ptr121, align 1, !tbaa !48
  store i8 %68, i8* %b0119, align 1, !tbaa !48
  %69 = load i8*, i8** %in, align 8, !tbaa !1
  %incdec.ptr122 = getelementptr inbounds i8, i8* %69, i32 -1
  store i8* %incdec.ptr122, i8** %in, align 8, !tbaa !1
  %70 = load i8, i8* %incdec.ptr122, align 1, !tbaa !48
  store i8 %70, i8* %b1120, align 1, !tbaa !48
  %71 = load i8, i8* %b0119, align 1, !tbaa !48
  %conv123 = zext i8 %71 to i32
  %shl124 = shl i32 %conv123, 4
  %72 = load i8, i8* %b0119, align 1, !tbaa !48
  %conv125 = zext i8 %72 to i32
  %shr126 = ashr i32 %conv125, 4
  %and127 = and i32 %shr126, 7
  %add128 = add nsw i32 %shl124, %and127
  %conv129 = trunc i32 %add128 to i8
  %73 = load i8*, i8** %out, align 8, !tbaa !1
  %incdec.ptr130 = getelementptr inbounds i8, i8* %73, i32 -1
  store i8* %incdec.ptr130, i8** %out, align 8, !tbaa !1
  store i8 %conv129, i8* %incdec.ptr130, align 1, !tbaa !48
  %74 = load i8, i8* %b0119, align 1, !tbaa !48
  %conv131 = zext i8 %74 to i32
  %and132 = and i32 %conv131, 240
  %75 = load i8, i8* %b0119, align 1, !tbaa !48
  %conv133 = zext i8 %75 to i32
  %shr134 = ashr i32 %conv133, 4
  %and135 = and i32 %shr134, 15
  %add136 = add nsw i32 %and132, %and135
  %conv137 = trunc i32 %add136 to i8
  %76 = load i8*, i8** %out, align 8, !tbaa !1
  %incdec.ptr138 = getelementptr inbounds i8, i8* %76, i32 -1
  store i8* %incdec.ptr138, i8** %out, align 8, !tbaa !1
  store i8 %conv137, i8* %incdec.ptr138, align 1, !tbaa !48
  %77 = load i8, i8* %b1120, align 1, !tbaa !48
  %conv139 = zext i8 %77 to i32
  %shl140 = shl i32 %conv139, 4
  %78 = load i8, i8* %b1120, align 1, !tbaa !48
  %conv141 = zext i8 %78 to i32
  %shr142 = ashr i32 %conv141, 4
  %and143 = and i32 %shr142, 15
  %add144 = add nsw i32 %shl140, %and143
  %conv145 = trunc i32 %add144 to i8
  %79 = load i8*, i8** %out, align 8, !tbaa !1
  %incdec.ptr146 = getelementptr inbounds i8, i8* %79, i32 -1
  store i8* %incdec.ptr146, i8** %out, align 8, !tbaa !1
  store i8 %conv145, i8* %incdec.ptr146, align 1, !tbaa !48
  %80 = load i8, i8* %b1120, align 1, !tbaa !48
  %conv147 = zext i8 %80 to i32
  %and148 = and i32 %conv147, 240
  %81 = load i8, i8* %b1120, align 1, !tbaa !48
  %conv149 = zext i8 %81 to i32
  %shr150 = ashr i32 %conv149, 4
  %and151 = and i32 %shr150, 15
  %add152 = add nsw i32 %and148, %and151
  %conv153 = trunc i32 %add152 to i8
  %82 = load i8*, i8** %out, align 8, !tbaa !1
  %incdec.ptr154 = getelementptr inbounds i8, i8* %82, i32 -1
  store i8* %incdec.ptr154, i8** %out, align 8, !tbaa !1
  store i8 %conv153, i8* %incdec.ptr154, align 1, !tbaa !48
  call void @llvm.lifetime.end(i64 1, i8* %b1120) #2
  call void @llvm.lifetime.end(i64 1, i8* %b0119) #2
  br label %while.cond.115

while.end.155:                                    ; preds = %while.cond.115
  br label %if.end.156

if.end.156:                                       ; preds = %while.end.155, %if.else
  br label %if.end.157

if.end.157:                                       ; preds = %if.end.156, %while.end.103
  br label %if.end.246

if.else.158:                                      ; preds = %entry
  %83 = load i32, i32* %bpp.addr, align 4, !tbaa !5
  %cmp159 = icmp eq i32 %83, 16
  br i1 %cmp159, label %if.then.161, label %if.end.206

if.then.161:                                      ; preds = %if.else.158
  call void @llvm.lifetime.start(i64 1, i8* %b0162) #2
  call void @llvm.lifetime.start(i64 1, i8* %b1163) #2
  %84 = load i32, i32* %endline, align 4, !tbaa !5
  %add164 = add nsw i32 %84, 1
  %div165 = sdiv i32 %add164, 2
  store i32 %div165, i32* %endline, align 4, !tbaa !5
  %85 = load i8*, i8** %start, align 8, !tbaa !1
  %86 = load i32, i32* %endline, align 4, !tbaa !5
  %mul166 = mul nsw i32 %86, 2
  %idx.ext167 = sext i32 %mul166 to i64
  %add.ptr168 = getelementptr inbounds i8, i8* %85, i64 %idx.ext167
  store i8* %add.ptr168, i8** %in, align 8, !tbaa !1
  %87 = load i8*, i8** %start, align 8, !tbaa !1
  %88 = load i32, i32* %endline, align 4, !tbaa !5
  %mul169 = mul nsw i32 %88, 3
  store i32 %mul169, i32* %endline, align 4, !tbaa !5
  %idx.ext170 = sext i32 %mul169 to i64
  %add.ptr171 = getelementptr inbounds i8, i8* %87, i64 %idx.ext170
  store i8* %add.ptr171, i8** %out, align 8, !tbaa !1
  br label %while.cond.172

while.cond.172:                                   ; preds = %while.body.175, %if.then.161
  %89 = load i8*, i8** %in, align 8, !tbaa !1
  %90 = load i8*, i8** %start, align 8, !tbaa !1
  %cmp173 = icmp ugt i8* %89, %90
  br i1 %cmp173, label %while.body.175, label %while.end.205

while.body.175:                                   ; preds = %while.cond.172
  %91 = load i8*, i8** %in, align 8, !tbaa !1
  %incdec.ptr176 = getelementptr inbounds i8, i8* %91, i32 -1
  store i8* %incdec.ptr176, i8** %in, align 8, !tbaa !1
  %92 = load i8, i8* %incdec.ptr176, align 1, !tbaa !48
  store i8 %92, i8* %b0162, align 1, !tbaa !48
  %93 = load i8*, i8** %in, align 8, !tbaa !1
  %incdec.ptr177 = getelementptr inbounds i8, i8* %93, i32 -1
  store i8* %incdec.ptr177, i8** %in, align 8, !tbaa !1
  %94 = load i8, i8* %incdec.ptr177, align 1, !tbaa !48
  store i8 %94, i8* %b1163, align 1, !tbaa !48
  %95 = load i8, i8* %b0162, align 1, !tbaa !48
  %conv178 = zext i8 %95 to i32
  %shl179 = shl i32 %conv178, 3
  %96 = load i8, i8* %b0162, align 1, !tbaa !48
  %conv180 = zext i8 %96 to i32
  %shr181 = ashr i32 %conv180, 2
  %and182 = and i32 %shr181, 7
  %add183 = add nsw i32 %shl179, %and182
  %conv184 = trunc i32 %add183 to i8
  %97 = load i8*, i8** %out, align 8, !tbaa !1
  %incdec.ptr185 = getelementptr inbounds i8, i8* %97, i32 -1
  store i8* %incdec.ptr185, i8** %out, align 8, !tbaa !1
  store i8 %conv184, i8* %incdec.ptr185, align 1, !tbaa !48
  %98 = load i8, i8* %b1163, align 1, !tbaa !48
  %conv186 = zext i8 %98 to i32
  %shl187 = shl i32 %conv186, 5
  %99 = load i8, i8* %b0162, align 1, !tbaa !48
  %conv188 = zext i8 %99 to i32
  %shr189 = ashr i32 %conv188, 3
  %and190 = and i32 %shr189, 28
  %add191 = add nsw i32 %shl187, %and190
  %100 = load i8, i8* %b1163, align 1, !tbaa !48
  %conv192 = zext i8 %100 to i32
  %shr193 = ashr i32 %conv192, 1
  %and194 = and i32 %shr193, 3
  %add195 = add nsw i32 %add191, %and194
  %conv196 = trunc i32 %add195 to i8
  %101 = load i8*, i8** %out, align 8, !tbaa !1
  %incdec.ptr197 = getelementptr inbounds i8, i8* %101, i32 -1
  store i8* %incdec.ptr197, i8** %out, align 8, !tbaa !1
  store i8 %conv196, i8* %incdec.ptr197, align 1, !tbaa !48
  %102 = load i8, i8* %b1163, align 1, !tbaa !48
  %conv198 = zext i8 %102 to i32
  %and199 = and i32 %conv198, 248
  %103 = load i8, i8* %b1163, align 1, !tbaa !48
  %conv200 = zext i8 %103 to i32
  %shr201 = ashr i32 %conv200, 5
  %add202 = add nsw i32 %and199, %shr201
  %conv203 = trunc i32 %add202 to i8
  %104 = load i8*, i8** %out, align 8, !tbaa !1
  %incdec.ptr204 = getelementptr inbounds i8, i8* %104, i32 -1
  store i8* %incdec.ptr204, i8** %out, align 8, !tbaa !1
  store i8 %conv203, i8* %incdec.ptr204, align 1, !tbaa !48
  br label %while.cond.172

while.end.205:                                    ; preds = %while.cond.172
  call void @llvm.lifetime.end(i64 1, i8* %b1163) #2
  call void @llvm.lifetime.end(i64 1, i8* %b0162) #2
  br label %if.end.206

if.end.206:                                       ; preds = %while.end.205, %if.else.158
  %105 = load i32, i32* %ebpp.addr, align 4, !tbaa !5
  %cmp207 = icmp eq i32 %105, 32
  br i1 %cmp207, label %if.then.209, label %if.end.245

if.then.209:                                      ; preds = %if.end.206
  call void @llvm.lifetime.start(i64 1, i8* %c) #2
  call void @llvm.lifetime.start(i64 1, i8* %m) #2
  call void @llvm.lifetime.start(i64 1, i8* %y) #2
  %106 = load i32, i32* %endline, align 4, !tbaa !5
  %add210 = add nsw i32 %106, 2
  %div211 = sdiv i32 %add210, 3
  store i32 %div211, i32* %endline, align 4, !tbaa !5
  %107 = load i8*, i8** %start, align 8, !tbaa !1
  %108 = load i32, i32* %endline, align 4, !tbaa !5
  %mul212 = mul nsw i32 %108, 3
  %idx.ext213 = sext i32 %mul212 to i64
  %add.ptr214 = getelementptr inbounds i8, i8* %107, i64 %idx.ext213
  store i8* %add.ptr214, i8** %in, align 8, !tbaa !1
  %109 = load i8*, i8** %start, align 8, !tbaa !1
  %110 = load i32, i32* %endline, align 4, !tbaa !5
  %mul215 = mul nsw i32 %110, 4
  %idx.ext216 = sext i32 %mul215 to i64
  %add.ptr217 = getelementptr inbounds i8, i8* %109, i64 %idx.ext216
  store i8* %add.ptr217, i8** %out, align 8, !tbaa !1
  br label %while.cond.218

while.cond.218:                                   ; preds = %if.end.243, %if.then.209
  %111 = load i8*, i8** %in, align 8, !tbaa !1
  %112 = load i8*, i8** %start, align 8, !tbaa !1
  %cmp219 = icmp ugt i8* %111, %112
  br i1 %cmp219, label %while.body.221, label %while.end.244

while.body.221:                                   ; preds = %while.cond.218
  %113 = load i8*, i8** %in, align 8, !tbaa !1
  %incdec.ptr222 = getelementptr inbounds i8, i8* %113, i32 -1
  store i8* %incdec.ptr222, i8** %in, align 8, !tbaa !1
  %114 = load i8, i8* %incdec.ptr222, align 1, !tbaa !48
  store i8 %114, i8* %y, align 1, !tbaa !48
  %115 = load i8*, i8** %in, align 8, !tbaa !1
  %incdec.ptr223 = getelementptr inbounds i8, i8* %115, i32 -1
  store i8* %incdec.ptr223, i8** %in, align 8, !tbaa !1
  %116 = load i8, i8* %incdec.ptr223, align 1, !tbaa !48
  store i8 %116, i8* %m, align 1, !tbaa !48
  %117 = load i8*, i8** %in, align 8, !tbaa !1
  %incdec.ptr224 = getelementptr inbounds i8, i8* %117, i32 -1
  store i8* %incdec.ptr224, i8** %in, align 8, !tbaa !1
  %118 = load i8, i8* %incdec.ptr224, align 1, !tbaa !48
  store i8 %118, i8* %c, align 1, !tbaa !48
  %119 = load i8, i8* %c, align 1, !tbaa !48
  %conv225 = zext i8 %119 to i32
  %120 = load i8, i8* %y, align 1, !tbaa !48
  %conv226 = zext i8 %120 to i32
  %cmp227 = icmp eq i32 %conv225, %conv226
  br i1 %cmp227, label %land.lhs.true, label %if.else.238

land.lhs.true:                                    ; preds = %while.body.221
  %121 = load i8, i8* %c, align 1, !tbaa !48
  %conv229 = zext i8 %121 to i32
  %122 = load i8, i8* %m, align 1, !tbaa !48
  %conv230 = zext i8 %122 to i32
  %cmp231 = icmp eq i32 %conv229, %conv230
  br i1 %cmp231, label %if.then.233, label %if.else.238

if.then.233:                                      ; preds = %land.lhs.true
  %123 = load i8*, i8** %out, align 8, !tbaa !1
  %incdec.ptr234 = getelementptr inbounds i8, i8* %123, i32 -1
  store i8* %incdec.ptr234, i8** %out, align 8, !tbaa !1
  store i8 0, i8* %incdec.ptr234, align 1, !tbaa !48
  %124 = load i8*, i8** %out, align 8, !tbaa !1
  %incdec.ptr235 = getelementptr inbounds i8, i8* %124, i32 -1
  store i8* %incdec.ptr235, i8** %out, align 8, !tbaa !1
  store i8 0, i8* %incdec.ptr235, align 1, !tbaa !48
  %125 = load i8*, i8** %out, align 8, !tbaa !1
  %incdec.ptr236 = getelementptr inbounds i8, i8* %125, i32 -1
  store i8* %incdec.ptr236, i8** %out, align 8, !tbaa !1
  store i8 0, i8* %incdec.ptr236, align 1, !tbaa !48
  %126 = load i8, i8* %c, align 1, !tbaa !48
  %127 = load i8*, i8** %out, align 8, !tbaa !1
  %incdec.ptr237 = getelementptr inbounds i8, i8* %127, i32 -1
  store i8* %incdec.ptr237, i8** %out, align 8, !tbaa !1
  store i8 %126, i8* %incdec.ptr237, align 1, !tbaa !48
  br label %if.end.243

if.else.238:                                      ; preds = %land.lhs.true, %while.body.221
  %128 = load i8, i8* %y, align 1, !tbaa !48
  %129 = load i8*, i8** %out, align 8, !tbaa !1
  %incdec.ptr239 = getelementptr inbounds i8, i8* %129, i32 -1
  store i8* %incdec.ptr239, i8** %out, align 8, !tbaa !1
  store i8 %128, i8* %incdec.ptr239, align 1, !tbaa !48
  %130 = load i8, i8* %m, align 1, !tbaa !48
  %131 = load i8*, i8** %out, align 8, !tbaa !1
  %incdec.ptr240 = getelementptr inbounds i8, i8* %131, i32 -1
  store i8* %incdec.ptr240, i8** %out, align 8, !tbaa !1
  store i8 %130, i8* %incdec.ptr240, align 1, !tbaa !48
  %132 = load i8, i8* %c, align 1, !tbaa !48
  %133 = load i8*, i8** %out, align 8, !tbaa !1
  %incdec.ptr241 = getelementptr inbounds i8, i8* %133, i32 -1
  store i8* %incdec.ptr241, i8** %out, align 8, !tbaa !1
  store i8 %132, i8* %incdec.ptr241, align 1, !tbaa !48
  %134 = load i8*, i8** %out, align 8, !tbaa !1
  %incdec.ptr242 = getelementptr inbounds i8, i8* %134, i32 -1
  store i8* %incdec.ptr242, i8** %out, align 8, !tbaa !1
  store i8 0, i8* %incdec.ptr242, align 1, !tbaa !48
  br label %if.end.243

if.end.243:                                       ; preds = %if.else.238, %if.then.233
  br label %while.cond.218

while.end.244:                                    ; preds = %while.cond.218
  call void @llvm.lifetime.end(i64 1, i8* %y) #2
  call void @llvm.lifetime.end(i64 1, i8* %m) #2
  call void @llvm.lifetime.end(i64 1, i8* %c) #2
  br label %if.end.245

if.end.245:                                       ; preds = %while.end.244, %if.end.206
  br label %if.end.246

if.end.246:                                       ; preds = %if.end.245, %if.end.157
  %135 = bitcast i8** %out to i8*
  call void @llvm.lifetime.end(i64 8, i8* %135) #2
  %136 = bitcast i8** %in to i8*
  call void @llvm.lifetime.end(i64 8, i8* %136) #2
  %137 = bitcast i8** %start to i8*
  call void @llvm.lifetime.end(i64 8, i8* %137) #2
  %138 = bitcast i32* %endline to i8*
  call void @llvm.lifetime.end(i64 4, i8* %138) #2
  ret void
}

declare i32 @gdev_pcl_mode9compress(i32, i8*, i8*, i8*) #0

; Function Attrs: nounwind uwtable
define internal i32 @gdev_pcl_mode1compress(i8* %row, i8* %end_row, i8* %compressed) #1 {
entry:
  %row.addr = alloca i8*, align 8
  %end_row.addr = alloca i8*, align 8
  %compressed.addr = alloca i8*, align 8
  %in = alloca i8*, align 8
  %out = alloca i8*, align 8
  %test = alloca i8, align 1
  %run = alloca i8*, align 8
  store i8* %row, i8** %row.addr, align 8, !tbaa !1
  store i8* %end_row, i8** %end_row.addr, align 8, !tbaa !1
  store i8* %compressed, i8** %compressed.addr, align 8, !tbaa !1
  %0 = bitcast i8** %in to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load i8*, i8** %row.addr, align 8, !tbaa !1
  store i8* %1, i8** %in, align 8, !tbaa !1
  %2 = bitcast i8** %out to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #2
  %3 = load i8*, i8** %compressed.addr, align 8, !tbaa !1
  store i8* %3, i8** %out, align 8, !tbaa !1
  br label %while.cond

while.cond:                                       ; preds = %while.end.14, %entry
  %4 = load i8*, i8** %in, align 8, !tbaa !1
  %5 = load i8*, i8** %end_row.addr, align 8, !tbaa !1
  %cmp = icmp ult i8* %4, %5
  br i1 %cmp, label %while.body, label %while.end.21

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start(i64 1, i8* %test) #2
  %6 = load i8*, i8** %in, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %6, i32 1
  store i8* %incdec.ptr, i8** %in, align 8, !tbaa !1
  %7 = load i8, i8* %6, align 1, !tbaa !48
  store i8 %7, i8* %test, align 1, !tbaa !48
  %8 = bitcast i8** %run to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #2
  %9 = load i8*, i8** %in, align 8, !tbaa !1
  store i8* %9, i8** %run, align 8, !tbaa !1
  br label %while.cond.1

while.cond.1:                                     ; preds = %while.body.6, %while.body
  %10 = load i8*, i8** %in, align 8, !tbaa !1
  %11 = load i8*, i8** %end_row.addr, align 8, !tbaa !1
  %cmp2 = icmp ult i8* %10, %11
  br i1 %cmp2, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond.1
  %12 = load i8*, i8** %in, align 8, !tbaa !1
  %13 = load i8, i8* %12, align 1, !tbaa !48
  %conv = zext i8 %13 to i32
  %14 = load i8, i8* %test, align 1, !tbaa !48
  %conv3 = zext i8 %14 to i32
  %cmp4 = icmp eq i32 %conv, %conv3
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond.1
  %15 = phi i1 [ false, %while.cond.1 ], [ %cmp4, %land.rhs ]
  br i1 %15, label %while.body.6, label %while.end

while.body.6:                                     ; preds = %land.end
  %16 = load i8*, i8** %in, align 8, !tbaa !1
  %incdec.ptr7 = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %incdec.ptr7, i8** %in, align 8, !tbaa !1
  br label %while.cond.1

while.end:                                        ; preds = %land.end
  br label %while.cond.8

while.cond.8:                                     ; preds = %while.body.11, %while.end
  %17 = load i8*, i8** %in, align 8, !tbaa !1
  %18 = load i8*, i8** %run, align 8, !tbaa !1
  %sub.ptr.lhs.cast = ptrtoint i8* %17 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %18 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp9 = icmp sgt i64 %sub.ptr.sub, 255
  br i1 %cmp9, label %while.body.11, label %while.end.14

while.body.11:                                    ; preds = %while.cond.8
  %19 = load i8*, i8** %out, align 8, !tbaa !1
  %incdec.ptr12 = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %incdec.ptr12, i8** %out, align 8, !tbaa !1
  store i8 -1, i8* %19, align 1, !tbaa !48
  %20 = load i8, i8* %test, align 1, !tbaa !48
  %21 = load i8*, i8** %out, align 8, !tbaa !1
  %incdec.ptr13 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %incdec.ptr13, i8** %out, align 8, !tbaa !1
  store i8 %20, i8* %21, align 1, !tbaa !48
  %22 = load i8*, i8** %run, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %22, i64 256
  store i8* %add.ptr, i8** %run, align 8, !tbaa !1
  br label %while.cond.8

while.end.14:                                     ; preds = %while.cond.8
  %23 = load i8*, i8** %in, align 8, !tbaa !1
  %24 = load i8*, i8** %run, align 8, !tbaa !1
  %sub.ptr.lhs.cast15 = ptrtoint i8* %23 to i64
  %sub.ptr.rhs.cast16 = ptrtoint i8* %24 to i64
  %sub.ptr.sub17 = sub i64 %sub.ptr.lhs.cast15, %sub.ptr.rhs.cast16
  %conv18 = trunc i64 %sub.ptr.sub17 to i8
  %25 = load i8*, i8** %out, align 8, !tbaa !1
  %incdec.ptr19 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %incdec.ptr19, i8** %out, align 8, !tbaa !1
  store i8 %conv18, i8* %25, align 1, !tbaa !48
  %26 = load i8, i8* %test, align 1, !tbaa !48
  %27 = load i8*, i8** %out, align 8, !tbaa !1
  %incdec.ptr20 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %incdec.ptr20, i8** %out, align 8, !tbaa !1
  store i8 %26, i8* %27, align 1, !tbaa !48
  %28 = bitcast i8** %run to i8*
  call void @llvm.lifetime.end(i64 8, i8* %28) #2
  call void @llvm.lifetime.end(i64 1, i8* %test) #2
  br label %while.cond

while.end.21:                                     ; preds = %while.cond
  %29 = load i8*, i8** %out, align 8, !tbaa !1
  %30 = load i8*, i8** %compressed.addr, align 8, !tbaa !1
  %sub.ptr.lhs.cast22 = ptrtoint i8* %29 to i64
  %sub.ptr.rhs.cast23 = ptrtoint i8* %30 to i64
  %sub.ptr.sub24 = sub i64 %sub.ptr.lhs.cast22, %sub.ptr.rhs.cast23
  %conv25 = trunc i64 %sub.ptr.sub24 to i32
  %31 = bitcast i8** %out to i8*
  call void @llvm.lifetime.end(i64 8, i8* %31) #2
  %32 = bitcast i8** %in to i8*
  call void @llvm.lifetime.end(i64 8, i8* %32) #2
  ret i32 %conv25
}

declare i32 @gdev_pcl_mode2compress(i64*, i64*, i8*) #0

declare i32 @gdev_pcl_mode3compress(i32, i8*, i8*, i8*) #0

; Function Attrs: nounwind uwtable
define internal i32 @bjc_compress(i8* %row, i8* %end_row, i8* %compressed) #1 {
entry:
  %row.addr = alloca i8*, align 8
  %end_row.addr = alloca i8*, align 8
  %compressed.addr = alloca i8*, align 8
  %exam = alloca i8*, align 8
  %cptr = alloca i8*, align 8
  %compr = alloca i8*, align 8
  %end_dis = alloca i8*, align 8
  %next = alloca i8*, align 8
  %test = alloca i8, align 1
  %test2 = alloca i8, align 1
  %count = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %count54 = alloca i32, align 4
  %this = alloca i32, align 4
  store i8* %row, i8** %row.addr, align 8, !tbaa !1
  store i8* %end_row, i8** %end_row.addr, align 8, !tbaa !1
  store i8* %compressed, i8** %compressed.addr, align 8, !tbaa !1
  %0 = bitcast i8** %exam to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load i8*, i8** %row.addr, align 8, !tbaa !1
  store i8* %1, i8** %exam, align 8, !tbaa !1
  %2 = bitcast i8** %cptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #2
  %3 = load i8*, i8** %compressed.addr, align 8, !tbaa !1
  store i8* %3, i8** %cptr, align 8, !tbaa !1
  br label %while.cond

while.cond:                                       ; preds = %if.end.77, %entry
  %4 = load i8*, i8** %exam, align 8, !tbaa !1
  %5 = load i8*, i8** %end_row.addr, align 8, !tbaa !1
  %cmp = icmp ult i8* %4, %5
  br i1 %cmp, label %while.body, label %while.end.78

while.body:                                       ; preds = %while.cond
  %6 = bitcast i8** %compr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #2
  %7 = load i8*, i8** %exam, align 8, !tbaa !1
  store i8* %7, i8** %compr, align 8, !tbaa !1
  %8 = bitcast i8** %end_dis to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #2
  %9 = bitcast i8** %next to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #2
  call void @llvm.lifetime.start(i64 1, i8* %test) #2
  call void @llvm.lifetime.start(i64 1, i8* %test2) #2
  %10 = load i8*, i8** %exam, align 8, !tbaa !1
  %11 = load i8, i8* %10, align 1, !tbaa !48
  store i8 %11, i8* %test, align 1, !tbaa !48
  br label %while.cond.1

while.cond.1:                                     ; preds = %if.end, %while.body
  %12 = load i8*, i8** %exam, align 8, !tbaa !1
  %13 = load i8*, i8** %end_row.addr, align 8, !tbaa !1
  %cmp2 = icmp ult i8* %12, %13
  br i1 %cmp2, label %while.body.3, label %while.end

while.body.3:                                     ; preds = %while.cond.1
  %14 = load i8*, i8** %exam, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %incdec.ptr, i8** %exam, align 8, !tbaa !1
  %15 = load i8, i8* %incdec.ptr, align 1, !tbaa !48
  store i8 %15, i8* %test2, align 1, !tbaa !48
  %16 = load i8, i8* %test, align 1, !tbaa !48
  %conv = zext i8 %16 to i32
  %17 = load i8, i8* %test2, align 1, !tbaa !48
  %conv4 = zext i8 %17 to i32
  %cmp5 = icmp eq i32 %conv, %conv4
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %while.body.3
  br label %while.end

if.end:                                           ; preds = %while.body.3
  %18 = load i8, i8* %test2, align 1, !tbaa !48
  store i8 %18, i8* %test, align 1, !tbaa !48
  br label %while.cond.1

while.end:                                        ; preds = %if.then, %while.cond.1
  %19 = load i8*, i8** %exam, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %19, i64 -1
  store i8* %add.ptr, i8** %end_dis, align 8, !tbaa !1
  %20 = load i8*, i8** %exam, align 8, !tbaa !1
  %21 = load i8*, i8** %end_row.addr, align 8, !tbaa !1
  %cmp7 = icmp eq i8* %20, %21
  br i1 %cmp7, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %while.end
  %22 = load i8*, i8** %end_row.addr, align 8, !tbaa !1
  %incdec.ptr10 = getelementptr inbounds i8, i8* %22, i32 -1
  store i8* %incdec.ptr10, i8** %end_row.addr, align 8, !tbaa !1
  store i8* %incdec.ptr10, i8** %next, align 8, !tbaa !1
  br label %if.end.22

if.else:                                          ; preds = %while.end
  %23 = load i8*, i8** %exam, align 8, !tbaa !1
  %add.ptr11 = getelementptr inbounds i8, i8* %23, i64 1
  store i8* %add.ptr11, i8** %next, align 8, !tbaa !1
  br label %while.cond.12

while.cond.12:                                    ; preds = %while.body.19, %if.else
  %24 = load i8*, i8** %next, align 8, !tbaa !1
  %25 = load i8*, i8** %end_row.addr, align 8, !tbaa !1
  %cmp13 = icmp ult i8* %24, %25
  br i1 %cmp13, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond.12
  %26 = load i8*, i8** %next, align 8, !tbaa !1
  %27 = load i8, i8* %26, align 1, !tbaa !48
  %conv15 = zext i8 %27 to i32
  %28 = load i8, i8* %test, align 1, !tbaa !48
  %conv16 = zext i8 %28 to i32
  %cmp17 = icmp eq i32 %conv15, %conv16
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond.12
  %29 = phi i1 [ false, %while.cond.12 ], [ %cmp17, %land.rhs ]
  br i1 %29, label %while.body.19, label %while.end.21

while.body.19:                                    ; preds = %land.end
  %30 = load i8*, i8** %next, align 8, !tbaa !1
  %incdec.ptr20 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %incdec.ptr20, i8** %next, align 8, !tbaa !1
  br label %while.cond.12

while.end.21:                                     ; preds = %land.end
  br label %if.end.22

if.end.22:                                        ; preds = %while.end.21, %if.then.9
  br label %for.cond

for.cond:                                         ; preds = %cleanup, %if.end.22
  %31 = bitcast i32* %count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %31) #2
  %32 = load i8*, i8** %end_dis, align 8, !tbaa !1
  %33 = load i8*, i8** %compr, align 8, !tbaa !1
  %sub.ptr.lhs.cast = ptrtoint i8* %32 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %33 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv23 = trunc i64 %sub.ptr.sub to i32
  store i32 %conv23, i32* %count, align 4, !tbaa !5
  %34 = load i32, i32* %count, align 4, !tbaa !5
  switch i32 %34, label %sw.default [
    i32 6, label %sw.bb
    i32 5, label %sw.bb.25
    i32 4, label %sw.bb.28
    i32 3, label %sw.bb.31
    i32 2, label %sw.bb.34
    i32 1, label %sw.bb.37
    i32 0, label %sw.epilog
  ]

sw.bb:                                            ; preds = %for.cond
  %35 = load i8*, i8** %compr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %35, i64 5
  %36 = load i8, i8* %arrayidx, align 1, !tbaa !48
  %37 = load i8*, i8** %cptr, align 8, !tbaa !1
  %arrayidx24 = getelementptr inbounds i8, i8* %37, i64 6
  store i8 %36, i8* %arrayidx24, align 1, !tbaa !48
  br label %sw.bb.25

sw.bb.25:                                         ; preds = %for.cond, %sw.bb
  %38 = load i8*, i8** %compr, align 8, !tbaa !1
  %arrayidx26 = getelementptr inbounds i8, i8* %38, i64 4
  %39 = load i8, i8* %arrayidx26, align 1, !tbaa !48
  %40 = load i8*, i8** %cptr, align 8, !tbaa !1
  %arrayidx27 = getelementptr inbounds i8, i8* %40, i64 5
  store i8 %39, i8* %arrayidx27, align 1, !tbaa !48
  br label %sw.bb.28

sw.bb.28:                                         ; preds = %for.cond, %sw.bb.25
  %41 = load i8*, i8** %compr, align 8, !tbaa !1
  %arrayidx29 = getelementptr inbounds i8, i8* %41, i64 3
  %42 = load i8, i8* %arrayidx29, align 1, !tbaa !48
  %43 = load i8*, i8** %cptr, align 8, !tbaa !1
  %arrayidx30 = getelementptr inbounds i8, i8* %43, i64 4
  store i8 %42, i8* %arrayidx30, align 1, !tbaa !48
  br label %sw.bb.31

sw.bb.31:                                         ; preds = %for.cond, %sw.bb.28
  %44 = load i8*, i8** %compr, align 8, !tbaa !1
  %arrayidx32 = getelementptr inbounds i8, i8* %44, i64 2
  %45 = load i8, i8* %arrayidx32, align 1, !tbaa !48
  %46 = load i8*, i8** %cptr, align 8, !tbaa !1
  %arrayidx33 = getelementptr inbounds i8, i8* %46, i64 3
  store i8 %45, i8* %arrayidx33, align 1, !tbaa !48
  br label %sw.bb.34

sw.bb.34:                                         ; preds = %for.cond, %sw.bb.31
  %47 = load i8*, i8** %compr, align 8, !tbaa !1
  %arrayidx35 = getelementptr inbounds i8, i8* %47, i64 1
  %48 = load i8, i8* %arrayidx35, align 1, !tbaa !48
  %49 = load i8*, i8** %cptr, align 8, !tbaa !1
  %arrayidx36 = getelementptr inbounds i8, i8* %49, i64 2
  store i8 %48, i8* %arrayidx36, align 1, !tbaa !48
  br label %sw.bb.37

sw.bb.37:                                         ; preds = %for.cond, %sw.bb.34
  %50 = load i8*, i8** %compr, align 8, !tbaa !1
  %arrayidx38 = getelementptr inbounds i8, i8* %50, i64 0
  %51 = load i8, i8* %arrayidx38, align 1, !tbaa !48
  %52 = load i8*, i8** %cptr, align 8, !tbaa !1
  %arrayidx39 = getelementptr inbounds i8, i8* %52, i64 1
  store i8 %51, i8* %arrayidx39, align 1, !tbaa !48
  %53 = load i32, i32* %count, align 4, !tbaa !5
  %sub = sub i32 %53, 1
  %conv40 = trunc i32 %sub to i8
  %54 = load i8*, i8** %cptr, align 8, !tbaa !1
  store i8 %conv40, i8* %54, align 1, !tbaa !48
  %55 = load i32, i32* %count, align 4, !tbaa !5
  %add = add i32 %55, 1
  %56 = load i8*, i8** %cptr, align 8, !tbaa !1
  %idx.ext = zext i32 %add to i64
  %add.ptr41 = getelementptr inbounds i8, i8* %56, i64 %idx.ext
  store i8* %add.ptr41, i8** %cptr, align 8, !tbaa !1
  br label %sw.epilog

sw.default:                                       ; preds = %for.cond
  %57 = load i32, i32* %count, align 4, !tbaa !5
  %cmp42 = icmp ugt i32 %57, 128
  br i1 %cmp42, label %if.then.44, label %if.end.45

if.then.44:                                       ; preds = %sw.default
  store i32 128, i32* %count, align 4, !tbaa !5
  br label %if.end.45

if.end.45:                                        ; preds = %if.then.44, %sw.default
  %58 = load i32, i32* %count, align 4, !tbaa !5
  %sub46 = sub i32 %58, 1
  %conv47 = trunc i32 %sub46 to i8
  %59 = load i8*, i8** %cptr, align 8, !tbaa !1
  %incdec.ptr48 = getelementptr inbounds i8, i8* %59, i32 1
  store i8* %incdec.ptr48, i8** %cptr, align 8, !tbaa !1
  store i8 %conv47, i8* %59, align 1, !tbaa !48
  %60 = load i8*, i8** %cptr, align 8, !tbaa !1
  %61 = load i8*, i8** %compr, align 8, !tbaa !1
  %62 = load i32, i32* %count, align 4, !tbaa !5
  %conv49 = zext i32 %62 to i64
  %call = call i8* @memcpy(i8* %60, i8* %61, i64 %conv49) #7
  %63 = load i32, i32* %count, align 4, !tbaa !5
  %64 = load i8*, i8** %cptr, align 8, !tbaa !1
  %idx.ext50 = zext i32 %63 to i64
  %add.ptr51 = getelementptr inbounds i8, i8* %64, i64 %idx.ext50
  store i8* %add.ptr51, i8** %cptr, align 8, !tbaa !1
  %65 = load i32, i32* %count, align 4, !tbaa !5
  %66 = load i8*, i8** %compr, align 8, !tbaa !1
  %idx.ext52 = zext i32 %65 to i64
  %add.ptr53 = getelementptr inbounds i8, i8* %66, i64 %idx.ext52
  store i8* %add.ptr53, i8** %compr, align 8, !tbaa !1
  store i32 9, i32* %cleanup.dest.slot
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb.37, %for.cond
  store i32 8, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.end.45
  %67 = bitcast i32* %count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %67) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 9, label %for.cond
    i32 8, label %for.end
  ]

for.end:                                          ; preds = %cleanup
  %68 = bitcast i32* %count54 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %68) #2
  %69 = load i8*, i8** %next, align 8, !tbaa !1
  %70 = load i8*, i8** %end_dis, align 8, !tbaa !1
  %sub.ptr.lhs.cast55 = ptrtoint i8* %69 to i64
  %sub.ptr.rhs.cast56 = ptrtoint i8* %70 to i64
  %sub.ptr.sub57 = sub i64 %sub.ptr.lhs.cast55, %sub.ptr.rhs.cast56
  %conv58 = trunc i64 %sub.ptr.sub57 to i32
  store i32 %conv58, i32* %count54, align 4, !tbaa !5
  %71 = load i8*, i8** %next, align 8, !tbaa !1
  %72 = load i8*, i8** %end_row.addr, align 8, !tbaa !1
  %cmp59 = icmp ult i8* %71, %72
  br i1 %cmp59, label %if.then.64, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.end
  %73 = load i8, i8* %test, align 1, !tbaa !48
  %conv61 = zext i8 %73 to i32
  %cmp62 = icmp ne i32 %conv61, 0
  br i1 %cmp62, label %if.then.64, label %if.end.77

if.then.64:                                       ; preds = %lor.lhs.false, %for.end
  br label %while.cond.65

while.cond.65:                                    ; preds = %cond.end, %if.then.64
  %74 = load i32, i32* %count54, align 4, !tbaa !5
  %cmp66 = icmp sgt i32 %74, 0
  br i1 %cmp66, label %while.body.68, label %while.end.76

while.body.68:                                    ; preds = %while.cond.65
  %75 = bitcast i32* %this to i8*
  call void @llvm.lifetime.start(i64 4, i8* %75) #2
  %76 = load i32, i32* %count54, align 4, !tbaa !5
  %cmp69 = icmp sgt i32 %76, 128
  br i1 %cmp69, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.body.68
  br label %cond.end

cond.false:                                       ; preds = %while.body.68
  %77 = load i32, i32* %count54, align 4, !tbaa !5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 128, %cond.true ], [ %77, %cond.false ]
  store i32 %cond, i32* %this, align 4, !tbaa !5
  %78 = load i32, i32* %this, align 4, !tbaa !5
  %sub71 = sub nsw i32 257, %78
  %conv72 = trunc i32 %sub71 to i8
  %79 = load i8*, i8** %cptr, align 8, !tbaa !1
  %incdec.ptr73 = getelementptr inbounds i8, i8* %79, i32 1
  store i8* %incdec.ptr73, i8** %cptr, align 8, !tbaa !1
  store i8 %conv72, i8* %79, align 1, !tbaa !48
  %80 = load i8, i8* %test, align 1, !tbaa !48
  %81 = load i8*, i8** %cptr, align 8, !tbaa !1
  %incdec.ptr74 = getelementptr inbounds i8, i8* %81, i32 1
  store i8* %incdec.ptr74, i8** %cptr, align 8, !tbaa !1
  store i8 %80, i8* %81, align 1, !tbaa !48
  %82 = load i32, i32* %this, align 4, !tbaa !5
  %83 = load i32, i32* %count54, align 4, !tbaa !5
  %sub75 = sub nsw i32 %83, %82
  store i32 %sub75, i32* %count54, align 4, !tbaa !5
  %84 = bitcast i32* %this to i8*
  call void @llvm.lifetime.end(i64 4, i8* %84) #2
  br label %while.cond.65

while.end.76:                                     ; preds = %while.cond.65
  br label %if.end.77

if.end.77:                                        ; preds = %while.end.76, %lor.lhs.false
  %85 = load i8*, i8** %next, align 8, !tbaa !1
  store i8* %85, i8** %exam, align 8, !tbaa !1
  %86 = bitcast i32* %count54 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %86) #2
  call void @llvm.lifetime.end(i64 1, i8* %test2) #2
  call void @llvm.lifetime.end(i64 1, i8* %test) #2
  %87 = bitcast i8** %next to i8*
  call void @llvm.lifetime.end(i64 8, i8* %87) #2
  %88 = bitcast i8** %end_dis to i8*
  call void @llvm.lifetime.end(i64 8, i8* %88) #2
  %89 = bitcast i8** %compr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %89) #2
  br label %while.cond

while.end.78:                                     ; preds = %while.cond
  %90 = load i8*, i8** %cptr, align 8, !tbaa !1
  %91 = load i8*, i8** %compressed.addr, align 8, !tbaa !1
  %sub.ptr.lhs.cast79 = ptrtoint i8* %90 to i64
  %sub.ptr.rhs.cast80 = ptrtoint i8* %91 to i64
  %sub.ptr.sub81 = sub i64 %sub.ptr.lhs.cast79, %sub.ptr.rhs.cast80
  %conv82 = trunc i64 %sub.ptr.sub81 to i32
  store i32 1, i32* %cleanup.dest.slot
  %92 = bitcast i8** %cptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %92) #2
  %93 = bitcast i8** %exam to i8*
  call void @llvm.lifetime.end(i64 8, i8* %93) #2
  ret i32 %conv82

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define internal i32 @bjc_raster_cmd(i32 %c_id, i32 %rastsize, i8* %data, %struct.gx_device_printer_s* %pdev, %struct._IO_FILE* %f) #1 {
entry:
  %c_id.addr = alloca i32, align 4
  %rastsize.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %pdev.addr = alloca %struct.gx_device_printer_s*, align 8
  %f.addr = alloca %struct._IO_FILE*, align 8
  store i32 %c_id, i32* %c_id.addr, align 4, !tbaa !5
  store i32 %rastsize, i32* %rastsize.addr, align 4, !tbaa !5
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store %struct.gx_device_printer_s* %pdev, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  store %struct._IO_FILE* %f, %struct._IO_FILE** %f.addr, align 8, !tbaa !1
  %0 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %1 = bitcast %struct.gx_device_printer_s* %0 to %struct.gx_device_bjc800_s*
  %bjc_p = getelementptr inbounds %struct.gx_device_bjc800_s, %struct.gx_device_bjc800_s* %1, i32 0, i32 73
  %printColors = getelementptr inbounds %struct.bjc_params, %struct.bjc_params* %bjc_p, i32 0, i32 7
  %2 = load i32, i32* %printColors, align 4, !tbaa !110
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %rastsize.addr, align 4, !tbaa !5
  %4 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8, !tbaa !1
  %call = call i32 @bjc_raster_cmd_sub(i8 signext 75, i32 %3, i8* %4, %struct._IO_FILE* %5) #5
  br label %if.end.40

if.else:                                          ; preds = %entry
  %6 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %6, i32 0, i32 11
  %num_components = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 1
  %7 = load i32, i32* %num_components, align 4, !tbaa !86
  %cmp1 = icmp eq i32 %7, 1
  br i1 %cmp1, label %if.then.2, label %if.else.29

if.then.2:                                        ; preds = %if.else
  %8 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %9 = bitcast %struct.gx_device_printer_s* %8 to %struct.gx_device_bjc800_s*
  %bjc_p3 = getelementptr inbounds %struct.gx_device_bjc800_s, %struct.gx_device_bjc800_s* %9, i32 0, i32 73
  %printColors4 = getelementptr inbounds %struct.bjc_params, %struct.bjc_params* %bjc_p3, i32 0, i32 7
  %10 = load i32, i32* %printColors4, align 4, !tbaa !110
  %and = and i32 %10, 8
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then.5, label %if.else.7

if.then.5:                                        ; preds = %if.then.2
  %11 = load i32, i32* %rastsize.addr, align 4, !tbaa !5
  %12 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8, !tbaa !1
  %call6 = call i32 @bjc_raster_cmd_sub(i8 signext 75, i32 %11, i8* %12, %struct._IO_FILE* %13) #5
  br label %if.end.28

if.else.7:                                        ; preds = %if.then.2
  %14 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %15 = bitcast %struct.gx_device_printer_s* %14 to %struct.gx_device_bjc800_s*
  %bjc_p8 = getelementptr inbounds %struct.gx_device_bjc800_s, %struct.gx_device_bjc800_s* %15, i32 0, i32 73
  %printColors9 = getelementptr inbounds %struct.bjc_params, %struct.bjc_params* %bjc_p8, i32 0, i32 7
  %16 = load i32, i32* %printColors9, align 4, !tbaa !110
  %and10 = and i32 %16, 4
  %tobool11 = icmp ne i32 %and10, 0
  br i1 %tobool11, label %if.then.12, label %if.end

if.then.12:                                       ; preds = %if.else.7
  %17 = load i32, i32* %rastsize.addr, align 4, !tbaa !5
  %18 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8, !tbaa !1
  %call13 = call i32 @bjc_raster_cmd_sub(i8 signext 89, i32 %17, i8* %18, %struct._IO_FILE* %19) #5
  br label %if.end

if.end:                                           ; preds = %if.then.12, %if.else.7
  %20 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %21 = bitcast %struct.gx_device_printer_s* %20 to %struct.gx_device_bjc800_s*
  %bjc_p14 = getelementptr inbounds %struct.gx_device_bjc800_s, %struct.gx_device_bjc800_s* %21, i32 0, i32 73
  %printColors15 = getelementptr inbounds %struct.bjc_params, %struct.bjc_params* %bjc_p14, i32 0, i32 7
  %22 = load i32, i32* %printColors15, align 4, !tbaa !110
  %and16 = and i32 %22, 2
  %tobool17 = icmp ne i32 %and16, 0
  br i1 %tobool17, label %if.then.18, label %if.end.20

if.then.18:                                       ; preds = %if.end
  %23 = load i32, i32* %rastsize.addr, align 4, !tbaa !5
  %24 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8, !tbaa !1
  %call19 = call i32 @bjc_raster_cmd_sub(i8 signext 77, i32 %23, i8* %24, %struct._IO_FILE* %25) #5
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.18, %if.end
  %26 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %27 = bitcast %struct.gx_device_printer_s* %26 to %struct.gx_device_bjc800_s*
  %bjc_p21 = getelementptr inbounds %struct.gx_device_bjc800_s, %struct.gx_device_bjc800_s* %27, i32 0, i32 73
  %printColors22 = getelementptr inbounds %struct.bjc_params, %struct.bjc_params* %bjc_p21, i32 0, i32 7
  %28 = load i32, i32* %printColors22, align 4, !tbaa !110
  %and23 = and i32 %28, 1
  %tobool24 = icmp ne i32 %and23, 0
  br i1 %tobool24, label %if.then.25, label %if.end.27

if.then.25:                                       ; preds = %if.end.20
  %29 = load i32, i32* %rastsize.addr, align 4, !tbaa !5
  %30 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8, !tbaa !1
  %call26 = call i32 @bjc_raster_cmd_sub(i8 signext 67, i32 %29, i8* %30, %struct._IO_FILE* %31) #5
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.25, %if.end.20
  br label %if.end.28

if.end.28:                                        ; preds = %if.end.27, %if.then.5
  br label %if.end.39

if.else.29:                                       ; preds = %if.else
  %32 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %33 = bitcast %struct.gx_device_printer_s* %32 to %struct.gx_device_bjc800_s*
  %bjc_p30 = getelementptr inbounds %struct.gx_device_bjc800_s, %struct.gx_device_bjc800_s* %33, i32 0, i32 73
  %printColors31 = getelementptr inbounds %struct.bjc_params, %struct.bjc_params* %bjc_p30, i32 0, i32 7
  %34 = load i32, i32* %printColors31, align 4, !tbaa !110
  %35 = load i32, i32* %c_id.addr, align 4, !tbaa !5
  %idxprom = sext i32 %35 to i64
  %arrayidx = getelementptr inbounds [4 x i8], [4 x i8]* @bjc_raster_cmd.ymckCodes, i32 0, i64 %idxprom
  %36 = load i8, i8* %arrayidx, align 1, !tbaa !48
  %conv = zext i8 %36 to i32
  %and32 = and i32 %34, %conv
  %tobool33 = icmp ne i32 %and32, 0
  br i1 %tobool33, label %if.then.34, label %if.end.38

if.then.34:                                       ; preds = %if.else.29
  %37 = load i32, i32* %c_id.addr, align 4, !tbaa !5
  %idxprom35 = sext i32 %37 to i64
  %arrayidx36 = getelementptr inbounds [5 x i8], [5 x i8]* @.str.129, i32 0, i64 %idxprom35
  %38 = load i8, i8* %arrayidx36, align 1, !tbaa !48
  %39 = load i32, i32* %rastsize.addr, align 4, !tbaa !5
  %40 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8, !tbaa !1
  %call37 = call i32 @bjc_raster_cmd_sub(i8 signext %38, i32 %39, i8* %40, %struct._IO_FILE* %41) #5
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.34, %if.else.29
  br label %if.end.39

if.end.39:                                        ; preds = %if.end.38, %if.end.28
  br label %if.end.40

if.end.40:                                        ; preds = %if.end.39, %if.then
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @bjc_finish_page(%struct.gx_device_printer_s* %pdev, %struct._IO_FILE* %f) #1 {
entry:
  %pdev.addr = alloca %struct.gx_device_printer_s*, align 8
  %f.addr = alloca %struct._IO_FILE*, align 8
  store %struct.gx_device_printer_s* %pdev, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  store %struct._IO_FILE* %f, %struct._IO_FILE** %f.addr, align 8, !tbaa !1
  %0 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8, !tbaa !1
  %call = call i32 @bjc_cmd(i8 zeroext 97, i32 1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.131, i32 0, i32 0), %struct.gx_device_printer_s* %0, %struct._IO_FILE* %1) #5
  %2 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8, !tbaa !1
  %call1 = call i32 @bjc_cmd(i8 zeroext 98, i32 1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.131, i32 0, i32 0), %struct.gx_device_printer_s* %2, %struct._IO_FILE* %3) #5
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8, !tbaa !1
  %call2 = call i32 @fputc(i32 12, %struct._IO_FILE* %4) #5
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8, !tbaa !1
  %call3 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.56, i32 0, i32 0), %struct._IO_FILE* %5) #5
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @bjc_cmd(i8 zeroext %cmd, i32 %argsize, i8* %arg, %struct.gx_device_printer_s* %pdev, %struct._IO_FILE* %f) #1 {
entry:
  %cmd.addr = alloca i8, align 1
  %argsize.addr = alloca i32, align 4
  %arg.addr = alloca i8*, align 8
  %pdev.addr = alloca %struct.gx_device_printer_s*, align 8
  %f.addr = alloca %struct._IO_FILE*, align 8
  store i8 %cmd, i8* %cmd.addr, align 1, !tbaa !48
  store i32 %argsize, i32* %argsize.addr, align 4, !tbaa !5
  store i8* %arg, i8** %arg.addr, align 8, !tbaa !1
  store %struct.gx_device_printer_s* %pdev, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  store %struct._IO_FILE* %f, %struct._IO_FILE** %f.addr, align 8, !tbaa !1
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8, !tbaa !1
  %call = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.120, i32 0, i32 0), %struct._IO_FILE* %0) #5
  %1 = load i8, i8* %cmd.addr, align 1, !tbaa !48
  %conv = zext i8 %1 to i32
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8, !tbaa !1
  %call1 = call i32 @_IO_putc(i32 %conv, %struct._IO_FILE* %2) #5
  %3 = load i32, i32* %argsize.addr, align 4, !tbaa !5
  %rem = srem i32 %3, 256
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8, !tbaa !1
  %call2 = call i32 @fputc(i32 %rem, %struct._IO_FILE* %4) #5
  %5 = load i32, i32* %argsize.addr, align 4, !tbaa !5
  %div = sdiv i32 %5, 256
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8, !tbaa !1
  %call3 = call i32 @fputc(i32 %div, %struct._IO_FILE* %6) #5
  %7 = load i8*, i8** %arg.addr, align 8, !tbaa !1
  %8 = load i32, i32* %argsize.addr, align 4, !tbaa !5
  %conv4 = sext i32 %8 to i64
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8, !tbaa !1
  %call5 = call i64 @fwrite(i8* %7, i64 1, i64 %conv4, %struct._IO_FILE* %9) #5
  ret i32 0
}

declare i32 @_IO_putc(i32, %struct._IO_FILE*) #0

; Function Attrs: nounwind
declare i8* @memcpy(i8*, i8*, i64) #4

declare void @memflip8x8(i8*, i32, i8*, i32) #0

declare i32 @errprintf(%struct.gs_memory_s*, i8*, ...) #0

; Function Attrs: nounwind uwtable
define internal i32 @bjc_raster_cmd_sub(i8 signext %c, i32 %rastsize, i8* %data, %struct._IO_FILE* %f) #1 {
entry:
  %c.addr = alloca i8, align 1
  %rastsize.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %f.addr = alloca %struct._IO_FILE*, align 8
  store i8 %c, i8* %c.addr, align 1, !tbaa !48
  store i32 %rastsize, i32* %rastsize.addr, align 4, !tbaa !5
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store %struct._IO_FILE* %f, %struct._IO_FILE** %f.addr, align 8, !tbaa !1
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8, !tbaa !1
  %call = call i32 @fputs(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.130, i32 0, i32 0), %struct._IO_FILE* %0) #5
  %1 = load i32, i32* %rastsize.addr, align 4, !tbaa !5
  %add = add nsw i32 %1, 1
  %rem = srem i32 %add, 256
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8, !tbaa !1
  %call1 = call i32 @fputc(i32 %rem, %struct._IO_FILE* %2) #5
  %3 = load i32, i32* %rastsize.addr, align 4, !tbaa !5
  %add2 = add nsw i32 %3, 1
  %div = sdiv i32 %add2, 256
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8, !tbaa !1
  %call3 = call i32 @fputc(i32 %div, %struct._IO_FILE* %4) #5
  %5 = load i8, i8* %c.addr, align 1, !tbaa !48
  %conv = sext i8 %5 to i32
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8, !tbaa !1
  %call4 = call i32 @_IO_putc(i32 %conv, %struct._IO_FILE* %6) #5
  %7 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %8 = load i32, i32* %rastsize.addr, align 4, !tbaa !5
  %conv5 = sext i32 %8 to i64
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8, !tbaa !1
  %call6 = call i64 @fwrite(i8* %7, i64 1, i64 %conv5, %struct._IO_FILE* %9) #5
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8, !tbaa !1
  %call7 = call i32 @_IO_putc(i32 13, %struct._IO_FILE* %10) #5
  ret i32 0
}

attributes #0 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nobuiltin }
attributes #6 = { nobuiltin nounwind readonly }
attributes #7 = { nobuiltin nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !3, i64 0}
!7 = !{!8, !6, i64 18484}
!8 = !{!"gx_device_bjc800_s", !6, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !6, i64 40, !2, i64 48, !9, i64 56, !6, i64 80, !6, i64 84, !6, i64 88, !11, i64 96, !14, i64 816, !6, i64 832, !6, i64 836, !6, i64 840, !6, i64 844, !6, i64 848, !6, i64 852, !3, i64 856, !3, i64 864, !6, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !10, i64 928, !10, i64 936, !6, i64 944, !6, i64 948, !6, i64 952, !6, i64 956, !6, i64 960, !10, i64 968, !10, i64 976, !15, i64 984, !6, i64 1052, !6, i64 1056, !16, i64 1064, !2, i64 1104, !3, i64 1112, !18, i64 1120, !19, i64 1144, !3, i64 1728, !20, i64 12968, !3, i64 13056, !6, i64 17152, !6, i64 17156, !6, i64 17160, !6, i64 17164, !6, i64 17168, !6, i64 17172, !2, i64 17176, !10, i64 17184, !2, i64 17192, !2, i64 17200, !2, i64 17208, !2, i64 17216, !2, i64 17224, !6, i64 17232, !2, i64 17240, !6, i64 17248, !6, i64 17252, !22, i64 17256, !6, i64 17288, !2, i64 17296, !19, i64 17304, !19, i64 17888, !12, i64 18472, !6, i64 18476, !6, i64 18480, !6, i64 18484, !23, i64 18488, !24, i64 18492}
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
!23 = !{!"float", !3, i64 0}
!24 = !{!"", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28}
!25 = !{!12, !12, i64 0}
!26 = !{!27, !6, i64 18480}
!27 = !{!"", !6, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !6, i64 40, !2, i64 48, !9, i64 56, !6, i64 80, !6, i64 84, !6, i64 88, !11, i64 96, !14, i64 816, !6, i64 832, !6, i64 836, !6, i64 840, !6, i64 844, !6, i64 848, !6, i64 852, !3, i64 856, !3, i64 864, !6, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !10, i64 928, !10, i64 936, !6, i64 944, !6, i64 948, !6, i64 952, !6, i64 956, !6, i64 960, !10, i64 968, !10, i64 976, !15, i64 984, !6, i64 1052, !6, i64 1056, !16, i64 1064, !2, i64 1104, !3, i64 1112, !18, i64 1120, !19, i64 1144, !3, i64 1728, !20, i64 12968, !3, i64 13056, !6, i64 17152, !6, i64 17156, !6, i64 17160, !6, i64 17164, !6, i64 17168, !6, i64 17172, !2, i64 17176, !10, i64 17184, !2, i64 17192, !2, i64 17200, !2, i64 17208, !2, i64 17216, !2, i64 17224, !6, i64 17232, !2, i64 17240, !6, i64 17248, !6, i64 17252, !22, i64 17256, !6, i64 17288, !2, i64 17296, !19, i64 17304, !19, i64 17888, !12, i64 18472, !6, i64 18476, !6, i64 18480}
!28 = !{!10, !10, i64 0}
!29 = !{!30, !12, i64 108}
!30 = !{!"gx_device_s", !6, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !6, i64 40, !2, i64 48, !9, i64 56, !6, i64 80, !6, i64 84, !6, i64 88, !11, i64 96, !14, i64 816, !6, i64 832, !6, i64 836, !6, i64 840, !6, i64 844, !6, i64 848, !6, i64 852, !3, i64 856, !3, i64 864, !6, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !10, i64 928, !10, i64 936, !6, i64 944, !6, i64 948, !6, i64 952, !6, i64 956, !6, i64 960, !10, i64 968, !10, i64 976, !15, i64 984, !6, i64 1052, !6, i64 1056, !16, i64 1064, !2, i64 1104, !3, i64 1112, !18, i64 1120, !19, i64 1144}
!31 = !{!30, !6, i64 100}
!32 = !{!33, !6, i64 18480}
!33 = !{!"gx_device_cdj_s", !6, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !6, i64 40, !2, i64 48, !9, i64 56, !6, i64 80, !6, i64 84, !6, i64 88, !11, i64 96, !14, i64 816, !6, i64 832, !6, i64 836, !6, i64 840, !6, i64 844, !6, i64 848, !6, i64 852, !3, i64 856, !3, i64 864, !6, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !10, i64 928, !10, i64 936, !6, i64 944, !6, i64 948, !6, i64 952, !6, i64 956, !6, i64 960, !10, i64 968, !10, i64 976, !15, i64 984, !6, i64 1052, !6, i64 1056, !16, i64 1064, !2, i64 1104, !3, i64 1112, !18, i64 1120, !19, i64 1144, !3, i64 1728, !20, i64 12968, !3, i64 13056, !6, i64 17152, !6, i64 17156, !6, i64 17160, !6, i64 17164, !6, i64 17168, !6, i64 17172, !2, i64 17176, !10, i64 17184, !2, i64 17192, !2, i64 17200, !2, i64 17208, !2, i64 17216, !2, i64 17224, !6, i64 17232, !2, i64 17240, !6, i64 17248, !6, i64 17252, !22, i64 17256, !6, i64 17288, !2, i64 17296, !19, i64 17304, !19, i64 17888, !12, i64 18472, !6, i64 18476, !6, i64 18480, !6, i64 18484, !6, i64 18488}
!34 = !{!33, !6, i64 18484}
!35 = !{!33, !6, i64 18488}
!36 = !{!23, !23, i64 0}
!37 = !{!8, !23, i64 18488}
!38 = !{!27, !12, i64 18472}
!39 = !{!11, !12, i64 12}
!40 = !{!27, !6, i64 18476}
!41 = !{!30, !2, i64 1552}
!42 = !{!30, !2, i64 1184}
!43 = !{!30, !2, i64 1560}
!44 = !{!30, !6, i64 84}
!45 = !{!30, !2, i64 1264}
!46 = !{!30, !2, i64 1192}
!47 = !{i64 0, i64 8, !28, i64 8, i64 8, !28, i64 16, i64 4, !5, i64 20, i64 4, !5, i64 24, i64 8, !28, i64 32, i64 4, !5, i64 36, i64 4, !48}
!48 = !{!3, !3, i64 0}
!49 = !{!30, !6, i64 832}
!50 = !{!30, !6, i64 836}
!51 = !{!11, !6, i64 4}
!52 = !{!11, !6, i64 20}
!53 = !{!11, !6, i64 16}
!54 = !{!11, !6, i64 24}
!55 = !{!11, !6, i64 28}
!56 = !{!57, !2, i64 0}
!57 = !{!"gs_param_list_s", !2, i64 0, !2, i64 8, !6, i64 16}
!58 = !{!59, !2, i64 56}
!59 = !{!"gs_param_list_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64}
!60 = !{i64 0, i64 4, !5, i64 4, i64 4, !5, i64 8, i64 4, !48, i64 12, i64 2, !25, i64 14, i64 1, !48, i64 16, i64 4, !5, i64 20, i64 4, !5, i64 24, i64 4, !5, i64 28, i64 4, !5, i64 32, i64 4, !5, i64 36, i64 4, !5, i64 40, i64 4, !48, i64 44, i64 64, !48, i64 108, i64 64, !48, i64 176, i64 512, !48, i64 688, i64 8, !1, i64 696, i64 4, !48, i64 704, i64 8, !28, i64 712, i64 4, !5}
!61 = !{!33, !12, i64 108}
!62 = !{!63, !6, i64 18484}
!63 = !{!"gx_device_pjxl_s", !6, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !6, i64 40, !2, i64 48, !9, i64 56, !6, i64 80, !6, i64 84, !6, i64 88, !11, i64 96, !14, i64 816, !6, i64 832, !6, i64 836, !6, i64 840, !6, i64 844, !6, i64 848, !6, i64 852, !3, i64 856, !3, i64 864, !6, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !10, i64 928, !10, i64 936, !6, i64 944, !6, i64 948, !6, i64 952, !6, i64 956, !6, i64 960, !10, i64 968, !10, i64 976, !15, i64 984, !6, i64 1052, !6, i64 1056, !16, i64 1064, !2, i64 1104, !3, i64 1112, !18, i64 1120, !19, i64 1144, !3, i64 1728, !20, i64 12968, !3, i64 13056, !6, i64 17152, !6, i64 17156, !6, i64 17160, !6, i64 17164, !6, i64 17168, !6, i64 17172, !2, i64 17176, !10, i64 17184, !2, i64 17192, !2, i64 17200, !2, i64 17208, !2, i64 17216, !2, i64 17224, !6, i64 17232, !2, i64 17240, !6, i64 17248, !6, i64 17252, !22, i64 17256, !6, i64 17288, !2, i64 17296, !19, i64 17304, !19, i64 17888, !12, i64 18472, !6, i64 18476, !6, i64 18480, !6, i64 18484, !6, i64 18488}
!64 = !{!63, !6, i64 18488}
!65 = !{!8, !6, i64 18496}
!66 = !{!8, !6, i64 18508}
!67 = !{!8, !6, i64 18512}
!68 = !{!8, !6, i64 18500}
!69 = !{!70, !2, i64 0}
!70 = !{!"gs_param_string_s", !2, i64 0, !6, i64 8, !6, i64 12}
!71 = !{!70, !6, i64 8}
!72 = !{!70, !6, i64 12}
!73 = !{i64 0, i64 4, !5, i64 4, i64 4, !5, i64 8, i64 4, !5, i64 12, i64 4, !5, i64 16, i64 4, !5, i64 20, i64 4, !5, i64 24, i64 4, !5, i64 28, i64 4, !5, i64 32, i64 4, !5}
!74 = !{i64 0, i64 4, !5, i64 4, i64 4, !5, i64 8, i64 4, !5, i64 12, i64 4, !5, i64 16, i64 4, !5, i64 20, i64 4, !5, i64 24, i64 4, !5, i64 28, i64 4, !5}
!75 = !{!24, !6, i64 12}
!76 = !{!24, !6, i64 8}
!77 = !{!78, !6, i64 8}
!78 = !{!"gs_param_float_array_s", !2, i64 0, !6, i64 8, !6, i64 12}
!79 = !{!78, !2, i64 0}
!80 = !{!24, !6, i64 20}
!81 = !{!82, !2, i64 0}
!82 = !{!"", !2, i64 0, !6, i64 8}
!83 = !{!82, !6, i64 8}
!84 = !{!85, !85, i64 0}
!85 = !{!"double", !3, i64 0}
!86 = !{!87, !6, i64 100}
!87 = !{!"gx_device_printer_s", !6, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !6, i64 40, !2, i64 48, !9, i64 56, !6, i64 80, !6, i64 84, !6, i64 88, !11, i64 96, !14, i64 816, !6, i64 832, !6, i64 836, !6, i64 840, !6, i64 844, !6, i64 848, !6, i64 852, !3, i64 856, !3, i64 864, !6, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !10, i64 928, !10, i64 936, !6, i64 944, !6, i64 948, !6, i64 952, !6, i64 956, !6, i64 960, !10, i64 968, !10, i64 976, !15, i64 984, !6, i64 1052, !6, i64 1056, !16, i64 1064, !2, i64 1104, !3, i64 1112, !18, i64 1120, !19, i64 1144, !3, i64 1728, !20, i64 12968, !3, i64 13056, !6, i64 17152, !6, i64 17156, !6, i64 17160, !6, i64 17164, !6, i64 17168, !6, i64 17172, !2, i64 17176, !10, i64 17184, !2, i64 17192, !2, i64 17200, !2, i64 17208, !2, i64 17216, !2, i64 17224, !6, i64 17232, !2, i64 17240, !6, i64 17248, !6, i64 17252, !22, i64 17256, !6, i64 17288, !2, i64 17296, !19, i64 17304, !19, i64 17888}
!88 = !{!87, !12, i64 108}
!89 = !{!90, !6, i64 2080}
!90 = !{!"", !2, i64 0, !6, i64 8, !3, i64 16, !2, i64 2064, !6, i64 2072, !6, i64 2076, !6, i64 2080, !6, i64 2084, !6, i64 2088, !6, i64 2092, !2, i64 2096}
!91 = !{!87, !2, i64 24}
!92 = !{!90, !2, i64 2096}
!93 = !{!90, !6, i64 2076}
!94 = !{!95, !2, i64 200}
!95 = !{!"gs_memory_s", !2, i64 0, !96, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!96 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!97 = !{!95, !2, i64 88}
!98 = !{!90, !6, i64 8}
!99 = !{!90, !2, i64 0}
!100 = !{!90, !2, i64 2064}
!101 = !{!90, !6, i64 2072}
!102 = !{!87, !6, i64 836}
!103 = !{!87, !6, i64 832}
!104 = !{!95, !2, i64 24}
!105 = !{!8, !6, i64 18492}
!106 = !{!8, !6, i64 18504}
!107 = !{!90, !6, i64 2084}
!108 = !{!90, !6, i64 2092}
!109 = !{!90, !6, i64 2088}
!110 = !{!8, !6, i64 18520}
