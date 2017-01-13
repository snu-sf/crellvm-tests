; ModuleID = './gdevmjc.bc'
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
%struct.gx_device_mj_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [11240 x i8], %struct.gx_printer_device_procs_s, [4096 x i8], i32, i32, i32, i32, i32, i32, %struct._IO_FILE*, i64, i8*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s*, i32)*, %struct.gx_page_queue_s*, i32, %struct.gx_device_printer_s*, i32, i32, %struct.bg_print_s, i32, %struct.gx_saved_pages_list_s*, %struct.gx_device_procs_s, %struct.gx_device_procs_s, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@matrix2 = global [16384 x i16] [i16 3134, i16 12734, i16 9370, i16 2952, i16 10392, i16 5679, i16 10990, i16 4820, i16 8433, i16 15880, i16 3644, i16 9290, i16 15452, i16 4138, i16 13998, i16 3509, i16 10194, i16 14196, i16 464, i16 14907, i16 6343, i16 13676, i16 3692, i16 10552, i16 6835, i16 15166, i16 1241, i16 11256, i16 7296, i16 2172, i16 12158, i16 1083, i16 10590, i16 2431, i16 12462, i16 5922, i16 14533, i16 7978, i16 1169, i16 11131, i16 5787, i16 10375, i16 5139, i16 12891, i16 973, i16 11508, i16 4506, i16 9329, i16 6568, i16 10037, i16 5290, i16 15696, i16 8437, i16 321, i16 8883, i16 12192, i16 1622, i16 9167, i16 7140, i16 12304, i16 1810, i16 7583, i16 14172, i16 4613, i16 12416, i16 1712, i16 10530, i16 775, i16 11460, i16 2083, i16 16024, i16 9607, i16 3235, i16 10580, i16 908, i16 12403, i16 9545, i16 3553, i16 12580, i16 1093, i16 11358, i16 1973, i16 10830, i16 2654, i16 13744, i16 818, i16 9090, i16 12690, i16 1193, i16 11264, i16 5917, i16 12058, i16 3548, i16 10535, i16 933, i16 9758, i16 2111, i16 15108, i16 7678, i16 1100, i16 11116, i16 2490, i16 5941, i16 15736, i16 7472, i16 2237, i16 14285, i16 8400, i16 1666, i16 8911, i16 12236, i16 4437, i16 12910, i16 6213, i16 9060, i16 11280, i16 6626, i16 2186, i16 15177, i16 6259, i16 13442, i16 4084, i16 10229, i16 3284, i16 11786, i16 4994, i16 8915, i16 11118, i16 15359, i16 367, i16 6546, i16 16223, i16 1483, i16 14575, i16 3323, i16 13675, i16 10076, i16 1027, i16 11695, i16 7554, i16 271, i16 9797, i16 6813, i16 12024, i16 1495, i16 7255, i16 12484, i16 2979, i16 11893, i16 1065, i16 7664, i16 15758, i16 2400, i16 8342, i16 13089, i16 3831, i16 15022, i16 8982, i16 6457, i16 14333, i16 5225, i16 15109, i16 4148, i16 11438, i16 2114, i16 11960, i16 8940, i16 3156, i16 13379, i16 323, i16 12166, i16 6233, i16 14805, i16 5585, i16 13700, i16 25, i16 15368, i16 2498, i16 11119, i16 1852, i16 12034, i16 7003, i16 14889, i16 4184, i16 7973, i16 15595, i16 994, i16 9466, i16 6306, i16 12712, i16 2338, i16 9745, i16 6747, i16 16198, i16 4514, i16 13589, i16 5443, i16 12549, i16 3852, i16 8111, i16 11542, i16 6099, i16 15760, i16 8002, i16 1689, i16 15357, i16 4949, i16 14248, i16 4301, i16 16295, i16 4777, i16 10202, i16 5642, i16 11710, i16 6882, i16 4260, i16 16019, i16 7634, i16 2609, i16 8636, i16 15355, i16 5466, i16 13773, i16 5061, i16 12978, i16 8919, i16 4187, i16 13246, i16 6823, i16 8734, i16 12867, i16 887, i16 12117, i16 8191, i16 3768, i16 13042, i16 6974, i16 14908, i16 939, i16 10419, i16 2089, i16 16183, i16 670, i16 5450, i16 15677, i16 8809, i16 5314, i16 12005, i16 1944, i16 10779, i16 765, i16 12881, i16 6936, i16 15852, i16 1127, i16 7353, i16 4175, i16 8719, i16 11324, i16 4376, i16 11733, i16 6877, i16 9223, i16 1760, i16 6440, i16 14332, i16 5035, i16 13538, i16 6002, i16 15034, i16 2210, i16 8918, i16 15705, i16 4351, i16 9647, i16 7890, i16 3977, i16 14669, i16 9164, i16 5364, i16 11530, i16 4742, i16 9427, i16 7754, i16 165, i16 13321, i16 3217, i16 8335, i16 9924, i16 423, i16 9128, i16 6539, i16 13749, i16 3848, i16 15486, i16 6441, i16 8645, i16 15210, i16 3472, i16 9620, i16 2032, i16 10742, i16 3057, i16 10402, i16 5114, i16 12467, i16 6288, i16 14492, i16 4315, i16 10524, i16 2852, i16 9628, i16 12781, i16 3808, i16 10949, i16 3180, i16 15440, i16 5502, i16 8368, i16 15239, i16 1200, i16 8188, i16 9409, i16 2509, i16 10152, i16 6392, i16 13741, i16 350, i16 14763, i16 2248, i16 8960, i16 5397, i16 13432, i16 7198, i16 9080, i16 2382, i16 9712, i16 7572, i16 13234, i16 1424, i16 15700, i16 3349, i16 14400, i16 9870, i16 2178, i16 10265, i16 14024, i16 7321, i16 1652, i16 11791, i16 2464, i16 10799, i16 7203, i16 294, i16 14323, i16 8212, i16 1600, i16 15027, i16 4398, i16 10786, i16 5296, i16 15417, i16 10052, i16 209, i16 11231, i16 5221, i16 12744, i16 4912, i16 11754, i16 6904, i16 8569, i16 11892, i16 3209, i16 10975, i16 295, i16 7570, i16 14382, i16 5677, i16 15597, i16 8515, i16 2265, i16 10053, i16 6155, i16 12357, i16 7951, i16 14678, i16 2135, i16 13978, i16 8315, i16 598, i16 15512, i16 7483, i16 11457, i16 4183, i16 10466, i16 2839, i16 11283, i16 5470, i16 12616, i16 3685, i16 8255, i16 13165, i16 1825, i16 16200, i16 10848, i16 6614, i16 2131, i16 13731, i16 821, i16 14481, i16 1875, i16 16152, i16 10176, i16 4838, i16 11478, i16 1725, i16 13028, i16 6931, i16 16280, i16 1428, i16 9577, i16 7733, i16 613, i16 12828, i16 2223, i16 7042, i16 11439, i16 4868, i16 13048, i16 7661, i16 15655, i16 4092, i16 13560, i16 7450, i16 768, i16 8659, i16 13010, i16 1266, i16 15926, i16 6799, i16 571, i16 14353, i16 5126, i16 13136, i16 7505, i16 343, i16 12031, i16 4158, i16 13257, i16 3738, i16 14120, i16 6912, i16 15150, i16 1315, i16 7377, i16 10808, i16 4551, i16 7823, i16 14078, i16 3338, i16 10082, i16 261, i16 12105, i16 6810, i16 12868, i16 456, i16 6330, i16 11886, i16 7675, i16 9465, i16 278, i16 6241, i16 13600, i16 5626, i16 720, i16 11470, i16 6031, i16 8907, i16 14529, i16 3792, i16 15815, i16 6357, i16 10722, i16 2910, i16 11837, i16 5799, i16 9810, i16 3078, i16 12669, i16 1839, i16 6536, i16 13663, i16 3116, i16 9356, i16 2289, i16 14388, i16 8115, i16 3419, i16 13326, i16 1615, i16 14014, i16 4411, i16 14877, i16 9579, i16 3571, i16 11307, i16 3087, i16 6508, i16 13227, i16 4570, i16 14268, i16 1643, i16 12908, i16 3864, i16 7613, i16 9491, i16 5318, i16 12323, i16 3954, i16 13349, i16 2311, i16 16321, i16 781, i16 13936, i16 8727, i16 1245, i16 7346, i16 14390, i16 620, i16 6221, i16 11686, i16 5723, i16 75, i16 9750, i16 12381, i16 4561, i16 10395, i16 6116, i16 11874, i16 5765, i16 2631, i16 14091, i16 6229, i16 15714, i16 4325, i16 11810, i16 3609, i16 11219, i16 4482, i16 14855, i16 10480, i16 4173, i16 8264, i16 13812, i16 1250, i16 16327, i16 6666, i16 665, i16 8579, i16 11851, i16 1497, i16 9708, i16 16222, i16 3375, i16 7573, i16 10834, i16 5028, i16 11724, i16 8571, i16 6168, i16 11414, i16 1444, i16 9925, i16 14634, i16 2927, i16 11030, i16 6224, i16 11890, i16 162, i16 11318, i16 4896, i16 8972, i16 15544, i16 3417, i16 13327, i16 9490, i16 816, i16 11676, i16 6237, i16 15139, i16 4612, i16 14504, i16 3744, i16 8465, i16 14827, i16 5330, i16 2267, i16 15031, i16 7265, i16 12507, i16 3595, i16 9303, i16 14674, i16 4105, i16 15947, i16 432, i16 7901, i16 12448, i16 1378, i16 10120, i16 3973, i16 15536, i16 5191, i16 13693, i16 411, i16 16242, i16 4099, i16 9323, i16 14641, i16 4502, i16 7848, i16 16034, i16 6346, i16 9760, i16 398, i16 14997, i16 5891, i16 9882, i16 7087, i16 12784, i16 2355, i16 6570, i16 12493, i16 1365, i16 9381, i16 14773, i16 227, i16 10656, i16 3460, i16 9342, i16 740, i16 10245, i16 15688, i16 1147, i16 13145, i16 2672, i16 10856, i16 6039, i16 9576, i16 5140, i16 11804, i16 7225, i16 3433, i16 15842, i16 10292, i16 4460, i16 10616, i16 15388, i16 2408, i16 8681, i16 12839, i16 5054, i16 8170, i16 15892, i16 3051, i16 13467, i16 3436, i16 8419, i16 12542, i16 7173, i16 728, i16 9310, i16 8012, i16 2062, i16 14445, i16 7866, i16 12603, i16 2532, i16 5881, i16 15970, i16 9911, i16 2954, i16 10852, i16 3988, i16 10064, i16 14103, i16 2822, i16 6119, i16 15014, i16 4679, i16 9056, i16 6606, i16 14257, i16 3131, i16 13831, i16 1975, i16 14838, i16 2422, i16 7683, i16 16340, i16 3490, i16 6500, i16 13562, i16 8943, i16 2043, i16 7545, i16 14685, i16 8536, i16 2388, i16 12808, i16 5579, i16 12006, i16 1787, i16 6567, i16 16340, i16 5030, i16 13105, i16 2989, i16 10907, i16 1142, i16 9939, i16 13438, i16 3124, i16 9009, i16 11182, i16 4088, i16 11607, i16 1702, i16 15632, i16 7764, i16 2949, i16 12825, i16 6775, i16 10644, i16 3135, i16 9181, i16 5515, i16 14072, i16 8361, i16 1019, i16 11234, i16 3830, i16 10387, i16 6064, i16 11455, i16 7598, i16 795, i16 8678, i16 11913, i16 1179, i16 12874, i16 4353, i16 12338, i16 8880, i16 2443, i16 15825, i16 1007, i16 9161, i16 7691, i16 16218, i16 4563, i16 13602, i16 3681, i16 7172, i16 12154, i16 5542, i16 16040, i16 6832, i16 14987, i16 6261, i16 3188, i16 11248, i16 4875, i16 15138, i16 7283, i16 304, i16 14528, i16 7986, i16 1688, i16 15184, i16 6403, i16 9117, i16 2655, i16 13474, i16 8464, i16 3844, i16 7639, i16 14348, i16 3226, i16 15222, i16 1322, i16 6852, i16 11147, i16 481, i16 9282, i16 15300, i16 1349, i16 9866, i16 14765, i16 3526, i16 13866, i16 10080, i16 5409, i16 66, i16 6733, i16 13948, i16 8728, i16 907, i16 5272, i16 14671, i16 7543, i16 12795, i16 1816, i16 9032, i16 7389, i16 10963, i16 3607, i16 11991, i16 2116, i16 11474, i16 259, i16 9873, i16 5950, i16 10295, i16 4814, i16 12611, i16 9382, i16 4512, i16 11692, i16 8597, i16 1081, i16 5224, i16 15890, i16 10693, i16 3584, i16 5782, i16 16089, i16 7238, i16 663, i16 8704, i16 14429, i16 10333, i16 2533, i16 10636, i16 1508, i16 9414, i16 5859, i16 16056, i16 7330, i16 1817, i16 8187, i16 15783, i16 958, i16 13861, i16 5844, i16 8343, i16 10410, i16 1218, i16 11107, i16 8068, i16 1845, i16 14212, i16 5134, i16 15421, i16 7628, i16 2279, i16 12789, i16 6277, i16 8677, i16 14558, i16 2660, i16 13503, i16 1466, i16 15217, i16 6779, i16 13362, i16 3917, i16 10901, i16 2828, i16 15458, i16 7496, i16 3705, i16 11404, i16 4767, i16 10876, i16 5124, i16 11586, i16 549, i16 10702, i16 5815, i16 15457, i16 8632, i16 2615, i16 13455, i16 1900, i16 11075, i16 2459, i16 8775, i16 13611, i16 5703, i16 9833, i16 1541, i16 11900, i16 8798, i16 3714, i16 12900, i16 9993, i16 4332, i16 12064, i16 157, i16 11570, i16 6689, i16 1638, i16 13880, i16 9910, i16 1121, i16 10717, i16 3939, i16 10086, i16 13838, i16 4159, i16 14611, i16 7495, i16 3853, i16 11632, i16 4408, i16 7732, i16 10688, i16 1186, i16 6147, i16 15573, i16 8205, i16 11033, i16 1929, i16 11650, i16 7331, i16 12374, i16 8867, i16 191, i16 6201, i16 14446, i16 4331, i16 15850, i16 415, i16 13632, i16 7792, i16 14718, i16 5781, i16 15520, i16 4442, i16 13336, i16 1049, i16 15369, i16 7163, i16 113, i16 14025, i16 1934, i16 15115, i16 7392, i16 12882, i16 6007, i16 853, i16 10208, i16 12432, i16 1590, i16 9298, i16 11503, i16 3089, i16 5200, i16 7718, i16 13775, i16 4385, i16 15422, i16 5256, i16 12670, i16 3945, i16 11352, i16 6170, i16 12356, i16 4263, i16 7489, i16 10096, i16 2789, i16 13119, i16 4542, i16 14965, i16 4322, i16 12106, i16 5788, i16 8782, i16 12644, i16 815, i16 11975, i16 8983, i16 4960, i16 16088, i16 1932, i16 6937, i16 12032, i16 5573, i16 9994, i16 4345, i16 10517, i16 1964, i16 15718, i16 5924, i16 10087, i16 8323, i16 1374, i16 14426, i16 6706, i16 13804, i16 2048, i16 14984, i16 3498, i16 14145, i16 2933, i16 10158, i16 1058, i16 11668, i16 4929, i16 9646, i16 8083, i16 5178, i16 7313, i16 12232, i16 102, i16 16101, i16 3918, i16 14051, i16 5393, i16 15902, i16 7603, i16 2724, i16 8449, i16 13738, i16 3184, i16 14722, i16 4584, i16 16146, i16 7463, i16 9011, i16 4865, i16 12178, i16 6032, i16 13232, i16 8402, i16 2094, i16 7786, i16 9694, i16 1755, i16 12937, i16 5988, i16 16235, i16 2207, i16 12970, i16 7279, i16 12233, i16 2858, i16 13167, i16 4233, i16 15237, i16 3320, i16 14222, i16 1729, i16 5759, i16 15316, i16 9557, i16 3214, i16 11369, i16 5618, i16 12628, i16 6784, i16 1338, i16 9972, i16 2630, i16 8495, i16 11798, i16 3662, i16 10672, i16 4153, i16 9092, i16 12148, i16 5378, i16 10435, i16 4721, i16 10926, i16 3062, i16 9550, i16 14483, i16 2742, i16 7081, i16 13899, i16 3968, i16 14969, i16 8133, i16 15814, i16 71, i16 8553, i16 11853, i16 3446, i16 11132, i16 619, i16 13980, i16 2495, i16 15312, i16 143, i16 8817, i16 14433, i16 3817, i16 16174, i16 576, i16 9622, i16 6615, i16 13290, i16 83, i16 16320, i16 2386, i16 6954, i16 11058, i16 3319, i16 14988, i16 178, i16 7282, i16 11637, i16 9030, i16 707, i16 15798, i16 3339, i16 14011, i16 5433, i16 12291, i16 7319, i16 517, i16 13604, i16 4229, i16 12090, i16 9071, i16 142, i16 8215, i16 12531, i16 6409, i16 9257, i16 7207, i16 12423, i16 4056, i16 13098, i16 7780, i16 15228, i16 501, i16 14377, i16 10570, i16 13355, i16 3420, i16 10770, i16 7832, i16 12624, i16 2551, i16 10163, i16 1087, i16 10529, i16 14922, i16 643, i16 7435, i16 10888, i16 5639, i16 10153, i16 2893, i16 12502, i16 514, i16 14571, i16 2712, i16 16340, i16 308, i16 5548, i16 15072, i16 10805, i16 5099, i16 15603, i16 8638, i16 231, i16 10311, i16 8071, i16 3675, i16 15149, i16 5041, i16 10290, i16 1034, i16 9457, i16 6305, i16 10678, i16 4666, i16 10162, i16 13339, i16 2305, i16 7123, i16 12324, i16 1131, i16 10377, i16 3408, i16 9217, i16 14175, i16 4756, i16 12971, i16 7029, i16 1556, i16 16150, i16 6075, i16 13742, i16 2813, i16 6575, i16 15773, i16 3321, i16 13621, i16 490, i16 15650, i16 8318, i16 4339, i16 13182, i16 9095, i16 4974, i16 10773, i16 1104, i16 5839, i16 9693, i16 12522, i16 6437, i16 1249, i16 14205, i16 7611, i16 9743, i16 6656, i16 8276, i16 10028, i16 5353, i16 12841, i16 1537, i16 12009, i16 8562, i16 7016, i16 12314, i16 2053, i16 9345, i16 7884, i16 3861, i16 13401, i16 9863, i16 4392, i16 13011, i16 5721, i16 10600, i16 13806, i16 3462, i16 14726, i16 5091, i16 8498, i16 11674, i16 33, i16 11072, i16 2544, i16 13188, i16 8859, i16 2999, i16 15141, i16 7794, i16 5363, i16 16113, i16 3884, i16 9953, i16 843, i16 15555, i16 1802, i16 8545, i16 15990, i16 5615, i16 2360, i16 6880, i16 11236, i16 5852, i16 1426, i16 4595, i16 14774, i16 6104, i16 2060, i16 6800, i16 11386, i16 4782, i16 13261, i16 3997, i16 9089, i16 6151, i16 15624, i16 1955, i16 13218, i16 955, i16 14134, i16 5825, i16 10427, i16 6460, i16 11209, i16 4454, i16 8791, i16 12946, i16 6540, i16 883, i16 12339, i16 2903, i16 7111, i16 13824, i16 4619, i16 14365, i16 9177, i16 503, i16 11379, i16 4003, i16 16116, i16 5371, i16 13491, i16 448, i16 15752, i16 8101, i16 3919, i16 8412, i16 16147, i16 4598, i16 13885, i16 5128, i16 15172, i16 1874, i16 7569, i16 10774, i16 592, i16 14971, i16 9519, i16 5116, i16 11205, i16 759, i16 9670, i16 12917, i16 1227, i16 9050, i16 7227, i16 12239, i16 6291, i16 1835, i16 11340, i16 6705, i16 305, i16 15318, i16 3172, i16 13106, i16 8858, i16 2391, i16 4719, i16 13354, i16 10193, i16 5437, i16 2734, i16 15910, i16 1370, i16 13424, i16 2937, i16 14736, i16 7730, i16 11087, i16 6011, i16 3227, i16 15272, i16 4999, i16 13937, i16 3113, i16 15145, i16 10264, i16 6543, i16 1077, i16 15729, i16 9068, i16 1592, i16 8164, i16 2522, i16 9777, i16 6572, i16 12544, i16 2122, i16 7835, i16 15044, i16 6472, i16 9618, i16 3993, i16 14654, i16 6622, i16 10238, i16 1768, i16 13482, i16 2507, i16 12020, i16 4636, i16 13176, i16 5408, i16 11883, i16 6230, i16 16, i16 10840, i16 8908, i16 13650, i16 2904, i16 16340, i16 8435, i16 9346, i16 932, i16 11169, i16 8114, i16 15290, i16 470, i16 14415, i16 6664, i16 12404, i16 3091, i16 11523, i16 4839, i16 10366, i16 6602, i16 9380, i16 5143, i16 11393, i16 3248, i16 15693, i16 1477, i16 7717, i16 11857, i16 2454, i16 9247, i16 13521, i16 4364, i16 9988, i16 11987, i16 2671, i16 11223, i16 1812, i16 6395, i16 13566, i16 8140, i16 12680, i16 1640, i16 10525, i16 3097, i16 11952, i16 7211, i16 1363, i16 12849, i16 9762, i16 718, i16 10697, i16 2696, i16 8046, i16 11707, i16 6285, i16 16052, i16 4126, i16 12065, i16 8159, i16 2263, i16 13904, i16 3221, i16 14563, i16 7859, i16 3892, i16 10541, i16 14924, i16 2308, i16 5532, i16 10073, i16 14730, i16 3649, i16 16237, i16 9716, i16 5418, i16 11927, i16 4470, i16 14345, i16 7365, i16 14837, i16 2065, i16 7012, i16 15019, i16 8654, i16 5954, i16 11580, i16 4510, i16 10681, i16 6899, i16 1953, i16 4957, i16 14269, i16 9808, i16 1283, i16 10638, i16 4004, i16 11522, i16 5940, i16 1672, i16 14386, i16 8605, i16 2974, i16 6336, i16 14482, i16 10911, i16 5872, i16 15467, i16 1207, i16 8938, i16 14298, i16 3608, i16 9277, i16 1634, i16 16310, i16 7758, i16 1281, i16 11821, i16 3791, i16 12705, i16 5019, i16 9674, i16 7055, i16 14795, i16 2176, i16 10978, i16 2710, i16 14071, i16 7413, i16 14663, i16 1683, i16 6077, i16 10431, i16 4298, i16 12368, i16 6972, i16 15599, i16 4230, i16 13502, i16 3678, i16 9747, i16 8503, i16 1789, i16 8177, i16 14606, i16 1387, i16 13689, i16 3772, i16 15969, i16 3404, i16 14886, i16 1309, i16 13151, i16 4076, i16 9503, i16 14086, i16 5387, i16 15493, i16 4914, i16 8106, i16 15968, i16 1422, i16 6042, i16 15344, i16 5002, i16 9801, i16 15741, i16 5457, i16 2334, i16 7010, i16 14128, i16 6006, i16 14932, i16 4855, i16 9251, i16 14355, i16 3467, i16 6349, i16 13240, i16 5529, i16 14786, i16 9139, i16 91, i16 10500, i16 2941, i16 13358, i16 6522, i16 3540, i16 12435, i16 8829, i16 6662, i16 10703, i16 2070, i16 15992, i16 7367, i16 4286, i16 8452, i16 13925, i16 928, i16 7985, i16 12832, i16 1515, i16 7631, i16 14010, i16 1991, i16 10268, i16 567, i16 11617, i16 5641, i16 8472, i16 11242, i16 327, i16 12085, i16 2276, i16 8962, i16 14367, i16 685, i16 16269, i16 9208, i16 12614, i16 362, i16 8110, i16 13501, i16 6379, i16 15857, i16 788, i16 8509, i16 11871, i16 4228, i16 11296, i16 7334, i16 12708, i16 4835, i16 617, i16 12321, i16 3689, i16 13345, i16 3046, i16 7425, i16 11353, i16 5664, i16 12210, i16 4565, i16 12866, i16 8614, i16 6027, i16 15861, i16 656, i16 8436, i16 15292, i16 1130, i16 8163, i16 9480, i16 6750, i16 12831, i16 3811, i16 10476, i16 4872, i16 9515, i16 15135, i16 792, i16 13932, i16 2264, i16 13064, i16 5421, i16 12099, i16 1504, i16 7578, i16 12950, i16 5498, i16 16270, i16 4540, i16 9597, i16 7133, i16 8651, i16 11829, i16 396, i16 10594, i16 6908, i16 9869, i16 5710, i16 12246, i16 8206, i16 1992, i16 10577, i16 719, i16 11261, i16 2165, i16 6673, i16 12823, i16 8732, i16 635, i16 12619, i16 6903, i16 1064, i16 12041, i16 7863, i16 11105, i16 3497, i16 9836, i16 852, i16 11447, i16 2553, i16 6734, i16 10922, i16 15131, i16 2445, i16 12172, i16 1690, i16 6869, i16 15582, i16 4884, i16 11253, i16 972, i16 9292, i16 15737, i16 5612, i16 204, i16 15289, i16 5005, i16 8551, i16 11411, i16 395, i16 14214, i16 10344, i16 3742, i16 12520, i16 4212, i16 9325, i16 6410, i16 11714, i16 3821, i16 11041, i16 4845, i16 15508, i16 8721, i16 1402, i16 16136, i16 3536, i16 13537, i16 4659, i16 15579, i16 7129, i16 3750, i16 12757, i16 6122, i16 2747, i16 7896, i16 15057, i16 5285, i16 11192, i16 2484, i16 9180, i16 7113, i16 14847, i16 5223, i16 13584, i16 309, i16 15285, i16 2231, i16 10102, i16 16294, i16 8647, i16 7064, i16 10509, i16 5301, i16 16009, i16 833, i16 13696, i16 2737, i16 10787, i16 363, i16 14267, i16 2347, i16 9798, i16 6876, i16 11639, i16 4191, i16 10893, i16 3413, i16 12570, i16 436, i16 8646, i16 15885, i16 1261, i16 13529, i16 2650, i16 8120, i16 11854, i16 5047, i16 8286, i16 198, i16 10589, i16 2985, i16 9417, i16 15782, i16 993, i16 10637, i16 2754, i16 12182, i16 47, i16 15499, i16 2598, i16 6438, i16 14293, i16 4966, i16 13557, i16 2998, i16 15399, i16 174, i16 6827, i16 15136, i16 3670, i16 13635, i16 4200, i16 14846, i16 9512, i16 3878, i16 14346, i16 7781, i16 4065, i16 14680, i16 8483, i16 3360, i16 13297, i16 130, i16 15443, i16 4568, i16 13706, i16 5575, i16 16340, i16 8715, i16 275, i16 8218, i16 5011, i16 9441, i16 7602, i16 12589, i16 3957, i16 13641, i16 5854, i16 14515, i16 7656, i16 1935, i16 13082, i16 8254, i16 11003, i16 1388, i16 13494, i16 5556, i16 9828, i16 7723, i16 1687, i16 15564, i16 6859, i16 10819, i16 2582, i16 14368, i16 714, i16 15930, i16 7459, i16 12615, i16 2905, i16 7138, i16 12276, i16 5039, i16 9927, i16 6208, i16 10651, i16 1195, i16 11766, i16 8460, i16 2132, i16 8847, i16 12241, i16 4210, i16 10227, i16 2238, i16 7473, i16 14543, i16 4603, i16 13016, i16 1912, i16 10668, i16 3130, i16 9966, i16 4028, i16 12068, i16 7769, i16 5417, i16 2419, i16 14895, i16 250, i16 12785, i16 6700, i16 9560, i16 4764, i16 15554, i16 6308, i16 10111, i16 4880, i16 12364, i16 5508, i16 14601, i16 2862, i16 13687, i16 6093, i16 16340, i16 5696, i16 14308, i16 3073, i16 7768, i16 11969, i16 4420, i16 11314, i16 6601, i16 3322, i16 15846, i16 9831, i16 14612, i16 3777, i16 14131, i16 8405, i16 3911, i16 11977, i16 4898, i16 13624, i16 6276, i16 11012, i16 5322, i16 12853, i16 8487, i16 2372, i16 11092, i16 1574, i16 11593, i16 4728, i16 8848, i16 12864, i16 5040, i16 10142, i16 5895, i16 11717, i16 8287, i16 16, i16 11091, i16 3095, i16 12153, i16 9623, i16 2493, i16 10382, i16 16045, i16 4771, i16 9309, i16 7427, i16 11716, i16 2750, i16 10428, i16 1899, i16 12037, i16 5897, i16 10515, i16 15813, i16 1022, i16 14589, i16 2826, i16 10188, i16 1340, i16 9736, i16 3307, i16 11834, i16 6947, i16 10254, i16 2587, i16 5900, i16 14747, i16 7116, i16 2260, i16 13224, i16 3306, i16 11611, i16 8052, i16 18, i16 15202, i16 5201, i16 10132, i16 5875, i16 9153, i16 1596, i16 5974, i16 13745, i16 9568, i16 2586, i16 13039, i16 813, i16 14129, i16 3236, i16 14770, i16 5315, i16 13774, i16 7223, i16 15444, i16 1035, i16 13886, i16 5728, i16 16084, i16 9543, i16 197, i16 10495, i16 3511, i16 12231, i16 7429, i16 16181, i16 4933, i16 14122, i16 8845, i16 971, i16 13429, i16 9104, i16 6281, i16 8324, i16 9885, i16 2035, i16 13159, i16 7974, i16 1517, i16 11297, i16 3314, i16 15325, i16 7565, i16 1473, i16 10391, i16 7938, i16 230, i16 11501, i16 1694, i16 10340, i16 4926, i16 11126, i16 5356, i16 8976, i16 15353, i16 387, i16 14230, i16 8752, i16 1813, i16 6423, i16 4665, i16 10970, i16 7458, i16 2038, i16 14861, i16 7056, i16 9214, i16 1906, i16 15238, i16 3061, i16 10196, i16 1128, i16 15093, i16 7174, i16 8726, i16 16078, i16 3688, i16 7831, i16 14469, i16 2797, i16 11013, i16 1254, i16 16107, i16 2350, i16 7023, i16 13945, i16 5700, i16 16311, i16 1526, i16 6529, i16 12754, i16 5791, i16 1902, i16 8372, i16 14550, i16 1429, i16 6181, i16 12941, i16 7509, i16 14472, i16 4276, i16 13981, i16 3187, i16 6926, i16 11574, i16 5400, i16 11070, i16 6475, i16 12947, i16 5505, i16 15463, i16 518, i16 13704, i16 4804, i16 16201, i16 8944, i16 3533, i16 12311, i16 8416, i16 4492, i16 16308, i16 4967, i16 13674, i16 6071, i16 8740, i16 12716, i16 2182, i16 12128, i16 3382, i16 14878, i16 10485, i16 167, i16 6590, i16 15116, i16 5570, i16 10502, i16 6922, i16 9352, i16 4009, i16 10379, i16 38, i16 10795, i16 3616, i16 9978, i16 3195, i16 11712, i16 1528, i16 6815, i16 13711, i16 5453, i16 15519, i16 6225, i16 688, i16 8395, i16 10343, i16 1433, i16 6186, i16 14760, i16 3809, i16 12190, i16 1720, i16 13662, i16 3270, i16 15245, i16 3747, i16 9155, i16 14416, i16 4118, i16 13312, i16 1024, i16 9248, i16 14123, i16 3613, i16 15610, i16 9391, i16 4731, i16 12985, i16 3267, i16 15180, i16 987, i16 13953, i16 2136, i16 7018, i16 10279, i16 4063, i16 12126, i16 7604, i16 11616, i16 15548, i16 724, i16 12879, i16 6672, i16 9958, i16 357, i16 12510, i16 7903, i16 4367, i16 12732, i16 5999, i16 11188, i16 4203, i16 11988, i16 538, i16 6257, i16 13057, i16 9437, i16 915, i16 12079, i16 7343, i16 12740, i16 4631, i16 9273, i16 12504, i16 3257, i16 10623, i16 5189, i16 9145, i16 15043, i16 390, i16 14066, i16 7322, i16 12422, i16 3728, i16 9906, i16 15897, i16 5233, i16 566, i16 8557, i16 11022, i16 1276, i16 12443, i16 9268, i16 2193, i16 13320, i16 384, i16 16290, i16 2325, i16 11452, i16 4467, i16 10471, i16 3836, i16 9641, i16 1116, i16 11773, i16 7689, i16 628, i16 14309, i16 10006, i16 1006, i16 10628, i16 2628, i16 11881, i16 1298, i16 7853, i16 14651, i16 6748, i16 13284, i16 8013, i16 4503, i16 16340, i16 8403, i16 1886, i16 11445, i16 2956, i16 15675, i16 1461, i16 13147, i16 4842, i16 15973, i16 5577, i16 13585, i16 6466, i16 15199, i16 5190, i16 9113, i16 12671, i16 2569, i16 11037, i16 1345, i16 9076, i16 14312, i16 2821, i16 13755, i16 7218, i16 11490, i16 2701, i16 10855, i16 5792, i16 15658, i16 4889, i16 11094, i16 5926, i16 11596, i16 457, i16 6933, i16 12425, i16 5229, i16 10673, i16 3076, i16 7243, i16 12057, i16 5750, i16 2242, i16 14848, i16 8887, i16 7166, i16 8510, i16 12069, i16 3938, i16 8196, i16 13219, i16 5195, i16 16261, i16 1061, i16 13733, i16 2554, i16 5691, i16 9639, i16 5117, i16 16192, i16 4499, i16 13909, i16 5277, i16 14473, i16 8689, i16 642, i16 16159, i16 3503, i16 13763, i16 5430, i16 14686, i16 10175, i16 2113, i16 5591, i16 15652, i16 6206, i16 3579, i16 8450, i16 14277, i16 569, i16 6381, i16 15197, i16 1163, i16 13443, i16 2781, i16 7892, i16 10916, i16 3970, i16 11269, i16 941, i16 13902, i16 6814, i16 2295, i16 8974, i16 15078, i16 6607, i16 3785, i16 15479, i16 5070, i16 7889, i16 15039, i16 4379, i16 9072, i16 3798, i16 9395, i16 7114, i16 14249, i16 1782, i16 15140, i16 6398, i16 13965, i16 4596, i16 15394, i16 8795, i16 2965, i16 6222, i16 12790, i16 7418, i16 14428, i16 4157, i16 15732, i16 3422, i16 9389, i16 484, i16 9857, i16 2095, i16 11777, i16 3557, i16 10060, i16 13926, i16 4328, i16 12390, i16 5806, i16 10957, i16 6504, i16 9807, i16 3070, i16 11422, i16 1737, i16 12035, i16 530, i16 10887, i16 3469, i16 7923, i16 14970, i16 6555, i16 12893, i16 4280, i16 10783, i16 7616, i16 3876, i16 12453, i16 5198, i16 15924, i16 8139, i16 542, i16 7701, i16 10446, i16 1122, i16 12961, i16 4406, i16 16254, i16 10203, i16 1916, i16 8062, i16 15945, i16 6211, i16 13583, i16 819, i16 8374, i16 11251, i16 6424, i16 604, i16 13753, i16 2574, i16 6243, i16 15731, i16 9722, i16 1459, i16 11031, i16 3092, i16 9379, i16 5933, i16 10414, i16 13022, i16 2814, i16 10833, i16 1369, i16 11755, i16 2524, i16 10906, i16 1591, i16 11538, i16 5518, i16 8146, i16 9947, i16 1848, i16 9289, i16 2838, i16 7467, i16 14112, i16 10574, i16 3153, i16 9824, i16 14731, i16 1804, i16 10040, i16 7250, i16 11371, i16 4001, i16 10228, i16 4847, i16 11908, i16 5392, i16 8626, i16 15633, i16 3023, i16 10127, i16 4471, i16 11487, i16 7652, i16 12228, i16 1630, i16 13475, i16 8871, i16 2349, i16 12783, i16 651, i16 10301, i16 6255, i16 14150, i16 7304, i16 13134, i16 851, i16 8520, i16 11921, i16 5212, i16 10641, i16 3069, i16 10130, i16 1998, i16 13041, i16 7290, i16 14856, i16 5367, i16 1913, i16 8837, i16 11221, i16 5651, i16 10875, i16 5442, i16 15310, i16 4778, i16 14182, i16 6114, i16 12923, i16 1223, i16 7527, i16 9171, i16 425, i16 14626, i16 2689, i16 13862, i16 743, i16 14962, i16 6968, i16 9374, i16 4662, i16 14270, i16 5870, i16 15644, i16 903, i16 9770, i16 3208, i16 8528, i16 16018, i16 1645, i16 9407, i16 15427, i16 61, i16 9864, i16 1971, i16 13178, i16 6928, i16 13961, i16 4089, i16 15091, i16 2649, i16 9372, i16 7861, i16 4678, i16 14830, i16 9102, i16 80, i16 11086, i16 3519, i16 9587, i16 16062, i16 3965, i16 14089, i16 10003, i16 4487, i16 11699, i16 8810, i16 159, i16 5804, i16 14903, i16 6833, i16 13365, i16 4759, i16 15071, i16 1525, i16 7531, i16 15309, i16 3940, i16 14218, i16 6476, i16 9144, i16 4032, i16 15666, i16 6565, i16 14650, i16 1401, i16 13403, i16 6837, i16 15796, i16 5038, i16 11444, i16 1192, i16 7908, i16 12960, i16 351, i16 7637, i16 13110, i16 3340, i16 15865, i16 2232, i16 13698, i16 7551, i16 15785, i16 673, i16 14191, i16 1984, i16 6894, i16 13196, i16 5961, i16 15342, i16 301, i16 14704, i16 3219, i16 10249, i16 4172, i16 11620, i16 6470, i16 8379, i16 15998, i16 2978, i16 12310, i16 1509, i16 10691, i16 3101, i16 15921, i16 6169, i16 2461, i16 13265, i16 60, i16 12361, i16 5793, i16 11130, i16 5057, i16 11557, i16 315, i16 9026, i16 15874, i16 6447, i16 690, i16 13588, i16 1758, i16 12532, i16 2463, i16 11419, i16 7756, i16 846, i16 8263, i16 14496, i16 5112, i16 15828, i16 7998, i16 4585, i16 10603, i16 5241, i16 11680, i16 8649, i16 3966, i16 12800, i16 8360, i16 2346, i16 11268, i16 4182, i16 12268, i16 5714, i16 14643, i16 404, i16 6828, i16 11752, i16 3361, i16 8267, i16 12815, i16 4696, i16 11270, i16 3927, i16 10274, i16 2938, i16 11968, i16 8711, i16 7069, i16 14200, i16 1332, i16 12161, i16 2523, i16 6641, i16 13874, i16 5122, i16 14966, i16 7436, i16 2466, i16 12639, i16 1530, i16 6953, i16 16166, i16 1905, i16 14559, i16 7516, i16 12472, i16 3428, i16 10149, i16 531, i16 10671, i16 3559, i16 11502, i16 79, i16 8833, i16 12263, i16 7662, i16 874, i16 12774, i16 7235, i16 9768, i16 2848, i16 8865, i16 11767, i16 3346, i16 10785, i16 120, i16 12486, i16 7112, i16 15225, i16 3795, i16 8985, i16 16216, i16 4796, i16 10445, i16 8009, i16 4574, i16 12352, i16 5883, i16 1715, i16 8862, i16 11136, i16 4382, i16 12588, i16 9225, i16 1228, i16 10602, i16 3412, i16 9507, i16 4965, i16 13225, i16 5340, i16 16245, i16 29, i16 14341, i16 3573, i16 9819, i16 7712, i16 4202, i16 14917, i16 5707, i16 12007, i16 4541, i16 11170, i16 8710, i16 7219, i16 15690, i16 3596, i16 14455, i16 1184, i16 16026, i16 3198, i16 7879, i16 12163, i16 2731, i16 13139, i16 8488, i16 3915, i16 16118, i16 6542, i16 9182, i16 3846, i16 15639, i16 6691, i16 10807, i16 2611, i16 11080, i16 1972, i16 10140, i16 13576, i16 1601, i16 16094, i16 7397, i16 2420, i16 14109, i16 995, i16 16299, i16 6613, i16 8731, i16 13322, i16 1869, i16 10546, i16 3629, i16 9535, i16 13842, i16 5064, i16 14414, i16 6313, i16 2571, i16 15152, i16 7809, i16 14096, i16 1416, i16 16128, i16 6146, i16 166, i16 12695, i16 3262, i16 10650, i16 5600, i16 13043, i16 9508, i16 2890, i16 10579, i16 1654, i16 11824, i16 5909, i16 9179, i16 7666, i16 12273, i16 5167, i16 9761, i16 3780, i16 10599, i16 2287, i16 14029, i16 4970, i16 15584, i16 6182, i16 14116, i16 6772, i16 13420, i16 5525, i16 2202, i16 9876, i16 15863, i16 3206, i16 13592, i16 243, i16 14065, i16 4763, i16 7720, i16 15302, i16 5878, i16 13963, i16 9099, i16 2313, i16 5733, i16 12179, i16 6086, i16 2535, i16 11940, i16 1078, i16 14885, i16 9330, i16 241, i16 10323, i16 14026, i16 6435, i16 2416, i16 14963, i16 7993, i16 4639, i16 16189, i16 5607, i16 12378, i16 6324, i16 10791, i16 1148, i16 11361, i16 7208, i16 9600, i16 5832, i16 12130, i16 1055, i16 13458, i16 10154, i16 8148, i16 215, i16 7963, i16 13913, i16 1289, i16 14738, i16 4218, i16 9428, i16 6743, i16 9142, i16 8026, i16 4057, i16 9860, i16 15170, i16 4466, i16 10444, i16 4901, i16 11732, i16 7220, i16 9660, i16 245, i16 14044, i16 8081, i16 1464, i16 13181, i16 5383, i16 15213, i16 4765, i16 12775, i16 3761, i16 7668, i16 9243, i16 3703, i16 12633, i16 6183, i16 10659, i16 7811, i16 3411, i16 11850, i16 140, i16 7034, i16 15833, i16 5344, i16 12999, i16 7160, i16 2270, i16 10995, i16 954, i16 12146, i16 10029, i16 5812, i16 802, i16 6749, i16 11540, i16 4346, i16 8399, i16 10947, i16 5446, i16 15751, i16 4194, i16 14577, i16 630, i16 7618, i16 15400, i16 5674, i16 13437, i16 4060, i16 14466, i16 291, i16 15249, i16 2833, i16 11052, i16 755, i16 12714, i16 4677, i16 11415, i16 6547, i16 9278, i16 1656, i16 11737, i16 2376, i16 8382, i16 2973, i16 10182, i16 14697, i16 6056, i16 4270, i16 11278, i16 5168, i16 10653, i16 3537, i16 12358, i16 920, i16 9390, i16 2469, i16 8039, i16 4074, i16 13360, i16 8455, i16 725, i16 14490, i16 8634, i16 6774, i16 13445, i16 2997, i16 7214, i16 15543, i16 8378, i16 3924, i16 11809, i16 7358, i16 9498, i16 112, i16 11999, i16 2605, i16 13542, i16 1667, i16 14361, i16 2940, i16 15510, i16 8687, i16 2470, i16 12646, i16 1776, i16 7390, i16 14759, i16 5596, i16 2047, i16 15792, i16 6892, i16 12584, i16 3850, i16 10079, i16 2915, i16 11691, i16 898, i16 12606, i16 2381, i16 10765, i16 13746, i16 6842, i16 1743, i16 13380, i16 1094, i16 14975, i16 2046, i16 14282, i16 3129, i16 11093, i16 4404, i16 12426, i16 9948, i16 3278, i16 11564, i16 103, i16 9361, i16 7164, i16 14354, i16 895, i16 15076, i16 8092, i16 251, i16 15409, i16 2059, i16 9476, i16 14707, i16 4433, i16 13956, i16 9261, i16 2918, i16 10854, i16 1236, i16 15331, i16 8186, i16 4378, i16 16340, i16 8429, i16 1910, i16 13371, i16 8084, i16 15541, i16 2383, i16 9334, i16 13596, i16 3451, i16 11862, i16 1096, i16 9822, i16 8443, i16 6350, i16 11516, i16 2061, i16 10024, i16 935, i16 11195, i16 6665, i16 10195, i16 4381, i16 13299, i16 5395, i16 15446, i16 7930, i16 13802, i16 1047, i16 15978, i16 3225, i16 12930, i16 5369, i16 9561, i16 16112, i16 11333, i16 7101, i16 568, i16 12537, i16 8600, i16 1639, i16 14995, i16 7352, i16 16011, i16 6344, i16 8325, i16 13141, i16 5566, i16 16340, i16 8956, i16 1662, i16 15529, i16 10860, i16 3300, i16 12681, i16 1627, i16 9637, i16 6244, i16 11651, i16 5292, i16 2555, i16 14600, i16 1004, i16 15971, i16 3701, i16 13640, i16 5354, i16 11004, i16 7071, i16 9739, i16 4710, i16 11539, i16 6889, i16 4041, i16 14106, i16 5489, i16 15244, i16 8921, i16 2674, i16 8623, i16 11689, i16 3980, i16 10984, i16 2301, i16 15550, i16 7825, i16 13535, i16 5032, i16 16179, i16 5423, i16 14117, i16 5760, i16 580, i16 12478, i16 9216, i16 4753, i16 11456, i16 7051, i16 9275, i16 5916, i16 12909, i16 6791, i16 15040, i16 2819, i16 7555, i16 15922, i16 4121, i16 7880, i16 13372, i16 1701, i16 6258, i16 11244, i16 5144, i16 12329, i16 9638, i16 4816, i16 13476, i16 5949, i16 1275, i16 10360, i16 8008, i16 4645, i16 14292, i16 6154, i16 11989, i16 4755, i16 9825, i16 13087, i16 2994, i16 6619, i16 14875, i16 5000, i16 11048, i16 4554, i16 12813, i16 7422, i16 1610, i16 15261, i16 8232, i16 6715, i16 13292, i16 2976, i16 16187, i16 3900, i16 13714, i16 4807, i16 15808, i16 7588, i16 2359, i16 12992, i16 8049, i16 1303, i16 10666, i16 6334, i16 2055, i16 7170, i16 9985, i16 5538, i16 10562, i16 4167, i16 14518, i16 905, i16 5919, i16 1749, i16 15212, i16 8121, i16 3741, i16 14245, i16 6992, i16 9157, i16 1273, i16 9685, i16 2663, i16 14385, i16 1952, i16 10670, i16 434, i16 12444, i16 7302, i16 4316, i16 7684, i16 10125, i16 5611, i16 15981, i16 3518, i16 14204, i16 785, i16 13595, i16 9783, i16 5574, i16 10716, i16 5905, i16 10510, i16 2091, i16 14810, i16 8598, i16 797, i16 15870, i16 7953, i16 458, i16 12983, i16 8280, i16 916, i16 10646, i16 3434, i16 11158, i16 6592, i16 13068, i16 739, i16 14278, i16 4954, i16 10413, i16 6036, i16 498, i16 6982, i16 10280, i16 3415, i16 10900, i16 1605, i16 9555, i16 15621, i16 6040, i16 2534, i16 14672, i16 8321, i16 3604, i16 15504, i16 870, i16 10234, i16 1579, i16 8625, i16 12029, i16 774, i16 8891, i16 13739, i16 10257, i16 2922, i16 16276, i16 9886, i16 3384, i16 13278, i16 2869, i16 6917, i16 11149, i16 3842, i16 11583, i16 7264, i16 15556, i16 2141, i16 12586, i16 750, i16 10235, i16 2677, i16 13551, i16 234, i16 5980, i16 11364, i16 8999, i16 572, i16 12380, i16 2779, i16 10412, i16 324, i16 14824, i16 6418, i16 9563, i16 2717, i16 14403, i16 4505, i16 12131, i16 1386, i16 10242, i16 7464, i16 11665, i16 3015, i16 9633, i16 15077, i16 4658, i16 9119, i16 15894, i16 3597, i16 13979, i16 8301, i16 14713, i16 2676, i16 13161, i16 336, i16 12119, i16 8796, i16 7478, i16 13103, i16 10367, i16 4866, i16 13678, i16 9516, i16 2703, i16 11566, i16 4673, i16 12683, i16 5819, i16 10954, i16 4477, i16 12102, i16 6687, i16 14576, i16 3618, i16 10251, i16 14056, i16 2045, i16 15079, i16 65, i16 7394, i16 10626, i16 4526, i16 11321, i16 7798, i16 1478, i16 12202, i16 3152, i16 13250, i16 4198, i16 12724, i16 7743, i16 5017, i16 11715, i16 4343, i16 9169, i16 14955, i16 3299, i16 10074, i16 15750, i16 4781, i16 13857, i16 385, i16 16067, i16 3626, i16 9416, i16 6382, i16 12889, i16 1535, i16 14419, i16 8135, i16 15319, i16 1860, i16 13059, i16 6579, i16 14815, i16 7932, i16 3891, i16 11265, i16 7386, i16 10348, i16 126, i16 12305, i16 5161, i16 13310, i16 5511, i16 16220, i16 3487, i16 6925, i16 14782, i16 5837, i16 1359, i16 5246, i16 11966, i16 8340, i16 4197, i16 14906, i16 1165, i16 8619, i16 15771, i16 679, i16 14536, i16 2479, i16 13077, i16 5419, i16 9748, i16 7508, i16 16158, i16 3956, i16 14778, i16 8861, i16 7415, i16 15585, i16 2071, i16 14231, i16 7747, i16 4125, i16 15847, i16 5526, i16 12219, i16 3740, i16 11179, i16 5341, i16 12350, i16 418, i16 7846, i16 9296, i16 5986, i16 14690, i16 213, i16 6566, i16 14167, i16 5807, i16 573, i16 12174, i16 2203, i16 6763, i16 11619, i16 54, i16 10439, i16 3923, i16 11440, i16 5820, i16 14868, i16 6921, i16 2078, i16 15413, i16 3391, i16 4112, i16 11860, i16 1174, i16 6503, i16 16303, i16 372, i16 14833, i16 3006, i16 13833, i16 588, i16 15769, i16 8937, i16 3931, i16 8541, i16 11924, i16 1109, i16 7961, i16 12599, i16 6008, i16 8751, i16 13680, i16 2292, i16 15396, i16 8514, i16 3776, i16 16332, i16 7098, i16 14213, i16 508, i16 8230, i16 9368, i16 1339, i16 15352, i16 3040, i16 13160, i16 1854, i16 6636, i16 11961, i16 5856, i16 2236, i16 9220, i16 7157, i16 12363, i16 5973, i16 8281, i16 14976, i16 2951, i16 7373, i16 11247, i16 4738, i16 10696, i16 4352, i16 11385, i16 7680, i16 280, i16 9004, i16 2686, i16 13479, i16 1029, i16 16340, i16 5458, i16 14097, i16 3082, i16 9494, i16 2353, i16 11377, i16 4254, i16 9775, i16 13446, i16 2240, i16 11018, i16 7710, i16 15515, i16 6419, i16 394, i16 12539, i16 8951, i16 6652, i16 12045, i16 4258, i16 10062, i16 6387, i16 8271, i16 9203, i16 433, i16 12143, i16 2802, i16 5766, i16 11337, i16 6661, i16 1696, i16 12191, i16 3979, i16 10710, i16 5320, i16 12711, i16 8622, i16 1274, i16 9653, i16 6836, i16 13843, i16 1018, i16 16069, i16 3401, i16 10150, i16 15461, i16 2322, i16 12952, i16 5240, i16 8941, i16 12498, i16 1585, i16 8761, i16 11293, i16 5108, i16 14623, i16 9353, i16 4423, i16 12942, i16 5912, i16 16250, i16 1141, i16 9468, i16 4344, i16 11016, i16 8290, i16 5003, i16 12612, i16 15916, i16 7548, i16 8572, i16 12294, i16 5284, i16 10434, i16 6721, i16 10085, i16 5599, i16 11430, i16 7080, i16 1421, i16 15121, i16 2337, i16 6302, i16 15653, i16 5141, i16 9510, i16 3771, i16 11847, i16 4785, i16 11210, i16 6632, i16 1794, i16 12773, i16 8819, i16 4080, i16 9582, i16 6765, i16 15594, i16 4684, i16 13460, i16 6177, i16 10756, i16 5493, i16 14580, i16 9469, i16 1220, i16 13751, i16 7533, i16 13241, i16 1557, i16 9630, i16 2592, i16 11753, i16 1382, i16 9938, i16 16282, i16 3493, i16 13790, i16 1059, i16 13319, i16 2845, i16 15081, i16 5269, i16 13987, i16 10417, i16 4779, i16 11672, i16 8768, i16 2216, i16 9999, i16 7007, i16 15776, i16 6264, i16 8176, i16 14410, i16 331, i16 6202, i16 12457, i16 4647, i16 12975, i16 3197, i16 10450, i16 14153, i16 5775, i16 2599, i16 13690, i16 1909, i16 7894, i16 12497, i16 1536, i16 15955, i16 4066, i16 14391, i16 6026, i16 13643, i16 8696, i16 1118, i16 13220, i16 8333, i16 4900, i16 14522, i16 1036, i16 9995, i16 2521, i16 15102, i16 7130, i16 14141, i16 2291, i16 9137, i16 8036, i16 4825, i16 12903, i16 7038, i16 4162, i16 10944, i16 7952, i16 1898, i16 15641, i16 3432, i16 8231, i16 16324, i16 2462, i16 13399, i16 7981, i16 1259, i16 15511, i16 7827, i16 1963, i16 8137, i16 13342, i16 3164, i16 15748, i16 1396, i16 14192, i16 9232, i16 184, i16 6101, i16 2154, i16 13510, i16 3127, i16 10909, i16 3585, i16 13040, i16 1801, i16 15447, i16 2543, i16 8169, i16 13586, i16 5663, i16 9843, i16 12686, i16 2930, i16 11164, i16 826, i16 13282, i16 2439, i16 14940, i16 614, i16 8950, i16 14667, i16 6045, i16 279, i16 15030, i16 2596, i16 11967, i16 1887, i16 10863, i16 2788, i16 10168, i16 248, i16 12136, i16 2692, i16 7638, i16 16144, i16 4627, i16 10974, i16 3789, i16 15410, i16 4935, i16 14562, i16 5544, i16 13577, i16 7576, i16 129, i16 9168, i16 6795, i16 9686, i16 8373, i16 6096, i16 10007, i16 8564, i16 2017, i16 6316, i16 15345, i16 3222, i16 6690, i16 12648, i16 4140, i16 11912, i16 633, i16 13631, i16 1783, i16 10372, i16 7246, i16 15456, i16 3603, i16 9601, i16 595, i16 14655, i16 8041, i16 1996, i16 9734, i16 16035, i16 4908, i16 10328, i16 15280, i16 3560, i16 13329, i16 5084, i16 11298, i16 3263, i16 10759, i16 1828, i16 15311, i16 7694, i16 3591, i16 15745, i16 9679, i16 3025, i16 12907, i16 6235, i16 11427, i16 4725, i16 10648, i16 5171, i16 11670, i16 4410, i16 14703, i16 10326, i16 1742, i16 9085, i16 14111, i16 876, i16 15003, i16 7097, i16 9714, i16 6178, i16 13083, i16 3843, i16 7312, i16 9841, i16 3542, i16 12429, i16 4098, i16 11095, i16 6848, i16 11846, i16 5075, i16 10263, i16 6017, i16 12369, i16 3298, i16 7117, i16 11098, i16 14039, i16 9984, i16 4497, i16 15614, i16 1053, i16 14338, i16 4579, i16 11634, i16 5068, i16 9445, i16 12401, i16 4149, i16 11237, i16 229, i16 7188, i16 14176, i16 4611, i16 16193, i16 6482, i16 8272, i16 9889, i16 5472, i16 11728, i16 3364, i16 10045, i16 12269, i16 5321, i16 10452, i16 4917, i16 13055, i16 7482, i16 16258, i16 3994, i16 14383, i16 8843, i16 6408, i16 12501, i16 3395, i16 10217, i16 110, i16 12279, i16 6932, i16 11292, i16 832, i16 10354, i16 4303, i16 12447, i16 5889, i16 14608, i16 2168, i16 15843, i16 2497, i16 13669, i16 805, i16 16076, i16 7325, i16 12962, i16 450, i16 8227, i16 14258, i16 1177, i16 14921, i16 8611, i16 5565, i16 8994, i16 12699, i16 3345, i16 11782, i16 1294, i16 7971, i16 12075, i16 5990, i16 9192, i16 4490, i16 12247, i16 6945, i16 859, i16 11736, i16 7292, i16 145, i16 9320, i16 7090, i16 9915, i16 982, i16 15146, i16 4800, i16 10167, i16 5263, i16 12289, i16 8969, i16 463, i16 7275, i16 11884, i16 5133, i16 15948, i16 137, i16 13665, i16 1958, i16 16283, i16 577, i16 13026, i16 2578, i16 5860, i16 15715, i16 6439, i16 3114, i16 12004, i16 4623, i16 13346, i16 2873, i16 11917, i16 1011, i16 10271, i16 14509, i16 383, i16 10946, i16 6156, i16 13682, i16 695, i16 15161, i16 2854, i16 14331, i16 441, i16 11254, i16 4026, i16 9669, i16 15035, i16 2759, i16 8216, i16 666, i16 11984, i16 6325, i16 9429, i16 7270, i16 9051, i16 34, i16 14499, i16 6605, i16 981, i16 16077, i16 3247, i16 13369, i16 8814, i16 1890, i16 8393, i16 9689, i16 1452, i16 14311, i16 2837, i16 15891, i16 7771, i16 13873, i16 2254, i16 7236, i16 13989, i16 1196, i16 15242, i16 8628, i16 742, i16 5827, i16 12420, i16 6900, i16 2188, i16 15151, i16 888, i16 11175, i16 5299, i16 14909, i16 8507, i16 2407, i16 8803, i16 14023, i16 3147, i16 15598, i16 1951, i16 11078, i16 3722, i16 11671, i16 5706, i16 12127, i16 4580, i16 11044, i16 5078, i16 11762, i16 3992, i16 9651, i16 12051, i16 4985, i16 10569, i16 7453, i16 1954, i16 15250, i16 3661, i16 7593, i16 15960, i16 5708, i16 8760, i16 14867, i16 2776, i16 13879, i16 1453, i16 15722, i16 2867, i16 13384, i16 8602, i16 3790, i16 14628, i16 6144, i16 11897, i16 2201, i16 13868, i16 6491, i16 8769, i16 12846, i16 16, i16 11050, i16 2560, i16 13493, i16 6443, i16 15026, i16 1626, i16 10902, i16 3329, i16 9408, i16 4247, i16 8250, i16 9234, i16 6537, i16 9803, i16 7443, i16 11062, i16 31, i16 13622, i16 9467, i16 5597, i16 10763, i16 468, i16 10463, i16 5029, i16 15273, i16 8458, i16 4307, i16 7762, i16 16047, i16 2008, i16 7242, i16 10610, i16 5439, i16 9791, i16 4646, i16 12645, i16 7490, i16 13606, i16 957, i16 5582, i16 12509, i16 5783, i16 15308, i16 8866, i16 2440, i16 13215, i16 1942, i16 16185, i16 7885, i16 3655, i16 13279, i16 8364, i16 5440, i16 10614, i16 4754, i16 14891, i16 6585, i16 12949, i16 3800, i16 11588, i16 4486, i16 10548, i16 6712, i16 1319, i16 5186, i16 12678, i16 9306, i16 4370, i16 11267, i16 6596, i16 3334, i16 14299, i16 10025, i16 1486, i16 11461, i16 8189, i16 4745, i16 13076, i16 5971, i16 13620, i16 1981, i16 6298, i16 16335, i16 4186, i16 6638, i16 11526, i16 5120, i16 9322, i16 6532, i16 14070, i16 8190, i16 539, i16 7362, i16 14724, i16 3259, i16 10490, i16 1460, i16 13743, i16 6525, i16 2112, i16 15939, i16 3443, i16 13785, i16 5846, i16 9143, i16 12333, i16 962, i16 10108, i16 2502, i16 12779, i16 5055, i16 9957, i16 7469, i16 11633, i16 5337, i16 10837, i16 4733, i16 15119, i16 7808, i16 2977, i16 13564, i16 4282, i16 16339, i16 5476, i16 12234, i16 2640, i16 7528, i16 14193, i16 4185, i16 16224, i16 5501, i16 10405, i16 3865, i16 13783, i16 8580, i16 6732, i16 13171, i16 7180, i16 14928, i16 3146, i16 14273, i16 1410, i16 13469, i16 3499, i16 12101, i16 8354, i16 1507, i16 14769, i16 3406, i16 16008, i16 4113, i16 13794, i16 6955, i16 2436, i16 13590, i16 10481, i16 3671, i16 9212, i16 14985, i16 2700, i16 13908, i16 1523, i16 15661, i16 8771, i16 2239, i16 6627, i16 16340, i16 8935, i16 1864, i16 12890, i16 3458, i16 7061, i16 14743, i16 5504, i16 11201, i16 4956, i16 9930, i16 12118, i16 2118, i16 10138, i16 14684, i16 1506, i16 11997, i16 2601, i16 11063, i16 527, i16 15258, i16 6978, i16 13702, i16 164, i16 13222, i16 8078, i16 15498, i16 6340, i16 844, i16 16090, i16 2658, i16 9830, i16 12885, i16 4588, i16 8388, i16 13823, i16 3666, i16 15864, i16 9540, i16 2995, i16 10561, i16 3941, i16 9970, i16 12837, i16 1088, i16 9183, i16 13180, i16 472, i16 7839, i16 12692, i16 1154, i16 9877, i16 3055, i16 15506, i16 9485, i16 1665, i16 13124, i16 7878, i16 15667, i16 3387, i16 8457, i16 12777, i16 4567, i16 11160, i16 200, i16 11599, i16 2449, i16 7774, i16 14573, i16 4615, i16 14013, i16 7184, i16 41, i16 16239, i16 2332, i16 6675, i16 14314, i16 281, i16 10077, i16 1671, i16 12344, i16 8842, i16 1314, i16 11007, i16 8246, i16 700, i16 7945, i16 15806, i16 4566, i16 9558, i16 8376, i16 1189, i16 11742, i16 2140, i16 12465, i16 7812, i16 820, i16 15438, i16 2189, i16 11856, i16 1098, i16 10514, i16 4103, i16 11330, i16 5617, i16 15123, i16 7697, i16 3937, i16 12715, i16 6771, i16 9963, i16 7605, i16 12555, i16 1797, i16 9424, i16 12281, i16 6030, i16 1481, i16 14059, i16 8105, i16 3908, i16 11666, i16 6413, i16 10214, i16 7904, i16 4287, i16 14659, i16 10884, i16 2644, i16 12078, i16 7446, i16 1434, i16 8575, i16 11471, i16 419, i16 10345, i16 2865, i16 12638, i16 860, i16 6847, i16 15678, i16 3894, i16 7645, i16 9294, i16 5088, i16 15717, i16 5796, i16 10247, i16 7869, i16 2211, i16 8180, i16 10836, i16 4952, i16 11858, i16 2056, i16 8856, i16 10919, i16 5688, i16 12490, i16 8127, i16 22, i16 15757, i16 2476, i16 7381, i16 11074, i16 475, i16 7106, i16 14631, i16 1343, i16 15680, i16 7719, i16 4441, i16 8054, i16 14666, i16 3677, i16 8661, i16 15937, i16 3874, i16 14879, i16 4685, i16 13014, i16 8428, i16 3546, i16 11505, i16 6819, i16 16, i16 5943, i16 10189, i16 14630, i16 925, i16 9358, i16 7054, i16 15497, i16 6411, i16 13441, i16 3950, i16 8816, i16 11499, i16 1699, i16 9544, i16 12220, i16 5503, i16 11211, i16 8691, i16 3706, i16 12835, i16 6328, i16 11108, i16 4899, i16 15581, i16 7561, i16 3664, i16 12756, i16 6825, i16 10679, i16 1431, i16 11362, i16 2318, i16 14931, i16 7636, i16 4648, i16 14553, i16 9024, i16 3203, i16 11488, i16 4489, i16 10159, i16 3690, i16 13895, i16 5918, i16 15393, i16 7965, i16 2245, i16 9043, i16 902, i16 16340, i16 8519, i16 2373, i16 14005, i16 1126, i16 6342, i16 11163, i16 5680, i16 131, i16 15701, i16 7457, i16 9564, i16 877, i16 12396, i16 7379, i16 226, i16 13229, i16 2518, i16 12267, i16 761, i16 5629, i16 9573, i16 4717, i16 14520, i16 6563, i16 16006, i16 4851, i16 13715, i16 5948, i16 15048, i16 4236, i16 14199, i16 9129, i16 5243, i16 12897, i16 391, i16 14104, i16 8017, i16 1066, i16 13100, i16 3444, i16 13919, i16 5373, i16 15962, i16 3210, i16 14796, i16 3898, i16 7679, i16 15114, i16 4252, i16 14169, i16 1614, i16 5404, i16 11918, i16 8885, i16 6085, i16 14919, i16 4321, i16 9151, i16 12735, i16 4922, i16 11701, i16 9003, i16 319, i16 14208, i16 10720, i16 2050, i16 7491, i16 11875, i16 1756, i16 10847, i16 7298, i16 11957, i16 1871, i16 6240, i16 14215, i16 4895, i16 15192, i16 8107, i16 12212, i16 2330, i16 5323, i16 7929, i16 12421, i16 3160, i16 9793, i16 1385, i16 8397, i16 16164, i16 536, i16 7369, i16 15366, i16 6172, i16 2685, i16 13752, i16 1161, i16 15204, i16 7897, i16 2121, i16 16092, i16 2702, i16 13179, i16 494, i16 9818, i16 14525, i16 1945, i16 15339, i16 3960, i16 13900, i16 5898, i16 13230, i16 5022, i16 12593, i16 8780, i16 289, i16 6299, i16 16039, i16 5454, i16 12986, i16 6058, i16 10993, i16 5267, i16 9479, i16 283, i16 11894, i16 7089, i16 12608, i16 5979, i16 9756, i16 4894, i16 11433, i16 5304, i16 9258, i16 15489, i16 2564, i16 14337, i16 9101, i16 4386, i16 12934, i16 4822, i16 14530, i16 5271, i16 15391, i16 8695, i16 5758, i16 15881, i16 7015, i16 10632, i16 8312, i16 15455, i16 87, i16 10201, i16 12780, i16 2962, i16 9850, i16 3684, i16 11796, i16 1568, i16 9542, i16 7939, i16 1769, i16 11622, i16 3173, i16 10520, i16 4275, i16 12271, i16 9115, i16 4132, i16 10831, i16 1587, i16 11765, i16 6191, i16 9937, i16 1403, i16 8666, i16 13477, i16 388, i16 11606, i16 3154, i16 9195, i16 15425, i16 6851, i16 2023, i16 12605, i16 1003, i16 11548, i16 6711, i16 1722, i16 14033, i16 2513, i16 6501, i16 12574, i16 5718, i16 3052, i16 8899, i16 15232, i16 4826, i16 13719, i16 6165, i16 223, i16 8882, i16 16228, i16 9976, i16 862, i16 11014, i16 2912, i16 13364, i16 4078, i16 16300, i16 9083, i16 14049, i16 1757, i16 14775, i16 5650, i16 12925, i16 2925, i16 10297, i16 5455, i16 10945, i16 4323, i16 13500, i16 9224, i16 3904, i16 10458, i16 4341, i16 12162, i16 9439, i16 4507, i16 10359, i16 5911, i16 11515, i16 5185, i16 8018, i16 9359, i16 6080, i16 11667, i16 2897, i16 10139, i16 553, i16 10553, i16 2499, i16 15480, i16 7251, i16 13307, i16 1961, i16 9574, i16 509, i16 14404, i16 1569, i16 16149, i16 2950, i16 13295, i16 4523, i16 15794, i16 3357, i16 14548, i16 2026, i16 13517, i16 299, i16 15082, i16 3190, i16 8359, i16 11594, i16 7169, i16 2961, i16 12039, i16 1826, i16 10721, i16 2619, i16 10078, i16 1651, i16 11373, i16 3043, i16 9404, i16 1373, i16 14274, i16 2815, i16 5131, i16 13425, i16 5449, i16 8089, i16 11366, i16 1001, i16 15343, i16 8742, i16 7154, i16 15860, i16 4443, i16 13832, i16 6376, i16 14521, i16 5720, i16 15162, i16 2799, i16 6867, i16 16272, i16 5624, i16 14418, i16 7620, i16 654, i16 12563, i16 7100, i16 11402, i16 2984, i16 10179, i16 5863, i16 13353, i16 7285, i16 3496, i16 13629, i16 10662, i16 4937, i16 14459, i16 3866, i16 16057, i16 9702, i16 5425, i16 10994, i16 8616, i16 3532, i16 16016, i16 7159, i16 13302, i16 727, i16 11206, i16 2765, i16 9751, i16 14475, i16 5543, i16 2562, i16 7008, i16 12500, i16 5725, i16 9615, i16 1272, i16 10640, i16 6986, i16 602, i16 6149, i16 10878, i16 4833, i16 10518, i16 4169, i16 14458, i16 6623, i16 13243, i16 2244, i16 12387, i16 782, i16 7144, i16 15820, i16 5608, i16 14584, i16 671, i16 7031, i16 14177, i16 1237, i16 14860, i16 3508, i16 13511, i16 3024, i16 12394, i16 221, i16 7445, i16 14801, i16 4479, i16 15664, i16 6934, i16 12000, i16 3615, i16 11032, i16 4220, i16 8028, i16 15110, i16 6824, i16 8700, i16 12129, i16 4793, i16 10609, i16 6366, i16 10043, i16 1438, i16 10886, i16 6938, i16 11743, i16 4359, i16 10197, i16 6498, i16 12850, i16 5494, i16 708, i16 16163, i16 10148, i16 5009, i16 13512, i16 6929, i16 16287, i16 4578, i16 13870, i16 6200, i16 14905, i16 4518, i16 13052, i16 6464, i16 8975, i16 11702, i16 7735, i16 2034, i16 14967, i16 4560, i16 13226, i16 6452, i16 2434, i16 12487, i16 170, i16 10709, i16 2743, i16 9806, i16 703, i16 11097, i16 1668, i16 9532, i16 13561, i16 81, i16 10330, i16 2898, i16 9418, i16 15616, i16 4384, i16 14101, i16 4802, i16 16340, i16 5207, i16 10754, i16 1278, i16 14737, i16 9746, i16 581, i16 7957, i16 9288, i16 2341, i16 10198, i16 7791, i16 3166, i16 15298, i16 796, i16 13490, i16 7883, i16 1463, i16 11590, i16 4131, i16 10155, i16 5633, i16 15563, i16 8338, i16 3403, i16 12911, i16 7954, i16 14960, i16 4274, i16 13906, i16 3694, i16 15397, i16 4440, i16 11994, i16 7715, i16 13177, i16 3494, i16 16048, i16 374, i16 11879, i16 8925, i16 1232, i16 8200, i16 14688, i16 3563, i16 8516, i16 11769, i16 1621, i16 11151, i16 3108, i16 13029, i16 9121, i16 5319, i16 10663, i16 6766, i16 9624, i16 1025, i16 16005, i16 4913, i16 14375, i16 8671, i16 1798, i16 12797, i16 8193, i16 1518, i16 9019, i16 13614, i16 927, i16 9917, i16 12372, i16 3453, i16 11257, i16 2328, i16 7700, i16 13681, i16 807, i16 14901, i16 3788, i16 13860, i16 8221, i16 616, i16 7849, i16 15341, i16 2695, i16 14185, i16 1616, i16 9632, i16 12508, i16 6106, i16 1277, i16 14942, i16 8247, i16 417, i16 7854, i16 12618, i16 3564, i16 10767, i16 611, i16 11572, i16 8518, i16 2316, i16 16123, i16 1112, i16 14151, i16 6809, i16 526, i16 10277, i16 3512, i16 11153, i16 8307, i16 4797, i16 14620, i16 5831, i16 13417, i16 4656, i16 16124, i16 7962, i16 12990, i16 7414, i16 3304, i16 12093, i16 4740, i16 12679, i16 6463, i16 2531, i16 9150, i16 1872, i16 9643, i16 970, i16 12870, i16 3680, i16 12028, i16 2800, i16 6485, i16 16170, i16 4071, i16 13468, i16 6396, i16 12180, i16 194, i16 12922, i16 6242, i16 11996, i16 2877, i16 14843, i16 9058, i16 5921, i16 15033, i16 2496, i16 12938, i16 1324, i16 6710, i16 11800, i16 1583, i16 10789, i16 672, i16 10275, i16 2022, i16 11426, i16 6515, i16 12979, i16 2558, i16 15020, i16 2084, i16 9593, i16 6802, i16 13570, i16 7819, i16 2763, i16 15767, i16 5004, i16 9413, i16 6919, i16 15518, i16 3769, i16 14058, i16 6389, i16 9900, i16 8048, i16 2039, i16 13334, i16 3273, i16 15726, i16 4707, i16 10904, i16 5748, i16 10342, i16 3859, i16 11260, i16 6740, i16 9500, i16 5209, i16 12341, i16 4264, i16 6103, i16 14758, i16 6589, i16 1352, i16 13991, i16 5769, i16 15687, i16 4330, i16 8381, i16 9786, i16 5724, i16 11647, i16 2604, i16 11284, i16 5828, i16 12250, i16 4774, i16 10513, i16 5727, i16 11133, i16 7213, i16 3567, i16 14094, i16 9311, i16 4008, i16 10955, i16 6270, i16 11623, i16 1217, i16 9704, i16 5557, i16 13618, i16 7162, i16 3813, i16 12473, i16 5810, i16 10019, i16 4062, i16 10743, i16 15709, i16 7813, i16 14260, i16 1323, i16 16340, i16 9280, i16 3386, i16 11222, i16 1394, i16 10313, i16 6987, i16 2393, i16 5020, i16 15538, i16 6265, i16 8705, i16 15373, i16 1171, i16 14677, i16 7538, i16 13771, i16 5944, i16 15049, i16 8306, i16 6654, i16 15535, i16 7197, i16 8524, i16 12763, i16 5106, i16 11934, i16 1151, i16 15004, i16 5376, i16 14217, i16 9432, i16 3588, i16 7280, i16 10451, i16 5152, i16 12455, i16 52, i16 7231, i16 10937, i16 4961, i16 9371, i16 14174, i16 4214, i16 15763, i16 5983, i16 13544, i16 5157, i16 15980, i16 7541, i16 290, i16 8477, i16 10106, i16 5614, i16 8293, i16 12275, i16 1470, i16 9226, i16 5358, i16 12095, i16 3882, i16 12682, i16 155, i16 11279, i16 2161, i16 10421, i16 7539, i16 318, i16 16340, i16 4046, i16 14425, i16 4959, i16 12052, i16 106, i16 12688, i16 2585, i16 11891, i16 1408, i16 13162, i16 2678, i16 16266, i16 869, i16 13960, i16 3161, i16 15900, i16 8535, i16 2298, i16 12721, i16 8929, i16 3086, i16 10792, i16 196, i16 11761, i16 2707, i16 15507, i16 1943, i16 7632, i16 14431, i16 4188, i16 16190, i16 2185, i16 13722, i16 959, i16 15823, i16 3311, i16 13409, i16 8664, i16 2092, i16 7557, i16 13020, i16 3068, i16 15449, i16 5381, i16 14206, i16 3287, i16 15987, i16 1785, i16 9184, i16 15257, i16 332, i16 10991, i16 3125, i16 13156, i16 5037, i16 7201, i16 2297, i16 5713, i16 12280, i16 6924, i16 734, i16 12838, i16 7850, i16 15279, i16 3779, i16 13931, i16 8417, i16 10973, i16 922, i16 11643, i16 2160, i16 7228, i16 11162, i16 3392, i16 10467, i16 296, i16 11545, i16 2721, i16 12408, i16 2139, i16 9377, i16 147, i16 14300, i16 1746, i16 10036, i16 3122, i16 11198, i16 8712, i16 3400, i16 8131, i16 1659, i16 8774, i16 16322, i16 1023, i16 14068, i16 3929, i16 8846, i16 13357, i16 1821, i16 16208, i16 7401, i16 437, i16 10364, i16 8478, i16 3149, i16 7192, i16 11613, i16 3829, i16 9111, i16 14912, i16 5071, i16 13660, i16 997, i16 15549, i16 3614, i16 14303, i16 3079, i16 15219, i16 854, i16 10240, i16 6359, i16 14944, i16 5709, i16 13887, i16 4672, i16 12914, i16 8939, i16 5884, i16 11562, i16 1114, i16 10965, i16 7658, i16 9284, i16 6232, i16 14002, i16 7152, i16 15182, i16 6358, i16 10016, i16 4548, i16 11567, i16 5800, i16 10494, i16 70, i16 11189, i16 7806, i16 3855, i16 16329, i16 7609, i16 4633, i16 14467, i16 5360, i16 12943, i16 9013, i16 6465, i16 12564, i16 96, i16 7942, i16 9688, i16 6554, i16 9147, i16 7980, i16 4109, i16 12150, i16 163, i16 14753, i16 6723, i16 15946, i16 644, i16 11906, i16 7966, i16 2159, i16 8167, i16 10536, i16 6037, i16 12213, i16 2899, i16 7949, i16 13485, i16 4357, i16 14789, i16 1492, i16 12244, i16 9733, i16 13786, i16 8476, i16 3816, i16 9968, i16 14090, i16 5391, i16 2098, i16 6758, i16 10635, i16 316, i16 12545, i16 5507, i16 14762, i16 3972, i16 13878, i16 9569, i16 5333, i16 12249, i16 4601, i16 13294, i16 6930, i16 9839, i16 5751, i16 14527, i16 3955, i16 11484, i16 4841, i16 11028, i16 5876, i16 15198, i16 7452, i16 2123, i16 15699, i16 10746, i16 6018, i16 12077, i16 4337, i16 11410, i16 2732, i16 7686, i16 15435, i16 4375, i16 10291, i16 3637, i16 11684, i16 6321, i16 12848, i16 1959, i16 14706, i16 10056, i16 1138, i16 14357, i16 2823, i16 10980, i16 1829, i16 7301, i16 10802, i16 5823, i16 11347, i16 4616, i16 9931, i16 6686, i16 12898, i16 4504, i16 11000, i16 3241, i16 9675, i16 1057, i16 11683, i16 2856, i16 15024, i16 1837, i16 7447, i16 15476, i16 6588, i16 2438, i16 15015, i16 1586, i16 8534, i16 3048, i16 9178, i16 392, i16 14275, i16 8438, i16 1979, i16 15375, i16 4018, i16 13672, i16 5059, i16 14994, i16 9649, i16 687, i16 12012, i16 8720, i16 1888, i16 11140, i16 7269, i16 1037, i16 14238, i16 3962, i16 10800, i16 15001, i16 1313, i16 13249, i16 2901, i16 14657, i16 9487, i16 5603, i16 10880, i16 4840, i16 11529, i16 4472, i16 9922, i16 5192, i16 13962, i16 6642, i16 15101, i16 17, i16 13093, i16 4946, i16 11166, i16 5303, i16 9656, i16 6977, i16 8656, i16 11432, i16 3325, i16 5531, i16 141, i16 10619, i16 14851, i16 1795, i16 6394, i16 11550, i16 8130, i16 14334, i16 5132, i16 15795, i16 7707, i16 2280, i16 8091, i16 10560, i16 6087, i16 487, i16 14347, i16 1994, i16 16102, i16 8601, i16 3517, i16 15695, i16 770, i16 7520, i16 13148, i16 6209, i16 15938, i16 3473, i16 13281, i16 410, i16 12331, i16 6683, i16 9132, i16 691, i16 14665, i16 2310, i16 13734, i16 6474, i16 8570, i16 11168, i16 1521, i16 12152, i16 7895, i16 13954, i16 2853, i16 15268, i16 4491, i16 7676, i16 9053, i16 4562, i16 12317, i16 7433, i16 13228, i16 5893, i16 8701, i16 15816, i16 2729, i16 13907, i16 90, i16 7969, i16 12527, i16 1924, i16 8526, i16 16267, i16 1527, i16 13670, i16 5166, i16 15886, i16 7048, i16 10001, i16 5569, i16 8543, i16 13527, i16 3799, i16 9668, i16 12830, i16 4025, i16 10260, i16 16120, i16 5523, i16 12091, i16 7702, i16 3301, i16 12518, i16 6512, i16 8102, i16 9856, i16 2525, i16 12591, i16 1710, i16 7221, i16 14073, i16 4958, i16 15236, i16 7841, i16 3230, i16 16097, i16 5077, i16 10250, i16 8077, i16 2996, i16 6062, i16 10549, i16 5251, i16 11811, i16 6905, i16 1522, i16 15622, i16 2662, i16 9774, i16 1681, i16 12653, i16 2723, i16 10680, i16 1406, i16 11047, i16 4355, i16 10114, i16 3934, i16 15735, i16 1021, i16 14380, i16 2042, i16 16244, i16 873, i16 6294, i16 15128, i16 8241, i16 15906, i16 5951, i16 2926, i16 8807, i16 15575, i16 3220, i16 13021, i16 1117, i16 9752, i16 3464, i16 11428, i16 6490, i16 13356, i16 1448, i16 15991, i16 8746, i16 3715, i16 10044, i16 7899, i16 1320, i16 11220, i16 5156, i16 12173, i16 9269, i16 2418, i16 10664, i16 1206, i16 9565, i16 5230, i16 10545, i16 3887, i16 13787, i16 4990, i16 13018, i16 4564, i16 7940, i16 9566, i16 366, i16 15834, i16 3309, i16 14317, i16 6744, i16 735, i16 6009, i16 10862, i16 1231, i16 9905, i16 13865, i16 118, i16 16151, i16 6604, i16 2233, i16 9805, i16 587, i16 11764, i16 3902, i16 10397, i16 5205, i16 9316, i16 15979, i16 4909, i16 14110, i16 7141, i16 2920, i16 11741, i16 4102, i16 10506, i16 7933, i16 2278, i16 14710, i16 811, i16 10858, i16 2657, i16 12377, i16 510, i16 5965, i16 14133, i16 7481, i16 801, i16 13071, i16 2200, i16 15790, i16 9103, i16 5357, i16 14732, i16 623, i16 14146, i16 6979, i16 9239, i16 5967, i16 11610, i16 2762, i16 10288, i16 1216, i16 13396, i16 8957, i16 6166, i16 13143, i16 1747, i16 15645, i16 9152, i16 13612, i16 2437, i16 15933, i16 451, i16 8349, i16 12534, i16 5901, i16 13315, i16 5142, i16 15314, i16 6983, i16 13779, i16 3851, i16 15558, i16 7344, i16 13296, i16 2368, i16 11983, i16 7439, i16 9264, i16 4292, i16 12133, i16 3679, i16 13001, i16 10388, i16 2119, i16 9443, i16 3605, i16 12877, i16 7519, i16 13451, i16 473, i16 10418, i16 4890, i16 11006, i16 4511, i16 13170, i16 806, i16 15060, i16 3252, i16 11939, i16 4336, i16 12477, i16 6603, i16 13056, i16 5049, i16 14937, i16 2864, i16 13881, i16 8225, i16 4714, i16 15271, i16 5652, i16 13652, i16 2871, i16 14714, i16 7036, i16 16260, i16 1582, i16 11375, i16 2670, i16 9997, i16 15143, i16 3794, i16 12663, i16 4801, i16 10098, i16 5160, i16 13129, i16 8291, i16 15913, i16 4023, i16 13497, i16 8053, i16 3010, i16 11183, i16 3759, i16 9397, i16 15313, i16 4040, i16 14034, i16 7232, i16 14591, i16 1258, i16 13070, i16 6911, i16 2387, i16 11477, i16 551, i16 10728, i16 8826, i16 6236, i16 15390, i16 422, i16 12203, i16 6367, i16 9007, i16 13175, i16 4245, i16 15929, i16 7340, i16 8724, i16 11636, i16 1960, i16 11172, i16 6650, i16 10083, i16 8201, i16 4978, i16 13518, i16 1531, i16 8834, i16 11914, i16 4864, i16 10890, i16 1020, i16 15571, i16 4123, i16 13002, i16 5853, i16 10708, i16 3770, i16 11407, i16 445, i16 8567, i16 11815, i16 5637, i16 783, i16 7057, i16 11071, i16 3755, i16 9337, i16 14460, i16 4319, i16 11197, i16 882, i16 10477, i16 8113, i16 364, i16 7763, i16 11719, i16 8924, i16 828, i16 5862, i16 14616, i16 6510, i16 1565, i16 12717, i16 8392, i16 6428, i16 9949, i16 7887, i16 4652, i16 13308, i16 6688, i16 11531, i16 1342, i16 10252, i16 3751, i16 12076, i16 7372, i16 14549, i16 2664, i16 16085, i16 8517, i16 7105, i16 9920, i16 5659, i16 9276, i16 7788, i16 2370, i16 14618, i16 857, i16 11519, i16 4097, i16 10400, i16 6778, i16 1790, i16 12607, i16 574, i16 10293, i16 4296, i16 10891, i16 8175, i16 911, i16 7868, i16 10363, i16 5478, i16 15569, i16 6914, i16 1362, i16 11571, i16 7316, i16 14579, i16 1134, i16 10769, i16 2591, i16 11840, i16 2069, i16 7479, i16 9293, i16 5291, i16 14949, i16 5772, i16 13009, i16 1013, i16 8224, i16 12398, i16 5590, i16 2483, i16 8946, i16 12165, i16 4500, i16 14814, i16 8644, i16 4150, i16 15097, i16 5447, i16 13414, i16 1304, i16 7368, i16 13025, i16 4817, i16 13942, i16 3072, i16 5802, i16 11418, i16 6480, i16 1781, i16 13863, i16 5159, i16 15335, i16 4600, i16 14287, i16 3523, i16 14840, i16 1068, i16 7286, i16 11327, i16 6249, i16 3212, i16 16178, i16 3716, i16 13509, i16 7549, i16 9969, i16 317, i16 16027, i16 2404, i16 14316, i16 4732, i16 15125, i16 6896, i16 2758, i16 14093, i16 7746, i16 15264, i16 4661, i16 12878, i16 6639, i16 2110, i16 9879, i16 3280, i16 14844, i16 4134, i16 14179, i16 6082, i16 16079, i16 2002, i16 5676, i16 12400, i16 8499, i16 3621, i16 10821, i16 15009, i16 3084, i16 14046, i16 269, i16 15601, i16 2458, i16 14565, i16 674, i16 15340, i16 2791, i16 14392, i16 4962, i16 16259, i16 6262, i16 1908, i16 8717, i16 12328, i16 6141, i16 1698, i16 12016, i16 2573, i16 13762, i16 222, i16 15241, i16 10982, i16 5776, i16 9477, i16 7020, i16 14149, i16 46, i16 16232, i16 8765, i16 3803, i16 14186, i16 7404, i16 15817, i16 1896, i16 13200, i16 6127, i16 11980, i16 3586, i16 12875, i16 105, i16 8955, i16 14156, i16 5671, i16 2205, i16 8878, i16 12392, i16 5581, i16 15132, i16 4640, i16 10492, i16 14719, i16 534, i16 12226, i16 1674, i16 10441, i16 4362, i16 14465, i16 6194, i16 1599, i16 10683, i16 16337, i16 6370, i16 3021, i16 11122, i16 784, i16 12458, i16 7750, i16 2066, i16 11203, i16 3330, i16 14637, i16 9509, i16 3531, i16 10607, i16 1465, i16 16207, i16 8367, i16 36, i16 14586, i16 9572, i16 4115, i16 10557, i16 3098, i16 9855, i16 238, i16 11795, i16 6063, i16 8979, i16 12945, i16 4072, i16 15070, i16 8362, i16 1657, i16 11437, i16 6436, i16 2099, i16 14554, i16 8303, i16 4396, i16 12319, i16 6695, i16 9740, i16 2143, i16 12600, i16 9074, i16 4928, i16 11551, i16 2019, i16 10207, i16 1124, i16 13990, i16 7378, i16 16293, i16 6274, i16 8581, i16 12820, i16 2928, i16 11317, i16 4789, i16 9471, i16 13924, i16 3123, i16 16340, i16 9556, i16 513, i16 7913, i16 9787, i16 5777, i16 11640, i16 4030, i16 11216, i16 7329, i16 8852, i16 5162, i16 10727, i16 6493, i16 11849, i16 1043, i16 9331, i16 14934, i16 5616, i16 16, i16 8981, i16 13649, i16 3952, i16 15681, i16 6694, i16 10248, i16 3418, i16 8273, i16 1775, i16 15770, i16 3093, i16 8538, i16 12872, i16 4425, i16 11930, i16 6351, i16 9611, i16 3038, i16 6517, i16 12309, i16 4887, i16 14389, i16 2040, i16 14956, i16 8586, i16 6226, i16 11111, i16 2816, i16 8310, i16 16126, i16 6111, i16 2934, i16 13594, i16 207, i16 9187, i16 8024, i16 3696, i16 11064, i16 4870, i16 15694, i16 6363, i16 11916, i16 3234, i16 10177, i16 13619, i16 8500, i16 242, i16 8096, i16 13683, i16 5923, i16 10174, i16 5103, i16 15734, i16 9706, i16 4871, i16 12140, i16 8408, i16 2500, i16 15155, i16 8076, i16 11976, i16 4380, i16 10070, i16 12862, i16 3594, i16 8197, i16 15646, i16 896, i16 12149, i16 5830, i16 13394, i16 8674, i16 2317, i16 15567, i16 2911, i16 10729, i16 171, i16 13657, i16 9699, i16 5154, i16 12842, i16 9433, i16 3827, i16 11554, i16 7148, i16 9209, i16 858, i16 13593, i16 8161, i16 5491, i16 16246, i16 235, i16 8604, i16 14720, i16 5730, i16 10755, i16 4036, i16 11453, i16 56, i16 12454, i16 1792, i16 7522, i16 9973, i16 1265, i16 13216, i16 3522, i16 7693, i16 10406, i16 1739, i16 7212, i16 13656, i16 3465, i16 15441, i16 1879, i16 7579, i16 13534, i16 6013, i16 1731, i16 12585, i16 13659, i16 244, i16 9887, i16 3286, i16 14000, i16 7136, i16 2379, i16 13340, i16 7525, i16 15419, i16 4843, i16 11117, i16 7466, i16 1539, i16 13080, i16 5298, i16 10613, i16 13552, i16 4304, i16 12120, i16 1499, i16 7642, i16 11096, i16 2362, i16 13378, i16 1106, i16 14808, i16 11010, i16 232, i16 9314, i16 3204, i16 10091, i16 7655, i16 1286, i16 12214, i16 4681, i16 13422, i16 9837, i16 578, i16 11731, i16 7553, i16 9475, i16 6557, i16 16336, i16 1841, i16 13798, i16 6818, i16 13210, i16 2704, i16 9655, i16 403, i16 15936, i16 7625, i16 2320, i16 5174, i16 14957, i16 9959, i16 1644, i16 15381, i16 2745, i16 13492, i16 1164, i16 6963, i16 14435, i16 190, i16 6459, i16 12604, i16 5661, i16 694, i16 6804, i16 13574, i16 2147, i16 6659, i16 11233, i16 1354, i16 7131, i16 13032, i16 5293, i16 16291, i16 3398, i16 6885, i16 11463, i16 5238, i16 10218, i16 5669, i16 12412, i16 6759, i16 2849, i16 15284, i16 529, i16 7019, i16 13374, i16 1328, i16 14780, i16 3137, i16 15778, i16 3541, i16 11951, i16 1430, i16 7234, i16 13116, i16 6207, i16 3516, i16 13423, i16 3028, i16 15502, i16 8698, i16 5604, i16 9105, i16 15216, i16 3805, i16 12258, i16 6571, i16 8439, i16 15148, i16 181, i16 14430, i16 5406, i16 11780, i16 4675, i16 10531, i16 5516, i16 12547, i16 9327, i16 1183, i16 16074, i16 8434, i16 4204, i16 3049, i16 15831, i16 5648, i16 11027, i16 4702, i16 12188, i16 9707, i16 4195, i16 11533, i16 3050, i16 10018, i16 638, i16 12543, i16 8627, i16 6212, i16 16317, i16 978, i16 7807, i16 9896, i16 6041, i16 15392, i16 3478, i16 9086, i16 15096, i16 4925, i16 10369, i16 7785, i16 4259, i16 8045, i16 15517, i16 5803, i16 11781, i16 4199, i16 16017, i16 3381, i16 14593, i16 1778, i16 6513, i16 12974, i16 3488, i16 15282, i16 1575, i16 12529, i16 3276, i16 10618, i16 7803, i16 943, i16 8171, i16 10936, i16 4597, i16 12778, i16 8758, i16 4145, i16 14226, i16 10587, i16 6860, i16 3308, i16 11965, i16 5580, i16 10812, i16 4299, i16 9134, i16 12933, i16 4434, i16 9399, i16 16060, i16 1986, i16 11106, i16 7674, i16 15612, i16 3949, i16 9307, i16 15243, i16 4694, i16 14398, i16 9945, i16 2556, i16 11049, i16 1693, i16 8116, i16 14592, i16 601, i16 13933, i16 1619, i16 16029, i16 2588, i16 8098, i16 11263, i16 4439, i16 8258, i16 15915, i16 2991, i16 10312, i16 5533, i16 12723, i16 5975, i16 10798, i16 4550, i16 13712, i16 9904, i16 2363, i16 12259, i16 9671, i16 705, i16 11866, i16 7752, i16 1490, i16 14366, i16 2623, i16 7847, i16 13555, i16 583, i16 15819, i16 2491, i16 9727, i16 6329, i16 8222, i16 13031, i16 2304, i16 15876, i16 901, i16 14479, i16 2548, i16 6792, i16 10912, i16 3765, i16 12302, i16 9534, i16 10846, i16 4394, i16 12821, i16 1957, i16 15648, i16 582, i16 8194, i16 15137, i16 1167, i16 10682, i16 5932, i16 13799, i16 3693, i16 14493, i16 2312, i16 9008, i16 12312, i16 2929, i16 13871, i16 431, i16 8832, i16 12728, i16 5735, i16 699, i16 8401, i16 15893, i16 1734, i16 9037, i16 12583, i16 2326, i16 13708, i16 762, i16 13123, i16 8743, i16 6769, i16 9448, i16 7518, i16 15630, i16 4549, i16 10713, i16 5262, i16 11290, i16 4309, i16 14087, i16 4977, i16 14807, i16 5811, i16 15551, i16 1985, i16 13999, i16 7046, i16 1405, i16 12292, i16 8348, i16 845, i16 13275, i16 9351, i16 4100, i16 12856, i16 424, i16 16180, i16 7934, i16 1904, i16 11446, i16 3409, i16 7814, i16 13703, i16 3712, i16 12427, i16 1685, i16 10818, i16 7526, i16 593, i16 11820, i16 2796, i16 6303, i16 13658, i16 4555, i16 9339, i16 12617, i16 3867, i16 10894, i16 7005, i16 11955, i16 4784, i16 9880, i16 14904, i16 1390, i16 13967, i16 9286, i16 5361, i16 12235, i16 4178, i16 11084, i16 16, i16 10099, i16 1918, i16 15405, i16 8355, i16 3708, i16 15724, i16 8122, i16 4792, i16 14982, i16 8783, i16 4326, i16 11002, i16 5976, i16 11682, i16 4546, i16 8850, i16 10899, i16 5181, i16 11494, i16 4610, i16 12480, i16 1221, i16 9916, i16 6897, i16 8902, i16 11344, i16 4168, i16 8283, i16 14003, i16 5300, i16 14725, i16 744, i16 6865, i16 1649, i16 14165, i16 8980, i16 6158, i16 8680, i16 12701, i16 3485, i16 7011, i16 13127, i16 5279, i16 16167, i16 2013, i16 10861, i16 5109, i16 11295, i16 4136, i16 6617, i16 14894, i16 5399, i16 11876, i16 7059, i16 2155, i16 14124, i16 7268, i16 12116, i16 3691, i16 7161, i16 13897, i16 3863, i16 11138, i16 6300, i16 9697, i16 7959, i16 2395, i16 12451, i16 345, i16 11346, i16 2633, i16 10185, i16 979, i16 14470, i16 6879, i16 9680, i16 625, i16 11974, i16 2390, i16 12602, i16 3860, i16 11517, i16 5044, i16 9832, i16 15406, i16 3380, i16 5647, i16 16075, i16 6091, i16 1347, i16 14849, i16 8406, i16 6621, i16 10338, i16 4669, i16 15041, i16 5521, i16 13287, i16 1202, i16 9845, i16 6185, i16 8766, i16 14190, i16 3004, i16 13244, i16 6078, i16 8948, i16 12921, i16 8334, i16 358, i16 14979, i16 7254, i16 1166, i16 15749, i16 8394, i16 2166, i16 9035, i16 14328, i16 808, i16 5910, i16 12562, i16 6651, i16 2052, i16 10809, i16 967, i16 15201, i16 7575, i16 14373, i16 4818, i16 12469, i16 6728, i16 605, i16 11614, i16 6416, i16 1208, i16 12939, i16 2550, i16 6786, i16 15950, i16 3285, i16 13782, i16 931, i16 16171, i16 2148, i16 7258, i16 12957, i16 1646, i16 14929, i16 3774, i16 15665, i16 4915, i16 14201, i16 3282, i16 5946, i16 13132, i16 10068, i16 63, i16 11575, i16 2884, i16 8151, i16 15195, i16 12111, i16 7587, i16 960, i16 11895, i16 2610, i16 5717, i16 14289, i16 10112, i16 2793, i16 11784, i16 3907, i16 9338, i16 6787, i16 15074, i16 260, i16 13406, i16 8308, i16 1807, i16 10968, i16 3601, i16 16038, i16 9677, i16 3261, i16 10547, i16 1948, i16 13135, i16 9893, i16 477, i16 16154, i16 7370, i16 1512, i16 15288, i16 4751, i16 14040, i16 5645, i16 15111, i16 5877, i16 13940, i16 5074, i16 13301, i16 8738, i16 2171, i16 15744, i16 8466, i16 6171, i16 9421, i16 7092, i16 9989, i16 40, i16 15005, i16 2357, i16 6518, i16 11382, i16 9039, i16 2411, i16 12430, i16 7311, i16 10484, i16 2151, i16 14296, i16 2917, i16 12300, i16 712, i16 10934, i16 8162, i16 15483, i16 3174, i16 14767, i16 314, i16 5601, i16 11603, i16 5066, i16 16162, i16 2021, i16 5396, i16 15472, i16 9705, i16 3245, i16 12353, i16 6150, i16 9531, i16 4513, i16 12691, i16 6341, i16 3501, i16 8603, i16 11112, i16 4020, i16 9598, i16 15016, i16 4686, i16 13074, i16 6858, i16 2705, i16 8905, i16 13267, i16 3255, i16 9344, i16 14806, i16 4189, i16 13864, i16 10611, i16 5407, i16 9496, i16 13236, i16 379, i16 12189, i16 5302, i16 8047, i16 10156, i16 6152, i16 14495, i16 4002, i16 10072, i16 7470, i16 10917, i16 2669, i16 11556, i16 402, i16 8565, i16 15270, i16 1503, i16 6534, i16 16215, i16 4729, i16 9357, i16 13328, i16 4073, i16 8446, i16 3656, i16 16340, i16 7855, i16 14816, i16 9054, i16 1476, i16 6320, i16 15321, i16 401, i16 8004, i16 12702, i16 1356, i16 7559, i16 12087, i16 3200, i16 15586, i16 9392, i16 4569, i16 12964, i16 1282, i16 6247, i16 14716, i16 4798, i16 15475, i16 7893, i16 4993, i16 11541, i16 5412, i16 9250, i16 12367, i16 3296, i16 10775, i16 1173, i16 10423, i16 2964, i16 9923, i16 1650, i16 11842, i16 7451, i16 3825, i16 12349, i16 5461, i16 13373, i16 2804, i16 16028, i16 1327, i16 14447, i16 8444, i16 5907, i16 8877, i16 13710, i16 558, i16 14532, i16 7776, i16 4449, i16 15663, i16 3822, i16 13081, i16 5836, i16 9575, i16 7096, i16 14143, i16 5222, i16 2366, i16 6576, i16 10694, i16 4683, i16 10225, i16 15862, i16 8573, i16 1052, i16 10118, i16 7341, i16 11534, i16 1454, i16 7782, i16 10689, i16 5096, i16 14480, i16 2608, i16 13810, i16 68, i16 15253, i16 7388, i16 13754, i16 2924, i16 16333, i16 284, i16 7757, i16 11729, i16 2348, i16 9936, i16 16111, i16 6163, i16 1455, i16 11316, i16 7448, i16 2226, i16 10011, i16 8426, i16 3158, i16 15374, i16 1834, i16 7477, i16 10866, i16 3913, i16 9221, i16 14735, i16 2844, i16 11423, i16 264, i16 9075, i16 14098, i16 756, i16 6190, i16 13789, i16 9048, i16 7050, i16 12023, i16 2942, i16 10997, i16 8086, i16 3355, i16 12725, i16 6273, i16 2018, i16 10190, i16 360, i16 13525, i16 6670, i16 2102, i16 5014, i16 12366, i16 7441, i16 11451, i16 4496, i16 9194, i16 14038, i16 4265, i16 15703, i16 9765, i16 4795, i16 10744, i16 6123, i16 767, i16 14557, i16 6840, i16 8496, i16 11068, i16 156, i16 11690, i16 8860, i16 1044, i16 14510, i16 3441, i16 13231, i16 2738, i16 6629, i16 13803, i16 5199, i16 16296, i16 4342, i16 13486, i16 4905, i16 15866, i16 8913, i16 127, i16 14831, i16 8097, i16 1381, i16 7729, i16 11199, i16 4689, i16 13117, i16 5384, i16 12112, i16 3140, i16 12659, i16 4338, i16 11021, i16 3569, i16 11863, i16 8683, i16 148, i16 9918, i16 8252, i16 1041, i16 15574, i16 2606, i16 8959, i16 12755, i16 7650, i16 12048, i16 965, i16 13095, i16 7888, i16 2179, i16 7002, i16 13569, i16 4165, i16 14574, i16 3668, i16 13839, i16 5598, i16 16087, i16 697, i16 7456, i16 11390, i16 4903, i16 10559, i16 3121, i16 10385, i16 1505, i16 11677, i16 6451, i16 12672, i16 3665, i16 8830, i16 14144, i16 5274, i16 496, i16 8561, i16 14658, i16 5072, i16 14016, i16 6050, i16 16340, i16 175, i16 7644, i16 10309, i16 6488, i16 14534, i16 4992, i16 15656, i16 1609, i16 6630, i16 12858, i16 5033, i16 15401, i16 6834, i16 3407, i16 8353, i16 11805, i16 5346, i16 1439, i16 16134, i16 4013, i16 13688, i16 4859, i16 14822, i16 9657, i16 1040, i16 14556, i16 7361, i16 15503, i16 11700, i16 4573, i16 10357, i16 13044, i16 8389, i16 134, i16 16014, i16 3179, i16 13483, i16 7127, i16 2900, i16 11349, i16 5987, i16 2452, i16 14315, i16 1642, i16 12892, i16 7471, i16 10047, i16 2545, i16 12254, i16 3551, i16 13616, i16 7614, i16 4456, i16 12601, i16 6070, i16 10897, i16 1234, i16 15000, i16 10173, i16 16, i16 9087, i16 7202, i16 11406, i16 664, i16 12049, i16 7643, i16 4122, i16 11565, i16 2971, i16 10820, i16 6776, i16 15326, i16 382, i16 10374, i16 8141, i16 1907, i16 7657, i16 16274, i16 1105, i16 10039, i16 7256, i16 15296, i16 1500, i16 13974, i16 6484, i16 13480, i16 3534, i16 12187, i16 4823, i16 11793, i16 6020, i16 67, i16 16318, i16 3440, i16 14396, i16 9027, i16 4007, i16 14017, i16 10438, i16 5348, i16 11998, i16 135, i16 8037, i16 10335, i16 2369, i16 8824, i16 13293, i16 9861, i16 1870, i16 15949, i16 8129, i16 13187, i16 4209, i16 15631, i16 8965, i16 4495, i16 8228, i16 14547, i16 1222, i16 5865, i16 11399, i16 7484, i16 11973, i16 4053, i16 10356, i16 884, i16 12098, i16 5374, i16 11241, i16 14253, i16 3484, i16 12389, i16 841, i16 10408, i16 2972, i16 13434, i16 9698, i16 1123, i16 10627, i16 2589, i16 13121, i16 9328, i16 15942, i16 2351, i16 14632, i16 8739, i16 6355, i16 10216, i16 657, i16 12445, i16 2220, i16 6944, i16 10838, i16 3896, i16 11323, i16 5249, i16 2687, i16 15032, i16 1219, i16 5594, i16 14399, i16 9842, i16 4045, i16 10711, i16 1300, i16 10199, i16 14638, i16 918, i16 8754, i16 12414, i16 7237, i16 9513, i16 3786, i16 16117, i16 4873, i16 14102, i16 5560, i16 15176, i16 8594, i16 1581, i16 10699, i16 3001, i16 15647, i16 4272, i16 9548, i16 7709, i16 4058, i16 11255, i16 14639, i16 2145, i16 6263, i16 15384, i16 9200, i16 1967, i16 14158, i16 6368, i16 16217, i16 4465, i16 13545, i16 3624, i16 12027, i16 4043, i16 12766, i16 6724, i16 11325, i16 3916, i16 8010, i16 14254, i16 2109, i16 6072, i16 10871, i16 5234, i16 11472, i16 2016, i16 15073, i16 6789, i16 10089, i16 1719, i16 14700, i16 8447, i16 4589, i16 11067, i16 6719, i16 2787, i16 12208, i16 6267, i16 1496, i16 14945, i16 3155, i16 9197, i16 15130, i16 4736, i16 12327, i16 6684, i16 2808, i16 5747, i16 12086, i16 6801, i16 942, i16 5816, i16 11005, i16 7262, i16 658, i16 13352, i16 2209, i16 10015, i16 7075, i16 15577, i16 2607, i16 13846, i16 1808, i16 15896, i16 3344, i16 13541, i16 8781, i16 3047, i16 8099, i16 1572, i16 9383, i16 4606, i16 13163, i16 5464, i16 11771, i16 7714, i16 4070, i16 13852, i16 7424, i16 12114, i16 5210, i16 1307, i16 5683, i16 12576, i16 4576, i16 10732, i16 2090, i16 14442, i16 8410, i16 5882, i16 9014, i16 15800, i16 5024, i16 13935, i16 1607, i16 9222, i16 6021, i16 9619, i16 7523, i16 11165, i16 2247, i16 6915, i16 13805, i16 5375, i16 15521, i16 6431, i16 3640, i16 7755, i16 15975, i16 5468, i16 78, i16 14999, i16 8178, i16 2015, i16 11491, i16 579, i16 10835, i16 2230, i16 6497, i16 16340, i16 5153, i16 13415, i16 369, i16 8220, i16 12278, i16 2284, i16 15853, i16 7356, i16 3623, i16 8463, i16 12596, i16 5459, i16 3201, i16 7946, i16 10283, i16 914, i16 8599, i16 12575, i16 1608, i16 9135, i16 6089, i16 14358, i16 2572, i16 15611, i16 649, i16 13836, i16 9396, i16 4723, i16 12799, i16 9529, i16 3083, i16 16007, i16 4038, i16 7999, i16 9199, i16 586, i16 15917, i16 7751, i16 3625, i16 13427, i16 9731, i16 1292, i16 15370, i16 8256, i16 545, i16 15683, i16 9497, i16 4827, i16 11190, i16 6942, i16 2076, i16 13060, i16 1108, i16 15385, i16 8015, i16 14082, i16 3879, i16 14869, i16 7898, i16 13666, i16 2327, i16 14727, i16 6084, i16 9108, i16 15383, i16 3521, i16 12171, i16 4418, i16 10914, i16 6317, i16 9665, i16 4950, i16 11521, i16 6584, i16 2079, i16 15408, i16 10760, i16 6271, i16 16072, i16 8242, i16 2336, i16 14882, i16 8471, i16 74, i16 16255, i16 8958, i16 1836, i16 6048, i16 15617, i16 7851, i16 11161, i16 7281, i16 132, i16 13470, i16 8059, i16 4984, i16 12860, i16 2807, i16 11911, i16 247, i16 12579, i16 3215, i16 8198, i16 15953, i16 11992, i16 3438, i16 13431, i16 3849, i16 15768, i16 9098, i16 824, i16 12468, i16 2577, i16 8347, i16 12928, i16 10437, i16 2315, i16 13528, i16 10000, i16 4458, i16 11750, i16 6888, i16 8747, i16 13452, i16 4087, i16 9849, i16 12450, i16 3243, i16 11230, i16 8942, i16 6594, i16 14336, i16 4668, i16 13520, i16 9017, i16 839, i16 10700, i16 14237, i16 1331, i16 8889, i16 14766, i16 10801, i16 3552, i16 12851, i16 2646, i16 6610, i16 10669, i16 15061, i16 865, i16 7317, i16 10237, i16 5219, i16 10782, i16 6445, i16 2477, i16 15812, i16 288, i16 6949, i16 11679, i16 842, i16 10171, i16 14501, i16 5079, i16 13015, i16 4519, i16 12373, i16 8808, i16 2250, i16 6432, i16 11937, i16 5105, i16 10058, i16 12959, i16 3731, i16 7739, i16 13768, i16 863, i16 16340, i16 9764, i16 4021, i16 11077, i16 5295, i16 11721, i16 214, i16 10857, i16 1705, i16 11898, i16 4997, i16 10272, i16 3838, i16 12264, i16 1670, i16 7324, i16 10788, i16 121, i16 13419, i16 8714, i16 1014, i16 15179, i16 8000, i16 311, i16 14406, i16 7385, i16 9093, i16 3727, i16 12706, i16 540, i16 13636, i16 7025, i16 9520, i16 4405, i16 12284, i16 6386, i16 3313, i16 15002, i16 10205, i16 546, i16 13338, i16 2752, i16 14874, i16 8947, i16 5550, i16 15516, i16 1113, i16 7199, i16 15112, i16 4262, i16 7716, i16 9902, i16 6420, i16 12896, i16 722, i16 7244, i16 14755, i16 511, i16 12223, i16 7989, i16 4824, i16 11576, i16 5927, i16 9267, i16 14792, i16 460, i16 4976, i16 11852, i16 8284, i16 3377, i16 13969, i16 1157, i16 15333, i16 2878, i16 6338, i16 15710, i16 8058, i16 827, i16 14437, i16 7688, i16 1361, i16 11816, i16 2766, i16 10987, i16 1635, i16 5978, i16 12920, i16 8138, i16 3933, i16 7374, i16 13097, i16 421, i16 5996, i16 15523, i16 4982, i16 14517, i16 9811, i16 5495, i16 3157, i16 8801, i16 13685, i16 1772, i16 14681, i16 2935, i16 13405, i16 10433, i16 5008, i16 9096, i16 14751, i16 3781, i16 13813, i16 7597, i16 1815, i16 10761, i16 2709, i16 11142, i16 1097, i16 14251, i16 7323, i16 15158, i16 4216, i16 14107, i16 1562, i16 6864, i16 11378, i16 2300, i16 8430, i16 12656, i16 3374, i16 6414, i16 14443, i16 8675, i16 2667, i16 7171, i16 15854, i16 4794, i16 9603, i16 3289, i16 16265, i16 399, i16 13903, i16 8741, i16 5694, i16 12884, i16 4106, i16 16219, i16 7734, i16 3630, i16 12499, i16 4227, i16 13034, i16 9384, i16 3447, i16 12270, i16 1115, i16 14959, i16 5704, i16 10352, i16 3841, i16 11652, i16 1248, i16 15468, i16 2222, i16 8183, i16 12720, i16 4515, i16 8390, i16 11929, i16 4821, i16 9981, i16 3912, i16 11628, i16 2257, i16 10519, i16 8501, i16 11066, i16 1857, i16 8785, i16 14119, i16 1348, i16 15380, i16 5187, i16 10057, i16 1946, i16 9038, i16 6829, i16 9440, i16 1684, i16 15117, i16 2847, i16 14130, i16 1868, i16 5513, i16 9721, i16 13661, i16 6189, i16 1471, i16 12277, i16 5092, i16 10647, i16 5636, i16 10146, i16 12100, i16 1726, i16 5488, i16 13272, i16 9118, i16 3654, i16 15056, i16 5731, i16 15977, i16 7110, i16 8555, i16 15248, i16 5339, i16 2358, i16 16073, i16 10092, i16 4552, i16 11492, i16 8502, i16 1862, i16 12216, i16 7874, i16 267, i16 15943, i16 7412, i16 12483, i16 4256, i16 11547, i16 8652, i16 5587, i16 8055, i16 1188, i16 12181, i16 7442, i16 2234, i16 12428, i16 8363, i16 4372, i16 13195, i16 6393, i16 14862, i16 5463, i16 9868, i16 4906, i16 10726, i16 397, i16 11252, i16 2982, i16 8702, i16 16031, i16 5522, i16 14828, i16 4531, i16 9354, i16 7398, i16 11844, i16 474, i16 5778, i16 13791, i16 9047, i16 2271, i16 8459, i16 12788, i16 6362, i16 8879, i16 11584, i16 5328, i16 2863, i16 14989, i16 1132, i16 10129, i16 8302, i16 2299, i16 14764, i16 7178, i16 11173, i16 2539, i16 6966, i16 15743, i16 5111, i16 10583, i16 2908, i16 12040, i16 2011, i16 15811, i16 4910, i16 10523, i16 5784, i16 13740, i16 9815, i16 919, i16 14372, i16 2429, i16 6682, i16 14233, i16 1450, i16 16325, i16 6210, i16 13192, i16 3431, i16 5338, i16 16041, i16 6024, i16 12265, i16 4770, i16 11262, i16 8672, i16 2409, i16 12379, i16 14189, i16 4663, i16 16145, i16 4312, i16 13012, i16 6469, i16 11019, i16 4455, i16 10336, i16 16264, i16 6806, i16 2097, i16 15431, i16 8906, i16 6952, i16 14881, i16 2457, i16 13066, i16 273, i16 8226, i16 14583, i16 9000, i16 2401, i16 5869, i16 12193, i16 8629, i16 2075, i16 9640, i16 600, i16 11749, i16 2861, i16 9788, i16 13325, i16 8407, i16 1533, i16 15013, i16 2773, i16 13449, i16 6807, i16 9571, i16 3737, i16 11642, i16 4414, i16 11042, i16 1150, i16 15488, i16 6958, i16 119, i16 16184, i16 9242, i16 13976, i16 3880, i16 15203, i16 5786, i16 9956, i16 1246, i16 16289, i16 9312, i16 211, i16 7510, i16 11896, i16 2082, i16 16106, i16 3885, i16 13202, i16 5366, i16 7834, i16 12526, i16 3246, i16 10478, i16 252, i16 11577, i16 1735, i16 13332, i16 2931, i16 15777, i16 10473, i16 1346, i16 12642, i16 6174, i16 14224, i16 1017, i16 14633, i16 2473, i16 7550, i16 15500, i16 7147, i16 10643, i16 6446, i16 13579, i16 4735, i16 11970, i16 9044, i16 1620, i16 5558, i16 14281, i16 10161, i16 1437, i16 13395, i16 5899, i16 14210, i16 4708, i16 9244, i16 6861, i16 13027, i16 3080, i16 11861, i16 3612, i16 6768, i16 11039, i16 5342, i16 9462, i16 12514, i16 3724, i16 10572, i16 8112, i16 709, i16 7681, i16 14523, i16 9742, i16 446, i16 10707, i16 3027, i16 14973, i16 3562, i16 6994, i16 13386, i16 5605, i16 3110, i16 10505, i16 946, i16 10753, i16 3133, i16 10033, i16 205, i16 13285, i16 7804, i16 1062, i16 12155, i16 8147, i16 4201, i16 12627, i16 686, i16 9672, i16 7787, i16 4628, i16 15931, i16 6090, i16 3317, i16 11424, i16 7345, i16 15608, i16 109, i16 6878, i16 14030, i16 3833, i16 13556, i16 4948, i16 14728, i16 7028, i16 185, i16 6117, i16 11901, i16 5595, i16 10977, i16 4815, i16 15802, i16 1125, i16 14250, i16 6272, i16 13214, i16 2846, i16 10415, i16 3713, i16 9848, i16 12650, i16 4893, i16 2197, i16 6550, i16 11114, i16 493, i16 12905, i16 4253, i16 11435, i16 6074, i16 3421, i16 8709, i16 15439, i16 3749, i16 13578, i16 7200, i16 10121, i16 1903, i16 15590, i16 9613, i16 872, i16 14364, i16 5026, i16 13855, i16 5379, i16 15533, i16 6019, i16 9960, i16 4436, i16 7577, i16 15028, i16 4179, i16 11214, i16 3611, i16 7738, i16 10209, i16 5646, i16 10952, i16 760, i16 13092, i16 2001, i16 9317, i16 2683, i16 14454, i16 683, i16 6012, i16 15986, i16 8773, i16 522, i16 6214, i16 11825, i16 3951, i16 9829, i16 138, i16 8375, i16 12550, i16 976, i16 8128, i16 15066, i16 430, i16 8539, i16 14682, i16 1956, i16 16004, i16 7210, i16 306, i16 15227, i16 5094, i16 13795, i16 6820, i16 12375, i16 1703, i16 7988, i16 13905, i16 6692, i16 13164, i16 892, i16 8474, i16 16305, i16 42, i16 11034, i16 14883, i16 7153, i16 13587, i16 5462, i16 15453, i16 5764, i16 14427, i16 8641, i16 3383, i16 11287, i16 3801, i16 14526, i16 9455, i16 3008, i16 16209, i16 3700, i16 14236, i16 8684, i16 2190, i16 9062, i16 12976, i16 991, i16 13679, i16 3492, i16 9767, i16 12657, i16 5193, i16 10567, i16 6456, i16 10223, i16 1759, i16 12517, i16 7867, i16 15674, i16 2501, i16 14369, i16 715, i16 9263, i16 3363, i16 12122, i16 8203, i16 1762, i16 9055, i16 14845, i16 5081, i16 14139, i16 1939, i16 6143, i16 13625, i16 7810, i16 15379, i16 3074, i16 9658, i16 6707, i16 15640, i16 2851, i16 14015, i16 7277, i16 11711, i16 1519, i16 10667, i16 6153, i16 736, i16 12631, i16 8126, i16 5753, i16 2653, i16 11663, i16 6333, i16 9908, i16 1983, i16 10971, i16 7273, i16 975, i16 13977, i16 8300, i16 1965, i16 8917, i16 12177, i16 559, i16 8365, i16 15234, i16 1830, i16 13306, i16 3990, i16 12365, i16 4897, i16 7964, i16 15849, i16 5861, i16 9794, i16 7449, i16 12641, i16 4033, i16 13274, i16 7542, i16 15252, i16 2243, i16 7918, i16 16288, i16 6950, i16 14835, i16 4268, i16 14041, i16 5287, i16 9347, i16 7077, i16 12869, i16 5136, i16 12141, i16 4251, i16 13288, i16 8595, i16 3117, i16 11833, i16 1987, i16 11015, i16 3253, i16 15445, i16 4422, i16 9120, i16 3987, i16 9539, i16 7272, i16 11735, i16 4517, i16 9779, i16 6115, i16 1485, i16 9313, i16 2626, i16 12062, i16 1325, i16 11468, i16 2514, i16 7043, i16 15609, i16 4746, i16 13157, i16 335, i16 7357, i16 10996, i16 5288, i16 11376, i16 1111, i16 12803, i16 6506, i16 14799, i16 3944, i16 10365, i16 4773, i16 11076, i16 7165, i16 2579, i16 14898, i16 1190, i16 16206, i16 3118, i16 13917, i16 4206, i16 11174, i16 3669, i16 10748, i16 8563, i16 6352, i16 13651, i16 7070, i16 9932, i16 4630, i16 16156, i16 6871, i16 622, i16 12424, i16 8590, i16 7494, i16 10925, i16 1443, i16 11812, i16 5427, i16 8384, i16 14602, i16 1833, i16 7654, i16 10803, i16 923, i16 12590, i16 3207, i16 14225, i16 4453, i16 12951, i16 8933, i16 3333, i16 14781, i16 9124, i16 13644, i16 4068, i16 15320, i16 3554, i16 13168, i16 4141, i16 9246, i16 12587, i16 3807, i16 10687, i16 14708, i16 3103, i16 5471, i16 16100, i16 9719, i16 4391, i16 11794, i16 7359, i16 16025, i16 2425, i16 8642, i16 13727, i16 303, i16 11301, i16 2981, i16 15315, i16 1962, i16 11232, i16 3193, i16 10718, i16 4605, i16 13142, i16 9127, i16 3145, i16 11928, i16 1881, i16 10822, i16 2616, i16 11273, i16 1721, i16 16140, i16 2771, i16 9926, i16 800, i16 10424, i16 2378, i16 11370, i16 5711, i16 8835, i16 14813, i16 4693, i16 9950, i16 5952, i16 13049, i16 1180, i16 15898, i16 2567, i16 14652, i16 1714, i16 13972, i16 2783, i16 12569, i16 15829, i16 5722, i16 14276, i16 6755, i16 9562, i16 5179, i16 12513, i16 8945, i16 1534, i16 8270, i16 10131, i16 5546, i16 15185, i16 1800, i16 13271, i16 5984, i16 10296, i16 4052, i16 10771, i16 535, i16 11982, i16 8132, i16 16257, i16 1577, i16 14170, i16 9189, i16 4310, i16 11339, i16 4701, i16 11936, i16 5517, i16 9982, i16 1054, i16 14061, i16 6971, i16 1831, i16 12315, i16 2637, i16 15259, i16 77, i16 13037, i16 2714, i16 8494, i16 11150, i16 5991, i16 3142, i16 15127, i16 4553, i16 14411, i16 8870, i16 766, i16 11312, i16 3513, i16 12667, i16 9193, i16 4530, i16 14948, i16 5627, i16 9530, i16 6735, i16 10305, i16 2716, i16 15753, i16 7567, i16 4987, i16 99, i16 6951, i16 10399, i16 1330, i16 12274, i16 6770, i16 15103, i16 2748, i16 8032, i16 16234, i16 21, i16 6282, i16 10317, i16 13207, i16 6612, i16 2778, i16 13705, i16 6066, i16 139, i16 9366, i16 6844, i16 10823, i16 3717, i16 12142, i16 4644, i16 13471, i16 5082, i16 9521, i16 6560, i16 15059, i16 1551, i16 12206, i16 6618, i16 830, i16 13882, i16 5761, i16 10066, i16 5051, i16 15606, i16 7465, i16 12348, i16 4478, i16 10790, i16 5939, i16 15297, i16 4654, i16 13912, i16 7783, i16 15832, i16 966, i16 7049, i16 12026, i16 220, i16 10806, i16 3757, i16 11608, i16 4964, i16 12700, i16 5536, i16 10976, i16 6581, i16 10310, i16 5237, i16 3297, i16 10591, i16 378, i16 11171, i16 2923, i16 16082, i16 772, i16 14701, i16 6377, i16 13699, i16 2331, i16 12436, i16 6558, i16 9817, i16 3870, i16 15733, i16 2803, i16 13876, i16 7818, i16 15363, i16 5886, i16 1988, i16 6702, i16 11656, i16 5749, i16 701, i16 13190, i16 7493, i16 9501, i16 356, i16 15448, i16 6502, i16 11630, i16 4927, i16 9431, i16 16331, i16 4335, i16 10259, i16 5197, i16 11612, i16 8953, i16 5780, i16 13533, i16 3936, i16 15657, i16 9710, i16 338, i16 12810, i16 2795, i16 7009, i16 15791, i16 5158, i16 13764, i16 6279, i16 16, i16 12337, i16 7410, i16 2413, i16 15888, i16 465, i16 14624, i16 7902, i16 1301, i16 10527, i16 13883, i16 7935, i16 16199, i16 4712, i16 11085, i16 8229, i16 462, i16 7796, i16 11807, i16 1625, i16 9434, i16 7216, i16 12351, i16 5062, i16 1172, i16 8108, i16 11421, i16 1554, i16 9980, i16 14900, i16 3397, i16 14147, i16 1264, i16 15428, i16 7600, i16 9934, i16 1103, i16 8357, i16 12413, i16 39, i16 9228, i16 7991, i16 3754, i16 15932, i16 9728, i16 4416, i16 11442, i16 1194, i16 12822, i16 8667, i16 257, i16 6383, i16 14384, i16 1297, i16 13558, i16 3520, i16 11662, i16 6909, i16 1558, i16 4941, i16 10390, i16 13609, i16 4059, i16 16233, i16 2860, i16 14381, i16 7705, i16 10093, i16 354, i16 9227, i16 2983, i16 15514, i16 698, i16 11537, i16 13756, i16 4358, i16 15256, i16 4629, i16 13496, i16 5840, i16 10246, i16 3254, i16 11104, i16 4998, i16 15838, i16 8473, i16 1244, i16 14155, i16 7987, i16 23, i16 12330, i16 7063, i16 1494, i16 5076, i16 12940, i16 7920, i16 14664, i16 3414, i16 9907, i16 15830, i16 6319, i16 2058, i16 12595, i16 8031, i16 3797, i16 13262, i16 2906, i16 14890, i16 485, i16 7917, i16 13363, i16 1295, i16 14441, i16 7306, i16 2235, i16 14954, i16 1211, i16 12186, i16 2057, i16 7139, i16 11459, i16 5606, i16 9367, i16 12137, i16 2584, i16 10622, i16 1658, i16 9769, i16 16139, i16 3709, i16 11185, i16 8790, i16 5885, i16 11595, i16 4170, i16 9256, i16 12787, i16 5266, i16 2356, i16 11331, i16 1691, i16 12840, i16 2831, i16 15805, i16 6195, i16 14067, i16 4559, i16 13489, i16 3327, i16 14440, i16 2241, i16 15560, i16 9109, i16 14127, i16 4054, i16 15704, i16 8423, i16 5180, i16 11184, i16 5589, i16 11745, i16 6218, i16 2138, i16 14262, i16 6761, i16 16137, i16 3575, i16 13777, i16 4498, i16 14505, i16 10555, i16 2638, i16 8282, i16 14693, i16 3335, i16 15330, i16 6738, i16 3019, i16 13957, i16 9753, i16 3389, i16 11495, i16 6587, i16 9547, i16 24, i16 15570, i16 9116, i16 14142, i16 6129, i16 2169, i16 9295, i16 7403, i16 12557, i16 6509, i16 1893, i16 15327, i16 6314, i16 13834, i16 7958, i16 4250, i16 12980, i16 6175, i16 1139, i16 9081, i16 7349, i16 9703, i16 1617, i16 11941, i16 4017, i16 12764, i16 7564, i16 482, i16 9274, i16 3352, i16 11704, i16 5196, i16 12046, i16 9402, i16 4371, i16 10119, i16 14395, i16 8584, i16 2559, i16 10571, i16 228, i16 13444, i16 7585, i16 2651, i16 8805, i16 15171, i16 4836, i16 14247, i16 9107, i16 1458, i16 10931, i16 6067, i16 12395, i16 4609, i16 8820, i16 11785, i16 3658, i16 10895, i16 6173, i16 9983, i16 8156, i16 4670, i16 8812, i16 14064, i16 4196, i16 16340, i16 1337, i16 6198, i16 13107, i16 7922, i16 14451, i16 3991, i16 8251, i16 13430, i16 1145, i16 13858, i16 2105, i16 7257, i16 13260, i16 3144, i16 6477, i16 14420, i16 8592, i16 6092, i16 14661, i16 7135, i16 9763, i16 5377, i16 11514, i16 1242, i16 10386, i16 5873, i16 10629, i16 4860, i16 11328, i16 8453, i16 5500, i16 429, i16 12630, i16 7627, i16 3016, i16 13387, i16 867, i16 10298, i16 2870, i16 12984, i16 9125, i16 3943, i16 10581, i16 2426, i16 11416, i16 5929, i16 10213, i16 1153, i16 6184, i16 12751, i16 339, i16 7021, i16 10355, i16 4621, i16 11187, i16 7641, i16 9040, i16 4776, i16 15720, i16 7485, i16 2274, i16 12578, i16 8489, i16 5390, i16 8057, i16 3013, i16 12794, i16 7619, i16 15062, i16 1420, i16 5469, i16 11124, i16 8756, i16 5311, i16 11467, i16 1445, i16 11915, i16 8574, i16 2262, i16 9888, i16 5394, i16 14572, i16 2085, i16 13169, i16 6998, i16 8593, i16 15382, i16 2134, i16 13601, i16 5519, i16 12242, i16 7695, i16 4154, i16 15055, i16 2706, i16 6645, i16 15509, i16 2936, i16 5665, i16 11025, i16 15972, i16 4399, i16 12255, i16 5147, i16 10910, i16 5460, i16 11855, i16 886, i16 10814, i16 2339, i16 6895, i16 15883, i16 5115, i16 10304, i16 3119, i16 15356, i16 2024, i16 7629, i16 15995, i16 773, i16 13851, i16 3229, i16 15855, i16 6713, i16 12861, i16 983, i16 10704, i16 3373, i16 10113, i16 14761, i16 4955, i16 547, i16 7083, i16 12067, i16 1990, i16 6946, i16 10851, i16 4858, i16 15389, i16 10030, i16 1026, i16 16304, i16 9784, i16 361, i16 11827, i16 3058, i16 9271, i16 667, i16 12388, i16 2277, i16 8890, i16 14590, i16 4255, i16 15966, i16 752, i16 13845, i16 6703, i16 1404, i16 14648, i16 7121, i16 10116, i16 1774, i16 12217, i16 4240, i16 14374, i16 4769, i16 16273, i16 7190, i16 426, i16 15094, i16 5403, i16 14022, i16 7175, i16 1770, i16 15618, i16 7384, i16 14140, i16 4096, i16 8815, i16 13385, i16 2014, i16 14246, i16 655, i16 16205, i16 2199, i16 13091, i16 1031, i16 10258, i16 15050, i16 4856, i16 13448, i16 1730, i16 14649, i16 10151, i16 504, i16 11204, i16 3358, i16 9771, i16 14099, i16 608, i16 14958, i16 2487, i16 7503, i16 15781, i16 4786, i16 14092, i16 7115, i16 16202, i16 12636, i16 6399, i16 11889, i16 3561, i16 14893, i16 97, i16 6148, i16 10865, i16 8154, i16 16338, i16 1753, i16 14514, i16 8904, i16 716, i16 8532, i16 12693, i16 1168, i16 13311, i16 8277, i16 645, i16 7416, i16 9438, i16 2380, i16 15559, i16 1391, i16 14397, i16 7303, i16 13126, i16 3971, i16 9365, i16 12771, i16 3459, i16 12059, i16 996, i16 13024, i16 5473, i16 10749, i16 5012, i16 8665, i16 12793, i16 4366, i16 11343, i16 420, i16 10462, i16 2895, i16 15294, i16 5175, i16 13673, i16 7544, i16 2268, i16 8753, i16 15985, i16 10308, i16 4706, i16 15491, i16 9460, i16 2656, i16 12252, i16 8320, i16 3725, i16 12001, i16 8223, i16 4586, i16 15058, i16 5497, i16 13513, i16 4642, i16 15469, i16 5959, i16 13361, i16 3622, i16 7659, i16 9595, i16 2697, i16 11713, i16 3840, i16 9796, i16 12782, i16 4363, i16 11089, i16 3631, i16 14977, i16 8987, i16 6378, i16 8596, i16 11368, i16 1469, i16 9737, i16 12194, i16 4349, i16 11135, i16 741, i16 12567, i16 8952, i16 4290, i16 11589, i16 2914, i16 7822, i16 15478, i16 5151, i16 12022, i16 5739, i16 12640, i16 6109, i16 11009, i16 3856, i16 12103, i16 5643, i16 8261, i16 704, i16 7307, i16 10962, i16 4110, i16 6561, i16 16030, i16 5675, i16 12944, i16 4846, i16 8288, i16 12238, i16 3948, i16 13086, i16 9629, i16 3405, i16 10489, i16 149, i16 11246, i16 2597, i16 9473, i16 590, i16 10095, i16 8358, i16 5660, i16 9052, i16 13995, i16 4810, i16 1060, i16 6714, i16 10426, i16 3033, i16 13137, i16 6990, i16 16155, i16 4556, i16 11145, i16 3556, i16 9821, i16 14939, i16 4635, i16 13634, i16 8022, i16 3883, i16 11553, i16 8610, i16 3143, i16 5826, i16 16127, i16 7648, i16 58, i16 14645, i16 8404, i16 6616, i16 8992, i16 14512, i16 249, i16 14121, i16 2868, i16 7864, i16 9549, i16 6400, i16 14356, i16 3895, i16 11922, i16 7276, i16 9300, i16 151, i16 12440, i16 6527, i16 11413, i16 5496, i16 2410, i16 13245, i16 710, i16 5818, i16 14825, i16 6600, i16 233, i16 13655, i16 6231, i16 1842, i16 12530, i16 2785, i16 10459, i16 1185, i16 10845, i16 8014, i16 1818, i16 8275, i16 15207, i16 274, i16 13757, i16 6492, i16 8818, i16 15274, i16 2874, i16 7968, i16 16161, i16 2088, i16 13102, i16 7876, i16 612, i16 15905, i16 2253, i16 6816, i16 14551, i16 5697, i16 2634, i16 13191, i16 7326, i16 9426, i16 3651, i16 14636, i16 8060, i16 541, i16 12880, i16 9602, i16 1306, i16 10745, i16 2698, i16 9447, i16 1589, i16 10187, i16 4944, i16 14972, i16 8633, i16 2494, i16 13988, i16 9349, i16 16340, i16 2451, i16 13720, i16 9162, i16 3558, i16 10575, i16 1209, i16 15686, i16 2568, i16 6680, i16 10715, i16 7032, i16 980, i16 13626, i16 5770, i16 14804, i16 4594, i16 7881, i16 3935, i16 14304, i16 3045, i16 15989, i16 1377, i16 11338, i16 2786, i16 11813, i16 7765, i16 12598, i16 4463, i16 11405, i16 5086, i16 10654, i16 1624, i16 10325, i16 5571, i16 14307, i16 6780, i16 2180, i16 11931, i16 1002, i16 10220, i16 14137, i16 6401, i16 447, i16 14968, i16 10065, i16 1647, i16 11481, i16 6266, i16 9853, i16 2221, i16 12565, i16 3371, i16 7534, i16 11156, i16 4130, i16 12313, i16 1393, i16 15407, i16 2214, i16 8544, i16 12666, i16 5842, i16 1911, i16 14692, i16 8029, i16 4291, i16 15209, i16 1240, i16 13947, i16 9022, i16 6773, i16 8540, i16 11363, i16 4042, i16 12743, i16 9610, i16 4413, i16 15251, i16 8802, i16 6866, i16 13781, i16 7558, i16 15867, i16 3975, i16 14235, i16 6967, i16 12018, i16 5278, i16 10714, i16 3910, i16 12572, i16 1543, i16 7364, i16 12293, i16 187, i16 9202, i16 6577, i16 9606, i16 4528, i16 11659, i16 3782, i16 10425, i16 13255, i16 3356, i16 8260, i16 15451, i16 6318, i16 1631, i16 15827, i16 7586, i16 2073, i16 10449, i16 16340, i16 6372, i16 3565, i16 13213, i16 4758, i16 16043, i16 6519, i16 14826, i16 3312, i16 13411, i16 365, i16 7168, i16 12516, i16 5438, i16 3162, i16 5913, i16 11746, i16 7074, i16 900, i16 13253, i16 4996, i16 11357, i16 4419, i16 9605, i16 14502, i16 1700, i16 16108, i16 9191, i16 4266, i16 12030, i16 2010, i16 8821, i16 15430, i16 12124, i16 7690, i16 12446, i16 4152, i16 13033, i16 6812, i16 15702, i16 5424, i16 14452, i16 2398, i16 15226, i16 224, i16 13927, i16 3653, i16 14595, i16 3163, i16 12536, i16 344, i16 11372, i16 8729, i16 6046, i16 16340, i16 5309, i16 1928, i16 8892, i16 12806, i16 4277, i16 7108, i16 13758, i16 4931, i16 15602, i16 4160, i16 13840, i16 5695, i16 16212, i16 1873, i16 9057, i16 15626, i16 5654, i16 10396, i16 5386, i16 11552, i16 6884, i16 1095, i16 16098, i16 10542, i16 3628, i16 12772, i16 9499, i16 2943, i16 10526, i16 4427, i16 12382, i16 3181, i16 14998, i16 1563, i16 14031, i16 2345, i16 7095, i16 11060, i16 2975, i16 11466, i16 648, i16 9378, i16 2444, i16 6390, i16 11688, i16 3194, i16 10512, i16 1005, i16 12887, i16 2508, i16 16340, i16 8440, i16 6016, i16 10927, i16 5232, i16 13416, i16 3350, i16 14018, i16 1084, i16 15190, i16 5667, i16 13916, i16 7167, i16 86, i16 12082, i16 9279, i16 921, i16 10347, i16 13684, i16 3875, i16 10081, i16 12924, i16 5258, i16 2455, i16 8639, i16 15163, i16 5552, i16 10051, i16 104, i16 10869, i16 4143, i16 11885, i16 5672, i16 9308, i16 15959, i16 1664, i16 10329, i16 14555, i16 8881, i16 1510, i16 15466, i16 10061, i16 2809, i16 15175, i16 7568, i16 13847, i16 98, i16 6054, i16 11723, i16 5690, i16 2397, i16 15086, i16 8316, i16 6640, i16 13412, i16 1213, i16 6846, i16 1922, i16 5874, i16 10734, i16 7948, i16 2374, i16 9012, i16 646, i16 8299, i16 10022, i16 6322, i16 9319, i16 7240, i16 12282, i16 6526, i16 9666, i16 7599, i16 15799, i16 4284, i16 13975, i16 3063, i16 7501, i16 13065, i16 7187, i16 15436, i16 2505, i16 9506, i16 12475, i16 2992, i16 10943, i16 1229, i16 11887, i16 8192, i16 653, i16 7994, i16 11756, i16 6004, i16 947, i16 13276, i16 3423, i16 13949, i16 4302, i16 14896, i16 8949, i16 4509, i16 8297, i16 13992, i16 1576, i16 7222, i16 12089, i16 5712, i16 15707, i16 334, i16 7797, i16 10143, i16 5681, i16 9173, i16 7610, i16 15669, i16 1160, i16 13382, i16 5702, i16 16071, i16 5125, i16 14407, i16 9919, i16 136, i16 12967, i16 5621, i16 15671, i16 4772, i16 7699, i16 9488, i16 634, i16 14444, i16 2394, i16 15532, i16 4161, i16 11226, i16 4924, i16 11907, i16 2970, i16 9992, i16 1604, i16 8560, i16 15275, i16 5960, i16 4129, i16 12481, i16 4787, i16 8179, i16 11933, i16 208, i16 8451, i16 14159, i16 7122, i16 11972, i16 1012, i16 11143, i16 3096, i16 13817, i16 7073, i16 14351, i16 1120, i16 10593, i16 2761, i16 6238, i16 11359, i16 6704, i16 236, i16 12694, i16 7909, i16 3710, i16 5805, i16 12096, i16 6760, i16 1895, i16 8966, i16 12431, i16 8181, i16 3660, i16 13778, i16 7366, i16 9912, i16 416, i16 11441, i16 3295, i16 10534, i16 13921, i16 8237, i16 15542, i16 272, i16 14538, i16 5101, i16 13760, i16 11154, i16 3657, i16 12904, i16 1878, i16 15638, i16 2647, i16 9078, i16 847, i16 15075, i16 2258, i16 6297, i16 10543, i16 1271, i16 12456, i16 9741, i16 144, i16 10677, i16 4874, i16 11258, i16 6142, i16 763, i16 14570, i16 6696, i16 9683, i16 3599, i16 15087, i16 6883, i16 13462, i16 2529, i16 14744, i16 8755, i16 7094, i16 11822, i16 32, i16 10038, i16 2817, i16 13335, i16 7521, i16 476, i16 9781, i16 6107, i16 15927, i16 856, i16 13457, i16 3294, i16 8836, i16 14203, i16 3568, i16 16225, i16 871, i16 11778, i16 3483, i16 10200, i16 4741, i16 10652, i16 3524, i16 11985, i16 1750, i16 7423, i16 14918, i16 4267, i16 9690, i16 2108, i16 8723, i16 14818, i16 4494, i16 13030, i16 4979, i16 12088, i16 7294, i16 9772, i16 1838, i16 15801, i16 8757, i16 6959, i16 12655, i16 5123, i16 11429, i16 3139, i16 9650, i16 14318, i16 2563, i16 16061, i16 1865, i16 6660, i16 14951, i16 5822, i16 1398, i16 10658, i16 3429, i16 14541, i16 7261, i16 12345, i16 7926, i16 1885, i16 9041, i16 5347, i16 15576, i16 7589, i16 13613, i16 4077, i16 15322, i16 8537, i16 2969, i16 14178, i16 9106, i16 13078, i16 409, i16 10299, i16 14675, i16 5273, i16 3112, i16 15934, i16 10384, i16 855, i16 11144, i16 4085, i16 13152, i16 4920, i16 16340, i16 5283, i16 778, i16 10157, i16 3528, i16 11722, i16 6215, i16 10362, i16 1653, i16 7556, i16 14279, i16 5692, i16 10539, i16 4435, i16 12665, i16 5972, i16 11276, i16 5276, i16 9235, i16 13465, i16 3474, i16 15283, i16 8386, i16 4128, i16 15142, i16 3324, i16 13944, i16 1435, i16 16050, i16 7535, i16 9126, i16 4014, i16 12912, i16 7741, i16 1765, i16 11384, i16 4397, i16 10455, i16 3756, i16 11073, i16 2128, i16 8497, i16 16277, i16 5757, i16 11272, i16 1682, i16 10339, i16 15557, i16 3515, i16 11591, i16 4111, i16 10956, i16 8531, i16 5415, i16 11669, i16 1969, i16 11026, i16 6290, i16 12954, i16 5368, i16 13827, i16 5992, i16 15095, i16 1588, i16 14138, i16 8697, i16 5855, i16 11388, i16 2711, i16 8087, i16 13893, i16 6643, i16 11646, i16 1383, i16 10810, i16 3260, i16 10349, i16 6454, i16 906, i16 14768, i16 8124, i16 5555, i16 370, i16 14244, i16 2213, i16 16307, i16 6649, i16 12888, i16 1344, i16 7698, i16 10447, i16 6059, i16 8896, i16 13447, i16 2772, i16 9738, i16 15738, i16 4608, i16 13514, i16 8863, i16 2125, i16 5211, i16 15875, i16 5989, i16 12965, i16 8103, i16 2275, i16 11675, i16 829, i16 9967, i16 3362, i16 11843, i16 7685, i16 5253, i16 2003, i16 8125, i16 16197, i16 3332, i16 6160, i16 13376, i16 8425, i16 1546, i16 7753, i16 14242, i16 3000, i16 15589, i16 6332, i16 9355, i16 2146, i16 11624, i16 15164, i16 5620, i16 13205, i16 7249, i16 2958, i16 16240, i16 8718, i16 3249, i16 9130, i16 443, i16 14687, i16 8056, i16 1212, i16 16105, i16 3031, i16 13780, i16 1580, i16 7026, i16 11657, i16 5754, i16 2435, i16 12168, i16 6245, i16 9343, i16 7677, i16 11768, i16 3530, i16 10738, i16 2051, i16 15231, i16 307, i16 14164, i16 8716, i16 6187, i16 15918, i16 442, i16 13819, i16 4879, i16 15178, i16 6335, i16 3150, i16 13073, i16 4711, i16 14531, i16 4034, i16 8006, i16 13017, i16 2163, i16 14598, i16 7713, i16 1732, i16 15153, i16 6628, i16 13114, i16 4459, i16 10409, i16 2841, i16 9865, i16 76, i16 11560, i16 3081, i16 9523, i16 7856, i16 455, i16 13309, i16 4037, i16 16169, i16 9253, i16 713, i16 12592, i16 3583, i16 14060, i16 6831, i16 15928, i16 1980, i16 14310, i16 8868, i16 3044, i16 13277, i16 10816, i16 7488, i16 9444, i16 6199, i16 10267, i16 692, i16 8298, i16 15553, i16 5327, i16 13038, i16 524, i16 11513, i16 4947, i16 10950, i16 4390, i16 7870, i16 12393, i16 380, i16 6113, i16 15010, i16 9913, i16 758, i16 11345, i16 3199, i16 15106, i16 9664, i16 4703, i16 14627, i16 5745, i16 13826, i16 1288, i16 15903, i16 9394, i16 14787, i16 4278, i16 9644, i16 7408, i16 11638, i16 738, i16 10117, i16 12977, i16 3529, i16 8703, i16 12471, i16 7230, i16 1099, i16 14376, i16 8104, i16 4311, i16 2780, i16 10566, i16 1318, i16 15006, i16 8409, i16 938, i16 13344, i16 6081, i16 15774, i16 7833, i16 3504, i16 13453, i16 9609, i16 5483, i16 11882, i16 4557, i16 10285, i16 15963, i16 550, i16 8857, i16 14484, i16 7248, i16 963, i16 12791, i16 2642, i16 5964, i16 13318, i16 4464, i16 12322, i16 5297, i16 10824, i16 4812, i16 11995, i16 3026, i16 9456, i16 8344, i16 6644, i16 12237, i16 1182, i16 12594, i16 9031, i16 753, i16 10145, i16 7380, i16 12221, i16 1010, i16 9185, i16 6756, i16 9974, i16 4676, i16 12325, i16 9136, i16 632, i16 8413, i16 15398, i16 1392, i16 14519, i16 4219, i16 15821, i16 8490, i16 6671, i16 13058, i16 4354, i16 15527, i16 6544, i16 10100, i16 1308, i16 6176, i16 14610, i16 5183, i16 10243, i16 8199, i16 44, i16 7860, i16 11300, i16 3986, i16 12386, i16 7721, i16 5270, i16 1511, i16 15144, i16 3168, i16 13522, i16 4448, i16 14615, i16 3461, i16 10967, i16 2044, i16 8074, i16 14095, i16 3291, i16 15221, i16 875, i16 13300, i16 2323, i16 9360, i16 7417, i16 11549, i16 3978, i16 8328, i16 14232, i16 4176, i16 10538, i16 466, i16 6803, i16 12566, i16 2067, i16 10796, i16 4223, i16 10544, i16 6088, i16 607, i16 6845, i16 12836, i16 1187, i16 14305, i16 2693, i16 15711, i16 3877, i16 7297, i16 15260, i16 5520, i16 1793, i16 10262, i16 11872, i16 4527, i16 12796, i16 9213, i16 12409, i16 4850, i16 11275, i16 4044, i16 9726, i16 12183, i16 3767, i16 10939, i16 1777, i16 9951, i16 12066, i16 5858, i16 2520, i16 10752, i16 59, i16 14784, i16 8019, i16 3814, i16 7726, i16 13347, i16 1883, i16 9838, i16 16175, i16 4803, i16 14930, i16 8669, i16 497, i16 15826, i16 7060, i16 9237, i16 2489, i16 15513, i16 1042, i16 13580, i16 5165, i16 14936, i16 2755, i16 9732, i16 8217, i16 4011, i16 14330, i16 6726, i16 15764, i16 2371, i16 6162, i16 15304, i16 5226, i16 14136, i16 117, i16 16292, i16 2811, i16 6065, i16 14394, i16 3826, i16 7181, i16 11294, i16 5687, i16 12664, i16 7145, i16 2177, i16 14709, i16 964, i16 12195, i16 8993, i16 2392, i16 12449, i16 7332, i16 11546, i16 3388, i16 11029, i16 2217, i16 15336, i16 6034, i16 13201, i16 5100, i16 9858, i16 520, i16 16099, i16 9064, i16 12558, i16 4010, i16 10634, i16 1215, i16 11830, i16 8694, i16 5849, i16 9021, i16 14864, i16 3893, i16 9946, i16 6790, i16 8244, i16 12132, i16 6254, i16 14477, i16 3527, i16 16243, i16 1491, i16 13183, i16 2506, i16 6918, i16 12463, i16 4936, i16 13530, i16 9186, i16 3698, i16 16285, i16 7402, i16 13149, i16 2375, i16 12290, i16 8040, i16 11473, i16 3804, i16 10612, i16 4428, i16 11167, i16 8931, i16 5808, i16 12201, i16 282, i16 9780, i16 14705, i16 5936, i16 2460, i16 15858, i16 16, i16 7411, i16 1824, i16 16054, i16 7875, i16 14183, i16 2194, i16 7072, i16 14798, i16 5034, i16 13062, i16 6559, i16 799, i16 14935, i16 8313, i16 14048, i16 6891, i16 9100, i16 2006, i16 13023, i16 10055, i16 5188, i16 11518, i16 4238, i16 8279, i16 10938, i16 1718, i16 11425, i16 6573, i16 10017, i16 1341, i16 12750, i16 7921, i16 5499, i16 11152, i16 4221, i16 10564, i16 1542, i16 12729, i16 5362, i16 15649, i16 7669, i16 2025, i16 11512, i16 3845, i16 9591, i16 13608, i16 3099, i16 10617, i16 3748, i16 11282, i16 5104, i16 12852, i16 8617, i16 2219, i16 8967, i16 12411, i16 3039, i16 9567, i16 1089, i16 10958, i16 8767, i16 3897, i16 10255, i16 7595, i16 3704, i16 15012, i16 5331, i16 13723, i16 1914, i16 15851, i16 7795, i16 13550, i16 3514, i16 12225, i16 1708, i16 15053, i16 2880, i16 13499, i16 6097, i16 2340, i16 7053, i16 13890, i16 5481, i16 15967, i16 7229, i16 2286, i16 12528, i16 270, i16 7118, i16 12829, i16 1247, i16 16122, i16 2581, i16 9492, i16 1676, i16 8568, i16 11734, i16 5477, i16 10232, i16 5848, i16 15378, i16 8713, i16 1661, i16 16003, i16 7982, i16 1335, i16 11569, i16 6499, i16 48, i16 8415, i16 15224, i16 5118, i16 13891, i16 2896, i16 15349, i16 5609, i16 13766, i16 7041, i16 1727, i16 15046, i16 2859, i16 10941, i16 6727, i16 3328, i16 13498, i16 7590, i16 9415, i16 6462, i16 13982, i16 10645, i16 6890, i16 519, i16 5738, i16 12927, i16 9088, i16 128, i16 10482, i16 2668, i16 15402, i16 7502, i16 9412, i16 4904, i16 1472, i16 12818, i16 3442, i16 15347, i16 6624, i16 1075, i16 15605, i16 2790, i16 13844, i16 225, i16 6838, i16 14032, i16 3268, i16 14698, i16 5422, i16 13724, i16 3652, i16 14413, i16 9583, i16 2255, i16 16340, i16 7815, i16 13997, i16 3547, i16 10960, i16 219, i16 11932, i16 8787, i16 5656, i16 13153, i16 355, i16 8369, i16 11864, i16 1573, i16 13377, i16 7347, i16 9682, i16 1137, i16 15473, i16 6965, i16 13732, i16 256, i16 16000, i16 5264, i16 14320, i16 4687, i16 13867, i16 6028, i16 16340, i16 1547, i16 11277, i16 8371, i16 201, i16 8061, i16 10655, i16 5755, i16 556, i16 7037, i16 9979, i16 4718, i16 10739, i16 8336, i16 11944, i16 4400, i16 10849, i16 8027, i16 11693, i16 123, i16 10136, i16 3617, i16 9335, i16 14194, i16 4222, i16 15835, i16 9684, i16 4877, i16 10733, i16 5670, i16 12620, i16 5176, i16 15689, i16 6991, i16 621, i16 13735, i16 2829, i16 10898, i16 153, i16 12135, i16 6458, i16 9552, i16 2909, i16 14712, i16 4412, i16 13970, i16 9023, i16 5485, i16 9240, i16 1447, i16 7775, i16 10411, i16 1814, i16 9528, i16 133, i16 11990, i16 8585, i16 6496, i16 12696, i16 4171, i16 16168, i16 8934, i16 677, i16 12581, i16 3576, i16 11395, i16 4604, i16 2618, i16 13298, i16 8109, i16 11504, i16 3606, i16 6361, i16 16020, i16 5625, i16 11115, i16 4181, i16 12474, i16 2086, i16 16284, i16 10147, i16 5732, i16 10913, i16 4691, i16 9318, i16 12362, i16 4475, i16 10507, i16 5534, i16 9452, i16 12634, i16 4577, i16 10383, i16 7979, i16 2129, i16 8259, i16 11801, i16 85, i16 6764, i16 12071, i16 6023, i16 639, i16 7004, i16 10270, i16 4775, i16 13239, i16 3279, i16 14841, i16 1351, i16 7284, i16 16143, i16 4142, i16 6881, i16 15042, i16 6250, i16 2309, i16 12094, i16 7900, i16 3928, i16 11790, i16 4832, i16 10631, i16 6353, i16 10300, i16 3390, i16 11706, i16 521, i16 12439, i16 3151, i16 13186, i16 4426, i16 14132, i16 6767, i16 15591, i16 2681, i16 13006, i16 8240, i16 12015, i16 1256, i16 16279, i16 6913, i16 804, i16 6388, i16 15637, i16 1144, i16 14500, i16 4916, i16 15235, i16 5894, i16 12145, i16 953, i16 6783, i16 11408, i16 6110, i16 2798, i16 14405, i16 3582, i16 13922, i16 16, i16 11309, i16 3733, i16 12801, i16 9851, i16 4520, i16 15084, i16 5067, i16 12997, i16 3947, i16 11288, i16 3650, i16 12707, i16 7504, i16 10882, i16 1773, i16 12762, i16 2632, i16 14360, i16 7066, i16 15742, i16 4620, i16 13481, i16 6223, i16 16323, i16 3486, i16 14524, i16 999, i16 8238, i16 13692, i16 1593, i16 11946, i16 8025, i16 5085, i16 14619, i16 1357, i16 15332, i16 10307, i16 4921, i16 15186, i16 1713, i16 14329, i16 10115, i16 3071, i16 13238, i16 1299, i16 14114, i16 5382, i16 11555, i16 7351, i16 2794, i16 14596, i16 711, i16 12011, i16 2963, i16 8155, i16 14162, i16 1736, i16 14863, i16 7193, i16 2294, i16 15712, i16 730, i16 13459, i16 6450, i16 16091, i16 4051, i16 8793, i16 15188, i16 3839, i16 13463, i16 8082, i16 14617, i16 1891, i16 15988, i16 7406, i16 10004, i16 5953, i16 8977, i16 11100, i16 2480, i16 12359, i16 9304, i16 717, i16 10088, i16 15909, i16 3600, i16 14228, i16 9388, i16 1786, i16 14876, i16 2682, i16 13341, i16 1302, i16 14961, i16 6996, i16 8165, i16 9262, i16 6494, i16 9778, i16 7826, i16 2100, i16 11658, i16 3976, i16 10059, i16 5052, i16 14777, i16 4166, i16 13807, i16 2810, i16 12738, i16 7967, i16 11486, i16 3673, i16 9986, i16 4156, i16 11109, i16 1754, i16 13174, i16 3305, i16 15494, i16 8635, i16 1570, i16 13646, i16 8391, i16 812, i16 11720, i16 7552, i16 9156, i16 6564, i16 14750, i16 1851, i16 8207, i16 11127, i16 1226, i16 9266, i16 7608, i16 14069, i16 1091, i16 15613, i16 6193, i16 637, i16 8583, i16 15501, i16 5970, i16 11017, i16 3969, i16 11802, i16 506, i16 10684, i16 3359, i16 11069, i16 4854, i16 10351, i16 5662, i16 11322, i16 4571, i16 9612, i16 7529, i16 3764, i16 15471, i16 10212, i16 2902, i16 9662, i16 6121, i16 878, i16 12014, i16 3231, i16 9570, i16 7801, i16 1048, i16 12301, i16 6980, i16 9188, i16 3347, i16 9827, i16 322, i16 13388, i16 5107, i16 8763, i16 13125, i16 5436, i16 15889, i16 427, i16 7033, i16 11088, i16 3832, i16 11831, i16 8648, i16 6188, i16 11585, i16 3476, i16 11001, i16 1175, i16 7524, i16 11308, i16 2570, i16 10457, i16 1479, i16 10751, i16 3202, i16 11561, i16 6523, i16 910, i16 13853, i16 2648, i16 15263, i16 5206, i16 14075, i16 7936, i16 4583, i16 14640, i16 4989, i16 8075, i16 12609, i16 449, i16 6667, i16 11196, i16 5763, i16 9835, i16 4951, i16 11401, i16 8637, i16 2149, i16 15691, i16 2627, i16 14009, i16 764, i16 15912, i16 8804, i16 5930, i16 14393, i16 893, i16 11207, i16 1796, i16 9410, i16 5866, i16 10908, i16 5218, i16 14910, i16 1938, i16 14008, i16 6993, i16 12963, i16 2872, i16 9463, i16 6582, i16 10705, i16 5043, i16 12677, i16 7687, i16 4039, i16 10565, i16 15018, i16 5456, i16 2117, i16 15537, i16 3182, i16 9617, i16 7724, i16 3003, i16 13426, i16 6657, i16 16036, i16 1949, i16 6995, i16 10757, i16 4995, i16 10014, i16 14927, i16 5350, i16 2427, i16 12185, i16 904, i16 10104, i16 5046, i16 12899, i16 6817, i16 14899, i16 1135, i16 13266, i16 2124, i16 14054, i16 2629, i16 15879, i16 435, i16 13199, i16 8800, i16 1966, i16 7299, i16 14021, i16 5313, i16 12989, i16 15651, i16 8895, i16 6406, i16 13770, i16 4473, i16 15293, i16 8550, i16 4069, i16 15822, i16 7224, i16 14457, i16 5935, i16 8418, i16 15592, i16 2195, i16 7454, i16 10404, i16 3985, i16 12727, i16 9190, i16 5236, i16 16314, i16 913, i16 13233, i16 2715, i16 7400, i16 14800, i16 4651, i16 9875, i16 15011, i16 4830, i16 13971, i16 5514, i16 15761, i16 4447, i16 12993, i16 5087, i16 9350, i16 12622, i16 4522, i16 11480, i16 7150, i16 606, i16 9709, i16 1823, i16 12919, i16 2824, i16 11696, i16 1468, i16 9196, i16 7399, i16 15755, i16 4348, i16 13563, i16 809, i16 16165, i16 7779, i16 4521, i16 12042, i16 5559, i16 10690, i16 5025, i16 11926, i16 3336, i16 12749, i16 1417, i16 7513, i16 12859, i16 6135, i16 15433, i16 3077, i16 13101, i16 253, i16 9676, i16 3237, i16 10665, i16 7749, i16 400, i16 8142, i16 16230, i16 5334, i16 13800, i16 575, i16 14802, i16 2536, i16 9846, i16 16191, i16 3085, i16 6910, i16 10032, i16 13549, i16 4164, i16 12209, i16 1016, i16 10811, i16 14349, i16 4853, i16 10286, i16 3310, i16 8657, i16 14793, i16 4285, i16 13337, i16 2661, i16 7217, i16 12582, i16 9336, i16 4192, i16 16135, i16 3186, i16 14552, i16 8973, i16 2792, i16 8143, i16 9961, i16 6574, i16 9166, i16 7176, i16 11904, i16 5359, i16 10550, i16 4983, i16 15023, i16 5655, i16 12298, i16 255, i16 11065, i16 3394, i16 7006, i16 2206, i16 12742, i16 346, i16 11157, i16 6648, i16 2352, i16 11469, i16 596, i16 10724, i16 2472, i16 12251, i16 1412, i16 10758, i16 6373, i16 13950, i16 1201, i16 14897, i16 8345, i16 1550, i16 13559, i16 3042, i16 10128, i16 5879, i16 15281, i16 9533, i16 377, i16 12560, i16 7844, i16 1989, i16 11678, i16 769, i16 9158, i16 6863, i16 9941, i16 389, i16 15367, i16 2224, i16 7871, i16 14535, i16 1697, i16 8589, i16 13208, i16 5814, i16 16051, i16 5482, i16 10483, i16 5997, i16 13830, i16 4244, i16 12844, i16 1606, i16 10453, i16 3191, i16 11626, i16 8876, i16 2361, i16 14546, i16 342, i16 13642, i16 1632, i16 15337, i16 5773, i16 10126, i16 4788, i16 14842, i16 9454, i16 3775, i16 10442, i16 4614, i16 11739, i16 7371, i16 15719, i16 4306, i16 13461, i16 5619, i16 15376, i16 5150, i16 11381, i16 1312, i16 10508, i16 3136, i16 10230, i16 4545, i16 11787, i16 6280, i16 330, i16 8838, i16 12405, i16 1418, i16 6461, i16 11036, i16 4988, i16 16340, i16 5628, i16 8854, i16 285, i16 12906, i16 6253, i16 11836, i16 2894, i16 10436, i16 352, i16 9458, i16 14171, i16 1400, i16 6906, i16 13633, i16 5746, i16 11215, i16 7151, i16 1251, i16 15982, i16 5202, i16 13955, i16 3271, i16 15670, i16 777, i16 8653, i16 14752, i16 3141, i16 11772, i16 1158, i16 9944, i16 6521, i16 16227, i16 4650, i16 10465, i16 14434, i16 8432, i16 4294, i16 16340, i16 3587, i16 9482, i16 14887, i16 5244, i16 13797, i16 4724, i16 15147, i16 6762, i16 9687, i16 3645, i16 12496, i16 4968, i16 11238, i16 6811, i16 3232, i16 11797, i16 6479, i16 10741, i16 4791, i16 12433, i16 1629, i16 5416, i16 13825, i16 8735, i16 4350, i16 13185, i16 5280, i16 8011, i16 13343, i16 2167, i16 14721, i16 8269, i16 6102, i16 12060, i16 3899, i16 9816, i16 6397, i16 15583, i16 4064, i16 10883, i16 3376, i16 11979, i16 193, i16 15295, i16 3318, i16 10892, i16 5578, i16 14497, i16 6132, i16 15218, i16 6981, i16 4101, i16 12726, i16 5958, i16 10324, i16 6797, i16 9527, i16 2980, i16 11193, i16 107, i16 11788, i16 6887, i16 2333, i16 16141, i16 406, i16 13628, i16 6717, i16 1482, i16 8910, i16 12073, i16 1092, i16 10184, i16 2613, i16 12489, i16 6337, i16 14325, i16 3914, i16 15728, i16 8073, i16 13487, i16 1285, i16 14513, i16 8043, i16 13877, i16 4462, i16 15361, i16 9348, i16 454, i16 12982, i16 7338, i16 2251, i16 15107, i16 8289, i16 5411, i16 15672, i16 866, i16 13828, i16 5204, i16 16229, i16 6326, i16 3495, i16 8529, i16 11528, i16 202, i16 9890, i16 2036, i16 13258, i16 8688, i16 3627, i16 12647, i16 268, i16 11543, i16 4461, i16 10873, i16 6289, i16 1673, i16 13035, i16 4005, i16 8236, i16 13654, i16 2478, i16 8606, i16 13413, i16 1260, i16 3873, i16 10924, i16 6076, i16 8693, i16 12170, i16 1432, i16 7278, i16 12452, i16 1850, i16 7996, i16 9082, i16 3982, i16 12883, i16 7927, i16 173, i16 16194, i16 2595, i16 9820, i16 14291, i16 4886, i16 15484, i16 16, i16 14488, i16 3424, i16 8266, i16 11224, i16 6685, i16 1384, i16 15482, i16 2968, i16 9701, i16 16210, i16 3452, i16 11250, i16 5467, i16 12805, i16 3341, i16 8903, i16 16238, i16 73, i16 11315, i16 2730, i16 10314, i16 1110, i16 14478, i16 9025, i16 6580, i16 8685, i16 12257, i16 945, i16 10210, i16 2736, i16 9631, i16 16, i16 12335, i16 8245, i16 1366, i16 15485, i16 3544, i16 13264, i16 4618, i16 14417, i16 7430, i16 15067, i16 3647, i16 13515, i16 9138, i16 5316, i16 11051, i16 2744, i16 9795, i16 14622, i16 5090, i16 7820, i16 16059, i16 4655, i16 14448, i16 8624, i16 1892, i16 9036, i16 12354, i16 6821, i16 2049, i16 6025, i16 11194, i16 9028, i16 5389, i16 1692, i16 11329, i16 2753, i16 7828, i16 14597, i16 3762, i16 9929, i16 12466, i16 3545, i16 11355, i16 1791, i16 9678, i16 8158, i16 6718, i16 11397, i16 3128, i16 12297, i16 7468, i16 15765, i16 4529, i16 14402, i16 4953, i16 15183, i16 4006, i16 12107, i16 6716, i16 8294, i16 9667, i16 6095, i16 15088, i16 2516, i16 13548, i16 7633, i16 9470, i16 6668, i16 15545, i16 4881, i16 12197, i16 4334, i16 7708, i16 11641, i16 15779, i16 729, i16 14077, i16 1927, i16 5414, i16 14487, i16 9878, i16 4429, i16 10373, i16 13568, i16 864, i16 15944, i16 2020, i16 14223, i16 9231, i16 4361, i16 11920, i16 7396, i16 733, i16 9449, i16 3925, i16 11621, i16 5716, i16 9387, i16 15996, i16 2342, i16 14335, i16 9998, i16 5824, i16 12176, i16 177, i16 6327, i16 12479, i16 7215, i16 989, i16 9472, i16 14290, i16 1423, i16 7335, i16 13289, i16 4852, i16 13737, i16 5306, i16 12525, i16 7536, i16 2107, i16 12776, i16 2467, i16 7623, i16 16340, i16 4726, i16 13918, i16 5097, i16 11055, i16 3763, i16 13484, i16 9425, i16 5170, i16 10829, i16 992, i16 11563, i16 6402, i16 1970, i16 8385, i16 10368, i16 1072, i16 7612, i16 13930, i16 4248, i16 15220, i16 8296, i16 3457, i16 11336, i16 2104, i16 8722, i16 11685, i16 682, i16 7102, i16 13939, i16 5684, i16 182, i16 11454, i16 7789, i16 15287, i16 4828, i16 2474, i16 15993, i16 10316, i16 5737, i16 13280, i16 4649, i16 8745, i16 11865, i16 1350, i16 7030, i16 13716, i16 5693, i16 14486, i16 3989, i16 13122, i16 1636, i16 9010, i16 14625, i16 968, i16 10642, i16 1844, i16 10231, i16 2728, i16 11757, i16 7562, i16 10815, i16 669, i16 15404, i16 2594, i16 14184, i16 1858, i16 7363, i16 12229, i16 4780, i16 16103, i16 94, i16 12553, i16 2077, i16 10868, i16 589, i16 14925, i16 2288, i16 8864, i16 3120, i16 12637, i16 6875, i16 9069, i16 12871, i16 6251, i16 64, i16 16068, i16 2575, i16 6591, i16 11740, i16 5734, i16 10988, i16 5073, i16 7670, i16 13668, i16 1894, i16 15047, i16 6105, i16 13189, i16 8493, i16 2659, i16 13914, i16 1015, i16 5119, i16 11738, i16 7722, i16 4180, i16 10784, i16 3783, i16 14567, i16 9299, i16 1763, i16 15038, i16 8491, i16 2879, i16 7617, i16 12370, i16 3736, i16 10103, i16 8152, i16 1982, i16 15089, i16 8467, i16 4340, i16 15780, i16 5699, i16 14378, i16 4019, i16 8828, i16 11365, i16 1853, i16 12541, i16 7333, i16 15869, i16 2580, i16 7696, i16 14173, i16 2857, i16 16271, i16 4000, i16 9854, i16 13884, i16 4305, i16 16023, i16 6219, i16 12272, i16 1819, i16 10493, i16 6541, i16 793, i16 14211, i16 4525, i16 13263, i16 6486, i16 3264, i16 13546, i16 10568, i16 2488, i16 8314, i16 14953, i16 3348, i16 13004, i16 868, i16 8486, i16 12737, i16 8160, i16 3489, i16 12256, i16 890, i16 15807, i16 2162, i16 5969, i16 15442, i16 9110, i16 689, i16 10454, i16 2769, i16 11759, i16 5920, i16 15429, i16 4146, i16 7682, i16 12847, i16 4748, i16 12033, i16 5584, i16 13456, i16 8853, i16 1560, i16 6385, i16 13565, i16 5549, i16 11023, i16 4695, i16 12505, i16 9375, i16 1028, i16 10378, i16 3369, i16 11281, i16 5871, i16 14221, i16 8327, i16 6782, i16 9065, i16 13237, i16 5994, i16 7354, i16 10067, i16 4124, i16 15069, i16 2887, i16 8542, i16 11400, i16 5602, i16 9287, i16 14745, i16 3746, i16 10021, i16 3283, i16 15229, i16 1086, i16 10322, i16 8411, i16 3456, i16 10486, i16 1594, i16 16130, i16 6635, i16 10192, i16 7267, i16 13375, i16 8936, i16 594, i16 15784, i16 1921, i16 13519, i16 7862, i16 4939, i16 11079, i16 4235, i16 10337, i16 15839, i16 4634, i16 8797, i16 14923, i16 810, i16 11925, i16 6722, i16 9478, i16 439, i16 11177, i16 7972, i16 1230, i16 8233, i16 11758, i16 560, i16 6822, i16 14964, i16 5887, i16 1152, i16 8998, i16 11954, i16 652, i16 10420, i16 7024, i16 8582, i16 12523, i16 523, i16 7093, i16 12798, i16 2827, i16 9634, i16 5452, i16 15546, i16 3726, i16 13075, i16 9016, i16 7260, i16 12391, i16 35, i16 15169, i16 9604, i16 5962, i16 3818, i16 15660, i16 9894, i16 4388, i16 10778, i16 5056, i16 9744, i16 14387, i16 5528, i16 57, i16 14820, i16 8448, i16 6578, i16 10097, i16 7514, i16 12160, i16 3448, i16 6422, i16 14081, i16 5137, i16 15884, i16 7291, i16 92, i16 10584, i16 8329, i16 2272, i16 8912, i16 14288, i16 3439, i16 15286, i16 790, i16 5902, i16 16340, i16 9814, i16 2866, i16 10407, i16 1380, i16 15789, i16 7777, i16 3793, i16 13407, i16 5129, i16 14629, i16 7480, i16 3011, i16 9867, i16 3525, i16 15957, i16 1545, i16 5305, i16 11394, i16 15354, i16 2126, i16 11963, i16 984, i16 7601, i16 15534, i16 4205, i16 13856, i16 1253, i16 7195, i16 12804, i16 483, i16 11374, i16 6161, i16 12418, i16 4709, i16 15772, i16 5715, i16 12184, i16 8119, i16 5335, i16 10942, i16 1788, i16 14992, i16 2540, i16 6256, i16 12654, i16 5539, i16 11332, i16 8618, i16 848, i16 15562, i16 3056, i16 14100, i16 6538, i16 467, i16 11615, i16 2319, i16 6293, i16 13507, i16 4699, i16 15965, i16 3981, i16 12215, i16 3577, i16 13104, i16 6633, i16 13671, i16 3687, i16 15528, i16 9891, i16 2406, i16 10504, i16 14322, i16 3410, i16 6283, i16 15372, i16 4232, i16 13695, i16 1767, i16 5736, i16 15120, i16 8932, i16 1442, i16 8172, i16 14585, i16 300, i16 7288, i16 11243, i16 1399, i16 16340, i16 2403, i16 5402, i16 10284, i16 7673, i16 1559, i16 14723, i16 8873, i16 949, i16 6429, i16 13765, i16 1372, i16 16319, i16 6940, i16 2208, i16 11698, i16 7327, i16 9594, i16 1933, i16 14240, i16 3022, i16 13554, i16 179, i16 9430, i16 12649, i16 2405, i16 10896, i16 1456, i16 9305, i16 13664, i16 3643, i16 14916, i16 11053, i16 5432, i16 428, i16 9759, i16 6841, i16 8521, i16 12434, i16 3901, i16 8202, i16 14676, i16 4407, i16 13203, i16 8736, i16 478, i16 14819, i16 6611, i16 11868, i16 1623, i16 9332, i16 15395, i16 937, i16 11664, i16 5576, i16 10281, i16 13938, i16 169, i16 4811, i16 12936, i16 5235, i16 8398, i16 12512, i16 1679, i16 10521, i16 3171, i16 11888, i16 8749, i16 2875, i16 15628, i16 4446, i16 14036, i16 2990, i16 9525, i16 337, i16 13088, i16 2446, i16 14670, i16 565, i16 12931, i16 7995, i16 4590, i16 11971, i16 8352, i16 3639, i16 14266, i16 3189, i16 6923, i16 12827, i16 5904, i16 12063, i16 1358, i16 8210, i16 13697, i16 5563, i16 15411, i16 9718, i16 3029, i16 10951, i16 1669, i16 13818, i16 7045, i16 14941, i16 2602, i16 10380, i16 1925, i16 9442, i16 7843, i16 4300, i16 13045, i16 8093, i16 4484, i16 8468, i16 12932, i16 3053, i16 10013, i16 6520, i16 8792, i16 11040, i16 2432, i16 11823, i16 6068, i16 10874, i16 4127, i16 12548, i16 9897, i16 4393, i16 12159, i16 5963, i16 10762, i16 8427, i16 15797, i16 3060, i16 11146, i16 4193, i16 11818, i16 7500, i16 12597, i16 3009, i16 11581, i16 4012, i16 9175, i16 13410, i16 3719, i16 15848, i16 4090, i16 12629, i16 4876, i16 10948, i16 5797, i16 16115, i16 4558, i16 8016, i16 15173, i16 6634, i16 12812, i16 4327, i16 7872, i16 9991, i16 1159, i16 7091, i16 16044, i16 7420, i16 13331, i16 2115, i16 11186, i16 2492, i16 13050, i16 27, i16 6975, i16 11935, i16 2354, i16 5942, i16 11271, i16 8285, i16 2447, i16 7970, i16 14062, i16 4273, i16 6941, i16 13096, i16 4119, i16 14564, i16 2396, i16 8070, i16 9517, i16 7736, i16 2957, i16 16138, i16 9962, i16 3463, i16 14319, i16 7857, i16 13317, i16 4547, i16 15037, i16 5925, i16 8274, i16 10164, i16 1360, i16 8085, i16 14545, i16 7044, i16 9097, i16 6345, i16 10041, i16 7649, i16 3872, i16 15697, i16 9755, i16 263, i16 15334, i16 10276, i16 1181, i16 9625, i16 16070, i16 3932, i16 10416, i16 5215, i16 9207, i16 12571, i16 3269, i16 10511, i16 1544, i16 8311, i16 12948, i16 5586, i16 10398, i16 7905, i16 891, i16 9070, i16 5149, i16 16195, i16 6120, i16 14544, i16 1067, i16 13959, i16 6444, i16 325, i16 16081, i16 10723, i16 1262, i16 7742, i16 14679, i16 176, i16 15954, i16 3480, i16 13769, i16 5146, i16 15775, i16 3100, i16 13996, i16 8069, i16 2468, i16 14938, i16 8849, i16 3367, i16 14683, i16 1030, i16 4932, i16 13053, i16 8117, i16 13849, i16 2412, i16 16066, i16 5216, i16 10023, i16 7067, i16 14207, i16 525, i16 6220, i16 10532, i16 1235, i16 11286, i16 6788, i16 15246, i16 1397, i16 10350, i16 2624, i16 11578, i16 1051, i16 9782, i16 3238, i16 8420, i16 16301, i16 2072, i16 14126, i16 6073, i16 12929, i16 2840, i16 12198, i16 4107, i16 15706, i16 6535, i16 14462, i16 5767, i16 8920, i16 15895, i16 5060, i16 9551, i16 14272, i16 3632, i16 16247, i16 5405, i16 10930, i16 313, i16 11506, i16 8670, i16 2174, i16 10002, i16 7432, i16 12807, i16 3646, i16 14691, i16 11476, i16 8827, i16 615, i16 6448, i16 11285, i16 5834, i16 375, i16 6676, i16 10341, i16 825, i16 11527, i16 2101, i16 13217, i16 6524, i16 12260, i16 4079, i16 10966, i16 3211, i16 15414, i16 1329, i16 14115, i16 8759, i16 2012, i16 6137, i16 13599, i16 2945, i16 6528, i16 13242, i16 7530, i16 2158, i16 11783, i16 100, i16 13085, i16 2576, i16 6856, i16 16340, i16 4991, i16 14408, i16 6808, i16 240, i16 14850, i16 2699, i16 13184, i16 5790, i16 11964, i16 8422, i16 146, i16 12410, i16 5445, i16 11592, i16 3115, i16 10122, i16 12752, i16 2805, i16 5547, i16 13428, i16 9321, i16 4878, i16 12652, i16 5451, i16 12156, i16 8377, i16 696, i16 9204, i16 11412, i16 1143, i16 6348, i16 13390, i16 5638, i16 502, i16 12697, i16 6679, i16 9077, i16 11873, i16 6268, i16 563, i16 5762, i16 10719, i16 7253, i16 312, i16 14653, i16 2302, i16 9459, i16 7672, i16 15124, i16 4688, i16 13994, i16 7737, i16 668, i16 8706, i16 12336, i16 4289, i16 13099, i16 5217, i16 14696, i16 5631, i16 13821, i16 512, i16 10266, i16 7574, i16 3820, i16 11654, i16 5015, i16 10556, i16 1489, i16 8051, i16 9272, i16 1070, i16 10026, i16 2921, i16 11601, i16 1941, i16 10867, i16 879, i16 7104, i16 12334, i16 1176, i16 12991, i16 6014, i16 15625, i16 3674, i16 13801, i16 6179, i16 16309, i16 491, i16 6562, i16 10615, i16 1224, i16 3930, i16 14243, i16 7289, i16 13648, i16 1863, i16 14892, i16 8088, i16 16256, i16 2688, i16 13941, i16 7126, i16 15844, i16 5448, i16 9700, i16 2285, i16 16340, i16 952, i16 13259, i16 5250, i16 12021, i16 3032, i16 12713, i16 7320, i16 10832, i16 4402, i16 12419, i16 9259, i16 4135, i16 14734, i16 5771, i16 8690, i16 14326, i16 4452, i16 15129, i16 9514, i16 660, i16 11510, i16 2739, i16 12303, i16 9400, i16 5257, i16 11396, i16 4137, i16 15464, i16 2074, i16 14080, i16 6927, i16 9559, i16 2198, i16 7226, i16 15746, i16 8513, i16 4075, i16 8219, i16 15174, i16 6751, i16 1997, i16 11319, i16 2691, i16 10661, i16 1566, i16 7124, i16 14702, i16 6597, i16 3574, i16 15215, i16 9059, i16 1884, i16 8525, i16 15935, i16 7744, i16 1993, i16 14135, i16 2541, i16 14508, i16 7925, i16 15303, i16 1855, i16 12915, i16 8673, i16 6079, i16 12104, i16 3581, i16 12826, i16 1724, i16 11448, i16 2665, i16 9813, i16 13495, i16 6125, i16 2344, i16 14424, i16 7158, i16 9201, i16 2007, i16 11320, i16 4086, i16 12460, i16 4918, i16 14542, i16 9386, i16 624, i16 15530, i16 3610, i16 14771, i16 10776, i16 5138, i16 13730, i16 4638, i16 15233, i16 7434, i16 13854, i16 4225, i16 15362, i16 9206, i16 3302, i16 10576, i16 8168, i16 2004, i16 7838, i16 10464, i16 1279, i16 12097, i16 5164, i16 8900, i16 13713, i16 4318, i16 15730, i16 9695, i16 2064, i16 11744, i16 5261, i16 10740, i16 4671, i16 11828, i16 3858, i16 11134, i16 8620, i16 3491, i16 9249, i16 160, i16 14880, i16 8346, i16 6741, i16 11498, i16 4308, i16 10376, i16 5945, i16 11123, i16 4911, i16 14829, i16 924, i16 16275, i16 8182, i16 1553, i16 11181, i16 650, i16 12346, i16 2389, i16 7360, i16 10578, i16 1603, i16 8042, i16 10675, i16 6083, i16 13952, i16 7706, i16 3619, i16 16109, i16 1425, i16 9645, i16 7440, i16 10986, i16 3510, i16 12814, i16 4283, i16 15154, i16 10870, i16 5242, i16 1502, i16 14742, i16 10605, i16 817, i16 9635, i16 14219, i16 4451, i16 15634, i16 5809, i16 13221, i16 9094, i16 2377, i16 8630, i16 12248, i16 4869, i16 12894, i16 6916, i16 10804, i16 4016, i16 11705, i16 5524, i16 10135, i16 7547, i16 3735, i16 11559, i16 4975, i16 10215, i16 4116, i16 15525, i16 1584, i16 8926, i16 15908, i16 5252, i16 10110, i16 6551, i16 15607, i16 5634, i16 3368, i16 16268, i16 7606, i16 9538, i16 347, i16 15679, i16 6898, i16 8556, i16 15305, i16 2645, i16 10864, i16 1740, i16 7955, i16 13206, i16 6339, i16 9165, i16 7773, i16 258, i16 11953, i16 3315, i16 11380, i16 6286, i16 584, i16 8331, i16 12245, i16 2261, i16 6217, i16 14401, i16 4624, i16 15193, i16 6970, i16 13439, i16 4761, i16 15052, i16 8482, i16 2590, i16 11212, i16 1745, i16 11902, i16 6126, i16 12577, i16 8001, i16 3787, i16 15974, i16 3035, i16 9757, i16 1140, i16 13450, i16 6943, i16 1660, i16 12651, i16 5995, i16 12227, i16 5042, i16 13464, i16 3682, i16 8884, i16 14456, i16 1937, i16 15904, i16 84, i16 9585, i16 3454, i16 11464, i16 2713, i16 6964, i16 14037, i16 5027, i16 15793, i16 8989, i16 6709, i16 15423, i16 5324, i16 13575, i16 4061, i16 14817, i16 2028, i16 9042, i16 950, i16 13381, i16 8454, i16 6595, i16 14506, i16 570, i16 6145, i16 15856, i16 1334, i16 10460, i16 7592, i16 640, i16 8898, i16 13211, i16 6197, i16 3240, i16 12307, i16 3753, i16 7907, i16 12092, i16 440, i16 10094, i16 3635, i16 14154, i16 5275, i16 16160, i16 88, i16 10932, i16 2694, i16 15600, i16 834, i16 14371, i16 2891, i16 13615, i16 172, i16 16196, i16 9033, i16 1156, i16 13368, i16 3370, i16 11101, i16 5545, i16 12397, i16 6857, i16 885, i16 11141, i16 2966, i16 12036, i16 262, i16 9154, i16 11899, i16 1564, i16 11090, i16 4468, i16 12074, i16 3903, i16 13286, i16 985, i16 6412, i16 12038, i16 7233, i16 15740, i16 3399, i16 10133, i16 1901, i16 12834, i16 3088, i16 14220, i16 6693, i16 16214, i16 1704, i16 8776, i16 12733, i16 4445, i16 9871, i16 7266, i16 12863, i16 186, i16 11597, i16 2719, i16 10181, i16 780, i16 11776, i16 2916, i16 6826, i16 14157, i16 5540, i16 15165, i16 7515, i16 787, i16 4713, i16 15262, i16 9159, i16 203, i16 12710, i16 6356, i16 14741, i16 4888, i16 9495, i16 15426, i16 4421, i16 14295, i16 2932, i16 10736, i16 1728, i16 11949, i16 609, i16 7560, i16 9859, i16 4722, i16 12996, i16 6483, i16 13772, i16 5429, i16 9881, i16 12243, i16 3745, i16 10827, i16 6192, i16 2774, i16 12736, i16 1045, i16 11259, i16 3126, i16 11948, i16 4849, i16 7924, i16 15754, i16 5385, i16 10261, i16 2164, i16 12108, i16 3274, i16 13270, i16 9218, i16 4539, i16 11532, i16 3734, i16 12613, i16 6347, i16 11760, i16 2421, i16 10253, i16 14327, i16 4766, i16 16316, i16 1723, i16 9061, i16 5351, i16 14866, i16 8150, i16 990, i16 10331, i16 6196, i16 12765, i16 4537, i16 10034, i16 5227, i16 11449, i16 8968, i16 5789, i16 8621, i16 11304, i16 3922, i16 12053, i16 6391, i16 8548, i16 14834, i16 684, i16 13815, i16 2583, i16 8213, i16 13303, i16 5829, i16 14605, i16 5093, i16 14083, i16 7189, i16 3702, i16 13248, i16 6033, i16 14947, i16 3159, i16 10685, i16 5048, i16 10144, i16 14342, i16 5259, i16 150, i16 8750, i16 13581, i16 4752, i16 15092, i16 5744, i16 10432, i16 8442, i16 4174, i16 9553, i16 7137, i16 14794, i16 2620, i16 14050, i16 1267, i16 16064, i16 5247, i16 9589, i16 7596, i16 13896, i16 4457, i16 16010, i16 5813, i16 9524, i16 12769, i16 45, i16 10401, i16 3094, i16 9398, i16 14362, i16 11128, i16 1498, i16 6985, i16 13984, i16 5431, i16 10403, i16 3437, i16 12056, i16 532, i16 7581, i16 10780, i16 1071, i16 9965, i16 4234, i16 15307, i16 8173, i16 13736, i16 3819, i16 15105, i16 8030, i16 2485, i16 10592, i16 1233, i16 15495, i16 8337, i16 459, i16 15211, i16 1923, i16 8547, i16 13850, i16 4532, i16 9176, i16 7584, i16 15984, i16 371, i16 9435, i16 12668, i16 3233, i16 11814, i16 5947, i16 15159, i16 4819, i16 10522, i16 7727, i16 2281, i16 13872, i16 7375, i16 14870, i16 2643, i16 13820, i16 4942, i16 16021, i16 8064, i16 82, i16 7512, i16 9921, i16 6295, i16 12675, i16 7563, i16 3036, i16 12519, i16 6794, i16 12008, i16 2192, i16 8470, i16 14986, i16 1270, i16 13728, i16 7421, i16 2173, i16 15247, i16 1336, i16 7309, i16 14035, i16 1741, i16 15460, i16 2764, i16 7047, i16 10487, i16 4698, i16 9411, i16 15099, i16 3477, i16 10540, i16 1310, i16 9596, i16 2511, i16 10381, i16 15387, i16 8608, i16 831, i16 8901, i16 12995, i16 1280, i16 15983, i16 7492, i16 2130, i16 9002, i16 12573, i16 6164, i16 1296, i16 11443, i16 7328, i16 749, i16 15914, i16 2181, i16 13158, i16 951, i16 11057, i16 4834, i16 10429, i16 5835, i16 11334, i16 7725, i16 2482, i16 14990, i16 1717, i16 6495, i16 12017, i16 3445, i16 10764, i16 1882, i16 7873, i16 15716, i16 4543, i16 13115, i16 6511, i16 2708, i16 5632, i16 13591, i16 10046, i16 2549, i16 10998, i16 1305, i16 15824, i16 8530, i16 6118, i16 12958, i16 3213, i16 16012, i16 5308, i16 11697, i16 6886, i16 2364, i16 6044, i16 10793, i16 1414, i16 9301, i16 13547, i16 4973, i16 11877, i16 4050, i16 6369, i16 12817, i16 5130, i16 7784, i16 11799, i16 195, i16 10107, i16 14660, i16 3500, i16 5998, i16 10989, i16 7247, i16 1513, i16 14241, i16 8370, i16 28, i16 7120, i16 12926, i16 1101, i16 15358, i16 6374, i16 9955, i16 310, i16 5892, i16 11083, i16 7937, i16 1119, i16 9302, i16 5484, i16 9029, i16 13610, i16 2552, i16 14028, i16 1225, i16 15465, i16 8770, i16 1840, i16 15871, i16 4139, i16 14265, i16 7076, i16 3183, i16 10676, i16 3857, i16 11942, i16 6227, i16 9241, i16 12662, i16 4281, i16 9840, i16 8278, i16 5908, i16 8995, i16 12768, i16 2068, i16 16252, i16 7487, i16 95, i16 12207, i16 4480, i16 16022, i16 6315, i16 12916, i16 5729, i16 1867, i16 6956, i16 12240, i16 2876, i16 7778, i16 9715, i16 3743, i16 11938, i16 5928, i16 13402, i16 2530, i16 16236, i16 9802, i16 4067, i16 12535, i16 8692, i16 4432, i16 12286, i16 6138, i16 15432, i16 3539, i16 13607, i16 348, i16 15676, i16 3169, i16 9123, i16 12687, i16 5592, i16 11129, i16 8806, i16 515, i16 14537, i16 5317, i16 13505, i16 4249, i16 8930, i16 11046, i16 1376, i16 16121, i16 9079, i16 11981, i16 3138, i16 8265, i16 15104, i16 4493, i16 13247, i16 7745, i16 2423, i16 14485, i16 5169, i16 9642, i16 7191, i16 13370, i16 393, i16 13943, i16 7824, i16 16211, i16 4438, i16 12811, i16 3578, i16 7653, i16 16110, i16 2196, i16 9005, i16 14715, i16 3017, i16 8922, i16 14350, i16 4680, i16 16176, i16 6556, i16 1764, i16 8655, i16 14004, i16 2836, i16 15277, i16 6455, i16 10012, i16 4239, i16 13506, i16 9823, i16 3823, i16 10777, i16 4389, i16 11335, i16 3593, i16 16253, i16 9420, i16 1866, i16 15470, i16 6989, i16 14494, i16 2087, i16 11838, i16 3888, i16 10772, i16 4986, i16 10370, i16 3959, i16 11573, i16 6003, i16 9789, i16 8262, i16 599, i16 9067, i16 13061, i16 5098, i16 16297, i16 359, i16 14198, i16 3481, i16 8090, i16 15841, i16 2512, i16 13268, i16 376, i16 14539, i16 5441, i16 11310, i16 4279, i16 11687, i16 6467, i16 8744, i16 13532, i16 2830, i16 10222, i16 489, i16 14772, i16 7928, i16 13725, i16 5325, i16 15524, i16 4883, i16 14476, i16 8356, i16 555, i16 14996, i16 5479, i16 11155, i16 3672, i16 8204, i16 14871, i16 2777, i16 14055, i16 6872, i16 9898, i16 3014, i16 7407, i16 11600, i16 5553, i16 10054, i16 5063, i16 11880, i16 6785, i16 838, i16 13686, i16 4029, i16 15526, i16 7078, i16 8522, i16 11266, i16 1056, i16 14776, i16 2303, i16 6000, i16 12461, i16 7245, i16 407, i16 4572, i16 15662, i16 6159, i16 732, i16 11602, i16 8699, i16 4288, i16 12326, i16 8978, i16 1484, i16 15063, i16 2215, i16 8578, i16 11217, i16 3354, i16 10137, i16 791, i16 11383, i16 6239, i16 14587, i16 298, i16 9723, i16 6730, i16 12470, i16 723, i16 7497, i16 11536, i16 1462, i16 10972, i16 2465, i16 12306, i16 7310, i16 12854, i16 1129, i16 12061, i16 5113, i16 13090, i16 2557, i16 16231, i16 7594, i16 2818, i16 15659, i16 7300, i16 14339, i16 1752, i16 13046, i16 8319, i16 4516, i16 12689, i16 5410, i16 12151, i16 4027, i16 12973, i16 6051, i16 15809, i16 794, i16 14609, i16 7960, i16 13351, i16 292, i16 14791, i16 3266, i16 13440, i16 5719, i16 15317, i16 1487, i16 9692, i16 6853, i16 10953, i16 4940, i16 12253, i16 746, i16 6653, i16 10624, i16 4626, i16 11020, i16 3250, i16 10101, i16 974, i16 13138, i16 2680, i16 14914, i16 1843, i16 7395, i16 10985, i16 4730, i16 12464, i16 3996, i16 11348, i16 3067, i16 10371, i16 20, i16 10839, i16 2329, i16 13488, i16 6855, i16 9526, i16 1467, i16 7274, i16 13892, i16 453, i16 6487, i16 10933, i16 1633, i16 11483, i16 50, i16 14568, i16 9341, i16 1326, i16 15054, i16 2892, i16 13466, i16 1751, i16 14621, i16 9749, i16 3281, i16 10606, i16 1475, i16 12407, i16 2641, i16 4907, i16 12625, i16 7376, i16 8577, i16 15437, i16 3871, i16 9826, i16 14084, i16 11302, i16 1663, i16 9580, i16 14202, i16 6697, i16 2191, i16 15214, i16 19, i16 7103, i16 11054, i16 5682, i16 12758, i16 4104, i16 6586, i16 15596, i16 5583, i16 14255, i16 7943, i16 2009, i16 8309, i16 12070, i16 5268, i16 14195, i16 3718, i16 8612, i16 15872, i16 3953, i16 13691, i16 6112, i16 9790, i16 3834, i16 15064, i16 4587, i16 10470, i16 3676, i16 9586, i16 626, i16 11392, i16 8733, i16 1239, i16 12441, i16 9001, i16 516, i16 5868, i16 11709, i16 6737, i16 917, i16 14160, i16 2939, i16 9844, i16 479, i16 10597, i16 8166, i16 1413, i16 7802, i16 11191, i16 5678, i16 2259, i16 7084, i16 10491, i16 4643, i16 10817, i16 1628, i16 11878, i16 3555, i16 7793, i16 12546, i16 2679, i16 8643, i16 15424, i16 3104, i16 8441, i16 14756, i16 1602, i16 13848, i16 6957, i16 15961, i16 4844, i16 14340, i16 5282, i16 8050, i16 9883, i16 5993, i16 14271, i16 1074, i16 15739, i16 6754, i16 9326, i16 1371, i16 16221, i16 4237, i16 14042, i16 6631, i16 12113, i16 4415, i16 11289, i16 3549, i16 15619, i16 10233, i16 4377, i16 12360, i16 9481, i16 3958, i16 15568, i16 4891, i16 13316, i16 8248, i16 3636, i16 12770, i16 7582, i16 10501, i16 6252, i16 9215, i16 8079, i16 4720, i16 16340, i16 5228, i16 14001, i16 6130, i16 9254, i16 16173, i16 6354, i16 2960, i16 11598, i16 675, i16 10781, i16 2127, i16 6862, i16 3946, i16 12384, i16 7571, i16 2782, i16 12895, i16 10558, i16 5401, i16 9987, i16 16177, i16 3041, i16 14088, i16 835, i16 8909, i16 12488, i16 1269, i16 10475, i16 2600, i16 13007, i16 7039, i16 15371, i16 4257, i16 10595, i16 1162, i16 7865, i16 13146, i16 2080, i16 10498, i16 7194, i16 880, i16 15604, i16 9049, i16 486, i16 11360, i16 6301, i16 15899, i16 5562, i16 14560, i16 7438, i16 3482, i16 14836, i16 7983, i16 4943, i16 13605, i16 8840, i16 2471, i16 14717, i16 10346, i16 5182, i16 10992, i16 4829, i16 15269, i16 2825, i16 13928, i16 6708, i16 14888, i16 2888, i16 13109, i16 9211, i16 16213, i16 2617, i16 13630, i16 7498, i16 15685, i16 6449, i16 8764, i16 14566, i16 4117, i16 14027, i16 1133, i16 5914, i16 12998, i16 9952, i16 3642, i16 11148, i16 7830, i16 1073, i16 8144, i16 10768, i16 1995, i16 9369, i16 15615, i16 585, i16 12994, i16 3580, i16 11943, i16 7624, i16 2228, i16 12731, i16 8424, i16 6100, i16 12295, i16 8970, i16 1516, i16 8065, i16 16080, i16 934, i16 13047, i16 7877, i16 2252, i16 14604, i16 8414, i16 3066, i16 12886, i16 7437, i16 10170, i16 2343, i16 5955, i16 16298, i16 5685, i16 2120, i16 14148, i16 661, i16 15837, i16 2718, i16 12204, i16 101, i16 10361, i16 7455, i16 2218, i16 13389, i16 326, i16 8886, i16 14450, i16 5474, i16 13767, i16 4980, i16 14983, i16 9148, i16 16340, i16 5370, i16 14588, i16 4923, i16 8351, i16 1389, i16 13859, i16 2622, i16 6380, i16 11631, i16 4700, i16 7950, i16 10889, i16 2881, i16 14854, i16 5050, i16 11950, i16 4744, i16 10918, i16 1379, i16 13252, i16 3256, i16 14943, i16 9450, i16 4768, i16 11229, i16 5172, i16 14511, i16 8431, i16 4243, i16 7622, i16 14234, i16 3167, i16 12511, i16 1847, i16 10320, i16 2959, i16 11839, i16 6854, i16 9691, i16 1999, i16 12002, i16 3659, i16 16033, i16 7626, i16 3906, i16 8462, i16 15636, i16 1709, i16 13366, i16 7337, i16 11520, i16 3796, i16 10183, i16 4715, i16 10633, i16 6907, i16 562, i16 5512, i16 11770, i16 6204, i16 929, i16 9590, i16 2481, i16 11489, i16 180, i16 11061, i16 7355, i16 9018, i16 11635, i16 1811, i16 6505, i16 13524, i16 5173, i16 15547, i16 5838, i16 12902, i16 4133, i16 12139, i16 7339, i16 3205, i16 11509, i16 4444, i16 10474, i16 5045, i16 9505, i16 15126, i16 3426, i16 13889, i16 721, i16 8094, i16 3216, i16 15208, i16 3921, i16 9942, i16 6384, i16 9229, i16 4692, i16 11587, i16 6608, i16 1243, i16 15958, i16 6098, i16 837, i16 14933, i16 8475, i16 10826, i16 986, i16 11993, i16 8730, i16 6637, i16 12482, i16 4524, i16 11291, i16 5428, i16 13128, i16 3778, i16 15254, i16 8963, i16 5768, i16 8239, i16 12055, i16 1493, i16 9720, i16 2450, i16 12709, i16 7990, i16 1032, i16 3239, i16 10979, i16 302, i16 10134, i16 15877, i16 6038, i16 9285, i16 7651, i16 12437, i16 1716, i16 9461, i16 15496, i16 3942, i16 13140, i16 7263, i16 9608, i16 161, i16 15911, i16 3102, i16 10105, i16 5726, i16 11653, i16 6984, i16 2538, i16 15306, i16 43, i16 12685, i16 2947, i16 10269, i16 13540, i16 2673, i16 10010, i16 8021, i16 4938, i16 13915, i16 5850, i16 13367, i16 1009, i16 15539, i16 4317, i16 14161, i16 5635, i16 10923, i16 1311, i16 12786, i16 9219, i16 158, i16 7271, i16 12495, i16 6131, i16 1079, i16 8872, i16 16065, i16 239, i16 13653, i16 1846, i16 15420, i16 8044, i16 14045, i16 3450, i16 8914, i16 14980, i16 4365, i16 13796, i16 4813, i16 15994, i16 6134, i16 3316, i16 14379, i16 4743, i16 16114, i16 8184, i16 37, i16 10430, i16 2187, i16 11751, i16 2636, i16 15068, i16 266, i16 13324, i16 6216, i16 8844, i16 16148, i16 2137, i16 14471, i16 199, i16 6533, i16 10929, i16 4837, i16 10303, i16 14699, i16 5779, i16 9045, i16 12802, i16 1889, i16 14363, i16 2806, i16 15100, i16 210, i16 13573, i16 10472, i16 4632, i16 9255, i16 12222, i16 5332, i16 3331, i16 14227, i16 7800, i16 4368, i16 15189, i16 3752, i16 9451, i16 7975, i16 1291, i16 14812, i16 6752, i16 10999, i16 969, i16 12561, i16 3326, i16 15786, i16 4144, i16 7728, i16 15346, i16 6598, i16 9315, i16 3723, i16 13283, i16 10327, i16 5668, i16 13072, i16 7052, i16 2399, i16 13408, i16 603, i16 14352, i16 5194, i16 14913, i16 6796, i16 297, i16 11511, i16 6139, i16 1571, i16 14438, i16 8005, i16 5343, i16 13516, i16 4083, i16 15725, i16 533, i16 8737, i16 13603, i16 5535, i16 9903, i16 6010, i16 16334, i16 1613, i16 6677, i16 11661, i16 1268, i16 15522, i16 9114, i16 122, i16 10630, i16 4485, i16 9324, i16 6133, i16 10730, i16 276, i16 12876, i16 3132, i16 9874, i16 4409, i16 15206, i16 5756, i16 11176, i16 2430, i16 10042, i16 14821, i16 4538, i16 7761, i16 12635, i16 6471, i16 11681, i16 3732, i16 11225, i16 1520, i16 7660, i16 12857, i16 2027, i16 12320, i16 6609, i16 10124, i16 2229, i16 8546, i16 12084, i16 779, i16 10695, i16 2855, i16 9502, i16 14920, i16 4269, i16 14180, i16 6415, i16 9909, i16 7119, i16 9230, i16 5492, i16 14803, i16 1375, i16 7711, i16 12767, i16 7183, i16 8587, i16 13694, i16 1648, i16 15684, i16 7143, i16 2290, i16 13173, i16 329, i16 6960, i16 10701, i16 5010, i16 11978, i16 5957, i16 9661, i16 7837, i16 2725, i16 12722, i16 1977, i16 6988, i16 13841, i16 9914, i16 1707, i16 12632, i16 9627, i16 237, i16 13209, i16 2365, i16 15386, i16 10318, i16 7703, i16 2063, i16 8067, i16 14280, i16 4641, i16 11434, i16 1820, i16 9971, i16 12845, i16 3170, i16 11159, i16 116, i16 11923, i16 4737, i16 1552, i16 15017, i16 2760, i16 8875, i16 12167, i16 4637, i16 11350, i16 3835, i16 10302, i16 3192, i16 13418, i16 8588, i16 2652, i16 16315, i16 9015, i16 3699, i16 12342, i16 8923, i16 1008, i16 12125, i16 8209, i16 6260, i16 11121, i16 1849, i16 12376, i16 3466, i16 12013, i16 4403, i16 8153, i16 14884, i16 5245, i16 12969, i16 6489, i16 3974, i16 14695, i16 6745, i16 16302, i16 1680, i16 13776, i16 3372, i16 14991, i16 8512, i16 6425, i16 12355, i16 8066, i16 1968, i16 13393, i16 3292, i16 16340, i16 8249, i16 3683, i16 11905, i16 2156, i16 9522, i16 3175, i16 8387, i16 14409, i16 5740, i16 8725, i16 15919, i16 4705, i16 10872, i16 7350, i16 681, i16 14689, i16 7000, i16 13582, i16 4535, i16 15157, i16 5658, i16 13707, i16 6777, i16 2546, i16 11507, i16 7419, i16 861, i16 16340, i16 2986, i16 13788, i16 1784, i16 10241, i16 4790, i16 11200, i16 5630, i16 3111, i16 12347, i16 5465, i16 10649, i16 4356, i16 9172, i16 12025, i16 4049, i16 8268, i16 15868, i16 3760, i16 13816, i16 8504, i16 1598, i16 16340, i16 3815, i16 14152, i16 5255, i16 15365, i16 10969, i16 353, i16 6310, i16 15635, i16 4082, i16 6701, i16 11544, i16 5365, i16 10692, i16 6043, i16 3353, i16 13256, i16 5155, i16 12121, i16 2527, i16 9616, i16 7293, i16 14748, i16 6468, i16 899, i16 14313, i16 5102, i16 15940, i16 6973, i16 14006, i16 11625, i16 8558, i16 5956, i16 15415, i16 1149, i16 9800, i16 6663, i16 16049, i16 1000, i16 10747, i16 4147, i16 11959, i16 7772, i16 4369, i16 13639, i16 7475, i16 1919, i16 15118, i16 6481, i16 9730, i16 2246, i16 14188, i16 3602, i16 16002, i16 7431, i16 10393, i16 1321, i16 13951, i16 9504, i16 412, i16 10712, i16 3275, i16 9474, i16 12230, i16 2183, i16 11038, i16 3064, i16 12643, i16 5487, i16 10186, i16 7099, i16 2266, i16 15873, i16 757, i16 14603, i16 6870, i16 8779, i16 12044, i16 6674, i16 597, i16 13747, i16 5890, i16 14284, i16 5530, i16 15766, i16 840, i16 9812, i16 2515, i16 11986, i16 16, i16 9975, i16 2768, i16 15580, i16 8984, i16 5265, i16 11826, i16 1252, i16 9766, i16 3059, i16 10273, i16 1474, i16 12674, i16 9245, i16 4592, i16 12515, i16 8794, i16 4963, i16 11240, i16 4374, i16 12283, i16 7537, i16 14216, i16 693, i16 15025, i16 9681, i16 1199, i16 15328, i16 2843, i16 13398, i16 940, i16 6434, i16 14286, i16 10075, i16 2537, i16 11726, i16 786, i16 6731, i16 11045, i16 4808, i16 11819, i16 680, i16 10315, i16 8208, i16 3697, i16 8831, i16 11645, i16 2593, i16 9170, i16 14359, i16 3106, i16 16096, i16 1107, i16 13792, i16 8784, i16 438, i16 16015, i16 6167, i16 8445, i16 15462, i16 537, i16 5434, i16 12285, i16 9131, i16 3995, i16 10528, i16 8157, i16 2005, i16 7799, i16 5021, i16 500, i16 12684, i16 3506, i16 8195, i16 14673, i16 2037, i16 7540, i16 13212, i16 5036, i16 15721, i16 1449, i16 14057, i16 10048, i16 662, i16 11387, i16 8508, i16 3034, i16 13809, i16 5554, i16 12524, i16 4660, i16 10537, i16 6625, i16 706, i16 14464, i16 8996, i16 3185, i16 7040, i16 13435, i16 4622, i16 16093, i16 836, i16 7748, i16 13193, i16 5127, i16 9895, i16 4151, i16 11389, i16 926, i16 12491, i16 8986, i16 5795, i16 11245, i16 3570, i16 10828, i16 1204, i16 5095, i16 14439, i16 9046, i16 3107, i16 11305, i16 1238, i16 10479, i16 3502, i16 13008, i16 6793, i16 15113, i16 4048, i16 13822, i16 6246, i16 11326, i16 3998, i16 12753, i16 1920, i16 7506, i16 16226, i16 5867, i16 13197, i16 4208, i16 15818, i16 7886, i16 544, i16 15477, i16 2033, i16 13934, i16 7914, i16 1257, i16 15196, i16 8650, i16 3303, i16 6365, i16 12538, i16 8341, i16 3862, i16 11496, i16 4593, i16 10206, i16 5239, i16 16313, i16 9584, i16 1779, i16 5345, i16 14852, i16 7387, i16 8928, i16 15474, i16 2625, i16 13966, i16 8609, i16 6920, i16 14811, i16 1367, i16 7615, i16 16188, i16 5016, i16 13013, i16 7517, i16 1451, i16 10226, i16 7027, i16 11227, i16 4430, i16 11774, i16 6948, i16 10063, i16 1436, i16 12741, i16 3449, i16 10750, i16 13793, i16 2212, i16 7149, i16 13067, i16 1317, i16 13748, i16 6124, i16 15593, i16 10191, i16 14474, i16 8997, i16 6545, i16 11228, i16 4488, i16 12540, i16 9238, i16 2775, i16 11450, i16 7305, i16 9546, i16 3366, i16 6005, i16 12918, i16 4848, i16 16053, i16 6902, i16 10141, i16 328, i16 8662, i16 15412, i16 1457, i16 13133, i16 8339, i16 3812, i16 5857, i16 15578, i16 10204, i16 2441, i16 11485, i16 8235, i16 13726, i16 3739, i16 8631, i16 15351, i16 552, i16 13986, i16 7882, i16 15230, i16 3984, i16 14321, i16 3037, i16 8676, i16 13973, i16 5510, i16 15787, i16 9663, i16 2030, i16 11747, i16 5326, i16 8554, i16 15364, i16 4667, i16 11081, i16 7845, i16 2081, i16 8123, i16 10394, i16 5307, i16 12554, i16 1355, i16 14301, i16 5937, i16 8658, i16 11103, i16 2726, i16 10620, i16 320, i16 11694, i16 8708, i16 5065, i16 11356, i16 6323, i16 10533, i16 3470, i16 9792, i16 13036, i16 6015, i16 444, i16 15762, i16 10608, i16 5135, i16 2424, i16 16042, i16 7383, i16 13111, i16 413, i16 12164, i16 7944, i16 3663, i16 12987, i16 10961, i16 5896, i16 1440, i16 13269, i16 4536, i16 12308, i16 6284, i16 1827, i16 11420, i16 4241, i16 9799, i16 12533, i16 2307, i16 10503, i16 745, i16 15007, i16 5798, i16 13911, i16 3837, i16 8527, i16 14578, i16 1897, i16 15133, i16 4177, i16 14076, i16 5705, i16 9265, i16 7906, i16 4295, i16 10123, i16 16249, i16 3598, i16 11718, i16 4211, i16 10844, i16 3065, i16 8023, i16 5426, i16 1618, i16 16241, i16 2504, i16 13929, i16 188, i16 5821, i16 15200, i16 6278, i16 480, i16 14503, i16 8839, i16 15377, i16 2519, i16 10353, i16 1203, i16 13084, i16 4581, i16 14783, i16 7511, i16 3337, i16 11274, i16 2886, i16 15160, i16 9281, i16 12865, i16 1695, i16 5588, i16 14981, i16 6850, i16 2041, i16 6060, i16 11137, i16 1524, i16 7206, i16 12003, i16 5915, i16 1974, i16 7022, i16 10563, i16 1364, i16 11835, i16 7177, i16 349, i16 11644, i16 2675, i16 7790, i16 13572, i16 6287, i16 14952, i16 1641, i16 7460, i16 12262, i16 405, i16 13571, i16 6069, i16 14079, i16 977, i16 16340, i16 3075, i16 7976, i16 9493, i16 469, i16 15267, i16 3828, i16 13910, i16 5018, i16 14832, i16 7640, i16 2402, i16 13313, i16 1655, i16 14085, i16 4862, i16 14857, i16 6798, i16 2453, i16 12050, i16 9436, i16 7182, i16 1856, i16 14053, i16 9020, i16 10794, i16 1706, i16 6035, i16 14668, i16 8954, i16 2093, i16 15021, i16 7580, i16 124, i16 8788, i16 11482, i16 3633, i16 10582, i16 488, i16 9373, i16 15788, i16 5444, i16 13155, i16 3223, i16 6426, i16 14491, i16 4664, i16 12109, i16 3425, i16 9729, i16 2184, i16 12442, i16 561, i16 7532, i16 9872, i16 2913, i16 8350, i16 10964, i16 2749, i16 15727, i16 1191, i16 14423, i16 6311, i16 265, i16 9406, i16 6698, i16 15080, i16 747, i16 13397, i16 2384, i16 12385, i16 7474, i16 10469, i16 5640, i16 9385, i16 7635, i16 11903, i16 2152, i16 9899, i16 12955, i16 5593, i16 1822, i16 7001, i16 12287, i16 5475, i16 10879, i16 3854, i16 11524, i16 2103, i16 12759, i16 5413, i16 8893, i16 12110, i16 5214, i16 189, i16 7088, i16 11947, i16 9149, i16 776, i16 12623, i16 7915, i16 15804, i16 4704, i16 14344, i16 9405, i16 2475, i16 15999, i16 8080, i16 13472, i16 4625, i16 16172, i16 5148, i16 13304, i16 8305, i16 4809, i16 14739, i16 4095, i16 10488, i16 89, i16 8825, i16 12739, i16 3890, i16 8971, i16 15997, i16 4261, i16 10211, i16 3686, i16 11792, i16 4857, i16 10639, i16 14594, i16 3479, i16 13094, i16 6375, i16 12261, i16 1136, i16 8257, i16 9376, i16 4360, i16 14498, i16 6053, i16 9977, i16 3242, i16 11869, i16 152, i16 8292, i16 16083, i16 5352, i16 2883, i16 13251, i16 10005, i16 6839, i16 69, i16 5673, i16 14264, i16 8663, i16 2612, i16 6669, i16 11708, i16 4806, i16 10735, i16 6830, i16 16001, i16 2385, i16 14252, i16 5110, i16 14757, i16 7486, i16 2850, i16 10169, i16 49, i16 15085, i16 9034, i16 1090, i16 13504, i16 8660, i16 7109, i16 15923, i16 6228, i16 8988, i16 15565, i16 3964, i16 12043, i16 6599, i16 13436, i16 16, i16 10287, i16 6047, i16 11649, i16 2919, i16 11099, i16 7630, i16 14644, i16 2456, i16 9091, i16 7205, i16 9537, i16 13993, i16 3961, i16 14858, i16 894, i16 13526, i16 3365, i16 15668, i16 4401, i16 14012, i16 8380, i16 4031, i16 11832, i16 7817, i16 11043, i16 51, i16 14859, i16 2722, i16 15643, i16 7125, i16 9422, i16 6108, i16 16157, i16 936, i16 6417, i16 13333, i16 7977, i16 16263, i16 2614, i16 6371, i16 14259, i16 4972, i16 10440, i16 212, i16 11808, i16 2812, i16 6292, i16 11605, i16 4867, i16 10737, i16 55, i16 9626, i16 2757, i16 10289, i16 2133, i16 15587, i16 9804, i16 1082, i16 12459, i16 5801, i16 16203, i16 3641, i16 7911, i16 14229, i16 2283, i16 7204, i16 10921, i16 1567, i16 15223, i16 7546, i16 9297, i16 1799, i16 5794, i16 11535, i16 8506, i16 2225, i16 9621, i16 7132, i16 15692, i16 1936, i16 12199, i16 737, i16 10881, i16 3926, i16 15920, i16 5689, i16 9160, i16 13473, i16 1555, i16 10160, i16 14569, i16 5752, i16 3505, i16 15338, i16 7997, i16 11568, i16 4015, i16 12621, i16 7507, i16 15434, i16 1050, i16 14007, i16 3020, i16 13531, i16 4320, i16 12492, i16 6569, i16 9776, i16 2142, i16 12972, i16 6022, i16 13761, i16 8330, i16 4114, i16 11748, i16 7956, i16 5622, i16 2417, i16 11870, i16 154, i16 13348, i16 4469, i16 7816, i16 13079, i16 1063, i16 16326, i16 5312, i16 8134, i16 14993, i16 3634, i16 8607, i16 13478, i16 5080, i16 12288, i16 4373, i16 13539, i16 5355, i16 16058, i16 4762, i16 72, i16 11779, i16 6049, i16 9724, i16 6757, i16 11604, i16 1395, i16 10551, i16 7134, i16 814, i16 14733, i16 2967, i16 15810, i16 4313, i16 13717, i16 6552, i16 9588, i16 8317, i16 618, i16 14256, i16 1738, i16 9892, i16 7621, i16 14662, i16 2170, i16 10981, i16 4533, i16 13567, i16 9648, i16 3244, i16 11249, i16 4055, i16 14647, i16 7155, i16 8707, i16 13330, i16 897, i16 14797, i16 3402, i16 14187, i16 6725, i16 12968, i16 6001, i16 12266, i16 3868, i16 6360, i16 14108, i16 8566, i16 2486, i16 9133, i16 12072, i16 1033, i16 10027, i16 6307, i16 13323, i16 5031, i16 12956, i16 6553, i16 254, i16 12476, i16 7209, i16 15450, i16 822, i16 6849, i16 16046, i16 5220, i16 13359, i16 4582, i16 10448, i16 5349, i16 15540, i16 7058, i16 12660, i16 1205, i16 11125, i16 2751, i16 6128, i16 12383, i16 7461, i16 798, i16 8679, i16 11962, i16 1287, i16 13130, i16 2756, i16 15887, i16 748, i16 11059, i16 3435, i16 10035, i16 5486, i16 11342, i16 1597, i16 9578, i16 8253, i16 659, i16 15572, i16 8492, i16 4902, i16 11958, i16 1561, i16 16055, i16 7315, i16 1931, i16 15348, i16 9333, i16 14324, i16 4022, i16 10604, i16 2946, i16 11391, i16 1675, i16 10236, i16 5934, i16 9464, i16 3290, i16 12316, i16 1612, i16 12819, i16 6805, i16 627, i16 15187, i16 1976, i16 9996, i16 1076, i16 11525, i16 1832, i16 11008, i16 15350, i16 8485, i16 2256, i16 15907, i16 3090, i16 8640, i16 14449, i16 3869, i16 13054, i16 5774, i16 10221, i16 8479, i16 1102, i16 10009, i16 8118, i16 1678, i16 13383, i16 4108, i16 11910, i16 5013, i16 12703, i16 3711, i16 11202, i16 4885, i16 10084, i16 3909, i16 12485, i16 1046, i16 7566, i16 15416, i16 1761, i16 13069, i16 8505, i16 1419, i16 15627, i16 4246, i16 10172, i16 6873, i16 9283, i16 5208, i16 11462, i16 1611, i16 15156, i16 751, i16 8145, i16 11558, i16 1803, i16 7082, i16 13204, i16 4217, i16 6739, i16 14561, i16 4760, i16 15505, i16 726, i16 11618, i16 2566, i16 9696, i16 14646, i16 3592, i16 13454, i16 4120, i16 8855, i16 13718, i16 3218, i16 10256, i16 125, i16 11341, i16 3342, i16 12809, i16 8559, i16 2517, i16 8851, i16 13869, i16 4431, i16 14978, i16 9363, i16 3589, i16 15588, i16 6583, i16 13597, i16 4091, i16 10686, i16 4716, i16 10239, i16 6453, i16 9486, i16 5213, i16 13305, i16 6309, i16 16132, i16 4093, i16 7740, i16 15255, i16 3543, i16 11909, i16 5567, i16 13627, i16 961, i16 7852, i16 10698, i16 3806, i16 9933, i16 12673, i16 5254, i16 564, i16 6843, i16 12746, i16 5089, i16 15266, i16 8211, i16 14489, i16 3538, i16 13958, i16 2106, i16 14711, i16 6364, i16 9809, i16 4213, i16 16153, i16 9636, i16 4682, i16 10813, i16 5561, i16 12698, i16 4534, i16 10244, i16 5845, i16 3773, i16 6874, i16 10935, i16 4805, i16 12745, i16 414, i16 7393, i16 11303, i16 1950, i16 16095, i16 3590, i16 13835, i16 6331, i16 13112, i16 3178, i16 12047, i16 5968, i16 14581, i16 2324, i16 9260, i16 6868, i16 15008, i16 2547, i16 13750, i16 499, i16 15840, i16 8748, i16 5903, i16 11775, i16 5286, i16 10282, i16 6976, i16 3667, i16 12340, i16 5564, i16 11011, i16 2987, i16 13000, i16 1290, i16 15723, i16 3196, i16 10456, i16 5490, i16 9364, i16 13814, i16 3288, i16 15418, i16 8894, i16 647, i16 15682, i16 10321, i16 1940, i16 11458, i16 3471, i16 9453, i16 7382, i16 16142, i16 3983, i16 8332, i16 11120, i16 2150, i16 7910, i16 12138, i16 1488, i16 10928, i16 4207, i16 14911, i16 7821, i16 14063, i16 1407, i16 6478, i16 11763, i16 4945, i16 7912, i16 10358, i16 641, i16 7591, i16 11500, i16 1926, i16 10461, i16 2335, i16 16262, i16 6962, i16 14788, i16 1549, i16 13964, i16 2993, i16 15122, i16 1915, i16 12134, i16 368, i16 8682, i16 12296, i16 1178, i16 13400, i16 7462, i16 2296, i16 10049, i16 6901, i16 12816, i16 5177, i16 12147, i16 2733, i16 8396, i16 13553, i16 7760, i16 16251, i16 1532, i16 10166, i16 6678, i16 912, i16 5817, i16 11730, i16 8772, i16 7065, i16 10573, i16 823, i16 11845, i16 7842, i16 2293, i16 7185, i16 13118, i16 3251, i16 15629, i16 7085, i16 14809, i16 3007, i16 13005, i16 9852, i16 13701, i16 1198, i16 14294, i16 9112, i16 5698, i16 15265, i16 4481, i16 9654, i16 7287, i16 11660, i16 2433, i16 11113, i16 5069, i16 16286, i16 8549, i16 850, i16 10180, i16 7186, i16 15941, i16 246, i16 8533, i16 11725, i16 5657, i16 10499, i16 7409, i16 1880, i16 14839, i16 2720, i16 13808, i16 610, i16 16125, i16 8841, i16 2321, i16 14052, i16 381, i16 15083, i16 5785, i16 10853, i16 6407, i16 13235, i16 4293, i16 14421, i16 2367, i16 6620, i16 10903, i16 4544, i16 12718, i16 5420, i16 7992, i16 3030, i16 13721, i16 5977, i16 8421, i16 12610, i16 1876, i16 6180, i16 13647, i16 1155, i16 5572, i16 15759, i16 10050, i16 5001, i16 15051, i16 5649, i16 13051, i16 6961, i16 2269, i16 5906, i16 9901, i16 15181, i16 341, i16 14432, i16 2157, i16 16330, i16 5509, i16 14168, i16 4599, i16 13063, i16 5329, i16 11313, i16 7805, i16 554, i16 8149, i16 12417, i16 5527, i16 11367, i16 5938, i16 10625, i16 4674, i16 8020, i16 14422, i16 3766, i16 10497, i16 4501, i16 9340, i16 16248, i16 3886, i16 14181, i16 2988, i16 14853, i16 340, i16 15713, i16 6061, i16 1293, i16 10554, i16 4314, i16 11475, i16 3730, i16 13784, i16 8035, i16 15698, i16 4861, i16 333, i16 12953, i16 5145, i16 15756, i16 3475, i16 13898, i16 9174, i16 14507, i16 1446, i16 11213, i16 8481, i16 408, i16 8789, i16 11848, i16 930, i16 8095, i16 3393, i16 11629, i16 7731, i16 3566, i16 12299, i16 1595, i16 8326, i16 12719, i16 216, i16 5931, i16 15329, i16 7891, i16 495, i16 9141, i16 5541, i16 15065, i16 3638, i16 13166, i16 4750, i16 12371, i16 6248, i16 1548, i16 15240, i16 2955, i16 13598, i16 6530, i16 9489, i16 8063, i16 4333, i16 10850, i16 5058, i16 13421, i16 6729, i16 9592, i16 7916, i16 3881, i16 12224, i16 4757, i16 9847, i16 471, i16 11919, i16 7196, i16 8480, i16 16281, i16 206, i16 9990, i16 2273, i16 14779, i16 9198, i16 12415, i16 7314, i16 168, i16 14163, i16 3176, i16 14785, i16 10859, i16 4474, i16 8927, i16 11945, i16 6646, i16 386, i16 13291, i16 2690, i16 9659, i16 754, i16 11956, i16 8174, i16 16182, i16 3810, i16 8003, i16 12901, i16 4081, i16 9754, i16 6658, i16 12494, i16 2503, i16 9581, i16 293, i16 14729, i16 3416, i16 12873, i16 5833, i16 11139, i16 2621, i16 9940, i16 217, i16 13019, i16 3343, i16 15623, i16 9725, i16 2526, i16 13113, i16 7295, i16 14974, i16 183, i16 6205, i16 10585, i16 1409, i16 11180, i16 6516, i16 9614, i16 3455, i16 8813, i16 14635, i16 3105, i16 14118, i16 7426, i16 12406, i16 1806, i16 10843, i16 2820, i16 9928, i16 14297, i16 8511, i16 2666, i16 9066, i16 12658, i16 5568, i16 192, i16 5843, i16 12054, i16 6548, i16 2684, i16 14261, i16 3721, i16 6427, i16 15836, i16 5480, i16 14749, i16 8916, i16 1917, i16 16340, i16 8822, i16 6746, i16 13811, i16 2889, i16 14902, i16 9403, i16 1766, i16 12551, i16 6969, i16 14209, i16 2144, i16 7405, i16 11417, i16 1316, i16 10915, i16 2835, i16 14453, i16 9401, i16 5380, i16 10825, i16 4657, i16 11579, i16 16, i16 10621, i16 15134, i16 2227, i16 12080, i16 1170, i16 11354, i16 4395, i16 16340, i16 9140, i16 1686, i16 14239, i16 2740, i16 15956, i16 8799, i16 1214, i16 11218, i16 4930, i16 12205, i16 5851, i16 11398, i16 6893, i16 1333, i16 4882, i16 15951, i16 8964, i16 5613, i16 9954, i16 8100, i16 507, i16 7704, i16 13172, i16 3012, i16 14461, i16 9362, i16 4383, i16 11727, i16 6203, i16 15481, i16 3905, i16 10598, i16 1038, i16 12318, i16 3018, i16 9163, i16 7179, i16 12157, i16 998, i16 9063, i16 7239, i16 15299, i16 6269, i16 8366, i16 9834, i16 1677, i16 14302, i16 3967, i16 15803, i16 4981, i16 14872, i16 7107, i16 9236, i16 1353, i16 6549, i16 11609, i16 5888, i16 1809, i16 10877, i16 7142, i16 13677, i16 4387, i16 15276, i16 8668, i16 4190, i16 13894, i16 7068, i16 12552, i16 4739, i16 11208, i16 8991, i16 286, i16 6304, i16 15029, i16 5023, i16 13154, i16 7252, i16 2442, i16 5686, i16 14915, i16 6514, i16 1744, i16 8686, i16 15291, i16 8136, i16 3824, i16 16032, i16 8990, i16 4892, i16 13198, i16 10596, i16 2096, i16 9073, i16 287, i16 6296, i16 12824, i16 5841, i16 702, i16 11239, i16 4215, i16 10885, i16 8234, i16 3468, i16 13983, i16 4591, i16 10940, i16 4035, i16 12792, i16 9717, i16 4417, i16 15492, i16 6736, i16 9943, i16 7829, i16 3572, i16 13003, i16 956, i16 15673, i16 3847, i16 14370, i16 4934, i16 7667, i16 9205, i16 6405, i16 14582, i16 3148, i16 12503, i16 944, i16 7062, i16 12730, i16 3784, i16 11311, i16 7836, i16 4094, i16 14873, i16 3258, i16 13667, i16 1733, i16 15194, i16 3963, i16 13985, i16 7759, i16 11035, i16 2603, i16 11655, i16 1711, i16 15324, i16 3648, i16 10601, i16 15845, i16 1538, i16 11299, i16 4863, i16 7766, i16 16312, i16 1637, i16 10422, i16 2944, i16 13536, i16 7318, i16 14516, i16 4476, i16 11178, i16 1529, i16 13709, i16 3265, i16 15459, i16 3695, i16 13638, i16 1441, i16 12010, i16 4163, i16 15976, i16 6720, i16 9393, i16 7941, i16 1069, i16 12559, i16 8762, i16 2282, i16 13888, i16 7607, i16 14614, i16 676, i16 15901, i16 8874, i16 3228, i16 12676, i16 2054, i16 11431, i16 7931, i16 881, i16 11806, i16 2153, i16 10983, i16 771, i16 15454, i16 1947, i16 5666, i16 15882, i16 9711, i16 3005, i16 10389, i16 731, i16 16086, i16 9146, i16 12123, i16 1039, i16 11110, i16 7476, i16 12402, i16 2953, i16 13645, i16 9935, i16 849, i16 12175, i16 7767, i16 1255, i16 8322, i16 13837, i16 12438, i16 7428, i16 15191, i16 2727, i16 9964, i16 14113, i16 5294, i16 15747, i16 1368, i16 6647, i16 11859, i16 5623, i16 10278, i16 1197, i16 15620, i16 8304, i16 115, i16 13637, i16 8615, i16 2448, i16 13901, i16 678, i16 16340, i16 8869, i16 7035, i16 8243, i16 12196, i16 2510, i16 13131, i16 1480, i16 15531, i16 3507, i16 9785, i16 8185, i16 6094, i16 13920, i16 10766, i16 5006, i16 15301, i16 8613, i16 1514, i16 12083, i16 5701, i16 10294, i16 6781, i16 9446, i16 3109, i16 10178, i16 461, i16 12761, i16 5372, i16 14950, i16 6421, i16 13108, i16 4697, i16 12332, i16 7308, i16 2832, i16 9599, i16 3758, i16 14043, i16 948, i16 8456, i16 12833, i16 5121, i16 12218, i16 8823, i16 1877, i16 5743, i16 13150, i16 6275, i16 15878, i16 5281, i16 10842, i16 5985, i16 11403, i16 4734, i16 10071, i16 3165, i16 13508, i16 889, i16 11841, i16 2842, i16 13350, i16 10306, i16 3729, i16 6404, i16 12211, i16 4602, i16 10920, i16 4347, i16 10334, i16 5336, i16 11867, i16 7840, i16 4747, i16 15642, i16 9084, i16 3378, i16 14436, i16 7391, i16 16131, i16 4969, i16 10090, i16 5864, i16 12343, i16 8591, i16 2414, i16 7671, i16 12568, i16 5388, i16 11306, i16 6052, i16 1930, i16 6997, i16 13392, i16 4508, i16 15964, i16 5260, i16 10516, i16 1540, i16 6742, i16 13273, i16 3351, i16 10319, i16 14946, i16 5742, i16 2834, i16 4329, i16 11465, i16 4727, i16 10841, i16 7014, i16 2306, i16 12200, i16 3224, i16 8888, i16 14463, i16 557, i16 16186, i16 2784, i16 11493, i16 3272, i16 6507, i16 12144, i16 3802, i16 5981, i16 12626, i16 5310, i16 11627, i16 6157, i16 2746, i16 12556, i16 1578, i16 9673, i16 6655, i16 8469, i16 10332, i16 5847, i16 12855, i16 277, i16 14926, i16 1978, i16 8461, i16 2561, i16 10031, i16 114, i16 6593, i16 14642, i16 4450, i16 13523, i16 591, i16 15552, i16 5231, i16 13314, i16 6029, i16 16119, i16 8033, i16 2175, i16 8777, i16 803, i16 9541, i16 7947, i16 1146, i16 13875, i16 6055, i16 15098, i16 6939, i16 8778, i16 12521, i16 5966, i16 2415, i16 15278, i16 218, i16 6442, i16 15708, i16 9862, i16 548, i16 10725, i16 2639, i16 10020, i16 26, i16 14607, i16 2031, i16 8034, i16 12747, i16 6473, i16 9270, i16 7770, i16 4483, i16 14656, i16 6140, i16 1861, i16 15490, i16 8214, i16 505, i16 16204, i16 1780, i16 13194, i16 2735, i16 14125, i16 1263, i16 14694, i16 8576, i16 492, i16 6136, i16 12760, i16 5741, i16 2885, i16 8961, i16 12913, i16 3177, i16 10660, i16 4224, i16 13404, i16 6753, i16 14047, i16 1210, i16 14746, i16 3720, i16 13729, i16 7919, i16 15487, i16 2770, i16 10069, i16 452, i16 11479, i16 3550, i16 14823, i16 9252, i16 4617, i16 15403, i16 6057, i16 2528, i16 10496, i16 16133, i16 9713, i16 2000, i16 14343, i16 988, i16 15566, i16 7647, i16 9518, i16 6234, i16 12506, i16 4324, i16 9884, i16 7336, i16 13254, i16 5184, i16 14754, i16 8897, i16 2029, i16 16037, i16 10706, i16 1415, i16 15360, i16 2249, i16 9554, i16 14790, i16 5506, i16 13968, i16 4226, i16 16063, i16 636, i16 14166, i16 2767, i16 7348, i16 11082, i16 4783, i16 10224, i16 15654, i16 5610, i16 13144, i16 7499, i16 11703, i16 2882, i16 9735, i16 6999, i16 11056, i16 2741, i16 12019, i16 1411, i16 10586, i16 4231, i16 11789, i16 7086, i16 10674, i16 14306, i16 3999, i16 16278, i16 10165, i16 3427, i16 10797, i16 53, i16 11497, i16 2542, i16 5398, i16 14740, i16 9006, i16 7079, i16 8552, i16 11673, i16 2801, i16 7984, i16 14283, i16 4799, i16 12981, i16 6699, i16 11817, i16 5537, i16 9122, i16 16129, i16 543, i16 14412, i16 2428, i16 15561, i16 8811, i16 108, i16 8523, i16 12081, i16 5053, i16 13543, i16 9419, i16 5248, i16 10588, i16 6681, i16 9511, i16 4919, i16 10219, i16 3002, i16 12399, i16 7259, i16 14019, i16 1748, i16 8383, i16 12169, i16 111, i16 7013, i16 13946, i16 1501, i16 15168, i16 528, i16 11582, i16 3535, i16 10905, i16 7342, i16 9536, i16 62, i16 11648, i16 5007, i16 10731, i16 4155, i16 14468, i16 4749, i16 12843, i16 7128, i16 2314, i16 11436, i16 93, i16 9423, i16 12966, i16 7241, i16 631, i16 13759, i16 8038, i16 5203, i16 12115, i16 4047, i16 13223, i16 30, i16 15036, i16 2204, i16 7858, i16 12988, i16 1859, i16 6312, i16 10657, i16 909, i16 12748, i16 7692, i16 4653, i16 8072, i16 9291, i16 4271, i16 10959, i16 8007, i16 373, i16 11803, i16 3277, i16 10468, i16 5083, i16 12661, i16 5644, i16 8786, i16 15952, i16 3920, i16 13617, i16 7444, i16 789, i16 9484, i16 3385, i16 15859, i16 4607, i16 14020, i16 1771, i16 16104, i16 3889, i16 9210, i16 7156, i16 15090, i16 3379, i16 14074, i16 1080, i16 13391, i16 2948, i16 5880, i16 12704, i16 2635, i16 6531, i16 14540, i16 4971, i16 13623, i16 4424, i16 16013, i16 10109, i16 629, i16 11235, i16 3396, i16 13923, i16 5289, i16 14865, i16 4297, i16 9233, i16 7665, i16 1284, i16 15045, i16 4242, i16 13829, i16 3054, i16 6935, i16 11102, i16 5653, i16 10443, i16 5163, i16 12935, i16 7017, i16 15167, i16 4024, i16 11024, i16 2907, i16 7146, i16 14197, i16 3430, i16 15205, i16 16, i16 13433, i16 6433, i16 16328, i16 4575, i16 11351, i16 3707, i16 10008, i16 15925, i16 4831, i16 14599, i16 9483, i16 3620, i16 11409, i16 6430, i16 9652, i16 4690, i16 16340, i16 5982, i16 2565, i16 15323, i16 8295, i16 3293, i16 14263, i16 1427, i16 13120, i16 7663, i16 9773, i16 1085, i16 8484, i16 16306, i16 5551, i16 14105, i16 7646, i16 1805, i16 14613, i16 5435], align 16
@black_sep = global [1024 x i16] [i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 129, i16 138, i16 148, i16 159, i16 169, i16 180, i16 190, i16 201, i16 212, i16 224, i16 235, i16 246, i16 258, i16 270, i16 282, i16 294, i16 307, i16 319, i16 332, i16 345, i16 358, i16 371, i16 384, i16 398, i16 411, i16 425, i16 439, i16 453, i16 468, i16 482, i16 497, i16 512, i16 527, i16 542, i16 557, i16 572, i16 588, i16 604, i16 620, i16 636, i16 652, i16 668, i16 685, i16 702, i16 719, i16 735, i16 753, i16 770, i16 787, i16 805, i16 822, i16 840, i16 858, i16 876, i16 895, i16 913, i16 931, i16 950, i16 969, i16 988, i16 1007, i16 1026, i16 1045, i16 1064, i16 1084, i16 1103, i16 1123, i16 1143, i16 1162, i16 1182, i16 1202, i16 1223, i16 1243, i16 1263, i16 1284, i16 1304, i16 1325, i16 1345, i16 1366, i16 1387, i16 1408, i16 1429, i16 1450, i16 1471, i16 1492, i16 1514, i16 1535, i16 1556, i16 1578, i16 1599, i16 1621, i16 1642, i16 1664, i16 1686, i16 1708, i16 1729, i16 1751, i16 1773, i16 1795, i16 1817, i16 1839, i16 1861, i16 1883, i16 1905, i16 1927, i16 1949, i16 1971, i16 1993, i16 2016, i16 2038, i16 2060, i16 2082, i16 2104, i16 2127, i16 2149, i16 2171, i16 2193, i16 2215, i16 2238, i16 2260, i16 2282, i16 2304, i16 2327, i16 2349, i16 2371, i16 2393, i16 2415, i16 2438, i16 2460, i16 2482, i16 2504, i16 2526, i16 2548, i16 2570, i16 2592, i16 2614, i16 2636, i16 2658, i16 2680, i16 2702, i16 2724, i16 2746, i16 2768, i16 2790, i16 2811, i16 2833, i16 2855, i16 2877, i16 2898, i16 2920, i16 2942, i16 2963, i16 2985, i16 3006, i16 3028, i16 3049, i16 3070, i16 3092, i16 3113, i16 3134, i16 3156, i16 3177, i16 3198, i16 3219, i16 3240, i16 3261, i16 3282, i16 3303, i16 3324, i16 3345, i16 3366, i16 3387, i16 3408, i16 3428, i16 3449, i16 3470, i16 3490, i16 3511, i16 3532, i16 3552, i16 3572, i16 3593, i16 3613, i16 3634, i16 3654, i16 3674, i16 3694, i16 3715, i16 3735, i16 3755, i16 3775, i16 3795, i16 3815, i16 3835, i16 3855, i16 3875, i16 3894, i16 3914, i16 3934, i16 3954, i16 3973, i16 3993, i16 4013, i16 4032, i16 4052, i16 4071, i16 4091, i16 4110, i16 4129, i16 4149, i16 4168, i16 4187, i16 4207, i16 4226, i16 4245, i16 4264, i16 4283, i16 4302, i16 4321, i16 4340, i16 4359, i16 4378, i16 4397, i16 4416, i16 4435, i16 4454, i16 4472, i16 4491, i16 4510, i16 4529, i16 4547, i16 4566, i16 4584, i16 4603, i16 4622, i16 4640, i16 4658, i16 4677, i16 4695, i16 4714, i16 4732, i16 4750, i16 4769, i16 4787, i16 4805, i16 4824, i16 4842, i16 4860, i16 4878, i16 4896, i16 4914, i16 4932, i16 4950, i16 4968, i16 4986, i16 5004, i16 5022, i16 5040, i16 5058, i16 5076, i16 5094, i16 5112, i16 5130, i16 5147, i16 5165, i16 5183, i16 5201, i16 5218, i16 5236, i16 5254, i16 5271, i16 5289, i16 5307, i16 5324, i16 5342, i16 5360, i16 5377, i16 5395, i16 5412, i16 5430, i16 5447, i16 5465, i16 5482, i16 5499, i16 5517, i16 5534, i16 5552, i16 5569, i16 5586, i16 5604, i16 5621, i16 5638, i16 5656, i16 5673, i16 5690, i16 5707, i16 5724, i16 5742, i16 5759, i16 5776, i16 5793, i16 5810, i16 5828, i16 5845, i16 5862, i16 5879, i16 5896, i16 5913, i16 5930, i16 5947, i16 5964, i16 5981, i16 5998, i16 6015, i16 6032, i16 6049, i16 6066, i16 6083, i16 6100, i16 6117, i16 6134, i16 6151, i16 6168, i16 6185, i16 6202, i16 6219, i16 6236, i16 6252, i16 6269, i16 6286, i16 6303, i16 6320, i16 6337, i16 6353, i16 6370, i16 6387, i16 6404, i16 6421, i16 6437, i16 6454, i16 6471, i16 6488, i16 6504, i16 6521, i16 6538, i16 6555, i16 6571, i16 6588, i16 6605, i16 6621, i16 6638, i16 6655, i16 6672, i16 6688, i16 6705, i16 6721, i16 6738, i16 6755, i16 6771, i16 6788, i16 6805, i16 6821, i16 6838, i16 6855, i16 6871, i16 6888, i16 6904, i16 6921, i16 6938, i16 6954, i16 6971, i16 6987, i16 7004, i16 7020, i16 7037, i16 7053, i16 7070, i16 7087, i16 7103, i16 7120, i16 7136, i16 7153, i16 7169, i16 7186, i16 7202, i16 7219, i16 7235, i16 7252, i16 7268, i16 7285, i16 7301, i16 7318, i16 7334, i16 7351, i16 7367, i16 7384, i16 7400, i16 7417, i16 7433, i16 7449, i16 7466, i16 7482, i16 7499, i16 7515, i16 7532, i16 7548, i16 7565, i16 7581, i16 7597, i16 7614, i16 7630, i16 7647, i16 7663, i16 7680, i16 7696, i16 7712, i16 7729, i16 7745, i16 7762, i16 7778, i16 7794, i16 7811, i16 7827, i16 7844, i16 7860, i16 7876, i16 7893, i16 7909, i16 7925, i16 7942, i16 7958, i16 7975, i16 7991, i16 8007, i16 8024, i16 8040, i16 8056, i16 8073, i16 8089, i16 8106, i16 8122, i16 8138, i16 8155, i16 8171, i16 8187, i16 8204, i16 8220, i16 8236, i16 8253, i16 8269, i16 8285, i16 8302, i16 8318, i16 8334, i16 8351, i16 8367, i16 8383, i16 8400, i16 8416, i16 8432, i16 8449, i16 8465, i16 8481, i16 8498, i16 8514, i16 8530, i16 8547, i16 8563, i16 8579, i16 8596, i16 8612, i16 8628, i16 8645, i16 8661, i16 8677, i16 8694, i16 8710, i16 8726, i16 8742, i16 8759, i16 8775, i16 8791, i16 8808, i16 8824, i16 8840, i16 8857, i16 8873, i16 8889, i16 8906, i16 8922, i16 8938, i16 8954, i16 8971, i16 8987, i16 9003, i16 9020, i16 9036, i16 9052, i16 9069, i16 9085, i16 9101, i16 9117, i16 9134, i16 9150, i16 9166, i16 9183, i16 9199, i16 9215, i16 9231, i16 9248, i16 9264, i16 9280, i16 9297, i16 9313, i16 9329, i16 9345, i16 9362, i16 9378, i16 9394, i16 9411, i16 9427, i16 9443, i16 9459, i16 9476, i16 9492, i16 9508, i16 9524, i16 9541, i16 9557, i16 9573, i16 9590, i16 9606, i16 9622, i16 9638, i16 9655, i16 9671, i16 9687, i16 9704, i16 9720, i16 9736, i16 9752, i16 9769, i16 9785, i16 9801, i16 9817, i16 9834, i16 9850, i16 9866, i16 9882, i16 9899, i16 9915, i16 9931, i16 9948, i16 9964, i16 9980, i16 9996, i16 10013, i16 10029, i16 10045, i16 10061, i16 10078, i16 10094, i16 10110, i16 10126, i16 10143, i16 10159, i16 10175, i16 10192, i16 10208, i16 10224, i16 10240, i16 10257, i16 10273, i16 10289, i16 10305, i16 10322, i16 10338, i16 10354, i16 10370, i16 10387, i16 10403, i16 10419, i16 10435, i16 10452, i16 10468, i16 10484, i16 10501, i16 10517, i16 10533, i16 10549, i16 10566, i16 10582, i16 10598, i16 10614, i16 10631, i16 10647, i16 10663, i16 10679, i16 10696, i16 10712, i16 10728, i16 10744, i16 10761, i16 10777, i16 10793, i16 10809, i16 10826, i16 10842, i16 10858, i16 10874, i16 10891, i16 10907, i16 10923, i16 10940, i16 10956, i16 10972, i16 10988, i16 11005, i16 11021, i16 11037, i16 11053, i16 11070, i16 11086, i16 11102, i16 11118, i16 11135, i16 11151, i16 11167, i16 11183, i16 11200, i16 11216, i16 11232, i16 11248, i16 11265, i16 11281, i16 11297, i16 11313, i16 11330, i16 11346, i16 11362, i16 11378, i16 11395, i16 11411, i16 11427, i16 11443, i16 11460, i16 11476, i16 11492, i16 11508, i16 11525, i16 11541, i16 11557, i16 11573, i16 11590, i16 11606, i16 11622, i16 11638, i16 11655, i16 11671, i16 11687, i16 11703, i16 11720, i16 11736, i16 11752, i16 11769, i16 11785, i16 11801, i16 11817, i16 11834, i16 11850, i16 11866, i16 11882, i16 11899, i16 11915, i16 11931, i16 11947, i16 11964, i16 11980, i16 11996, i16 12012, i16 12029, i16 12045, i16 12061, i16 12077, i16 12094, i16 12110, i16 12126, i16 12142, i16 12159, i16 12175, i16 12191, i16 12207, i16 12224, i16 12240, i16 12256, i16 12272, i16 12289, i16 12305, i16 12321, i16 12337, i16 12354, i16 12370, i16 12386, i16 12402, i16 12419, i16 12435, i16 12451, i16 12467, i16 12484, i16 12500, i16 12516, i16 12532, i16 12549, i16 12565, i16 12581, i16 12597, i16 12614, i16 12630, i16 12646, i16 12662, i16 12679, i16 12695, i16 12711, i16 12727, i16 12744, i16 12760, i16 12776, i16 12792, i16 12809, i16 12825, i16 12841, i16 12857, i16 12874, i16 12890, i16 12906, i16 12922, i16 12939, i16 12955, i16 12971, i16 12987, i16 13004, i16 13020, i16 13036, i16 13052, i16 13069, i16 13085, i16 13101, i16 13117, i16 13134, i16 13150, i16 13166, i16 13182, i16 13199, i16 13215, i16 13231, i16 13247, i16 13264, i16 13280, i16 13296, i16 13312, i16 13329, i16 13345, i16 13361, i16 13377, i16 13394, i16 13410, i16 13426, i16 13442, i16 13459, i16 13475, i16 13491, i16 13507, i16 13524, i16 13540, i16 13556, i16 13572, i16 13589, i16 13605, i16 13621, i16 13637, i16 13654, i16 13670, i16 13686, i16 13702, i16 13719, i16 13735, i16 13751, i16 13767, i16 13784, i16 13800, i16 13816, i16 13832, i16 13849, i16 13865, i16 13881, i16 13897, i16 13914, i16 13930, i16 13946, i16 13962, i16 13979, i16 13995, i16 14011, i16 14027, i16 14044, i16 14060, i16 14076, i16 14092, i16 14109, i16 14125, i16 14141, i16 14157, i16 14174, i16 14190, i16 14206, i16 14222, i16 14239, i16 14255, i16 14271, i16 14287, i16 14304, i16 14320, i16 14336, i16 14352, i16 14369, i16 14385, i16 14401, i16 14417, i16 14434, i16 14450, i16 14466, i16 14482, i16 14499, i16 14515, i16 14531, i16 14547, i16 14564, i16 14580, i16 14596, i16 14612, i16 14629, i16 14645, i16 14661, i16 14677, i16 14694, i16 14710, i16 14726, i16 14742, i16 14759, i16 14775, i16 14791, i16 14807, i16 14824, i16 14840, i16 14856, i16 14872, i16 14889, i16 14905, i16 14921, i16 14937, i16 14954, i16 14970, i16 14986, i16 15002, i16 15019, i16 15035, i16 15051, i16 15067, i16 15084, i16 15100, i16 15116, i16 15132, i16 15149, i16 15165, i16 15181, i16 15197, i16 15214, i16 15230, i16 15246, i16 15262, i16 15279, i16 15295, i16 15311, i16 15327, i16 15344, i16 15360, i16 15376, i16 15392, i16 15409, i16 15425, i16 15441, i16 15457, i16 15474, i16 15490, i16 15506, i16 15522, i16 15539, i16 15555, i16 15571, i16 15587, i16 15604, i16 15620, i16 15636, i16 15652, i16 15669, i16 15685, i16 15701, i16 15717, i16 15734, i16 15750, i16 15766, i16 15782, i16 15799, i16 15815, i16 15831, i16 15847, i16 15864, i16 15880, i16 15896, i16 15912, i16 15929, i16 15945, i16 15961, i16 15977, i16 15994, i16 16010, i16 16026, i16 16042, i16 16059, i16 16075, i16 16091, i16 16107, i16 16124, i16 16140, i16 16156, i16 16172, i16 16189, i16 16205, i16 16221, i16 16237, i16 16254, i16 16270, i16 16286, i16 16302, i16 16319, i16 16335, i16 16351, i16 16367], align 16
@mj700v2c_procs = internal global %struct.gx_device_procs_s { i32 (%struct.gx_device_s*)* @mj700v2c_open, void (%struct.gx_device_s*, %struct.gs_matrix_s*)* @gx_default_get_initial_matrix, i32 (%struct.gx_device_s*)* @gx_default_sync_output, i32 (%struct.gx_device_s*, i32, i32)* @gdev_prn_output_page, i32 (%struct.gx_device_s*)* @gdev_prn_close, i64 (%struct.gx_device_s*, i16*)* @gdev_mjc_map_rgb_color, i32 (%struct.gx_device_s*, i64, i16*)* @gdev_mjc_map_color_rgb, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* null, i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* null, i32 (%struct.gx_device_s*, i32, i8*, i8**)* @gx_default_get_bits, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @mj_get_params, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @mj700v2c_put_params, i64 (%struct.gx_device_s*, i16*)* null, %struct.gx_xfont_procs_s* (%struct.gx_device_s*)* null, %struct.gx_device_s* (%struct.gx_device_s*)* null, i64 (%struct.gx_device_s*, i16, i16, i16, i16)* null, %struct.gx_device_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)* null, i32 (%struct.gx_device_s*, i32, i32*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* null, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)* null, i32 (%struct.gx_device_s*, i64, i16*)* null, i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)* null, i32 (%struct.gx_device_s*, %struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_transparency_group_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gx_transparency_mask_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32)* null, i64 (%struct.gx_device_s*, i16*)* null, i32 (%struct.gx_device_s*, i64, i16*)* null, i32 (%struct.gx_device_s*, i64, %struct.gs_pattern1_instance_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* null, %struct.gs_devn_params_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i8*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)* null, void (%struct.gx_device_s*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_process_page_options_s*)* null }, align 8
@.str = private unnamed_addr constant [9 x i8] c"mj700v2c\00", align 1
@st_device_printer = external constant %struct.gs_memory_struct_type_s, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"DeviceCMYK\00", align 1
@gs_mj700v2c_device = global { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [11240 x i8], { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* }, [4096 x i8], i32, i32, i32, i32, i32, i32, %struct._IO_FILE*, i64, i8*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s*, i32)*, %struct.gx_page_queue_s*, i32, %struct.gx_device_printer_s*, i32, i32, %struct.bg_print_s, i32, %struct.gx_saved_pages_list_s*, %struct.gx_device_procs_s, %struct.gx_device_procs_s, i32, i32, i32, i32, i32, i32, i32, i32, i32 } { i32 18512, %struct.gx_device_procs_s* @mj700v2c_procs, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), %struct.gs_memory_s* null, %struct.gs_memory_struct_type_s* @st_device_printer, i32 0, void (%struct.gx_device_s*)* null, %struct.rc_header_s zeroinitializer, i32 0, i32 0, i32 0, %struct.gx_device_color_info_s { i32 4, i32 4, i32 0, i16 32, i8 3, i32 255, i32 255, i32 5, i32 5, %struct.gx_device_anti_alias_info_s { i32 1, i32 1 }, i32 -1, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [64 x i64] zeroinitializer, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 -1, i64 0, i32 0 }, %struct.gx_device_cached_colors_s { i64 -1, i64 -1 }, i32 2975, i32 4210, i32 0, i32 0, i32 0, i32 0, [2 x float] [float 5.950000e+02, float 8.420000e+02], [4 x float] zeroinitializer, i32 0, [2 x float] [float 3.600000e+02, float 3.600000e+02], [2 x float] [float 3.600000e+02, float 3.600000e+02], [2 x float] [float 0xC0453D70A0000000, float 0xC05E1E5600000000], [4 x float] [float 0x4020FDF3C0000000, float 0x4042B851E0000000, float 0x4020FDF3C0000000, float 0x40381844E0000000], i64 0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, %struct.gx_stroked_gradient_recognizer_s zeroinitializer, i32 0, i32 0, %struct.gdev_space_params_s { i64 10000000, i64 4000000, %struct.gx_band_params_s zeroinitializer, i32 0, i32 0 }, %struct.cmm_dev_profile_s* null, i32 0, %struct.gx_page_device_procs_s { i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_install, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_begin_page, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* @gx_default_end_page }, %struct.gx_device_procs_s zeroinitializer, [11240 x i8] zeroinitializer, { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* } { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)* @mj700v2c_print_page, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_print_page_copies, %struct.gx_device_buf_procs_s { i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, %struct.gx_render_plane_s*, %struct.gs_memory_s*, %struct.gx_colors_usage_s*)* @gx_default_create_buf_device, i32 (%struct.gx_device_buf_space_s*, %struct.gx_device_s*, %struct.gx_render_plane_s*, i32, i32)* @gx_default_size_buf_device, i32 (%struct.gx_device_s*, i8*, i32, i8**, i32, i32, i32)* @gx_default_setup_buf_device, void (%struct.gx_device_s*)* @gx_default_destroy_buf_device }, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)* @gx_default_get_space_params, i32 (%struct.gdev_prn_start_render_params_s*)* @gx_default_start_render_thread, i32 (%struct.gx_device_printer_s*)* @gx_default_open_render_device, i32 (%struct.gx_device_printer_s*)* @gx_default_close_render_device, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_buffer_page }, [4096 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 -1, i32 0, %struct._IO_FILE* null, i64 0, i8* null, %struct.gs_memory_s* null, %struct.gs_memory_s* null, i32 (%struct.gx_device_s*, i32)* null, %struct.gx_page_queue_s* null, i32 0, %struct.gx_device_printer_s* null, i32 0, i32 0, %struct.bg_print_s zeroinitializer, i32 0, %struct.gx_saved_pages_list_s* null, %struct.gx_device_procs_s zeroinitializer, %struct.gx_device_procs_s zeroinitializer, i32 4, i32 1024, i32 1024, i32 1024, i32 1024, i32 1024, i32 0, i32 1, i32 1 }, align 8
@mj500c_procs = internal global %struct.gx_device_procs_s { i32 (%struct.gx_device_s*)* @mj500c_open, void (%struct.gx_device_s*, %struct.gs_matrix_s*)* @gx_default_get_initial_matrix, i32 (%struct.gx_device_s*)* @gx_default_sync_output, i32 (%struct.gx_device_s*, i32, i32)* @gdev_prn_output_page, i32 (%struct.gx_device_s*)* @gdev_prn_close, i64 (%struct.gx_device_s*, i16*)* @gdev_mjc_map_rgb_color, i32 (%struct.gx_device_s*, i64, i16*)* @gdev_mjc_map_color_rgb, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* null, i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* null, i32 (%struct.gx_device_s*, i32, i8*, i8**)* @gx_default_get_bits, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @mj_get_params, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @mj500c_put_params, i64 (%struct.gx_device_s*, i16*)* null, %struct.gx_xfont_procs_s* (%struct.gx_device_s*)* null, %struct.gx_device_s* (%struct.gx_device_s*)* null, i64 (%struct.gx_device_s*, i16, i16, i16, i16)* null, %struct.gx_device_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)* null, i32 (%struct.gx_device_s*, i32, i32*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* null, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)* null, i32 (%struct.gx_device_s*, i64, i16*)* null, i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)* null, i32 (%struct.gx_device_s*, %struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_transparency_group_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gx_transparency_mask_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32)* null, i64 (%struct.gx_device_s*, i16*)* null, i32 (%struct.gx_device_s*, i64, i16*)* null, i32 (%struct.gx_device_s*, i64, %struct.gs_pattern1_instance_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* null, %struct.gs_devn_params_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i8*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)* null, void (%struct.gx_device_s*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_process_page_options_s*)* null }, align 8
@.str.2 = private unnamed_addr constant [7 x i8] c"mj500c\00", align 1
@gs_mj500c_device = global { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [11240 x i8], { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* }, [4096 x i8], i32, i32, i32, i32, i32, i32, %struct._IO_FILE*, i64, i8*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s*, i32)*, %struct.gx_page_queue_s*, i32, %struct.gx_device_printer_s*, i32, i32, %struct.bg_print_s, i32, %struct.gx_saved_pages_list_s*, %struct.gx_device_procs_s, %struct.gx_device_procs_s, i32, i32, i32, i32, i32, i32, i32, i32, i32 } { i32 18512, %struct.gx_device_procs_s* @mj500c_procs, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), %struct.gs_memory_s* null, %struct.gs_memory_struct_type_s* @st_device_printer, i32 0, void (%struct.gx_device_s*)* null, %struct.rc_header_s zeroinitializer, i32 0, i32 0, i32 0, %struct.gx_device_color_info_s { i32 4, i32 4, i32 0, i16 32, i8 3, i32 255, i32 255, i32 5, i32 5, %struct.gx_device_anti_alias_info_s { i32 1, i32 1 }, i32 -1, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [64 x i64] zeroinitializer, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 -1, i64 0, i32 0 }, %struct.gx_device_cached_colors_s { i64 -1, i64 -1 }, i32 2975, i32 4210, i32 0, i32 0, i32 0, i32 0, [2 x float] [float 5.950000e+02, float 8.420000e+02], [4 x float] zeroinitializer, i32 0, [2 x float] [float 3.600000e+02, float 3.600000e+02], [2 x float] [float 3.600000e+02, float 3.600000e+02], [2 x float] [float 0xC0453D70A0000000, float 0xC05E1E5600000000], [4 x float] [float 0x4020FDF3C0000000, float 0x4042B851E0000000, float 0x4020FDF3C0000000, float 0x40381844E0000000], i64 0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, %struct.gx_stroked_gradient_recognizer_s zeroinitializer, i32 0, i32 0, %struct.gdev_space_params_s { i64 10000000, i64 4000000, %struct.gx_band_params_s zeroinitializer, i32 0, i32 0 }, %struct.cmm_dev_profile_s* null, i32 0, %struct.gx_page_device_procs_s { i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_install, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_begin_page, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* @gx_default_end_page }, %struct.gx_device_procs_s zeroinitializer, [11240 x i8] zeroinitializer, { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* } { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)* @mj500c_print_page, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_print_page_copies, %struct.gx_device_buf_procs_s { i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, %struct.gx_render_plane_s*, %struct.gs_memory_s*, %struct.gx_colors_usage_s*)* @gx_default_create_buf_device, i32 (%struct.gx_device_buf_space_s*, %struct.gx_device_s*, %struct.gx_render_plane_s*, i32, i32)* @gx_default_size_buf_device, i32 (%struct.gx_device_s*, i8*, i32, i8**, i32, i32, i32)* @gx_default_setup_buf_device, void (%struct.gx_device_s*)* @gx_default_destroy_buf_device }, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)* @gx_default_get_space_params, i32 (%struct.gdev_prn_start_render_params_s*)* @gx_default_start_render_thread, i32 (%struct.gx_device_printer_s*)* @gx_default_open_render_device, i32 (%struct.gx_device_printer_s*)* @gx_default_close_render_device, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_buffer_page }, [4096 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 -1, i32 0, %struct._IO_FILE* null, i64 0, i8* null, %struct.gs_memory_s* null, %struct.gs_memory_s* null, i32 (%struct.gx_device_s*, i32)* null, %struct.gx_page_queue_s* null, i32 0, %struct.gx_device_printer_s* null, i32 0, i32 0, %struct.bg_print_s zeroinitializer, i32 0, %struct.gx_saved_pages_list_s* null, %struct.gx_device_procs_s zeroinitializer, %struct.gx_device_procs_s zeroinitializer, i32 3, i32 1024, i32 1024, i32 1024, i32 1024, i32 1024, i32 0, i32 1, i32 1 }, align 8
@mj6000c_procs = internal global %struct.gx_device_procs_s { i32 (%struct.gx_device_s*)* @mj6000c_open, void (%struct.gx_device_s*, %struct.gs_matrix_s*)* @gx_default_get_initial_matrix, i32 (%struct.gx_device_s*)* @gx_default_sync_output, i32 (%struct.gx_device_s*, i32, i32)* @gdev_prn_output_page, i32 (%struct.gx_device_s*)* @gdev_prn_close, i64 (%struct.gx_device_s*, i16*)* @gdev_mjc_map_rgb_color, i32 (%struct.gx_device_s*, i64, i16*)* @gdev_mjc_map_color_rgb, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* null, i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* null, i32 (%struct.gx_device_s*, i32, i8*, i8**)* @gx_default_get_bits, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @mj_get_params, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @mj700v2c_put_params, i64 (%struct.gx_device_s*, i16*)* null, %struct.gx_xfont_procs_s* (%struct.gx_device_s*)* null, %struct.gx_device_s* (%struct.gx_device_s*)* null, i64 (%struct.gx_device_s*, i16, i16, i16, i16)* null, %struct.gx_device_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)* null, i32 (%struct.gx_device_s*, i32, i32*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* null, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)* null, i32 (%struct.gx_device_s*, i64, i16*)* null, i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)* null, i32 (%struct.gx_device_s*, %struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_transparency_group_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gx_transparency_mask_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32)* null, i64 (%struct.gx_device_s*, i16*)* null, i32 (%struct.gx_device_s*, i64, i16*)* null, i32 (%struct.gx_device_s*, i64, %struct.gs_pattern1_instance_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* null, %struct.gs_devn_params_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i8*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)* null, void (%struct.gx_device_s*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_process_page_options_s*)* null }, align 8
@.str.3 = private unnamed_addr constant [8 x i8] c"mj6000c\00", align 1
@gs_mj6000c_device = global { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [11240 x i8], { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* }, [4096 x i8], i32, i32, i32, i32, i32, i32, %struct._IO_FILE*, i64, i8*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s*, i32)*, %struct.gx_page_queue_s*, i32, %struct.gx_device_printer_s*, i32, i32, %struct.bg_print_s, i32, %struct.gx_saved_pages_list_s*, %struct.gx_device_procs_s, %struct.gx_device_procs_s, i32, i32, i32, i32, i32, i32, i32, i32, i32 } { i32 18512, %struct.gx_device_procs_s* @mj6000c_procs, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0), %struct.gs_memory_s* null, %struct.gs_memory_struct_type_s* @st_device_printer, i32 0, void (%struct.gx_device_s*)* null, %struct.rc_header_s zeroinitializer, i32 0, i32 0, i32 0, %struct.gx_device_color_info_s { i32 4, i32 4, i32 0, i16 32, i8 3, i32 255, i32 255, i32 5, i32 5, %struct.gx_device_anti_alias_info_s { i32 1, i32 1 }, i32 -1, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [64 x i64] zeroinitializer, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 -1, i64 0, i32 0 }, %struct.gx_device_cached_colors_s { i64 -1, i64 -1 }, i32 2975, i32 4210, i32 0, i32 0, i32 0, i32 0, [2 x float] [float 5.950000e+02, float 8.420000e+02], [4 x float] zeroinitializer, i32 0, [2 x float] [float 3.600000e+02, float 3.600000e+02], [2 x float] [float 3.600000e+02, float 3.600000e+02], [2 x float] [float 0xC0453D70A0000000, float 0xC05E1E5600000000], [4 x float] [float 0x4020FDF3C0000000, float 0x4042B851E0000000, float 0x4020FDF3C0000000, float 0x40381844E0000000], i64 0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, %struct.gx_stroked_gradient_recognizer_s zeroinitializer, i32 0, i32 0, %struct.gdev_space_params_s { i64 10000000, i64 4000000, %struct.gx_band_params_s zeroinitializer, i32 0, i32 0 }, %struct.cmm_dev_profile_s* null, i32 0, %struct.gx_page_device_procs_s { i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_install, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_begin_page, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* @gx_default_end_page }, %struct.gx_device_procs_s zeroinitializer, [11240 x i8] zeroinitializer, { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* } { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)* @mj6000c_print_page, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_print_page_copies, %struct.gx_device_buf_procs_s { i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, %struct.gx_render_plane_s*, %struct.gs_memory_s*, %struct.gx_colors_usage_s*)* @gx_default_create_buf_device, i32 (%struct.gx_device_buf_space_s*, %struct.gx_device_s*, %struct.gx_render_plane_s*, i32, i32)* @gx_default_size_buf_device, i32 (%struct.gx_device_s*, i8*, i32, i8**, i32, i32, i32)* @gx_default_setup_buf_device, void (%struct.gx_device_s*)* @gx_default_destroy_buf_device }, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)* @gx_default_get_space_params, i32 (%struct.gdev_prn_start_render_params_s*)* @gx_default_start_render_thread, i32 (%struct.gx_device_printer_s*)* @gx_default_open_render_device, i32 (%struct.gx_device_printer_s*)* @gx_default_close_render_device, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_buffer_page }, [4096 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 -1, i32 0, %struct._IO_FILE* null, i64 0, i8* null, %struct.gs_memory_s* null, %struct.gs_memory_s* null, i32 (%struct.gx_device_s*, i32)* null, %struct.gx_page_queue_s* null, i32 0, %struct.gx_device_printer_s* null, i32 0, i32 0, %struct.bg_print_s zeroinitializer, i32 0, %struct.gx_saved_pages_list_s* null, %struct.gx_device_procs_s zeroinitializer, %struct.gx_device_procs_s zeroinitializer, i32 4, i32 1024, i32 1024, i32 1024, i32 1024, i32 1024, i32 0, i32 1, i32 1 }, align 8
@mj8000c_procs = internal global %struct.gx_device_procs_s { i32 (%struct.gx_device_s*)* @mj8000c_open, void (%struct.gx_device_s*, %struct.gs_matrix_s*)* @gx_default_get_initial_matrix, i32 (%struct.gx_device_s*)* @gx_default_sync_output, i32 (%struct.gx_device_s*, i32, i32)* @gdev_prn_output_page, i32 (%struct.gx_device_s*)* @gdev_prn_close, i64 (%struct.gx_device_s*, i16*)* @gdev_mjc_map_rgb_color, i32 (%struct.gx_device_s*, i64, i16*)* @gdev_mjc_map_color_rgb, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* null, i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* null, i32 (%struct.gx_device_s*, i32, i8*, i8**)* @gx_default_get_bits, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @mj_get_params, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @mj700v2c_put_params, i64 (%struct.gx_device_s*, i16*)* null, %struct.gx_xfont_procs_s* (%struct.gx_device_s*)* null, %struct.gx_device_s* (%struct.gx_device_s*)* null, i64 (%struct.gx_device_s*, i16, i16, i16, i16)* null, %struct.gx_device_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)* null, i32 (%struct.gx_device_s*, i32, i32*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* null, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)* null, i32 (%struct.gx_device_s*, i64, i16*)* null, i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)* null, i32 (%struct.gx_device_s*, %struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_transparency_group_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gx_transparency_mask_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32)* null, i64 (%struct.gx_device_s*, i16*)* null, i32 (%struct.gx_device_s*, i64, i16*)* null, i32 (%struct.gx_device_s*, i64, %struct.gs_pattern1_instance_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* null, %struct.gs_devn_params_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i8*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)* null, void (%struct.gx_device_s*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_process_page_options_s*)* null }, align 8
@.str.4 = private unnamed_addr constant [8 x i8] c"mj8000c\00", align 1
@gs_mj8000c_device = global { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [11240 x i8], { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* }, [4096 x i8], i32, i32, i32, i32, i32, i32, %struct._IO_FILE*, i64, i8*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s*, i32)*, %struct.gx_page_queue_s*, i32, %struct.gx_device_printer_s*, i32, i32, %struct.bg_print_s, i32, %struct.gx_saved_pages_list_s*, %struct.gx_device_procs_s, %struct.gx_device_procs_s, i32, i32, i32, i32, i32, i32, i32, i32, i32 } { i32 18512, %struct.gx_device_procs_s* @mj8000c_procs, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), %struct.gs_memory_s* null, %struct.gs_memory_struct_type_s* @st_device_printer, i32 0, void (%struct.gx_device_s*)* null, %struct.rc_header_s zeroinitializer, i32 0, i32 0, i32 0, %struct.gx_device_color_info_s { i32 4, i32 4, i32 0, i16 32, i8 3, i32 255, i32 255, i32 5, i32 5, %struct.gx_device_anti_alias_info_s { i32 1, i32 1 }, i32 -1, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [64 x i64] zeroinitializer, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 -1, i64 0, i32 0 }, %struct.gx_device_cached_colors_s { i64 -1, i64 -1 }, i32 2975, i32 4210, i32 0, i32 0, i32 0, i32 0, [2 x float] [float 5.950000e+02, float 8.420000e+02], [4 x float] zeroinitializer, i32 0, [2 x float] [float 3.600000e+02, float 3.600000e+02], [2 x float] [float 3.600000e+02, float 3.600000e+02], [2 x float] [float 0xC0453D70A0000000, float 0xC05E1E5600000000], [4 x float] [float 0x4020FDF3C0000000, float 0x4042B851E0000000, float 0x4020FDF3C0000000, float 0x40381844E0000000], i64 0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, %struct.gx_stroked_gradient_recognizer_s zeroinitializer, i32 0, i32 0, %struct.gdev_space_params_s { i64 10000000, i64 4000000, %struct.gx_band_params_s zeroinitializer, i32 0, i32 0 }, %struct.cmm_dev_profile_s* null, i32 0, %struct.gx_page_device_procs_s { i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_install, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_begin_page, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* @gx_default_end_page }, %struct.gx_device_procs_s zeroinitializer, [11240 x i8] zeroinitializer, { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* } { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)* @mj8000c_print_page, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_print_page_copies, %struct.gx_device_buf_procs_s { i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, %struct.gx_render_plane_s*, %struct.gs_memory_s*, %struct.gx_colors_usage_s*)* @gx_default_create_buf_device, i32 (%struct.gx_device_buf_space_s*, %struct.gx_device_s*, %struct.gx_render_plane_s*, i32, i32)* @gx_default_size_buf_device, i32 (%struct.gx_device_s*, i8*, i32, i8**, i32, i32, i32)* @gx_default_setup_buf_device, void (%struct.gx_device_s*)* @gx_default_destroy_buf_device }, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)* @gx_default_get_space_params, i32 (%struct.gdev_prn_start_render_params_s*)* @gx_default_start_render_thread, i32 (%struct.gx_device_printer_s*)* @gx_default_open_render_device, i32 (%struct.gx_device_printer_s*)* @gx_default_close_render_device, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_buffer_page }, [4096 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 -1, i32 0, %struct._IO_FILE* null, i64 0, i8* null, %struct.gs_memory_s* null, %struct.gs_memory_s* null, i32 (%struct.gx_device_s*, i32)* null, %struct.gx_page_queue_s* null, i32 0, %struct.gx_device_printer_s* null, i32 0, i32 0, %struct.bg_print_s zeroinitializer, i32 0, %struct.gx_saved_pages_list_s* null, %struct.gx_device_procs_s zeroinitializer, %struct.gx_device_procs_s zeroinitializer, i32 4, i32 1024, i32 1024, i32 1024, i32 1024, i32 1024, i32 0, i32 1, i32 1 }, align 8
@mj_open.mj_margin = internal constant [4 x float] [float 0x3FBE353F80000000, float 0x3FE0A3D700000000, float 0x3FBE353F80000000, float 0x3FD56AE7E0000000], align 16
@mj_open.mj6000c_a2 = internal constant [4 x float] [float 0x3FEE560420000000, float 0x3FE0A3D700000000, float 0x3FFF810620000000, float 0x3FD56AE7E0000000], align 16
@mj_open.mj8000c_a2 = internal constant [4 x float] [float 0x3FC8D4FE00000000, float 0x3FE0A3D700000000, float 0x3FC8D4FE00000000, float 0x3FD56AE7E0000000], align 16
@esp_dat_c = internal global [1024 x i16] [i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 74, i16 80, i16 86, i16 91, i16 97, i16 103, i16 108, i16 114, i16 120, i16 125, i16 131, i16 137, i16 143, i16 149, i16 155, i16 160, i16 166, i16 172, i16 178, i16 184, i16 190, i16 196, i16 202, i16 208, i16 214, i16 220, i16 226, i16 232, i16 238, i16 245, i16 251, i16 257, i16 263, i16 269, i16 275, i16 282, i16 288, i16 294, i16 301, i16 307, i16 313, i16 319, i16 326, i16 332, i16 339, i16 345, i16 351, i16 358, i16 364, i16 371, i16 377, i16 384, i16 390, i16 397, i16 403, i16 410, i16 417, i16 423, i16 430, i16 437, i16 443, i16 450, i16 457, i16 463, i16 470, i16 477, i16 483, i16 490, i16 497, i16 504, i16 511, i16 517, i16 524, i16 531, i16 538, i16 545, i16 552, i16 559, i16 566, i16 573, i16 579, i16 586, i16 593, i16 600, i16 607, i16 614, i16 621, i16 628, i16 636, i16 643, i16 650, i16 657, i16 664, i16 671, i16 678, i16 685, i16 692, i16 700, i16 707, i16 714, i16 721, i16 728, i16 736, i16 743, i16 750, i16 757, i16 765, i16 772, i16 779, i16 786, i16 794, i16 801, i16 808, i16 816, i16 823, i16 830, i16 838, i16 845, i16 853, i16 860, i16 867, i16 875, i16 882, i16 890, i16 897, i16 905, i16 912, i16 920, i16 927, i16 935, i16 942, i16 950, i16 957, i16 965, i16 972, i16 980, i16 987, i16 995, i16 1002, i16 1010, i16 1017, i16 1025, i16 1033, i16 1040, i16 1048, i16 1055, i16 1063, i16 1071, i16 1078, i16 1086, i16 1093, i16 1101, i16 1109, i16 1116, i16 1124, i16 1132, i16 1139, i16 1147, i16 1155, i16 1162, i16 1170, i16 1178, i16 1185, i16 1193, i16 1201, i16 1209, i16 1216, i16 1224, i16 1232, i16 1239, i16 1247, i16 1255, i16 1263, i16 1270, i16 1278, i16 1286, i16 1294, i16 1301, i16 1309, i16 1317, i16 1325, i16 1332, i16 1340, i16 1348, i16 1356, i16 1363, i16 1371, i16 1379, i16 1387, i16 1394, i16 1402, i16 1410, i16 1418, i16 1426, i16 1433, i16 1441, i16 1449, i16 1457, i16 1465, i16 1472, i16 1480, i16 1488, i16 1496, i16 1503, i16 1511, i16 1519, i16 1527, i16 1535, i16 1542, i16 1550, i16 1558, i16 1566, i16 1574, i16 1581, i16 1589, i16 1597, i16 1605, i16 1613, i16 1620, i16 1628, i16 1636, i16 1644, i16 1652, i16 1659, i16 1667, i16 1675, i16 1683, i16 1691, i16 1698, i16 1706, i16 1714, i16 1722, i16 1729, i16 1737, i16 1745, i16 1753, i16 1761, i16 1768, i16 1776, i16 1784, i16 1792, i16 1799, i16 1807, i16 1815, i16 1823, i16 1831, i16 1838, i16 1846, i16 1854, i16 1862, i16 1869, i16 1877, i16 1885, i16 1893, i16 1900, i16 1908, i16 1916, i16 1923, i16 1931, i16 1939, i16 1947, i16 1954, i16 1962, i16 1970, i16 1978, i16 1985, i16 1993, i16 2001, i16 2008, i16 2016, i16 2024, i16 2032, i16 2039, i16 2047, i16 2055, i16 2062, i16 2070, i16 2078, i16 2085, i16 2093, i16 2101, i16 2108, i16 2116, i16 2124, i16 2131, i16 2139, i16 2147, i16 2154, i16 2162, i16 2170, i16 2177, i16 2185, i16 2193, i16 2200, i16 2208, i16 2215, i16 2223, i16 2231, i16 2238, i16 2246, i16 2254, i16 2261, i16 2269, i16 2276, i16 2284, i16 2292, i16 2299, i16 2307, i16 2314, i16 2322, i16 2330, i16 2337, i16 2345, i16 2352, i16 2360, i16 2367, i16 2375, i16 2383, i16 2390, i16 2398, i16 2405, i16 2413, i16 2420, i16 2428, i16 2435, i16 2443, i16 2451, i16 2458, i16 2466, i16 2473, i16 2481, i16 2488, i16 2496, i16 2503, i16 2511, i16 2518, i16 2526, i16 2533, i16 2541, i16 2548, i16 2556, i16 2563, i16 2571, i16 2578, i16 2586, i16 2593, i16 2601, i16 2608, i16 2616, i16 2623, i16 2631, i16 2638, i16 2646, i16 2653, i16 2661, i16 2668, i16 2676, i16 2683, i16 2691, i16 2698, i16 2706, i16 2713, i16 2721, i16 2728, i16 2736, i16 2743, i16 2750, i16 2758, i16 2765, i16 2773, i16 2780, i16 2788, i16 2795, i16 2803, i16 2810, i16 2818, i16 2825, i16 2833, i16 2840, i16 2847, i16 2855, i16 2862, i16 2870, i16 2877, i16 2885, i16 2892, i16 2900, i16 2907, i16 2915, i16 2922, i16 2929, i16 2937, i16 2944, i16 2952, i16 2959, i16 2967, i16 2974, i16 2982, i16 2989, i16 2996, i16 3004, i16 3011, i16 3019, i16 3026, i16 3034, i16 3041, i16 3049, i16 3056, i16 3064, i16 3071, i16 3079, i16 3086, i16 3093, i16 3101, i16 3108, i16 3116, i16 3123, i16 3131, i16 3138, i16 3146, i16 3153, i16 3161, i16 3168, i16 3176, i16 3183, i16 3191, i16 3198, i16 3206, i16 3213, i16 3221, i16 3228, i16 3236, i16 3243, i16 3251, i16 3258, i16 3266, i16 3273, i16 3281, i16 3288, i16 3296, i16 3304, i16 3311, i16 3319, i16 3326, i16 3334, i16 3341, i16 3349, i16 3356, i16 3364, i16 3372, i16 3379, i16 3387, i16 3394, i16 3402, i16 3410, i16 3417, i16 3425, i16 3432, i16 3440, i16 3448, i16 3455, i16 3463, i16 3470, i16 3478, i16 3486, i16 3493, i16 3501, i16 3509, i16 3516, i16 3524, i16 3532, i16 3539, i16 3547, i16 3555, i16 3563, i16 3570, i16 3578, i16 3586, i16 3594, i16 3601, i16 3609, i16 3617, i16 3625, i16 3632, i16 3640, i16 3648, i16 3656, i16 3663, i16 3671, i16 3679, i16 3687, i16 3695, i16 3703, i16 3710, i16 3718, i16 3726, i16 3734, i16 3742, i16 3750, i16 3758, i16 3766, i16 3774, i16 3782, i16 3789, i16 3797, i16 3805, i16 3813, i16 3821, i16 3829, i16 3837, i16 3845, i16 3853, i16 3861, i16 3869, i16 3877, i16 3886, i16 3894, i16 3902, i16 3910, i16 3918, i16 3926, i16 3934, i16 3942, i16 3950, i16 3959, i16 3967, i16 3975, i16 3983, i16 3991, i16 4000, i16 4008, i16 4016, i16 4024, i16 4033, i16 4041, i16 4049, i16 4057, i16 4066, i16 4074, i16 4082, i16 4091, i16 4099, i16 4108, i16 4116, i16 4124, i16 4133, i16 4141, i16 4150, i16 4158, i16 4167, i16 4175, i16 4184, i16 4192, i16 4201, i16 4209, i16 4218, i16 4227, i16 4235, i16 4244, i16 4252, i16 4261, i16 4270, i16 4278, i16 4287, i16 4296, i16 4305, i16 4313, i16 4322, i16 4331, i16 4340, i16 4349, i16 4357, i16 4366, i16 4375, i16 4384, i16 4393, i16 4402, i16 4411, i16 4420, i16 4429, i16 4438, i16 4447, i16 4456, i16 4465, i16 4474, i16 4483, i16 4492, i16 4501, i16 4511, i16 4520, i16 4529, i16 4538, i16 4547, i16 4557, i16 4566, i16 4575, i16 4585, i16 4594, i16 4603, i16 4613, i16 4622, i16 4632, i16 4641, i16 4651, i16 4660, i16 4670, i16 4679, i16 4689, i16 4698, i16 4708, i16 4718, i16 4727, i16 4737, i16 4747, i16 4756, i16 4766, i16 4776, i16 4786, i16 4796, i16 4805, i16 4815, i16 4825, i16 4835, i16 4845, i16 4855, i16 4865, i16 4875, i16 4885, i16 4895, i16 4906, i16 4916, i16 4926, i16 4936, i16 4946, i16 4957, i16 4967, i16 4977, i16 4988, i16 4998, i16 5008, i16 5019, i16 5029, i16 5040, i16 5050, i16 5061, i16 5072, i16 5082, i16 5093, i16 5104, i16 5114, i16 5125, i16 5136, i16 5147, i16 5158, i16 5168, i16 5179, i16 5190, i16 5201, i16 5212, i16 5223, i16 5234, i16 5246, i16 5257, i16 5268, i16 5279, i16 5290, i16 5302, i16 5313, i16 5324, i16 5336, i16 5347, i16 5359, i16 5370, i16 5382, i16 5393, i16 5405, i16 5417, i16 5428, i16 5440, i16 5452, i16 5464, i16 5476, i16 5488, i16 5500, i16 5512, i16 5524, i16 5536, i16 5548, i16 5560, i16 5572, i16 5584, i16 5597, i16 5609, i16 5621, i16 5634, i16 5646, i16 5659, i16 5671, i16 5684, i16 5697, i16 5709, i16 5722, i16 5735, i16 5748, i16 5761, i16 5773, i16 5786, i16 5799, i16 5813, i16 5826, i16 5839, i16 5852, i16 5865, i16 5879, i16 5892, i16 5905, i16 5919, i16 5932, i16 5946, i16 5960, i16 5973, i16 5987, i16 6001, i16 6015, i16 6029, i16 6043, i16 6057, i16 6071, i16 6085, i16 6099, i16 6113, i16 6128, i16 6142, i16 6156, i16 6171, i16 6185, i16 6200, i16 6215, i16 6229, i16 6244, i16 6259, i16 6274, i16 6289, i16 6304, i16 6319, i16 6334, i16 6349, i16 6365, i16 6380, i16 6396, i16 6411, i16 6427, i16 6442, i16 6458, i16 6474, i16 6490, i16 6506, i16 6522, i16 6538, i16 6554, i16 6570, i16 6586, i16 6603, i16 6619, i16 6636, i16 6652, i16 6669, i16 6686, i16 6703, i16 6720, i16 6737, i16 6754, i16 6771, i16 6788, i16 6805, i16 6823, i16 6840, i16 6858, i16 6875, i16 6893, i16 6911, i16 6929, i16 6947, i16 6965, i16 6983, i16 7002, i16 7020, i16 7038, i16 7057, i16 7076, i16 7094, i16 7113, i16 7132, i16 7151, i16 7170, i16 7190, i16 7209, i16 7228, i16 7248, i16 7268, i16 7287, i16 7307, i16 7327, i16 7347, i16 7367, i16 7388, i16 7408, i16 7429, i16 7449, i16 7470, i16 7491, i16 7512, i16 7533, i16 7554, i16 7575, i16 7597, i16 7618, i16 7640, i16 7662, i16 7684, i16 7706, i16 7728, i16 7750, i16 7773, i16 7795, i16 7818, i16 7841, i16 7864, i16 7887, i16 7910, i16 7934, i16 7957, i16 7981, i16 8005, i16 8029, i16 8053, i16 8077, i16 8101, i16 8126, i16 8151, i16 8176, i16 8201, i16 8226, i16 8251, i16 8277, i16 8302, i16 8328, i16 8354, i16 8380, i16 8407, i16 8433, i16 8460, i16 8487, i16 8514, i16 8541, i16 8568, i16 8596, i16 8623, i16 8651, i16 8679, i16 8708, i16 8736, i16 8765, i16 8794, i16 8823, i16 8852, i16 8882, i16 8911, i16 8941, i16 8971, i16 9002, i16 9032, i16 9063, i16 9094, i16 9125, i16 9157, i16 9188, i16 9220, i16 9252, i16 9285, i16 9317, i16 9350, i16 9383, i16 9417, i16 9450, i16 9484, i16 9518, i16 9552, i16 9587, i16 9622, i16 9657, i16 9693, i16 9728, i16 9764, i16 9800, i16 9837, i16 9874, i16 9911, i16 9948, i16 9986, i16 10024, i16 10063, i16 10101, i16 10140, i16 10180, i16 10219, i16 10259, i16 10300, i16 10340, i16 10381, i16 10423, i16 10464, i16 10506, i16 10549, i16 10592, i16 10635, i16 10678, i16 10722, i16 10767, i16 10811, i16 10857, i16 10902, i16 10948, i16 10994, i16 11041, i16 11088, i16 11136, i16 11184, i16 11233, i16 11282, i16 11331, i16 11381, i16 11432, i16 11483, i16 11534, i16 11586, i16 11638, i16 11691, i16 11745, i16 11799, i16 11853, i16 11909, i16 11964, i16 12020, i16 12077, i16 12135, i16 12193, i16 12251, i16 12310, i16 12370, i16 12431, i16 12492, i16 12554, i16 12616, i16 12679, i16 12743, i16 12808, i16 12873, i16 12939, i16 13006, i16 13073, i16 13141, i16 13210, i16 13280, i16 13351, i16 13422, i16 13494, i16 13568, i16 13642, i16 13717, i16 13792, i16 13869, i16 13947, i16 14026, i16 14105, i16 14186, i16 14267, i16 14350, i16 14434, i16 14519, i16 14605, i16 14692, i16 14780, i16 14869, i16 14960, i16 15051, i16 15144, i16 15239, i16 15334, i16 15431, i16 15529, i16 15629, i16 15730, i16 15832, i16 15936, i16 16042, i16 16149, i16 16257, i16 16368], align 16
@esp_dat_m = internal global [1024 x i16] [i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 74, i16 78, i16 82, i16 87, i16 91, i16 95, i16 100, i16 104, i16 108, i16 113, i16 117, i16 122, i16 126, i16 131, i16 135, i16 140, i16 144, i16 149, i16 153, i16 158, i16 162, i16 167, i16 171, i16 176, i16 181, i16 185, i16 190, i16 194, i16 199, i16 204, i16 209, i16 213, i16 218, i16 223, i16 227, i16 232, i16 237, i16 242, i16 246, i16 251, i16 256, i16 261, i16 266, i16 271, i16 276, i16 280, i16 285, i16 290, i16 295, i16 300, i16 305, i16 310, i16 315, i16 320, i16 325, i16 330, i16 335, i16 340, i16 345, i16 350, i16 355, i16 360, i16 366, i16 371, i16 376, i16 381, i16 386, i16 391, i16 396, i16 402, i16 407, i16 412, i16 417, i16 422, i16 428, i16 433, i16 438, i16 444, i16 449, i16 454, i16 459, i16 465, i16 470, i16 476, i16 481, i16 486, i16 492, i16 497, i16 502, i16 508, i16 513, i16 519, i16 524, i16 530, i16 535, i16 541, i16 546, i16 552, i16 557, i16 563, i16 568, i16 574, i16 579, i16 585, i16 591, i16 596, i16 602, i16 607, i16 613, i16 619, i16 624, i16 630, i16 636, i16 641, i16 647, i16 653, i16 658, i16 664, i16 670, i16 676, i16 681, i16 687, i16 693, i16 699, i16 704, i16 710, i16 716, i16 722, i16 728, i16 734, i16 739, i16 745, i16 751, i16 757, i16 763, i16 769, i16 775, i16 781, i16 786, i16 792, i16 798, i16 804, i16 810, i16 816, i16 822, i16 828, i16 834, i16 840, i16 846, i16 852, i16 858, i16 864, i16 870, i16 876, i16 882, i16 888, i16 894, i16 900, i16 906, i16 913, i16 919, i16 925, i16 931, i16 937, i16 943, i16 949, i16 955, i16 961, i16 968, i16 974, i16 980, i16 986, i16 992, i16 998, i16 1005, i16 1011, i16 1017, i16 1023, i16 1029, i16 1036, i16 1042, i16 1048, i16 1054, i16 1061, i16 1067, i16 1073, i16 1079, i16 1086, i16 1092, i16 1098, i16 1104, i16 1111, i16 1117, i16 1123, i16 1130, i16 1136, i16 1142, i16 1149, i16 1155, i16 1161, i16 1168, i16 1174, i16 1180, i16 1187, i16 1193, i16 1199, i16 1206, i16 1212, i16 1218, i16 1225, i16 1231, i16 1238, i16 1244, i16 1250, i16 1257, i16 1263, i16 1270, i16 1276, i16 1282, i16 1289, i16 1295, i16 1302, i16 1308, i16 1315, i16 1321, i16 1327, i16 1334, i16 1340, i16 1347, i16 1353, i16 1360, i16 1366, i16 1373, i16 1379, i16 1386, i16 1392, i16 1399, i16 1405, i16 1412, i16 1418, i16 1425, i16 1431, i16 1438, i16 1444, i16 1451, i16 1457, i16 1464, i16 1470, i16 1477, i16 1483, i16 1490, i16 1496, i16 1503, i16 1510, i16 1516, i16 1523, i16 1529, i16 1536, i16 1542, i16 1549, i16 1555, i16 1562, i16 1569, i16 1575, i16 1582, i16 1588, i16 1595, i16 1601, i16 1608, i16 1615, i16 1621, i16 1628, i16 1634, i16 1641, i16 1648, i16 1654, i16 1661, i16 1667, i16 1674, i16 1681, i16 1687, i16 1694, i16 1700, i16 1707, i16 1714, i16 1720, i16 1727, i16 1734, i16 1740, i16 1747, i16 1754, i16 1760, i16 1767, i16 1773, i16 1780, i16 1787, i16 1793, i16 1800, i16 1807, i16 1813, i16 1820, i16 1827, i16 1833, i16 1840, i16 1847, i16 1853, i16 1860, i16 1867, i16 1873, i16 1880, i16 1887, i16 1893, i16 1900, i16 1907, i16 1913, i16 1920, i16 1927, i16 1933, i16 1940, i16 1947, i16 1954, i16 1960, i16 1967, i16 1974, i16 1980, i16 1987, i16 1994, i16 2000, i16 2007, i16 2014, i16 2021, i16 2027, i16 2034, i16 2041, i16 2047, i16 2054, i16 2061, i16 2068, i16 2074, i16 2081, i16 2088, i16 2095, i16 2101, i16 2108, i16 2115, i16 2121, i16 2128, i16 2135, i16 2142, i16 2148, i16 2155, i16 2162, i16 2169, i16 2176, i16 2182, i16 2189, i16 2196, i16 2203, i16 2209, i16 2216, i16 2223, i16 2230, i16 2236, i16 2243, i16 2250, i16 2257, i16 2264, i16 2270, i16 2277, i16 2284, i16 2291, i16 2298, i16 2304, i16 2311, i16 2318, i16 2325, i16 2332, i16 2338, i16 2345, i16 2352, i16 2359, i16 2366, i16 2373, i16 2379, i16 2386, i16 2393, i16 2400, i16 2407, i16 2414, i16 2421, i16 2427, i16 2434, i16 2441, i16 2448, i16 2455, i16 2462, i16 2469, i16 2475, i16 2482, i16 2489, i16 2496, i16 2503, i16 2510, i16 2517, i16 2524, i16 2531, i16 2538, i16 2544, i16 2551, i16 2558, i16 2565, i16 2572, i16 2579, i16 2586, i16 2593, i16 2600, i16 2607, i16 2614, i16 2621, i16 2628, i16 2635, i16 2642, i16 2649, i16 2656, i16 2663, i16 2670, i16 2677, i16 2684, i16 2691, i16 2698, i16 2705, i16 2712, i16 2719, i16 2726, i16 2733, i16 2740, i16 2747, i16 2754, i16 2761, i16 2768, i16 2775, i16 2782, i16 2789, i16 2796, i16 2804, i16 2811, i16 2818, i16 2825, i16 2832, i16 2839, i16 2846, i16 2853, i16 2861, i16 2868, i16 2875, i16 2882, i16 2889, i16 2896, i16 2904, i16 2911, i16 2918, i16 2925, i16 2932, i16 2940, i16 2947, i16 2954, i16 2961, i16 2968, i16 2976, i16 2983, i16 2990, i16 2998, i16 3005, i16 3012, i16 3019, i16 3027, i16 3034, i16 3041, i16 3049, i16 3056, i16 3063, i16 3071, i16 3078, i16 3085, i16 3093, i16 3100, i16 3108, i16 3115, i16 3122, i16 3130, i16 3137, i16 3145, i16 3152, i16 3160, i16 3167, i16 3175, i16 3182, i16 3190, i16 3197, i16 3205, i16 3212, i16 3220, i16 3227, i16 3235, i16 3242, i16 3250, i16 3258, i16 3265, i16 3273, i16 3280, i16 3288, i16 3296, i16 3303, i16 3311, i16 3319, i16 3326, i16 3334, i16 3342, i16 3350, i16 3357, i16 3365, i16 3373, i16 3381, i16 3388, i16 3396, i16 3404, i16 3412, i16 3420, i16 3427, i16 3435, i16 3443, i16 3451, i16 3459, i16 3467, i16 3475, i16 3483, i16 3491, i16 3499, i16 3507, i16 3515, i16 3523, i16 3531, i16 3539, i16 3547, i16 3555, i16 3563, i16 3571, i16 3579, i16 3587, i16 3595, i16 3604, i16 3612, i16 3620, i16 3628, i16 3636, i16 3645, i16 3653, i16 3661, i16 3669, i16 3678, i16 3686, i16 3694, i16 3703, i16 3711, i16 3719, i16 3728, i16 3736, i16 3745, i16 3753, i16 3762, i16 3770, i16 3778, i16 3787, i16 3796, i16 3804, i16 3813, i16 3821, i16 3830, i16 3839, i16 3847, i16 3856, i16 3865, i16 3873, i16 3882, i16 3891, i16 3899, i16 3908, i16 3917, i16 3926, i16 3935, i16 3944, i16 3953, i16 3961, i16 3970, i16 3979, i16 3988, i16 3997, i16 4006, i16 4015, i16 4024, i16 4034, i16 4043, i16 4052, i16 4061, i16 4070, i16 4079, i16 4089, i16 4098, i16 4107, i16 4116, i16 4126, i16 4135, i16 4144, i16 4154, i16 4163, i16 4173, i16 4182, i16 4192, i16 4201, i16 4211, i16 4220, i16 4230, i16 4239, i16 4249, i16 4259, i16 4268, i16 4278, i16 4288, i16 4298, i16 4307, i16 4317, i16 4327, i16 4337, i16 4347, i16 4357, i16 4367, i16 4377, i16 4387, i16 4397, i16 4407, i16 4417, i16 4427, i16 4438, i16 4448, i16 4458, i16 4468, i16 4479, i16 4489, i16 4499, i16 4510, i16 4520, i16 4531, i16 4541, i16 4552, i16 4562, i16 4573, i16 4584, i16 4594, i16 4605, i16 4616, i16 4627, i16 4637, i16 4648, i16 4659, i16 4670, i16 4681, i16 4692, i16 4703, i16 4714, i16 4725, i16 4736, i16 4747, i16 4759, i16 4770, i16 4781, i16 4793, i16 4804, i16 4815, i16 4827, i16 4838, i16 4850, i16 4861, i16 4873, i16 4885, i16 4896, i16 4908, i16 4920, i16 4932, i16 4944, i16 4955, i16 4967, i16 4979, i16 4991, i16 5004, i16 5016, i16 5028, i16 5040, i16 5052, i16 5065, i16 5077, i16 5089, i16 5102, i16 5114, i16 5127, i16 5140, i16 5152, i16 5165, i16 5178, i16 5190, i16 5203, i16 5216, i16 5229, i16 5242, i16 5255, i16 5268, i16 5282, i16 5295, i16 5308, i16 5321, i16 5335, i16 5348, i16 5362, i16 5375, i16 5389, i16 5402, i16 5416, i16 5430, i16 5444, i16 5458, i16 5472, i16 5486, i16 5500, i16 5514, i16 5528, i16 5542, i16 5557, i16 5571, i16 5585, i16 5600, i16 5615, i16 5629, i16 5644, i16 5659, i16 5673, i16 5688, i16 5703, i16 5718, i16 5733, i16 5749, i16 5764, i16 5779, i16 5795, i16 5810, i16 5826, i16 5841, i16 5857, i16 5873, i16 5888, i16 5904, i16 5920, i16 5936, i16 5953, i16 5969, i16 5985, i16 6001, i16 6018, i16 6034, i16 6051, i16 6068, i16 6085, i16 6101, i16 6118, i16 6135, i16 6152, i16 6170, i16 6187, i16 6204, i16 6222, i16 6239, i16 6257, i16 6275, i16 6293, i16 6311, i16 6329, i16 6347, i16 6365, i16 6383, i16 6402, i16 6420, i16 6439, i16 6457, i16 6476, i16 6495, i16 6514, i16 6533, i16 6552, i16 6572, i16 6591, i16 6611, i16 6630, i16 6650, i16 6670, i16 6690, i16 6710, i16 6730, i16 6751, i16 6771, i16 6792, i16 6812, i16 6833, i16 6854, i16 6875, i16 6896, i16 6918, i16 6939, i16 6961, i16 6982, i16 7004, i16 7026, i16 7048, i16 7070, i16 7093, i16 7115, i16 7138, i16 7160, i16 7183, i16 7206, i16 7230, i16 7253, i16 7276, i16 7300, i16 7324, i16 7348, i16 7372, i16 7396, i16 7420, i16 7445, i16 7470, i16 7495, i16 7520, i16 7545, i16 7570, i16 7596, i16 7621, i16 7647, i16 7673, i16 7700, i16 7726, i16 7753, i16 7779, i16 7806, i16 7833, i16 7861, i16 7888, i16 7916, i16 7944, i16 7972, i16 8000, i16 8029, i16 8057, i16 8086, i16 8116, i16 8145, i16 8174, i16 8204, i16 8234, i16 8264, i16 8295, i16 8325, i16 8356, i16 8387, i16 8419, i16 8450, i16 8482, i16 8514, i16 8547, i16 8579, i16 8612, i16 8645, i16 8678, i16 8712, i16 8746, i16 8780, i16 8814, i16 8849, i16 8884, i16 8919, i16 8955, i16 8991, i16 9027, i16 9063, i16 9100, i16 9137, i16 9174, i16 9212, i16 9250, i16 9288, i16 9327, i16 9366, i16 9405, i16 9445, i16 9485, i16 9525, i16 9566, i16 9607, i16 9648, i16 9690, i16 9732, i16 9775, i16 9818, i16 9861, i16 9905, i16 9949, i16 9993, i16 10038, i16 10084, i16 10129, i16 10176, i16 10222, i16 10270, i16 10317, i16 10365, i16 10414, i16 10463, i16 10512, i16 10562, i16 10612, i16 10663, i16 10715, i16 10767, i16 10819, i16 10873, i16 10926, i16 10980, i16 11035, i16 11090, i16 11146, i16 11203, i16 11260, i16 11318, i16 11376, i16 11435, i16 11495, i16 11555, i16 11616, i16 11677, i16 11740, i16 11803, i16 11866, i16 11931, i16 11996, i16 12062, i16 12129, i16 12196, i16 12265, i16 12334, i16 12404, i16 12475, i16 12546, i16 12619, i16 12692, i16 12767, i16 12842, i16 12918, i16 12995, i16 13073, i16 13153, i16 13233, i16 13314, i16 13396, i16 13480, i16 13564, i16 13650, i16 13737, i16 13825, i16 13914, i16 14004, i16 14096, i16 14189, i16 14283, i16 14379, i16 14476, i16 14574, i16 14674, i16 14775, i16 14878, i16 14982, i16 15088, i16 15195, i16 15305, i16 15415, i16 15528, i16 15642, i16 15758, i16 15876, i16 15996, i16 16118, i16 16242, i16 16368], align 16
@esp_dat_y = internal global [1024 x i16] [i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 75, i16 79, i16 84, i16 88, i16 93, i16 97, i16 102, i16 106, i16 111, i16 115, i16 120, i16 125, i16 129, i16 134, i16 139, i16 143, i16 148, i16 153, i16 157, i16 162, i16 167, i16 172, i16 177, i16 181, i16 186, i16 191, i16 196, i16 201, i16 206, i16 211, i16 216, i16 221, i16 226, i16 231, i16 236, i16 241, i16 246, i16 251, i16 256, i16 261, i16 266, i16 271, i16 277, i16 282, i16 287, i16 292, i16 298, i16 303, i16 308, i16 313, i16 319, i16 324, i16 329, i16 335, i16 340, i16 346, i16 351, i16 356, i16 362, i16 367, i16 373, i16 378, i16 384, i16 389, i16 395, i16 401, i16 406, i16 412, i16 417, i16 423, i16 429, i16 435, i16 440, i16 446, i16 452, i16 457, i16 463, i16 469, i16 475, i16 481, i16 487, i16 492, i16 498, i16 504, i16 510, i16 516, i16 522, i16 528, i16 534, i16 540, i16 546, i16 552, i16 558, i16 564, i16 570, i16 576, i16 582, i16 588, i16 595, i16 601, i16 607, i16 613, i16 619, i16 626, i16 632, i16 638, i16 644, i16 651, i16 657, i16 663, i16 670, i16 676, i16 682, i16 689, i16 695, i16 702, i16 708, i16 715, i16 721, i16 728, i16 734, i16 741, i16 747, i16 754, i16 760, i16 767, i16 773, i16 780, i16 787, i16 793, i16 800, i16 807, i16 813, i16 820, i16 827, i16 833, i16 840, i16 847, i16 854, i16 861, i16 867, i16 874, i16 881, i16 888, i16 895, i16 902, i16 908, i16 915, i16 922, i16 929, i16 936, i16 943, i16 950, i16 957, i16 964, i16 971, i16 978, i16 985, i16 992, i16 999, i16 1006, i16 1013, i16 1021, i16 1028, i16 1035, i16 1042, i16 1049, i16 1056, i16 1063, i16 1071, i16 1078, i16 1085, i16 1092, i16 1100, i16 1107, i16 1114, i16 1121, i16 1129, i16 1136, i16 1143, i16 1151, i16 1158, i16 1165, i16 1173, i16 1180, i16 1187, i16 1195, i16 1202, i16 1210, i16 1217, i16 1225, i16 1232, i16 1239, i16 1247, i16 1254, i16 1262, i16 1269, i16 1277, i16 1284, i16 1292, i16 1300, i16 1307, i16 1315, i16 1322, i16 1330, i16 1337, i16 1345, i16 1353, i16 1360, i16 1368, i16 1376, i16 1383, i16 1391, i16 1399, i16 1406, i16 1414, i16 1422, i16 1429, i16 1437, i16 1445, i16 1453, i16 1460, i16 1468, i16 1476, i16 1484, i16 1491, i16 1499, i16 1507, i16 1515, i16 1523, i16 1531, i16 1538, i16 1546, i16 1554, i16 1562, i16 1570, i16 1578, i16 1586, i16 1593, i16 1601, i16 1609, i16 1617, i16 1625, i16 1633, i16 1641, i16 1649, i16 1657, i16 1665, i16 1673, i16 1681, i16 1689, i16 1697, i16 1705, i16 1713, i16 1721, i16 1729, i16 1737, i16 1745, i16 1753, i16 1761, i16 1769, i16 1777, i16 1785, i16 1793, i16 1801, i16 1809, i16 1817, i16 1826, i16 1834, i16 1842, i16 1850, i16 1858, i16 1866, i16 1874, i16 1882, i16 1890, i16 1899, i16 1907, i16 1915, i16 1923, i16 1931, i16 1939, i16 1948, i16 1956, i16 1964, i16 1972, i16 1980, i16 1989, i16 1997, i16 2005, i16 2013, i16 2021, i16 2030, i16 2038, i16 2046, i16 2054, i16 2063, i16 2071, i16 2079, i16 2087, i16 2096, i16 2104, i16 2112, i16 2120, i16 2129, i16 2137, i16 2145, i16 2154, i16 2162, i16 2170, i16 2179, i16 2187, i16 2195, i16 2203, i16 2212, i16 2220, i16 2228, i16 2237, i16 2245, i16 2253, i16 2262, i16 2270, i16 2278, i16 2287, i16 2295, i16 2304, i16 2312, i16 2320, i16 2329, i16 2337, i16 2345, i16 2354, i16 2362, i16 2371, i16 2379, i16 2387, i16 2396, i16 2404, i16 2413, i16 2421, i16 2429, i16 2438, i16 2446, i16 2455, i16 2463, i16 2472, i16 2480, i16 2488, i16 2497, i16 2505, i16 2514, i16 2522, i16 2531, i16 2539, i16 2548, i16 2556, i16 2564, i16 2573, i16 2581, i16 2590, i16 2598, i16 2607, i16 2615, i16 2624, i16 2632, i16 2641, i16 2649, i16 2658, i16 2666, i16 2675, i16 2683, i16 2692, i16 2700, i16 2709, i16 2717, i16 2726, i16 2734, i16 2743, i16 2751, i16 2760, i16 2768, i16 2777, i16 2786, i16 2794, i16 2803, i16 2811, i16 2820, i16 2828, i16 2837, i16 2845, i16 2854, i16 2863, i16 2871, i16 2880, i16 2888, i16 2897, i16 2906, i16 2914, i16 2923, i16 2931, i16 2940, i16 2948, i16 2957, i16 2966, i16 2974, i16 2983, i16 2992, i16 3000, i16 3009, i16 3017, i16 3026, i16 3035, i16 3043, i16 3052, i16 3061, i16 3069, i16 3078, i16 3087, i16 3095, i16 3104, i16 3113, i16 3121, i16 3130, i16 3139, i16 3147, i16 3156, i16 3165, i16 3173, i16 3182, i16 3191, i16 3200, i16 3208, i16 3217, i16 3226, i16 3234, i16 3243, i16 3252, i16 3261, i16 3269, i16 3278, i16 3287, i16 3296, i16 3305, i16 3313, i16 3322, i16 3331, i16 3340, i16 3348, i16 3357, i16 3366, i16 3375, i16 3384, i16 3392, i16 3401, i16 3410, i16 3419, i16 3428, i16 3437, i16 3445, i16 3454, i16 3463, i16 3472, i16 3481, i16 3490, i16 3499, i16 3508, i16 3516, i16 3525, i16 3534, i16 3543, i16 3552, i16 3561, i16 3570, i16 3579, i16 3588, i16 3597, i16 3606, i16 3615, i16 3624, i16 3633, i16 3642, i16 3651, i16 3660, i16 3669, i16 3678, i16 3687, i16 3696, i16 3705, i16 3714, i16 3723, i16 3732, i16 3741, i16 3750, i16 3759, i16 3768, i16 3777, i16 3786, i16 3796, i16 3805, i16 3814, i16 3823, i16 3832, i16 3841, i16 3850, i16 3860, i16 3869, i16 3878, i16 3887, i16 3896, i16 3906, i16 3915, i16 3924, i16 3933, i16 3943, i16 3952, i16 3961, i16 3970, i16 3980, i16 3989, i16 3998, i16 4008, i16 4017, i16 4026, i16 4036, i16 4045, i16 4054, i16 4064, i16 4073, i16 4083, i16 4092, i16 4102, i16 4111, i16 4120, i16 4130, i16 4139, i16 4149, i16 4158, i16 4168, i16 4177, i16 4187, i16 4197, i16 4206, i16 4216, i16 4225, i16 4235, i16 4244, i16 4254, i16 4264, i16 4273, i16 4283, i16 4293, i16 4302, i16 4312, i16 4322, i16 4332, i16 4341, i16 4351, i16 4361, i16 4371, i16 4380, i16 4390, i16 4400, i16 4410, i16 4420, i16 4430, i16 4440, i16 4449, i16 4459, i16 4469, i16 4479, i16 4489, i16 4499, i16 4509, i16 4519, i16 4529, i16 4539, i16 4549, i16 4559, i16 4570, i16 4580, i16 4590, i16 4600, i16 4610, i16 4620, i16 4631, i16 4641, i16 4651, i16 4661, i16 4672, i16 4682, i16 4692, i16 4702, i16 4713, i16 4723, i16 4734, i16 4744, i16 4754, i16 4765, i16 4775, i16 4786, i16 4796, i16 4807, i16 4817, i16 4828, i16 4839, i16 4849, i16 4860, i16 4870, i16 4881, i16 4892, i16 4903, i16 4913, i16 4924, i16 4935, i16 4946, i16 4956, i16 4967, i16 4978, i16 4989, i16 5000, i16 5011, i16 5022, i16 5033, i16 5044, i16 5055, i16 5066, i16 5077, i16 5088, i16 5099, i16 5110, i16 5122, i16 5133, i16 5144, i16 5155, i16 5167, i16 5178, i16 5189, i16 5201, i16 5212, i16 5224, i16 5235, i16 5246, i16 5258, i16 5270, i16 5281, i16 5293, i16 5304, i16 5316, i16 5328, i16 5339, i16 5351, i16 5363, i16 5375, i16 5386, i16 5398, i16 5410, i16 5422, i16 5434, i16 5446, i16 5458, i16 5470, i16 5482, i16 5494, i16 5506, i16 5519, i16 5531, i16 5543, i16 5555, i16 5568, i16 5580, i16 5592, i16 5605, i16 5617, i16 5630, i16 5642, i16 5655, i16 5667, i16 5680, i16 5693, i16 5705, i16 5718, i16 5731, i16 5744, i16 5757, i16 5770, i16 5782, i16 5795, i16 5808, i16 5822, i16 5835, i16 5848, i16 5861, i16 5874, i16 5887, i16 5901, i16 5914, i16 5927, i16 5941, i16 5954, i16 5968, i16 5981, i16 5995, i16 6009, i16 6022, i16 6036, i16 6050, i16 6064, i16 6077, i16 6091, i16 6105, i16 6119, i16 6133, i16 6147, i16 6162, i16 6176, i16 6190, i16 6204, i16 6219, i16 6233, i16 6247, i16 6262, i16 6276, i16 6291, i16 6306, i16 6320, i16 6335, i16 6350, i16 6365, i16 6380, i16 6395, i16 6410, i16 6425, i16 6440, i16 6455, i16 6470, i16 6486, i16 6501, i16 6516, i16 6532, i16 6547, i16 6563, i16 6579, i16 6594, i16 6610, i16 6626, i16 6642, i16 6658, i16 6674, i16 6690, i16 6706, i16 6722, i16 6739, i16 6755, i16 6771, i16 6788, i16 6804, i16 6821, i16 6838, i16 6854, i16 6871, i16 6888, i16 6905, i16 6922, i16 6939, i16 6956, i16 6974, i16 6991, i16 7008, i16 7026, i16 7043, i16 7061, i16 7079, i16 7096, i16 7114, i16 7132, i16 7150, i16 7168, i16 7187, i16 7205, i16 7223, i16 7242, i16 7260, i16 7279, i16 7297, i16 7316, i16 7335, i16 7354, i16 7373, i16 7392, i16 7411, i16 7430, i16 7450, i16 7469, i16 7489, i16 7509, i16 7528, i16 7548, i16 7568, i16 7588, i16 7608, i16 7629, i16 7649, i16 7669, i16 7690, i16 7710, i16 7731, i16 7752, i16 7773, i16 7794, i16 7815, i16 7837, i16 7858, i16 7879, i16 7901, i16 7923, i16 7945, i16 7967, i16 7989, i16 8011, i16 8033, i16 8056, i16 8078, i16 8101, i16 8124, i16 8146, i16 8169, i16 8193, i16 8216, i16 8239, i16 8263, i16 8287, i16 8310, i16 8334, i16 8358, i16 8383, i16 8407, i16 8431, i16 8456, i16 8481, i16 8506, i16 8531, i16 8556, i16 8581, i16 8607, i16 8633, i16 8658, i16 8684, i16 8710, i16 8737, i16 8763, i16 8790, i16 8817, i16 8843, i16 8871, i16 8898, i16 8925, i16 8953, i16 8981, i16 9008, i16 9037, i16 9065, i16 9093, i16 9122, i16 9151, i16 9180, i16 9209, i16 9238, i16 9268, i16 9298, i16 9328, i16 9358, i16 9388, i16 9419, i16 9450, i16 9481, i16 9512, i16 9543, i16 9575, i16 9607, i16 9639, i16 9671, i16 9704, i16 9737, i16 9770, i16 9803, i16 9836, i16 9870, i16 9904, i16 9938, i16 9972, i16 10007, i16 10042, i16 10077, i16 10113, i16 10148, i16 10184, i16 10221, i16 10257, i16 10294, i16 10331, i16 10368, i16 10406, i16 10444, i16 10482, i16 10521, i16 10560, i16 10599, i16 10638, i16 10678, i16 10718, i16 10758, i16 10799, i16 10840, i16 10881, i16 10923, i16 10965, i16 11008, i16 11050, i16 11093, i16 11137, i16 11181, i16 11225, i16 11270, i16 11315, i16 11360, i16 11406, i16 11452, i16 11498, i16 11545, i16 11593, i16 11640, i16 11689, i16 11737, i16 11786, i16 11836, i16 11886, i16 11936, i16 11987, i16 12039, i16 12091, i16 12143, i16 12196, i16 12249, i16 12303, i16 12358, i16 12412, i16 12468, i16 12524, i16 12580, i16 12638, i16 12695, i16 12753, i16 12812, i16 12872, i16 12932, i16 12992, i16 13054, i16 13116, i16 13178, i16 13241, i16 13305, i16 13370, i16 13435, i16 13501, i16 13568, i16 13635, i16 13703, i16 13772, i16 13842, i16 13912, i16 13983, i16 14055, i16 14128, i16 14202, i16 14276, i16 14352, i16 14428, i16 14505, i16 14583, i16 14662, i16 14742, i16 14823, i16 14905, i16 14988, i16 15072, i16 15157, i16 15243, i16 15330, i16 15419, i16 15508, i16 15599, i16 15690, i16 15783, i16 15877, i16 15973, i16 16070, i16 16168, i16 16267, i16 16368], align 16
@v_tbl = internal global [256 x i16] [i16 0, i16 5, i16 11, i16 16, i16 22, i16 27, i16 32, i16 38, i16 43, i16 48, i16 54, i16 59, i16 64, i16 70, i16 75, i16 80, i16 86, i16 91, i16 96, i16 102, i16 107, i16 112, i16 117, i16 123, i16 128, i16 133, i16 138, i16 143, i16 149, i16 154, i16 159, i16 164, i16 169, i16 175, i16 180, i16 185, i16 190, i16 195, i16 200, i16 205, i16 210, i16 216, i16 221, i16 226, i16 231, i16 236, i16 241, i16 246, i16 251, i16 256, i16 261, i16 266, i16 271, i16 276, i16 281, i16 286, i16 291, i16 296, i16 301, i16 306, i16 311, i16 316, i16 321, i16 326, i16 330, i16 335, i16 340, i16 345, i16 350, i16 355, i16 360, i16 365, i16 369, i16 374, i16 379, i16 384, i16 389, i16 393, i16 398, i16 403, i16 408, i16 412, i16 417, i16 422, i16 427, i16 431, i16 436, i16 441, i16 445, i16 450, i16 455, i16 459, i16 464, i16 469, i16 473, i16 478, i16 482, i16 487, i16 491, i16 496, i16 501, i16 505, i16 510, i16 514, i16 519, i16 523, i16 528, i16 532, i16 537, i16 541, i16 546, i16 550, i16 554, i16 559, i16 563, i16 568, i16 572, i16 576, i16 581, i16 585, i16 589, i16 594, i16 598, i16 602, i16 607, i16 611, i16 615, i16 620, i16 624, i16 628, i16 632, i16 636, i16 641, i16 645, i16 649, i16 653, i16 657, i16 662, i16 666, i16 670, i16 674, i16 678, i16 682, i16 686, i16 690, i16 694, i16 698, i16 702, i16 706, i16 710, i16 714, i16 718, i16 722, i16 726, i16 730, i16 734, i16 738, i16 742, i16 746, i16 749, i16 753, i16 757, i16 761, i16 765, i16 768, i16 772, i16 776, i16 780, i16 783, i16 787, i16 791, i16 795, i16 798, i16 802, i16 805, i16 809, i16 813, i16 816, i16 820, i16 823, i16 827, i16 830, i16 834, i16 837, i16 841, i16 844, i16 848, i16 851, i16 855, i16 858, i16 861, i16 865, i16 868, i16 871, i16 875, i16 878, i16 881, i16 884, i16 888, i16 891, i16 894, i16 897, i16 900, i16 903, i16 907, i16 910, i16 913, i16 916, i16 919, i16 922, i16 925, i16 928, i16 930, i16 933, i16 936, i16 939, i16 942, i16 945, i16 947, i16 950, i16 953, i16 956, i16 958, i16 961, i16 964, i16 966, i16 969, i16 971, i16 974, i16 976, i16 979, i16 981, i16 983, i16 986, i16 988, i16 990, i16 992, i16 994, i16 997, i16 999, i16 1001, i16 1003, i16 1005, i16 1006, i16 1008, i16 1010, i16 1012, i16 1013, i16 1015, i16 1017, i16 1018, i16 1019, i16 1020, i16 1022, i16 1022, i16 1023], align 16
@HtoCMY = internal global [4608 x i16] [i16 -81, i16 998, i16 996, i16 -81, i16 996, i16 996, i16 -81, i16 993, i16 996, i16 -81, i16 990, i16 996, i16 -81, i16 987, i16 996, i16 -81, i16 983, i16 996, i16 -81, i16 979, i16 996, i16 -81, i16 976, i16 996, i16 -81, i16 972, i16 996, i16 -81, i16 968, i16 996, i16 -81, i16 964, i16 996, i16 -81, i16 960, i16 996, i16 -81, i16 955, i16 996, i16 -81, i16 951, i16 996, i16 -81, i16 947, i16 996, i16 -81, i16 942, i16 996, i16 -81, i16 938, i16 996, i16 -81, i16 933, i16 995, i16 -81, i16 929, i16 995, i16 -81, i16 924, i16 995, i16 -81, i16 919, i16 995, i16 -81, i16 915, i16 995, i16 -81, i16 910, i16 995, i16 -81, i16 905, i16 995, i16 -81, i16 900, i16 995, i16 -81, i16 895, i16 995, i16 -81, i16 890, i16 995, i16 -81, i16 885, i16 995, i16 -81, i16 880, i16 995, i16 -81, i16 875, i16 995, i16 -81, i16 870, i16 995, i16 -81, i16 865, i16 995, i16 -81, i16 860, i16 994, i16 -81, i16 855, i16 994, i16 -81, i16 850, i16 994, i16 -81, i16 844, i16 994, i16 -81, i16 839, i16 994, i16 -81, i16 834, i16 994, i16 -81, i16 828, i16 994, i16 -82, i16 823, i16 994, i16 -82, i16 818, i16 994, i16 -82, i16 812, i16 994, i16 -82, i16 807, i16 994, i16 -82, i16 801, i16 993, i16 -82, i16 796, i16 993, i16 -82, i16 790, i16 993, i16 -82, i16 785, i16 993, i16 -82, i16 779, i16 993, i16 -82, i16 773, i16 993, i16 -82, i16 768, i16 993, i16 -82, i16 762, i16 993, i16 -82, i16 756, i16 993, i16 -82, i16 751, i16 992, i16 -82, i16 745, i16 992, i16 -82, i16 739, i16 992, i16 -82, i16 734, i16 992, i16 -82, i16 728, i16 992, i16 -82, i16 722, i16 992, i16 -82, i16 716, i16 992, i16 -82, i16 710, i16 992, i16 -82, i16 704, i16 991, i16 -83, i16 699, i16 991, i16 -83, i16 693, i16 991, i16 -83, i16 687, i16 991, i16 -83, i16 681, i16 991, i16 -83, i16 675, i16 991, i16 -83, i16 669, i16 991, i16 -83, i16 663, i16 990, i16 -83, i16 657, i16 990, i16 -83, i16 651, i16 990, i16 -83, i16 645, i16 990, i16 -83, i16 639, i16 990, i16 -83, i16 633, i16 990, i16 -83, i16 627, i16 990, i16 -83, i16 620, i16 989, i16 -84, i16 614, i16 989, i16 -84, i16 608, i16 989, i16 -84, i16 602, i16 989, i16 -84, i16 596, i16 989, i16 -84, i16 590, i16 989, i16 -84, i16 583, i16 989, i16 -84, i16 577, i16 988, i16 -84, i16 571, i16 988, i16 -84, i16 565, i16 988, i16 -84, i16 558, i16 988, i16 -84, i16 552, i16 988, i16 -84, i16 546, i16 988, i16 -85, i16 540, i16 987, i16 -85, i16 533, i16 987, i16 -85, i16 527, i16 987, i16 -85, i16 520, i16 987, i16 -85, i16 514, i16 987, i16 -85, i16 508, i16 987, i16 -85, i16 501, i16 986, i16 -85, i16 495, i16 986, i16 -85, i16 488, i16 986, i16 -86, i16 482, i16 986, i16 -86, i16 476, i16 986, i16 -86, i16 469, i16 985, i16 -86, i16 463, i16 985, i16 -86, i16 456, i16 985, i16 -86, i16 450, i16 985, i16 -86, i16 443, i16 985, i16 -86, i16 437, i16 985, i16 -87, i16 430, i16 984, i16 -87, i16 425, i16 984, i16 -87, i16 419, i16 984, i16 -87, i16 414, i16 984, i16 -87, i16 409, i16 984, i16 -87, i16 404, i16 983, i16 -87, i16 399, i16 983, i16 -87, i16 394, i16 983, i16 -88, i16 388, i16 983, i16 -88, i16 383, i16 983, i16 -88, i16 378, i16 982, i16 -88, i16 373, i16 982, i16 -88, i16 368, i16 982, i16 -88, i16 363, i16 982, i16 -88, i16 358, i16 982, i16 -89, i16 353, i16 981, i16 -89, i16 348, i16 981, i16 -89, i16 343, i16 981, i16 -89, i16 338, i16 981, i16 -89, i16 334, i16 980, i16 -89, i16 329, i16 980, i16 -90, i16 324, i16 980, i16 -90, i16 319, i16 980, i16 -90, i16 314, i16 980, i16 -90, i16 310, i16 979, i16 -90, i16 305, i16 979, i16 -90, i16 300, i16 979, i16 -91, i16 295, i16 979, i16 -91, i16 291, i16 978, i16 -91, i16 286, i16 978, i16 -91, i16 282, i16 978, i16 -91, i16 277, i16 978, i16 -91, i16 272, i16 978, i16 -92, i16 268, i16 977, i16 -92, i16 263, i16 977, i16 -92, i16 259, i16 977, i16 -92, i16 254, i16 977, i16 -92, i16 250, i16 976, i16 -93, i16 246, i16 976, i16 -93, i16 241, i16 976, i16 -93, i16 237, i16 976, i16 -93, i16 233, i16 975, i16 -93, i16 228, i16 975, i16 -94, i16 224, i16 975, i16 -94, i16 220, i16 975, i16 -94, i16 216, i16 974, i16 -94, i16 211, i16 974, i16 -94, i16 207, i16 974, i16 -95, i16 203, i16 974, i16 -95, i16 199, i16 973, i16 -95, i16 195, i16 973, i16 -95, i16 191, i16 973, i16 -96, i16 187, i16 973, i16 -96, i16 183, i16 972, i16 -96, i16 179, i16 972, i16 -96, i16 175, i16 972, i16 -96, i16 171, i16 972, i16 -97, i16 167, i16 971, i16 -97, i16 163, i16 971, i16 -97, i16 160, i16 971, i16 -97, i16 156, i16 971, i16 -98, i16 152, i16 970, i16 -98, i16 148, i16 970, i16 -98, i16 145, i16 970, i16 -98, i16 141, i16 970, i16 -99, i16 137, i16 969, i16 -99, i16 134, i16 969, i16 -99, i16 130, i16 969, i16 -99, i16 127, i16 969, i16 -100, i16 123, i16 968, i16 -100, i16 120, i16 968, i16 -100, i16 116, i16 968, i16 -100, i16 113, i16 967, i16 -101, i16 109, i16 967, i16 -101, i16 106, i16 967, i16 -101, i16 103, i16 967, i16 -102, i16 100, i16 966, i16 -102, i16 96, i16 966, i16 -102, i16 93, i16 966, i16 -102, i16 90, i16 965, i16 -103, i16 87, i16 965, i16 -103, i16 84, i16 965, i16 -103, i16 81, i16 965, i16 -104, i16 78, i16 964, i16 -104, i16 75, i16 964, i16 -104, i16 72, i16 964, i16 -104, i16 69, i16 963, i16 -105, i16 66, i16 963, i16 -105, i16 63, i16 963, i16 -105, i16 60, i16 963, i16 -106, i16 58, i16 962, i16 -106, i16 55, i16 962, i16 -106, i16 52, i16 962, i16 -107, i16 50, i16 961, i16 -107, i16 47, i16 961, i16 -107, i16 45, i16 961, i16 -107, i16 42, i16 961, i16 -108, i16 40, i16 960, i16 -108, i16 38, i16 960, i16 -108, i16 35, i16 960, i16 -109, i16 33, i16 959, i16 -109, i16 31, i16 959, i16 -109, i16 29, i16 959, i16 -110, i16 26, i16 958, i16 -110, i16 24, i16 958, i16 -110, i16 22, i16 958, i16 -111, i16 20, i16 957, i16 -111, i16 19, i16 957, i16 -111, i16 17, i16 957, i16 -112, i16 15, i16 956, i16 -112, i16 13, i16 956, i16 -112, i16 12, i16 956, i16 -113, i16 10, i16 956, i16 -113, i16 9, i16 955, i16 -114, i16 7, i16 955, i16 -114, i16 6, i16 955, i16 -114, i16 5, i16 954, i16 -115, i16 4, i16 954, i16 -115, i16 3, i16 954, i16 -115, i16 2, i16 953, i16 -116, i16 1, i16 953, i16 -116, i16 0, i16 953, i16 -116, i16 0, i16 952, i16 -117, i16 -3, i16 952, i16 -117, i16 -5, i16 952, i16 -118, i16 -8, i16 951, i16 -118, i16 -11, i16 951, i16 -118, i16 -14, i16 951, i16 -119, i16 -16, i16 950, i16 -119, i16 -19, i16 950, i16 -120, i16 -22, i16 950, i16 -120, i16 -25, i16 949, i16 -120, i16 -27, i16 949, i16 -121, i16 -30, i16 949, i16 -121, i16 -33, i16 948, i16 -122, i16 -36, i16 948, i16 -122, i16 -38, i16 948, i16 -120, i16 -41, i16 947, i16 -117, i16 -44, i16 947, i16 -115, i16 -47, i16 947, i16 -113, i16 -49, i16 946, i16 -110, i16 -52, i16 946, i16 -108, i16 -55, i16 946, i16 -106, i16 -58, i16 945, i16 -103, i16 -60, i16 945, i16 -101, i16 -63, i16 944, i16 -99, i16 -66, i16 944, i16 -96, i16 -68, i16 944, i16 -94, i16 -71, i16 943, i16 -91, i16 -74, i16 943, i16 -89, i16 -77, i16 943, i16 -87, i16 -79, i16 942, i16 -84, i16 -82, i16 942, i16 -82, i16 -85, i16 942, i16 -80, i16 -88, i16 942, i16 -77, i16 -90, i16 942, i16 -75, i16 -93, i16 942, i16 -73, i16 -96, i16 942, i16 -70, i16 -99, i16 942, i16 -68, i16 -101, i16 942, i16 -66, i16 -104, i16 942, i16 -63, i16 -107, i16 942, i16 -61, i16 -110, i16 942, i16 -59, i16 -112, i16 942, i16 -56, i16 -115, i16 942, i16 -54, i16 -118, i16 942, i16 -52, i16 -121, i16 942, i16 -49, i16 -123, i16 942, i16 -47, i16 -126, i16 942, i16 -45, i16 -126, i16 942, i16 -42, i16 -127, i16 942, i16 -40, i16 -127, i16 941, i16 -38, i16 -128, i16 941, i16 -35, i16 -128, i16 941, i16 -33, i16 -129, i16 941, i16 -30, i16 -129, i16 941, i16 -28, i16 -130, i16 941, i16 -26, i16 -130, i16 941, i16 -23, i16 -130, i16 941, i16 -21, i16 -131, i16 941, i16 -19, i16 -131, i16 941, i16 -16, i16 -132, i16 941, i16 -14, i16 -132, i16 941, i16 -12, i16 -133, i16 941, i16 -9, i16 -133, i16 941, i16 -7, i16 -133, i16 941, i16 -5, i16 -134, i16 941, i16 -2, i16 -134, i16 941, i16 0, i16 -135, i16 941, i16 1, i16 -135, i16 940, i16 1, i16 -136, i16 940, i16 2, i16 -136, i16 940, i16 2, i16 -136, i16 940, i16 3, i16 -137, i16 940, i16 4, i16 -137, i16 940, i16 5, i16 -138, i16 940, i16 6, i16 -138, i16 940, i16 7, i16 -138, i16 940, i16 8, i16 -139, i16 940, i16 9, i16 -139, i16 940, i16 10, i16 -140, i16 940, i16 12, i16 -140, i16 940, i16 13, i16 -140, i16 940, i16 14, i16 -141, i16 939, i16 15, i16 -141, i16 939, i16 17, i16 -142, i16 939, i16 18, i16 -142, i16 939, i16 20, i16 -142, i16 939, i16 21, i16 -143, i16 939, i16 23, i16 -143, i16 939, i16 24, i16 -143, i16 939, i16 26, i16 -144, i16 939, i16 27, i16 -144, i16 939, i16 29, i16 -145, i16 939, i16 31, i16 -145, i16 938, i16 33, i16 -145, i16 938, i16 34, i16 -146, i16 938, i16 36, i16 -146, i16 938, i16 38, i16 -146, i16 938, i16 40, i16 -147, i16 938, i16 42, i16 -147, i16 938, i16 44, i16 -148, i16 938, i16 46, i16 -148, i16 938, i16 48, i16 -148, i16 938, i16 49, i16 -149, i16 938, i16 52, i16 -149, i16 937, i16 54, i16 -149, i16 937, i16 56, i16 -150, i16 937, i16 58, i16 -150, i16 937, i16 60, i16 -150, i16 937, i16 62, i16 -151, i16 937, i16 64, i16 -151, i16 937, i16 66, i16 -151, i16 937, i16 69, i16 -152, i16 937, i16 71, i16 -152, i16 936, i16 73, i16 -152, i16 936, i16 75, i16 -153, i16 936, i16 78, i16 -153, i16 936, i16 80, i16 -153, i16 936, i16 82, i16 -154, i16 936, i16 85, i16 -154, i16 936, i16 87, i16 -154, i16 936, i16 90, i16 -155, i16 936, i16 92, i16 -155, i16 936, i16 95, i16 -155, i16 935, i16 97, i16 -156, i16 935, i16 100, i16 -156, i16 935, i16 102, i16 -156, i16 935, i16 105, i16 -157, i16 935, i16 107, i16 -157, i16 935, i16 110, i16 -157, i16 935, i16 113, i16 -158, i16 935, i16 115, i16 -158, i16 934, i16 118, i16 -158, i16 934, i16 121, i16 -158, i16 934, i16 123, i16 -159, i16 934, i16 126, i16 -159, i16 934, i16 129, i16 -159, i16 934, i16 132, i16 -160, i16 934, i16 134, i16 -160, i16 934, i16 137, i16 -160, i16 933, i16 140, i16 -161, i16 933, i16 143, i16 -161, i16 933, i16 146, i16 -161, i16 933, i16 149, i16 -161, i16 933, i16 151, i16 -162, i16 933, i16 154, i16 -162, i16 933, i16 157, i16 -162, i16 933, i16 160, i16 -163, i16 932, i16 163, i16 -163, i16 932, i16 166, i16 -163, i16 932, i16 169, i16 -163, i16 932, i16 172, i16 -164, i16 932, i16 175, i16 -164, i16 932, i16 178, i16 -164, i16 932, i16 182, i16 -164, i16 931, i16 185, i16 -165, i16 931, i16 188, i16 -165, i16 931, i16 191, i16 -165, i16 931, i16 194, i16 -165, i16 931, i16 197, i16 -166, i16 931, i16 200, i16 -166, i16 931, i16 204, i16 -166, i16 931, i16 207, i16 -166, i16 930, i16 210, i16 -167, i16 930, i16 213, i16 -167, i16 930, i16 217, i16 -167, i16 930, i16 220, i16 -167, i16 930, i16 223, i16 -168, i16 930, i16 227, i16 -168, i16 929, i16 230, i16 -168, i16 929, i16 233, i16 -168, i16 929, i16 237, i16 -169, i16 929, i16 240, i16 -169, i16 929, i16 240, i16 -169, i16 929, i16 242, i16 -169, i16 929, i16 243, i16 -170, i16 928, i16 245, i16 -170, i16 928, i16 246, i16 -170, i16 928, i16 248, i16 -170, i16 928, i16 249, i16 -170, i16 928, i16 251, i16 -171, i16 928, i16 252, i16 -171, i16 928, i16 254, i16 -171, i16 927, i16 255, i16 -171, i16 927, i16 257, i16 -172, i16 927, i16 258, i16 -172, i16 927, i16 260, i16 -172, i16 927, i16 261, i16 -172, i16 927, i16 262, i16 -172, i16 926, i16 264, i16 -173, i16 926, i16 265, i16 -173, i16 926, i16 267, i16 -173, i16 926, i16 268, i16 -173, i16 926, i16 269, i16 -173, i16 926, i16 271, i16 -174, i16 925, i16 272, i16 -174, i16 925, i16 274, i16 -174, i16 925, i16 275, i16 -174, i16 925, i16 276, i16 -174, i16 925, i16 278, i16 -175, i16 925, i16 279, i16 -175, i16 925, i16 280, i16 -175, i16 924, i16 282, i16 -175, i16 924, i16 283, i16 -175, i16 924, i16 284, i16 -175, i16 924, i16 285, i16 -176, i16 924, i16 287, i16 -176, i16 924, i16 288, i16 -176, i16 923, i16 289, i16 -176, i16 923, i16 291, i16 -176, i16 923, i16 292, i16 -176, i16 923, i16 293, i16 -177, i16 923, i16 294, i16 -177, i16 922, i16 295, i16 -177, i16 922, i16 297, i16 -177, i16 922, i16 298, i16 -177, i16 922, i16 299, i16 -177, i16 922, i16 300, i16 -178, i16 922, i16 301, i16 -178, i16 921, i16 302, i16 -178, i16 921, i16 304, i16 -178, i16 921, i16 305, i16 -178, i16 921, i16 306, i16 -178, i16 921, i16 307, i16 -178, i16 921, i16 308, i16 -179, i16 920, i16 309, i16 -179, i16 920, i16 310, i16 -179, i16 920, i16 311, i16 -179, i16 920, i16 312, i16 -179, i16 920, i16 313, i16 -179, i16 919, i16 314, i16 -179, i16 919, i16 315, i16 -179, i16 919, i16 316, i16 -180, i16 919, i16 317, i16 -180, i16 919, i16 318, i16 -180, i16 919, i16 319, i16 -180, i16 918, i16 320, i16 -180, i16 918, i16 321, i16 -180, i16 918, i16 322, i16 -180, i16 918, i16 323, i16 -180, i16 918, i16 324, i16 -180, i16 917, i16 325, i16 -181, i16 917, i16 326, i16 -181, i16 917, i16 327, i16 -181, i16 917, i16 328, i16 -181, i16 917, i16 329, i16 -181, i16 916, i16 329, i16 -181, i16 916, i16 330, i16 -181, i16 916, i16 331, i16 -181, i16 916, i16 332, i16 -181, i16 916, i16 333, i16 -181, i16 916, i16 333, i16 -181, i16 915, i16 334, i16 -182, i16 915, i16 335, i16 -182, i16 915, i16 336, i16 -182, i16 915, i16 336, i16 -182, i16 915, i16 337, i16 -182, i16 914, i16 338, i16 -182, i16 914, i16 339, i16 -182, i16 914, i16 339, i16 -182, i16 914, i16 340, i16 -182, i16 914, i16 341, i16 -182, i16 913, i16 341, i16 -182, i16 913, i16 342, i16 -182, i16 913, i16 342, i16 -182, i16 913, i16 343, i16 -182, i16 913, i16 344, i16 -182, i16 912, i16 344, i16 -182, i16 912, i16 345, i16 -183, i16 912, i16 345, i16 -183, i16 912, i16 346, i16 -183, i16 912, i16 346, i16 -183, i16 911, i16 347, i16 -183, i16 911, i16 347, i16 -183, i16 911, i16 348, i16 -183, i16 911, i16 348, i16 -183, i16 911, i16 348, i16 -183, i16 910, i16 349, i16 -183, i16 910, i16 349, i16 -183, i16 910, i16 349, i16 -183, i16 910, i16 350, i16 -183, i16 909, i16 350, i16 -183, i16 909, i16 350, i16 -183, i16 909, i16 350, i16 -183, i16 909, i16 351, i16 -183, i16 909, i16 351, i16 -183, i16 908, i16 351, i16 -183, i16 908, i16 351, i16 -183, i16 908, i16 351, i16 -183, i16 908, i16 351, i16 -184, i16 907, i16 351, i16 -184, i16 906, i16 351, i16 -184, i16 906, i16 351, i16 -184, i16 905, i16 351, i16 -185, i16 903, i16 351, i16 -185, i16 902, i16 351, i16 -185, i16 901, i16 351, i16 -185, i16 900, i16 351, i16 -186, i16 898, i16 351, i16 -186, i16 897, i16 351, i16 -186, i16 895, i16 351, i16 -186, i16 894, i16 351, i16 -187, i16 892, i16 351, i16 -187, i16 890, i16 351, i16 -187, i16 888, i16 351, i16 -187, i16 887, i16 351, i16 -188, i16 885, i16 351, i16 -188, i16 883, i16 351, i16 -188, i16 881, i16 351, i16 -188, i16 879, i16 351, i16 -189, i16 876, i16 351, i16 -189, i16 874, i16 351, i16 -189, i16 872, i16 351, i16 -189, i16 870, i16 351, i16 -190, i16 867, i16 351, i16 -190, i16 865, i16 351, i16 -190, i16 863, i16 351, i16 -190, i16 860, i16 351, i16 -191, i16 858, i16 351, i16 -191, i16 855, i16 351, i16 -191, i16 853, i16 351, i16 -191, i16 850, i16 351, i16 -191, i16 847, i16 351, i16 -192, i16 845, i16 351, i16 -192, i16 842, i16 351, i16 -192, i16 839, i16 351, i16 -192, i16 836, i16 351, i16 -193, i16 833, i16 351, i16 -193, i16 830, i16 351, i16 -193, i16 828, i16 351, i16 -193, i16 825, i16 351, i16 -193, i16 822, i16 351, i16 -194, i16 819, i16 351, i16 -194, i16 815, i16 351, i16 -194, i16 812, i16 351, i16 -194, i16 809, i16 350, i16 -195, i16 806, i16 350, i16 -195, i16 803, i16 350, i16 -195, i16 800, i16 350, i16 -195, i16 796, i16 350, i16 -195, i16 793, i16 350, i16 -196, i16 790, i16 350, i16 -196, i16 786, i16 350, i16 -196, i16 783, i16 350, i16 -196, i16 780, i16 350, i16 -196, i16 776, i16 350, i16 -197, i16 773, i16 350, i16 -197, i16 769, i16 350, i16 -197, i16 766, i16 350, i16 -197, i16 762, i16 350, i16 -198, i16 758, i16 350, i16 -198, i16 755, i16 350, i16 -198, i16 751, i16 350, i16 -198, i16 747, i16 350, i16 -198, i16 744, i16 350, i16 -199, i16 740, i16 350, i16 -199, i16 736, i16 350, i16 -199, i16 732, i16 350, i16 -199, i16 729, i16 350, i16 -199, i16 725, i16 350, i16 -199, i16 721, i16 350, i16 -200, i16 717, i16 350, i16 -200, i16 713, i16 349, i16 -200, i16 709, i16 349, i16 -200, i16 705, i16 349, i16 -200, i16 701, i16 349, i16 -201, i16 697, i16 349, i16 -201, i16 693, i16 349, i16 -201, i16 689, i16 349, i16 -201, i16 685, i16 349, i16 -201, i16 680, i16 349, i16 -202, i16 676, i16 349, i16 -202, i16 672, i16 349, i16 -202, i16 668, i16 349, i16 -202, i16 664, i16 349, i16 -202, i16 659, i16 349, i16 -202, i16 655, i16 349, i16 -203, i16 651, i16 349, i16 -203, i16 646, i16 349, i16 -203, i16 642, i16 349, i16 -203, i16 638, i16 348, i16 -203, i16 633, i16 348, i16 -203, i16 629, i16 348, i16 -204, i16 624, i16 348, i16 -204, i16 620, i16 348, i16 -204, i16 615, i16 348, i16 -204, i16 611, i16 348, i16 -204, i16 606, i16 348, i16 -204, i16 602, i16 348, i16 -205, i16 597, i16 348, i16 -205, i16 592, i16 348, i16 -205, i16 588, i16 348, i16 -205, i16 583, i16 348, i16 -205, i16 578, i16 348, i16 -205, i16 574, i16 347, i16 -206, i16 569, i16 347, i16 -206, i16 564, i16 347, i16 -206, i16 559, i16 347, i16 -206, i16 554, i16 347, i16 -206, i16 550, i16 347, i16 -206, i16 545, i16 347, i16 -206, i16 540, i16 347, i16 -207, i16 535, i16 347, i16 -207, i16 530, i16 347, i16 -207, i16 525, i16 347, i16 -207, i16 520, i16 346, i16 -207, i16 515, i16 346, i16 -207, i16 510, i16 346, i16 -207, i16 505, i16 346, i16 -208, i16 500, i16 346, i16 -208, i16 495, i16 346, i16 -208, i16 490, i16 346, i16 -208, i16 485, i16 346, i16 -208, i16 480, i16 346, i16 -208, i16 475, i16 346, i16 -208, i16 469, i16 346, i16 -209, i16 464, i16 345, i16 -209, i16 459, i16 345, i16 -209, i16 454, i16 345, i16 -209, i16 449, i16 345, i16 -209, i16 443, i16 345, i16 -209, i16 438, i16 345, i16 -209, i16 433, i16 345, i16 -209, i16 427, i16 345, i16 -210, i16 422, i16 345, i16 -210, i16 417, i16 344, i16 -210, i16 412, i16 344, i16 -210, i16 407, i16 344, i16 -210, i16 403, i16 344, i16 -210, i16 398, i16 344, i16 -210, i16 393, i16 344, i16 -210, i16 388, i16 344, i16 -210, i16 383, i16 344, i16 -211, i16 378, i16 343, i16 -211, i16 374, i16 343, i16 -211, i16 369, i16 343, i16 -211, i16 364, i16 343, i16 -211, i16 359, i16 343, i16 -211, i16 355, i16 343, i16 -211, i16 350, i16 343, i16 -211, i16 345, i16 343, i16 -211, i16 341, i16 342, i16 -212, i16 336, i16 342, i16 -212, i16 331, i16 342, i16 -212, i16 327, i16 342, i16 -212, i16 322, i16 342, i16 -212, i16 318, i16 342, i16 -212, i16 313, i16 342, i16 -212, i16 308, i16 341, i16 -212, i16 304, i16 341, i16 -212, i16 299, i16 341, i16 -212, i16 295, i16 341, i16 -213, i16 290, i16 341, i16 -213, i16 286, i16 341, i16 -213, i16 281, i16 341, i16 -213, i16 277, i16 340, i16 -213, i16 272, i16 340, i16 -213, i16 268, i16 340, i16 -213, i16 264, i16 340, i16 -213, i16 259, i16 340, i16 -213, i16 255, i16 340, i16 -213, i16 251, i16 340, i16 -213, i16 246, i16 339, i16 -213, i16 242, i16 339, i16 -214, i16 238, i16 339, i16 -214, i16 233, i16 339, i16 -214, i16 229, i16 339, i16 -214, i16 225, i16 339, i16 -214, i16 221, i16 338, i16 -214, i16 216, i16 338, i16 -214, i16 212, i16 338, i16 -214, i16 208, i16 338, i16 -214, i16 204, i16 338, i16 -214, i16 200, i16 338, i16 -214, i16 196, i16 337, i16 -214, i16 192, i16 337, i16 -214, i16 187, i16 337, i16 -214, i16 183, i16 337, i16 -215, i16 179, i16 337, i16 -215, i16 175, i16 336, i16 -215, i16 171, i16 336, i16 -215, i16 167, i16 336, i16 -215, i16 163, i16 336, i16 -215, i16 160, i16 336, i16 -215, i16 156, i16 336, i16 -215, i16 152, i16 335, i16 -215, i16 148, i16 335, i16 -215, i16 144, i16 335, i16 -215, i16 140, i16 335, i16 -215, i16 136, i16 335, i16 -215, i16 133, i16 334, i16 -215, i16 129, i16 334, i16 -215, i16 125, i16 334, i16 -215, i16 122, i16 334, i16 -215, i16 118, i16 334, i16 -215, i16 114, i16 333, i16 -215, i16 111, i16 333, i16 -215, i16 107, i16 333, i16 -216, i16 104, i16 333, i16 -216, i16 100, i16 333, i16 -216, i16 96, i16 332, i16 -216, i16 93, i16 332, i16 -216, i16 90, i16 332, i16 -216, i16 86, i16 332, i16 -216, i16 83, i16 331, i16 -216, i16 79, i16 331, i16 -216, i16 76, i16 331, i16 -216, i16 73, i16 331, i16 -216, i16 70, i16 331, i16 -216, i16 66, i16 330, i16 -216, i16 63, i16 330, i16 -216, i16 60, i16 330, i16 -216, i16 57, i16 330, i16 -216, i16 54, i16 329, i16 -216, i16 51, i16 329, i16 -216, i16 48, i16 329, i16 -216, i16 45, i16 329, i16 -216, i16 42, i16 329, i16 -216, i16 39, i16 328, i16 -216, i16 36, i16 328, i16 -216, i16 34, i16 328, i16 -216, i16 31, i16 328, i16 -216, i16 28, i16 327, i16 -216, i16 26, i16 327, i16 -216, i16 23, i16 327, i16 -213, i16 21, i16 327, i16 -210, i16 18, i16 326, i16 -207, i16 16, i16 326, i16 -205, i16 14, i16 326, i16 -202, i16 11, i16 326, i16 -199, i16 9, i16 325, i16 -196, i16 7, i16 325, i16 -193, i16 6, i16 325, i16 -190, i16 4, i16 325, i16 -188, i16 2, i16 324, i16 -185, i16 1, i16 324, i16 -182, i16 0, i16 324, i16 -179, i16 -9, i16 324, i16 -176, i16 -18, i16 323, i16 -173, i16 -27, i16 323, i16 -171, i16 -35, i16 323, i16 -168, i16 -44, i16 323, i16 -165, i16 -52, i16 322, i16 -162, i16 -61, i16 322, i16 -159, i16 -69, i16 326, i16 -156, i16 -77, i16 329, i16 -153, i16 -85, i16 333, i16 -151, i16 -94, i16 337, i16 -148, i16 -101, i16 340, i16 -145, i16 -109, i16 344, i16 -142, i16 -117, i16 348, i16 -139, i16 -125, i16 351, i16 -136, i16 -132, i16 355, i16 -134, i16 -139, i16 358, i16 -131, i16 -147, i16 362, i16 -128, i16 -154, i16 366, i16 -125, i16 -161, i16 369, i16 -122, i16 -168, i16 373, i16 -119, i16 -174, i16 376, i16 -117, i16 -181, i16 380, i16 -114, i16 -188, i16 384, i16 -111, i16 -194, i16 387, i16 -108, i16 -200, i16 391, i16 -105, i16 -206, i16 394, i16 -102, i16 -212, i16 398, i16 -99, i16 -218, i16 401, i16 -97, i16 -223, i16 405, i16 -94, i16 -229, i16 409, i16 -91, i16 -234, i16 412, i16 -88, i16 -239, i16 416, i16 -85, i16 -244, i16 419, i16 -82, i16 -248, i16 423, i16 -80, i16 -252, i16 426, i16 -77, i16 -256, i16 430, i16 -74, i16 -260, i16 433, i16 -71, i16 -263, i16 437, i16 -68, i16 -266, i16 440, i16 -65, i16 -269, i16 444, i16 -63, i16 -270, i16 447, i16 -60, i16 -270, i16 450, i16 -57, i16 -271, i16 454, i16 -54, i16 -271, i16 457, i16 -51, i16 -272, i16 461, i16 -48, i16 -272, i16 464, i16 -45, i16 -273, i16 468, i16 -43, i16 -273, i16 471, i16 -40, i16 -274, i16 475, i16 -37, i16 -274, i16 478, i16 -34, i16 -275, i16 481, i16 -31, i16 -275, i16 485, i16 -28, i16 -276, i16 488, i16 -26, i16 -276, i16 492, i16 -23, i16 -277, i16 495, i16 -20, i16 -277, i16 498, i16 -17, i16 -278, i16 502, i16 -14, i16 -278, i16 505, i16 -11, i16 -278, i16 508, i16 -9, i16 -279, i16 512, i16 -6, i16 -279, i16 515, i16 -3, i16 -280, i16 518, i16 0, i16 -280, i16 522, i16 0, i16 -281, i16 525, i16 0, i16 -281, i16 528, i16 1, i16 -282, i16 532, i16 1, i16 -282, i16 535, i16 2, i16 -282, i16 538, i16 2, i16 -283, i16 542, i16 3, i16 -283, i16 545, i16 4, i16 -284, i16 548, i16 4, i16 -284, i16 551, i16 5, i16 -284, i16 555, i16 6, i16 -285, i16 558, i16 7, i16 -285, i16 561, i16 8, i16 -286, i16 564, i16 9, i16 -286, i16 568, i16 10, i16 -287, i16 571, i16 11, i16 -287, i16 574, i16 12, i16 -287, i16 577, i16 13, i16 -288, i16 580, i16 14, i16 -288, i16 584, i16 15, i16 -288, i16 587, i16 16, i16 -289, i16 590, i16 17, i16 -289, i16 593, i16 18, i16 -290, i16 596, i16 19, i16 -290, i16 599, i16 21, i16 -290, i16 603, i16 22, i16 -291, i16 606, i16 23, i16 -291, i16 609, i16 24, i16 -291, i16 612, i16 26, i16 -292, i16 615, i16 27, i16 -292, i16 618, i16 28, i16 -293, i16 621, i16 30, i16 -293, i16 624, i16 31, i16 -293, i16 628, i16 33, i16 -294, i16 631, i16 34, i16 -294, i16 634, i16 36, i16 -294, i16 637, i16 37, i16 -295, i16 640, i16 39, i16 -295, i16 643, i16 40, i16 -295, i16 646, i16 42, i16 -296, i16 649, i16 43, i16 -296, i16 652, i16 45, i16 -296, i16 655, i16 46, i16 -297, i16 658, i16 48, i16 -297, i16 661, i16 50, i16 -297, i16 664, i16 51, i16 -298, i16 667, i16 53, i16 -298, i16 670, i16 55, i16 -298, i16 673, i16 57, i16 -299, i16 676, i16 58, i16 -299, i16 679, i16 60, i16 -299, i16 682, i16 62, i16 -300, i16 685, i16 64, i16 -300, i16 688, i16 65, i16 -300, i16 691, i16 67, i16 -300, i16 694, i16 69, i16 -301, i16 697, i16 71, i16 -301, i16 700, i16 73, i16 -301, i16 702, i16 75, i16 -302, i16 705, i16 77, i16 -302, i16 708, i16 78, i16 -302, i16 711, i16 80, i16 -302, i16 714, i16 82, i16 -303, i16 717, i16 84, i16 -303, i16 720, i16 86, i16 -303, i16 722, i16 88, i16 -304, i16 725, i16 90, i16 -304, i16 728, i16 92, i16 -304, i16 731, i16 94, i16 -304, i16 734, i16 96, i16 -305, i16 737, i16 99, i16 -305, i16 739, i16 101, i16 -305, i16 742, i16 103, i16 -305, i16 745, i16 105, i16 -306, i16 748, i16 107, i16 -306, i16 750, i16 109, i16 -306, i16 753, i16 111, i16 -306, i16 756, i16 113, i16 -307, i16 759, i16 116, i16 -307, i16 761, i16 118, i16 -307, i16 764, i16 120, i16 -307, i16 767, i16 122, i16 -308, i16 769, i16 125, i16 -308, i16 772, i16 127, i16 -308, i16 775, i16 129, i16 -308, i16 777, i16 131, i16 -308, i16 780, i16 134, i16 -309, i16 783, i16 136, i16 -309, i16 785, i16 138, i16 -309, i16 788, i16 141, i16 -309, i16 791, i16 143, i16 -310, i16 793, i16 145, i16 -310, i16 796, i16 148, i16 -310, i16 798, i16 150, i16 -310, i16 801, i16 153, i16 -310, i16 804, i16 155, i16 -311, i16 806, i16 157, i16 -311, i16 809, i16 160, i16 -311, i16 811, i16 162, i16 -311, i16 814, i16 165, i16 -311, i16 816, i16 167, i16 -312, i16 819, i16 170, i16 -312, i16 821, i16 172, i16 -312, i16 824, i16 175, i16 -312, i16 826, i16 177, i16 -312, i16 829, i16 180, i16 -312, i16 831, i16 182, i16 -313, i16 834, i16 185, i16 -313, i16 836, i16 187, i16 -313, i16 838, i16 190, i16 -313, i16 841, i16 193, i16 -313, i16 843, i16 195, i16 -313, i16 846, i16 198, i16 -314, i16 848, i16 201, i16 -314, i16 850, i16 203, i16 -314, i16 853, i16 206, i16 -314, i16 855, i16 209, i16 -314, i16 857, i16 211, i16 -314, i16 860, i16 214, i16 -315, i16 862, i16 217, i16 -315, i16 864, i16 219, i16 -315, i16 867, i16 222, i16 -315, i16 869, i16 225, i16 -315, i16 871, i16 227, i16 -315, i16 874, i16 230, i16 -315, i16 876, i16 233, i16 -316, i16 878, i16 236, i16 -316, i16 880, i16 239, i16 -316, i16 882, i16 241, i16 -316, i16 885, i16 244, i16 -316, i16 887, i16 247, i16 -316, i16 889, i16 250, i16 -316, i16 891, i16 253, i16 -316, i16 893, i16 256, i16 -317, i16 895, i16 258, i16 -317, i16 898, i16 261, i16 -317, i16 900, i16 264, i16 -317, i16 902, i16 267, i16 -317, i16 904, i16 270, i16 -317, i16 906, i16 273, i16 -317, i16 908, i16 276, i16 -317, i16 910, i16 279, i16 -317, i16 912, i16 282, i16 -317, i16 914, i16 285, i16 -318, i16 916, i16 288, i16 -318, i16 918, i16 291, i16 -318, i16 920, i16 294, i16 -318, i16 922, i16 297, i16 -318, i16 924, i16 300, i16 -318, i16 926, i16 303, i16 -318, i16 928, i16 306, i16 -318, i16 929, i16 309, i16 -318, i16 931, i16 312, i16 -318, i16 933, i16 315, i16 -318, i16 935, i16 318, i16 -319, i16 937, i16 321, i16 -319, i16 939, i16 324, i16 -319, i16 940, i16 327, i16 -319, i16 942, i16 330, i16 -319, i16 944, i16 333, i16 -319, i16 946, i16 337, i16 -319, i16 947, i16 340, i16 -319, i16 949, i16 343, i16 -319, i16 951, i16 346, i16 -319, i16 953, i16 349, i16 -319, i16 954, i16 352, i16 -319, i16 956, i16 356, i16 -319, i16 957, i16 359, i16 -319, i16 959, i16 362, i16 -319, i16 961, i16 365, i16 -319, i16 962, i16 368, i16 -319, i16 964, i16 372, i16 -319, i16 965, i16 375, i16 -320, i16 967, i16 378, i16 -320, i16 968, i16 381, i16 -320, i16 970, i16 385, i16 -320, i16 971, i16 388, i16 -320, i16 972, i16 391, i16 -320, i16 974, i16 395, i16 -320, i16 975, i16 398, i16 -320, i16 976, i16 401, i16 -320, i16 978, i16 405, i16 -320, i16 979, i16 408, i16 -320, i16 980, i16 411, i16 -320, i16 981, i16 415, i16 -320, i16 983, i16 418, i16 -320, i16 984, i16 421, i16 -320, i16 985, i16 425, i16 -320, i16 986, i16 428, i16 -320, i16 987, i16 431, i16 -320, i16 988, i16 435, i16 -320, i16 989, i16 438, i16 -320, i16 990, i16 442, i16 -320, i16 990, i16 445, i16 -320, i16 991, i16 449, i16 -320, i16 992, i16 452, i16 -320, i16 993, i16 456, i16 -320, i16 993, i16 459, i16 -320, i16 994, i16 463, i16 -320, i16 994, i16 466, i16 -320, i16 993, i16 467, i16 -320, i16 991, i16 469, i16 -320, i16 989, i16 470, i16 -320, i16 987, i16 472, i16 -320, i16 985, i16 473, i16 -320, i16 982, i16 475, i16 -320, i16 980, i16 476, i16 -320, i16 977, i16 477, i16 -320, i16 974, i16 479, i16 -320, i16 971, i16 480, i16 -320, i16 968, i16 482, i16 -320, i16 965, i16 483, i16 -320, i16 962, i16 484, i16 -320, i16 959, i16 486, i16 -320, i16 956, i16 487, i16 -320, i16 952, i16 489, i16 -320, i16 949, i16 490, i16 -320, i16 945, i16 491, i16 -320, i16 942, i16 493, i16 -320, i16 938, i16 494, i16 -320, i16 935, i16 495, i16 -319, i16 931, i16 497, i16 -319, i16 927, i16 498, i16 -319, i16 923, i16 500, i16 -319, i16 920, i16 501, i16 -319, i16 916, i16 502, i16 -319, i16 912, i16 504, i16 -319, i16 908, i16 505, i16 -319, i16 904, i16 506, i16 -319, i16 900, i16 508, i16 -319, i16 896, i16 509, i16 -319, i16 891, i16 510, i16 -319, i16 887, i16 512, i16 -318, i16 883, i16 513, i16 -318, i16 879, i16 514, i16 -318, i16 875, i16 516, i16 -318, i16 870, i16 517, i16 -318, i16 866, i16 518, i16 -318, i16 861, i16 519, i16 -318, i16 857, i16 521, i16 -318, i16 852, i16 522, i16 -317, i16 848, i16 523, i16 -317, i16 843, i16 525, i16 -317, i16 839, i16 526, i16 -317, i16 834, i16 527, i16 -317, i16 830, i16 528, i16 -317, i16 825, i16 530, i16 -316, i16 820, i16 531, i16 -316, i16 816, i16 532, i16 -316, i16 811, i16 534, i16 -316, i16 806, i16 535, i16 -316, i16 801, i16 536, i16 -316, i16 796, i16 537, i16 -315, i16 792, i16 539, i16 -315, i16 787, i16 540, i16 -315, i16 782, i16 541, i16 -315, i16 777, i16 542, i16 -314, i16 772, i16 544, i16 -314, i16 767, i16 545, i16 -314, i16 762, i16 546, i16 -314, i16 757, i16 547, i16 -314, i16 752, i16 548, i16 -313, i16 747, i16 550, i16 -313, i16 742, i16 551, i16 -313, i16 736, i16 552, i16 -312, i16 731, i16 553, i16 -312, i16 726, i16 554, i16 -312, i16 721, i16 556, i16 -312, i16 716, i16 557, i16 -311, i16 710, i16 558, i16 -311, i16 705, i16 559, i16 -311, i16 700, i16 560, i16 -311, i16 694, i16 562, i16 -310, i16 689, i16 563, i16 -310, i16 684, i16 564, i16 -310, i16 678, i16 565, i16 -309, i16 673, i16 566, i16 -309, i16 668, i16 567, i16 -309, i16 662, i16 569, i16 -308, i16 657, i16 570, i16 -308, i16 651, i16 571, i16 -308, i16 646, i16 572, i16 -307, i16 640, i16 573, i16 -307, i16 634, i16 574, i16 -306, i16 629, i16 575, i16 -306, i16 623, i16 577, i16 -306, i16 618, i16 578, i16 -305, i16 612, i16 579, i16 -305, i16 606, i16 580, i16 -305, i16 601, i16 581, i16 -304, i16 595, i16 582, i16 -304, i16 589, i16 583, i16 -303, i16 584, i16 584, i16 -303, i16 578, i16 585, i16 -302, i16 572, i16 586, i16 -302, i16 566, i16 588, i16 -302, i16 561, i16 589, i16 -301, i16 555, i16 590, i16 -301, i16 549, i16 591, i16 -300, i16 543, i16 592, i16 -300, i16 537, i16 593, i16 -299, i16 531, i16 594, i16 -299, i16 525, i16 595, i16 -298, i16 519, i16 596, i16 -298, i16 514, i16 597, i16 -297, i16 508, i16 598, i16 -297, i16 502, i16 599, i16 -296, i16 496, i16 600, i16 -296, i16 490, i16 601, i16 -295, i16 484, i16 602, i16 -295, i16 478, i16 603, i16 -294, i16 471, i16 604, i16 -294, i16 465, i16 605, i16 -293, i16 459, i16 606, i16 -293, i16 453, i16 607, i16 -292, i16 447, i16 608, i16 -292, i16 441, i16 609, i16 -291, i16 435, i16 610, i16 -290, i16 429, i16 611, i16 -290, i16 422, i16 612, i16 -289, i16 416, i16 613, i16 -289, i16 410, i16 614, i16 -288, i16 405, i16 615, i16 -287, i16 400, i16 616, i16 -287, i16 395, i16 617, i16 -286, i16 390, i16 618, i16 -286, i16 385, i16 619, i16 -285, i16 380, i16 620, i16 -284, i16 375, i16 621, i16 -284, i16 370, i16 622, i16 -283, i16 366, i16 623, i16 -282, i16 361, i16 624, i16 -282, i16 356, i16 625, i16 -281, i16 351, i16 626, i16 -280, i16 346, i16 627, i16 -280, i16 342, i16 628, i16 -279, i16 337, i16 628, i16 -278, i16 332, i16 629, i16 -278, i16 328, i16 630, i16 -277, i16 323, i16 631, i16 -276, i16 318, i16 632, i16 -275, i16 314, i16 633, i16 -275, i16 309, i16 634, i16 -274, i16 305, i16 635, i16 -273, i16 300, i16 636, i16 -273, i16 296, i16 636, i16 -272, i16 291, i16 637, i16 -271, i16 287, i16 638, i16 -270, i16 282, i16 639, i16 -269, i16 278, i16 640, i16 -269, i16 274, i16 641, i16 -268, i16 269, i16 642, i16 -267, i16 265, i16 642, i16 -266, i16 261, i16 643, i16 -265, i16 257, i16 644, i16 -265, i16 252, i16 645, i16 -264, i16 248, i16 646, i16 -263, i16 244, i16 647, i16 -262, i16 240, i16 647, i16 -261, i16 236, i16 648, i16 -260, i16 232, i16 649, i16 -260, i16 228, i16 650, i16 -259, i16 224, i16 650, i16 -258, i16 220, i16 651, i16 -257, i16 216, i16 652, i16 -256, i16 212, i16 653, i16 -255, i16 208, i16 654, i16 -254, i16 204, i16 654, i16 -253, i16 200, i16 655, i16 -252, i16 196, i16 656, i16 -252, i16 192, i16 657, i16 -251, i16 189, i16 657, i16 -250, i16 185, i16 658, i16 -249, i16 181, i16 659, i16 -248, i16 177, i16 660, i16 -247, i16 174, i16 660, i16 -246, i16 170, i16 661, i16 -245, i16 166, i16 662, i16 -244, i16 163, i16 662, i16 -243, i16 159, i16 663, i16 -242, i16 156, i16 664, i16 -241, i16 152, i16 664, i16 -240, i16 149, i16 665, i16 -239, i16 145, i16 666, i16 -238, i16 142, i16 666, i16 -237, i16 139, i16 667, i16 -236, i16 135, i16 668, i16 -235, i16 132, i16 668, i16 -234, i16 129, i16 669, i16 -233, i16 125, i16 670, i16 -232, i16 122, i16 670, i16 -230, i16 119, i16 671, i16 -229, i16 116, i16 672, i16 -228, i16 113, i16 672, i16 -227, i16 110, i16 673, i16 -226, i16 107, i16 673, i16 -225, i16 104, i16 674, i16 -224, i16 101, i16 675, i16 -223, i16 98, i16 675, i16 -222, i16 95, i16 676, i16 -220, i16 92, i16 676, i16 -219, i16 89, i16 677, i16 -218, i16 86, i16 677, i16 -217, i16 83, i16 678, i16 -216, i16 81, i16 679, i16 -215, i16 78, i16 679, i16 -213, i16 75, i16 680, i16 -212, i16 72, i16 680, i16 -211, i16 70, i16 681, i16 -210, i16 67, i16 681, i16 -209, i16 65, i16 682, i16 -207, i16 62, i16 682, i16 -206, i16 60, i16 683, i16 -205, i16 57, i16 683, i16 -204, i16 55, i16 684, i16 -202, i16 53, i16 684, i16 -201, i16 50, i16 685, i16 -200, i16 48, i16 685, i16 -199, i16 46, i16 686, i16 -197, i16 44, i16 686, i16 -196, i16 41, i16 686, i16 -195, i16 39, i16 687, i16 -193, i16 37, i16 687, i16 -192, i16 35, i16 688, i16 -191, i16 33, i16 688, i16 -190, i16 31, i16 689, i16 -188, i16 29, i16 689, i16 -187, i16 27, i16 689, i16 -185, i16 26, i16 690, i16 -184, i16 24, i16 690, i16 -183, i16 22, i16 690, i16 -181, i16 21, i16 691, i16 -180, i16 19, i16 691, i16 -177, i16 17, i16 691, i16 -174, i16 16, i16 692, i16 -171, i16 14, i16 692, i16 -168, i16 13, i16 692, i16 -165, i16 12, i16 693, i16 -163, i16 10, i16 693, i16 -160, i16 9, i16 693, i16 -157, i16 8, i16 694, i16 -154, i16 7, i16 694, i16 -151, i16 6, i16 694, i16 -148, i16 5, i16 694, i16 -145, i16 4, i16 695, i16 -142, i16 3, i16 695, i16 -139, i16 2, i16 695, i16 -136, i16 2, i16 695, i16 -134, i16 1, i16 695, i16 -131, i16 1, i16 695, i16 -128, i16 0, i16 696, i16 -125, i16 0, i16 696, i16 -122, i16 -3, i16 696, i16 -119, i16 -6, i16 696, i16 -116, i16 -9, i16 696, i16 -113, i16 -12, i16 696, i16 -110, i16 -15, i16 698, i16 -107, i16 -18, i16 700, i16 -105, i16 -21, i16 702, i16 -102, i16 -23, i16 704, i16 -99, i16 -26, i16 705, i16 -96, i16 -29, i16 707, i16 -93, i16 -32, i16 709, i16 -90, i16 -35, i16 711, i16 -87, i16 -37, i16 713, i16 -84, i16 -40, i16 715, i16 -81, i16 -43, i16 716, i16 -78, i16 -45, i16 718, i16 -75, i16 -48, i16 720, i16 -73, i16 -50, i16 722, i16 -70, i16 -53, i16 724, i16 -67, i16 -55, i16 726, i16 -64, i16 -58, i16 727, i16 -61, i16 -60, i16 729, i16 -58, i16 -62, i16 731, i16 -55, i16 -65, i16 733, i16 -52, i16 -67, i16 735, i16 -49, i16 -69, i16 736, i16 -46, i16 -71, i16 738, i16 -44, i16 -74, i16 740, i16 -41, i16 -76, i16 742, i16 -38, i16 -78, i16 744, i16 -35, i16 -80, i16 745, i16 -32, i16 -82, i16 747, i16 -29, i16 -83, i16 749, i16 -26, i16 -85, i16 751, i16 -23, i16 -87, i16 752, i16 -20, i16 -88, i16 754, i16 -17, i16 -90, i16 756, i16 -15, i16 -91, i16 758, i16 -12, i16 -92, i16 759, i16 -9, i16 -93, i16 761, i16 -6, i16 -93, i16 763, i16 -3, i16 -93, i16 764, i16 0, i16 -93, i16 766, i16 0, i16 -93, i16 768, i16 1, i16 -93, i16 770, i16 2, i16 -92, i16 771, i16 2, i16 -92, i16 773, i16 3, i16 -92, i16 775, i16 5, i16 -92, i16 776, i16 6, i16 -92, i16 778, i16 7, i16 -92, i16 780, i16 8, i16 -92, i16 781, i16 10, i16 -92, i16 783, i16 11, i16 -92, i16 785, i16 13, i16 -92, i16 786, i16 15, i16 -92, i16 788, i16 16, i16 -92, i16 790, i16 18, i16 -91, i16 791, i16 20, i16 -91, i16 793, i16 22, i16 -91, i16 795, i16 24, i16 -91, i16 796, i16 26, i16 -91, i16 798, i16 28, i16 -91, i16 799, i16 30, i16 -91, i16 801, i16 32, i16 -91, i16 803, i16 34, i16 -91, i16 804, i16 36, i16 -91, i16 806, i16 39, i16 -91, i16 807, i16 41, i16 -91, i16 809, i16 43, i16 -90, i16 811, i16 46, i16 -90, i16 812, i16 48, i16 -90, i16 814, i16 51, i16 -90, i16 815, i16 53, i16 -90, i16 817, i16 56, i16 -90, i16 818, i16 59, i16 -90, i16 820, i16 61, i16 -90, i16 821, i16 64, i16 -90, i16 823, i16 67, i16 -90, i16 825, i16 70, i16 -90, i16 826, i16 72, i16 -90, i16 828, i16 75, i16 -90, i16 829, i16 78, i16 -89, i16 831, i16 81, i16 -89, i16 832, i16 84, i16 -89, i16 834, i16 87, i16 -89, i16 835, i16 90, i16 -89, i16 837, i16 93, i16 -89, i16 838, i16 97, i16 -89, i16 840, i16 100, i16 -89, i16 841, i16 103, i16 -89, i16 843, i16 106, i16 -89, i16 844, i16 109, i16 -89, i16 846, i16 113, i16 -89, i16 847, i16 116, i16 -89, i16 848, i16 119, i16 -88, i16 850, i16 123, i16 -88, i16 851, i16 126, i16 -88, i16 853, i16 130, i16 -88, i16 854, i16 133, i16 -88, i16 856, i16 137, i16 -88, i16 857, i16 140, i16 -88, i16 858, i16 144, i16 -88, i16 860, i16 147, i16 -88, i16 861, i16 151, i16 -88, i16 863, i16 155, i16 -88, i16 864, i16 158, i16 -88, i16 865, i16 162, i16 -88, i16 867, i16 166, i16 -88, i16 868, i16 170, i16 -88, i16 870, i16 174, i16 -87, i16 871, i16 177, i16 -87, i16 872, i16 181, i16 -87, i16 874, i16 185, i16 -87, i16 875, i16 189, i16 -87, i16 876, i16 193, i16 -87, i16 878, i16 197, i16 -87, i16 879, i16 201, i16 -87, i16 880, i16 205, i16 -87, i16 882, i16 209, i16 -87, i16 883, i16 213, i16 -87, i16 884, i16 217, i16 -87, i16 886, i16 221, i16 -87, i16 887, i16 226, i16 -87, i16 888, i16 230, i16 -86, i16 890, i16 234, i16 -86, i16 891, i16 238, i16 -86, i16 892, i16 242, i16 -86, i16 893, i16 247, i16 -86, i16 895, i16 251, i16 -86, i16 896, i16 255, i16 -86, i16 897, i16 260, i16 -86, i16 898, i16 264, i16 -86, i16 900, i16 269, i16 -86, i16 901, i16 273, i16 -86, i16 902, i16 278, i16 -86, i16 903, i16 282, i16 -86, i16 905, i16 287, i16 -86, i16 906, i16 291, i16 -86, i16 907, i16 296, i16 -86, i16 908, i16 300, i16 -85, i16 909, i16 305, i16 -85, i16 911, i16 309, i16 -85, i16 912, i16 314, i16 -85, i16 913, i16 319, i16 -85, i16 914, i16 323, i16 -85, i16 915, i16 328, i16 -85, i16 916, i16 333, i16 -85, i16 918, i16 338, i16 -85, i16 919, i16 342, i16 -85, i16 920, i16 347, i16 -85, i16 921, i16 352, i16 -85, i16 922, i16 357, i16 -85, i16 923, i16 362, i16 -85, i16 924, i16 367, i16 -85, i16 925, i16 372, i16 -85, i16 927, i16 377, i16 -85, i16 928, i16 382, i16 -85, i16 929, i16 387, i16 -84, i16 930, i16 392, i16 -84, i16 931, i16 397, i16 -84, i16 932, i16 402, i16 -84, i16 933, i16 407, i16 -84, i16 934, i16 412, i16 -84, i16 935, i16 417, i16 -84, i16 936, i16 422, i16 -84, i16 937, i16 427, i16 -84, i16 938, i16 432, i16 -84, i16 939, i16 438, i16 -84, i16 940, i16 443, i16 -84, i16 941, i16 448, i16 -84, i16 942, i16 453, i16 -84, i16 943, i16 459, i16 -84, i16 944, i16 464, i16 -84, i16 945, i16 469, i16 -84, i16 946, i16 475, i16 -84, i16 947, i16 480, i16 -84, i16 948, i16 485, i16 -83, i16 949, i16 491, i16 -83, i16 950, i16 496, i16 -83, i16 951, i16 502, i16 -83, i16 952, i16 507, i16 -83, i16 953, i16 513, i16 -83, i16 954, i16 518, i16 -83, i16 955, i16 524, i16 -83, i16 956, i16 529, i16 -83, i16 957, i16 535, i16 -83, i16 957, i16 540, i16 -83, i16 958, i16 546, i16 -83, i16 959, i16 552, i16 -83, i16 960, i16 557, i16 -83, i16 961, i16 563, i16 -83, i16 962, i16 568, i16 -83, i16 963, i16 574, i16 -83, i16 963, i16 580, i16 -83, i16 964, i16 586, i16 -83, i16 965, i16 591, i16 -83, i16 966, i16 597, i16 -83, i16 967, i16 603, i16 -83, i16 968, i16 609, i16 -83, i16 968, i16 615, i16 -82, i16 969, i16 620, i16 -82, i16 970, i16 626, i16 -82, i16 971, i16 632, i16 -82, i16 971, i16 638, i16 -82, i16 972, i16 644, i16 -82, i16 973, i16 650, i16 -82, i16 974, i16 656, i16 -82, i16 974, i16 662, i16 -82, i16 975, i16 668, i16 -82, i16 976, i16 674, i16 -82, i16 977, i16 680, i16 -82, i16 977, i16 686, i16 -82, i16 978, i16 692, i16 -82, i16 979, i16 698, i16 -82, i16 979, i16 704, i16 -82, i16 980, i16 710, i16 -82, i16 981, i16 716, i16 -82, i16 981, i16 723, i16 -82, i16 982, i16 729, i16 -82, i16 983, i16 735, i16 -82, i16 983, i16 741, i16 -82, i16 984, i16 747, i16 -82, i16 984, i16 754, i16 -82, i16 985, i16 760, i16 -82, i16 985, i16 766, i16 -82, i16 986, i16 772, i16 -82, i16 987, i16 779, i16 -82, i16 987, i16 785, i16 -82, i16 988, i16 791, i16 -81, i16 988, i16 798, i16 -81, i16 989, i16 804, i16 -81, i16 989, i16 810, i16 -81, i16 990, i16 817, i16 -81, i16 990, i16 823, i16 -81, i16 991, i16 830, i16 -81, i16 991, i16 836, i16 -81, i16 992, i16 843, i16 -81, i16 992, i16 849, i16 -81, i16 992, i16 856, i16 -81, i16 993, i16 862, i16 -81, i16 993, i16 869, i16 -81, i16 994, i16 875, i16 -81, i16 994, i16 882, i16 -81, i16 994, i16 888, i16 -81, i16 995, i16 895, i16 -81, i16 995, i16 902, i16 -81, i16 995, i16 908, i16 -81, i16 996, i16 915, i16 -81, i16 996, i16 922, i16 -81, i16 996, i16 928, i16 -81, i16 997, i16 935, i16 -81, i16 997, i16 942, i16 -81, i16 997, i16 948, i16 -81, i16 997, i16 955, i16 -81, i16 997, i16 962, i16 -81, i16 998, i16 969, i16 -81, i16 998, i16 976, i16 -81, i16 998, i16 982, i16 -81, i16 998, i16 989], align 16
@grnsep = internal global [1024 x i16] [i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 3, i16 3, i16 3, i16 3, i16 3, i16 3, i16 3, i16 3, i16 3, i16 3, i16 3, i16 3, i16 3, i16 3, i16 4, i16 4, i16 4, i16 4, i16 4, i16 4, i16 4, i16 4, i16 4, i16 4, i16 4, i16 4, i16 5, i16 5, i16 5, i16 5, i16 5, i16 5, i16 5, i16 5, i16 5, i16 5, i16 5, i16 6, i16 6, i16 6, i16 6, i16 6, i16 6, i16 6, i16 6, i16 6, i16 7, i16 7, i16 7, i16 7, i16 7, i16 7, i16 7, i16 7, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 9, i16 9, i16 9, i16 9, i16 9, i16 9, i16 9, i16 9, i16 10, i16 10, i16 10, i16 10, i16 10, i16 10, i16 11, i16 11, i16 11, i16 11, i16 11, i16 11, i16 11, i16 12, i16 12, i16 12, i16 12, i16 12, i16 12, i16 13, i16 13, i16 13, i16 13, i16 13, i16 13, i16 14, i16 14, i16 14, i16 14, i16 14, i16 15, i16 15, i16 15, i16 15, i16 15, i16 15, i16 16, i16 16, i16 16, i16 16, i16 16, i16 17, i16 17, i16 17, i16 17, i16 17, i16 18, i16 18, i16 18, i16 18, i16 18, i16 19, i16 19, i16 19, i16 19, i16 20, i16 20, i16 20, i16 20, i16 20, i16 21, i16 21, i16 21, i16 21, i16 21, i16 22, i16 22, i16 22, i16 22, i16 23, i16 23, i16 23, i16 23, i16 24, i16 24, i16 24, i16 24, i16 24, i16 25, i16 25, i16 25, i16 25, i16 26, i16 26, i16 26, i16 26, i16 27, i16 27, i16 27, i16 27, i16 28, i16 28, i16 28, i16 28, i16 29, i16 29, i16 29, i16 29, i16 30, i16 30, i16 30, i16 30, i16 31, i16 31, i16 31, i16 31, i16 32, i16 32, i16 32, i16 33, i16 33, i16 33, i16 33, i16 34, i16 34, i16 34, i16 34, i16 35, i16 35, i16 35, i16 35, i16 36, i16 36, i16 36, i16 37, i16 37, i16 37, i16 37, i16 38, i16 38, i16 38, i16 38, i16 39, i16 39, i16 39, i16 40, i16 40, i16 40, i16 40, i16 41, i16 41, i16 41, i16 41, i16 42, i16 42, i16 42, i16 43, i16 43, i16 43, i16 43, i16 44, i16 44, i16 44, i16 45, i16 45, i16 45, i16 45, i16 46, i16 46, i16 46, i16 46, i16 47, i16 47, i16 47, i16 48, i16 48, i16 48, i16 48, i16 49, i16 49, i16 49, i16 50, i16 50, i16 50, i16 50, i16 51, i16 51, i16 51, i16 51, i16 52, i16 52, i16 52, i16 53, i16 53, i16 53, i16 53, i16 54, i16 54, i16 54, i16 54, i16 55, i16 55, i16 55, i16 56, i16 56, i16 56, i16 56, i16 57, i16 57, i16 57, i16 57, i16 58, i16 58, i16 58, i16 59, i16 59, i16 59, i16 59, i16 60, i16 60, i16 60, i16 60, i16 61, i16 61, i16 61, i16 61, i16 62, i16 62, i16 62, i16 62, i16 63, i16 63, i16 63, i16 63, i16 64, i16 64, i16 64, i16 64, i16 65, i16 65, i16 65, i16 65, i16 66, i16 66, i16 66, i16 66, i16 67, i16 67, i16 67, i16 67, i16 68, i16 68, i16 68, i16 68, i16 69, i16 69, i16 69, i16 69, i16 70, i16 70, i16 70, i16 70, i16 71, i16 71, i16 71, i16 71, i16 71, i16 72, i16 72, i16 72, i16 72, i16 73, i16 73, i16 73, i16 73, i16 74, i16 74, i16 74, i16 74, i16 74, i16 75, i16 75, i16 75, i16 75, i16 75, i16 76, i16 76, i16 76, i16 76, i16 77, i16 77, i16 77, i16 77, i16 77, i16 78, i16 78, i16 78, i16 78, i16 78, i16 79, i16 79, i16 79, i16 79, i16 79, i16 80, i16 80, i16 80, i16 80, i16 80, i16 80, i16 81, i16 81, i16 81, i16 81, i16 81, i16 82, i16 82, i16 82, i16 82, i16 82, i16 82, i16 83, i16 83, i16 83, i16 83, i16 83, i16 83, i16 84, i16 84, i16 84, i16 84, i16 84, i16 84, i16 85, i16 85, i16 85, i16 85, i16 85, i16 85, i16 85, i16 86, i16 86, i16 86, i16 86, i16 86, i16 86, i16 86, i16 87, i16 87, i16 87, i16 87, i16 87, i16 87, i16 87, i16 88, i16 88, i16 88, i16 88, i16 88, i16 88, i16 88, i16 88, i16 88, i16 89, i16 89, i16 89, i16 89, i16 89, i16 89, i16 89, i16 89, i16 89, i16 90, i16 90, i16 90, i16 90, i16 90, i16 90, i16 90, i16 90, i16 90, i16 90, i16 90, i16 90, i16 91, i16 91, i16 91, i16 91, i16 91, i16 91, i16 91, i16 91, i16 91, i16 91, i16 91, i16 91, i16 91, i16 91, i16 91, i16 91, i16 91, i16 92, i16 92, i16 92, i16 92, i16 92, i16 92, i16 92, i16 92, i16 92, i16 92, i16 92, i16 92, i16 92, i16 92, i16 92, i16 92, i16 92, i16 92, i16 92, i16 92, i16 92, i16 92, i16 92, i16 92, i16 92, i16 92, i16 92, i16 92, i16 92, i16 92, i16 92, i16 92, i16 92, i16 92, i16 92, i16 92, i16 92, i16 92, i16 92, i16 92, i16 91, i16 91, i16 91, i16 91, i16 91, i16 91, i16 91, i16 91, i16 91, i16 91, i16 91, i16 91, i16 91, i16 91, i16 91, i16 91, i16 90, i16 90, i16 90, i16 90, i16 90, i16 90, i16 90, i16 90, i16 90, i16 90, i16 89, i16 89, i16 89, i16 89, i16 89, i16 89, i16 89, i16 89, i16 89, i16 88, i16 88, i16 88, i16 88, i16 88, i16 88, i16 88, i16 87, i16 87, i16 87, i16 87, i16 87, i16 87, i16 87, i16 86, i16 86, i16 86, i16 86, i16 86, i16 86, i16 85, i16 85, i16 85, i16 85, i16 85, i16 85, i16 84, i16 84, i16 84, i16 84, i16 84, i16 83, i16 83, i16 83, i16 83, i16 83, i16 82, i16 82, i16 82, i16 82, i16 81, i16 81, i16 81, i16 81, i16 81, i16 80, i16 80, i16 80, i16 80, i16 79, i16 79, i16 79, i16 79, i16 78, i16 78, i16 78, i16 78, i16 77, i16 77, i16 77, i16 77, i16 76, i16 76, i16 76, i16 76, i16 75, i16 75, i16 75, i16 75, i16 74, i16 74, i16 74, i16 74, i16 73, i16 73, i16 73, i16 72, i16 72, i16 72, i16 72, i16 71, i16 71, i16 71, i16 70, i16 70, i16 70, i16 70, i16 69, i16 69, i16 69, i16 68, i16 68, i16 68, i16 68, i16 67, i16 67, i16 67, i16 66, i16 66, i16 66, i16 65, i16 65, i16 65, i16 65, i16 64, i16 64, i16 64, i16 63, i16 63, i16 63, i16 62, i16 62, i16 62, i16 61, i16 61, i16 61, i16 61, i16 60, i16 60, i16 60, i16 59, i16 59, i16 59, i16 58, i16 58, i16 58, i16 57, i16 57, i16 57, i16 56, i16 56, i16 56, i16 56, i16 55, i16 55, i16 55, i16 54, i16 54, i16 54, i16 53, i16 53, i16 53, i16 52, i16 52, i16 52, i16 51, i16 51, i16 51, i16 51, i16 50, i16 50, i16 50, i16 49, i16 49, i16 49, i16 48, i16 48, i16 48, i16 47, i16 47, i16 47, i16 47, i16 46, i16 46, i16 46, i16 45, i16 45, i16 45, i16 44, i16 44, i16 44, i16 44, i16 43, i16 43, i16 43, i16 42, i16 42, i16 42, i16 42, i16 41, i16 41, i16 41, i16 40, i16 40, i16 40, i16 40, i16 39, i16 39, i16 39, i16 38, i16 38, i16 38, i16 38, i16 37, i16 37, i16 37, i16 37, i16 36, i16 36, i16 36, i16 35, i16 35, i16 35, i16 35, i16 34, i16 34, i16 34, i16 34, i16 33, i16 33, i16 33, i16 33, i16 32, i16 32, i16 32, i16 32, i16 31, i16 31, i16 31, i16 31, i16 30, i16 30, i16 30, i16 30, i16 29, i16 29, i16 29, i16 29, i16 29, i16 28, i16 28, i16 28, i16 28, i16 27, i16 27, i16 27, i16 27, i16 27, i16 26, i16 26, i16 26, i16 26, i16 25, i16 25, i16 25, i16 25, i16 25, i16 24, i16 24, i16 24, i16 24, i16 24, i16 23, i16 23, i16 23, i16 23, i16 23, i16 22, i16 22, i16 22, i16 22, i16 22, i16 22, i16 21, i16 21, i16 21, i16 21, i16 21, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 19, i16 19, i16 19, i16 19, i16 19, i16 19, i16 18, i16 18, i16 18, i16 18, i16 18, i16 18, i16 17, i16 17, i16 17, i16 17, i16 17, i16 17, i16 17, i16 16, i16 16, i16 16, i16 16, i16 16, i16 16, i16 16, i16 15, i16 15, i16 15, i16 15, i16 15, i16 15, i16 15, i16 14, i16 14, i16 14, i16 14, i16 14, i16 14, i16 14, i16 14, i16 13, i16 13, i16 13, i16 13, i16 13, i16 13, i16 13, i16 13, i16 12, i16 12, i16 12, i16 12, i16 12, i16 12, i16 12, i16 12, i16 12, i16 11, i16 11, i16 11, i16 11, i16 11, i16 11, i16 11, i16 11, i16 11, i16 11, i16 10, i16 10, i16 10, i16 10, i16 10, i16 10, i16 10, i16 10, i16 10, i16 10, i16 10, i16 9, i16 9, i16 9, i16 9, i16 9, i16 9, i16 9, i16 9, i16 9, i16 9, i16 9, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 7, i16 7, i16 7, i16 7, i16 7, i16 7, i16 7, i16 7, i16 7, i16 7, i16 7, i16 7, i16 7, i16 7, i16 7, i16 6, i16 6, i16 6, i16 6, i16 6, i16 6, i16 6, i16 6, i16 6, i16 6, i16 6, i16 6, i16 6, i16 6, i16 6, i16 6, i16 6, i16 5, i16 5, i16 5, i16 5, i16 5, i16 5, i16 5, i16 5, i16 5, i16 5, i16 5, i16 5, i16 5, i16 5, i16 5, i16 5, i16 5, i16 5, i16 5, i16 5, i16 5], align 16
@grnsep2 = internal global [512 x i16] [i16 0, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 3, i16 3, i16 3, i16 3, i16 4, i16 4, i16 4, i16 5, i16 5, i16 6, i16 6, i16 7, i16 7, i16 8, i16 8, i16 9, i16 10, i16 11, i16 12, i16 13, i16 14, i16 15, i16 16, i16 17, i16 19, i16 20, i16 22, i16 23, i16 25, i16 27, i16 29, i16 32, i16 34, i16 37, i16 39, i16 42, i16 46, i16 49, i16 53, i16 56, i16 61, i16 65, i16 70, i16 75, i16 80, i16 86, i16 92, i16 99, i16 106, i16 113, i16 121, i16 129, i16 138, i16 148, i16 158, i16 169, i16 180, i16 192, i16 205, i16 219, i16 233, i16 248, i16 265, i16 282, i16 300, i16 319, i16 339, i16 361, i16 384, i16 407, i16 433, i16 460, i16 488, i16 518, i16 549, i16 582, i16 617, i16 654, i16 692, i16 733, i16 776, i16 820, i16 868, i16 917, i16 969, i16 1024, i16 1082, i16 1142, i16 1205, i16 1271, i16 1340, i16 1413, i16 1489, i16 1568, i16 1652, i16 1739, i16 1829, i16 1924, i16 2023, i16 2127, i16 2235, i16 2347, i16 2465, i16 2587, i16 2714, i16 2847, i16 2985, i16 3129, i16 3278, i16 3433, i16 3594, i16 3762, i16 3936, i16 4116, i16 4303, i16 4497, i16 4698, i16 4907, i16 5122, i16 5346, i16 5577, i16 5815, i16 6062, i16 6317, i16 6581, i16 6853, i16 7134, i16 7423, i16 7722, i16 8029, i16 8346, i16 8672, i16 9008, i16 9353, i16 9708, i16 10073, i16 10448, i16 10833, i16 11228, i16 11633, i16 12049, i16 12475, i16 12911, i16 13358, i16 13815, i16 14283, i16 14761, i16 15250, i16 15750, i16 16260, i16 16780, i16 17311, i16 17852, i16 18403, i16 18965, i16 19536, i16 20118, i16 20710, i16 21311, i16 21922, i16 22542, i16 23171, i16 23810, i16 24457, i16 25113, i16 25777, i16 26449, i16 27129, i16 27816, i16 28511, i16 29212, i16 29920, i16 30634, i16 31353, i16 32078, i16 -32728, i16 -31993, i16 -31255, i16 -30512, i16 -29767, i16 -29019, i16 -28269, i16 -27516, i16 -26763, i16 -26009, i16 -25255, i16 -24501, i16 -23748, i16 -22997, i16 -22248, i16 -21501, i16 -20758, i16 -20018, i16 -19283, i16 -18553, i16 -17829, i16 -17111, i16 -16400, i16 -15696, i16 -15000, i16 -14313, i16 -13636, i16 -12968, i16 -12311, i16 -11666, i16 -11032, i16 -10410, i16 -9801, i16 -9206, i16 -8626, i16 -8059, i16 -7508, i16 -6973, i16 -6454, i16 -5952, i16 -5468, i16 -5001, i16 -4553, i16 -4123, i16 -3713, i16 -3322, i16 -2951, i16 -2601, i16 -2272, i16 -1964, i16 -1677, i16 -1412, i16 -1169, i16 -949, i16 -751, i16 -575, i16 -423, i16 -294, i16 -188, i16 -106, i16 -47, i16 -12, i16 -1, i16 -12, i16 -47, i16 -106, i16 -188, i16 -294, i16 -423, i16 -575, i16 -751, i16 -949, i16 -1169, i16 -1412, i16 -1677, i16 -1964, i16 -2272, i16 -2601, i16 -2951, i16 -3322, i16 -3713, i16 -4123, i16 -4553, i16 -5001, i16 -5468, i16 -5952, i16 -6454, i16 -6973, i16 -7508, i16 -8059, i16 -8626, i16 -9206, i16 -9801, i16 -10410, i16 -11032, i16 -11666, i16 -12311, i16 -12968, i16 -13636, i16 -14313, i16 -15000, i16 -15696, i16 -16400, i16 -17111, i16 -17829, i16 -18553, i16 -19283, i16 -20018, i16 -20758, i16 -21501, i16 -22248, i16 -22997, i16 -23748, i16 -24501, i16 -25255, i16 -26009, i16 -26763, i16 -27516, i16 -28269, i16 -29019, i16 -29767, i16 -30512, i16 -31255, i16 -31993, i16 -32728, i16 32078, i16 31353, i16 30634, i16 29920, i16 29212, i16 28511, i16 27816, i16 27129, i16 26449, i16 25777, i16 25113, i16 24457, i16 23810, i16 23171, i16 22542, i16 21922, i16 21311, i16 20710, i16 20118, i16 19536, i16 18965, i16 18403, i16 17852, i16 17311, i16 16780, i16 16260, i16 15750, i16 15250, i16 14761, i16 14283, i16 13815, i16 13358, i16 12911, i16 12475, i16 12049, i16 11633, i16 11228, i16 10833, i16 10448, i16 10073, i16 9708, i16 9353, i16 9008, i16 8672, i16 8346, i16 8029, i16 7722, i16 7423, i16 7134, i16 6853, i16 6581, i16 6317, i16 6062, i16 5815, i16 5577, i16 5346, i16 5122, i16 4907, i16 4698, i16 4497, i16 4303, i16 4116, i16 3936, i16 3762, i16 3594, i16 3433, i16 3278, i16 3129, i16 2985, i16 2847, i16 2714, i16 2587, i16 2465, i16 2347, i16 2235, i16 2127, i16 2023, i16 1924, i16 1829, i16 1739, i16 1652, i16 1568, i16 1489, i16 1413, i16 1340, i16 1271, i16 1205, i16 1142, i16 1082, i16 1024, i16 969, i16 917, i16 868, i16 820, i16 776, i16 733, i16 692, i16 654, i16 617, i16 582, i16 549, i16 518, i16 488, i16 460, i16 433, i16 407, i16 384, i16 361, i16 339, i16 319, i16 300, i16 282, i16 265, i16 248, i16 233, i16 219, i16 205, i16 192, i16 180, i16 169, i16 158, i16 148, i16 138, i16 129, i16 121, i16 113, i16 106, i16 99, i16 92, i16 86, i16 80, i16 75, i16 70, i16 65, i16 61, i16 56, i16 53, i16 49, i16 46, i16 42, i16 39, i16 37, i16 34, i16 32, i16 29, i16 27, i16 25, i16 23, i16 22, i16 20, i16 19, i16 17, i16 16, i16 15, i16 14, i16 13, i16 12, i16 11, i16 10, i16 9, i16 8, i16 8, i16 7, i16 7, i16 6, i16 6, i16 5, i16 5, i16 4, i16 4, i16 4, i16 3, i16 3, i16 3, i16 3, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1], align 16
@.str.5 = private unnamed_addr constant [8 x i8] c"Density\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"Cyan\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"Magenta\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"Yellow\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"Black\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"Unidirectional\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"Microweave\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"DotSize\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"BitsPerPixel\00", align 1
@.str.14 = private unnamed_addr constant [24 x i8] c"mj_colour_print_barrier\00", align 1
@.str.15 = private unnamed_addr constant [21 x i8] c"mj_colour_print_page\00", align 1
@.str.16 = private unnamed_addr constant [17 x i8] c"mj_raster_buffer\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"\1B@\1B(G\01\00\01\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"\1B(i\01\00\01\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"\1B(e\02\00\00\01\00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"\1B(K\02\00\00\01\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"\1BU\01\00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c"\1BU\00\00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c"\1B(U\01\00\05\1B+\01\00", align 1
@.str.24 = private unnamed_addr constant [10 x i8] c"\1B(U\01\00\0A\1B+\01\00", align 1
@.str.25 = private unnamed_addr constant [10 x i8] c"\1B(U\01\00\14\1B+\02\00", align 1
@.str.26 = private unnamed_addr constant [6 x i8] c"\1B(C\02\00\00", align 1
@.str.27 = private unnamed_addr constant [8 x i8] c"\1B(V\02\00\00\00\00", align 1
@.str.28 = private unnamed_addr constant [8 x i8] c"\1B(v\02\00\00\FF\00", align 1
@mj_print_page.spr40 = internal global [8 x i64] [i64 0, i64 64, i64 16384, i64 16448, i64 4194304, i64 4194368, i64 4210688, i64 4210752], align 16
@mj_print_page.spr08 = internal global [8 x i64] [i64 0, i64 8, i64 2048, i64 2056, i64 524288, i64 524296, i64 526336, i64 526344], align 16
@mj_print_page.spr02 = internal global [8 x i64] [i64 0, i64 2, i64 512, i64 514, i64 131072, i64 131074, i64 131584, i64 131586], align 16
@.str.29 = private unnamed_addr constant [8 x i8] c"\1B(v\02\00\01\00\00", align 1
@.str.30 = private unnamed_addr constant [4 x i8] c"\0C\1B@\00", align 1
@mj_v_skip.max_y_step = internal constant i32 4095, align 4
@.str.31 = private unnamed_addr constant [8 x i8] c"\1B(v\02\00\FF\0F\00", align 1
@.str.32 = private unnamed_addr constant [6 x i8] c"\1B(v\02\00\00", align 1
@.str.33 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.34 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@barrier_dat = internal global [144 x i16] [i16 16368, i16 16368, i16 12288, i16 5461, i16 3072, i16 1966, i16 1365, i16 1003, i16 768, i16 606, i16 491, i16 406, i16 16368, i16 16368, i16 9830, i16 4915, i16 2891, i16 1890, i16 1328, i16 983, i16 756, i16 599, i16 486, i16 402, i16 12288, i16 9830, i16 6144, i16 3780, i16 2457, i16 1694, i16 1228, i16 927, i16 722, i16 578, i16 472, i16 393, i16 5461, i16 4915, i16 3780, i16 2730, i16 1966, i16 1445, i16 1092, i16 847, i16 673, i16 546, i16 450, i16 378, i16 3072, i16 2891, i16 2457, i16 1966, i16 1536, i16 1198, i16 945, i16 756, i16 614, i16 506, i16 423, i16 358, i16 1966, i16 1890, i16 1694, i16 1445, i16 1198, i16 983, i16 805, i16 664, i16 552, i16 463, i16 393, i16 336, i16 1365, i16 1328, i16 1228, i16 1092, i16 945, i16 805, i16 682, i16 578, i16 491, i16 420, i16 361, i16 313, i16 1003, i16 983, i16 927, i16 847, i16 756, i16 664, i16 578, i16 501, i16 434, i16 378, i16 329, i16 289, i16 768, i16 756, i16 722, i16 673, i16 614, i16 552, i16 491, i16 434, i16 384, i16 338, i16 299, i16 265, i16 606, i16 599, i16 578, i16 546, i16 506, i16 463, i16 420, i16 378, i16 338, i16 303, i16 271, i16 243, i16 491, i16 486, i16 472, i16 450, i16 423, i16 393, i16 361, i16 329, i16 299, i16 271, i16 245, i16 222, i16 406, i16 402, i16 393, i16 378, i16 358, i16 336, i16 313, i16 289, i16 265, i16 243, i16 222, i16 203], align 16
@mj_raster_cmd.colour_number = internal global [5 x i8] c"\04\01\02\00\00", align 1
@.str.35 = private unnamed_addr constant [3 x i8] c"\1Br\00", align 1
@.str.36 = private unnamed_addr constant [4 x i8] c"\1B.\01\00", align 1

declare i32 @gx_default_install(%struct.gx_device_s*, %struct.gs_state_s*) #0

declare i32 @gx_default_begin_page(%struct.gx_device_s*, %struct.gs_state_s*) #0

declare i32 @gx_default_end_page(%struct.gx_device_s*, i32, %struct.gs_state_s*) #0

; Function Attrs: nounwind uwtable
define internal i32 @mj700v2c_print_page(%struct.gx_device_printer_s* %pdev, %struct._IO_FILE* %prn_stream) #1 {
entry:
  %pdev.addr = alloca %struct.gx_device_printer_s*, align 8
  %prn_stream.addr = alloca %struct._IO_FILE*, align 8
  store %struct.gx_device_printer_s* %pdev, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  store %struct._IO_FILE* %prn_stream, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %0 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call = call i32 @mj_print_page(%struct.gx_device_printer_s* %0, %struct._IO_FILE* %1, i32 1) #4
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
define internal i32 @mj500c_print_page(%struct.gx_device_printer_s* %pdev, %struct._IO_FILE* %prn_stream) #1 {
entry:
  %pdev.addr = alloca %struct.gx_device_printer_s*, align 8
  %prn_stream.addr = alloca %struct._IO_FILE*, align 8
  store %struct.gx_device_printer_s* %pdev, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  store %struct._IO_FILE* %prn_stream, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %0 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call = call i32 @mj_print_page(%struct.gx_device_printer_s* %0, %struct._IO_FILE* %1, i32 2) #4
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @mj6000c_print_page(%struct.gx_device_printer_s* %pdev, %struct._IO_FILE* %prn_stream) #1 {
entry:
  %pdev.addr = alloca %struct.gx_device_printer_s*, align 8
  %prn_stream.addr = alloca %struct._IO_FILE*, align 8
  store %struct.gx_device_printer_s* %pdev, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  store %struct._IO_FILE* %prn_stream, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %0 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call = call i32 @mj_print_page(%struct.gx_device_printer_s* %0, %struct._IO_FILE* %1, i32 3) #4
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @mj8000c_print_page(%struct.gx_device_printer_s* %pdev, %struct._IO_FILE* %prn_stream) #1 {
entry:
  %pdev.addr = alloca %struct.gx_device_printer_s*, align 8
  %prn_stream.addr = alloca %struct._IO_FILE*, align 8
  store %struct.gx_device_printer_s* %pdev, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  store %struct._IO_FILE* %prn_stream, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %0 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call = call i32 @mj_print_page(%struct.gx_device_printer_s* %0, %struct._IO_FILE* %1, i32 4) #4
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @mj700v2c_open(%struct.gx_device_s* %pdev) #1 {
entry:
  %pdev.addr = alloca %struct.gx_device_s*, align 8
  store %struct.gx_device_s* %pdev, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %0 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %call = call i32 @mj_open(%struct.gx_device_s* %0, i32 1) #4
  ret i32 %call
}

declare void @gx_default_get_initial_matrix(%struct.gx_device_s*, %struct.gs_matrix_s*) #0

declare i32 @gx_default_sync_output(%struct.gx_device_s*) #0

declare i32 @gdev_prn_output_page(%struct.gx_device_s*, i32, i32) #0

declare i32 @gdev_prn_close(%struct.gx_device_s*) #0

; Function Attrs: nounwind uwtable
define internal i64 @gdev_mjc_map_rgb_color(%struct.gx_device_s* %pdev, i16* %cv) #1 {
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
  %k = alloca i16, align 2
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
  %4 = load i16, i16* %arrayidx, align 2, !tbaa !5
  store i16 %4, i16* %r, align 2, !tbaa !5
  %5 = load i16*, i16** %cv.addr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds i16, i16* %5, i64 1
  %6 = load i16, i16* %arrayidx1, align 2, !tbaa !5
  store i16 %6, i16* %g, align 2, !tbaa !5
  %7 = load i16*, i16** %cv.addr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds i16, i16* %7, i64 2
  %8 = load i16, i16* %arrayidx2, align 2, !tbaa !5
  store i16 %8, i16* %b, align 2, !tbaa !5
  %9 = load i16, i16* %r, align 2, !tbaa !5
  %conv = zext i16 %9 to i32
  %10 = load i16, i16* %g, align 2, !tbaa !5
  %conv3 = zext i16 %10 to i32
  %and = and i32 %conv, %conv3
  %11 = load i16, i16* %b, align 2, !tbaa !5
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
  br label %cleanup.168

if.else:                                          ; preds = %entry
  %12 = bitcast i16* %c to i8*
  call void @llvm.lifetime.start(i64 2, i8* %12) #2
  %13 = load i16, i16* %r, align 2, !tbaa !5
  %conv9 = zext i16 %13 to i32
  %sub = sub nsw i32 65535, %conv9
  %conv10 = trunc i32 %sub to i16
  store i16 %conv10, i16* %c, align 2, !tbaa !5
  %14 = bitcast i16* %m to i8*
  call void @llvm.lifetime.start(i64 2, i8* %14) #2
  %15 = load i16, i16* %g, align 2, !tbaa !5
  %conv11 = zext i16 %15 to i32
  %sub12 = sub nsw i32 65535, %conv11
  %conv13 = trunc i32 %sub12 to i16
  store i16 %conv13, i16* %m, align 2, !tbaa !5
  %16 = bitcast i16* %y to i8*
  call void @llvm.lifetime.start(i64 2, i8* %16) #2
  %17 = load i16, i16* %b, align 2, !tbaa !5
  %conv14 = zext i16 %17 to i32
  %sub15 = sub nsw i32 65535, %conv14
  %conv16 = trunc i32 %sub15 to i16
  store i16 %conv16, i16* %y, align 2, !tbaa !5
  %18 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %18, i32 0, i32 11
  %depth = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 3
  %19 = load i16, i16* %depth, align 2, !tbaa !7
  %conv17 = zext i16 %19 to i32
  switch i32 %conv17, label %sw.epilog [
    i32 1, label %sw.bb
    i32 8, label %sw.bb.24
    i32 16, label %sw.bb.49
    i32 24, label %sw.bb.61
    i32 32, label %sw.bb.85
  ]

sw.bb:                                            ; preds = %if.else
  %20 = load i16, i16* %c, align 2, !tbaa !5
  %conv18 = zext i16 %20 to i32
  %21 = load i16, i16* %m, align 2, !tbaa !5
  %conv19 = zext i16 %21 to i32
  %or = or i32 %conv18, %conv19
  %22 = load i16, i16* %y, align 2, !tbaa !5
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
  %24 = load i32, i32* %num_components, align 4, !tbaa !20
  %cmp26 = icmp sge i32 %24, 3
  br i1 %cmp26, label %if.then.28, label %if.else.39

if.then.28:                                       ; preds = %sw.bb.24
  %25 = load i16, i16* %c, align 2, !tbaa !5
  %conv29 = zext i16 %25 to i32
  %shr30 = ashr i32 %conv29, 15
  %26 = load i16, i16* %m, align 2, !tbaa !5
  %conv31 = zext i16 %26 to i32
  %shr32 = ashr i32 %conv31, 15
  %shl = shl i32 %shr32, 1
  %add33 = add nsw i32 %shr30, %shl
  %27 = load i16, i16* %y, align 2, !tbaa !5
  %conv34 = zext i16 %27 to i32
  %shr35 = ashr i32 %conv34, 15
  %shl36 = shl i32 %shr35, 2
  %add37 = add nsw i32 %add33, %shl36
  %conv38 = sext i32 %add37 to i64
  store i64 %conv38, i64* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else.39:                                       ; preds = %sw.bb.24
  %28 = load i16, i16* %c, align 2, !tbaa !5
  %conv40 = zext i16 %28 to i64
  %mul41 = mul i64 %conv40, 306
  %29 = load i16, i16* %m, align 2, !tbaa !5
  %conv42 = zext i16 %29 to i64
  %mul43 = mul i64 %conv42, 601
  %add44 = add i64 %mul41, %mul43
  %30 = load i16, i16* %y, align 2, !tbaa !5
  %conv45 = zext i16 %30 to i64
  %mul46 = mul i64 %conv45, 117
  %add47 = add i64 %add44, %mul46
  %shr48 = lshr i64 %add47, 18
  store i64 %shr48, i64* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.49:                                         ; preds = %if.else
  %31 = load i16, i16* %y, align 2, !tbaa !5
  %conv50 = zext i16 %31 to i32
  %shr51 = ashr i32 %conv50, 11
  %32 = load i16, i16* %m, align 2, !tbaa !5
  %conv52 = zext i16 %32 to i32
  %shr53 = ashr i32 %conv52, 10
  %shl54 = shl i32 %shr53, 5
  %add55 = add nsw i32 %shr51, %shl54
  %33 = load i16, i16* %c, align 2, !tbaa !5
  %conv56 = zext i16 %33 to i32
  %shr57 = ashr i32 %conv56, 11
  %shl58 = shl i32 %shr57, 11
  %add59 = add nsw i32 %add55, %shl58
  %conv60 = sext i32 %add59 to i64
  store i64 %conv60, i64* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.61:                                         ; preds = %if.else
  %34 = load i16, i16* %y, align 2, !tbaa !5
  %conv62 = zext i16 %34 to i32
  %mul63 = mul i32 %conv62, 65281
  %add64 = add i32 %mul63, 8388608
  %shr65 = lshr i32 %add64, 24
  %conv66 = trunc i32 %shr65 to i16
  %conv67 = zext i16 %conv66 to i32
  %35 = load i16, i16* %m, align 2, !tbaa !5
  %conv68 = zext i16 %35 to i32
  %mul69 = mul i32 %conv68, 65281
  %add70 = add i32 %mul69, 8388608
  %shr71 = lshr i32 %add70, 24
  %conv72 = trunc i32 %shr71 to i16
  %conv73 = zext i16 %conv72 to i32
  %shl74 = shl i32 %conv73, 8
  %add75 = add nsw i32 %conv67, %shl74
  %conv76 = sext i32 %add75 to i64
  %36 = load i16, i16* %c, align 2, !tbaa !5
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
  %37 = bitcast i16* %k to i8*
  call void @llvm.lifetime.start(i64 2, i8* %37) #2
  %38 = load i16, i16* %r, align 2, !tbaa !5
  %conv86 = zext i16 %38 to i32
  %mul87 = mul i32 %conv86, 65281
  %add88 = add i32 %mul87, 8388608
  %shr89 = lshr i32 %add88, 24
  %conv90 = trunc i32 %shr89 to i16
  store i16 %conv90, i16* %c, align 2, !tbaa !5
  %39 = load i16, i16* %g, align 2, !tbaa !5
  %conv91 = zext i16 %39 to i32
  %mul92 = mul i32 %conv91, 65281
  %add93 = add i32 %mul92, 8388608
  %shr94 = lshr i32 %add93, 24
  %conv95 = trunc i32 %shr94 to i16
  store i16 %conv95, i16* %m, align 2, !tbaa !5
  %40 = load i16, i16* %b, align 2, !tbaa !5
  %conv96 = zext i16 %40 to i32
  %mul97 = mul i32 %conv96, 65281
  %add98 = add i32 %mul97, 8388608
  %shr99 = lshr i32 %add98, 24
  %conv100 = trunc i32 %shr99 to i16
  store i16 %conv100, i16* %y, align 2, !tbaa !5
  call void @mj_color_correct(i16* %c, i16* %m, i16* %y) #4
  %41 = load i16, i16* %c, align 2, !tbaa !5
  %idxprom = zext i16 %41 to i64
  %arrayidx101 = getelementptr inbounds [1024 x i16], [1024 x i16]* @esp_dat_c, i32 0, i64 %idxprom
  %42 = load i16, i16* %arrayidx101, align 2, !tbaa !5
  store i16 %42, i16* %c, align 2, !tbaa !5
  %43 = load i16, i16* %m, align 2, !tbaa !5
  %idxprom102 = zext i16 %43 to i64
  %arrayidx103 = getelementptr inbounds [1024 x i16], [1024 x i16]* @esp_dat_m, i32 0, i64 %idxprom102
  %44 = load i16, i16* %arrayidx103, align 2, !tbaa !5
  store i16 %44, i16* %m, align 2, !tbaa !5
  %45 = load i16, i16* %y, align 2, !tbaa !5
  %idxprom104 = zext i16 %45 to i64
  %arrayidx105 = getelementptr inbounds [1024 x i16], [1024 x i16]* @esp_dat_y, i32 0, i64 %idxprom104
  %46 = load i16, i16* %arrayidx105, align 2, !tbaa !5
  store i16 %46, i16* %y, align 2, !tbaa !5
  %47 = load i16, i16* %c, align 2, !tbaa !5
  %conv106 = zext i16 %47 to i32
  %48 = load i16, i16* %m, align 2, !tbaa !5
  %conv107 = zext i16 %48 to i32
  %cmp108 = icmp sle i32 %conv106, %conv107
  br i1 %cmp108, label %cond.true, label %cond.false.118

cond.true:                                        ; preds = %sw.bb.85
  %49 = load i16, i16* %c, align 2, !tbaa !5
  %conv110 = zext i16 %49 to i32
  %50 = load i16, i16* %y, align 2, !tbaa !5
  %conv111 = zext i16 %50 to i32
  %cmp112 = icmp sle i32 %conv110, %conv111
  br i1 %cmp112, label %cond.true.114, label %cond.false

cond.true.114:                                    ; preds = %cond.true
  %51 = load i16, i16* %c, align 2, !tbaa !5
  %conv115 = zext i16 %51 to i32
  br label %cond.end

cond.false:                                       ; preds = %cond.true
  %52 = load i16, i16* %y, align 2, !tbaa !5
  %conv116 = zext i16 %52 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true.114
  %cond117 = phi i32 [ %conv115, %cond.true.114 ], [ %conv116, %cond.false ]
  br label %cond.end.129

cond.false.118:                                   ; preds = %sw.bb.85
  %53 = load i16, i16* %m, align 2, !tbaa !5
  %conv119 = zext i16 %53 to i32
  %54 = load i16, i16* %y, align 2, !tbaa !5
  %conv120 = zext i16 %54 to i32
  %cmp121 = icmp sle i32 %conv119, %conv120
  br i1 %cmp121, label %cond.true.123, label %cond.false.125

cond.true.123:                                    ; preds = %cond.false.118
  %55 = load i16, i16* %m, align 2, !tbaa !5
  %conv124 = zext i16 %55 to i32
  br label %cond.end.127

cond.false.125:                                   ; preds = %cond.false.118
  %56 = load i16, i16* %y, align 2, !tbaa !5
  %conv126 = zext i16 %56 to i32
  br label %cond.end.127

cond.end.127:                                     ; preds = %cond.false.125, %cond.true.123
  %cond128 = phi i32 [ %conv124, %cond.true.123 ], [ %conv126, %cond.false.125 ]
  br label %cond.end.129

cond.end.129:                                     ; preds = %cond.end.127, %cond.end
  %cond130 = phi i32 [ %cond117, %cond.end ], [ %cond128, %cond.end.127 ]
  %conv131 = trunc i32 %cond130 to i16
  store i16 %conv131, i16* %k, align 2, !tbaa !5
  %57 = load i16, i16* %k, align 2, !tbaa !5
  %conv132 = zext i16 %57 to i32
  %shr133 = ashr i32 %conv132, 4
  %idxprom134 = sext i32 %shr133 to i64
  %arrayidx135 = getelementptr inbounds [1024 x i16], [1024 x i16]* @black_sep, i32 0, i64 %idxprom134
  %58 = load i16, i16* %arrayidx135, align 2, !tbaa !5
  %conv136 = zext i16 %58 to i32
  %shr137 = ashr i32 %conv136, 6
  %conv138 = trunc i32 %shr137 to i16
  store i16 %conv138, i16* %k, align 2, !tbaa !5
  %59 = load i16, i16* %c, align 2, !tbaa !5
  %conv139 = zext i16 %59 to i32
  %shr140 = ashr i32 %conv139, 6
  %conv141 = trunc i32 %shr140 to i16
  store i16 %conv141, i16* %c, align 2, !tbaa !5
  %60 = load i16, i16* %m, align 2, !tbaa !5
  %conv142 = zext i16 %60 to i32
  %shr143 = ashr i32 %conv142, 6
  %conv144 = trunc i32 %shr143 to i16
  store i16 %conv144, i16* %m, align 2, !tbaa !5
  %61 = load i16, i16* %y, align 2, !tbaa !5
  %conv145 = zext i16 %61 to i32
  %shr146 = ashr i32 %conv145, 6
  %conv147 = trunc i32 %shr146 to i16
  store i16 %conv147, i16* %y, align 2, !tbaa !5
  %62 = load i16, i16* %y, align 2, !tbaa !5
  %conv148 = zext i16 %62 to i32
  %63 = load i16, i16* %k, align 2, !tbaa !5
  %conv149 = zext i16 %63 to i32
  %sub150 = sub nsw i32 %conv148, %conv149
  %64 = load i16, i16* %m, align 2, !tbaa !5
  %conv151 = zext i16 %64 to i32
  %65 = load i16, i16* %k, align 2, !tbaa !5
  %conv152 = zext i16 %65 to i32
  %sub153 = sub nsw i32 %conv151, %conv152
  %shl154 = shl i32 %sub153, 8
  %add155 = add nsw i32 %sub150, %shl154
  %conv156 = sext i32 %add155 to i64
  %66 = load i16, i16* %c, align 2, !tbaa !5
  %conv157 = zext i16 %66 to i32
  %67 = load i16, i16* %k, align 2, !tbaa !5
  %conv158 = zext i16 %67 to i32
  %sub159 = sub nsw i32 %conv157, %conv158
  %conv160 = sext i32 %sub159 to i64
  %shl161 = shl i64 %conv160, 16
  %add162 = add i64 %conv156, %shl161
  %68 = load i16, i16* %k, align 2, !tbaa !5
  %conv163 = zext i16 %68 to i64
  %shl164 = shl i64 %conv163, 24
  %add165 = add i64 %add162, %shl164
  store i64 %add165, i64* %retval
  store i32 1, i32* %cleanup.dest.slot
  %69 = bitcast i16* %k to i8*
  call void @llvm.lifetime.end(i64 2, i8* %69) #2
  br label %cleanup

sw.epilog:                                        ; preds = %if.else
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %cond.end.129, %sw.bb.61, %sw.bb.49, %if.else.39, %if.then.28, %sw.bb
  %70 = bitcast i16* %y to i8*
  call void @llvm.lifetime.end(i64 2, i8* %70) #2
  %71 = bitcast i16* %m to i8*
  call void @llvm.lifetime.end(i64 2, i8* %71) #2
  %72 = bitcast i16* %c to i8*
  call void @llvm.lifetime.end(i64 2, i8* %72) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.168 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end

if.end:                                           ; preds = %cleanup.cont
  store i64 0, i64* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.168

cleanup.168:                                      ; preds = %if.end, %cleanup, %if.then
  %73 = bitcast i16* %b to i8*
  call void @llvm.lifetime.end(i64 2, i8* %73) #2
  %74 = bitcast i16* %g to i8*
  call void @llvm.lifetime.end(i64 2, i8* %74) #2
  %75 = bitcast i16* %r to i8*
  call void @llvm.lifetime.end(i64 2, i8* %75) #2
  %76 = load i64, i64* %retval
  ret i64 %76
}

; Function Attrs: nounwind uwtable
define internal i32 @gdev_mjc_map_color_rgb(%struct.gx_device_s* %pdev, i64 %color, i16* %prgb) #1 {
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
  store i64 %color, i64* %color.addr, align 8, !tbaa !21
  store i16* %prgb, i16** %prgb.addr, align 8, !tbaa !1
  %0 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %0, i32 0, i32 11
  %depth = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 3
  %1 = load i16, i16* %depth, align 2, !tbaa !7
  %conv = zext i16 %1 to i32
  switch i32 %conv, label %sw.epilog [
    i32 1, label %sw.bb
    i32 8, label %sw.bb.6
    i32 16, label %sw.bb.37
    i32 24, label %sw.bb.93
    i32 32, label %sw.bb.128
  ]

sw.bb:                                            ; preds = %entry
  %2 = load i64, i64* %color.addr, align 8, !tbaa !21
  %conv1 = trunc i64 %2 to i16
  %conv2 = zext i16 %conv1 to i32
  %xor = xor i32 %conv2, 1
  %sub = sub nsw i32 0, %xor
  %conv3 = trunc i32 %sub to i16
  %3 = load i16*, i16** %prgb.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %3, i64 2
  store i16 %conv3, i16* %arrayidx, align 2, !tbaa !5
  %4 = load i16*, i16** %prgb.addr, align 8, !tbaa !1
  %arrayidx4 = getelementptr inbounds i16, i16* %4, i64 1
  store i16 %conv3, i16* %arrayidx4, align 2, !tbaa !5
  %5 = load i16*, i16** %prgb.addr, align 8, !tbaa !1
  %arrayidx5 = getelementptr inbounds i16, i16* %5, i64 0
  store i16 %conv3, i16* %arrayidx5, align 2, !tbaa !5
  br label %sw.epilog

sw.bb.6:                                          ; preds = %entry
  %6 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %color_info7 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %6, i32 0, i32 11
  %num_components = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info7, i32 0, i32 1
  %7 = load i32, i32* %num_components, align 4, !tbaa !20
  %cmp = icmp sge i32 %7, 3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb.6
  %8 = bitcast i16* %c to i8*
  call void @llvm.lifetime.start(i64 2, i8* %8) #2
  %9 = load i64, i64* %color.addr, align 8, !tbaa !21
  %conv9 = trunc i64 %9 to i16
  %conv10 = zext i16 %conv9 to i32
  %xor11 = xor i32 %conv10, 7
  %conv12 = trunc i32 %xor11 to i16
  store i16 %conv12, i16* %c, align 2, !tbaa !5
  %10 = load i16, i16* %c, align 2, !tbaa !5
  %conv13 = zext i16 %10 to i32
  %and = and i32 %conv13, 1
  %sub14 = sub nsw i32 0, %and
  %conv15 = trunc i32 %sub14 to i16
  %11 = load i16*, i16** %prgb.addr, align 8, !tbaa !1
  %arrayidx16 = getelementptr inbounds i16, i16* %11, i64 0
  store i16 %conv15, i16* %arrayidx16, align 2, !tbaa !5
  %12 = load i16, i16* %c, align 2, !tbaa !5
  %conv17 = zext i16 %12 to i32
  %shr = ashr i32 %conv17, 1
  %and18 = and i32 %shr, 1
  %sub19 = sub nsw i32 0, %and18
  %conv20 = trunc i32 %sub19 to i16
  %13 = load i16*, i16** %prgb.addr, align 8, !tbaa !1
  %arrayidx21 = getelementptr inbounds i16, i16* %13, i64 1
  store i16 %conv20, i16* %arrayidx21, align 2, !tbaa !5
  %14 = load i16, i16* %c, align 2, !tbaa !5
  %conv22 = zext i16 %14 to i32
  %shr23 = ashr i32 %conv22, 2
  %sub24 = sub nsw i32 0, %shr23
  %conv25 = trunc i32 %sub24 to i16
  %15 = load i16*, i16** %prgb.addr, align 8, !tbaa !1
  %arrayidx26 = getelementptr inbounds i16, i16* %15, i64 2
  store i16 %conv25, i16* %arrayidx26, align 2, !tbaa !5
  %16 = bitcast i16* %c to i8*
  call void @llvm.lifetime.end(i64 2, i8* %16) #2
  br label %if.end

if.else:                                          ; preds = %sw.bb.6
  %17 = bitcast i16* %value to i8*
  call void @llvm.lifetime.start(i64 2, i8* %17) #2
  %18 = load i64, i64* %color.addr, align 8, !tbaa !21
  %conv27 = trunc i64 %18 to i16
  %conv28 = zext i16 %conv27 to i32
  %xor29 = xor i32 %conv28, 255
  %conv30 = trunc i32 %xor29 to i16
  store i16 %conv30, i16* %value, align 2, !tbaa !5
  %19 = load i16, i16* %value, align 2, !tbaa !5
  %conv31 = zext i16 %19 to i32
  %shl = shl i32 %conv31, 8
  %20 = load i16, i16* %value, align 2, !tbaa !5
  %conv32 = zext i16 %20 to i32
  %add = add nsw i32 %shl, %conv32
  %conv33 = trunc i32 %add to i16
  %21 = load i16*, i16** %prgb.addr, align 8, !tbaa !1
  %arrayidx34 = getelementptr inbounds i16, i16* %21, i64 2
  store i16 %conv33, i16* %arrayidx34, align 2, !tbaa !5
  %22 = load i16*, i16** %prgb.addr, align 8, !tbaa !1
  %arrayidx35 = getelementptr inbounds i16, i16* %22, i64 1
  store i16 %conv33, i16* %arrayidx35, align 2, !tbaa !5
  %23 = load i16*, i16** %prgb.addr, align 8, !tbaa !1
  %arrayidx36 = getelementptr inbounds i16, i16* %23, i64 0
  store i16 %conv33, i16* %arrayidx36, align 2, !tbaa !5
  %24 = bitcast i16* %value to i8*
  call void @llvm.lifetime.end(i64 2, i8* %24) #2
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %sw.epilog

sw.bb.37:                                         ; preds = %entry
  %25 = bitcast i16* %c38 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %25) #2
  %26 = load i64, i64* %color.addr, align 8, !tbaa !21
  %conv39 = trunc i64 %26 to i16
  %conv40 = zext i16 %conv39 to i32
  %xor41 = xor i32 %conv40, 65535
  %conv42 = trunc i32 %xor41 to i16
  store i16 %conv42, i16* %c38, align 2, !tbaa !5
  %27 = bitcast i16* %value43 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %27) #2
  %28 = load i16, i16* %c38, align 2, !tbaa !5
  %conv44 = zext i16 %28 to i32
  %shr45 = ashr i32 %conv44, 11
  %conv46 = trunc i32 %shr45 to i16
  store i16 %conv46, i16* %value43, align 2, !tbaa !5
  %29 = load i16, i16* %value43, align 2, !tbaa !5
  %conv47 = zext i16 %29 to i32
  %shl48 = shl i32 %conv47, 11
  %30 = load i16, i16* %value43, align 2, !tbaa !5
  %conv49 = zext i16 %30 to i32
  %shl50 = shl i32 %conv49, 6
  %add51 = add nsw i32 %shl48, %shl50
  %31 = load i16, i16* %value43, align 2, !tbaa !5
  %conv52 = zext i16 %31 to i32
  %shl53 = shl i32 %conv52, 1
  %add54 = add nsw i32 %add51, %shl53
  %32 = load i16, i16* %value43, align 2, !tbaa !5
  %conv55 = zext i16 %32 to i32
  %shr56 = ashr i32 %conv55, 4
  %add57 = add nsw i32 %add54, %shr56
  %shr58 = ashr i32 %add57, 0
  %conv59 = trunc i32 %shr58 to i16
  %33 = load i16*, i16** %prgb.addr, align 8, !tbaa !1
  %arrayidx60 = getelementptr inbounds i16, i16* %33, i64 0
  store i16 %conv59, i16* %arrayidx60, align 2, !tbaa !5
  %34 = load i16, i16* %c38, align 2, !tbaa !5
  %conv61 = zext i16 %34 to i32
  %shr62 = ashr i32 %conv61, 6
  %and63 = and i32 %shr62, 63
  %conv64 = trunc i32 %and63 to i16
  store i16 %conv64, i16* %value43, align 2, !tbaa !5
  %35 = load i16, i16* %value43, align 2, !tbaa !5
  %conv65 = zext i16 %35 to i32
  %shl66 = shl i32 %conv65, 10
  %36 = load i16, i16* %value43, align 2, !tbaa !5
  %conv67 = zext i16 %36 to i32
  %shl68 = shl i32 %conv67, 4
  %add69 = add nsw i32 %shl66, %shl68
  %37 = load i16, i16* %value43, align 2, !tbaa !5
  %conv70 = zext i16 %37 to i32
  %shr71 = ashr i32 %conv70, 2
  %add72 = add nsw i32 %add69, %shr71
  %shr73 = ashr i32 %add72, 0
  %conv74 = trunc i32 %shr73 to i16
  %38 = load i16*, i16** %prgb.addr, align 8, !tbaa !1
  %arrayidx75 = getelementptr inbounds i16, i16* %38, i64 1
  store i16 %conv74, i16* %arrayidx75, align 2, !tbaa !5
  %39 = load i16, i16* %c38, align 2, !tbaa !5
  %conv76 = zext i16 %39 to i32
  %and77 = and i32 %conv76, 31
  %conv78 = trunc i32 %and77 to i16
  store i16 %conv78, i16* %value43, align 2, !tbaa !5
  %40 = load i16, i16* %value43, align 2, !tbaa !5
  %conv79 = zext i16 %40 to i32
  %shl80 = shl i32 %conv79, 11
  %41 = load i16, i16* %value43, align 2, !tbaa !5
  %conv81 = zext i16 %41 to i32
  %shl82 = shl i32 %conv81, 6
  %add83 = add nsw i32 %shl80, %shl82
  %42 = load i16, i16* %value43, align 2, !tbaa !5
  %conv84 = zext i16 %42 to i32
  %shl85 = shl i32 %conv84, 1
  %add86 = add nsw i32 %add83, %shl85
  %43 = load i16, i16* %value43, align 2, !tbaa !5
  %conv87 = zext i16 %43 to i32
  %shr88 = ashr i32 %conv87, 4
  %add89 = add nsw i32 %add86, %shr88
  %shr90 = ashr i32 %add89, 0
  %conv91 = trunc i32 %shr90 to i16
  %44 = load i16*, i16** %prgb.addr, align 8, !tbaa !1
  %arrayidx92 = getelementptr inbounds i16, i16* %44, i64 2
  store i16 %conv91, i16* %arrayidx92, align 2, !tbaa !5
  %45 = bitcast i16* %value43 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %45) #2
  %46 = bitcast i16* %c38 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %46) #2
  br label %sw.epilog

sw.bb.93:                                         ; preds = %entry
  %47 = bitcast i16* %c94 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %47) #2
  %48 = load i64, i64* %color.addr, align 8, !tbaa !21
  %conv95 = trunc i64 %48 to i16
  %conv96 = zext i16 %conv95 to i32
  %xor97 = xor i32 %conv96, 16777215
  %conv98 = trunc i32 %xor97 to i16
  store i16 %conv98, i16* %c94, align 2, !tbaa !5
  %49 = load i16, i16* %c94, align 2, !tbaa !5
  %conv99 = zext i16 %49 to i32
  %shr100 = ashr i32 %conv99, 16
  %shl101 = shl i32 %shr100, 8
  %50 = load i16, i16* %c94, align 2, !tbaa !5
  %conv102 = zext i16 %50 to i32
  %shr103 = ashr i32 %conv102, 16
  %shr104 = ashr i32 %shr103, 0
  %add105 = add nsw i32 %shl101, %shr104
  %conv106 = trunc i32 %add105 to i16
  %51 = load i16*, i16** %prgb.addr, align 8, !tbaa !1
  %arrayidx107 = getelementptr inbounds i16, i16* %51, i64 0
  store i16 %conv106, i16* %arrayidx107, align 2, !tbaa !5
  %52 = load i16, i16* %c94, align 2, !tbaa !5
  %conv108 = zext i16 %52 to i32
  %shr109 = ashr i32 %conv108, 8
  %and110 = and i32 %shr109, 255
  %shl111 = shl i32 %and110, 8
  %53 = load i16, i16* %c94, align 2, !tbaa !5
  %conv112 = zext i16 %53 to i32
  %shr113 = ashr i32 %conv112, 8
  %and114 = and i32 %shr113, 255
  %shr115 = ashr i32 %and114, 0
  %add116 = add nsw i32 %shl111, %shr115
  %conv117 = trunc i32 %add116 to i16
  %54 = load i16*, i16** %prgb.addr, align 8, !tbaa !1
  %arrayidx118 = getelementptr inbounds i16, i16* %54, i64 1
  store i16 %conv117, i16* %arrayidx118, align 2, !tbaa !5
  %55 = load i16, i16* %c94, align 2, !tbaa !5
  %conv119 = zext i16 %55 to i32
  %and120 = and i32 %conv119, 255
  %shl121 = shl i32 %and120, 8
  %56 = load i16, i16* %c94, align 2, !tbaa !5
  %conv122 = zext i16 %56 to i32
  %and123 = and i32 %conv122, 255
  %shr124 = ashr i32 %and123, 0
  %add125 = add nsw i32 %shl121, %shr124
  %conv126 = trunc i32 %add125 to i16
  %57 = load i16*, i16** %prgb.addr, align 8, !tbaa !1
  %arrayidx127 = getelementptr inbounds i16, i16* %57, i64 2
  store i16 %conv126, i16* %arrayidx127, align 2, !tbaa !5
  %58 = bitcast i16* %c94 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %58) #2
  br label %sw.epilog

sw.bb.128:                                        ; preds = %entry
  %59 = bitcast i16* %w to i8*
  call void @llvm.lifetime.start(i64 2, i8* %59) #2
  %60 = load i64, i64* %color.addr, align 8, !tbaa !21
  %shr129 = lshr i64 %60, 24
  %shl130 = shl i64 %shr129, 8
  %61 = load i64, i64* %color.addr, align 8, !tbaa !21
  %shr131 = lshr i64 %61, 24
  %shr132 = lshr i64 %shr131, 0
  %add133 = add i64 %shl130, %shr132
  %sub134 = sub i64 65535, %add133
  %conv135 = trunc i64 %sub134 to i16
  store i16 %conv135, i16* %w, align 2, !tbaa !5
  %62 = load i16, i16* %w, align 2, !tbaa !5
  %conv136 = zext i16 %62 to i64
  %63 = load i64, i64* %color.addr, align 8, !tbaa !21
  %shr137 = lshr i64 %63, 16
  %and138 = and i64 %shr137, 255
  %shl139 = shl i64 %and138, 8
  %64 = load i64, i64* %color.addr, align 8, !tbaa !21
  %shr140 = lshr i64 %64, 16
  %and141 = and i64 %shr140, 255
  %shr142 = lshr i64 %and141, 0
  %add143 = add i64 %shl139, %shr142
  %sub144 = sub i64 %conv136, %add143
  %conv145 = trunc i64 %sub144 to i16
  %65 = load i16*, i16** %prgb.addr, align 8, !tbaa !1
  %arrayidx146 = getelementptr inbounds i16, i16* %65, i64 0
  store i16 %conv145, i16* %arrayidx146, align 2, !tbaa !5
  %66 = load i16, i16* %w, align 2, !tbaa !5
  %conv147 = zext i16 %66 to i64
  %67 = load i64, i64* %color.addr, align 8, !tbaa !21
  %shr148 = lshr i64 %67, 8
  %and149 = and i64 %shr148, 255
  %shl150 = shl i64 %and149, 8
  %68 = load i64, i64* %color.addr, align 8, !tbaa !21
  %shr151 = lshr i64 %68, 8
  %and152 = and i64 %shr151, 255
  %shr153 = lshr i64 %and152, 0
  %add154 = add i64 %shl150, %shr153
  %sub155 = sub i64 %conv147, %add154
  %conv156 = trunc i64 %sub155 to i16
  %69 = load i16*, i16** %prgb.addr, align 8, !tbaa !1
  %arrayidx157 = getelementptr inbounds i16, i16* %69, i64 1
  store i16 %conv156, i16* %arrayidx157, align 2, !tbaa !5
  %70 = load i16, i16* %w, align 2, !tbaa !5
  %conv158 = zext i16 %70 to i64
  %71 = load i64, i64* %color.addr, align 8, !tbaa !21
  %and159 = and i64 %71, 255
  %shl160 = shl i64 %and159, 8
  %72 = load i64, i64* %color.addr, align 8, !tbaa !21
  %and161 = and i64 %72, 255
  %shr162 = lshr i64 %and161, 0
  %add163 = add i64 %shl160, %shr162
  %sub164 = sub i64 %conv158, %add163
  %conv165 = trunc i64 %sub164 to i16
  %73 = load i16*, i16** %prgb.addr, align 8, !tbaa !1
  %arrayidx166 = getelementptr inbounds i16, i16* %73, i64 2
  store i16 %conv165, i16* %arrayidx166, align 2, !tbaa !5
  %74 = bitcast i16* %w to i8*
  call void @llvm.lifetime.end(i64 2, i8* %74) #2
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %sw.bb.128, %sw.bb.93, %sw.bb.37, %if.end, %sw.bb
  ret i32 0
}

declare i32 @gx_default_get_bits(%struct.gx_device_s*, i32, i8*, i8**) #0

; Function Attrs: nounwind uwtable
define internal i32 @mj_get_params(%struct.gx_device_s* %pdev, %struct.gs_param_list_s* %plist) #1 {
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
  %call = call i32 @gdev_prn_get_params(%struct.gx_device_s* %1, %struct.gs_param_list_s* %2) #4
  store i32 %call, i32* %code, align 4, !tbaa !22
  %3 = load i32, i32* %code, align 4, !tbaa !22
  %cmp = icmp slt i32 %3, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %4 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %6 = bitcast %struct.gx_device_s* %5 to %struct.gx_device_mj_s*
  %density = getelementptr inbounds %struct.gx_device_mj_s, %struct.gx_device_mj_s* %6, i32 0, i32 69
  %call1 = call i32 @param_write_int(%struct.gs_param_list_s* %4, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), i32* %density) #4
  store i32 %call1, i32* %code, align 4, !tbaa !22
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.then, label %lor.lhs.false.3

lor.lhs.false.3:                                  ; preds = %lor.lhs.false
  %7 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %8 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %9 = bitcast %struct.gx_device_s* %8 to %struct.gx_device_mj_s*
  %cyan = getelementptr inbounds %struct.gx_device_mj_s, %struct.gx_device_mj_s* %9, i32 0, i32 70
  %call4 = call i32 @param_write_int(%struct.gs_param_list_s* %7, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i32* %cyan) #4
  store i32 %call4, i32* %code, align 4, !tbaa !22
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %if.then, label %lor.lhs.false.6

lor.lhs.false.6:                                  ; preds = %lor.lhs.false.3
  %10 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %11 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %12 = bitcast %struct.gx_device_s* %11 to %struct.gx_device_mj_s*
  %magenta = getelementptr inbounds %struct.gx_device_mj_s, %struct.gx_device_mj_s* %12, i32 0, i32 71
  %call7 = call i32 @param_write_int(%struct.gs_param_list_s* %10, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i32 0), i32* %magenta) #4
  store i32 %call7, i32* %code, align 4, !tbaa !22
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %if.then, label %lor.lhs.false.9

lor.lhs.false.9:                                  ; preds = %lor.lhs.false.6
  %13 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %14 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %15 = bitcast %struct.gx_device_s* %14 to %struct.gx_device_mj_s*
  %yellow = getelementptr inbounds %struct.gx_device_mj_s, %struct.gx_device_mj_s* %15, i32 0, i32 72
  %call10 = call i32 @param_write_int(%struct.gs_param_list_s* %13, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i32 0, i32 0), i32* %yellow) #4
  store i32 %call10, i32* %code, align 4, !tbaa !22
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %if.then, label %lor.lhs.false.12

lor.lhs.false.12:                                 ; preds = %lor.lhs.false.9
  %16 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %17 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %18 = bitcast %struct.gx_device_s* %17 to %struct.gx_device_mj_s*
  %black = getelementptr inbounds %struct.gx_device_mj_s, %struct.gx_device_mj_s* %18, i32 0, i32 73
  %call13 = call i32 @param_write_int(%struct.gs_param_list_s* %16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0), i32* %black) #4
  store i32 %call13, i32* %code, align 4, !tbaa !22
  %cmp14 = icmp slt i32 %call13, 0
  br i1 %cmp14, label %if.then, label %lor.lhs.false.15

lor.lhs.false.15:                                 ; preds = %lor.lhs.false.12
  %19 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %20 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %21 = bitcast %struct.gx_device_s* %20 to %struct.gx_device_mj_s*
  %direction = getelementptr inbounds %struct.gx_device_mj_s, %struct.gx_device_mj_s* %21, i32 0, i32 74
  %call16 = call i32 @param_write_bool(%struct.gs_param_list_s* %19, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i32 0, i32 0), i32* %direction) #4
  store i32 %call16, i32* %code, align 4, !tbaa !22
  %cmp17 = icmp slt i32 %call16, 0
  br i1 %cmp17, label %if.then, label %lor.lhs.false.18

lor.lhs.false.18:                                 ; preds = %lor.lhs.false.15
  %22 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %23 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %24 = bitcast %struct.gx_device_s* %23 to %struct.gx_device_mj_s*
  %microweave = getelementptr inbounds %struct.gx_device_mj_s, %struct.gx_device_mj_s* %24, i32 0, i32 75
  %call19 = call i32 @param_write_bool(%struct.gs_param_list_s* %22, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i32 0, i32 0), i32* %microweave) #4
  store i32 %call19, i32* %code, align 4, !tbaa !22
  %cmp20 = icmp slt i32 %call19, 0
  br i1 %cmp20, label %if.then, label %lor.lhs.false.21

lor.lhs.false.21:                                 ; preds = %lor.lhs.false.18
  %25 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %26 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %27 = bitcast %struct.gx_device_s* %26 to %struct.gx_device_mj_s*
  %dotsize = getelementptr inbounds %struct.gx_device_mj_s, %struct.gx_device_mj_s* %27, i32 0, i32 76
  %call22 = call i32 @param_write_int(%struct.gs_param_list_s* %25, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i32 0, i32 0), i32* %dotsize) #4
  store i32 %call22, i32* %code, align 4, !tbaa !22
  %cmp23 = icmp slt i32 %call22, 0
  br i1 %cmp23, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.21, %lor.lhs.false.18, %lor.lhs.false.15, %lor.lhs.false.12, %lor.lhs.false.9, %lor.lhs.false.6, %lor.lhs.false.3, %lor.lhs.false, %entry
  %28 = load i32, i32* %code, align 4, !tbaa !22
  store i32 %28, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false.21
  %29 = load i32, i32* %code, align 4, !tbaa !22
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
define internal i32 @mj700v2c_put_params(%struct.gx_device_s* %pdev, %struct.gs_param_list_s* %plist) #1 {
entry:
  %pdev.addr = alloca %struct.gx_device_s*, align 8
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  store %struct.gx_device_s* %pdev, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %0 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %1 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call = call i32 @mj_put_params(%struct.gx_device_s* %0, %struct.gs_param_list_s* %1, i32 1) #4
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @mj_open(%struct.gx_device_s* %pdev, i32 %ptype) #1 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_s*, align 8
  %ptype.addr = alloca i32, align 4
  %xdpi = alloca i32, align 4
  %ydpi = alloca i32, align 4
  %m = alloca float*, align 8
  %paper_size = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %pdev, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  store i32 %ptype, i32* %ptype.addr, align 4, !tbaa !22
  %0 = bitcast i32* %xdpi to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %HWResolution = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %1, i32 0, i32 22
  %arrayidx = getelementptr inbounds [2 x float], [2 x float]* %HWResolution, i32 0, i64 0
  %2 = load float, float* %arrayidx, align 4, !tbaa !23
  %conv = fptosi float %2 to i32
  store i32 %conv, i32* %xdpi, align 4, !tbaa !22
  %3 = bitcast i32* %ydpi to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %HWResolution1 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %4, i32 0, i32 22
  %arrayidx2 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution1, i32 0, i64 1
  %5 = load float, float* %arrayidx2, align 4, !tbaa !23
  %conv3 = fptosi float %5 to i32
  store i32 %conv3, i32* %ydpi, align 4, !tbaa !22
  %6 = bitcast float** %m to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #2
  %7 = bitcast i32* %paper_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #2
  %8 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %call = call i32 @gdev_mjc_paper_size(%struct.gx_device_s* %8) #4
  store i32 %call, i32* %paper_size, align 4, !tbaa !22
  %9 = load i32, i32* %paper_size, align 4, !tbaa !22
  %cmp = icmp eq i32 %9, 28
  br i1 %cmp, label %if.then, label %if.else.13

if.then:                                          ; preds = %entry
  %10 = load i32, i32* %ptype.addr, align 4, !tbaa !22
  %cmp5 = icmp eq i32 %10, 3
  br i1 %cmp5, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %if.then
  store float* getelementptr inbounds ([4 x float], [4 x float]* @mj_open.mj6000c_a2, i32 0, i32 0), float** %m, align 8, !tbaa !1
  br label %if.end.12

if.else:                                          ; preds = %if.then
  %11 = load i32, i32* %ptype.addr, align 4, !tbaa !22
  %cmp8 = icmp eq i32 %11, 4
  br i1 %cmp8, label %if.then.10, label %if.else.11

if.then.10:                                       ; preds = %if.else
  store float* getelementptr inbounds ([4 x float], [4 x float]* @mj_open.mj8000c_a2, i32 0, i32 0), float** %m, align 8, !tbaa !1
  br label %if.end

if.else.11:                                       ; preds = %if.else
  store float* getelementptr inbounds ([4 x float], [4 x float]* @mj_open.mj_margin, i32 0, i32 0), float** %m, align 8, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.else.11, %if.then.10
  br label %if.end.12

if.end.12:                                        ; preds = %if.end, %if.then.7
  br label %if.end.14

if.else.13:                                       ; preds = %entry
  store float* getelementptr inbounds ([4 x float], [4 x float]* @mj_open.mj_margin, i32 0, i32 0), float** %m, align 8, !tbaa !1
  br label %if.end.14

if.end.14:                                        ; preds = %if.else.13, %if.end.12
  %12 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %13 = load float*, float** %m, align 8, !tbaa !1
  call void @gx_device_set_margins(%struct.gx_device_s* %12, float* %13, i32 1) #4
  %14 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %15 = bitcast %struct.gx_device_s* %14 to %struct.gx_device_mj_s*
  %colorcomp = getelementptr inbounds %struct.gx_device_mj_s, %struct.gx_device_mj_s* %15, i32 0, i32 68
  %16 = load i32, i32* %colorcomp, align 4, !tbaa !25
  %cmp15 = icmp eq i32 %16, 3
  br i1 %cmp15, label %if.then.17, label %if.else.22

if.then.17:                                       ; preds = %if.end.14
  %17 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %18 = bitcast %struct.gx_device_s* %17 to %struct.gx_device_mj_s*
  %density = getelementptr inbounds %struct.gx_device_mj_s, %struct.gx_device_mj_s* %18, i32 0, i32 69
  %19 = load i32, i32* %density, align 4, !tbaa !30
  %mul = mul nsw i32 %19, 720
  %20 = load i32, i32* %ydpi, align 4, !tbaa !22
  %div = sdiv i32 %mul, %20
  %conv18 = sitofp i32 %div to double
  %mul19 = fmul double %conv18, 1.500000e+00
  %conv20 = fptosi double %mul19 to i32
  %21 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %22 = bitcast %struct.gx_device_s* %21 to %struct.gx_device_mj_s*
  %density21 = getelementptr inbounds %struct.gx_device_mj_s, %struct.gx_device_mj_s* %22, i32 0, i32 69
  store i32 %conv20, i32* %density21, align 4, !tbaa !30
  br label %if.end.27

if.else.22:                                       ; preds = %if.end.14
  %23 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %24 = bitcast %struct.gx_device_s* %23 to %struct.gx_device_mj_s*
  %density23 = getelementptr inbounds %struct.gx_device_mj_s, %struct.gx_device_mj_s* %24, i32 0, i32 69
  %25 = load i32, i32* %density23, align 4, !tbaa !30
  %mul24 = mul nsw i32 %25, 720
  %26 = load i32, i32* %ydpi, align 4, !tbaa !22
  %div25 = sdiv i32 %mul24, %26
  %27 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %28 = bitcast %struct.gx_device_s* %27 to %struct.gx_device_mj_s*
  %density26 = getelementptr inbounds %struct.gx_device_mj_s, %struct.gx_device_mj_s* %28, i32 0, i32 69
  store i32 %div25, i32* %density26, align 4, !tbaa !30
  br label %if.end.27

if.end.27:                                        ; preds = %if.else.22, %if.then.17
  %29 = load i32, i32* %xdpi, align 4, !tbaa !22
  %cmp28 = icmp eq i32 %29, 180
  br i1 %cmp28, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %if.end.27
  %30 = load i32, i32* %ydpi, align 4, !tbaa !22
  %cmp30 = icmp eq i32 %30, 180
  br i1 %cmp30, label %if.end.56, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %if.end.27
  %31 = load i32, i32* %xdpi, align 4, !tbaa !22
  %cmp32 = icmp eq i32 %31, 360
  br i1 %cmp32, label %land.lhs.true.34, label %lor.lhs.false.37

land.lhs.true.34:                                 ; preds = %lor.lhs.false
  %32 = load i32, i32* %ydpi, align 4, !tbaa !22
  %cmp35 = icmp eq i32 %32, 360
  br i1 %cmp35, label %if.end.56, label %lor.lhs.false.37

lor.lhs.false.37:                                 ; preds = %land.lhs.true.34, %lor.lhs.false
  %33 = load i32, i32* %xdpi, align 4, !tbaa !22
  %cmp38 = icmp eq i32 %33, 720
  br i1 %cmp38, label %land.lhs.true.40, label %lor.lhs.false.43

land.lhs.true.40:                                 ; preds = %lor.lhs.false.37
  %34 = load i32, i32* %ydpi, align 4, !tbaa !22
  %cmp41 = icmp eq i32 %34, 720
  br i1 %cmp41, label %if.end.56, label %lor.lhs.false.43

lor.lhs.false.43:                                 ; preds = %land.lhs.true.40, %lor.lhs.false.37
  %35 = load i32, i32* %xdpi, align 4, !tbaa !22
  %cmp44 = icmp eq i32 %35, 360
  br i1 %cmp44, label %land.lhs.true.46, label %lor.lhs.false.49

land.lhs.true.46:                                 ; preds = %lor.lhs.false.43
  %36 = load i32, i32* %ydpi, align 4, !tbaa !22
  %cmp47 = icmp eq i32 %36, 720
  br i1 %cmp47, label %if.end.56, label %lor.lhs.false.49

lor.lhs.false.49:                                 ; preds = %land.lhs.true.46, %lor.lhs.false.43
  %37 = load i32, i32* %xdpi, align 4, !tbaa !22
  %cmp50 = icmp eq i32 %37, 720
  br i1 %cmp50, label %land.lhs.true.52, label %if.then.55

land.lhs.true.52:                                 ; preds = %lor.lhs.false.49
  %38 = load i32, i32* %ydpi, align 4, !tbaa !22
  %cmp53 = icmp eq i32 %38, 360
  br i1 %cmp53, label %if.end.56, label %if.then.55

if.then.55:                                       ; preds = %land.lhs.true.52, %lor.lhs.false.49
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.56:                                        ; preds = %land.lhs.true.52, %land.lhs.true.46, %land.lhs.true.40, %land.lhs.true.34, %land.lhs.true
  %39 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %call57 = call i32 @gdev_prn_open(%struct.gx_device_s* %39) #4
  store i32 %call57, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.56, %if.then.55
  %40 = bitcast i32* %paper_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %40) #2
  %41 = bitcast float** %m to i8*
  call void @llvm.lifetime.end(i64 8, i8* %41) #2
  %42 = bitcast i32* %ydpi to i8*
  call void @llvm.lifetime.end(i64 4, i8* %42) #2
  %43 = bitcast i32* %xdpi to i8*
  call void @llvm.lifetime.end(i64 4, i8* %43) #2
  %44 = load i32, i32* %retval
  ret i32 %44
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define internal i32 @gdev_mjc_paper_size(%struct.gx_device_s* %dev) #1 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %0 = bitcast i32* %width to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %MediaSize = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %1, i32 0, i32 19
  %arrayidx = getelementptr inbounds [2 x float], [2 x float]* %MediaSize, i32 0, i64 0
  %2 = load float, float* %arrayidx, align 4, !tbaa !23
  %conv = fptosi float %2 to i32
  store i32 %conv, i32* %width, align 4, !tbaa !22
  %3 = bitcast i32* %height to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %MediaSize1 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %4, i32 0, i32 19
  %arrayidx2 = getelementptr inbounds [2 x float], [2 x float]* %MediaSize1, i32 0, i64 1
  %5 = load float, float* %arrayidx2, align 4, !tbaa !23
  %conv3 = fptosi float %5 to i32
  store i32 %conv3, i32* %height, align 4, !tbaa !22
  %6 = load i32, i32* %width, align 4, !tbaa !22
  %cmp = icmp eq i32 %6, 1190
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %7 = load i32, i32* %height, align 4, !tbaa !22
  %cmp5 = icmp eq i32 %7, 1684
  br i1 %cmp5, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  store i32 28, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %land.lhs.true, %entry
  store i32 26, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then
  %8 = bitcast i32* %height to i8*
  call void @llvm.lifetime.end(i64 4, i8* %8) #2
  %9 = bitcast i32* %width to i8*
  call void @llvm.lifetime.end(i64 4, i8* %9) #2
  %10 = load i32, i32* %retval
  ret i32 %10
}

declare void @gx_device_set_margins(%struct.gx_device_s*, float*, i32) #0

declare i32 @gdev_prn_open(%struct.gx_device_s*) #0

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define internal void @mj_color_correct(i16* %Rptr, i16* %Gptr, i16* %Bptr) #1 {
entry:
  %Rptr.addr = alloca i16*, align 8
  %Gptr.addr = alloca i16*, align 8
  %Bptr.addr = alloca i16*, align 8
  %R = alloca i16, align 2
  %G = alloca i16, align 2
  %B = alloca i16, align 2
  %C = alloca i16, align 2
  %M = alloca i16, align 2
  %Y = alloca i16, align 2
  %H = alloca i16, align 2
  %D = alloca i16, align 2
  %Wa = alloca i16, align 2
  %S = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  %work = alloca i16, align 2
  store i16* %Rptr, i16** %Rptr.addr, align 8, !tbaa !1
  store i16* %Gptr, i16** %Gptr.addr, align 8, !tbaa !1
  store i16* %Bptr, i16** %Bptr.addr, align 8, !tbaa !1
  %0 = bitcast i16* %R to i8*
  call void @llvm.lifetime.start(i64 2, i8* %0) #2
  %1 = bitcast i16* %G to i8*
  call void @llvm.lifetime.start(i64 2, i8* %1) #2
  %2 = bitcast i16* %B to i8*
  call void @llvm.lifetime.start(i64 2, i8* %2) #2
  %3 = bitcast i16* %C to i8*
  call void @llvm.lifetime.start(i64 2, i8* %3) #2
  %4 = bitcast i16* %M to i8*
  call void @llvm.lifetime.start(i64 2, i8* %4) #2
  %5 = bitcast i16* %Y to i8*
  call void @llvm.lifetime.start(i64 2, i8* %5) #2
  %6 = bitcast i16* %H to i8*
  call void @llvm.lifetime.start(i64 2, i8* %6) #2
  %7 = bitcast i16* %D to i8*
  call void @llvm.lifetime.start(i64 2, i8* %7) #2
  %8 = bitcast i16* %Wa to i8*
  call void @llvm.lifetime.start(i64 2, i8* %8) #2
  %9 = bitcast i64* %S to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #2
  %10 = load i16*, i16** %Rptr.addr, align 8, !tbaa !1
  %11 = load i16, i16* %10, align 2, !tbaa !5
  store i16 %11, i16* %R, align 2, !tbaa !5
  %12 = load i16*, i16** %Gptr.addr, align 8, !tbaa !1
  %13 = load i16, i16* %12, align 2, !tbaa !5
  store i16 %13, i16* %G, align 2, !tbaa !5
  %14 = load i16*, i16** %Bptr.addr, align 8, !tbaa !1
  %15 = load i16, i16* %14, align 2, !tbaa !5
  store i16 %15, i16* %B, align 2, !tbaa !5
  %16 = load i16, i16* %R, align 2, !tbaa !5
  %conv = sext i16 %16 to i32
  %17 = load i16, i16* %G, align 2, !tbaa !5
  %conv1 = sext i16 %17 to i32
  %cmp = icmp eq i32 %conv, %conv1
  br i1 %cmp, label %if.then, label %if.end.25

if.then:                                          ; preds = %entry
  %18 = load i16, i16* %G, align 2, !tbaa !5
  %conv3 = sext i16 %18 to i32
  %19 = load i16, i16* %B, align 2, !tbaa !5
  %conv4 = sext i16 %19 to i32
  %cmp5 = icmp eq i32 %conv3, %conv4
  br i1 %cmp5, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %if.then
  %20 = load i16, i16* %R, align 2, !tbaa !5
  %idxprom = sext i16 %20 to i64
  %arrayidx = getelementptr inbounds [256 x i16], [256 x i16]* @v_tbl, i32 0, i64 %idxprom
  %21 = load i16, i16* %arrayidx, align 2, !tbaa !5
  %conv8 = sext i16 %21 to i32
  %sub = sub nsw i32 1023, %conv8
  %conv9 = trunc i32 %sub to i16
  store i16 %conv9, i16* %Y, align 2, !tbaa !5
  store i16 %conv9, i16* %M, align 2, !tbaa !5
  store i16 %conv9, i16* %C, align 2, !tbaa !5
  %22 = load i16, i16* %C, align 2, !tbaa !5
  %23 = load i16*, i16** %Rptr.addr, align 8, !tbaa !1
  store i16 %22, i16* %23, align 2, !tbaa !5
  %24 = load i16, i16* %M, align 2, !tbaa !5
  %25 = load i16*, i16** %Gptr.addr, align 8, !tbaa !1
  store i16 %24, i16* %25, align 2, !tbaa !5
  %26 = load i16, i16* %Y, align 2, !tbaa !5
  %27 = load i16*, i16** %Bptr.addr, align 8, !tbaa !1
  store i16 %26, i16* %27, align 2, !tbaa !5
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %if.then
  %28 = load i16, i16* %G, align 2, !tbaa !5
  %conv10 = sext i16 %28 to i32
  %29 = load i16, i16* %B, align 2, !tbaa !5
  %conv11 = sext i16 %29 to i32
  %cmp12 = icmp sgt i32 %conv10, %conv11
  br i1 %cmp12, label %if.then.14, label %if.else.19

if.then.14:                                       ; preds = %if.else
  %30 = load i16, i16* %G, align 2, !tbaa !5
  %conv15 = sext i16 %30 to i32
  %31 = load i16, i16* %B, align 2, !tbaa !5
  %conv16 = sext i16 %31 to i32
  %sub17 = sub nsw i32 %conv15, %conv16
  %conv18 = trunc i32 %sub17 to i16
  store i16 %conv18, i16* %D, align 2, !tbaa !5
  %32 = load i16, i16* %R, align 2, !tbaa !5
  store i16 %32, i16* %Wa, align 2, !tbaa !5
  store i16 256, i16* %H, align 2, !tbaa !5
  br label %if.end

if.else.19:                                       ; preds = %if.else
  %33 = load i16, i16* %G, align 2, !tbaa !5
  %conv20 = sext i16 %33 to i32
  %34 = load i16, i16* %B, align 2, !tbaa !5
  %conv21 = sext i16 %34 to i32
  %sub22 = sub nsw i32 %conv20, %conv21
  %conv23 = trunc i32 %sub22 to i16
  store i16 %conv23, i16* %D, align 2, !tbaa !5
  %35 = load i16, i16* %R, align 2, !tbaa !5
  store i16 %35, i16* %Wa, align 2, !tbaa !5
  store i16 1024, i16* %H, align 2, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.else.19, %if.then.14
  br label %if.end.24

if.end.24:                                        ; preds = %if.end
  br label %if.end.25

if.end.25:                                        ; preds = %if.end.24, %entry
  %36 = load i16, i16* %R, align 2, !tbaa !5
  %conv26 = sext i16 %36 to i32
  %37 = load i16, i16* %G, align 2, !tbaa !5
  %conv27 = sext i16 %37 to i32
  %cmp28 = icmp sgt i32 %conv26, %conv27
  br i1 %cmp28, label %if.then.30, label %if.else.77

if.then.30:                                       ; preds = %if.end.25
  %38 = load i16, i16* %G, align 2, !tbaa !5
  %conv31 = sext i16 %38 to i32
  %39 = load i16, i16* %B, align 2, !tbaa !5
  %conv32 = sext i16 %39 to i32
  %cmp33 = icmp sge i32 %conv31, %conv32
  br i1 %cmp33, label %if.then.35, label %if.else.45

if.then.35:                                       ; preds = %if.then.30
  %40 = load i16, i16* %R, align 2, !tbaa !5
  store i16 %40, i16* %Wa, align 2, !tbaa !5
  %41 = load i16, i16* %R, align 2, !tbaa !5
  %conv36 = sext i16 %41 to i32
  %42 = load i16, i16* %B, align 2, !tbaa !5
  %conv37 = sext i16 %42 to i32
  %sub38 = sub nsw i32 %conv36, %conv37
  %conv39 = trunc i32 %sub38 to i16
  store i16 %conv39, i16* %D, align 2, !tbaa !5
  %43 = load i16, i16* %G, align 2, !tbaa !5
  %conv40 = sext i16 %43 to i32
  %44 = load i16, i16* %B, align 2, !tbaa !5
  %conv41 = sext i16 %44 to i32
  %sub42 = sub nsw i32 %conv40, %conv41
  %mul = mul nsw i32 %sub42, 256
  %45 = load i16, i16* %D, align 2, !tbaa !5
  %conv43 = sext i16 %45 to i32
  %div = sdiv i32 %mul, %conv43
  %conv44 = trunc i32 %div to i16
  store i16 %conv44, i16* %H, align 2, !tbaa !5
  br label %if.end.76

if.else.45:                                       ; preds = %if.then.30
  %46 = load i16, i16* %R, align 2, !tbaa !5
  %conv46 = sext i16 %46 to i32
  %47 = load i16, i16* %B, align 2, !tbaa !5
  %conv47 = sext i16 %47 to i32
  %cmp48 = icmp sgt i32 %conv46, %conv47
  br i1 %cmp48, label %if.then.50, label %if.else.63

if.then.50:                                       ; preds = %if.else.45
  %48 = load i16, i16* %R, align 2, !tbaa !5
  store i16 %48, i16* %Wa, align 2, !tbaa !5
  %49 = load i16, i16* %R, align 2, !tbaa !5
  %conv51 = sext i16 %49 to i32
  %50 = load i16, i16* %G, align 2, !tbaa !5
  %conv52 = sext i16 %50 to i32
  %sub53 = sub nsw i32 %conv51, %conv52
  %conv54 = trunc i32 %sub53 to i16
  store i16 %conv54, i16* %D, align 2, !tbaa !5
  %51 = load i16, i16* %B, align 2, !tbaa !5
  %conv55 = sext i16 %51 to i32
  %52 = load i16, i16* %G, align 2, !tbaa !5
  %conv56 = sext i16 %52 to i32
  %sub57 = sub nsw i32 %conv55, %conv56
  %mul58 = mul nsw i32 %sub57, 256
  %53 = load i16, i16* %D, align 2, !tbaa !5
  %conv59 = sext i16 %53 to i32
  %div60 = sdiv i32 %mul58, %conv59
  %sub61 = sub nsw i32 1536, %div60
  %conv62 = trunc i32 %sub61 to i16
  store i16 %conv62, i16* %H, align 2, !tbaa !5
  br label %if.end.75

if.else.63:                                       ; preds = %if.else.45
  %54 = load i16, i16* %B, align 2, !tbaa !5
  store i16 %54, i16* %Wa, align 2, !tbaa !5
  %55 = load i16, i16* %B, align 2, !tbaa !5
  %conv64 = sext i16 %55 to i32
  %56 = load i16, i16* %G, align 2, !tbaa !5
  %conv65 = sext i16 %56 to i32
  %sub66 = sub nsw i32 %conv64, %conv65
  %conv67 = trunc i32 %sub66 to i16
  store i16 %conv67, i16* %D, align 2, !tbaa !5
  %57 = load i16, i16* %R, align 2, !tbaa !5
  %conv68 = sext i16 %57 to i32
  %58 = load i16, i16* %G, align 2, !tbaa !5
  %conv69 = sext i16 %58 to i32
  %sub70 = sub nsw i32 %conv68, %conv69
  %mul71 = mul nsw i32 %sub70, 256
  %59 = load i16, i16* %D, align 2, !tbaa !5
  %conv72 = sext i16 %59 to i32
  %div73 = sdiv i32 %mul71, %conv72
  %add = add nsw i32 1024, %div73
  %conv74 = trunc i32 %add to i16
  store i16 %conv74, i16* %H, align 2, !tbaa !5
  br label %if.end.75

if.end.75:                                        ; preds = %if.else.63, %if.then.50
  br label %if.end.76

if.end.76:                                        ; preds = %if.end.75, %if.then.35
  br label %if.end.128

if.else.77:                                       ; preds = %if.end.25
  %60 = load i16, i16* %R, align 2, !tbaa !5
  %conv78 = sext i16 %60 to i32
  %61 = load i16, i16* %B, align 2, !tbaa !5
  %conv79 = sext i16 %61 to i32
  %cmp80 = icmp sgt i32 %conv78, %conv79
  br i1 %cmp80, label %if.then.82, label %if.else.95

if.then.82:                                       ; preds = %if.else.77
  %62 = load i16, i16* %G, align 2, !tbaa !5
  store i16 %62, i16* %Wa, align 2, !tbaa !5
  %63 = load i16, i16* %G, align 2, !tbaa !5
  %conv83 = sext i16 %63 to i32
  %64 = load i16, i16* %B, align 2, !tbaa !5
  %conv84 = sext i16 %64 to i32
  %sub85 = sub nsw i32 %conv83, %conv84
  %conv86 = trunc i32 %sub85 to i16
  store i16 %conv86, i16* %D, align 2, !tbaa !5
  %65 = load i16, i16* %R, align 2, !tbaa !5
  %conv87 = sext i16 %65 to i32
  %66 = load i16, i16* %B, align 2, !tbaa !5
  %conv88 = sext i16 %66 to i32
  %sub89 = sub nsw i32 %conv87, %conv88
  %mul90 = mul nsw i32 %sub89, 256
  %67 = load i16, i16* %D, align 2, !tbaa !5
  %conv91 = sext i16 %67 to i32
  %div92 = sdiv i32 %mul90, %conv91
  %sub93 = sub nsw i32 512, %div92
  %conv94 = trunc i32 %sub93 to i16
  store i16 %conv94, i16* %H, align 2, !tbaa !5
  br label %if.end.127

if.else.95:                                       ; preds = %if.else.77
  %68 = load i16, i16* %G, align 2, !tbaa !5
  %conv96 = sext i16 %68 to i32
  %69 = load i16, i16* %B, align 2, !tbaa !5
  %conv97 = sext i16 %69 to i32
  %cmp98 = icmp sgt i32 %conv96, %conv97
  br i1 %cmp98, label %if.then.100, label %if.else.113

if.then.100:                                      ; preds = %if.else.95
  %70 = load i16, i16* %G, align 2, !tbaa !5
  store i16 %70, i16* %Wa, align 2, !tbaa !5
  %71 = load i16, i16* %G, align 2, !tbaa !5
  %conv101 = sext i16 %71 to i32
  %72 = load i16, i16* %R, align 2, !tbaa !5
  %conv102 = sext i16 %72 to i32
  %sub103 = sub nsw i32 %conv101, %conv102
  %conv104 = trunc i32 %sub103 to i16
  store i16 %conv104, i16* %D, align 2, !tbaa !5
  %73 = load i16, i16* %B, align 2, !tbaa !5
  %conv105 = sext i16 %73 to i32
  %74 = load i16, i16* %R, align 2, !tbaa !5
  %conv106 = sext i16 %74 to i32
  %sub107 = sub nsw i32 %conv105, %conv106
  %mul108 = mul nsw i32 %sub107, 256
  %75 = load i16, i16* %D, align 2, !tbaa !5
  %conv109 = sext i16 %75 to i32
  %div110 = sdiv i32 %mul108, %conv109
  %add111 = add nsw i32 512, %div110
  %conv112 = trunc i32 %add111 to i16
  store i16 %conv112, i16* %H, align 2, !tbaa !5
  br label %if.end.126

if.else.113:                                      ; preds = %if.else.95
  %76 = load i16, i16* %B, align 2, !tbaa !5
  store i16 %76, i16* %Wa, align 2, !tbaa !5
  %77 = load i16, i16* %B, align 2, !tbaa !5
  %conv114 = sext i16 %77 to i32
  %78 = load i16, i16* %R, align 2, !tbaa !5
  %conv115 = sext i16 %78 to i32
  %sub116 = sub nsw i32 %conv114, %conv115
  %conv117 = trunc i32 %sub116 to i16
  store i16 %conv117, i16* %D, align 2, !tbaa !5
  %79 = load i16, i16* %G, align 2, !tbaa !5
  %conv118 = sext i16 %79 to i32
  %80 = load i16, i16* %R, align 2, !tbaa !5
  %conv119 = sext i16 %80 to i32
  %sub120 = sub nsw i32 %conv118, %conv119
  %mul121 = mul nsw i32 %sub120, 256
  %81 = load i16, i16* %D, align 2, !tbaa !5
  %conv122 = sext i16 %81 to i32
  %div123 = sdiv i32 %mul121, %conv122
  %sub124 = sub nsw i32 1024, %div123
  %conv125 = trunc i32 %sub124 to i16
  store i16 %conv125, i16* %H, align 2, !tbaa !5
  br label %if.end.126

if.end.126:                                       ; preds = %if.else.113, %if.then.100
  br label %if.end.127

if.end.127:                                       ; preds = %if.end.126, %if.then.82
  br label %if.end.128

if.end.128:                                       ; preds = %if.end.127, %if.end.76
  %82 = load i16, i16* %Wa, align 2, !tbaa !5
  %conv129 = sext i16 %82 to i32
  %cmp130 = icmp ne i32 %conv129, 0
  br i1 %cmp130, label %if.then.132, label %if.end.153

if.then.132:                                      ; preds = %if.end.128
  %83 = load i16, i16* %Wa, align 2, !tbaa !5
  %conv133 = sext i16 %83 to i32
  %84 = load i16, i16* %D, align 2, !tbaa !5
  %conv134 = sext i16 %84 to i32
  %cmp135 = icmp eq i32 %conv133, %conv134
  br i1 %cmp135, label %if.then.137, label %if.else.143

if.then.137:                                      ; preds = %if.then.132
  %85 = load i16, i16* %Wa, align 2, !tbaa !5
  %idxprom138 = sext i16 %85 to i64
  %arrayidx139 = getelementptr inbounds [256 x i16], [256 x i16]* @v_tbl, i32 0, i64 %idxprom138
  %86 = load i16, i16* %arrayidx139, align 2, !tbaa !5
  store i16 %86, i16* %Wa, align 2, !tbaa !5
  %87 = load i16, i16* %Wa, align 2, !tbaa !5
  %conv140 = sext i16 %87 to i32
  %div141 = sdiv i32 %conv140, 4
  %conv142 = trunc i32 %div141 to i16
  store i16 %conv142, i16* %D, align 2, !tbaa !5
  br label %if.end.152

if.else.143:                                      ; preds = %if.then.132
  %88 = load i16, i16* %D, align 2, !tbaa !5
  %conv144 = sext i16 %88 to i64
  %shl = shl i64 %conv144, 16
  %89 = load i16, i16* %Wa, align 2, !tbaa !5
  %conv145 = sext i16 %89 to i64
  %div146 = sdiv i64 %shl, %conv145
  store i64 %div146, i64* %S, align 8, !tbaa !21
  %90 = load i16, i16* %Wa, align 2, !tbaa !5
  %idxprom147 = sext i16 %90 to i64
  %arrayidx148 = getelementptr inbounds [256 x i16], [256 x i16]* @v_tbl, i32 0, i64 %idxprom147
  %91 = load i16, i16* %arrayidx148, align 2, !tbaa !5
  store i16 %91, i16* %Wa, align 2, !tbaa !5
  %92 = load i64, i64* %S, align 8, !tbaa !21
  %93 = load i16, i16* %Wa, align 2, !tbaa !5
  %conv149 = sext i16 %93 to i64
  %mul150 = mul nsw i64 %92, %conv149
  %shr = ashr i64 %mul150, 18
  %conv151 = trunc i64 %shr to i16
  store i16 %conv151, i16* %D, align 2, !tbaa !5
  br label %if.end.152

if.end.152:                                       ; preds = %if.else.143, %if.then.137
  br label %if.end.153

if.end.153:                                       ; preds = %if.end.152, %if.end.128
  %94 = load i16, i16* %Wa, align 2, !tbaa !5
  %conv154 = sext i16 %94 to i32
  %sub155 = sub nsw i32 1023, %conv154
  %conv156 = trunc i32 %sub155 to i16
  store i16 %conv156, i16* %Wa, align 2, !tbaa !5
  %95 = load i16, i16* %H, align 2, !tbaa !5
  %conv157 = sext i16 %95 to i32
  %mul158 = mul nsw i32 %conv157, 3
  %idxprom159 = sext i32 %mul158 to i64
  %arrayidx160 = getelementptr inbounds [4608 x i16], [4608 x i16]* @HtoCMY, i32 0, i64 %idxprom159
  %96 = load i16, i16* %arrayidx160, align 2, !tbaa !5
  %conv161 = sext i16 %96 to i32
  %97 = load i16, i16* %D, align 2, !tbaa !5
  %conv162 = sext i16 %97 to i32
  %mul163 = mul nsw i32 %conv161, %conv162
  %div164 = sdiv i32 %mul163, 256
  %98 = load i16, i16* %Wa, align 2, !tbaa !5
  %conv165 = sext i16 %98 to i32
  %add166 = add nsw i32 %div164, %conv165
  %conv167 = trunc i32 %add166 to i16
  store i16 %conv167, i16* %C, align 2, !tbaa !5
  %99 = load i16, i16* %H, align 2, !tbaa !5
  %conv168 = sext i16 %99 to i32
  %mul169 = mul nsw i32 %conv168, 3
  %add170 = add nsw i32 %mul169, 1
  %idxprom171 = sext i32 %add170 to i64
  %arrayidx172 = getelementptr inbounds [4608 x i16], [4608 x i16]* @HtoCMY, i32 0, i64 %idxprom171
  %100 = load i16, i16* %arrayidx172, align 2, !tbaa !5
  %conv173 = sext i16 %100 to i32
  %101 = load i16, i16* %D, align 2, !tbaa !5
  %conv174 = sext i16 %101 to i32
  %mul175 = mul nsw i32 %conv173, %conv174
  %div176 = sdiv i32 %mul175, 256
  %102 = load i16, i16* %Wa, align 2, !tbaa !5
  %conv177 = sext i16 %102 to i32
  %add178 = add nsw i32 %div176, %conv177
  %conv179 = trunc i32 %add178 to i16
  store i16 %conv179, i16* %M, align 2, !tbaa !5
  %103 = load i16, i16* %H, align 2, !tbaa !5
  %conv180 = sext i16 %103 to i32
  %mul181 = mul nsw i32 %conv180, 3
  %add182 = add nsw i32 %mul181, 2
  %idxprom183 = sext i32 %add182 to i64
  %arrayidx184 = getelementptr inbounds [4608 x i16], [4608 x i16]* @HtoCMY, i32 0, i64 %idxprom183
  %104 = load i16, i16* %arrayidx184, align 2, !tbaa !5
  %conv185 = sext i16 %104 to i32
  %105 = load i16, i16* %D, align 2, !tbaa !5
  %conv186 = sext i16 %105 to i32
  %mul187 = mul nsw i32 %conv185, %conv186
  %div188 = sdiv i32 %mul187, 256
  %106 = load i16, i16* %Wa, align 2, !tbaa !5
  %conv189 = sext i16 %106 to i32
  %add190 = add nsw i32 %div188, %conv189
  %conv191 = trunc i32 %add190 to i16
  store i16 %conv191, i16* %Y, align 2, !tbaa !5
  %107 = load i16, i16* %C, align 2, !tbaa !5
  %conv192 = sext i16 %107 to i32
  %cmp193 = icmp slt i32 %conv192, 0
  br i1 %cmp193, label %if.then.195, label %if.end.196

if.then.195:                                      ; preds = %if.end.153
  store i16 0, i16* %C, align 2, !tbaa !5
  br label %if.end.196

if.end.196:                                       ; preds = %if.then.195, %if.end.153
  %108 = load i16, i16* %M, align 2, !tbaa !5
  %conv197 = sext i16 %108 to i32
  %cmp198 = icmp slt i32 %conv197, 0
  br i1 %cmp198, label %if.then.200, label %if.end.201

if.then.200:                                      ; preds = %if.end.196
  store i16 0, i16* %M, align 2, !tbaa !5
  br label %if.end.201

if.end.201:                                       ; preds = %if.then.200, %if.end.196
  %109 = load i16, i16* %Y, align 2, !tbaa !5
  %conv202 = sext i16 %109 to i32
  %cmp203 = icmp slt i32 %conv202, 0
  br i1 %cmp203, label %if.then.205, label %if.end.206

if.then.205:                                      ; preds = %if.end.201
  store i16 0, i16* %Y, align 2, !tbaa !5
  br label %if.end.206

if.end.206:                                       ; preds = %if.then.205, %if.end.201
  %110 = load i16, i16* %H, align 2, !tbaa !5
  %conv207 = sext i16 %110 to i32
  %cmp208 = icmp sgt i32 %conv207, 256
  br i1 %cmp208, label %land.lhs.true, label %if.end.251

land.lhs.true:                                    ; preds = %if.end.206
  %111 = load i16, i16* %H, align 2, !tbaa !5
  %conv210 = sext i16 %111 to i32
  %cmp211 = icmp slt i32 %conv210, 1024
  br i1 %cmp211, label %if.then.213, label %if.end.251

if.then.213:                                      ; preds = %land.lhs.true
  %112 = bitcast i16* %work to i8*
  call void @llvm.lifetime.start(i64 2, i8* %112) #2
  %113 = load i16, i16* %M, align 2, !tbaa !5
  %idxprom214 = sext i16 %113 to i64
  %arrayidx215 = getelementptr inbounds [1024 x i16], [1024 x i16]* @grnsep, i32 0, i64 %idxprom214
  %114 = load i16, i16* %arrayidx215, align 2, !tbaa !5
  %conv216 = zext i16 %114 to i64
  %115 = load i16, i16* %H, align 2, !tbaa !5
  %conv217 = sext i16 %115 to i32
  %sub218 = sub nsw i32 %conv217, 256
  %idxprom219 = sext i32 %sub218 to i64
  %arrayidx220 = getelementptr inbounds [512 x i16], [512 x i16]* @grnsep2, i32 0, i64 %idxprom219
  %116 = load i16, i16* %arrayidx220, align 2, !tbaa !5
  %conv221 = zext i16 %116 to i64
  %mul222 = mul nsw i64 %conv216, %conv221
  %shr223 = ashr i64 %mul222, 16
  %conv224 = trunc i64 %shr223 to i16
  store i16 %conv224, i16* %work, align 2, !tbaa !5
  %117 = load i16, i16* %work, align 2, !tbaa !5
  %conv225 = sext i16 %117 to i32
  %118 = load i16, i16* %C, align 2, !tbaa !5
  %conv226 = sext i16 %118 to i32
  %add227 = add nsw i32 %conv226, %conv225
  %conv228 = trunc i32 %add227 to i16
  store i16 %conv228, i16* %C, align 2, !tbaa !5
  %119 = load i16, i16* %work, align 2, !tbaa !5
  %conv229 = sext i16 %119 to i32
  %120 = load i16, i16* %work, align 2, !tbaa !5
  %conv230 = sext i16 %120 to i32
  %add231 = add nsw i32 %conv229, %conv230
  %121 = load i16, i16* %Y, align 2, !tbaa !5
  %conv232 = sext i16 %121 to i32
  %add233 = add nsw i32 %conv232, %add231
  %conv234 = trunc i32 %add233 to i16
  store i16 %conv234, i16* %Y, align 2, !tbaa !5
  %122 = load i16, i16* %work, align 2, !tbaa !5
  %conv235 = sext i16 %122 to i32
  %123 = load i16, i16* %work, align 2, !tbaa !5
  %conv236 = sext i16 %123 to i32
  %add237 = add nsw i32 %conv235, %conv236
  %124 = load i16, i16* %M, align 2, !tbaa !5
  %conv238 = sext i16 %124 to i32
  %sub239 = sub nsw i32 %conv238, %add237
  %conv240 = trunc i32 %sub239 to i16
  store i16 %conv240, i16* %M, align 2, !tbaa !5
  %125 = load i16, i16* %C, align 2, !tbaa !5
  %conv241 = sext i16 %125 to i32
  %cmp242 = icmp sgt i32 %conv241, 1023
  br i1 %cmp242, label %if.then.244, label %if.end.245

if.then.244:                                      ; preds = %if.then.213
  store i16 1023, i16* %C, align 2, !tbaa !5
  br label %if.end.245

if.end.245:                                       ; preds = %if.then.244, %if.then.213
  %126 = load i16, i16* %Y, align 2, !tbaa !5
  %conv246 = sext i16 %126 to i32
  %cmp247 = icmp sgt i32 %conv246, 1023
  br i1 %cmp247, label %if.then.249, label %if.end.250

if.then.249:                                      ; preds = %if.end.245
  store i16 1023, i16* %Y, align 2, !tbaa !5
  br label %if.end.250

if.end.250:                                       ; preds = %if.then.249, %if.end.245
  %127 = bitcast i16* %work to i8*
  call void @llvm.lifetime.end(i64 2, i8* %127) #2
  br label %if.end.251

if.end.251:                                       ; preds = %if.end.250, %land.lhs.true, %if.end.206
  %128 = load i16, i16* %C, align 2, !tbaa !5
  %129 = load i16*, i16** %Rptr.addr, align 8, !tbaa !1
  store i16 %128, i16* %129, align 2, !tbaa !5
  %130 = load i16, i16* %M, align 2, !tbaa !5
  %131 = load i16*, i16** %Gptr.addr, align 8, !tbaa !1
  store i16 %130, i16* %131, align 2, !tbaa !5
  %132 = load i16, i16* %Y, align 2, !tbaa !5
  %133 = load i16*, i16** %Bptr.addr, align 8, !tbaa !1
  store i16 %132, i16* %133, align 2, !tbaa !5
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.251, %if.then.7
  %134 = bitcast i64* %S to i8*
  call void @llvm.lifetime.end(i64 8, i8* %134) #2
  %135 = bitcast i16* %Wa to i8*
  call void @llvm.lifetime.end(i64 2, i8* %135) #2
  %136 = bitcast i16* %D to i8*
  call void @llvm.lifetime.end(i64 2, i8* %136) #2
  %137 = bitcast i16* %H to i8*
  call void @llvm.lifetime.end(i64 2, i8* %137) #2
  %138 = bitcast i16* %Y to i8*
  call void @llvm.lifetime.end(i64 2, i8* %138) #2
  %139 = bitcast i16* %M to i8*
  call void @llvm.lifetime.end(i64 2, i8* %139) #2
  %140 = bitcast i16* %C to i8*
  call void @llvm.lifetime.end(i64 2, i8* %140) #2
  %141 = bitcast i16* %B to i8*
  call void @llvm.lifetime.end(i64 2, i8* %141) #2
  %142 = bitcast i16* %G to i8*
  call void @llvm.lifetime.end(i64 2, i8* %142) #2
  %143 = bitcast i16* %R to i8*
  call void @llvm.lifetime.end(i64 2, i8* %143) #2
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

declare i32 @gdev_prn_get_params(%struct.gx_device_s*, %struct.gs_param_list_s*) #0

declare i32 @param_write_int(%struct.gs_param_list_s*, i8*, i32*) #0

declare i32 @param_write_bool(%struct.gs_param_list_s*, i8*, i32*) #0

; Function Attrs: nounwind uwtable
define internal i32 @mj_put_params(%struct.gx_device_s* %pdev, %struct.gs_param_list_s* %plist, i32 %ptype) #1 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_s*, align 8
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %ptype.addr = alloca i32, align 4
  %old_bpp = alloca i32, align 4
  %bpp = alloca i32, align 4
  %code = alloca i32, align 4
  %density = alloca i32, align 4
  %cyan = alloca i32, align 4
  %magenta = alloca i32, align 4
  %yellow = alloca i32, align 4
  %black = alloca i32, align 4
  %direction = alloca i32, align 4
  %microweave = alloca i32, align 4
  %dotsize = alloca i32, align 4
  %param_name = alloca i8*, align 8
  %ecode = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %pdev, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i32 %ptype, i32* %ptype.addr, align 4, !tbaa !22
  %0 = bitcast i32* %old_bpp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_mj_s*
  %color_info = getelementptr inbounds %struct.gx_device_mj_s, %struct.gx_device_mj_s* %2, i32 0, i32 11
  %depth = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 3
  %3 = load i16, i16* %depth, align 2, !tbaa !31
  %conv = zext i16 %3 to i32
  store i32 %conv, i32* %old_bpp, align 4, !tbaa !22
  %4 = bitcast i32* %bpp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  store i32 0, i32* %bpp, align 4, !tbaa !22
  %5 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  store i32 0, i32* %code, align 4, !tbaa !22
  %6 = bitcast i32* %density to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %8 = bitcast %struct.gx_device_s* %7 to %struct.gx_device_mj_s*
  %density1 = getelementptr inbounds %struct.gx_device_mj_s, %struct.gx_device_mj_s* %8, i32 0, i32 69
  %9 = load i32, i32* %density1, align 4, !tbaa !30
  store i32 %9, i32* %density, align 4, !tbaa !22
  %10 = bitcast i32* %cyan to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #2
  %11 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %12 = bitcast %struct.gx_device_s* %11 to %struct.gx_device_mj_s*
  %cyan2 = getelementptr inbounds %struct.gx_device_mj_s, %struct.gx_device_mj_s* %12, i32 0, i32 70
  %13 = load i32, i32* %cyan2, align 4, !tbaa !32
  store i32 %13, i32* %cyan, align 4, !tbaa !22
  %14 = bitcast i32* %magenta to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #2
  %15 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %16 = bitcast %struct.gx_device_s* %15 to %struct.gx_device_mj_s*
  %magenta3 = getelementptr inbounds %struct.gx_device_mj_s, %struct.gx_device_mj_s* %16, i32 0, i32 71
  %17 = load i32, i32* %magenta3, align 4, !tbaa !33
  store i32 %17, i32* %magenta, align 4, !tbaa !22
  %18 = bitcast i32* %yellow to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #2
  %19 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %20 = bitcast %struct.gx_device_s* %19 to %struct.gx_device_mj_s*
  %yellow4 = getelementptr inbounds %struct.gx_device_mj_s, %struct.gx_device_mj_s* %20, i32 0, i32 72
  %21 = load i32, i32* %yellow4, align 4, !tbaa !34
  store i32 %21, i32* %yellow, align 4, !tbaa !22
  %22 = bitcast i32* %black to i8*
  call void @llvm.lifetime.start(i64 4, i8* %22) #2
  %23 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %24 = bitcast %struct.gx_device_s* %23 to %struct.gx_device_mj_s*
  %black5 = getelementptr inbounds %struct.gx_device_mj_s, %struct.gx_device_mj_s* %24, i32 0, i32 73
  %25 = load i32, i32* %black5, align 4, !tbaa !35
  store i32 %25, i32* %black, align 4, !tbaa !22
  %26 = bitcast i32* %direction to i8*
  call void @llvm.lifetime.start(i64 4, i8* %26) #2
  %27 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %28 = bitcast %struct.gx_device_s* %27 to %struct.gx_device_mj_s*
  %direction6 = getelementptr inbounds %struct.gx_device_mj_s, %struct.gx_device_mj_s* %28, i32 0, i32 74
  %29 = load i32, i32* %direction6, align 4, !tbaa !36
  store i32 %29, i32* %direction, align 4, !tbaa !22
  %30 = bitcast i32* %microweave to i8*
  call void @llvm.lifetime.start(i64 4, i8* %30) #2
  %31 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %32 = bitcast %struct.gx_device_s* %31 to %struct.gx_device_mj_s*
  %microweave7 = getelementptr inbounds %struct.gx_device_mj_s, %struct.gx_device_mj_s* %32, i32 0, i32 75
  %33 = load i32, i32* %microweave7, align 4, !tbaa !37
  store i32 %33, i32* %microweave, align 4, !tbaa !22
  %34 = bitcast i32* %dotsize to i8*
  call void @llvm.lifetime.start(i64 4, i8* %34) #2
  %35 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %36 = bitcast %struct.gx_device_s* %35 to %struct.gx_device_mj_s*
  %dotsize8 = getelementptr inbounds %struct.gx_device_mj_s, %struct.gx_device_mj_s* %36, i32 0, i32 76
  %37 = load i32, i32* %dotsize8, align 4, !tbaa !38
  store i32 %37, i32* %dotsize, align 4, !tbaa !22
  %38 = bitcast i8** %param_name to i8*
  call void @llvm.lifetime.start(i64 8, i8* %38) #2
  %39 = bitcast i32* %ecode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %39) #2
  store i32 0, i32* %ecode, align 4, !tbaa !22
  %40 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %41 = load i32, i32* %code, align 4, !tbaa !22
  %call = call i32 @put_param_int(%struct.gs_param_list_s* %40, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), i32* %density, i32 0, i32 2147483647, i32 %41) #4
  store i32 %call, i32* %code, align 4, !tbaa !22
  %42 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %43 = load i32, i32* %code, align 4, !tbaa !22
  %call9 = call i32 @put_param_int(%struct.gs_param_list_s* %42, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i32* %cyan, i32 0, i32 2147483647, i32 %43) #4
  store i32 %call9, i32* %code, align 4, !tbaa !22
  %44 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %45 = load i32, i32* %code, align 4, !tbaa !22
  %call10 = call i32 @put_param_int(%struct.gs_param_list_s* %44, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i32 0), i32* %magenta, i32 0, i32 2147483647, i32 %45) #4
  store i32 %call10, i32* %code, align 4, !tbaa !22
  %46 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %47 = load i32, i32* %code, align 4, !tbaa !22
  %call11 = call i32 @put_param_int(%struct.gs_param_list_s* %46, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i32 0, i32 0), i32* %yellow, i32 0, i32 2147483647, i32 %47) #4
  store i32 %call11, i32* %code, align 4, !tbaa !22
  %48 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %49 = load i32, i32* %code, align 4, !tbaa !22
  %call12 = call i32 @put_param_int(%struct.gs_param_list_s* %48, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0), i32* %black, i32 0, i32 2147483647, i32 %49) #4
  store i32 %call12, i32* %code, align 4, !tbaa !22
  %50 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i32 0, i32 0), i8** %param_name, align 8, !tbaa !1
  %call13 = call i32 @param_read_bool(%struct.gs_param_list_s* %50, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i32 0, i32 0), i32* %direction) #4
  store i32 %call13, i32* %code, align 4, !tbaa !22
  %cmp = icmp slt i32 %call13, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %51 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %51, i32 0, i32 0
  %52 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs, align 8, !tbaa !39
  %signal_error = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %52, i32 0, i32 7
  %53 = load i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*, i8*, i32)** %signal_error, align 8, !tbaa !41
  %54 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %55 = load i8*, i8** %param_name, align 8, !tbaa !1
  %56 = load i32, i32* %code, align 4, !tbaa !22
  store i32 %56, i32* %ecode, align 4, !tbaa !22
  %call15 = call i32 %53(%struct.gs_param_list_s* %54, i8* %55, i32 %56) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %57 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i32 0, i32 0), i8** %param_name, align 8, !tbaa !1
  %call16 = call i32 @param_read_bool(%struct.gs_param_list_s* %57, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i32 0, i32 0), i32* %microweave) #4
  store i32 %call16, i32* %code, align 4, !tbaa !22
  %cmp17 = icmp slt i32 %call16, 0
  br i1 %cmp17, label %if.then.19, label %if.end.23

if.then.19:                                       ; preds = %if.end
  %58 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs20 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %58, i32 0, i32 0
  %59 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs20, align 8, !tbaa !39
  %signal_error21 = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %59, i32 0, i32 7
  %60 = load i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*, i8*, i32)** %signal_error21, align 8, !tbaa !41
  %61 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %62 = load i8*, i8** %param_name, align 8, !tbaa !1
  %63 = load i32, i32* %code, align 4, !tbaa !22
  store i32 %63, i32* %ecode, align 4, !tbaa !22
  %call22 = call i32 %60(%struct.gs_param_list_s* %61, i8* %62, i32 %63) #4
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.19, %if.end
  %64 = load i32, i32* %ecode, align 4, !tbaa !22
  %cmp24 = icmp slt i32 %64, 0
  br i1 %cmp24, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %if.end.23
  %65 = load i32, i32* %code, align 4, !tbaa !22
  store i32 %65, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.27:                                        ; preds = %if.end.23
  %66 = load i32, i32* %microweave, align 4, !tbaa !22
  %tobool = icmp ne i32 %66, 0
  br i1 %tobool, label %land.lhs.true, label %if.end.31

land.lhs.true:                                    ; preds = %if.end.27
  %67 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %HWResolution = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %67, i32 0, i32 22
  %arrayidx = getelementptr inbounds [2 x float], [2 x float]* %HWResolution, i32 0, i64 0
  %68 = load float, float* %arrayidx, align 4, !tbaa !23
  %cmp28 = fcmp oeq float %68, 1.800000e+02
  br i1 %cmp28, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %land.lhs.true
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.31:                                        ; preds = %land.lhs.true, %if.end.27
  %69 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %70 = load i32, i32* %code, align 4, !tbaa !22
  %call32 = call i32 @put_param_int(%struct.gs_param_list_s* %69, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i32 0, i32 0), i32* %dotsize, i32 0, i32 1, i32 %70) #4
  store i32 %call32, i32* %code, align 4, !tbaa !22
  %71 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %72 = load i32, i32* %code, align 4, !tbaa !22
  %call33 = call i32 @put_param_int(%struct.gs_param_list_s* %71, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i32 0, i32 0), i32* %bpp, i32 1, i32 32, i32 %72) #4
  store i32 %call33, i32* %code, align 4, !tbaa !22
  %73 = load i32, i32* %code, align 4, !tbaa !22
  %cmp34 = icmp slt i32 %73, 0
  br i1 %cmp34, label %if.then.36, label %if.end.37

if.then.36:                                       ; preds = %if.end.31
  %74 = load i32, i32* %code, align 4, !tbaa !22
  store i32 %74, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.37:                                        ; preds = %if.end.31
  %75 = load i32, i32* %density, align 4, !tbaa !22
  %76 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %77 = bitcast %struct.gx_device_s* %76 to %struct.gx_device_mj_s*
  %density38 = getelementptr inbounds %struct.gx_device_mj_s, %struct.gx_device_mj_s* %77, i32 0, i32 69
  store i32 %75, i32* %density38, align 4, !tbaa !30
  %78 = load i32, i32* %cyan, align 4, !tbaa !22
  %79 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %80 = bitcast %struct.gx_device_s* %79 to %struct.gx_device_mj_s*
  %cyan39 = getelementptr inbounds %struct.gx_device_mj_s, %struct.gx_device_mj_s* %80, i32 0, i32 70
  store i32 %78, i32* %cyan39, align 4, !tbaa !32
  %81 = load i32, i32* %magenta, align 4, !tbaa !22
  %82 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %83 = bitcast %struct.gx_device_s* %82 to %struct.gx_device_mj_s*
  %magenta40 = getelementptr inbounds %struct.gx_device_mj_s, %struct.gx_device_mj_s* %83, i32 0, i32 71
  store i32 %81, i32* %magenta40, align 4, !tbaa !33
  %84 = load i32, i32* %yellow, align 4, !tbaa !22
  %85 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %86 = bitcast %struct.gx_device_s* %85 to %struct.gx_device_mj_s*
  %yellow41 = getelementptr inbounds %struct.gx_device_mj_s, %struct.gx_device_mj_s* %86, i32 0, i32 72
  store i32 %84, i32* %yellow41, align 4, !tbaa !34
  %87 = load i32, i32* %black, align 4, !tbaa !22
  %88 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %89 = bitcast %struct.gx_device_s* %88 to %struct.gx_device_mj_s*
  %black42 = getelementptr inbounds %struct.gx_device_mj_s, %struct.gx_device_mj_s* %89, i32 0, i32 73
  store i32 %87, i32* %black42, align 4, !tbaa !35
  %90 = load i32, i32* %direction, align 4, !tbaa !22
  %91 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %92 = bitcast %struct.gx_device_s* %91 to %struct.gx_device_mj_s*
  %direction43 = getelementptr inbounds %struct.gx_device_mj_s, %struct.gx_device_mj_s* %92, i32 0, i32 74
  store i32 %90, i32* %direction43, align 4, !tbaa !36
  %93 = load i32, i32* %microweave, align 4, !tbaa !22
  %94 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %95 = bitcast %struct.gx_device_s* %94 to %struct.gx_device_mj_s*
  %microweave44 = getelementptr inbounds %struct.gx_device_mj_s, %struct.gx_device_mj_s* %95, i32 0, i32 75
  store i32 %93, i32* %microweave44, align 4, !tbaa !37
  %96 = load i32, i32* %dotsize, align 4, !tbaa !22
  %97 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %98 = bitcast %struct.gx_device_s* %97 to %struct.gx_device_mj_s*
  %dotsize45 = getelementptr inbounds %struct.gx_device_mj_s, %struct.gx_device_mj_s* %98, i32 0, i32 76
  store i32 %96, i32* %dotsize45, align 4, !tbaa !38
  %99 = load i32, i32* %bpp, align 4, !tbaa !22
  %cmp46 = icmp ne i32 %99, 0
  br i1 %cmp46, label %if.then.48, label %if.else.68

if.then.48:                                       ; preds = %if.end.37
  %100 = load i32, i32* %bpp, align 4, !tbaa !22
  %cmp49 = icmp ne i32 %100, 8
  br i1 %cmp49, label %land.lhs.true.51, label %if.end.55

land.lhs.true.51:                                 ; preds = %if.then.48
  %101 = load i32, i32* %bpp, align 4, !tbaa !22
  %cmp52 = icmp ne i32 %101, 32
  br i1 %cmp52, label %if.then.54, label %if.end.55

if.then.54:                                       ; preds = %land.lhs.true.51
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.55:                                        ; preds = %land.lhs.true.51, %if.then.48
  %102 = load i32, i32* %ptype.addr, align 4, !tbaa !22
  %cmp56 = icmp eq i32 %102, 2
  br i1 %cmp56, label %if.then.58, label %if.else

if.then.58:                                       ; preds = %if.end.55
  %103 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %104 = load i32, i32* %bpp, align 4, !tbaa !22
  call void @mj500c_set_bpp(%struct.gx_device_s* %103, i32 %104) #4
  br label %if.end.59

if.else:                                          ; preds = %if.end.55
  %105 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %106 = load i32, i32* %bpp, align 4, !tbaa !22
  call void @set_bpp(%struct.gx_device_s* %105, i32 %106) #4
  br label %if.end.59

if.end.59:                                        ; preds = %if.else, %if.then.58
  %107 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %108 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call60 = call i32 @gdev_prn_put_params(%struct.gx_device_s* %107, %struct.gs_param_list_s* %108) #4
  %109 = load i32, i32* %bpp, align 4, !tbaa !22
  %110 = load i32, i32* %old_bpp, align 4, !tbaa !22
  %cmp61 = icmp ne i32 %109, %110
  br i1 %cmp61, label %land.lhs.true.63, label %if.end.67

land.lhs.true.63:                                 ; preds = %if.end.59
  %111 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %is_open = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %111, i32 0, i32 9
  %112 = load i32, i32* %is_open, align 4, !tbaa !43
  %tobool64 = icmp ne i32 %112, 0
  br i1 %tobool64, label %if.then.65, label %if.end.67

if.then.65:                                       ; preds = %land.lhs.true.63
  %113 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %call66 = call i32 @gs_closedevice(%struct.gx_device_s* %113) #4
  store i32 %call66, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.67:                                        ; preds = %land.lhs.true.63, %if.end.59
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else.68:                                       ; preds = %if.end.37
  %114 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %115 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call69 = call i32 @gdev_prn_put_params(%struct.gx_device_s* %114, %struct.gs_param_list_s* %115) #4
  store i32 %call69, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.else.68, %if.end.67, %if.then.65, %if.then.54, %if.then.36, %if.then.30, %if.then.26
  %116 = bitcast i32* %ecode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %116) #2
  %117 = bitcast i8** %param_name to i8*
  call void @llvm.lifetime.end(i64 8, i8* %117) #2
  %118 = bitcast i32* %dotsize to i8*
  call void @llvm.lifetime.end(i64 4, i8* %118) #2
  %119 = bitcast i32* %microweave to i8*
  call void @llvm.lifetime.end(i64 4, i8* %119) #2
  %120 = bitcast i32* %direction to i8*
  call void @llvm.lifetime.end(i64 4, i8* %120) #2
  %121 = bitcast i32* %black to i8*
  call void @llvm.lifetime.end(i64 4, i8* %121) #2
  %122 = bitcast i32* %yellow to i8*
  call void @llvm.lifetime.end(i64 4, i8* %122) #2
  %123 = bitcast i32* %magenta to i8*
  call void @llvm.lifetime.end(i64 4, i8* %123) #2
  %124 = bitcast i32* %cyan to i8*
  call void @llvm.lifetime.end(i64 4, i8* %124) #2
  %125 = bitcast i32* %density to i8*
  call void @llvm.lifetime.end(i64 4, i8* %125) #2
  %126 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %126) #2
  %127 = bitcast i32* %bpp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %127) #2
  %128 = bitcast i32* %old_bpp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %128) #2
  %129 = load i32, i32* %retval
  ret i32 %129
}

; Function Attrs: nounwind uwtable
define internal i32 @put_param_int(%struct.gs_param_list_s* %plist, i8* %pname, i32* %pvalue, i32 %minval, i32 %maxval, i32 %ecode) #1 {
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
  store i32 %minval, i32* %minval.addr, align 4, !tbaa !22
  store i32 %maxval, i32* %maxval.addr, align 4, !tbaa !22
  store i32 %ecode, i32* %ecode.addr, align 4, !tbaa !22
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast i32* %value to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %3 = load i8*, i8** %pname.addr, align 8, !tbaa !1
  %call = call i32 @param_read_int(%struct.gs_param_list_s* %2, i8* %3, i32* %value) #4
  store i32 %call, i32* %code, align 4, !tbaa !22
  switch i32 %call, label %sw.default [
    i32 1, label %sw.bb
    i32 0, label %sw.bb.1
  ]

sw.default:                                       ; preds = %entry
  %4 = load i32, i32* %code, align 4, !tbaa !22
  store i32 %4, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %5 = load i32, i32* %ecode.addr, align 4, !tbaa !22
  store i32 %5, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.1:                                          ; preds = %entry
  %6 = load i32, i32* %value, align 4, !tbaa !22
  %7 = load i32, i32* %minval.addr, align 4, !tbaa !22
  %cmp = icmp slt i32 %6, %7
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.bb.1
  %8 = load i32, i32* %value, align 4, !tbaa !22
  %9 = load i32, i32* %maxval.addr, align 4, !tbaa !22
  %cmp2 = icmp sgt i32 %8, %9
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %sw.bb.1
  %10 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %10, i32 0, i32 0
  %11 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs, align 8, !tbaa !39
  %signal_error = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %11, i32 0, i32 7
  %12 = load i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*, i8*, i32)** %signal_error, align 8, !tbaa !41
  %13 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %14 = load i8*, i8** %pname.addr, align 8, !tbaa !1
  %call3 = call i32 %12(%struct.gs_param_list_s* %13, i8* %14, i32 -15) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %15 = load i32, i32* %value, align 4, !tbaa !22
  %16 = load i32*, i32** %pvalue.addr, align 8, !tbaa !1
  store i32 %15, i32* %16, align 4, !tbaa !22
  %17 = load i32, i32* %ecode.addr, align 4, !tbaa !22
  %cmp4 = icmp slt i32 %17, 0
  br i1 %cmp4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %18 = load i32, i32* %ecode.addr, align 4, !tbaa !22
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

declare i32 @param_read_bool(%struct.gs_param_list_s*, i8*, i32*) #0

; Function Attrs: nounwind uwtable
define internal void @mj500c_set_bpp(%struct.gx_device_s* %pdev, i32 %bits_per_pixel) #1 {
entry:
  %pdev.addr = alloca %struct.gx_device_s*, align 8
  %bits_per_pixel.addr = alloca i32, align 4
  %ci = alloca %struct.gx_device_color_info_s*, align 8
  %bpp = alloca i32, align 4
  store %struct.gx_device_s* %pdev, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  store i32 %bits_per_pixel, i32* %bits_per_pixel.addr, align 4, !tbaa !22
  %0 = bitcast %struct.gx_device_color_info_s** %ci to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %1, i32 0, i32 11
  store %struct.gx_device_color_info_s* %color_info, %struct.gx_device_color_info_s** %ci, align 8, !tbaa !1
  %2 = bitcast i32* %bpp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  %3 = load i32, i32* %bits_per_pixel.addr, align 4, !tbaa !22
  %cmp = icmp slt i32 %3, 3
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end.4

cond.false:                                       ; preds = %entry
  %4 = load i32, i32* %bits_per_pixel.addr, align 4, !tbaa !22
  %cmp1 = icmp slt i32 %4, 8
  br i1 %cmp1, label %cond.true.2, label %cond.false.3

cond.true.2:                                      ; preds = %cond.false
  br label %cond.end

cond.false.3:                                     ; preds = %cond.false
  %5 = load i32, i32* %bits_per_pixel.addr, align 4, !tbaa !22
  %shr = ashr i32 %5, 3
  %shl = shl i32 %shr, 3
  br label %cond.end

cond.end:                                         ; preds = %cond.false.3, %cond.true.2
  %cond = phi i32 [ 3, %cond.true.2 ], [ %shl, %cond.false.3 ]
  br label %cond.end.4

cond.end.4:                                       ; preds = %cond.end, %cond.true
  %cond5 = phi i32 [ 1, %cond.true ], [ %cond, %cond.end ]
  store i32 %cond5, i32* %bpp, align 4, !tbaa !22
  %6 = load i32, i32* %bpp, align 4, !tbaa !22
  %cmp6 = icmp eq i32 %6, 1
  br i1 %cmp6, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %cond.end.4
  %7 = load i32, i32* %bpp, align 4, !tbaa !22
  %cmp7 = icmp eq i32 %7, 8
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %cond.end.4
  %8 = phi i1 [ true, %cond.end.4 ], [ %cmp7, %lor.rhs ]
  %cond8 = select i1 %8, i32 1, i32 3
  %9 = load %struct.gx_device_color_info_s*, %struct.gx_device_color_info_s** %ci, align 8, !tbaa !1
  %num_components = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %9, i32 0, i32 1
  store i32 %cond8, i32* %num_components, align 4, !tbaa !44
  %10 = load i32, i32* %bpp, align 4, !tbaa !22
  %cmp9 = icmp sgt i32 %10, 1
  br i1 %cmp9, label %land.lhs.true, label %cond.false.12

land.lhs.true:                                    ; preds = %lor.end
  %11 = load i32, i32* %bpp, align 4, !tbaa !22
  %cmp10 = icmp slt i32 %11, 8
  br i1 %cmp10, label %cond.true.11, label %cond.false.12

cond.true.11:                                     ; preds = %land.lhs.true
  br label %cond.end.13

cond.false.12:                                    ; preds = %land.lhs.true, %lor.end
  %12 = load i32, i32* %bpp, align 4, !tbaa !22
  br label %cond.end.13

cond.end.13:                                      ; preds = %cond.false.12, %cond.true.11
  %cond14 = phi i32 [ 8, %cond.true.11 ], [ %12, %cond.false.12 ]
  %conv = trunc i32 %cond14 to i16
  %13 = load %struct.gx_device_color_info_s*, %struct.gx_device_color_info_s** %ci, align 8, !tbaa !1
  %depth = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %13, i32 0, i32 3
  store i16 %conv, i16* %depth, align 2, !tbaa !45
  %14 = load i32, i32* %bpp, align 4, !tbaa !22
  %cmp15 = icmp sge i32 %14, 8
  %cond17 = select i1 %cmp15, i32 255, i32 1
  %15 = load %struct.gx_device_color_info_s*, %struct.gx_device_color_info_s** %ci, align 8, !tbaa !1
  %max_gray = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %15, i32 0, i32 5
  store i32 %cond17, i32* %max_gray, align 4, !tbaa !46
  %16 = load i32, i32* %bpp, align 4, !tbaa !22
  %cmp18 = icmp sge i32 %16, 8
  br i1 %cmp18, label %cond.true.20, label %cond.false.21

cond.true.20:                                     ; preds = %cond.end.13
  br label %cond.end.25

cond.false.21:                                    ; preds = %cond.end.13
  %17 = load i32, i32* %bpp, align 4, !tbaa !22
  %cmp22 = icmp sgt i32 %17, 1
  %cond24 = select i1 %cmp22, i32 1, i32 0
  br label %cond.end.25

cond.end.25:                                      ; preds = %cond.false.21, %cond.true.20
  %cond26 = phi i32 [ 255, %cond.true.20 ], [ %cond24, %cond.false.21 ]
  %18 = load %struct.gx_device_color_info_s*, %struct.gx_device_color_info_s** %ci, align 8, !tbaa !1
  %max_color = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %18, i32 0, i32 6
  store i32 %cond26, i32* %max_color, align 4, !tbaa !47
  %19 = load i32, i32* %bpp, align 4, !tbaa !22
  %cmp27 = icmp sge i32 %19, 8
  %cond29 = select i1 %cmp27, i32 5, i32 2
  %20 = load %struct.gx_device_color_info_s*, %struct.gx_device_color_info_s** %ci, align 8, !tbaa !1
  %dither_grays = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %20, i32 0, i32 7
  store i32 %cond29, i32* %dither_grays, align 4, !tbaa !48
  %21 = load i32, i32* %bpp, align 4, !tbaa !22
  %cmp30 = icmp sge i32 %21, 8
  br i1 %cmp30, label %cond.true.32, label %cond.false.33

cond.true.32:                                     ; preds = %cond.end.25
  br label %cond.end.37

cond.false.33:                                    ; preds = %cond.end.25
  %22 = load i32, i32* %bpp, align 4, !tbaa !22
  %cmp34 = icmp sgt i32 %22, 1
  %cond36 = select i1 %cmp34, i32 2, i32 0
  br label %cond.end.37

cond.end.37:                                      ; preds = %cond.false.33, %cond.true.32
  %cond38 = phi i32 [ 5, %cond.true.32 ], [ %cond36, %cond.false.33 ]
  %23 = load %struct.gx_device_color_info_s*, %struct.gx_device_color_info_s** %ci, align 8, !tbaa !1
  %dither_colors = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %23, i32 0, i32 8
  store i32 %cond38, i32* %dither_colors, align 4, !tbaa !49
  %24 = load i32, i32* %bpp, align 4, !tbaa !22
  %cmp39 = icmp eq i32 %24, 8
  %cond41 = select i1 %cmp39, i32 1, i32 3
  %25 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %26 = bitcast %struct.gx_device_s* %25 to %struct.gx_device_mj_s*
  %colorcomp = getelementptr inbounds %struct.gx_device_mj_s, %struct.gx_device_mj_s* %26, i32 0, i32 68
  store i32 %cond41, i32* %colorcomp, align 4, !tbaa !25
  %27 = bitcast i32* %bpp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %27) #2
  %28 = bitcast %struct.gx_device_color_info_s** %ci to i8*
  call void @llvm.lifetime.end(i64 8, i8* %28) #2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @set_bpp(%struct.gx_device_s* %pdev, i32 %bits_per_pixel) #1 {
entry:
  %pdev.addr = alloca %struct.gx_device_s*, align 8
  %bits_per_pixel.addr = alloca i32, align 4
  %ci = alloca %struct.gx_device_color_info_s*, align 8
  %bpp = alloca i32, align 4
  store %struct.gx_device_s* %pdev, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  store i32 %bits_per_pixel, i32* %bits_per_pixel.addr, align 4, !tbaa !22
  %0 = bitcast %struct.gx_device_color_info_s** %ci to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %1, i32 0, i32 11
  store %struct.gx_device_color_info_s* %color_info, %struct.gx_device_color_info_s** %ci, align 8, !tbaa !1
  %2 = bitcast i32* %bpp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  %3 = load i32, i32* %bits_per_pixel.addr, align 4, !tbaa !22
  %cmp = icmp slt i32 %3, 3
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end.4

cond.false:                                       ; preds = %entry
  %4 = load i32, i32* %bits_per_pixel.addr, align 4, !tbaa !22
  %cmp1 = icmp slt i32 %4, 8
  br i1 %cmp1, label %cond.true.2, label %cond.false.3

cond.true.2:                                      ; preds = %cond.false
  br label %cond.end

cond.false.3:                                     ; preds = %cond.false
  %5 = load i32, i32* %bits_per_pixel.addr, align 4, !tbaa !22
  %shr = ashr i32 %5, 3
  %shl = shl i32 %shr, 3
  br label %cond.end

cond.end:                                         ; preds = %cond.false.3, %cond.true.2
  %cond = phi i32 [ 3, %cond.true.2 ], [ %shl, %cond.false.3 ]
  br label %cond.end.4

cond.end.4:                                       ; preds = %cond.end, %cond.true
  %cond5 = phi i32 [ 1, %cond.true ], [ %cond, %cond.end ]
  store i32 %cond5, i32* %bpp, align 4, !tbaa !22
  %6 = load i32, i32* %bpp, align 4, !tbaa !22
  %cmp6 = icmp eq i32 %6, 1
  br i1 %cmp6, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %cond.end.4
  %7 = load i32, i32* %bpp, align 4, !tbaa !22
  %cmp7 = icmp eq i32 %7, 8
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %cond.end.4
  %8 = phi i1 [ true, %cond.end.4 ], [ %cmp7, %lor.rhs ]
  %cond8 = select i1 %8, i32 1, i32 3
  %9 = load %struct.gx_device_color_info_s*, %struct.gx_device_color_info_s** %ci, align 8, !tbaa !1
  %num_components = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %9, i32 0, i32 1
  store i32 %cond8, i32* %num_components, align 4, !tbaa !44
  %10 = load i32, i32* %bpp, align 4, !tbaa !22
  %cmp9 = icmp sgt i32 %10, 1
  br i1 %cmp9, label %land.lhs.true, label %cond.false.12

land.lhs.true:                                    ; preds = %lor.end
  %11 = load i32, i32* %bpp, align 4, !tbaa !22
  %cmp10 = icmp slt i32 %11, 8
  br i1 %cmp10, label %cond.true.11, label %cond.false.12

cond.true.11:                                     ; preds = %land.lhs.true
  br label %cond.end.13

cond.false.12:                                    ; preds = %land.lhs.true, %lor.end
  %12 = load i32, i32* %bpp, align 4, !tbaa !22
  br label %cond.end.13

cond.end.13:                                      ; preds = %cond.false.12, %cond.true.11
  %cond14 = phi i32 [ 8, %cond.true.11 ], [ %12, %cond.false.12 ]
  %conv = trunc i32 %cond14 to i16
  %13 = load %struct.gx_device_color_info_s*, %struct.gx_device_color_info_s** %ci, align 8, !tbaa !1
  %depth = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %13, i32 0, i32 3
  store i16 %conv, i16* %depth, align 2, !tbaa !45
  %14 = load i32, i32* %bpp, align 4, !tbaa !22
  %cmp15 = icmp sge i32 %14, 8
  %cond17 = select i1 %cmp15, i32 255, i32 1
  %15 = load %struct.gx_device_color_info_s*, %struct.gx_device_color_info_s** %ci, align 8, !tbaa !1
  %max_gray = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %15, i32 0, i32 5
  store i32 %cond17, i32* %max_gray, align 4, !tbaa !46
  %16 = load i32, i32* %bpp, align 4, !tbaa !22
  %cmp18 = icmp sge i32 %16, 8
  br i1 %cmp18, label %cond.true.20, label %cond.false.21

cond.true.20:                                     ; preds = %cond.end.13
  br label %cond.end.25

cond.false.21:                                    ; preds = %cond.end.13
  %17 = load i32, i32* %bpp, align 4, !tbaa !22
  %cmp22 = icmp sgt i32 %17, 1
  %cond24 = select i1 %cmp22, i32 1, i32 0
  br label %cond.end.25

cond.end.25:                                      ; preds = %cond.false.21, %cond.true.20
  %cond26 = phi i32 [ 255, %cond.true.20 ], [ %cond24, %cond.false.21 ]
  %18 = load %struct.gx_device_color_info_s*, %struct.gx_device_color_info_s** %ci, align 8, !tbaa !1
  %max_color = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %18, i32 0, i32 6
  store i32 %cond26, i32* %max_color, align 4, !tbaa !47
  %19 = load i32, i32* %bpp, align 4, !tbaa !22
  %cmp27 = icmp sge i32 %19, 8
  %cond29 = select i1 %cmp27, i32 5, i32 2
  %20 = load %struct.gx_device_color_info_s*, %struct.gx_device_color_info_s** %ci, align 8, !tbaa !1
  %dither_grays = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %20, i32 0, i32 7
  store i32 %cond29, i32* %dither_grays, align 4, !tbaa !48
  %21 = load i32, i32* %bpp, align 4, !tbaa !22
  %cmp30 = icmp sge i32 %21, 8
  br i1 %cmp30, label %cond.true.32, label %cond.false.33

cond.true.32:                                     ; preds = %cond.end.25
  br label %cond.end.37

cond.false.33:                                    ; preds = %cond.end.25
  %22 = load i32, i32* %bpp, align 4, !tbaa !22
  %cmp34 = icmp sgt i32 %22, 1
  %cond36 = select i1 %cmp34, i32 2, i32 0
  br label %cond.end.37

cond.end.37:                                      ; preds = %cond.false.33, %cond.true.32
  %cond38 = phi i32 [ 5, %cond.true.32 ], [ %cond36, %cond.false.33 ]
  %23 = load %struct.gx_device_color_info_s*, %struct.gx_device_color_info_s** %ci, align 8, !tbaa !1
  %dither_colors = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %23, i32 0, i32 8
  store i32 %cond38, i32* %dither_colors, align 4, !tbaa !49
  %24 = load i32, i32* %bpp, align 4, !tbaa !22
  %cmp39 = icmp eq i32 %24, 8
  %cond41 = select i1 %cmp39, i32 1, i32 4
  %25 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %26 = bitcast %struct.gx_device_s* %25 to %struct.gx_device_mj_s*
  %colorcomp = getelementptr inbounds %struct.gx_device_mj_s, %struct.gx_device_mj_s* %26, i32 0, i32 68
  store i32 %cond41, i32* %colorcomp, align 4, !tbaa !25
  %27 = bitcast i32* %bpp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %27) #2
  %28 = bitcast %struct.gx_device_color_info_s** %ci to i8*
  call void @llvm.lifetime.end(i64 8, i8* %28) #2
  ret void
}

declare i32 @gdev_prn_put_params(%struct.gx_device_s*, %struct.gs_param_list_s*) #0

declare i32 @gs_closedevice(%struct.gx_device_s*) #0

declare i32 @param_read_int(%struct.gs_param_list_s*, i8*, i32*) #0

; Function Attrs: nounwind uwtable
define internal i32 @mj500c_open(%struct.gx_device_s* %pdev) #1 {
entry:
  %pdev.addr = alloca %struct.gx_device_s*, align 8
  store %struct.gx_device_s* %pdev, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %0 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %call = call i32 @mj_open(%struct.gx_device_s* %0, i32 1) #4
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @mj500c_put_params(%struct.gx_device_s* %pdev, %struct.gs_param_list_s* %plist) #1 {
entry:
  %pdev.addr = alloca %struct.gx_device_s*, align 8
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  store %struct.gx_device_s* %pdev, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %0 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %1 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call = call i32 @mj_put_params(%struct.gx_device_s* %0, %struct.gs_param_list_s* %1, i32 2) #4
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @mj6000c_open(%struct.gx_device_s* %pdev) #1 {
entry:
  %pdev.addr = alloca %struct.gx_device_s*, align 8
  store %struct.gx_device_s* %pdev, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %0 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %call = call i32 @mj_open(%struct.gx_device_s* %0, i32 1) #4
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @mj8000c_open(%struct.gx_device_s* %pdev) #1 {
entry:
  %pdev.addr = alloca %struct.gx_device_s*, align 8
  store %struct.gx_device_s* %pdev, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %0 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %call = call i32 @mj_open(%struct.gx_device_s* %0, i32 1) #4
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @mj_print_page(%struct.gx_device_printer_s* %pdev, %struct._IO_FILE* %prn_stream, i32 %ptype) #1 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_printer_s*, align 8
  %prn_stream.addr = alloca %struct._IO_FILE*, align 8
  %ptype.addr = alloca i32, align 4
  %line_size = alloca i32, align 4
  %line_size_words = alloca i32, align 4
  %num_comps = alloca i32, align 4
  %bits_per_pixel = alloca i32, align 4
  %storage_bpp = alloca i32, align 4
  %expanded_bpp = alloca i32, align 4
  %plane_size = alloca i32, align 4
  %databuff_size = alloca i32, align 4
  %errbuff_size = alloca i32, align 4
  %outbuff_size = alloca i32, align 4
  %scan = alloca i32, align 4
  %errors = alloca [2 x i32*], align 16
  %data = alloca [4 x i8*], align 16
  %plane_data = alloca [4 x [4 x i8*]], align 16
  %out_data = alloca i8*, align 8
  %out_row = alloca i8*, align 8
  %out_row_alt = alloca i8*, align 8
  %storage = alloca i64*, align 8
  %storage_size_words = alloca i32, align 4
  %mj_tmp_buf_size = alloca i32, align 4
  %mj_tmp_buf = alloca i8*, align 8
  %xtalbuff_size = alloca i32, align 4
  %xtalbuff = alloca i16*, align 8
  %Cbar = alloca [16 x i16*], align 16
  %Mbar = alloca [16 x i16*], align 16
  %Ybar = alloca [16 x i16*], align 16
  %Kbar = alloca [16 x i16*], align 16
  %Cbuf = alloca [2 x i16*], align 16
  %Mbuf = alloca [2 x i16*], align 16
  %Ybuf = alloca [2 x i16*], align 16
  %Kbuf = alloca [2 x i16*], align 16
  %i = alloca i32, align 4
  %p = alloca i16*, align 8
  %cleanup.dest.slot = alloca i32
  %i144 = alloca i32, align 4
  %p145 = alloca i8*, align 8
  %MJ_MARGIN_MM = alloca i32, align 4
  %top_skip = alloca i32, align 4
  %lend = alloca i64, align 8
  %cErr = alloca i32, align 4
  %mErr = alloca i32, align 4
  %yErr = alloca i32, align 4
  %kErr = alloca i32, align 4
  %this_pass = alloca i32, align 4
  %i290 = alloca i32, align 4
  %lnum = alloca i64, align 8
  %num_blank_lines = alloca i32, align 4
  %start_rows = alloca i32, align 4
  %rmask = alloca i64, align 8
  %ep = alloca i32*, align 8
  %data_words = alloca i64*, align 8
  %end_data = alloca i64*, align 8
  %p_data = alloca i64*, align 8
  %kP = alloca i8*, align 8
  %cP = alloca i8*, align 8
  %mP = alloca i8*, align 8
  %yP = alloca i8*, align 8
  %dp = alloca i8*, align 8
  %zero_row_count = alloca i32, align 4
  %i392 = alloca i32, align 4
  %j = alloca i32, align 4
  %odp = alloca i8*, align 8
  %dp408 = alloca i8*, align 8
  %pword = alloca i64, align 8
  %mat = alloca i16*, align 8
  %x = alloca i32, align 4
  %c = alloca i8, align 1
  %y = alloca i8, align 1
  %m = alloca i8, align 1
  %k = alloca i8, align 1
  %bitmask = alloca i8, align 1
  %val = alloca i32, align 4
  %c509 = alloca i8, align 1
  %y510 = alloca i8, align 1
  %m511 = alloca i8, align 1
  %k512 = alloca i8, align 1
  %bitmask513 = alloca i8, align 1
  %val514 = alloca i32, align 4
  %mat547 = alloca i16*, align 8
  %x551 = alloca i32, align 4
  %c559 = alloca i8, align 1
  %y560 = alloca i8, align 1
  %m561 = alloca i8, align 1
  %k562 = alloca i8, align 1
  %bitmask563 = alloca i8, align 1
  %val564 = alloca i32, align 4
  %c625 = alloca i8, align 1
  %y626 = alloca i8, align 1
  %m627 = alloca i8, align 1
  %k628 = alloca i8, align 1
  %bitmask629 = alloca i8, align 1
  %val630 = alloca i32, align 4
  %kp = alloca i64*, align 8
  %cp = alloca i64*, align 8
  %mp = alloca i64*, align 8
  %yp = alloca i64*, align 8
  %bits = alloca i64, align 8
  %kp765 = alloca i64*, align 8
  %cp769 = alloca i64*, align 8
  %mp773 = alloca i64*, align 8
  %yp777 = alloca i64*, align 8
  %bits791 = alloca i64, align 8
  store %struct.gx_device_printer_s* %pdev, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  store %struct._IO_FILE* %prn_stream, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  store i32 %ptype, i32* %ptype.addr, align 4, !tbaa !22
  %0 = bitcast i32* %line_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_printer_s* %1 to %struct.gx_device_s*
  %call = call i32 @gx_device_raster(%struct.gx_device_s* %2, i32 0) #4
  store i32 %call, i32* %line_size, align 4, !tbaa !22
  %3 = bitcast i32* %line_size_words to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = load i32, i32* %line_size, align 4, !tbaa !22
  %conv = sext i32 %4 to i64
  %add = add i64 %conv, 8
  %sub = sub i64 %add, 1
  %div = udiv i64 %sub, 8
  %conv1 = trunc i64 %div to i32
  store i32 %conv1, i32* %line_size_words, align 4, !tbaa !22
  %5 = bitcast i32* %num_comps to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  %6 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %6, i32 0, i32 11
  %num_components = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 1
  %7 = load i32, i32* %num_components, align 4, !tbaa !50
  store i32 %7, i32* %num_comps, align 4, !tbaa !22
  %8 = bitcast i32* %bits_per_pixel to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #2
  %9 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %color_info2 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %9, i32 0, i32 11
  %depth = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info2, i32 0, i32 3
  %10 = load i16, i16* %depth, align 2, !tbaa !52
  %conv3 = zext i16 %10 to i32
  store i32 %conv3, i32* %bits_per_pixel, align 4, !tbaa !22
  %11 = bitcast i32* %storage_bpp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #2
  %12 = load i32, i32* %bits_per_pixel, align 4, !tbaa !22
  store i32 %12, i32* %storage_bpp, align 4, !tbaa !22
  %13 = bitcast i32* %expanded_bpp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #2
  %14 = load i32, i32* %bits_per_pixel, align 4, !tbaa !22
  store i32 %14, i32* %expanded_bpp, align 4, !tbaa !22
  %15 = bitcast i32* %plane_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #2
  %16 = bitcast i32* %databuff_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #2
  %17 = bitcast i32* %errbuff_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #2
  store i32 0, i32* %errbuff_size, align 4, !tbaa !22
  %18 = bitcast i32* %outbuff_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #2
  store i32 0, i32* %outbuff_size, align 4, !tbaa !22
  %19 = bitcast i32* %scan to i8*
  call void @llvm.lifetime.start(i64 4, i8* %19) #2
  store i32 0, i32* %scan, align 4, !tbaa !22
  %20 = bitcast [2 x i32*]* %errors to i8*
  call void @llvm.lifetime.start(i64 16, i8* %20) #2
  %21 = bitcast [4 x i8*]* %data to i8*
  call void @llvm.lifetime.start(i64 32, i8* %21) #2
  %22 = bitcast [4 x [4 x i8*]]* %plane_data to i8*
  call void @llvm.lifetime.start(i64 128, i8* %22) #2
  %23 = bitcast i8** %out_data to i8*
  call void @llvm.lifetime.start(i64 8, i8* %23) #2
  %24 = bitcast i8** %out_row to i8*
  call void @llvm.lifetime.start(i64 8, i8* %24) #2
  %25 = bitcast i8** %out_row_alt to i8*
  call void @llvm.lifetime.start(i64 8, i8* %25) #2
  %26 = bitcast i64** %storage to i8*
  call void @llvm.lifetime.start(i64 8, i8* %26) #2
  %27 = bitcast i32* %storage_size_words to i8*
  call void @llvm.lifetime.start(i64 4, i8* %27) #2
  %28 = bitcast i32* %mj_tmp_buf_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %28) #2
  %29 = bitcast i8** %mj_tmp_buf to i8*
  call void @llvm.lifetime.start(i64 8, i8* %29) #2
  %30 = bitcast i32* %xtalbuff_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %30) #2
  %31 = bitcast i16** %xtalbuff to i8*
  call void @llvm.lifetime.start(i64 8, i8* %31) #2
  %32 = bitcast [16 x i16*]* %Cbar to i8*
  call void @llvm.lifetime.start(i64 128, i8* %32) #2
  %33 = bitcast [16 x i16*]* %Mbar to i8*
  call void @llvm.lifetime.start(i64 128, i8* %33) #2
  %34 = bitcast [16 x i16*]* %Ybar to i8*
  call void @llvm.lifetime.start(i64 128, i8* %34) #2
  %35 = bitcast [16 x i16*]* %Kbar to i8*
  call void @llvm.lifetime.start(i64 128, i8* %35) #2
  %36 = bitcast [2 x i16*]* %Cbuf to i8*
  call void @llvm.lifetime.start(i64 16, i8* %36) #2
  %37 = bitcast [2 x i16*]* %Mbuf to i8*
  call void @llvm.lifetime.start(i64 16, i8* %37) #2
  %38 = bitcast [2 x i16*]* %Ybuf to i8*
  call void @llvm.lifetime.start(i64 16, i8* %38) #2
  %39 = bitcast [2 x i16*]* %Kbuf to i8*
  call void @llvm.lifetime.start(i64 16, i8* %39) #2
  %40 = load i32, i32* %num_comps, align 4, !tbaa !22
  %cmp = icmp eq i32 %40, 3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 4, i32* %num_comps, align 4, !tbaa !22
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %41 = load i32, i32* %storage_bpp, align 4, !tbaa !22
  %cmp5 = icmp eq i32 %41, 8
  br i1 %cmp5, label %land.lhs.true, label %if.end.10

land.lhs.true:                                    ; preds = %if.end
  %42 = load i32, i32* %num_comps, align 4, !tbaa !22
  %cmp7 = icmp sge i32 %42, 3
  br i1 %cmp7, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %land.lhs.true
  store i32 3, i32* %expanded_bpp, align 4, !tbaa !22
  store i32 3, i32* %bits_per_pixel, align 4, !tbaa !22
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.9, %land.lhs.true, %if.end
  %43 = load i32, i32* %line_size, align 4, !tbaa !22
  %conv11 = sext i32 %43 to i64
  %44 = load i32, i32* %storage_bpp, align 4, !tbaa !22
  %conv12 = sext i32 %44 to i64
  %mul = mul i64 %conv12, 8
  %add13 = add i64 %conv11, %mul
  %sub14 = sub i64 %add13, 1
  %45 = load i32, i32* %storage_bpp, align 4, !tbaa !22
  %conv15 = sext i32 %45 to i64
  %mul16 = mul i64 %conv15, 8
  %div17 = udiv i64 %sub14, %mul16
  %mul18 = mul i64 %div17, 8
  %conv19 = trunc i64 %mul18 to i32
  store i32 %conv19, i32* %plane_size, align 4, !tbaa !22
  %46 = load i32, i32* %bits_per_pixel, align 4, !tbaa !22
  %cmp20 = icmp eq i32 %46, 1
  br i1 %cmp20, label %if.then.22, label %if.end.24

if.then.22:                                       ; preds = %if.end.10
  store i32 0, i32* %databuff_size, align 4, !tbaa !22
  %47 = load i32, i32* %plane_size, align 4, !tbaa !22
  %mul23 = mul nsw i32 %47, 4
  store i32 %mul23, i32* %outbuff_size, align 4, !tbaa !22
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.22, %if.end.10
  %48 = load i32, i32* %bits_per_pixel, align 4, !tbaa !22
  %cmp25 = icmp sgt i32 %48, 4
  br i1 %cmp25, label %if.then.27, label %if.end.39

if.then.27:                                       ; preds = %if.end.24
  %49 = load i32, i32* %num_comps, align 4, !tbaa !22
  %mul28 = mul nsw i32 %49, 8
  store i32 %mul28, i32* %storage_bpp, align 4, !tbaa !22
  store i32 %mul28, i32* %expanded_bpp, align 4, !tbaa !22
  %50 = load i32, i32* %plane_size, align 4, !tbaa !22
  %51 = load i32, i32* %expanded_bpp, align 4, !tbaa !22
  %mul29 = mul nsw i32 %50, %51
  %52 = load i32, i32* %num_comps, align 4, !tbaa !22
  %mul30 = mul nsw i32 %52, 4
  %add31 = add nsw i32 %mul29, %mul30
  %conv32 = sext i32 %add31 to i64
  %mul33 = mul i64 %conv32, 4
  %add34 = add i64 %mul33, 8
  %sub35 = sub i64 %add34, 1
  %div36 = udiv i64 %sub35, 8
  %mul37 = mul i64 %div36, 8
  %conv38 = trunc i64 %mul37 to i32
  store i32 %conv38, i32* %errbuff_size, align 4, !tbaa !22
  br label %if.end.39

if.end.39:                                        ; preds = %if.then.27, %if.end.24
  %53 = load i32, i32* %plane_size, align 4, !tbaa !22
  %54 = load i32, i32* %storage_bpp, align 4, !tbaa !22
  %mul40 = mul nsw i32 %53, %54
  store i32 %mul40, i32* %databuff_size, align 4, !tbaa !22
  %55 = load i32, i32* %plane_size, align 4, !tbaa !22
  %56 = load i32, i32* %plane_size, align 4, !tbaa !22
  %add41 = add nsw i32 %55, %56
  %57 = load i32, i32* %num_comps, align 4, !tbaa !22
  %mul42 = mul nsw i32 %add41, %57
  %58 = load i32, i32* %databuff_size, align 4, !tbaa !22
  %add43 = add nsw i32 %mul42, %58
  %59 = load i32, i32* %errbuff_size, align 4, !tbaa !22
  %add44 = add nsw i32 %add43, %59
  %60 = load i32, i32* %outbuff_size, align 4, !tbaa !22
  %add45 = add nsw i32 %add44, %60
  %conv46 = sext i32 %add45 to i64
  %div47 = udiv i64 %conv46, 8
  %conv48 = trunc i64 %div47 to i32
  store i32 %conv48, i32* %storage_size_words, align 4, !tbaa !22
  %61 = load i32, i32* %plane_size, align 4, !tbaa !22
  %mul49 = mul nsw i32 %61, 8
  %add50 = add nsw i32 %mul49, 64
  store i32 %add50, i32* %xtalbuff_size, align 4, !tbaa !22
  %62 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %62, i32 0, i32 3
  %63 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !53
  %non_gc_memory = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %63, i32 0, i32 3
  %64 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory, align 8, !tbaa !54
  %non_gc_memory51 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %64, i32 0, i32 3
  %65 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory51, align 8, !tbaa !54
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %65, i32 0, i32 1
  %alloc_byte_array = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 10
  %66 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array, align 8, !tbaa !57
  %67 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory52 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %67, i32 0, i32 3
  %68 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory52, align 8, !tbaa !53
  %non_gc_memory53 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %68, i32 0, i32 3
  %69 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory53, align 8, !tbaa !54
  %non_gc_memory54 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %69, i32 0, i32 3
  %70 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory54, align 8, !tbaa !54
  %71 = load i32, i32* %xtalbuff_size, align 4, !tbaa !22
  %mul55 = mul nsw i32 %71, 72
  %call56 = call i8* %66(%struct.gs_memory_s* %70, i32 %mul55, i32 8, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i32 0, i32 0)) #4
  %72 = bitcast i8* %call56 to i16*
  store i16* %72, i16** %xtalbuff, align 8, !tbaa !1
  %73 = load i16*, i16** %xtalbuff, align 8, !tbaa !1
  %74 = bitcast i16* %73 to i8*
  %75 = load i32, i32* %xtalbuff_size, align 4, !tbaa !22
  %mul57 = mul nsw i32 %75, 72
  %conv58 = sext i32 %mul57 to i64
  %mul59 = mul i64 %conv58, 8
  %call60 = call i8* @memset(i8* %74, i32 0, i64 %mul59) #5
  %76 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %76) #2
  %77 = bitcast i16** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %77) #2
  %78 = load i16*, i16** %xtalbuff, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i16, i16* %78, i64 16
  store i16* %add.ptr, i16** %p, align 8, !tbaa !1
  store i32 0, i32* %i, align 4, !tbaa !22
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.39
  %79 = load i32, i32* %i, align 4, !tbaa !22
  %cmp61 = icmp slt i32 %79, 16
  br i1 %cmp61, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %80 = load i16*, i16** %p, align 8, !tbaa !1
  %81 = load i32, i32* %i, align 4, !tbaa !22
  %idxprom = sext i32 %81 to i64
  %arrayidx = getelementptr inbounds [16 x i16*], [16 x i16*]* %Cbar, i32 0, i64 %idxprom
  store i16* %80, i16** %arrayidx, align 8, !tbaa !1
  %82 = load i32, i32* %xtalbuff_size, align 4, !tbaa !22
  %83 = load i16*, i16** %p, align 8, !tbaa !1
  %idx.ext = sext i32 %82 to i64
  %add.ptr63 = getelementptr inbounds i16, i16* %83, i64 %idx.ext
  store i16* %add.ptr63, i16** %p, align 8, !tbaa !1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %84 = load i32, i32* %i, align 4, !tbaa !22
  %inc = add nsw i32 %84, 1
  store i32 %inc, i32* %i, align 4, !tbaa !22
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4, !tbaa !22
  br label %for.cond.64

for.cond.64:                                      ; preds = %for.inc.72, %for.end
  %85 = load i32, i32* %i, align 4, !tbaa !22
  %cmp65 = icmp slt i32 %85, 16
  br i1 %cmp65, label %for.body.67, label %for.end.74

for.body.67:                                      ; preds = %for.cond.64
  %86 = load i16*, i16** %p, align 8, !tbaa !1
  %87 = load i32, i32* %i, align 4, !tbaa !22
  %idxprom68 = sext i32 %87 to i64
  %arrayidx69 = getelementptr inbounds [16 x i16*], [16 x i16*]* %Mbar, i32 0, i64 %idxprom68
  store i16* %86, i16** %arrayidx69, align 8, !tbaa !1
  %88 = load i32, i32* %xtalbuff_size, align 4, !tbaa !22
  %89 = load i16*, i16** %p, align 8, !tbaa !1
  %idx.ext70 = sext i32 %88 to i64
  %add.ptr71 = getelementptr inbounds i16, i16* %89, i64 %idx.ext70
  store i16* %add.ptr71, i16** %p, align 8, !tbaa !1
  br label %for.inc.72

for.inc.72:                                       ; preds = %for.body.67
  %90 = load i32, i32* %i, align 4, !tbaa !22
  %inc73 = add nsw i32 %90, 1
  store i32 %inc73, i32* %i, align 4, !tbaa !22
  br label %for.cond.64

for.end.74:                                       ; preds = %for.cond.64
  store i32 0, i32* %i, align 4, !tbaa !22
  br label %for.cond.75

for.cond.75:                                      ; preds = %for.inc.83, %for.end.74
  %91 = load i32, i32* %i, align 4, !tbaa !22
  %cmp76 = icmp slt i32 %91, 16
  br i1 %cmp76, label %for.body.78, label %for.end.85

for.body.78:                                      ; preds = %for.cond.75
  %92 = load i16*, i16** %p, align 8, !tbaa !1
  %93 = load i32, i32* %i, align 4, !tbaa !22
  %idxprom79 = sext i32 %93 to i64
  %arrayidx80 = getelementptr inbounds [16 x i16*], [16 x i16*]* %Ybar, i32 0, i64 %idxprom79
  store i16* %92, i16** %arrayidx80, align 8, !tbaa !1
  %94 = load i32, i32* %xtalbuff_size, align 4, !tbaa !22
  %95 = load i16*, i16** %p, align 8, !tbaa !1
  %idx.ext81 = sext i32 %94 to i64
  %add.ptr82 = getelementptr inbounds i16, i16* %95, i64 %idx.ext81
  store i16* %add.ptr82, i16** %p, align 8, !tbaa !1
  br label %for.inc.83

for.inc.83:                                       ; preds = %for.body.78
  %96 = load i32, i32* %i, align 4, !tbaa !22
  %inc84 = add nsw i32 %96, 1
  store i32 %inc84, i32* %i, align 4, !tbaa !22
  br label %for.cond.75

for.end.85:                                       ; preds = %for.cond.75
  store i32 0, i32* %i, align 4, !tbaa !22
  br label %for.cond.86

for.cond.86:                                      ; preds = %for.inc.94, %for.end.85
  %97 = load i32, i32* %i, align 4, !tbaa !22
  %cmp87 = icmp slt i32 %97, 16
  br i1 %cmp87, label %for.body.89, label %for.end.96

for.body.89:                                      ; preds = %for.cond.86
  %98 = load i16*, i16** %p, align 8, !tbaa !1
  %99 = load i32, i32* %i, align 4, !tbaa !22
  %idxprom90 = sext i32 %99 to i64
  %arrayidx91 = getelementptr inbounds [16 x i16*], [16 x i16*]* %Kbar, i32 0, i64 %idxprom90
  store i16* %98, i16** %arrayidx91, align 8, !tbaa !1
  %100 = load i32, i32* %xtalbuff_size, align 4, !tbaa !22
  %101 = load i16*, i16** %p, align 8, !tbaa !1
  %idx.ext92 = sext i32 %100 to i64
  %add.ptr93 = getelementptr inbounds i16, i16* %101, i64 %idx.ext92
  store i16* %add.ptr93, i16** %p, align 8, !tbaa !1
  br label %for.inc.94

for.inc.94:                                       ; preds = %for.body.89
  %102 = load i32, i32* %i, align 4, !tbaa !22
  %inc95 = add nsw i32 %102, 1
  store i32 %inc95, i32* %i, align 4, !tbaa !22
  br label %for.cond.86

for.end.96:                                       ; preds = %for.cond.86
  %103 = load i16*, i16** %p, align 8, !tbaa !1
  %arrayidx97 = getelementptr inbounds [2 x i16*], [2 x i16*]* %Cbuf, i32 0, i64 0
  store i16* %103, i16** %arrayidx97, align 8, !tbaa !1
  %104 = load i32, i32* %xtalbuff_size, align 4, !tbaa !22
  %105 = load i16*, i16** %p, align 8, !tbaa !1
  %idx.ext98 = sext i32 %104 to i64
  %add.ptr99 = getelementptr inbounds i16, i16* %105, i64 %idx.ext98
  store i16* %add.ptr99, i16** %p, align 8, !tbaa !1
  %106 = load i16*, i16** %p, align 8, !tbaa !1
  %arrayidx100 = getelementptr inbounds [2 x i16*], [2 x i16*]* %Cbuf, i32 0, i64 1
  store i16* %106, i16** %arrayidx100, align 8, !tbaa !1
  %107 = load i32, i32* %xtalbuff_size, align 4, !tbaa !22
  %108 = load i16*, i16** %p, align 8, !tbaa !1
  %idx.ext101 = sext i32 %107 to i64
  %add.ptr102 = getelementptr inbounds i16, i16* %108, i64 %idx.ext101
  store i16* %add.ptr102, i16** %p, align 8, !tbaa !1
  %109 = load i16*, i16** %p, align 8, !tbaa !1
  %arrayidx103 = getelementptr inbounds [2 x i16*], [2 x i16*]* %Mbuf, i32 0, i64 0
  store i16* %109, i16** %arrayidx103, align 8, !tbaa !1
  %110 = load i32, i32* %xtalbuff_size, align 4, !tbaa !22
  %111 = load i16*, i16** %p, align 8, !tbaa !1
  %idx.ext104 = sext i32 %110 to i64
  %add.ptr105 = getelementptr inbounds i16, i16* %111, i64 %idx.ext104
  store i16* %add.ptr105, i16** %p, align 8, !tbaa !1
  %112 = load i16*, i16** %p, align 8, !tbaa !1
  %arrayidx106 = getelementptr inbounds [2 x i16*], [2 x i16*]* %Mbuf, i32 0, i64 1
  store i16* %112, i16** %arrayidx106, align 8, !tbaa !1
  %113 = load i32, i32* %xtalbuff_size, align 4, !tbaa !22
  %114 = load i16*, i16** %p, align 8, !tbaa !1
  %idx.ext107 = sext i32 %113 to i64
  %add.ptr108 = getelementptr inbounds i16, i16* %114, i64 %idx.ext107
  store i16* %add.ptr108, i16** %p, align 8, !tbaa !1
  %115 = load i16*, i16** %p, align 8, !tbaa !1
  %arrayidx109 = getelementptr inbounds [2 x i16*], [2 x i16*]* %Ybuf, i32 0, i64 0
  store i16* %115, i16** %arrayidx109, align 8, !tbaa !1
  %116 = load i32, i32* %xtalbuff_size, align 4, !tbaa !22
  %117 = load i16*, i16** %p, align 8, !tbaa !1
  %idx.ext110 = sext i32 %116 to i64
  %add.ptr111 = getelementptr inbounds i16, i16* %117, i64 %idx.ext110
  store i16* %add.ptr111, i16** %p, align 8, !tbaa !1
  %118 = load i16*, i16** %p, align 8, !tbaa !1
  %arrayidx112 = getelementptr inbounds [2 x i16*], [2 x i16*]* %Ybuf, i32 0, i64 1
  store i16* %118, i16** %arrayidx112, align 8, !tbaa !1
  %119 = load i32, i32* %xtalbuff_size, align 4, !tbaa !22
  %120 = load i16*, i16** %p, align 8, !tbaa !1
  %idx.ext113 = sext i32 %119 to i64
  %add.ptr114 = getelementptr inbounds i16, i16* %120, i64 %idx.ext113
  store i16* %add.ptr114, i16** %p, align 8, !tbaa !1
  %121 = load i16*, i16** %p, align 8, !tbaa !1
  %arrayidx115 = getelementptr inbounds [2 x i16*], [2 x i16*]* %Kbuf, i32 0, i64 0
  store i16* %121, i16** %arrayidx115, align 8, !tbaa !1
  %122 = load i32, i32* %xtalbuff_size, align 4, !tbaa !22
  %123 = load i16*, i16** %p, align 8, !tbaa !1
  %idx.ext116 = sext i32 %122 to i64
  %add.ptr117 = getelementptr inbounds i16, i16* %123, i64 %idx.ext116
  store i16* %add.ptr117, i16** %p, align 8, !tbaa !1
  %124 = load i16*, i16** %p, align 8, !tbaa !1
  %arrayidx118 = getelementptr inbounds [2 x i16*], [2 x i16*]* %Kbuf, i32 0, i64 1
  store i16* %124, i16** %arrayidx118, align 8, !tbaa !1
  %125 = load i32, i32* %xtalbuff_size, align 4, !tbaa !22
  %126 = load i16*, i16** %p, align 8, !tbaa !1
  %idx.ext119 = sext i32 %125 to i64
  %add.ptr120 = getelementptr inbounds i16, i16* %126, i64 %idx.ext119
  store i16* %add.ptr120, i16** %p, align 8, !tbaa !1
  %127 = bitcast i16** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %127) #2
  %128 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %128) #2
  %129 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory121 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %129, i32 0, i32 3
  %130 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory121, align 8, !tbaa !53
  %non_gc_memory122 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %130, i32 0, i32 3
  %131 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory122, align 8, !tbaa !54
  %non_gc_memory123 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %131, i32 0, i32 3
  %132 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory123, align 8, !tbaa !54
  %procs124 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %132, i32 0, i32 1
  %alloc_byte_array125 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs124, i32 0, i32 10
  %133 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array125, align 8, !tbaa !57
  %134 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory126 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %134, i32 0, i32 3
  %135 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory126, align 8, !tbaa !53
  %non_gc_memory127 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %135, i32 0, i32 3
  %136 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory127, align 8, !tbaa !54
  %non_gc_memory128 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %136, i32 0, i32 3
  %137 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory128, align 8, !tbaa !54
  %138 = load i32, i32* %storage_size_words, align 4, !tbaa !22
  %call129 = call i8* %133(%struct.gs_memory_s* %137, i32 %138, i32 8, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.15, i32 0, i32 0)) #4
  %139 = bitcast i8* %call129 to i64*
  store i64* %139, i64** %storage, align 8, !tbaa !1
  %140 = load i32, i32* %plane_size, align 4, !tbaa !22
  store i32 %140, i32* %mj_tmp_buf_size, align 4, !tbaa !22
  %141 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory130 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %141, i32 0, i32 3
  %142 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory130, align 8, !tbaa !53
  %non_gc_memory131 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %142, i32 0, i32 3
  %143 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory131, align 8, !tbaa !54
  %non_gc_memory132 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %143, i32 0, i32 3
  %144 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory132, align 8, !tbaa !54
  %procs133 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %144, i32 0, i32 1
  %alloc_byte_array134 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs133, i32 0, i32 10
  %145 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array134, align 8, !tbaa !57
  %146 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory135 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %146, i32 0, i32 3
  %147 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory135, align 8, !tbaa !53
  %non_gc_memory136 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %147, i32 0, i32 3
  %148 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory136, align 8, !tbaa !54
  %non_gc_memory137 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %148, i32 0, i32 3
  %149 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory137, align 8, !tbaa !54
  %150 = load i32, i32* %mj_tmp_buf_size, align 4, !tbaa !22
  %call138 = call i8* %145(%struct.gs_memory_s* %149, i32 %150, i32 8, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.16, i32 0, i32 0)) #4
  store i8* %call138, i8** %mj_tmp_buf, align 8, !tbaa !1
  %151 = load i64*, i64** %storage, align 8, !tbaa !1
  %cmp139 = icmp eq i64* %151, null
  br i1 %cmp139, label %if.then.143, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.end.96
  %152 = load i8*, i8** %mj_tmp_buf, align 8, !tbaa !1
  %cmp141 = icmp eq i8* %152, null
  br i1 %cmp141, label %if.then.143, label %if.else

if.then.143:                                      ; preds = %lor.lhs.false, %for.end.96
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.880

if.else:                                          ; preds = %lor.lhs.false
  %153 = bitcast i32* %i144 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %153) #2
  %154 = bitcast i8** %p145 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %154) #2
  %155 = load i64*, i64** %storage, align 8, !tbaa !1
  %156 = bitcast i64* %155 to i8*
  store i8* %156, i8** %out_row, align 8, !tbaa !1
  store i8* %156, i8** %out_data, align 8, !tbaa !1
  store i8* %156, i8** %p145, align 8, !tbaa !1
  %157 = load i8*, i8** %p145, align 8, !tbaa !1
  %arrayidx146 = getelementptr inbounds [4 x i8*], [4 x i8*]* %data, i32 0, i64 2
  store i8* %157, i8** %arrayidx146, align 8, !tbaa !1
  %arrayidx147 = getelementptr inbounds [4 x i8*], [4 x i8*]* %data, i32 0, i64 1
  store i8* %157, i8** %arrayidx147, align 8, !tbaa !1
  %arrayidx148 = getelementptr inbounds [4 x i8*], [4 x i8*]* %data, i32 0, i64 0
  store i8* %157, i8** %arrayidx148, align 8, !tbaa !1
  %158 = load i8*, i8** %p145, align 8, !tbaa !1
  %159 = load i32, i32* %databuff_size, align 4, !tbaa !22
  %idx.ext149 = sext i32 %159 to i64
  %add.ptr150 = getelementptr inbounds i8, i8* %158, i64 %idx.ext149
  %arrayidx151 = getelementptr inbounds [4 x i8*], [4 x i8*]* %data, i32 0, i64 3
  store i8* %add.ptr150, i8** %arrayidx151, align 8, !tbaa !1
  %160 = load i8*, i8** %out_row, align 8, !tbaa !1
  %161 = load i32, i32* %plane_size, align 4, !tbaa !22
  %mul152 = mul nsw i32 %161, 2
  %idx.ext153 = sext i32 %mul152 to i64
  %add.ptr154 = getelementptr inbounds i8, i8* %160, i64 %idx.ext153
  store i8* %add.ptr154, i8** %out_row_alt, align 8, !tbaa !1
  %162 = load i32, i32* %bits_per_pixel, align 4, !tbaa !22
  %cmp155 = icmp sgt i32 %162, 1
  br i1 %cmp155, label %if.then.157, label %if.end.160

if.then.157:                                      ; preds = %if.else
  %163 = load i32, i32* %databuff_size, align 4, !tbaa !22
  %164 = load i8*, i8** %p145, align 8, !tbaa !1
  %idx.ext158 = sext i32 %163 to i64
  %add.ptr159 = getelementptr inbounds i8, i8* %164, i64 %idx.ext158
  store i8* %add.ptr159, i8** %p145, align 8, !tbaa !1
  br label %if.end.160

if.end.160:                                       ; preds = %if.then.157, %if.else
  %165 = load i32, i32* %bits_per_pixel, align 4, !tbaa !22
  %cmp161 = icmp sgt i32 %165, 4
  br i1 %cmp161, label %if.then.163, label %if.end.174

if.then.163:                                      ; preds = %if.end.160
  %166 = load i8*, i8** %p145, align 8, !tbaa !1
  %167 = bitcast i8* %166 to i32*
  %168 = load i32, i32* %num_comps, align 4, !tbaa !22
  %mul164 = mul nsw i32 %168, 2
  %idx.ext165 = sext i32 %mul164 to i64
  %add.ptr166 = getelementptr inbounds i32, i32* %167, i64 %idx.ext165
  %arrayidx167 = getelementptr inbounds [2 x i32*], [2 x i32*]* %errors, i32 0, i64 0
  store i32* %add.ptr166, i32** %arrayidx167, align 8, !tbaa !1
  %arrayidx168 = getelementptr inbounds [2 x i32*], [2 x i32*]* %errors, i32 0, i64 0
  %169 = load i32*, i32** %arrayidx168, align 8, !tbaa !1
  %170 = load i32, i32* %databuff_size, align 4, !tbaa !22
  %idx.ext169 = sext i32 %170 to i64
  %add.ptr170 = getelementptr inbounds i32, i32* %169, i64 %idx.ext169
  %arrayidx171 = getelementptr inbounds [2 x i32*], [2 x i32*]* %errors, i32 0, i64 1
  store i32* %add.ptr170, i32** %arrayidx171, align 8, !tbaa !1
  %171 = load i32, i32* %errbuff_size, align 4, !tbaa !22
  %172 = load i8*, i8** %p145, align 8, !tbaa !1
  %idx.ext172 = sext i32 %171 to i64
  %add.ptr173 = getelementptr inbounds i8, i8* %172, i64 %idx.ext172
  store i8* %add.ptr173, i8** %p145, align 8, !tbaa !1
  br label %if.end.174

if.end.174:                                       ; preds = %if.then.163, %if.end.160
  store i32 0, i32* %i144, align 4, !tbaa !22
  br label %for.cond.175

for.cond.175:                                     ; preds = %for.inc.187, %if.end.174
  %173 = load i32, i32* %i144, align 4, !tbaa !22
  %174 = load i32, i32* %num_comps, align 4, !tbaa !22
  %cmp176 = icmp slt i32 %173, %174
  br i1 %cmp176, label %for.body.178, label %for.end.189

for.body.178:                                     ; preds = %for.cond.175
  %175 = load i8*, i8** %p145, align 8, !tbaa !1
  %176 = load i32, i32* %i144, align 4, !tbaa !22
  %idxprom179 = sext i32 %176 to i64
  %arrayidx180 = getelementptr inbounds [4 x [4 x i8*]], [4 x [4 x i8*]]* %plane_data, i32 0, i64 2
  %arrayidx181 = getelementptr inbounds [4 x i8*], [4 x i8*]* %arrayidx180, i32 0, i64 %idxprom179
  store i8* %175, i8** %arrayidx181, align 8, !tbaa !1
  %177 = load i32, i32* %i144, align 4, !tbaa !22
  %idxprom182 = sext i32 %177 to i64
  %arrayidx183 = getelementptr inbounds [4 x [4 x i8*]], [4 x [4 x i8*]]* %plane_data, i32 0, i64 0
  %arrayidx184 = getelementptr inbounds [4 x i8*], [4 x i8*]* %arrayidx183, i32 0, i64 %idxprom182
  store i8* %175, i8** %arrayidx184, align 8, !tbaa !1
  %178 = load i32, i32* %plane_size, align 4, !tbaa !22
  %179 = load i8*, i8** %p145, align 8, !tbaa !1
  %idx.ext185 = sext i32 %178 to i64
  %add.ptr186 = getelementptr inbounds i8, i8* %179, i64 %idx.ext185
  store i8* %add.ptr186, i8** %p145, align 8, !tbaa !1
  br label %for.inc.187

for.inc.187:                                      ; preds = %for.body.178
  %180 = load i32, i32* %i144, align 4, !tbaa !22
  %inc188 = add nsw i32 %180, 1
  store i32 %inc188, i32* %i144, align 4, !tbaa !22
  br label %for.cond.175

for.end.189:                                      ; preds = %for.cond.175
  store i32 0, i32* %i144, align 4, !tbaa !22
  br label %for.cond.190

for.cond.190:                                     ; preds = %for.inc.204, %for.end.189
  %181 = load i32, i32* %i144, align 4, !tbaa !22
  %182 = load i32, i32* %num_comps, align 4, !tbaa !22
  %cmp191 = icmp slt i32 %181, %182
  br i1 %cmp191, label %for.body.193, label %for.end.206

for.body.193:                                     ; preds = %for.cond.190
  %183 = load i8*, i8** %p145, align 8, !tbaa !1
  %184 = load i32, i32* %i144, align 4, !tbaa !22
  %idxprom194 = sext i32 %184 to i64
  %arrayidx195 = getelementptr inbounds [4 x [4 x i8*]], [4 x [4 x i8*]]* %plane_data, i32 0, i64 1
  %arrayidx196 = getelementptr inbounds [4 x i8*], [4 x i8*]* %arrayidx195, i32 0, i64 %idxprom194
  store i8* %183, i8** %arrayidx196, align 8, !tbaa !1
  %185 = load i8*, i8** %p145, align 8, !tbaa !1
  %186 = load i32, i32* %plane_size, align 4, !tbaa !22
  %idx.ext197 = sext i32 %186 to i64
  %add.ptr198 = getelementptr inbounds i8, i8* %185, i64 %idx.ext197
  %187 = load i32, i32* %i144, align 4, !tbaa !22
  %idxprom199 = sext i32 %187 to i64
  %arrayidx200 = getelementptr inbounds [4 x [4 x i8*]], [4 x [4 x i8*]]* %plane_data, i32 0, i64 3
  %arrayidx201 = getelementptr inbounds [4 x i8*], [4 x i8*]* %arrayidx200, i32 0, i64 %idxprom199
  store i8* %add.ptr198, i8** %arrayidx201, align 8, !tbaa !1
  %188 = load i32, i32* %plane_size, align 4, !tbaa !22
  %189 = load i8*, i8** %p145, align 8, !tbaa !1
  %idx.ext202 = sext i32 %188 to i64
  %add.ptr203 = getelementptr inbounds i8, i8* %189, i64 %idx.ext202
  store i8* %add.ptr203, i8** %p145, align 8, !tbaa !1
  br label %for.inc.204

for.inc.204:                                      ; preds = %for.body.193
  %190 = load i32, i32* %i144, align 4, !tbaa !22
  %inc205 = add nsw i32 %190, 1
  store i32 %inc205, i32* %i144, align 4, !tbaa !22
  br label %for.cond.190

for.end.206:                                      ; preds = %for.cond.190
  %191 = load i32, i32* %bits_per_pixel, align 4, !tbaa !22
  %cmp207 = icmp eq i32 %191, 1
  br i1 %cmp207, label %if.then.209, label %if.end.219

if.then.209:                                      ; preds = %for.end.206
  %192 = load i8*, i8** %p145, align 8, !tbaa !1
  store i8* %192, i8** %out_row, align 8, !tbaa !1
  store i8* %192, i8** %out_data, align 8, !tbaa !1
  %193 = load i8*, i8** %out_row, align 8, !tbaa !1
  %194 = load i32, i32* %plane_size, align 4, !tbaa !22
  %mul210 = mul nsw i32 %194, 2
  %idx.ext211 = sext i32 %mul210 to i64
  %add.ptr212 = getelementptr inbounds i8, i8* %193, i64 %idx.ext211
  store i8* %add.ptr212, i8** %out_row_alt, align 8, !tbaa !1
  %195 = load i32, i32* %databuff_size, align 4, !tbaa !22
  %arrayidx213 = getelementptr inbounds [4 x i8*], [4 x i8*]* %data, i32 0, i64 1
  %196 = load i8*, i8** %arrayidx213, align 8, !tbaa !1
  %idx.ext214 = sext i32 %195 to i64
  %add.ptr215 = getelementptr inbounds i8, i8* %196, i64 %idx.ext214
  store i8* %add.ptr215, i8** %arrayidx213, align 8, !tbaa !1
  %197 = load i32, i32* %databuff_size, align 4, !tbaa !22
  %arrayidx216 = getelementptr inbounds [4 x i8*], [4 x i8*]* %data, i32 0, i64 3
  %198 = load i8*, i8** %arrayidx216, align 8, !tbaa !1
  %idx.ext217 = sext i32 %197 to i64
  %add.ptr218 = getelementptr inbounds i8, i8* %198, i64 %idx.ext217
  store i8* %add.ptr218, i8** %arrayidx216, align 8, !tbaa !1
  br label %if.end.219

if.end.219:                                       ; preds = %if.then.209, %for.end.206
  %199 = bitcast i8** %p145 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %199) #2
  %200 = bitcast i32* %i144 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %200) #2
  br label %if.end.220

if.end.220:                                       ; preds = %if.end.219
  %201 = load i64*, i64** %storage, align 8, !tbaa !1
  %202 = bitcast i64* %201 to i8*
  %203 = load i32, i32* %storage_size_words, align 4, !tbaa !22
  %conv221 = zext i32 %203 to i64
  %mul222 = mul i64 %conv221, 8
  %call223 = call i8* @memset(i8* %202, i32 0, i64 %mul222) #5
  %204 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call224 = call i64 @fwrite(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i32 0, i32 0), i64 1, i64 8, %struct._IO_FILE* %204) #4
  %205 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %206 = bitcast %struct.gx_device_printer_s* %205 to %struct.gx_device_mj_s*
  %microweave = getelementptr inbounds %struct.gx_device_mj_s, %struct.gx_device_mj_s* %206, i32 0, i32 75
  %207 = load i32, i32* %microweave, align 4, !tbaa !37
  %tobool = icmp ne i32 %207, 0
  br i1 %tobool, label %if.then.225, label %if.end.227

if.then.225:                                      ; preds = %if.end.220
  %208 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call226 = call i64 @fwrite(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i32 0, i32 0), i64 1, i64 6, %struct._IO_FILE* %208) #4
  br label %if.end.227

if.end.227:                                       ; preds = %if.then.225, %if.end.220
  %209 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %210 = bitcast %struct.gx_device_printer_s* %209 to %struct.gx_device_mj_s*
  %dotsize = getelementptr inbounds %struct.gx_device_mj_s, %struct.gx_device_mj_s* %210, i32 0, i32 76
  %211 = load i32, i32* %dotsize, align 4, !tbaa !38
  %tobool228 = icmp ne i32 %211, 0
  br i1 %tobool228, label %if.then.229, label %if.end.231

if.then.229:                                      ; preds = %if.end.227
  %212 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call230 = call i64 @fwrite(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i32 0, i32 0), i64 1, i64 7, %struct._IO_FILE* %212) #4
  br label %if.end.231

if.end.231:                                       ; preds = %if.then.229, %if.end.227
  %213 = load i32, i32* %ptype.addr, align 4, !tbaa !22
  %cmp232 = icmp eq i32 %213, 3
  br i1 %cmp232, label %if.then.237, label %lor.lhs.false.234

lor.lhs.false.234:                                ; preds = %if.end.231
  %214 = load i32, i32* %ptype.addr, align 4, !tbaa !22
  %cmp235 = icmp eq i32 %214, 4
  br i1 %cmp235, label %if.then.237, label %if.end.246

if.then.237:                                      ; preds = %lor.lhs.false.234, %if.end.231
  %215 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %color_info238 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %215, i32 0, i32 11
  %depth239 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info238, i32 0, i32 3
  %216 = load i16, i16* %depth239, align 2, !tbaa !52
  %conv240 = zext i16 %216 to i32
  %cmp241 = icmp eq i32 %conv240, 8
  br i1 %cmp241, label %if.then.243, label %if.end.245

if.then.243:                                      ; preds = %if.then.237
  %217 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call244 = call i64 @fwrite(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i32 0, i32 0), i64 1, i64 7, %struct._IO_FILE* %217) #4
  br label %if.end.245

if.end.245:                                       ; preds = %if.then.243, %if.then.237
  br label %if.end.246

if.end.246:                                       ; preds = %if.end.245, %lor.lhs.false.234
  %218 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %219 = bitcast %struct.gx_device_printer_s* %218 to %struct.gx_device_mj_s*
  %direction = getelementptr inbounds %struct.gx_device_mj_s, %struct.gx_device_mj_s* %219, i32 0, i32 74
  %220 = load i32, i32* %direction, align 4, !tbaa !36
  %tobool247 = icmp ne i32 %220, 0
  br i1 %tobool247, label %if.then.248, label %if.else.250

if.then.248:                                      ; preds = %if.end.246
  %221 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call249 = call i64 @fwrite(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i32 0, i32 0), i64 1, i64 3, %struct._IO_FILE* %221) #4
  br label %if.end.252

if.else.250:                                      ; preds = %if.end.246
  %222 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call251 = call i64 @fwrite(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i32 0, i32 0), i64 1, i64 3, %struct._IO_FILE* %222) #4
  br label %if.end.252

if.end.252:                                       ; preds = %if.else.250, %if.then.248
  %223 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %HWResolution = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %223, i32 0, i32 22
  %arrayidx253 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution, i32 0, i64 1
  %224 = load float, float* %arrayidx253, align 4, !tbaa !23
  %cmp254 = fcmp oge float %224, 7.200000e+02
  br i1 %cmp254, label %if.then.256, label %if.else.258

if.then.256:                                      ; preds = %if.end.252
  %225 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call257 = call i64 @fwrite(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.23, i32 0, i32 0), i64 1, i64 9, %struct._IO_FILE* %225) #4
  br label %if.end.268

if.else.258:                                      ; preds = %if.end.252
  %226 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %HWResolution259 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %226, i32 0, i32 22
  %arrayidx260 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution259, i32 0, i64 1
  %227 = load float, float* %arrayidx260, align 4, !tbaa !23
  %cmp261 = fcmp oge float %227, 3.600000e+02
  br i1 %cmp261, label %if.then.263, label %if.else.265

if.then.263:                                      ; preds = %if.else.258
  %228 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call264 = call i64 @fwrite(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.24, i32 0, i32 0), i64 1, i64 9, %struct._IO_FILE* %228) #4
  br label %if.end.267

if.else.265:                                      ; preds = %if.else.258
  %229 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call266 = call i64 @fwrite(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.25, i32 0, i32 0), i64 1, i64 9, %struct._IO_FILE* %229) #4
  br label %if.end.267

if.end.267:                                       ; preds = %if.else.265, %if.then.263
  br label %if.end.268

if.end.268:                                       ; preds = %if.end.267, %if.then.256
  %230 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call269 = call i64 @fwrite(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i32 0, i32 0), i64 1, i64 5, %struct._IO_FILE* %230) #4
  %231 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %231, i32 0, i32 14
  %232 = load i32, i32* %height, align 4, !tbaa !58
  %rem = srem i32 %232, 256
  %233 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call270 = call i32 @fputc(i32 %rem, %struct._IO_FILE* %233) #4
  %234 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %height271 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %234, i32 0, i32 14
  %235 = load i32, i32* %height271, align 4, !tbaa !58
  %div272 = sdiv i32 %235, 256
  %236 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call273 = call i32 @fputc(i32 %div272, %struct._IO_FILE* %236) #4
  %237 = bitcast i32* %MJ_MARGIN_MM to i8*
  call void @llvm.lifetime.start(i64 4, i8* %237) #2
  store i32 55, i32* %MJ_MARGIN_MM, align 4, !tbaa !22
  %238 = bitcast i32* %top_skip to i8*
  call void @llvm.lifetime.start(i64 4, i8* %238) #2
  %239 = load i32, i32* %MJ_MARGIN_MM, align 4, !tbaa !22
  %conv274 = sitofp i32 %239 to float
  %240 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %HWResolution275 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %240, i32 0, i32 22
  %arrayidx276 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution275, i32 0, i64 1
  %241 = load float, float* %arrayidx276, align 4, !tbaa !23
  %mul277 = fmul float %conv274, %241
  %div278 = fdiv float %mul277, 2.540000e+02
  %conv279 = fptoui float %div278 to i32
  store i32 %conv279, i32* %top_skip, align 4, !tbaa !22
  %242 = load i32, i32* %top_skip, align 4, !tbaa !22
  %xor = xor i32 %242, -1
  %and = and i32 %xor, 65536
  store i32 %and, i32* %top_skip, align 4, !tbaa !22
  %243 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call280 = call i64 @fwrite(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.27, i32 0, i32 0), i64 1, i64 7, %struct._IO_FILE* %243) #4
  %244 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call281 = call i64 @fwrite(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.28, i32 0, i32 0), i64 1, i64 7, %struct._IO_FILE* %244) #4
  %245 = bitcast i32* %top_skip to i8*
  call void @llvm.lifetime.end(i64 4, i8* %245) #2
  %246 = bitcast i32* %MJ_MARGIN_MM to i8*
  call void @llvm.lifetime.end(i64 4, i8* %246) #2
  %247 = bitcast i64* %lend to i8*
  call void @llvm.lifetime.start(i64 8, i8* %247) #2
  %248 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %height282 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %248, i32 0, i32 14
  %249 = load i32, i32* %height282, align 4, !tbaa !58
  %conv283 = sitofp i32 %249 to float
  %250 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %HWMargins = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %250, i32 0, i32 25
  %arrayidx284 = getelementptr inbounds [4 x float], [4 x float]* %HWMargins, i32 0, i64 3
  %251 = load float, float* %arrayidx284, align 4, !tbaa !23
  %252 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %HWMargins285 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %252, i32 0, i32 25
  %arrayidx286 = getelementptr inbounds [4 x float], [4 x float]* %HWMargins285, i32 0, i64 1
  %253 = load float, float* %arrayidx286, align 4, !tbaa !23
  %add287 = fadd float %251, %253
  %sub288 = fsub float %conv283, %add287
  %conv289 = fptosi float %sub288 to i64
  store i64 %conv289, i64* %lend, align 8, !tbaa !21
  %254 = bitcast i32* %cErr to i8*
  call void @llvm.lifetime.start(i64 4, i8* %254) #2
  %255 = bitcast i32* %mErr to i8*
  call void @llvm.lifetime.start(i64 4, i8* %255) #2
  %256 = bitcast i32* %yErr to i8*
  call void @llvm.lifetime.start(i64 4, i8* %256) #2
  %257 = bitcast i32* %kErr to i8*
  call void @llvm.lifetime.start(i64 4, i8* %257) #2
  %258 = bitcast i32* %this_pass to i8*
  call void @llvm.lifetime.start(i64 4, i8* %258) #2
  %259 = bitcast i32* %i290 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %259) #2
  %260 = bitcast i64* %lnum to i8*
  call void @llvm.lifetime.start(i64 8, i8* %260) #2
  %261 = bitcast i32* %num_blank_lines to i8*
  call void @llvm.lifetime.start(i64 4, i8* %261) #2
  store i32 0, i32* %num_blank_lines, align 4, !tbaa !22
  %262 = bitcast i32* %start_rows to i8*
  call void @llvm.lifetime.start(i64 4, i8* %262) #2
  %263 = load i32, i32* %num_comps, align 4, !tbaa !22
  %cmp291 = icmp eq i32 %263, 1
  %cond = select i1 %cmp291, i32 49, i32 15
  store i32 %cond, i32* %start_rows, align 4, !tbaa !22
  %264 = bitcast i64* %rmask to i8*
  call void @llvm.lifetime.start(i64 8, i8* %264) #2
  %265 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %265, i32 0, i32 13
  %266 = load i32, i32* %width, align 4, !tbaa !59
  %sub293 = sub nsw i32 0, %266
  %267 = load i32, i32* %storage_bpp, align 4, !tbaa !22
  %mul294 = mul nsw i32 %sub293, %267
  %conv295 = sext i32 %mul294 to i64
  %and296 = and i64 %conv295, 63
  %shl = shl i64 -1, %and296
  store i64 %shl, i64* %rmask, align 8, !tbaa !21
  store i32 0, i32* %kErr, align 4, !tbaa !22
  store i32 0, i32* %yErr, align 4, !tbaa !22
  store i32 0, i32* %mErr, align 4, !tbaa !22
  store i32 0, i32* %cErr, align 4, !tbaa !22
  %268 = load i32, i32* %bits_per_pixel, align 4, !tbaa !22
  %cmp297 = icmp sgt i32 %268, 4
  br i1 %cmp297, label %if.then.299, label %if.end.311

if.then.299:                                      ; preds = %if.end.268
  %269 = bitcast i32** %ep to i8*
  call void @llvm.lifetime.start(i64 8, i8* %269) #2
  %arrayidx300 = getelementptr inbounds [2 x i32*], [2 x i32*]* %errors, i32 0, i64 0
  %270 = load i32*, i32** %arrayidx300, align 8, !tbaa !1
  store i32* %270, i32** %ep, align 8, !tbaa !1
  store i32 0, i32* %i290, align 4, !tbaa !22
  br label %for.cond.301

for.cond.301:                                     ; preds = %for.inc.308, %if.then.299
  %271 = load i32, i32* %i290, align 4, !tbaa !22
  %272 = load i32, i32* %databuff_size, align 4, !tbaa !22
  %cmp302 = icmp slt i32 %271, %272
  br i1 %cmp302, label %for.body.304, label %for.end.310

for.body.304:                                     ; preds = %for.cond.301
  %call305 = call i32 @rand() #5
  %rem306 = srem i32 %call305, 8388607
  %sub307 = sub nsw i32 %rem306, 4194303
  %273 = load i32*, i32** %ep, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i32, i32* %273, i32 1
  store i32* %incdec.ptr, i32** %ep, align 8, !tbaa !1
  store i32 %sub307, i32* %273, align 4, !tbaa !22
  br label %for.inc.308

for.inc.308:                                      ; preds = %for.body.304
  %274 = load i32, i32* %i290, align 4, !tbaa !22
  %inc309 = add nsw i32 %274, 1
  store i32 %inc309, i32* %i290, align 4, !tbaa !22
  br label %for.cond.301

for.end.310:                                      ; preds = %for.cond.301
  %275 = bitcast i32** %ep to i8*
  call void @llvm.lifetime.end(i64 8, i8* %275) #2
  br label %if.end.311

if.end.311:                                       ; preds = %for.end.310, %if.end.268
  %276 = load i32, i32* %start_rows, align 4, !tbaa !22
  store i32 %276, i32* %this_pass, align 4, !tbaa !22
  store i64 0, i64* %lnum, align 8, !tbaa !21
  br label %for.cond.312

for.cond.312:                                     ; preds = %for.inc.852, %if.end.311
  %277 = load i64, i64* %lnum, align 8, !tbaa !21
  %278 = load i64, i64* %lend, align 8, !tbaa !21
  %cmp313 = icmp slt i64 %277, %278
  br i1 %cmp313, label %for.body.315, label %for.end.854

for.body.315:                                     ; preds = %for.cond.312
  %279 = bitcast i64** %data_words to i8*
  call void @llvm.lifetime.start(i64 8, i8* %279) #2
  %280 = load i32, i32* %scan, align 4, !tbaa !22
  %idxprom316 = sext i32 %280 to i64
  %arrayidx317 = getelementptr inbounds [4 x i8*], [4 x i8*]* %data, i32 0, i64 %idxprom316
  %281 = load i8*, i8** %arrayidx317, align 8, !tbaa !1
  %282 = bitcast i8* %281 to i64*
  store i64* %282, i64** %data_words, align 8, !tbaa !1
  %283 = bitcast i64** %end_data to i8*
  call void @llvm.lifetime.start(i64 8, i8* %283) #2
  %284 = load i64*, i64** %data_words, align 8, !tbaa !1
  %285 = load i32, i32* %line_size_words, align 4, !tbaa !22
  %idx.ext318 = sext i32 %285 to i64
  %add.ptr319 = getelementptr inbounds i64, i64* %284, i64 %idx.ext318
  store i64* %add.ptr319, i64** %end_data, align 8, !tbaa !1
  %286 = bitcast i64** %p_data to i8*
  call void @llvm.lifetime.start(i64 8, i8* %286) #2
  %287 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %288 = load i64, i64* %lnum, align 8, !tbaa !21
  %conv320 = trunc i64 %288 to i32
  %289 = load i32, i32* %scan, align 4, !tbaa !22
  %idxprom321 = sext i32 %289 to i64
  %arrayidx322 = getelementptr inbounds [4 x i8*], [4 x i8*]* %data, i32 0, i64 %idxprom321
  %290 = load i8*, i8** %arrayidx322, align 8, !tbaa !1
  %291 = load i32, i32* %line_size, align 4, !tbaa !22
  %call323 = call i32 @gdev_prn_copy_scan_lines(%struct.gx_device_printer_s* %287, i32 %conv320, i8* %290, i32 %291) #4
  %292 = load i64, i64* %rmask, align 8, !tbaa !21
  %293 = load i64*, i64** %end_data, align 8, !tbaa !1
  %arrayidx324 = getelementptr inbounds i64, i64* %293, i64 -1
  %294 = load i64, i64* %arrayidx324, align 8, !tbaa !21
  %and325 = and i64 %294, %292
  store i64 %and325, i64* %arrayidx324, align 8, !tbaa !21
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.body.315
  %295 = load i64*, i64** %end_data, align 8, !tbaa !1
  %296 = load i64*, i64** %data_words, align 8, !tbaa !1
  %cmp326 = icmp ugt i64* %295, %296
  br i1 %cmp326, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %297 = load i64*, i64** %end_data, align 8, !tbaa !1
  %arrayidx328 = getelementptr inbounds i64, i64* %297, i64 -1
  %298 = load i64, i64* %arrayidx328, align 8, !tbaa !21
  %cmp329 = icmp eq i64 %298, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %299 = phi i1 [ false, %while.cond ], [ %cmp329, %land.rhs ]
  br i1 %299, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %300 = load i64*, i64** %end_data, align 8, !tbaa !1
  %incdec.ptr331 = getelementptr inbounds i64, i64* %300, i32 -1
  store i64* %incdec.ptr331, i64** %end_data, align 8, !tbaa !1
  br label %while.cond

while.end:                                        ; preds = %land.end
  %301 = load i64*, i64** %end_data, align 8, !tbaa !1
  %302 = load i64*, i64** %data_words, align 8, !tbaa !1
  %cmp332 = icmp eq i64* %301, %302
  br i1 %cmp332, label %if.then.334, label %if.end.336

if.then.334:                                      ; preds = %while.end
  %303 = load i32, i32* %num_blank_lines, align 4, !tbaa !22
  %inc335 = add nsw i32 %303, 1
  store i32 %inc335, i32* %num_blank_lines, align 4, !tbaa !22
  store i32 25, i32* %cleanup.dest.slot
  br label %cleanup

if.end.336:                                       ; preds = %while.end
  %304 = load i32, i32* %num_blank_lines, align 4, !tbaa !22
  %cmp337 = icmp sgt i32 %304, 0
  br i1 %cmp337, label %if.then.339, label %if.end.348

if.then.339:                                      ; preds = %if.end.336
  %305 = load i32, i32* %num_blank_lines, align 4, !tbaa !22
  %306 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %307 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call340 = call i32 @mj_v_skip(i32 %305, %struct.gx_device_printer_s* %306, %struct._IO_FILE* %307) #4
  %308 = load i32, i32* %scan, align 4, !tbaa !22
  %sub341 = sub nsw i32 1, %308
  %idxprom342 = sext i32 %sub341 to i64
  %arrayidx343 = getelementptr inbounds [4 x [4 x i8*]], [4 x [4 x i8*]]* %plane_data, i32 0, i64 %idxprom342
  %arrayidx344 = getelementptr inbounds [4 x i8*], [4 x i8*]* %arrayidx343, i32 0, i64 0
  %309 = load i8*, i8** %arrayidx344, align 8, !tbaa !1
  %310 = load i32, i32* %plane_size, align 4, !tbaa !22
  %311 = load i32, i32* %num_comps, align 4, !tbaa !22
  %mul345 = mul nsw i32 %310, %311
  %conv346 = sext i32 %mul345 to i64
  %call347 = call i8* @memset(i8* %309, i32 0, i64 %conv346) #5
  store i32 0, i32* %num_blank_lines, align 4, !tbaa !22
  %312 = load i32, i32* %start_rows, align 4, !tbaa !22
  store i32 %312, i32* %this_pass, align 4, !tbaa !22
  br label %if.end.348

if.end.348:                                       ; preds = %if.then.339, %if.end.336
  %313 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %314 = bitcast %struct.gx_device_printer_s* %313 to %struct.gx_device_mj_s*
  %density = getelementptr inbounds %struct.gx_device_mj_s, %struct.gx_device_mj_s* %314, i32 0, i32 69
  %315 = load i32, i32* %density, align 4, !tbaa !30
  %cmp349 = icmp ne i32 %315, 1024
  br i1 %cmp349, label %if.then.363, label %lor.lhs.false.351

lor.lhs.false.351:                                ; preds = %if.end.348
  %316 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %317 = bitcast %struct.gx_device_printer_s* %316 to %struct.gx_device_mj_s*
  %yellow = getelementptr inbounds %struct.gx_device_mj_s, %struct.gx_device_mj_s* %317, i32 0, i32 72
  %318 = load i32, i32* %yellow, align 4, !tbaa !34
  %cmp352 = icmp ne i32 %318, 1024
  br i1 %cmp352, label %if.then.363, label %lor.lhs.false.354

lor.lhs.false.354:                                ; preds = %lor.lhs.false.351
  %319 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %320 = bitcast %struct.gx_device_printer_s* %319 to %struct.gx_device_mj_s*
  %cyan = getelementptr inbounds %struct.gx_device_mj_s, %struct.gx_device_mj_s* %320, i32 0, i32 70
  %321 = load i32, i32* %cyan, align 4, !tbaa !32
  %cmp355 = icmp ne i32 %321, 1024
  br i1 %cmp355, label %if.then.363, label %lor.lhs.false.357

lor.lhs.false.357:                                ; preds = %lor.lhs.false.354
  %322 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %323 = bitcast %struct.gx_device_printer_s* %322 to %struct.gx_device_mj_s*
  %magenta = getelementptr inbounds %struct.gx_device_mj_s, %struct.gx_device_mj_s* %323, i32 0, i32 71
  %324 = load i32, i32* %magenta, align 4, !tbaa !33
  %cmp358 = icmp ne i32 %324, 1024
  br i1 %cmp358, label %if.then.363, label %lor.lhs.false.360

lor.lhs.false.360:                                ; preds = %lor.lhs.false.357
  %325 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %326 = bitcast %struct.gx_device_printer_s* %325 to %struct.gx_device_mj_s*
  %black = getelementptr inbounds %struct.gx_device_mj_s, %struct.gx_device_mj_s* %326, i32 0, i32 73
  %327 = load i32, i32* %black, align 4, !tbaa !35
  %cmp361 = icmp ne i32 %327, 1024
  br i1 %cmp361, label %if.then.363, label %if.end.372

if.then.363:                                      ; preds = %lor.lhs.false.360, %lor.lhs.false.357, %lor.lhs.false.354, %lor.lhs.false.351, %if.end.348
  %328 = load i64*, i64** %data_words, align 8, !tbaa !1
  store i64* %328, i64** %p_data, align 8, !tbaa !1
  br label %for.cond.364

for.cond.364:                                     ; preds = %for.inc.369, %if.then.363
  %329 = load i64*, i64** %p_data, align 8, !tbaa !1
  %330 = load i64*, i64** %end_data, align 8, !tbaa !1
  %cmp365 = icmp ult i64* %329, %330
  br i1 %cmp365, label %for.body.367, label %for.end.371

for.body.367:                                     ; preds = %for.cond.364
  %331 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %332 = load i64*, i64** %p_data, align 8, !tbaa !1
  %333 = load i64, i64* %332, align 8, !tbaa !21
  %call368 = call i64 @mjc_correct_color(%struct.gx_device_printer_s* %331, i64 %333) #4
  %334 = load i64*, i64** %p_data, align 8, !tbaa !1
  store i64 %call368, i64* %334, align 8, !tbaa !21
  br label %for.inc.369

for.inc.369:                                      ; preds = %for.body.367
  %335 = load i64*, i64** %p_data, align 8, !tbaa !1
  %incdec.ptr370 = getelementptr inbounds i64, i64* %335, i32 1
  store i64* %incdec.ptr370, i64** %p_data, align 8, !tbaa !1
  br label %for.cond.364

for.end.371:                                      ; preds = %for.cond.364
  br label %if.end.372

if.end.372:                                       ; preds = %for.end.371, %lor.lhs.false.360
  %336 = bitcast i8** %kP to i8*
  call void @llvm.lifetime.start(i64 8, i8* %336) #2
  %337 = load i32, i32* %scan, align 4, !tbaa !22
  %add373 = add nsw i32 %337, 2
  %idxprom374 = sext i32 %add373 to i64
  %arrayidx375 = getelementptr inbounds [4 x [4 x i8*]], [4 x [4 x i8*]]* %plane_data, i32 0, i64 %idxprom374
  %arrayidx376 = getelementptr inbounds [4 x i8*], [4 x i8*]* %arrayidx375, i32 0, i64 3
  %338 = load i8*, i8** %arrayidx376, align 8, !tbaa !1
  store i8* %338, i8** %kP, align 8, !tbaa !1
  %339 = bitcast i8** %cP to i8*
  call void @llvm.lifetime.start(i64 8, i8* %339) #2
  %340 = load i32, i32* %scan, align 4, !tbaa !22
  %add377 = add nsw i32 %340, 2
  %idxprom378 = sext i32 %add377 to i64
  %arrayidx379 = getelementptr inbounds [4 x [4 x i8*]], [4 x [4 x i8*]]* %plane_data, i32 0, i64 %idxprom378
  %arrayidx380 = getelementptr inbounds [4 x i8*], [4 x i8*]* %arrayidx379, i32 0, i64 2
  %341 = load i8*, i8** %arrayidx380, align 8, !tbaa !1
  store i8* %341, i8** %cP, align 8, !tbaa !1
  %342 = bitcast i8** %mP to i8*
  call void @llvm.lifetime.start(i64 8, i8* %342) #2
  %343 = load i32, i32* %scan, align 4, !tbaa !22
  %add381 = add nsw i32 %343, 2
  %idxprom382 = sext i32 %add381 to i64
  %arrayidx383 = getelementptr inbounds [4 x [4 x i8*]], [4 x [4 x i8*]]* %plane_data, i32 0, i64 %idxprom382
  %arrayidx384 = getelementptr inbounds [4 x i8*], [4 x i8*]* %arrayidx383, i32 0, i64 1
  %344 = load i8*, i8** %arrayidx384, align 8, !tbaa !1
  store i8* %344, i8** %mP, align 8, !tbaa !1
  %345 = bitcast i8** %yP to i8*
  call void @llvm.lifetime.start(i64 8, i8* %345) #2
  %346 = load i32, i32* %scan, align 4, !tbaa !22
  %add385 = add nsw i32 %346, 2
  %idxprom386 = sext i32 %add385 to i64
  %arrayidx387 = getelementptr inbounds [4 x [4 x i8*]], [4 x [4 x i8*]]* %plane_data, i32 0, i64 %idxprom386
  %arrayidx388 = getelementptr inbounds [4 x i8*], [4 x i8*]* %arrayidx387, i32 0, i64 0
  %347 = load i8*, i8** %arrayidx388, align 8, !tbaa !1
  store i8* %347, i8** %yP, align 8, !tbaa !1
  %348 = bitcast i8** %dp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %348) #2
  %349 = load i32, i32* %scan, align 4, !tbaa !22
  %add389 = add nsw i32 %349, 2
  %idxprom390 = sext i32 %add389 to i64
  %arrayidx391 = getelementptr inbounds [4 x i8*], [4 x i8*]* %data, i32 0, i64 %idxprom390
  %350 = load i8*, i8** %arrayidx391, align 8, !tbaa !1
  store i8* %350, i8** %dp, align 8, !tbaa !1
  %351 = bitcast i32* %zero_row_count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %351) #2
  %352 = bitcast i32* %i392 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %352) #2
  %353 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %353) #2
  %354 = bitcast i8** %odp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %354) #2
  %355 = load i32, i32* %this_pass, align 4, !tbaa !22
  %tobool393 = icmp ne i32 %355, 0
  br i1 %tobool393, label %if.then.394, label %if.else.395

if.then.394:                                      ; preds = %if.end.372
  %356 = load i32, i32* %this_pass, align 4, !tbaa !22
  %dec = add nsw i32 %356, -1
  store i32 %dec, i32* %this_pass, align 4, !tbaa !22
  br label %if.end.396

if.else.395:                                      ; preds = %if.end.372
  %357 = load i32, i32* %start_rows, align 4, !tbaa !22
  store i32 %357, i32* %this_pass, align 4, !tbaa !22
  br label %if.end.396

if.end.396:                                       ; preds = %if.else.395, %if.then.394
  %358 = load i32, i32* %expanded_bpp, align 4, !tbaa !22
  %359 = load i32, i32* %bits_per_pixel, align 4, !tbaa !22
  %cmp397 = icmp sgt i32 %358, %359
  br i1 %cmp397, label %if.then.399, label %if.end.400

if.then.399:                                      ; preds = %if.end.396
  %360 = load i64*, i64** %data_words, align 8, !tbaa !1
  %361 = load i32, i32* %line_size, align 4, !tbaa !22
  %362 = load i32, i32* %bits_per_pixel, align 4, !tbaa !22
  %363 = load i32, i32* %expanded_bpp, align 4, !tbaa !22
  call void @expand_line(i64* %360, i32 %361, i32 %362, i32 %363) #4
  br label %if.end.400

if.end.400:                                       ; preds = %if.then.399, %if.end.396
  %364 = load i32, i32* %expanded_bpp, align 4, !tbaa !22
  switch i32 %364, label %sw.epilog [
    i32 3, label %sw.bb
    i32 8, label %sw.bb.463
    i32 24, label %sw.bb.546
    i32 32, label %sw.bb.686
  ]

sw.bb:                                            ; preds = %if.end.400
  store i32 0, i32* %i392, align 4, !tbaa !22
  %365 = load i32, i32* %scan, align 4, !tbaa !22
  %idxprom401 = sext i32 %365 to i64
  %arrayidx402 = getelementptr inbounds [4 x [4 x i8*]], [4 x [4 x i8*]]* %plane_data, i32 0, i64 %idxprom401
  %arrayidx403 = getelementptr inbounds [4 x i8*], [4 x i8*]* %arrayidx402, i32 0, i64 0
  %366 = load i8*, i8** %arrayidx403, align 8, !tbaa !1
  store i8* %366, i8** %odp, align 8, !tbaa !1
  br label %for.cond.404

for.cond.404:                                     ; preds = %for.inc.459, %sw.bb
  %367 = load i32, i32* %i392, align 4, !tbaa !22
  %368 = load i32, i32* %databuff_size, align 4, !tbaa !22
  %cmp405 = icmp slt i32 %367, %368
  br i1 %cmp405, label %for.body.407, label %for.end.462

for.body.407:                                     ; preds = %for.cond.404
  %369 = bitcast i8** %dp408 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %369) #2
  %370 = load i32, i32* %scan, align 4, !tbaa !22
  %idxprom409 = sext i32 %370 to i64
  %arrayidx410 = getelementptr inbounds [4 x i8*], [4 x i8*]* %data, i32 0, i64 %idxprom409
  %371 = load i8*, i8** %arrayidx410, align 8, !tbaa !1
  %372 = load i32, i32* %i392, align 4, !tbaa !22
  %idx.ext411 = sext i32 %372 to i64
  %add.ptr412 = getelementptr inbounds i8, i8* %371, i64 %idx.ext411
  store i8* %add.ptr412, i8** %dp408, align 8, !tbaa !1
  %373 = bitcast i64* %pword to i8*
  call void @llvm.lifetime.start(i64 8, i8* %373) #2
  %374 = load i8*, i8** %dp408, align 8, !tbaa !1
  %arrayidx413 = getelementptr inbounds i8, i8* %374, i64 0
  %375 = load i8, i8* %arrayidx413, align 1, !tbaa !60
  %idxprom414 = zext i8 %375 to i64
  %arrayidx415 = getelementptr inbounds [8 x i64], [8 x i64]* @mj_print_page.spr40, i32 0, i64 %idxprom414
  %376 = load i64, i64* %arrayidx415, align 8, !tbaa !21
  %shl416 = shl i64 %376, 1
  %377 = load i8*, i8** %dp408, align 8, !tbaa !1
  %arrayidx417 = getelementptr inbounds i8, i8* %377, i64 1
  %378 = load i8, i8* %arrayidx417, align 1, !tbaa !60
  %idxprom418 = zext i8 %378 to i64
  %arrayidx419 = getelementptr inbounds [8 x i64], [8 x i64]* @mj_print_page.spr40, i32 0, i64 %idxprom418
  %379 = load i64, i64* %arrayidx419, align 8, !tbaa !21
  %add420 = add i64 %shl416, %379
  %380 = load i8*, i8** %dp408, align 8, !tbaa !1
  %arrayidx421 = getelementptr inbounds i8, i8* %380, i64 2
  %381 = load i8, i8* %arrayidx421, align 1, !tbaa !60
  %idxprom422 = zext i8 %381 to i64
  %arrayidx423 = getelementptr inbounds [8 x i64], [8 x i64]* @mj_print_page.spr40, i32 0, i64 %idxprom422
  %382 = load i64, i64* %arrayidx423, align 8, !tbaa !21
  %shr = lshr i64 %382, 1
  %add424 = add i64 %add420, %shr
  %383 = load i8*, i8** %dp408, align 8, !tbaa !1
  %arrayidx425 = getelementptr inbounds i8, i8* %383, i64 3
  %384 = load i8, i8* %arrayidx425, align 1, !tbaa !60
  %idxprom426 = zext i8 %384 to i64
  %arrayidx427 = getelementptr inbounds [8 x i64], [8 x i64]* @mj_print_page.spr08, i32 0, i64 %idxprom426
  %385 = load i64, i64* %arrayidx427, align 8, !tbaa !21
  %shl428 = shl i64 %385, 1
  %add429 = add i64 %add424, %shl428
  %386 = load i8*, i8** %dp408, align 8, !tbaa !1
  %arrayidx430 = getelementptr inbounds i8, i8* %386, i64 4
  %387 = load i8, i8* %arrayidx430, align 1, !tbaa !60
  %idxprom431 = zext i8 %387 to i64
  %arrayidx432 = getelementptr inbounds [8 x i64], [8 x i64]* @mj_print_page.spr08, i32 0, i64 %idxprom431
  %388 = load i64, i64* %arrayidx432, align 8, !tbaa !21
  %add433 = add i64 %add429, %388
  %389 = load i8*, i8** %dp408, align 8, !tbaa !1
  %arrayidx434 = getelementptr inbounds i8, i8* %389, i64 5
  %390 = load i8, i8* %arrayidx434, align 1, !tbaa !60
  %idxprom435 = zext i8 %390 to i64
  %arrayidx436 = getelementptr inbounds [8 x i64], [8 x i64]* @mj_print_page.spr08, i32 0, i64 %idxprom435
  %391 = load i64, i64* %arrayidx436, align 8, !tbaa !21
  %shr437 = lshr i64 %391, 1
  %add438 = add i64 %add433, %shr437
  %392 = load i8*, i8** %dp408, align 8, !tbaa !1
  %arrayidx439 = getelementptr inbounds i8, i8* %392, i64 6
  %393 = load i8, i8* %arrayidx439, align 1, !tbaa !60
  %idxprom440 = zext i8 %393 to i64
  %arrayidx441 = getelementptr inbounds [8 x i64], [8 x i64]* @mj_print_page.spr02, i32 0, i64 %idxprom440
  %394 = load i64, i64* %arrayidx441, align 8, !tbaa !21
  %add442 = add i64 %add438, %394
  %395 = load i8*, i8** %dp408, align 8, !tbaa !1
  %arrayidx443 = getelementptr inbounds i8, i8* %395, i64 7
  %396 = load i8, i8* %arrayidx443, align 1, !tbaa !60
  %idxprom444 = zext i8 %396 to i64
  %arrayidx445 = getelementptr inbounds [8 x i64], [8 x i64]* @mj_print_page.spr02, i32 0, i64 %idxprom444
  %397 = load i64, i64* %arrayidx445, align 8, !tbaa !21
  %shr446 = lshr i64 %397, 1
  %add447 = add i64 %add442, %shr446
  store i64 %add447, i64* %pword, align 8, !tbaa !21
  %398 = load i64, i64* %pword, align 8, !tbaa !21
  %shr448 = lshr i64 %398, 16
  %conv449 = trunc i64 %shr448 to i8
  %399 = load i8*, i8** %odp, align 8, !tbaa !1
  %arrayidx450 = getelementptr inbounds i8, i8* %399, i64 0
  store i8 %conv449, i8* %arrayidx450, align 1, !tbaa !60
  %400 = load i64, i64* %pword, align 8, !tbaa !21
  %shr451 = lshr i64 %400, 8
  %conv452 = trunc i64 %shr451 to i8
  %401 = load i32, i32* %plane_size, align 4, !tbaa !22
  %idxprom453 = sext i32 %401 to i64
  %402 = load i8*, i8** %odp, align 8, !tbaa !1
  %arrayidx454 = getelementptr inbounds i8, i8* %402, i64 %idxprom453
  store i8 %conv452, i8* %arrayidx454, align 1, !tbaa !60
  %403 = load i64, i64* %pword, align 8, !tbaa !21
  %conv455 = trunc i64 %403 to i8
  %404 = load i32, i32* %plane_size, align 4, !tbaa !22
  %mul456 = mul nsw i32 %404, 2
  %idxprom457 = sext i32 %mul456 to i64
  %405 = load i8*, i8** %odp, align 8, !tbaa !1
  %arrayidx458 = getelementptr inbounds i8, i8* %405, i64 %idxprom457
  store i8 %conv455, i8* %arrayidx458, align 1, !tbaa !60
  %406 = bitcast i64* %pword to i8*
  call void @llvm.lifetime.end(i64 8, i8* %406) #2
  %407 = bitcast i8** %dp408 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %407) #2
  br label %for.inc.459

for.inc.459:                                      ; preds = %for.body.407
  %408 = load i32, i32* %i392, align 4, !tbaa !22
  %add460 = add nsw i32 %408, 8
  store i32 %add460, i32* %i392, align 4, !tbaa !22
  %409 = load i8*, i8** %odp, align 8, !tbaa !1
  %incdec.ptr461 = getelementptr inbounds i8, i8* %409, i32 1
  store i8* %incdec.ptr461, i8** %odp, align 8, !tbaa !1
  br label %for.cond.404

for.end.462:                                      ; preds = %for.cond.404
  br label %sw.epilog

sw.bb.463:                                        ; preds = %if.end.400
  %410 = bitcast i16** %mat to i8*
  call void @llvm.lifetime.start(i64 8, i8* %410) #2
  %411 = load i64, i64* %lnum, align 8, !tbaa !21
  %and464 = and i64 %411, 127
  %mul465 = mul nsw i64 %and464, 128
  %add.ptr466 = getelementptr inbounds i16, i16* getelementptr inbounds ([16384 x i16], [16384 x i16]* @matrix2, i32 0, i32 0), i64 %mul465
  store i16* %add.ptr466, i16** %mat, align 8, !tbaa !1
  %412 = bitcast i32* %x to i8*
  call void @llvm.lifetime.start(i64 4, i8* %412) #2
  %413 = load i32, i32* %scan, align 4, !tbaa !22
  %cmp467 = icmp eq i32 %413, 0
  br i1 %cmp467, label %if.then.469, label %if.else.503

if.then.469:                                      ; preds = %sw.bb.463
  store i32 0, i32* %x, align 4, !tbaa !22
  store i32 0, i32* %i392, align 4, !tbaa !22
  br label %for.cond.470

for.cond.470:                                     ; preds = %for.inc.500, %if.then.469
  %414 = load i32, i32* %i392, align 4, !tbaa !22
  %415 = load i32, i32* %plane_size, align 4, !tbaa !22
  %cmp471 = icmp slt i32 %414, %415
  br i1 %cmp471, label %for.body.473, label %for.end.502

for.body.473:                                     ; preds = %for.cond.470
  call void @llvm.lifetime.start(i64 1, i8* %c) #2
  call void @llvm.lifetime.start(i64 1, i8* %y) #2
  call void @llvm.lifetime.start(i64 1, i8* %m) #2
  call void @llvm.lifetime.start(i64 1, i8* %k) #2
  call void @llvm.lifetime.start(i64 1, i8* %bitmask) #2
  %416 = bitcast i32* %val to i8*
  call void @llvm.lifetime.start(i64 4, i8* %416) #2
  store i8 -128, i8* %bitmask, align 1, !tbaa !60
  store i32 0, i32* %j, align 4, !tbaa !22
  store i8 0, i8* %k, align 1, !tbaa !60
  store i8 0, i8* %y, align 1, !tbaa !60
  store i8 0, i8* %m, align 1, !tbaa !60
  store i8 0, i8* %c, align 1, !tbaa !60
  br label %for.cond.474

for.cond.474:                                     ; preds = %for.inc.496, %for.body.473
  %417 = load i32, i32* %j, align 4, !tbaa !22
  %cmp475 = icmp slt i32 %417, 8
  br i1 %cmp475, label %for.body.477, label %for.end.498

for.body.477:                                     ; preds = %for.cond.474
  %418 = load i16*, i16** %mat, align 8, !tbaa !1
  %419 = load i32, i32* %x, align 4, !tbaa !22
  %inc478 = add nsw i32 %419, 1
  store i32 %inc478, i32* %x, align 4, !tbaa !22
  %and479 = and i32 %419, 127
  %idx.ext480 = sext i32 %and479 to i64
  %add.ptr481 = getelementptr inbounds i16, i16* %418, i64 %idx.ext480
  %420 = load i16, i16* %add.ptr481, align 2, !tbaa !5
  %conv482 = zext i16 %420 to i32
  store i32 %conv482, i32* %val, align 4, !tbaa !22
  %421 = load i8*, i8** %dp, align 8, !tbaa !1
  %incdec.ptr483 = getelementptr inbounds i8, i8* %421, i32 1
  store i8* %incdec.ptr483, i8** %dp, align 8, !tbaa !1
  %422 = load i8, i8* %421, align 1, !tbaa !60
  %conv484 = zext i8 %422 to i32
  %shl485 = shl i32 %conv484, 6
  %423 = load i32, i32* %val, align 4, !tbaa !22
  %cmp486 = icmp sgt i32 %shl485, %423
  br i1 %cmp486, label %if.then.488, label %if.end.492

if.then.488:                                      ; preds = %for.body.477
  %424 = load i8, i8* %bitmask, align 1, !tbaa !60
  %conv489 = zext i8 %424 to i32
  %425 = load i8, i8* %y, align 1, !tbaa !60
  %conv490 = zext i8 %425 to i32
  %or = or i32 %conv490, %conv489
  %conv491 = trunc i32 %or to i8
  store i8 %conv491, i8* %y, align 1, !tbaa !60
  br label %if.end.492

if.end.492:                                       ; preds = %if.then.488, %for.body.477
  %426 = load i8, i8* %bitmask, align 1, !tbaa !60
  %conv493 = zext i8 %426 to i32
  %shr494 = ashr i32 %conv493, 1
  %conv495 = trunc i32 %shr494 to i8
  store i8 %conv495, i8* %bitmask, align 1, !tbaa !60
  br label %for.inc.496

for.inc.496:                                      ; preds = %if.end.492
  %427 = load i32, i32* %j, align 4, !tbaa !22
  %inc497 = add nsw i32 %427, 1
  store i32 %inc497, i32* %j, align 4, !tbaa !22
  br label %for.cond.474

for.end.498:                                      ; preds = %for.cond.474
  %428 = load i8, i8* %y, align 1, !tbaa !60
  %429 = load i8*, i8** %yP, align 8, !tbaa !1
  %incdec.ptr499 = getelementptr inbounds i8, i8* %429, i32 1
  store i8* %incdec.ptr499, i8** %yP, align 8, !tbaa !1
  store i8 %428, i8* %429, align 1, !tbaa !60
  %430 = bitcast i32* %val to i8*
  call void @llvm.lifetime.end(i64 4, i8* %430) #2
  call void @llvm.lifetime.end(i64 1, i8* %bitmask) #2
  call void @llvm.lifetime.end(i64 1, i8* %k) #2
  call void @llvm.lifetime.end(i64 1, i8* %m) #2
  call void @llvm.lifetime.end(i64 1, i8* %y) #2
  call void @llvm.lifetime.end(i64 1, i8* %c) #2
  br label %for.inc.500

for.inc.500:                                      ; preds = %for.end.498
  %431 = load i32, i32* %i392, align 4, !tbaa !22
  %inc501 = add nsw i32 %431, 1
  store i32 %inc501, i32* %i392, align 4, !tbaa !22
  br label %for.cond.470

for.end.502:                                      ; preds = %for.cond.470
  br label %if.end.545

if.else.503:                                      ; preds = %sw.bb.463
  %432 = load i32, i32* %plane_size, align 4, !tbaa !22
  %mul504 = mul nsw i32 %432, 8
  store i32 %mul504, i32* %x, align 4, !tbaa !22
  store i32 0, i32* %i392, align 4, !tbaa !22
  br label %for.cond.505

for.cond.505:                                     ; preds = %for.inc.542, %if.else.503
  %433 = load i32, i32* %i392, align 4, !tbaa !22
  %434 = load i32, i32* %plane_size, align 4, !tbaa !22
  %cmp506 = icmp slt i32 %433, %434
  br i1 %cmp506, label %for.body.508, label %for.end.544

for.body.508:                                     ; preds = %for.cond.505
  call void @llvm.lifetime.start(i64 1, i8* %c509) #2
  call void @llvm.lifetime.start(i64 1, i8* %y510) #2
  call void @llvm.lifetime.start(i64 1, i8* %m511) #2
  call void @llvm.lifetime.start(i64 1, i8* %k512) #2
  call void @llvm.lifetime.start(i64 1, i8* %bitmask513) #2
  %435 = bitcast i32* %val514 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %435) #2
  store i8 1, i8* %bitmask513, align 1, !tbaa !60
  store i32 0, i32* %j, align 4, !tbaa !22
  store i8 0, i8* %k512, align 1, !tbaa !60
  store i8 0, i8* %y510, align 1, !tbaa !60
  store i8 0, i8* %m511, align 1, !tbaa !60
  store i8 0, i8* %c509, align 1, !tbaa !60
  br label %for.cond.515

for.cond.515:                                     ; preds = %for.inc.538, %for.body.508
  %436 = load i32, i32* %j, align 4, !tbaa !22
  %cmp516 = icmp slt i32 %436, 8
  br i1 %cmp516, label %for.body.518, label %for.end.540

for.body.518:                                     ; preds = %for.cond.515
  %437 = load i16*, i16** %mat, align 8, !tbaa !1
  %438 = load i32, i32* %x, align 4, !tbaa !22
  %dec519 = add nsw i32 %438, -1
  store i32 %dec519, i32* %x, align 4, !tbaa !22
  %and520 = and i32 %dec519, 127
  %idx.ext521 = sext i32 %and520 to i64
  %add.ptr522 = getelementptr inbounds i16, i16* %437, i64 %idx.ext521
  %439 = load i16, i16* %add.ptr522, align 2, !tbaa !5
  %conv523 = zext i16 %439 to i32
  store i32 %conv523, i32* %val514, align 4, !tbaa !22
  %440 = load i8*, i8** %dp, align 8, !tbaa !1
  %incdec.ptr524 = getelementptr inbounds i8, i8* %440, i32 -1
  store i8* %incdec.ptr524, i8** %dp, align 8, !tbaa !1
  %441 = load i8, i8* %incdec.ptr524, align 1, !tbaa !60
  %conv525 = zext i8 %441 to i32
  %shl526 = shl i32 %conv525, 6
  %442 = load i32, i32* %val514, align 4, !tbaa !22
  %cmp527 = icmp sgt i32 %shl526, %442
  br i1 %cmp527, label %if.then.529, label %if.end.534

if.then.529:                                      ; preds = %for.body.518
  %443 = load i8, i8* %bitmask513, align 1, !tbaa !60
  %conv530 = zext i8 %443 to i32
  %444 = load i8, i8* %y510, align 1, !tbaa !60
  %conv531 = zext i8 %444 to i32
  %or532 = or i32 %conv531, %conv530
  %conv533 = trunc i32 %or532 to i8
  store i8 %conv533, i8* %y510, align 1, !tbaa !60
  br label %if.end.534

if.end.534:                                       ; preds = %if.then.529, %for.body.518
  %445 = load i8, i8* %bitmask513, align 1, !tbaa !60
  %conv535 = zext i8 %445 to i32
  %shl536 = shl i32 %conv535, 1
  %conv537 = trunc i32 %shl536 to i8
  store i8 %conv537, i8* %bitmask513, align 1, !tbaa !60
  br label %for.inc.538

for.inc.538:                                      ; preds = %if.end.534
  %446 = load i32, i32* %j, align 4, !tbaa !22
  %inc539 = add nsw i32 %446, 1
  store i32 %inc539, i32* %j, align 4, !tbaa !22
  br label %for.cond.515

for.end.540:                                      ; preds = %for.cond.515
  %447 = load i8, i8* %y510, align 1, !tbaa !60
  %448 = load i8*, i8** %yP, align 8, !tbaa !1
  %incdec.ptr541 = getelementptr inbounds i8, i8* %448, i32 -1
  store i8* %incdec.ptr541, i8** %yP, align 8, !tbaa !1
  store i8 %447, i8* %incdec.ptr541, align 1, !tbaa !60
  %449 = bitcast i32* %val514 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %449) #2
  call void @llvm.lifetime.end(i64 1, i8* %bitmask513) #2
  call void @llvm.lifetime.end(i64 1, i8* %k512) #2
  call void @llvm.lifetime.end(i64 1, i8* %m511) #2
  call void @llvm.lifetime.end(i64 1, i8* %y510) #2
  call void @llvm.lifetime.end(i64 1, i8* %c509) #2
  br label %for.inc.542

for.inc.542:                                      ; preds = %for.end.540
  %450 = load i32, i32* %i392, align 4, !tbaa !22
  %inc543 = add nsw i32 %450, 1
  store i32 %inc543, i32* %i392, align 4, !tbaa !22
  br label %for.cond.505

for.end.544:                                      ; preds = %for.cond.505
  br label %if.end.545

if.end.545:                                       ; preds = %for.end.544, %for.end.502
  %451 = bitcast i32* %x to i8*
  call void @llvm.lifetime.end(i64 4, i8* %451) #2
  %452 = bitcast i16** %mat to i8*
  call void @llvm.lifetime.end(i64 8, i8* %452) #2
  br label %sw.epilog

sw.bb.546:                                        ; preds = %if.end.400
  %453 = bitcast i16** %mat547 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %453) #2
  %454 = load i64, i64* %lnum, align 8, !tbaa !21
  %and548 = and i64 %454, 127
  %mul549 = mul nsw i64 %and548, 128
  %add.ptr550 = getelementptr inbounds i16, i16* getelementptr inbounds ([16384 x i16], [16384 x i16]* @matrix2, i32 0, i32 0), i64 %mul549
  store i16* %add.ptr550, i16** %mat547, align 8, !tbaa !1
  %455 = bitcast i32* %x551 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %455) #2
  %456 = load i32, i32* %scan, align 4, !tbaa !22
  %cmp552 = icmp eq i32 %456, 0
  br i1 %cmp552, label %if.then.554, label %if.else.619

if.then.554:                                      ; preds = %sw.bb.546
  store i32 0, i32* %x551, align 4, !tbaa !22
  store i32 0, i32* %i392, align 4, !tbaa !22
  br label %for.cond.555

for.cond.555:                                     ; preds = %for.inc.616, %if.then.554
  %457 = load i32, i32* %i392, align 4, !tbaa !22
  %458 = load i32, i32* %plane_size, align 4, !tbaa !22
  %cmp556 = icmp slt i32 %457, %458
  br i1 %cmp556, label %for.body.558, label %for.end.618

for.body.558:                                     ; preds = %for.cond.555
  call void @llvm.lifetime.start(i64 1, i8* %c559) #2
  call void @llvm.lifetime.start(i64 1, i8* %y560) #2
  call void @llvm.lifetime.start(i64 1, i8* %m561) #2
  call void @llvm.lifetime.start(i64 1, i8* %k562) #2
  call void @llvm.lifetime.start(i64 1, i8* %bitmask563) #2
  %459 = bitcast i32* %val564 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %459) #2
  store i8 -128, i8* %bitmask563, align 1, !tbaa !60
  store i32 0, i32* %j, align 4, !tbaa !22
  store i8 0, i8* %k562, align 1, !tbaa !60
  store i8 0, i8* %y560, align 1, !tbaa !60
  store i8 0, i8* %m561, align 1, !tbaa !60
  store i8 0, i8* %c559, align 1, !tbaa !60
  br label %for.cond.565

for.cond.565:                                     ; preds = %for.inc.610, %for.body.558
  %460 = load i32, i32* %j, align 4, !tbaa !22
  %cmp566 = icmp slt i32 %460, 8
  br i1 %cmp566, label %for.body.568, label %for.end.612

for.body.568:                                     ; preds = %for.cond.565
  %461 = load i16*, i16** %mat547, align 8, !tbaa !1
  %462 = load i32, i32* %x551, align 4, !tbaa !22
  %inc569 = add nsw i32 %462, 1
  store i32 %inc569, i32* %x551, align 4, !tbaa !22
  %and570 = and i32 %462, 127
  %idx.ext571 = sext i32 %and570 to i64
  %add.ptr572 = getelementptr inbounds i16, i16* %461, i64 %idx.ext571
  %463 = load i16, i16* %add.ptr572, align 2, !tbaa !5
  %conv573 = zext i16 %463 to i32
  store i32 %conv573, i32* %val564, align 4, !tbaa !22
  %464 = load i8*, i8** %dp, align 8, !tbaa !1
  %incdec.ptr574 = getelementptr inbounds i8, i8* %464, i32 1
  store i8* %incdec.ptr574, i8** %dp, align 8, !tbaa !1
  %465 = load i8, i8* %464, align 1, !tbaa !60
  %conv575 = zext i8 %465 to i32
  %shl576 = shl i32 %conv575, 6
  %466 = load i32, i32* %val564, align 4, !tbaa !22
  %cmp577 = icmp sgt i32 %shl576, %466
  br i1 %cmp577, label %if.then.579, label %if.end.584

if.then.579:                                      ; preds = %for.body.568
  %467 = load i8, i8* %bitmask563, align 1, !tbaa !60
  %conv580 = zext i8 %467 to i32
  %468 = load i8, i8* %c559, align 1, !tbaa !60
  %conv581 = zext i8 %468 to i32
  %or582 = or i32 %conv581, %conv580
  %conv583 = trunc i32 %or582 to i8
  store i8 %conv583, i8* %c559, align 1, !tbaa !60
  br label %if.end.584

if.end.584:                                       ; preds = %if.then.579, %for.body.568
  %469 = load i8*, i8** %dp, align 8, !tbaa !1
  %incdec.ptr585 = getelementptr inbounds i8, i8* %469, i32 1
  store i8* %incdec.ptr585, i8** %dp, align 8, !tbaa !1
  %470 = load i8, i8* %469, align 1, !tbaa !60
  %conv586 = zext i8 %470 to i32
  %shl587 = shl i32 %conv586, 6
  %471 = load i32, i32* %val564, align 4, !tbaa !22
  %cmp588 = icmp sgt i32 %shl587, %471
  br i1 %cmp588, label %if.then.590, label %if.end.595

if.then.590:                                      ; preds = %if.end.584
  %472 = load i8, i8* %bitmask563, align 1, !tbaa !60
  %conv591 = zext i8 %472 to i32
  %473 = load i8, i8* %m561, align 1, !tbaa !60
  %conv592 = zext i8 %473 to i32
  %or593 = or i32 %conv592, %conv591
  %conv594 = trunc i32 %or593 to i8
  store i8 %conv594, i8* %m561, align 1, !tbaa !60
  br label %if.end.595

if.end.595:                                       ; preds = %if.then.590, %if.end.584
  %474 = load i8*, i8** %dp, align 8, !tbaa !1
  %incdec.ptr596 = getelementptr inbounds i8, i8* %474, i32 1
  store i8* %incdec.ptr596, i8** %dp, align 8, !tbaa !1
  %475 = load i8, i8* %474, align 1, !tbaa !60
  %conv597 = zext i8 %475 to i32
  %shl598 = shl i32 %conv597, 6
  %476 = load i32, i32* %val564, align 4, !tbaa !22
  %cmp599 = icmp sgt i32 %shl598, %476
  br i1 %cmp599, label %if.then.601, label %if.end.606

if.then.601:                                      ; preds = %if.end.595
  %477 = load i8, i8* %bitmask563, align 1, !tbaa !60
  %conv602 = zext i8 %477 to i32
  %478 = load i8, i8* %y560, align 1, !tbaa !60
  %conv603 = zext i8 %478 to i32
  %or604 = or i32 %conv603, %conv602
  %conv605 = trunc i32 %or604 to i8
  store i8 %conv605, i8* %y560, align 1, !tbaa !60
  br label %if.end.606

if.end.606:                                       ; preds = %if.then.601, %if.end.595
  %479 = load i8, i8* %bitmask563, align 1, !tbaa !60
  %conv607 = zext i8 %479 to i32
  %shr608 = ashr i32 %conv607, 1
  %conv609 = trunc i32 %shr608 to i8
  store i8 %conv609, i8* %bitmask563, align 1, !tbaa !60
  br label %for.inc.610

for.inc.610:                                      ; preds = %if.end.606
  %480 = load i32, i32* %j, align 4, !tbaa !22
  %inc611 = add nsw i32 %480, 1
  store i32 %inc611, i32* %j, align 4, !tbaa !22
  br label %for.cond.565

for.end.612:                                      ; preds = %for.cond.565
  %481 = load i8, i8* %c559, align 1, !tbaa !60
  %482 = load i8*, i8** %cP, align 8, !tbaa !1
  %incdec.ptr613 = getelementptr inbounds i8, i8* %482, i32 1
  store i8* %incdec.ptr613, i8** %cP, align 8, !tbaa !1
  store i8 %481, i8* %482, align 1, !tbaa !60
  %483 = load i8, i8* %m561, align 1, !tbaa !60
  %484 = load i8*, i8** %mP, align 8, !tbaa !1
  %incdec.ptr614 = getelementptr inbounds i8, i8* %484, i32 1
  store i8* %incdec.ptr614, i8** %mP, align 8, !tbaa !1
  store i8 %483, i8* %484, align 1, !tbaa !60
  %485 = load i8, i8* %y560, align 1, !tbaa !60
  %486 = load i8*, i8** %yP, align 8, !tbaa !1
  %incdec.ptr615 = getelementptr inbounds i8, i8* %486, i32 1
  store i8* %incdec.ptr615, i8** %yP, align 8, !tbaa !1
  store i8 %485, i8* %486, align 1, !tbaa !60
  %487 = bitcast i32* %val564 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %487) #2
  call void @llvm.lifetime.end(i64 1, i8* %bitmask563) #2
  call void @llvm.lifetime.end(i64 1, i8* %k562) #2
  call void @llvm.lifetime.end(i64 1, i8* %m561) #2
  call void @llvm.lifetime.end(i64 1, i8* %y560) #2
  call void @llvm.lifetime.end(i64 1, i8* %c559) #2
  br label %for.inc.616

for.inc.616:                                      ; preds = %for.end.612
  %488 = load i32, i32* %i392, align 4, !tbaa !22
  %inc617 = add nsw i32 %488, 1
  store i32 %inc617, i32* %i392, align 4, !tbaa !22
  br label %for.cond.555

for.end.618:                                      ; preds = %for.cond.555
  br label %if.end.685

if.else.619:                                      ; preds = %sw.bb.546
  %489 = load i32, i32* %plane_size, align 4, !tbaa !22
  %mul620 = mul nsw i32 %489, 8
  store i32 %mul620, i32* %x551, align 4, !tbaa !22
  store i32 0, i32* %i392, align 4, !tbaa !22
  br label %for.cond.621

for.cond.621:                                     ; preds = %for.inc.682, %if.else.619
  %490 = load i32, i32* %i392, align 4, !tbaa !22
  %491 = load i32, i32* %plane_size, align 4, !tbaa !22
  %cmp622 = icmp slt i32 %490, %491
  br i1 %cmp622, label %for.body.624, label %for.end.684

for.body.624:                                     ; preds = %for.cond.621
  call void @llvm.lifetime.start(i64 1, i8* %c625) #2
  call void @llvm.lifetime.start(i64 1, i8* %y626) #2
  call void @llvm.lifetime.start(i64 1, i8* %m627) #2
  call void @llvm.lifetime.start(i64 1, i8* %k628) #2
  call void @llvm.lifetime.start(i64 1, i8* %bitmask629) #2
  %492 = bitcast i32* %val630 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %492) #2
  store i8 1, i8* %bitmask629, align 1, !tbaa !60
  store i32 0, i32* %j, align 4, !tbaa !22
  store i8 0, i8* %k628, align 1, !tbaa !60
  store i8 0, i8* %y626, align 1, !tbaa !60
  store i8 0, i8* %m627, align 1, !tbaa !60
  store i8 0, i8* %c625, align 1, !tbaa !60
  br label %for.cond.631

for.cond.631:                                     ; preds = %for.inc.676, %for.body.624
  %493 = load i32, i32* %j, align 4, !tbaa !22
  %cmp632 = icmp slt i32 %493, 8
  br i1 %cmp632, label %for.body.634, label %for.end.678

for.body.634:                                     ; preds = %for.cond.631
  %494 = load i16*, i16** %mat547, align 8, !tbaa !1
  %495 = load i32, i32* %x551, align 4, !tbaa !22
  %dec635 = add nsw i32 %495, -1
  store i32 %dec635, i32* %x551, align 4, !tbaa !22
  %and636 = and i32 %dec635, 127
  %idx.ext637 = sext i32 %and636 to i64
  %add.ptr638 = getelementptr inbounds i16, i16* %494, i64 %idx.ext637
  %496 = load i16, i16* %add.ptr638, align 2, !tbaa !5
  %conv639 = zext i16 %496 to i32
  store i32 %conv639, i32* %val630, align 4, !tbaa !22
  %497 = load i8*, i8** %dp, align 8, !tbaa !1
  %incdec.ptr640 = getelementptr inbounds i8, i8* %497, i32 -1
  store i8* %incdec.ptr640, i8** %dp, align 8, !tbaa !1
  %498 = load i8, i8* %incdec.ptr640, align 1, !tbaa !60
  %conv641 = zext i8 %498 to i32
  %shl642 = shl i32 %conv641, 6
  %499 = load i32, i32* %val630, align 4, !tbaa !22
  %cmp643 = icmp sgt i32 %shl642, %499
  br i1 %cmp643, label %if.then.645, label %if.end.650

if.then.645:                                      ; preds = %for.body.634
  %500 = load i8, i8* %bitmask629, align 1, !tbaa !60
  %conv646 = zext i8 %500 to i32
  %501 = load i8, i8* %y626, align 1, !tbaa !60
  %conv647 = zext i8 %501 to i32
  %or648 = or i32 %conv647, %conv646
  %conv649 = trunc i32 %or648 to i8
  store i8 %conv649, i8* %y626, align 1, !tbaa !60
  br label %if.end.650

if.end.650:                                       ; preds = %if.then.645, %for.body.634
  %502 = load i8*, i8** %dp, align 8, !tbaa !1
  %incdec.ptr651 = getelementptr inbounds i8, i8* %502, i32 -1
  store i8* %incdec.ptr651, i8** %dp, align 8, !tbaa !1
  %503 = load i8, i8* %incdec.ptr651, align 1, !tbaa !60
  %conv652 = zext i8 %503 to i32
  %shl653 = shl i32 %conv652, 6
  %504 = load i32, i32* %val630, align 4, !tbaa !22
  %cmp654 = icmp sgt i32 %shl653, %504
  br i1 %cmp654, label %if.then.656, label %if.end.661

if.then.656:                                      ; preds = %if.end.650
  %505 = load i8, i8* %bitmask629, align 1, !tbaa !60
  %conv657 = zext i8 %505 to i32
  %506 = load i8, i8* %m627, align 1, !tbaa !60
  %conv658 = zext i8 %506 to i32
  %or659 = or i32 %conv658, %conv657
  %conv660 = trunc i32 %or659 to i8
  store i8 %conv660, i8* %m627, align 1, !tbaa !60
  br label %if.end.661

if.end.661:                                       ; preds = %if.then.656, %if.end.650
  %507 = load i8*, i8** %dp, align 8, !tbaa !1
  %incdec.ptr662 = getelementptr inbounds i8, i8* %507, i32 -1
  store i8* %incdec.ptr662, i8** %dp, align 8, !tbaa !1
  %508 = load i8, i8* %incdec.ptr662, align 1, !tbaa !60
  %conv663 = zext i8 %508 to i32
  %shl664 = shl i32 %conv663, 6
  %509 = load i32, i32* %val630, align 4, !tbaa !22
  %cmp665 = icmp sgt i32 %shl664, %509
  br i1 %cmp665, label %if.then.667, label %if.end.672

if.then.667:                                      ; preds = %if.end.661
  %510 = load i8, i8* %bitmask629, align 1, !tbaa !60
  %conv668 = zext i8 %510 to i32
  %511 = load i8, i8* %c625, align 1, !tbaa !60
  %conv669 = zext i8 %511 to i32
  %or670 = or i32 %conv669, %conv668
  %conv671 = trunc i32 %or670 to i8
  store i8 %conv671, i8* %c625, align 1, !tbaa !60
  br label %if.end.672

if.end.672:                                       ; preds = %if.then.667, %if.end.661
  %512 = load i8, i8* %bitmask629, align 1, !tbaa !60
  %conv673 = zext i8 %512 to i32
  %shl674 = shl i32 %conv673, 1
  %conv675 = trunc i32 %shl674 to i8
  store i8 %conv675, i8* %bitmask629, align 1, !tbaa !60
  br label %for.inc.676

for.inc.676:                                      ; preds = %if.end.672
  %513 = load i32, i32* %j, align 4, !tbaa !22
  %inc677 = add nsw i32 %513, 1
  store i32 %inc677, i32* %j, align 4, !tbaa !22
  br label %for.cond.631

for.end.678:                                      ; preds = %for.cond.631
  %514 = load i8, i8* %y626, align 1, !tbaa !60
  %515 = load i8*, i8** %yP, align 8, !tbaa !1
  %incdec.ptr679 = getelementptr inbounds i8, i8* %515, i32 -1
  store i8* %incdec.ptr679, i8** %yP, align 8, !tbaa !1
  store i8 %514, i8* %incdec.ptr679, align 1, !tbaa !60
  %516 = load i8, i8* %m627, align 1, !tbaa !60
  %517 = load i8*, i8** %mP, align 8, !tbaa !1
  %incdec.ptr680 = getelementptr inbounds i8, i8* %517, i32 -1
  store i8* %incdec.ptr680, i8** %mP, align 8, !tbaa !1
  store i8 %516, i8* %incdec.ptr680, align 1, !tbaa !60
  %518 = load i8, i8* %c625, align 1, !tbaa !60
  %519 = load i8*, i8** %cP, align 8, !tbaa !1
  %incdec.ptr681 = getelementptr inbounds i8, i8* %519, i32 -1
  store i8* %incdec.ptr681, i8** %cP, align 8, !tbaa !1
  store i8 %518, i8* %incdec.ptr681, align 1, !tbaa !60
  %520 = bitcast i32* %val630 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %520) #2
  call void @llvm.lifetime.end(i64 1, i8* %bitmask629) #2
  call void @llvm.lifetime.end(i64 1, i8* %k628) #2
  call void @llvm.lifetime.end(i64 1, i8* %m627) #2
  call void @llvm.lifetime.end(i64 1, i8* %y626) #2
  call void @llvm.lifetime.end(i64 1, i8* %c625) #2
  br label %for.inc.682

for.inc.682:                                      ; preds = %for.end.678
  %521 = load i32, i32* %i392, align 4, !tbaa !22
  %inc683 = add nsw i32 %521, 1
  store i32 %inc683, i32* %i392, align 4, !tbaa !22
  br label %for.cond.621

for.end.684:                                      ; preds = %for.cond.621
  br label %if.end.685

if.end.685:                                       ; preds = %for.end.684, %for.end.618
  %522 = bitcast i32* %x551 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %522) #2
  %523 = bitcast i16** %mat547 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %523) #2
  br label %sw.epilog

sw.bb.686:                                        ; preds = %if.end.400
  %524 = load i32, i32* %scan, align 4, !tbaa !22
  %cmp687 = icmp eq i32 %524, 1
  br i1 %cmp687, label %if.then.689, label %if.end.706

if.then.689:                                      ; preds = %sw.bb.686
  %525 = load i32, i32* %plane_size, align 4, !tbaa !22
  %mul690 = mul nsw i32 %525, 8
  %mul691 = mul nsw i32 %mul690, 4
  %526 = load i8*, i8** %dp, align 8, !tbaa !1
  %idx.ext692 = sext i32 %mul691 to i64
  %idx.neg = sub i64 0, %idx.ext692
  %add.ptr693 = getelementptr inbounds i8, i8* %526, i64 %idx.neg
  store i8* %add.ptr693, i8** %dp, align 8, !tbaa !1
  %527 = load i32, i32* %plane_size, align 4, !tbaa !22
  %528 = load i8*, i8** %cP, align 8, !tbaa !1
  %idx.ext694 = sext i32 %527 to i64
  %idx.neg695 = sub i64 0, %idx.ext694
  %add.ptr696 = getelementptr inbounds i8, i8* %528, i64 %idx.neg695
  store i8* %add.ptr696, i8** %cP, align 8, !tbaa !1
  %529 = load i32, i32* %plane_size, align 4, !tbaa !22
  %530 = load i8*, i8** %mP, align 8, !tbaa !1
  %idx.ext697 = sext i32 %529 to i64
  %idx.neg698 = sub i64 0, %idx.ext697
  %add.ptr699 = getelementptr inbounds i8, i8* %530, i64 %idx.neg698
  store i8* %add.ptr699, i8** %mP, align 8, !tbaa !1
  %531 = load i32, i32* %plane_size, align 4, !tbaa !22
  %532 = load i8*, i8** %yP, align 8, !tbaa !1
  %idx.ext700 = sext i32 %531 to i64
  %idx.neg701 = sub i64 0, %idx.ext700
  %add.ptr702 = getelementptr inbounds i8, i8* %532, i64 %idx.neg701
  store i8* %add.ptr702, i8** %yP, align 8, !tbaa !1
  %533 = load i32, i32* %plane_size, align 4, !tbaa !22
  %534 = load i8*, i8** %kP, align 8, !tbaa !1
  %idx.ext703 = sext i32 %533 to i64
  %idx.neg704 = sub i64 0, %idx.ext703
  %add.ptr705 = getelementptr inbounds i8, i8* %534, i64 %idx.neg704
  store i8* %add.ptr705, i8** %kP, align 8, !tbaa !1
  br label %if.end.706

if.end.706:                                       ; preds = %if.then.689, %sw.bb.686
  %535 = load i8*, i8** %dp, align 8, !tbaa !1
  %incdec.ptr707 = getelementptr inbounds i8, i8* %535, i32 1
  store i8* %incdec.ptr707, i8** %dp, align 8, !tbaa !1
  %arraydecay = getelementptr inbounds [2 x i16*], [2 x i16*]* %Kbuf, i32 0, i32 0
  %536 = load i8*, i8** %kP, align 8, !tbaa !1
  %arraydecay708 = getelementptr inbounds [16 x i16*], [16 x i16*]* %Kbar, i32 0, i32 0
  %537 = load i32, i32* %plane_size, align 4, !tbaa !22
  %538 = load i32, i32* %xtalbuff_size, align 4, !tbaa !22
  call void @xtal_plane(i8* %535, i16** %arraydecay, i8* %536, i16** %arraydecay708, i32 %537, i32 %538) #4
  %539 = load i8*, i8** %dp, align 8, !tbaa !1
  %incdec.ptr709 = getelementptr inbounds i8, i8* %539, i32 1
  store i8* %incdec.ptr709, i8** %dp, align 8, !tbaa !1
  %arraydecay710 = getelementptr inbounds [2 x i16*], [2 x i16*]* %Cbuf, i32 0, i32 0
  %540 = load i8*, i8** %cP, align 8, !tbaa !1
  %arraydecay711 = getelementptr inbounds [16 x i16*], [16 x i16*]* %Cbar, i32 0, i32 0
  %541 = load i32, i32* %plane_size, align 4, !tbaa !22
  %542 = load i32, i32* %xtalbuff_size, align 4, !tbaa !22
  call void @xtal_plane(i8* %539, i16** %arraydecay710, i8* %540, i16** %arraydecay711, i32 %541, i32 %542) #4
  %543 = load i8*, i8** %dp, align 8, !tbaa !1
  %incdec.ptr712 = getelementptr inbounds i8, i8* %543, i32 1
  store i8* %incdec.ptr712, i8** %dp, align 8, !tbaa !1
  %arraydecay713 = getelementptr inbounds [2 x i16*], [2 x i16*]* %Mbuf, i32 0, i32 0
  %544 = load i8*, i8** %mP, align 8, !tbaa !1
  %arraydecay714 = getelementptr inbounds [16 x i16*], [16 x i16*]* %Mbar, i32 0, i32 0
  %545 = load i32, i32* %plane_size, align 4, !tbaa !22
  %546 = load i32, i32* %xtalbuff_size, align 4, !tbaa !22
  call void @xtal_plane(i8* %543, i16** %arraydecay713, i8* %544, i16** %arraydecay714, i32 %545, i32 %546) #4
  %547 = load i8*, i8** %dp, align 8, !tbaa !1
  %incdec.ptr715 = getelementptr inbounds i8, i8* %547, i32 1
  store i8* %incdec.ptr715, i8** %dp, align 8, !tbaa !1
  %arraydecay716 = getelementptr inbounds [2 x i16*], [2 x i16*]* %Ybuf, i32 0, i32 0
  %548 = load i8*, i8** %yP, align 8, !tbaa !1
  %arraydecay717 = getelementptr inbounds [16 x i16*], [16 x i16*]* %Ybar, i32 0, i32 0
  %549 = load i32, i32* %plane_size, align 4, !tbaa !22
  %550 = load i32, i32* %xtalbuff_size, align 4, !tbaa !22
  call void @xtal_plane(i8* %547, i16** %arraydecay716, i8* %548, i16** %arraydecay717, i32 %549, i32 %550) #4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.400, %if.end.706, %if.end.685, %if.end.545, %for.end.462
  %551 = load i32, i32* %num_comps, align 4, !tbaa !22
  %cmp718 = icmp eq i32 %551, 4
  br i1 %cmp718, label %if.then.720, label %if.end.806

if.then.720:                                      ; preds = %sw.epilog
  %552 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %553 = bitcast %struct.gx_device_printer_s* %552 to %struct.gx_device_mj_s*
  %colorcomp = getelementptr inbounds %struct.gx_device_mj_s, %struct.gx_device_mj_s* %553, i32 0, i32 68
  %554 = load i32, i32* %colorcomp, align 4, !tbaa !25
  %cmp721 = icmp sgt i32 %554, 3
  br i1 %cmp721, label %if.then.723, label %if.else.760

if.then.723:                                      ; preds = %if.then.720
  %555 = bitcast i64** %kp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %555) #2
  %556 = load i32, i32* %scan, align 4, !tbaa !22
  %idxprom724 = sext i32 %556 to i64
  %arrayidx725 = getelementptr inbounds [4 x [4 x i8*]], [4 x [4 x i8*]]* %plane_data, i32 0, i64 %idxprom724
  %arrayidx726 = getelementptr inbounds [4 x i8*], [4 x i8*]* %arrayidx725, i32 0, i64 3
  %557 = load i8*, i8** %arrayidx726, align 8, !tbaa !1
  %558 = bitcast i8* %557 to i64*
  store i64* %558, i64** %kp, align 8, !tbaa !1
  %559 = bitcast i64** %cp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %559) #2
  %560 = load i32, i32* %scan, align 4, !tbaa !22
  %idxprom727 = sext i32 %560 to i64
  %arrayidx728 = getelementptr inbounds [4 x [4 x i8*]], [4 x [4 x i8*]]* %plane_data, i32 0, i64 %idxprom727
  %arrayidx729 = getelementptr inbounds [4 x i8*], [4 x i8*]* %arrayidx728, i32 0, i64 2
  %561 = load i8*, i8** %arrayidx729, align 8, !tbaa !1
  %562 = bitcast i8* %561 to i64*
  store i64* %562, i64** %cp, align 8, !tbaa !1
  %563 = bitcast i64** %mp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %563) #2
  %564 = load i32, i32* %scan, align 4, !tbaa !22
  %idxprom730 = sext i32 %564 to i64
  %arrayidx731 = getelementptr inbounds [4 x [4 x i8*]], [4 x [4 x i8*]]* %plane_data, i32 0, i64 %idxprom730
  %arrayidx732 = getelementptr inbounds [4 x i8*], [4 x i8*]* %arrayidx731, i32 0, i64 1
  %565 = load i8*, i8** %arrayidx732, align 8, !tbaa !1
  %566 = bitcast i8* %565 to i64*
  store i64* %566, i64** %mp, align 8, !tbaa !1
  %567 = bitcast i64** %yp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %567) #2
  %568 = load i32, i32* %scan, align 4, !tbaa !22
  %idxprom733 = sext i32 %568 to i64
  %arrayidx734 = getelementptr inbounds [4 x [4 x i8*]], [4 x [4 x i8*]]* %plane_data, i32 0, i64 %idxprom733
  %arrayidx735 = getelementptr inbounds [4 x i8*], [4 x i8*]* %arrayidx734, i32 0, i64 0
  %569 = load i8*, i8** %arrayidx735, align 8, !tbaa !1
  %570 = bitcast i8* %569 to i64*
  store i64* %570, i64** %yp, align 8, !tbaa !1
  %571 = load i32, i32* %bits_per_pixel, align 4, !tbaa !22
  %cmp736 = icmp sgt i32 %571, 4
  br i1 %cmp736, label %if.then.738, label %if.else.739

if.then.738:                                      ; preds = %if.then.723
  br label %if.end.759

if.else.739:                                      ; preds = %if.then.723
  store i32 0, i32* %i392, align 4, !tbaa !22
  br label %for.cond.740

for.cond.740:                                     ; preds = %for.inc.756, %if.else.739
  %572 = load i32, i32* %i392, align 4, !tbaa !22
  %conv741 = sext i32 %572 to i64
  %573 = load i32, i32* %plane_size, align 4, !tbaa !22
  %conv742 = sext i32 %573 to i64
  %div743 = udiv i64 %conv742, 8
  %cmp744 = icmp ult i64 %conv741, %div743
  br i1 %cmp744, label %for.body.746, label %for.end.758

for.body.746:                                     ; preds = %for.cond.740
  %574 = bitcast i64* %bits to i8*
  call void @llvm.lifetime.start(i64 8, i8* %574) #2
  %575 = load i64*, i64** %cp, align 8, !tbaa !1
  %576 = load i64, i64* %575, align 8, !tbaa !21
  %577 = load i64*, i64** %mp, align 8, !tbaa !1
  %578 = load i64, i64* %577, align 8, !tbaa !21
  %and747 = and i64 %576, %578
  %579 = load i64*, i64** %yp, align 8, !tbaa !1
  %580 = load i64, i64* %579, align 8, !tbaa !21
  %and748 = and i64 %and747, %580
  store i64 %and748, i64* %bits, align 8, !tbaa !21
  %581 = load i64, i64* %bits, align 8, !tbaa !21
  %582 = load i64*, i64** %kp, align 8, !tbaa !1
  %incdec.ptr749 = getelementptr inbounds i64, i64* %582, i32 1
  store i64* %incdec.ptr749, i64** %kp, align 8, !tbaa !1
  store i64 %581, i64* %582, align 8, !tbaa !21
  %583 = load i64, i64* %bits, align 8, !tbaa !21
  %neg = xor i64 %583, -1
  store i64 %neg, i64* %bits, align 8, !tbaa !21
  %584 = load i64, i64* %bits, align 8, !tbaa !21
  %585 = load i64*, i64** %cp, align 8, !tbaa !1
  %incdec.ptr750 = getelementptr inbounds i64, i64* %585, i32 1
  store i64* %incdec.ptr750, i64** %cp, align 8, !tbaa !1
  %586 = load i64, i64* %585, align 8, !tbaa !21
  %and751 = and i64 %586, %584
  store i64 %and751, i64* %585, align 8, !tbaa !21
  %587 = load i64, i64* %bits, align 8, !tbaa !21
  %588 = load i64*, i64** %mp, align 8, !tbaa !1
  %incdec.ptr752 = getelementptr inbounds i64, i64* %588, i32 1
  store i64* %incdec.ptr752, i64** %mp, align 8, !tbaa !1
  %589 = load i64, i64* %588, align 8, !tbaa !21
  %and753 = and i64 %589, %587
  store i64 %and753, i64* %588, align 8, !tbaa !21
  %590 = load i64, i64* %bits, align 8, !tbaa !21
  %591 = load i64*, i64** %yp, align 8, !tbaa !1
  %incdec.ptr754 = getelementptr inbounds i64, i64* %591, i32 1
  store i64* %incdec.ptr754, i64** %yp, align 8, !tbaa !1
  %592 = load i64, i64* %591, align 8, !tbaa !21
  %and755 = and i64 %592, %590
  store i64 %and755, i64* %591, align 8, !tbaa !21
  %593 = bitcast i64* %bits to i8*
  call void @llvm.lifetime.end(i64 8, i8* %593) #2
  br label %for.inc.756

for.inc.756:                                      ; preds = %for.body.746
  %594 = load i32, i32* %i392, align 4, !tbaa !22
  %inc757 = add nsw i32 %594, 1
  store i32 %inc757, i32* %i392, align 4, !tbaa !22
  br label %for.cond.740

for.end.758:                                      ; preds = %for.cond.740
  br label %if.end.759

if.end.759:                                       ; preds = %for.end.758, %if.then.738
  %595 = bitcast i64** %yp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %595) #2
  %596 = bitcast i64** %mp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %596) #2
  %597 = bitcast i64** %cp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %597) #2
  %598 = bitcast i64** %kp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %598) #2
  br label %if.end.805

if.else.760:                                      ; preds = %if.then.720
  %599 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %600 = bitcast %struct.gx_device_printer_s* %599 to %struct.gx_device_mj_s*
  %colorcomp761 = getelementptr inbounds %struct.gx_device_mj_s, %struct.gx_device_mj_s* %600, i32 0, i32 68
  %601 = load i32, i32* %colorcomp761, align 4, !tbaa !25
  %cmp762 = icmp eq i32 %601, 3
  br i1 %cmp762, label %if.then.764, label %if.end.804

if.then.764:                                      ; preds = %if.else.760
  %602 = bitcast i64** %kp765 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %602) #2
  %603 = load i32, i32* %scan, align 4, !tbaa !22
  %idxprom766 = sext i32 %603 to i64
  %arrayidx767 = getelementptr inbounds [4 x [4 x i8*]], [4 x [4 x i8*]]* %plane_data, i32 0, i64 %idxprom766
  %arrayidx768 = getelementptr inbounds [4 x i8*], [4 x i8*]* %arrayidx767, i32 0, i64 3
  %604 = load i8*, i8** %arrayidx768, align 8, !tbaa !1
  %605 = bitcast i8* %604 to i64*
  store i64* %605, i64** %kp765, align 8, !tbaa !1
  %606 = bitcast i64** %cp769 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %606) #2
  %607 = load i32, i32* %scan, align 4, !tbaa !22
  %idxprom770 = sext i32 %607 to i64
  %arrayidx771 = getelementptr inbounds [4 x [4 x i8*]], [4 x [4 x i8*]]* %plane_data, i32 0, i64 %idxprom770
  %arrayidx772 = getelementptr inbounds [4 x i8*], [4 x i8*]* %arrayidx771, i32 0, i64 2
  %608 = load i8*, i8** %arrayidx772, align 8, !tbaa !1
  %609 = bitcast i8* %608 to i64*
  store i64* %609, i64** %cp769, align 8, !tbaa !1
  %610 = bitcast i64** %mp773 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %610) #2
  %611 = load i32, i32* %scan, align 4, !tbaa !22
  %idxprom774 = sext i32 %611 to i64
  %arrayidx775 = getelementptr inbounds [4 x [4 x i8*]], [4 x [4 x i8*]]* %plane_data, i32 0, i64 %idxprom774
  %arrayidx776 = getelementptr inbounds [4 x i8*], [4 x i8*]* %arrayidx775, i32 0, i64 1
  %612 = load i8*, i8** %arrayidx776, align 8, !tbaa !1
  %613 = bitcast i8* %612 to i64*
  store i64* %613, i64** %mp773, align 8, !tbaa !1
  %614 = bitcast i64** %yp777 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %614) #2
  %615 = load i32, i32* %scan, align 4, !tbaa !22
  %idxprom778 = sext i32 %615 to i64
  %arrayidx779 = getelementptr inbounds [4 x [4 x i8*]], [4 x [4 x i8*]]* %plane_data, i32 0, i64 %idxprom778
  %arrayidx780 = getelementptr inbounds [4 x i8*], [4 x i8*]* %arrayidx779, i32 0, i64 0
  %616 = load i8*, i8** %arrayidx780, align 8, !tbaa !1
  %617 = bitcast i8* %616 to i64*
  store i64* %617, i64** %yp777, align 8, !tbaa !1
  %618 = load i32, i32* %bits_per_pixel, align 4, !tbaa !22
  %cmp781 = icmp sgt i32 %618, 4
  br i1 %cmp781, label %if.then.783, label %if.else.802

if.then.783:                                      ; preds = %if.then.764
  store i32 0, i32* %i392, align 4, !tbaa !22
  br label %for.cond.784

for.cond.784:                                     ; preds = %for.inc.799, %if.then.783
  %619 = load i32, i32* %i392, align 4, !tbaa !22
  %conv785 = sext i32 %619 to i64
  %620 = load i32, i32* %plane_size, align 4, !tbaa !22
  %conv786 = sext i32 %620 to i64
  %div787 = udiv i64 %conv786, 8
  %cmp788 = icmp ult i64 %conv785, %div787
  br i1 %cmp788, label %for.body.790, label %for.end.801

for.body.790:                                     ; preds = %for.cond.784
  %621 = bitcast i64* %bits791 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %621) #2
  %622 = load i64*, i64** %kp765, align 8, !tbaa !1
  %incdec.ptr792 = getelementptr inbounds i64, i64* %622, i32 1
  store i64* %incdec.ptr792, i64** %kp765, align 8, !tbaa !1
  %623 = load i64, i64* %622, align 8, !tbaa !21
  store i64 %623, i64* %bits791, align 8, !tbaa !21
  %624 = load i64, i64* %bits791, align 8, !tbaa !21
  %625 = load i64*, i64** %cp769, align 8, !tbaa !1
  %incdec.ptr793 = getelementptr inbounds i64, i64* %625, i32 1
  store i64* %incdec.ptr793, i64** %cp769, align 8, !tbaa !1
  %626 = load i64, i64* %625, align 8, !tbaa !21
  %or794 = or i64 %626, %624
  store i64 %or794, i64* %625, align 8, !tbaa !21
  %627 = load i64, i64* %bits791, align 8, !tbaa !21
  %628 = load i64*, i64** %mp773, align 8, !tbaa !1
  %incdec.ptr795 = getelementptr inbounds i64, i64* %628, i32 1
  store i64* %incdec.ptr795, i64** %mp773, align 8, !tbaa !1
  %629 = load i64, i64* %628, align 8, !tbaa !21
  %or796 = or i64 %629, %627
  store i64 %or796, i64* %628, align 8, !tbaa !21
  %630 = load i64, i64* %bits791, align 8, !tbaa !21
  %631 = load i64*, i64** %yp777, align 8, !tbaa !1
  %incdec.ptr797 = getelementptr inbounds i64, i64* %631, i32 1
  store i64* %incdec.ptr797, i64** %yp777, align 8, !tbaa !1
  %632 = load i64, i64* %631, align 8, !tbaa !21
  %or798 = or i64 %632, %630
  store i64 %or798, i64* %631, align 8, !tbaa !21
  %633 = bitcast i64* %bits791 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %633) #2
  br label %for.inc.799

for.inc.799:                                      ; preds = %for.body.790
  %634 = load i32, i32* %i392, align 4, !tbaa !22
  %inc800 = add nsw i32 %634, 1
  store i32 %inc800, i32* %i392, align 4, !tbaa !22
  br label %for.cond.784

for.end.801:                                      ; preds = %for.cond.784
  br label %if.end.803

if.else.802:                                      ; preds = %if.then.764
  br label %if.end.803

if.end.803:                                       ; preds = %if.else.802, %for.end.801
  %635 = bitcast i64** %yp777 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %635) #2
  %636 = bitcast i64** %mp773 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %636) #2
  %637 = bitcast i64** %cp769 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %637) #2
  %638 = bitcast i64** %kp765 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %638) #2
  br label %if.end.804

if.end.804:                                       ; preds = %if.end.803, %if.else.760
  br label %if.end.805

if.end.805:                                       ; preds = %if.end.804, %if.end.759
  br label %if.end.806

if.end.806:                                       ; preds = %if.end.805, %sw.epilog
  %639 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %640 = bitcast %struct.gx_device_printer_s* %639 to %struct.gx_device_mj_s*
  %colorcomp807 = getelementptr inbounds %struct.gx_device_mj_s, %struct.gx_device_mj_s* %640, i32 0, i32 68
  %641 = load i32, i32* %colorcomp807, align 4, !tbaa !25
  switch i32 %641, label %sw.default [
    i32 1, label %sw.bb.808
    i32 3, label %sw.bb.813
  ]

sw.bb.808:                                        ; preds = %if.end.806
  store i32 0, i32* %zero_row_count, align 4, !tbaa !22
  %642 = load i32, i32* %scan, align 4, !tbaa !22
  %idxprom809 = sext i32 %642 to i64
  %arrayidx810 = getelementptr inbounds [4 x [4 x i8*]], [4 x [4 x i8*]]* %plane_data, i32 0, i64 %idxprom809
  %arrayidx811 = getelementptr inbounds [4 x i8*], [4 x i8*]* %arrayidx810, i32 0, i64 0
  %643 = load i8*, i8** %arrayidx811, align 8, !tbaa !1
  store i8* %643, i8** %out_data, align 8, !tbaa !1
  %644 = load i32, i32* %plane_size, align 4, !tbaa !22
  %645 = load i8*, i8** %out_data, align 8, !tbaa !1
  %646 = load i8*, i8** %mj_tmp_buf, align 8, !tbaa !1
  %647 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %648 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call812 = call i32 @mj_raster_cmd(i32 3, i32 %644, i8* %645, i8* %646, %struct.gx_device_printer_s* %647, %struct._IO_FILE* %648) #4
  br label %sw.epilog.839

sw.bb.813:                                        ; preds = %if.end.806
  store i32 0, i32* %zero_row_count, align 4, !tbaa !22
  store i32 2, i32* %i392, align 4, !tbaa !22
  br label %for.cond.814

for.cond.814:                                     ; preds = %for.inc.823, %sw.bb.813
  %649 = load i32, i32* %i392, align 4, !tbaa !22
  %cmp815 = icmp sge i32 %649, 0
  br i1 %cmp815, label %for.body.817, label %for.end.825

for.body.817:                                     ; preds = %for.cond.814
  %650 = load i32, i32* %i392, align 4, !tbaa !22
  %idxprom818 = sext i32 %650 to i64
  %651 = load i32, i32* %scan, align 4, !tbaa !22
  %idxprom819 = sext i32 %651 to i64
  %arrayidx820 = getelementptr inbounds [4 x [4 x i8*]], [4 x [4 x i8*]]* %plane_data, i32 0, i64 %idxprom819
  %arrayidx821 = getelementptr inbounds [4 x i8*], [4 x i8*]* %arrayidx820, i32 0, i64 %idxprom818
  %652 = load i8*, i8** %arrayidx821, align 8, !tbaa !1
  store i8* %652, i8** %out_data, align 8, !tbaa !1
  %653 = load i32, i32* %i392, align 4, !tbaa !22
  %654 = load i32, i32* %plane_size, align 4, !tbaa !22
  %655 = load i8*, i8** %out_data, align 8, !tbaa !1
  %656 = load i8*, i8** %mj_tmp_buf, align 8, !tbaa !1
  %657 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %658 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call822 = call i32 @mj_raster_cmd(i32 %653, i32 %654, i8* %655, i8* %656, %struct.gx_device_printer_s* %657, %struct._IO_FILE* %658) #4
  br label %for.inc.823

for.inc.823:                                      ; preds = %for.body.817
  %659 = load i32, i32* %i392, align 4, !tbaa !22
  %dec824 = add nsw i32 %659, -1
  store i32 %dec824, i32* %i392, align 4, !tbaa !22
  br label %for.cond.814

for.end.825:                                      ; preds = %for.cond.814
  br label %sw.epilog.839

sw.default:                                       ; preds = %if.end.806
  store i32 0, i32* %zero_row_count, align 4, !tbaa !22
  %660 = load i32, i32* %num_comps, align 4, !tbaa !22
  %sub826 = sub nsw i32 %660, 1
  store i32 %sub826, i32* %i392, align 4, !tbaa !22
  br label %for.cond.827

for.cond.827:                                     ; preds = %for.inc.836, %sw.default
  %661 = load i32, i32* %i392, align 4, !tbaa !22
  %cmp828 = icmp sge i32 %661, 0
  br i1 %cmp828, label %for.body.830, label %for.end.838

for.body.830:                                     ; preds = %for.cond.827
  %662 = load i32, i32* %i392, align 4, !tbaa !22
  %idxprom831 = sext i32 %662 to i64
  %663 = load i32, i32* %scan, align 4, !tbaa !22
  %idxprom832 = sext i32 %663 to i64
  %arrayidx833 = getelementptr inbounds [4 x [4 x i8*]], [4 x [4 x i8*]]* %plane_data, i32 0, i64 %idxprom832
  %arrayidx834 = getelementptr inbounds [4 x i8*], [4 x i8*]* %arrayidx833, i32 0, i64 %idxprom831
  %664 = load i8*, i8** %arrayidx834, align 8, !tbaa !1
  store i8* %664, i8** %out_data, align 8, !tbaa !1
  %665 = load i32, i32* %i392, align 4, !tbaa !22
  %666 = load i32, i32* %plane_size, align 4, !tbaa !22
  %667 = load i8*, i8** %out_data, align 8, !tbaa !1
  %668 = load i8*, i8** %mj_tmp_buf, align 8, !tbaa !1
  %669 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %670 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call835 = call i32 @mj_raster_cmd(i32 %665, i32 %666, i8* %667, i8* %668, %struct.gx_device_printer_s* %669, %struct._IO_FILE* %670) #4
  br label %for.inc.836

for.inc.836:                                      ; preds = %for.body.830
  %671 = load i32, i32* %i392, align 4, !tbaa !22
  %dec837 = add nsw i32 %671, -1
  store i32 %dec837, i32* %i392, align 4, !tbaa !22
  br label %for.cond.827

for.end.838:                                      ; preds = %for.cond.827
  br label %sw.epilog.839

sw.epilog.839:                                    ; preds = %for.end.838, %for.end.825, %sw.bb.808
  %672 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %HWResolution840 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %672, i32 0, i32 22
  %arrayidx841 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution840, i32 0, i64 1
  %673 = load float, float* %arrayidx841, align 4, !tbaa !23
  %cmp842 = fcmp ogt float %673, 3.600000e+02
  br i1 %cmp842, label %if.then.844, label %if.else.846

if.then.844:                                      ; preds = %sw.epilog.839
  %674 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call845 = call i64 @fwrite(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.29, i32 0, i32 0), i64 1, i64 7, %struct._IO_FILE* %674) #4
  br label %if.end.848

if.else.846:                                      ; preds = %sw.epilog.839
  %675 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call847 = call i32 @fputc(i32 10, %struct._IO_FILE* %675) #4
  br label %if.end.848

if.end.848:                                       ; preds = %if.else.846, %if.then.844
  %676 = load i32, i32* %scan, align 4, !tbaa !22
  %sub849 = sub nsw i32 1, %676
  store i32 %sub849, i32* %scan, align 4, !tbaa !22
  %677 = bitcast i8** %odp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %677) #2
  %678 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %678) #2
  %679 = bitcast i32* %i392 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %679) #2
  %680 = bitcast i32* %zero_row_count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %680) #2
  %681 = bitcast i8** %dp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %681) #2
  %682 = bitcast i8** %yP to i8*
  call void @llvm.lifetime.end(i64 8, i8* %682) #2
  %683 = bitcast i8** %mP to i8*
  call void @llvm.lifetime.end(i64 8, i8* %683) #2
  %684 = bitcast i8** %cP to i8*
  call void @llvm.lifetime.end(i64 8, i8* %684) #2
  %685 = bitcast i8** %kP to i8*
  call void @llvm.lifetime.end(i64 8, i8* %685) #2
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.848, %if.then.334
  %686 = bitcast i64** %p_data to i8*
  call void @llvm.lifetime.end(i64 8, i8* %686) #2
  %687 = bitcast i64** %end_data to i8*
  call void @llvm.lifetime.end(i64 8, i8* %687) #2
  %688 = bitcast i64** %data_words to i8*
  call void @llvm.lifetime.end(i64 8, i8* %688) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 25, label %for.inc.852
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc.852

for.inc.852:                                      ; preds = %cleanup.cont, %cleanup
  %689 = load i64, i64* %lnum, align 8, !tbaa !21
  %inc853 = add nsw i64 %689, 1
  store i64 %inc853, i64* %lnum, align 8, !tbaa !21
  br label %for.cond.312

for.end.854:                                      ; preds = %for.cond.312
  %690 = bitcast i64* %rmask to i8*
  call void @llvm.lifetime.end(i64 8, i8* %690) #2
  %691 = bitcast i32* %start_rows to i8*
  call void @llvm.lifetime.end(i64 4, i8* %691) #2
  %692 = bitcast i32* %num_blank_lines to i8*
  call void @llvm.lifetime.end(i64 4, i8* %692) #2
  %693 = bitcast i64* %lnum to i8*
  call void @llvm.lifetime.end(i64 8, i8* %693) #2
  %694 = bitcast i32* %i290 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %694) #2
  %695 = bitcast i32* %this_pass to i8*
  call void @llvm.lifetime.end(i64 4, i8* %695) #2
  %696 = bitcast i32* %kErr to i8*
  call void @llvm.lifetime.end(i64 4, i8* %696) #2
  %697 = bitcast i32* %yErr to i8*
  call void @llvm.lifetime.end(i64 4, i8* %697) #2
  %698 = bitcast i32* %mErr to i8*
  call void @llvm.lifetime.end(i64 4, i8* %698) #2
  %699 = bitcast i32* %cErr to i8*
  call void @llvm.lifetime.end(i64 4, i8* %699) #2
  %700 = bitcast i64* %lend to i8*
  call void @llvm.lifetime.end(i64 8, i8* %700) #2
  %701 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call855 = call i32 @fputs(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.30, i32 0, i32 0), %struct._IO_FILE* %701) #4
  %702 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call856 = call i32 @fflush(%struct._IO_FILE* %702) #4
  %703 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory857 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %703, i32 0, i32 3
  %704 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory857, align 8, !tbaa !53
  %non_gc_memory858 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %704, i32 0, i32 3
  %705 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory858, align 8, !tbaa !54
  %non_gc_memory859 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %705, i32 0, i32 3
  %706 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory859, align 8, !tbaa !54
  %procs860 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %706, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs860, i32 0, i32 2
  %707 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !61
  %708 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory861 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %708, i32 0, i32 3
  %709 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory861, align 8, !tbaa !53
  %non_gc_memory862 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %709, i32 0, i32 3
  %710 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory862, align 8, !tbaa !54
  %non_gc_memory863 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %710, i32 0, i32 3
  %711 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory863, align 8, !tbaa !54
  %712 = load i64*, i64** %storage, align 8, !tbaa !1
  %713 = bitcast i64* %712 to i8*
  call void %707(%struct.gs_memory_s* %711, i8* %713, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.15, i32 0, i32 0)) #4
  %714 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory864 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %714, i32 0, i32 3
  %715 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory864, align 8, !tbaa !53
  %non_gc_memory865 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %715, i32 0, i32 3
  %716 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory865, align 8, !tbaa !54
  %non_gc_memory866 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %716, i32 0, i32 3
  %717 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory866, align 8, !tbaa !54
  %procs867 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %717, i32 0, i32 1
  %free_object868 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs867, i32 0, i32 2
  %718 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object868, align 8, !tbaa !61
  %719 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory869 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %719, i32 0, i32 3
  %720 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory869, align 8, !tbaa !53
  %non_gc_memory870 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %720, i32 0, i32 3
  %721 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory870, align 8, !tbaa !54
  %non_gc_memory871 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %721, i32 0, i32 3
  %722 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory871, align 8, !tbaa !54
  %723 = load i8*, i8** %mj_tmp_buf, align 8, !tbaa !1
  call void %718(%struct.gs_memory_s* %722, i8* %723, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.16, i32 0, i32 0)) #4
  %724 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory872 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %724, i32 0, i32 3
  %725 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory872, align 8, !tbaa !53
  %non_gc_memory873 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %725, i32 0, i32 3
  %726 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory873, align 8, !tbaa !54
  %non_gc_memory874 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %726, i32 0, i32 3
  %727 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory874, align 8, !tbaa !54
  %procs875 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %727, i32 0, i32 1
  %free_object876 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs875, i32 0, i32 2
  %728 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object876, align 8, !tbaa !61
  %729 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory877 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %729, i32 0, i32 3
  %730 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory877, align 8, !tbaa !53
  %non_gc_memory878 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %730, i32 0, i32 3
  %731 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory878, align 8, !tbaa !54
  %non_gc_memory879 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %731, i32 0, i32 3
  %732 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory879, align 8, !tbaa !54
  %733 = load i16*, i16** %xtalbuff, align 8, !tbaa !1
  %734 = bitcast i16* %733 to i8*
  call void %728(%struct.gs_memory_s* %732, i8* %734, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i32 0, i32 0)) #4
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.880

cleanup.880:                                      ; preds = %for.end.854, %if.then.143
  %735 = bitcast [2 x i16*]* %Kbuf to i8*
  call void @llvm.lifetime.end(i64 16, i8* %735) #2
  %736 = bitcast [2 x i16*]* %Ybuf to i8*
  call void @llvm.lifetime.end(i64 16, i8* %736) #2
  %737 = bitcast [2 x i16*]* %Mbuf to i8*
  call void @llvm.lifetime.end(i64 16, i8* %737) #2
  %738 = bitcast [2 x i16*]* %Cbuf to i8*
  call void @llvm.lifetime.end(i64 16, i8* %738) #2
  %739 = bitcast [16 x i16*]* %Kbar to i8*
  call void @llvm.lifetime.end(i64 128, i8* %739) #2
  %740 = bitcast [16 x i16*]* %Ybar to i8*
  call void @llvm.lifetime.end(i64 128, i8* %740) #2
  %741 = bitcast [16 x i16*]* %Mbar to i8*
  call void @llvm.lifetime.end(i64 128, i8* %741) #2
  %742 = bitcast [16 x i16*]* %Cbar to i8*
  call void @llvm.lifetime.end(i64 128, i8* %742) #2
  %743 = bitcast i16** %xtalbuff to i8*
  call void @llvm.lifetime.end(i64 8, i8* %743) #2
  %744 = bitcast i32* %xtalbuff_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %744) #2
  %745 = bitcast i8** %mj_tmp_buf to i8*
  call void @llvm.lifetime.end(i64 8, i8* %745) #2
  %746 = bitcast i32* %mj_tmp_buf_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %746) #2
  %747 = bitcast i32* %storage_size_words to i8*
  call void @llvm.lifetime.end(i64 4, i8* %747) #2
  %748 = bitcast i64** %storage to i8*
  call void @llvm.lifetime.end(i64 8, i8* %748) #2
  %749 = bitcast i8** %out_row_alt to i8*
  call void @llvm.lifetime.end(i64 8, i8* %749) #2
  %750 = bitcast i8** %out_row to i8*
  call void @llvm.lifetime.end(i64 8, i8* %750) #2
  %751 = bitcast i8** %out_data to i8*
  call void @llvm.lifetime.end(i64 8, i8* %751) #2
  %752 = bitcast [4 x [4 x i8*]]* %plane_data to i8*
  call void @llvm.lifetime.end(i64 128, i8* %752) #2
  %753 = bitcast [4 x i8*]* %data to i8*
  call void @llvm.lifetime.end(i64 32, i8* %753) #2
  %754 = bitcast [2 x i32*]* %errors to i8*
  call void @llvm.lifetime.end(i64 16, i8* %754) #2
  %755 = bitcast i32* %scan to i8*
  call void @llvm.lifetime.end(i64 4, i8* %755) #2
  %756 = bitcast i32* %outbuff_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %756) #2
  %757 = bitcast i32* %errbuff_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %757) #2
  %758 = bitcast i32* %databuff_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %758) #2
  %759 = bitcast i32* %plane_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %759) #2
  %760 = bitcast i32* %expanded_bpp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %760) #2
  %761 = bitcast i32* %storage_bpp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %761) #2
  %762 = bitcast i32* %bits_per_pixel to i8*
  call void @llvm.lifetime.end(i64 4, i8* %762) #2
  %763 = bitcast i32* %num_comps to i8*
  call void @llvm.lifetime.end(i64 4, i8* %763) #2
  %764 = bitcast i32* %line_size_words to i8*
  call void @llvm.lifetime.end(i64 4, i8* %764) #2
  %765 = bitcast i32* %line_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %765) #2
  %766 = load i32, i32* %retval
  ret i32 %766

unreachable:                                      ; preds = %cleanup
  unreachable
}

declare i32 @gx_device_raster(%struct.gx_device_s*, i32) #0

; Function Attrs: nounwind
declare i8* @memset(i8*, i32, i64) #3

declare i64 @fwrite(i8*, i64, i64, %struct._IO_FILE*) #0

declare i32 @fputc(i32, %struct._IO_FILE*) #0

; Function Attrs: nounwind
declare i32 @rand() #3

declare i32 @gdev_prn_copy_scan_lines(%struct.gx_device_printer_s*, i32, i8*, i32) #0

; Function Attrs: nounwind uwtable
define internal i32 @mj_v_skip(i32 %n, %struct.gx_device_printer_s* %pdev, %struct._IO_FILE* %stream) #1 {
entry:
  %n.addr = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_printer_s*, align 8
  %stream.addr = alloca %struct._IO_FILE*, align 8
  %l = alloca i32, align 4
  %n2 = alloca i32, align 4
  %n1 = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4, !tbaa !22
  store %struct.gx_device_printer_s* %pdev, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  store %struct._IO_FILE* %stream, %struct._IO_FILE** %stream.addr, align 8, !tbaa !1
  %0 = bitcast i32* %l to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load i32, i32* %n.addr, align 4, !tbaa !22
  %sub = sub nsw i32 %1, 4095
  store i32 %sub, i32* %l, align 4, !tbaa !22
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %l, align 4, !tbaa !22
  %cmp = icmp sgt i32 %2, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8, !tbaa !1
  %call = call i64 @fwrite(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.31, i32 0, i32 0), i64 1, i64 7, %struct._IO_FILE* %3) #4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %l, align 4, !tbaa !22
  %sub1 = sub nsw i32 %4, 4095
  store i32 %sub1, i32* %l, align 4, !tbaa !22
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %5 = load i32, i32* %l, align 4, !tbaa !22
  %add = add nsw i32 %5, 4095
  store i32 %add, i32* %l, align 4, !tbaa !22
  %6 = bitcast i32* %n2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = load i32, i32* %l, align 4, !tbaa !22
  %div = sdiv i32 %7, 256
  store i32 %div, i32* %n2, align 4, !tbaa !22
  %8 = bitcast i32* %n1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #2
  %9 = load i32, i32* %l, align 4, !tbaa !22
  %10 = load i32, i32* %n2, align 4, !tbaa !22
  %mul = mul nsw i32 %10, 256
  %sub2 = sub nsw i32 %9, %mul
  store i32 %sub2, i32* %n1, align 4, !tbaa !22
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8, !tbaa !1
  %call3 = call i64 @fwrite(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.32, i32 0, i32 0), i64 1, i64 5, %struct._IO_FILE* %11) #4
  %12 = load i32, i32* %n1, align 4, !tbaa !22
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8, !tbaa !1
  %call4 = call i32 @fputc(i32 %12, %struct._IO_FILE* %13) #4
  %14 = load i32, i32* %n2, align 4, !tbaa !22
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8, !tbaa !1
  %call5 = call i32 @fputc(i32 %14, %struct._IO_FILE* %15) #4
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8, !tbaa !1
  %call6 = call i32 @fputc(i32 13, %struct._IO_FILE* %16) #4
  %17 = bitcast i32* %n1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %17) #2
  %18 = bitcast i32* %n2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %18) #2
  %19 = bitcast i32* %l to i8*
  call void @llvm.lifetime.end(i64 4, i8* %19) #2
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i64 @mjc_correct_color(%struct.gx_device_printer_s* %pdev, i64 %ci) #1 {
entry:
  %retval = alloca i64, align 8
  %pdev.addr = alloca %struct.gx_device_printer_s*, align 8
  %ci.addr = alloca i64, align 8
  %c = alloca i64, align 8
  %m = alloca i64, align 8
  %y = alloca i64, align 8
  %k = alloca i64, align 8
  %co = alloca i64, align 8
  %k2 = alloca i64, align 8
  %k3 = alloca i64, align 8
  %k4 = alloca i64, align 8
  %c2 = alloca i64, align 8
  %m2 = alloca i64, align 8
  %y2 = alloca i64, align 8
  %k5 = alloca i64, align 8
  %k6 = alloca i64, align 8
  %k7 = alloca i64, align 8
  %k8 = alloca i64, align 8
  %cmask = alloca i32, align 4
  %dn = alloca i32, align 4
  %mjy = alloca i32, align 4
  %mjc = alloca i32, align 4
  %mjm = alloca i32, align 4
  %mjb = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_printer_s* %pdev, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  store i64 %ci, i64* %ci.addr, align 8, !tbaa !21
  %0 = bitcast i64* %c to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = bitcast i64* %m to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #2
  %2 = bitcast i64* %y to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #2
  %3 = bitcast i64* %k to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = bitcast i64* %co to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #2
  %5 = bitcast i64* %k2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #2
  %6 = bitcast i64* %k3 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #2
  %7 = bitcast i64* %k4 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #2
  %8 = bitcast i64* %c2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #2
  %9 = bitcast i64* %m2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #2
  %10 = bitcast i64* %y2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #2
  %11 = bitcast i64* %k5 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #2
  %12 = bitcast i64* %k6 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #2
  %13 = bitcast i64* %k7 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #2
  %14 = bitcast i64* %k8 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #2
  %15 = bitcast i32* %cmask to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #2
  store i32 255, i32* %cmask, align 4, !tbaa !22
  %16 = bitcast i32* %dn to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #2
  %17 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %18 = bitcast %struct.gx_device_printer_s* %17 to %struct.gx_device_mj_s*
  %density = getelementptr inbounds %struct.gx_device_mj_s, %struct.gx_device_mj_s* %18, i32 0, i32 69
  %19 = load i32, i32* %density, align 4, !tbaa !30
  store i32 %19, i32* %dn, align 4, !tbaa !22
  %20 = bitcast i32* %mjy to i8*
  call void @llvm.lifetime.start(i64 4, i8* %20) #2
  %21 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %22 = bitcast %struct.gx_device_printer_s* %21 to %struct.gx_device_mj_s*
  %yellow = getelementptr inbounds %struct.gx_device_mj_s, %struct.gx_device_mj_s* %22, i32 0, i32 72
  %23 = load i32, i32* %yellow, align 4, !tbaa !34
  store i32 %23, i32* %mjy, align 4, !tbaa !22
  %24 = bitcast i32* %mjc to i8*
  call void @llvm.lifetime.start(i64 4, i8* %24) #2
  %25 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %26 = bitcast %struct.gx_device_printer_s* %25 to %struct.gx_device_mj_s*
  %cyan = getelementptr inbounds %struct.gx_device_mj_s, %struct.gx_device_mj_s* %26, i32 0, i32 70
  %27 = load i32, i32* %cyan, align 4, !tbaa !32
  store i32 %27, i32* %mjc, align 4, !tbaa !22
  %28 = bitcast i32* %mjm to i8*
  call void @llvm.lifetime.start(i64 4, i8* %28) #2
  %29 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %30 = bitcast %struct.gx_device_printer_s* %29 to %struct.gx_device_mj_s*
  %magenta = getelementptr inbounds %struct.gx_device_mj_s, %struct.gx_device_mj_s* %30, i32 0, i32 71
  %31 = load i32, i32* %magenta, align 4, !tbaa !33
  store i32 %31, i32* %mjm, align 4, !tbaa !22
  %32 = bitcast i32* %mjb to i8*
  call void @llvm.lifetime.start(i64 4, i8* %32) #2
  %33 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %34 = bitcast %struct.gx_device_printer_s* %33 to %struct.gx_device_mj_s*
  %black = getelementptr inbounds %struct.gx_device_mj_s, %struct.gx_device_mj_s* %34, i32 0, i32 73
  %35 = load i32, i32* %black, align 4, !tbaa !35
  store i32 %35, i32* %mjb, align 4, !tbaa !22
  %36 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %36, i32 0, i32 11
  %depth = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 3
  %37 = load i16, i16* %depth, align 2, !tbaa !52
  %conv = zext i16 %37 to i32
  switch i32 %conv, label %sw.epilog [
    i32 8, label %sw.bb
    i32 32, label %sw.bb.94
  ]

sw.bb:                                            ; preds = %entry
  %38 = load i64, i64* %ci.addr, align 8, !tbaa !21
  %and = and i64 %38, 255
  %39 = load i32, i32* %mjb, align 4, !tbaa !22
  %conv1 = zext i32 %39 to i64
  %mul = mul i64 %and, %conv1
  %shr = lshr i64 %mul, 10
  store i64 %shr, i64* %k, align 8, !tbaa !21
  %40 = load i64, i64* %k, align 8, !tbaa !21
  %cmp = icmp ult i64 %40, 255
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.bb
  %41 = load i64, i64* %k, align 8, !tbaa !21
  br label %cond.end

cond.false:                                       ; preds = %sw.bb
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %41, %cond.true ], [ 255, %cond.false ]
  store i64 %cond, i64* %k, align 8, !tbaa !21
  %42 = load i64, i64* %ci.addr, align 8, !tbaa !21
  %shr3 = lshr i64 %42, 8
  %and4 = and i64 %shr3, 255
  %43 = load i32, i32* %mjb, align 4, !tbaa !22
  %conv5 = zext i32 %43 to i64
  %mul6 = mul i64 %and4, %conv5
  %shr7 = lshr i64 %mul6, 10
  store i64 %shr7, i64* %k2, align 8, !tbaa !21
  %44 = load i64, i64* %k2, align 8, !tbaa !21
  %cmp8 = icmp ult i64 %44, 255
  br i1 %cmp8, label %cond.true.10, label %cond.false.11

cond.true.10:                                     ; preds = %cond.end
  %45 = load i64, i64* %k2, align 8, !tbaa !21
  br label %cond.end.12

cond.false.11:                                    ; preds = %cond.end
  br label %cond.end.12

cond.end.12:                                      ; preds = %cond.false.11, %cond.true.10
  %cond13 = phi i64 [ %45, %cond.true.10 ], [ 255, %cond.false.11 ]
  store i64 %cond13, i64* %k2, align 8, !tbaa !21
  %46 = load i64, i64* %ci.addr, align 8, !tbaa !21
  %shr14 = lshr i64 %46, 16
  %and15 = and i64 %shr14, 255
  %47 = load i32, i32* %mjb, align 4, !tbaa !22
  %conv16 = zext i32 %47 to i64
  %mul17 = mul i64 %and15, %conv16
  %shr18 = lshr i64 %mul17, 10
  store i64 %shr18, i64* %k3, align 8, !tbaa !21
  %48 = load i64, i64* %k3, align 8, !tbaa !21
  %cmp19 = icmp ult i64 %48, 255
  br i1 %cmp19, label %cond.true.21, label %cond.false.22

cond.true.21:                                     ; preds = %cond.end.12
  %49 = load i64, i64* %k3, align 8, !tbaa !21
  br label %cond.end.23

cond.false.22:                                    ; preds = %cond.end.12
  br label %cond.end.23

cond.end.23:                                      ; preds = %cond.false.22, %cond.true.21
  %cond24 = phi i64 [ %49, %cond.true.21 ], [ 255, %cond.false.22 ]
  store i64 %cond24, i64* %k3, align 8, !tbaa !21
  %50 = load i64, i64* %ci.addr, align 8, !tbaa !21
  %shr25 = lshr i64 %50, 24
  %and26 = and i64 %shr25, 255
  %51 = load i32, i32* %mjb, align 4, !tbaa !22
  %conv27 = zext i32 %51 to i64
  %mul28 = mul i64 %and26, %conv27
  %shr29 = lshr i64 %mul28, 10
  store i64 %shr29, i64* %k4, align 8, !tbaa !21
  %52 = load i64, i64* %k4, align 8, !tbaa !21
  %cmp30 = icmp ult i64 %52, 255
  br i1 %cmp30, label %cond.true.32, label %cond.false.33

cond.true.32:                                     ; preds = %cond.end.23
  %53 = load i64, i64* %k4, align 8, !tbaa !21
  br label %cond.end.34

cond.false.33:                                    ; preds = %cond.end.23
  br label %cond.end.34

cond.end.34:                                      ; preds = %cond.false.33, %cond.true.32
  %cond35 = phi i64 [ %53, %cond.true.32 ], [ 255, %cond.false.33 ]
  store i64 %cond35, i64* %k4, align 8, !tbaa !21
  %54 = load i64, i64* %ci.addr, align 8, !tbaa !21
  %shr36 = lshr i64 %54, 32
  %and37 = and i64 %shr36, 255
  %55 = load i32, i32* %mjb, align 4, !tbaa !22
  %conv38 = zext i32 %55 to i64
  %mul39 = mul i64 %and37, %conv38
  %shr40 = lshr i64 %mul39, 10
  store i64 %shr40, i64* %k5, align 8, !tbaa !21
  %56 = load i64, i64* %k5, align 8, !tbaa !21
  %cmp41 = icmp ult i64 %56, 255
  br i1 %cmp41, label %cond.true.43, label %cond.false.44

cond.true.43:                                     ; preds = %cond.end.34
  %57 = load i64, i64* %k5, align 8, !tbaa !21
  br label %cond.end.45

cond.false.44:                                    ; preds = %cond.end.34
  br label %cond.end.45

cond.end.45:                                      ; preds = %cond.false.44, %cond.true.43
  %cond46 = phi i64 [ %57, %cond.true.43 ], [ 255, %cond.false.44 ]
  store i64 %cond46, i64* %k5, align 8, !tbaa !21
  %58 = load i64, i64* %ci.addr, align 8, !tbaa !21
  %shr47 = lshr i64 %58, 40
  %and48 = and i64 %shr47, 255
  %59 = load i32, i32* %mjb, align 4, !tbaa !22
  %conv49 = zext i32 %59 to i64
  %mul50 = mul i64 %and48, %conv49
  %shr51 = lshr i64 %mul50, 10
  store i64 %shr51, i64* %k6, align 8, !tbaa !21
  %60 = load i64, i64* %k6, align 8, !tbaa !21
  %cmp52 = icmp ult i64 %60, 255
  br i1 %cmp52, label %cond.true.54, label %cond.false.55

cond.true.54:                                     ; preds = %cond.end.45
  %61 = load i64, i64* %k6, align 8, !tbaa !21
  br label %cond.end.56

cond.false.55:                                    ; preds = %cond.end.45
  br label %cond.end.56

cond.end.56:                                      ; preds = %cond.false.55, %cond.true.54
  %cond57 = phi i64 [ %61, %cond.true.54 ], [ 255, %cond.false.55 ]
  store i64 %cond57, i64* %k6, align 8, !tbaa !21
  %62 = load i64, i64* %ci.addr, align 8, !tbaa !21
  %shr58 = lshr i64 %62, 48
  %and59 = and i64 %shr58, 255
  %63 = load i32, i32* %mjb, align 4, !tbaa !22
  %conv60 = zext i32 %63 to i64
  %mul61 = mul i64 %and59, %conv60
  %shr62 = lshr i64 %mul61, 10
  store i64 %shr62, i64* %k7, align 8, !tbaa !21
  %64 = load i64, i64* %k7, align 8, !tbaa !21
  %cmp63 = icmp ult i64 %64, 255
  br i1 %cmp63, label %cond.true.65, label %cond.false.66

cond.true.65:                                     ; preds = %cond.end.56
  %65 = load i64, i64* %k7, align 8, !tbaa !21
  br label %cond.end.67

cond.false.66:                                    ; preds = %cond.end.56
  br label %cond.end.67

cond.end.67:                                      ; preds = %cond.false.66, %cond.true.65
  %cond68 = phi i64 [ %65, %cond.true.65 ], [ 255, %cond.false.66 ]
  store i64 %cond68, i64* %k7, align 8, !tbaa !21
  %66 = load i64, i64* %ci.addr, align 8, !tbaa !21
  %shr69 = lshr i64 %66, 56
  %and70 = and i64 %shr69, 255
  %67 = load i32, i32* %mjb, align 4, !tbaa !22
  %conv71 = zext i32 %67 to i64
  %mul72 = mul i64 %and70, %conv71
  %shr73 = lshr i64 %mul72, 10
  store i64 %shr73, i64* %k8, align 8, !tbaa !21
  %68 = load i64, i64* %k8, align 8, !tbaa !21
  %cmp74 = icmp ult i64 %68, 255
  br i1 %cmp74, label %cond.true.76, label %cond.false.77

cond.true.76:                                     ; preds = %cond.end.67
  %69 = load i64, i64* %k8, align 8, !tbaa !21
  br label %cond.end.78

cond.false.77:                                    ; preds = %cond.end.67
  br label %cond.end.78

cond.end.78:                                      ; preds = %cond.false.77, %cond.true.76
  %cond79 = phi i64 [ %69, %cond.true.76 ], [ 255, %cond.false.77 ]
  store i64 %cond79, i64* %k8, align 8, !tbaa !21
  %70 = load i64, i64* %k, align 8, !tbaa !21
  %71 = load i64, i64* %k2, align 8, !tbaa !21
  %shl = shl i64 %71, 8
  %add = add i64 %70, %shl
  %72 = load i64, i64* %k3, align 8, !tbaa !21
  %shl80 = shl i64 %72, 16
  %add81 = add i64 %add, %shl80
  %73 = load i64, i64* %k4, align 8, !tbaa !21
  %shl82 = shl i64 %73, 24
  %add83 = add i64 %add81, %shl82
  %74 = load i64, i64* %k5, align 8, !tbaa !21
  %shl84 = shl i64 %74, 32
  %add85 = add i64 %add83, %shl84
  %75 = load i64, i64* %k6, align 8, !tbaa !21
  %shl86 = shl i64 %75, 40
  %add87 = add i64 %add85, %shl86
  %76 = load i64, i64* %k7, align 8, !tbaa !21
  %shl88 = shl i64 %76, 48
  %add89 = add i64 %add87, %shl88
  %77 = load i64, i64* %k8, align 8, !tbaa !21
  %shl90 = shl i64 %77, 56
  %add91 = add i64 %add89, %shl90
  store i64 %add91, i64* %co, align 8, !tbaa !21
  %78 = load i64, i64* %ci.addr, align 8, !tbaa !21
  %79 = load i64, i64* %co, align 8, !tbaa !21
  %cmp92 = icmp ne i64 %78, %79
  br i1 %cmp92, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end.78
  %call = call i32 (i8*, ...) @errprintf_nomem(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.34, i32 0, i32 0)) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end.78
  %80 = load i64, i64* %co, align 8, !tbaa !21
  store i64 %80, i64* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.94:                                         ; preds = %entry
  %81 = load i64, i64* %ci.addr, align 8, !tbaa !21
  %and95 = and i64 %81, 255
  %82 = load i32, i32* %mjy, align 4, !tbaa !22
  %conv96 = zext i32 %82 to i64
  %mul97 = mul i64 %and95, %conv96
  %83 = load i32, i32* %dn, align 4, !tbaa !22
  %conv98 = zext i32 %83 to i64
  %mul99 = mul i64 %mul97, %conv98
  %shr100 = lshr i64 %mul99, 20
  store i64 %shr100, i64* %y, align 8, !tbaa !21
  %84 = load i64, i64* %y, align 8, !tbaa !21
  %cmp101 = icmp ult i64 %84, 255
  br i1 %cmp101, label %cond.true.103, label %cond.false.104

cond.true.103:                                    ; preds = %sw.bb.94
  %85 = load i64, i64* %y, align 8, !tbaa !21
  br label %cond.end.105

cond.false.104:                                   ; preds = %sw.bb.94
  br label %cond.end.105

cond.end.105:                                     ; preds = %cond.false.104, %cond.true.103
  %cond106 = phi i64 [ %85, %cond.true.103 ], [ 255, %cond.false.104 ]
  store i64 %cond106, i64* %y, align 8, !tbaa !21
  %86 = load i64, i64* %ci.addr, align 8, !tbaa !21
  %shr107 = lshr i64 %86, 8
  %and108 = and i64 %shr107, 255
  %87 = load i32, i32* %mjm, align 4, !tbaa !22
  %conv109 = zext i32 %87 to i64
  %mul110 = mul i64 %and108, %conv109
  %88 = load i32, i32* %dn, align 4, !tbaa !22
  %conv111 = zext i32 %88 to i64
  %mul112 = mul i64 %mul110, %conv111
  %shr113 = lshr i64 %mul112, 20
  store i64 %shr113, i64* %m, align 8, !tbaa !21
  %89 = load i64, i64* %m, align 8, !tbaa !21
  %cmp114 = icmp ult i64 %89, 255
  br i1 %cmp114, label %cond.true.116, label %cond.false.117

cond.true.116:                                    ; preds = %cond.end.105
  %90 = load i64, i64* %m, align 8, !tbaa !21
  br label %cond.end.118

cond.false.117:                                   ; preds = %cond.end.105
  br label %cond.end.118

cond.end.118:                                     ; preds = %cond.false.117, %cond.true.116
  %cond119 = phi i64 [ %90, %cond.true.116 ], [ 255, %cond.false.117 ]
  store i64 %cond119, i64* %m, align 8, !tbaa !21
  %91 = load i64, i64* %ci.addr, align 8, !tbaa !21
  %shr120 = lshr i64 %91, 16
  %and121 = and i64 %shr120, 255
  %92 = load i32, i32* %mjc, align 4, !tbaa !22
  %conv122 = zext i32 %92 to i64
  %mul123 = mul i64 %and121, %conv122
  %93 = load i32, i32* %dn, align 4, !tbaa !22
  %conv124 = zext i32 %93 to i64
  %mul125 = mul i64 %mul123, %conv124
  %shr126 = lshr i64 %mul125, 20
  store i64 %shr126, i64* %c, align 8, !tbaa !21
  %94 = load i64, i64* %c, align 8, !tbaa !21
  %cmp127 = icmp ult i64 %94, 255
  br i1 %cmp127, label %cond.true.129, label %cond.false.130

cond.true.129:                                    ; preds = %cond.end.118
  %95 = load i64, i64* %c, align 8, !tbaa !21
  br label %cond.end.131

cond.false.130:                                   ; preds = %cond.end.118
  br label %cond.end.131

cond.end.131:                                     ; preds = %cond.false.130, %cond.true.129
  %cond132 = phi i64 [ %95, %cond.true.129 ], [ 255, %cond.false.130 ]
  store i64 %cond132, i64* %c, align 8, !tbaa !21
  %96 = load i64, i64* %ci.addr, align 8, !tbaa !21
  %shr133 = lshr i64 %96, 24
  %and134 = and i64 %shr133, 255
  %97 = load i32, i32* %mjb, align 4, !tbaa !22
  %conv135 = zext i32 %97 to i64
  %mul136 = mul i64 %and134, %conv135
  %98 = load i32, i32* %dn, align 4, !tbaa !22
  %conv137 = zext i32 %98 to i64
  %mul138 = mul i64 %mul136, %conv137
  %shr139 = lshr i64 %mul138, 20
  store i64 %shr139, i64* %k, align 8, !tbaa !21
  %99 = load i64, i64* %k, align 8, !tbaa !21
  %cmp140 = icmp ult i64 %99, 255
  br i1 %cmp140, label %cond.true.142, label %cond.false.143

cond.true.142:                                    ; preds = %cond.end.131
  %100 = load i64, i64* %k, align 8, !tbaa !21
  br label %cond.end.144

cond.false.143:                                   ; preds = %cond.end.131
  br label %cond.end.144

cond.end.144:                                     ; preds = %cond.false.143, %cond.true.142
  %cond145 = phi i64 [ %100, %cond.true.142 ], [ 255, %cond.false.143 ]
  store i64 %cond145, i64* %k, align 8, !tbaa !21
  %101 = load i64, i64* %ci.addr, align 8, !tbaa !21
  %shr146 = lshr i64 %101, 32
  %and147 = and i64 %shr146, 255
  %102 = load i32, i32* %mjy, align 4, !tbaa !22
  %conv148 = zext i32 %102 to i64
  %mul149 = mul i64 %and147, %conv148
  %103 = load i32, i32* %dn, align 4, !tbaa !22
  %conv150 = zext i32 %103 to i64
  %mul151 = mul i64 %mul149, %conv150
  %shr152 = lshr i64 %mul151, 20
  store i64 %shr152, i64* %y2, align 8, !tbaa !21
  %104 = load i64, i64* %y2, align 8, !tbaa !21
  %cmp153 = icmp ult i64 %104, 255
  br i1 %cmp153, label %cond.true.155, label %cond.false.156

cond.true.155:                                    ; preds = %cond.end.144
  %105 = load i64, i64* %y2, align 8, !tbaa !21
  br label %cond.end.157

cond.false.156:                                   ; preds = %cond.end.144
  br label %cond.end.157

cond.end.157:                                     ; preds = %cond.false.156, %cond.true.155
  %cond158 = phi i64 [ %105, %cond.true.155 ], [ 255, %cond.false.156 ]
  store i64 %cond158, i64* %y2, align 8, !tbaa !21
  %106 = load i64, i64* %ci.addr, align 8, !tbaa !21
  %shr159 = lshr i64 %106, 40
  %and160 = and i64 %shr159, 255
  %107 = load i32, i32* %mjm, align 4, !tbaa !22
  %conv161 = zext i32 %107 to i64
  %mul162 = mul i64 %and160, %conv161
  %108 = load i32, i32* %dn, align 4, !tbaa !22
  %conv163 = zext i32 %108 to i64
  %mul164 = mul i64 %mul162, %conv163
  %shr165 = lshr i64 %mul164, 20
  store i64 %shr165, i64* %m2, align 8, !tbaa !21
  %109 = load i64, i64* %m2, align 8, !tbaa !21
  %cmp166 = icmp ult i64 %109, 255
  br i1 %cmp166, label %cond.true.168, label %cond.false.169

cond.true.168:                                    ; preds = %cond.end.157
  %110 = load i64, i64* %m2, align 8, !tbaa !21
  br label %cond.end.170

cond.false.169:                                   ; preds = %cond.end.157
  br label %cond.end.170

cond.end.170:                                     ; preds = %cond.false.169, %cond.true.168
  %cond171 = phi i64 [ %110, %cond.true.168 ], [ 255, %cond.false.169 ]
  store i64 %cond171, i64* %m2, align 8, !tbaa !21
  %111 = load i64, i64* %ci.addr, align 8, !tbaa !21
  %shr172 = lshr i64 %111, 48
  %and173 = and i64 %shr172, 255
  %112 = load i32, i32* %mjc, align 4, !tbaa !22
  %conv174 = zext i32 %112 to i64
  %mul175 = mul i64 %and173, %conv174
  %113 = load i32, i32* %dn, align 4, !tbaa !22
  %conv176 = zext i32 %113 to i64
  %mul177 = mul i64 %mul175, %conv176
  %shr178 = lshr i64 %mul177, 20
  store i64 %shr178, i64* %c2, align 8, !tbaa !21
  %114 = load i64, i64* %c2, align 8, !tbaa !21
  %cmp179 = icmp ult i64 %114, 255
  br i1 %cmp179, label %cond.true.181, label %cond.false.182

cond.true.181:                                    ; preds = %cond.end.170
  %115 = load i64, i64* %c2, align 8, !tbaa !21
  br label %cond.end.183

cond.false.182:                                   ; preds = %cond.end.170
  br label %cond.end.183

cond.end.183:                                     ; preds = %cond.false.182, %cond.true.181
  %cond184 = phi i64 [ %115, %cond.true.181 ], [ 255, %cond.false.182 ]
  store i64 %cond184, i64* %c2, align 8, !tbaa !21
  %116 = load i64, i64* %ci.addr, align 8, !tbaa !21
  %shr185 = lshr i64 %116, 56
  %and186 = and i64 %shr185, 255
  %117 = load i32, i32* %mjb, align 4, !tbaa !22
  %conv187 = zext i32 %117 to i64
  %mul188 = mul i64 %and186, %conv187
  %118 = load i32, i32* %dn, align 4, !tbaa !22
  %conv189 = zext i32 %118 to i64
  %mul190 = mul i64 %mul188, %conv189
  %shr191 = lshr i64 %mul190, 20
  store i64 %shr191, i64* %k2, align 8, !tbaa !21
  %119 = load i64, i64* %k2, align 8, !tbaa !21
  %cmp192 = icmp ult i64 %119, 255
  br i1 %cmp192, label %cond.true.194, label %cond.false.195

cond.true.194:                                    ; preds = %cond.end.183
  %120 = load i64, i64* %k2, align 8, !tbaa !21
  br label %cond.end.196

cond.false.195:                                   ; preds = %cond.end.183
  br label %cond.end.196

cond.end.196:                                     ; preds = %cond.false.195, %cond.true.194
  %cond197 = phi i64 [ %120, %cond.true.194 ], [ 255, %cond.false.195 ]
  store i64 %cond197, i64* %k2, align 8, !tbaa !21
  %121 = load i64, i64* %y, align 8, !tbaa !21
  %122 = load i64, i64* %m, align 8, !tbaa !21
  %shl198 = shl i64 %122, 8
  %add199 = add i64 %121, %shl198
  %123 = load i64, i64* %c, align 8, !tbaa !21
  %shl200 = shl i64 %123, 16
  %add201 = add i64 %add199, %shl200
  %124 = load i64, i64* %k, align 8, !tbaa !21
  %shl202 = shl i64 %124, 24
  %add203 = add i64 %add201, %shl202
  %125 = load i64, i64* %y2, align 8, !tbaa !21
  %shl204 = shl i64 %125, 32
  %add205 = add i64 %add203, %shl204
  %126 = load i64, i64* %m2, align 8, !tbaa !21
  %shl206 = shl i64 %126, 40
  %add207 = add i64 %add205, %shl206
  %127 = load i64, i64* %c2, align 8, !tbaa !21
  %shl208 = shl i64 %127, 48
  %add209 = add i64 %add207, %shl208
  %128 = load i64, i64* %k2, align 8, !tbaa !21
  %shl210 = shl i64 %128, 56
  %add211 = add i64 %add209, %shl210
  store i64 %add211, i64* %co, align 8, !tbaa !21
  %129 = load i64, i64* %co, align 8, !tbaa !21
  store i64 %129, i64* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.epilog:                                        ; preds = %entry
  %130 = load i64, i64* %ci.addr, align 8, !tbaa !21
  store i64 %130, i64* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %cond.end.196, %if.end
  %131 = bitcast i32* %mjb to i8*
  call void @llvm.lifetime.end(i64 4, i8* %131) #2
  %132 = bitcast i32* %mjm to i8*
  call void @llvm.lifetime.end(i64 4, i8* %132) #2
  %133 = bitcast i32* %mjc to i8*
  call void @llvm.lifetime.end(i64 4, i8* %133) #2
  %134 = bitcast i32* %mjy to i8*
  call void @llvm.lifetime.end(i64 4, i8* %134) #2
  %135 = bitcast i32* %dn to i8*
  call void @llvm.lifetime.end(i64 4, i8* %135) #2
  %136 = bitcast i32* %cmask to i8*
  call void @llvm.lifetime.end(i64 4, i8* %136) #2
  %137 = bitcast i64* %k8 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %137) #2
  %138 = bitcast i64* %k7 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %138) #2
  %139 = bitcast i64* %k6 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %139) #2
  %140 = bitcast i64* %k5 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %140) #2
  %141 = bitcast i64* %y2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %141) #2
  %142 = bitcast i64* %m2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %142) #2
  %143 = bitcast i64* %c2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %143) #2
  %144 = bitcast i64* %k4 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %144) #2
  %145 = bitcast i64* %k3 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %145) #2
  %146 = bitcast i64* %k2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %146) #2
  %147 = bitcast i64* %co to i8*
  call void @llvm.lifetime.end(i64 8, i8* %147) #2
  %148 = bitcast i64* %k to i8*
  call void @llvm.lifetime.end(i64 8, i8* %148) #2
  %149 = bitcast i64* %y to i8*
  call void @llvm.lifetime.end(i64 8, i8* %149) #2
  %150 = bitcast i64* %m to i8*
  call void @llvm.lifetime.end(i64 8, i8* %150) #2
  %151 = bitcast i64* %c to i8*
  call void @llvm.lifetime.end(i64 8, i8* %151) #2
  %152 = load i64, i64* %retval
  ret i64 %152
}

; Function Attrs: nounwind uwtable
define internal void @expand_line(i64* %line, i32 %linesize, i32 %bpp, i32 %ebpp) #1 {
entry:
  %line.addr = alloca i64*, align 8
  %linesize.addr = alloca i32, align 4
  %bpp.addr = alloca i32, align 4
  %ebpp.addr = alloca i32, align 4
  %endline = alloca i32, align 4
  %start = alloca i8*, align 8
  %in = alloca i8*, align 8
  %out = alloca i8*, align 8
  %b0 = alloca i8, align 1
  %b1 = alloca i8, align 1
  %c = alloca i8, align 1
  %m = alloca i8, align 1
  %y = alloca i8, align 1
  %k = alloca i8, align 1
  store i64* %line, i64** %line.addr, align 8, !tbaa !1
  store i32 %linesize, i32* %linesize.addr, align 4, !tbaa !22
  store i32 %bpp, i32* %bpp.addr, align 4, !tbaa !22
  store i32 %ebpp, i32* %ebpp.addr, align 4, !tbaa !22
  %0 = bitcast i32* %endline to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load i32, i32* %linesize.addr, align 4, !tbaa !22
  store i32 %1, i32* %endline, align 4, !tbaa !22
  %2 = bitcast i8** %start to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #2
  %3 = load i64*, i64** %line.addr, align 8, !tbaa !1
  %4 = bitcast i64* %3 to i8*
  store i8* %4, i8** %start, align 8, !tbaa !1
  %5 = bitcast i8** %in to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #2
  %6 = bitcast i8** %out to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #2
  %7 = load i32, i32* %bpp.addr, align 4, !tbaa !22
  %cmp = icmp eq i32 %7, 16
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start(i64 1, i8* %b0) #2
  call void @llvm.lifetime.start(i64 1, i8* %b1) #2
  %8 = load i32, i32* %endline, align 4, !tbaa !22
  %add = add nsw i32 %8, 1
  %div = sdiv i32 %add, 2
  store i32 %div, i32* %endline, align 4, !tbaa !22
  %9 = load i8*, i8** %start, align 8, !tbaa !1
  %10 = load i32, i32* %endline, align 4, !tbaa !22
  %mul = mul nsw i32 %10, 2
  %idx.ext = sext i32 %mul to i64
  %add.ptr = getelementptr inbounds i8, i8* %9, i64 %idx.ext
  store i8* %add.ptr, i8** %in, align 8, !tbaa !1
  %11 = load i8*, i8** %start, align 8, !tbaa !1
  %12 = load i32, i32* %endline, align 4, !tbaa !22
  %mul1 = mul nsw i32 %12, 3
  store i32 %mul1, i32* %endline, align 4, !tbaa !22
  %idx.ext2 = sext i32 %mul1 to i64
  %add.ptr3 = getelementptr inbounds i8, i8* %11, i64 %idx.ext2
  store i8* %add.ptr3, i8** %out, align 8, !tbaa !1
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then
  %13 = load i8*, i8** %in, align 8, !tbaa !1
  %14 = load i8*, i8** %start, align 8, !tbaa !1
  %cmp4 = icmp ugt i8* %13, %14
  br i1 %cmp4, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %15 = load i8*, i8** %in, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %15, i32 -1
  store i8* %incdec.ptr, i8** %in, align 8, !tbaa !1
  %16 = load i8, i8* %incdec.ptr, align 1, !tbaa !60
  store i8 %16, i8* %b0, align 1, !tbaa !60
  %17 = load i8*, i8** %in, align 8, !tbaa !1
  %incdec.ptr5 = getelementptr inbounds i8, i8* %17, i32 -1
  store i8* %incdec.ptr5, i8** %in, align 8, !tbaa !1
  %18 = load i8, i8* %incdec.ptr5, align 1, !tbaa !60
  store i8 %18, i8* %b1, align 1, !tbaa !60
  %19 = load i8, i8* %b0, align 1, !tbaa !60
  %conv = zext i8 %19 to i32
  %shl = shl i32 %conv, 3
  %20 = load i8, i8* %b0, align 1, !tbaa !60
  %conv6 = zext i8 %20 to i32
  %shr = ashr i32 %conv6, 2
  %and = and i32 %shr, 7
  %add7 = add nsw i32 %shl, %and
  %conv8 = trunc i32 %add7 to i8
  %21 = load i8*, i8** %out, align 8, !tbaa !1
  %incdec.ptr9 = getelementptr inbounds i8, i8* %21, i32 -1
  store i8* %incdec.ptr9, i8** %out, align 8, !tbaa !1
  store i8 %conv8, i8* %incdec.ptr9, align 1, !tbaa !60
  %22 = load i8, i8* %b1, align 1, !tbaa !60
  %conv10 = zext i8 %22 to i32
  %shl11 = shl i32 %conv10, 5
  %23 = load i8, i8* %b0, align 1, !tbaa !60
  %conv12 = zext i8 %23 to i32
  %shr13 = ashr i32 %conv12, 3
  %and14 = and i32 %shr13, 28
  %add15 = add nsw i32 %shl11, %and14
  %24 = load i8, i8* %b1, align 1, !tbaa !60
  %conv16 = zext i8 %24 to i32
  %shr17 = ashr i32 %conv16, 1
  %and18 = and i32 %shr17, 3
  %add19 = add nsw i32 %add15, %and18
  %conv20 = trunc i32 %add19 to i8
  %25 = load i8*, i8** %out, align 8, !tbaa !1
  %incdec.ptr21 = getelementptr inbounds i8, i8* %25, i32 -1
  store i8* %incdec.ptr21, i8** %out, align 8, !tbaa !1
  store i8 %conv20, i8* %incdec.ptr21, align 1, !tbaa !60
  %26 = load i8, i8* %b1, align 1, !tbaa !60
  %conv22 = zext i8 %26 to i32
  %and23 = and i32 %conv22, 248
  %27 = load i8, i8* %b1, align 1, !tbaa !60
  %conv24 = zext i8 %27 to i32
  %shr25 = ashr i32 %conv24, 5
  %add26 = add nsw i32 %and23, %shr25
  %conv27 = trunc i32 %add26 to i8
  %28 = load i8*, i8** %out, align 8, !tbaa !1
  %incdec.ptr28 = getelementptr inbounds i8, i8* %28, i32 -1
  store i8* %incdec.ptr28, i8** %out, align 8, !tbaa !1
  store i8 %conv27, i8* %incdec.ptr28, align 1, !tbaa !60
  br label %while.cond

while.end:                                        ; preds = %while.cond
  call void @llvm.lifetime.end(i64 1, i8* %b1) #2
  call void @llvm.lifetime.end(i64 1, i8* %b0) #2
  br label %if.end

if.end:                                           ; preds = %while.end, %entry
  %29 = load i32, i32* %ebpp.addr, align 4, !tbaa !22
  %cmp29 = icmp eq i32 %29, 32
  br i1 %cmp29, label %if.then.31, label %if.end.88

if.then.31:                                       ; preds = %if.end
  call void @llvm.lifetime.start(i64 1, i8* %c) #2
  call void @llvm.lifetime.start(i64 1, i8* %m) #2
  call void @llvm.lifetime.start(i64 1, i8* %y) #2
  call void @llvm.lifetime.start(i64 1, i8* %k) #2
  %30 = load i32, i32* %endline, align 4, !tbaa !22
  %add32 = add nsw i32 %30, 2
  %div33 = sdiv i32 %add32, 3
  store i32 %div33, i32* %endline, align 4, !tbaa !22
  %31 = load i8*, i8** %start, align 8, !tbaa !1
  %32 = load i32, i32* %endline, align 4, !tbaa !22
  %mul34 = mul nsw i32 %32, 3
  %idx.ext35 = sext i32 %mul34 to i64
  %add.ptr36 = getelementptr inbounds i8, i8* %31, i64 %idx.ext35
  store i8* %add.ptr36, i8** %in, align 8, !tbaa !1
  %33 = load i8*, i8** %start, align 8, !tbaa !1
  %34 = load i32, i32* %endline, align 4, !tbaa !22
  %mul37 = mul nsw i32 %34, 4
  %idx.ext38 = sext i32 %mul37 to i64
  %add.ptr39 = getelementptr inbounds i8, i8* %33, i64 %idx.ext38
  store i8* %add.ptr39, i8** %out, align 8, !tbaa !1
  br label %while.cond.40

while.cond.40:                                    ; preds = %cond.end.69, %if.then.31
  %35 = load i8*, i8** %in, align 8, !tbaa !1
  %36 = load i8*, i8** %start, align 8, !tbaa !1
  %cmp41 = icmp ugt i8* %35, %36
  br i1 %cmp41, label %while.body.43, label %while.end.87

while.body.43:                                    ; preds = %while.cond.40
  %37 = load i8*, i8** %in, align 8, !tbaa !1
  %incdec.ptr44 = getelementptr inbounds i8, i8* %37, i32 -1
  store i8* %incdec.ptr44, i8** %in, align 8, !tbaa !1
  %38 = load i8, i8* %incdec.ptr44, align 1, !tbaa !60
  store i8 %38, i8* %y, align 1, !tbaa !60
  %39 = load i8*, i8** %in, align 8, !tbaa !1
  %incdec.ptr45 = getelementptr inbounds i8, i8* %39, i32 -1
  store i8* %incdec.ptr45, i8** %in, align 8, !tbaa !1
  %40 = load i8, i8* %incdec.ptr45, align 1, !tbaa !60
  store i8 %40, i8* %m, align 1, !tbaa !60
  %41 = load i8*, i8** %in, align 8, !tbaa !1
  %incdec.ptr46 = getelementptr inbounds i8, i8* %41, i32 -1
  store i8* %incdec.ptr46, i8** %in, align 8, !tbaa !1
  %42 = load i8, i8* %incdec.ptr46, align 1, !tbaa !60
  store i8 %42, i8* %c, align 1, !tbaa !60
  %43 = load i8, i8* %c, align 1, !tbaa !60
  %conv47 = zext i8 %43 to i32
  %44 = load i8, i8* %m, align 1, !tbaa !60
  %conv48 = zext i8 %44 to i32
  %cmp49 = icmp slt i32 %conv47, %conv48
  br i1 %cmp49, label %cond.true, label %cond.false.58

cond.true:                                        ; preds = %while.body.43
  %45 = load i8, i8* %c, align 1, !tbaa !60
  %conv51 = zext i8 %45 to i32
  %46 = load i8, i8* %y, align 1, !tbaa !60
  %conv52 = zext i8 %46 to i32
  %cmp53 = icmp slt i32 %conv51, %conv52
  br i1 %cmp53, label %cond.true.55, label %cond.false

cond.true.55:                                     ; preds = %cond.true
  %47 = load i8, i8* %c, align 1, !tbaa !60
  %conv56 = zext i8 %47 to i32
  br label %cond.end

cond.false:                                       ; preds = %cond.true
  %48 = load i8, i8* %y, align 1, !tbaa !60
  %conv57 = zext i8 %48 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true.55
  %cond = phi i32 [ %conv56, %cond.true.55 ], [ %conv57, %cond.false ]
  br label %cond.end.69

cond.false.58:                                    ; preds = %while.body.43
  %49 = load i8, i8* %m, align 1, !tbaa !60
  %conv59 = zext i8 %49 to i32
  %50 = load i8, i8* %y, align 1, !tbaa !60
  %conv60 = zext i8 %50 to i32
  %cmp61 = icmp slt i32 %conv59, %conv60
  br i1 %cmp61, label %cond.true.63, label %cond.false.65

cond.true.63:                                     ; preds = %cond.false.58
  %51 = load i8, i8* %m, align 1, !tbaa !60
  %conv64 = zext i8 %51 to i32
  br label %cond.end.67

cond.false.65:                                    ; preds = %cond.false.58
  %52 = load i8, i8* %y, align 1, !tbaa !60
  %conv66 = zext i8 %52 to i32
  br label %cond.end.67

cond.end.67:                                      ; preds = %cond.false.65, %cond.true.63
  %cond68 = phi i32 [ %conv64, %cond.true.63 ], [ %conv66, %cond.false.65 ]
  br label %cond.end.69

cond.end.69:                                      ; preds = %cond.end.67, %cond.end
  %cond70 = phi i32 [ %cond, %cond.end ], [ %cond68, %cond.end.67 ]
  %conv71 = trunc i32 %cond70 to i8
  store i8 %conv71, i8* %k, align 1, !tbaa !60
  %53 = load i8, i8* %y, align 1, !tbaa !60
  %conv72 = zext i8 %53 to i32
  %54 = load i8, i8* %k, align 1, !tbaa !60
  %conv73 = zext i8 %54 to i32
  %sub = sub nsw i32 %conv72, %conv73
  %conv74 = trunc i32 %sub to i8
  %55 = load i8*, i8** %out, align 8, !tbaa !1
  %incdec.ptr75 = getelementptr inbounds i8, i8* %55, i32 -1
  store i8* %incdec.ptr75, i8** %out, align 8, !tbaa !1
  store i8 %conv74, i8* %incdec.ptr75, align 1, !tbaa !60
  %56 = load i8, i8* %m, align 1, !tbaa !60
  %conv76 = zext i8 %56 to i32
  %57 = load i8, i8* %k, align 1, !tbaa !60
  %conv77 = zext i8 %57 to i32
  %sub78 = sub nsw i32 %conv76, %conv77
  %conv79 = trunc i32 %sub78 to i8
  %58 = load i8*, i8** %out, align 8, !tbaa !1
  %incdec.ptr80 = getelementptr inbounds i8, i8* %58, i32 -1
  store i8* %incdec.ptr80, i8** %out, align 8, !tbaa !1
  store i8 %conv79, i8* %incdec.ptr80, align 1, !tbaa !60
  %59 = load i8, i8* %c, align 1, !tbaa !60
  %conv81 = zext i8 %59 to i32
  %60 = load i8, i8* %k, align 1, !tbaa !60
  %conv82 = zext i8 %60 to i32
  %sub83 = sub nsw i32 %conv81, %conv82
  %conv84 = trunc i32 %sub83 to i8
  %61 = load i8*, i8** %out, align 8, !tbaa !1
  %incdec.ptr85 = getelementptr inbounds i8, i8* %61, i32 -1
  store i8* %incdec.ptr85, i8** %out, align 8, !tbaa !1
  store i8 %conv84, i8* %incdec.ptr85, align 1, !tbaa !60
  %62 = load i8, i8* %k, align 1, !tbaa !60
  %63 = load i8*, i8** %out, align 8, !tbaa !1
  %incdec.ptr86 = getelementptr inbounds i8, i8* %63, i32 -1
  store i8* %incdec.ptr86, i8** %out, align 8, !tbaa !1
  store i8 %62, i8* %incdec.ptr86, align 1, !tbaa !60
  br label %while.cond.40

while.end.87:                                     ; preds = %while.cond.40
  call void @llvm.lifetime.end(i64 1, i8* %k) #2
  call void @llvm.lifetime.end(i64 1, i8* %y) #2
  call void @llvm.lifetime.end(i64 1, i8* %m) #2
  call void @llvm.lifetime.end(i64 1, i8* %c) #2
  br label %if.end.88

if.end.88:                                        ; preds = %while.end.87, %if.end
  %64 = bitcast i8** %out to i8*
  call void @llvm.lifetime.end(i64 8, i8* %64) #2
  %65 = bitcast i8** %in to i8*
  call void @llvm.lifetime.end(i64 8, i8* %65) #2
  %66 = bitcast i8** %start to i8*
  call void @llvm.lifetime.end(i64 8, i8* %66) #2
  %67 = bitcast i32* %endline to i8*
  call void @llvm.lifetime.end(i64 4, i8* %67) #2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @xtal_plane(i8* %dp, i16** %buf, i8* %oP, i16** %bar, i32 %plane_size, i32 %xtalbuff_size) #1 {
entry:
  %dp.addr = alloca i8*, align 8
  %buf.addr = alloca i16**, align 8
  %oP.addr = alloca i8*, align 8
  %bar.addr = alloca i16**, align 8
  %plane_size.addr = alloca i32, align 4
  %xtalbuff_size.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %x = alloca i32, align 4
  %bitmask = alloca i8, align 1
  %out = alloca i8, align 1
  %p = alloca i16*, align 8
  %b1 = alloca i16*, align 8
  %b2 = alloca i16*, align 8
  store i8* %dp, i8** %dp.addr, align 8, !tbaa !1
  store i16** %buf, i16*** %buf.addr, align 8, !tbaa !1
  store i8* %oP, i8** %oP.addr, align 8, !tbaa !1
  store i16** %bar, i16*** %bar.addr, align 8, !tbaa !1
  store i32 %plane_size, i32* %plane_size.addr, align 4, !tbaa !22
  store i32 %xtalbuff_size, i32* %xtalbuff_size.addr, align 4, !tbaa !22
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = bitcast i32* %x to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  store i32 0, i32* %x, align 4, !tbaa !22
  call void @llvm.lifetime.start(i64 1, i8* %bitmask) #2
  call void @llvm.lifetime.start(i64 1, i8* %out) #2
  %3 = bitcast i16** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = bitcast i16** %b1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #2
  %5 = bitcast i16** %b2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #2
  %6 = load i16**, i16*** %buf.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16*, i16** %6, i64 0
  %7 = load i16*, i16** %arrayidx, align 8, !tbaa !1
  store i16* %7, i16** %b1, align 8, !tbaa !1
  %8 = load i16**, i16*** %buf.addr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds i16*, i16** %8, i64 1
  %9 = load i16*, i16** %arrayidx1, align 8, !tbaa !1
  store i16* %9, i16** %b2, align 8, !tbaa !1
  store i32 0, i32* %i, align 4, !tbaa !22
  br label %for.cond

for.cond:                                         ; preds = %for.inc.15, %entry
  %10 = load i32, i32* %i, align 4, !tbaa !22
  %11 = load i32, i32* %plane_size.addr, align 4, !tbaa !22
  %cmp = icmp slt i32 %10, %11
  br i1 %cmp, label %for.body, label %for.end.17

for.body:                                         ; preds = %for.cond
  store i8 -128, i8* %bitmask, align 1, !tbaa !60
  store i8 0, i8* %out, align 1, !tbaa !60
  store i32 0, i32* %j, align 4, !tbaa !22
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc, %for.body
  %12 = load i32, i32* %j, align 4, !tbaa !22
  %cmp3 = icmp slt i32 %12, 8
  br i1 %cmp3, label %for.body.4, label %for.end

for.body.4:                                       ; preds = %for.cond.2
  %13 = load i8, i8* %bitmask, align 1, !tbaa !60
  %14 = load i8*, i8** %dp.addr, align 8, !tbaa !1
  %15 = load i8, i8* %14, align 1, !tbaa !60
  %conv = zext i8 %15 to i16
  %conv5 = sext i16 %conv to i32
  %shl = shl i32 %conv5, 6
  %conv6 = trunc i32 %shl to i16
  %16 = load i32, i32* %x, align 4, !tbaa !22
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %x, align 4, !tbaa !22
  %17 = load i16**, i16*** %bar.addr, align 8, !tbaa !1
  %18 = load i16*, i16** %b1, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i16, i16* %18, i32 1
  store i16* %incdec.ptr, i16** %b1, align 8, !tbaa !1
  %19 = load i16*, i16** %b2, align 8, !tbaa !1
  %incdec.ptr7 = getelementptr inbounds i16, i16* %19, i32 1
  store i16* %incdec.ptr7, i16** %b2, align 8, !tbaa !1
  %call = call zeroext i8 @Xtal(i8 zeroext %13, i16 signext %conv6, i32 %16, i16** %17, i16* %18, i16* %19) #4
  %conv8 = zext i8 %call to i32
  %20 = load i8, i8* %out, align 1, !tbaa !60
  %conv9 = zext i8 %20 to i32
  %or = or i32 %conv9, %conv8
  %conv10 = trunc i32 %or to i8
  store i8 %conv10, i8* %out, align 1, !tbaa !60
  %21 = load i8*, i8** %dp.addr, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %21, i64 4
  store i8* %add.ptr, i8** %dp.addr, align 8, !tbaa !1
  %22 = load i8, i8* %bitmask, align 1, !tbaa !60
  %conv11 = zext i8 %22 to i32
  %shr = ashr i32 %conv11, 1
  %conv12 = trunc i32 %shr to i8
  store i8 %conv12, i8* %bitmask, align 1, !tbaa !60
  br label %for.inc

for.inc:                                          ; preds = %for.body.4
  %23 = load i32, i32* %j, align 4, !tbaa !22
  %inc13 = add nsw i32 %23, 1
  store i32 %inc13, i32* %j, align 4, !tbaa !22
  br label %for.cond.2

for.end:                                          ; preds = %for.cond.2
  %24 = load i8, i8* %out, align 1, !tbaa !60
  %25 = load i8*, i8** %oP.addr, align 8, !tbaa !1
  %incdec.ptr14 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %incdec.ptr14, i8** %oP.addr, align 8, !tbaa !1
  store i8 %24, i8* %25, align 1, !tbaa !60
  br label %for.inc.15

for.inc.15:                                       ; preds = %for.end
  %26 = load i32, i32* %i, align 4, !tbaa !22
  %inc16 = add nsw i32 %26, 1
  store i32 %inc16, i32* %i, align 4, !tbaa !22
  br label %for.cond

for.end.17:                                       ; preds = %for.cond
  %27 = load i16**, i16*** %buf.addr, align 8, !tbaa !1
  %arrayidx18 = getelementptr inbounds i16*, i16** %27, i64 0
  %28 = load i16*, i16** %arrayidx18, align 8, !tbaa !1
  store i16* %28, i16** %p, align 8, !tbaa !1
  %29 = load i16**, i16*** %buf.addr, align 8, !tbaa !1
  %arrayidx19 = getelementptr inbounds i16*, i16** %29, i64 1
  %30 = load i16*, i16** %arrayidx19, align 8, !tbaa !1
  %31 = load i16**, i16*** %buf.addr, align 8, !tbaa !1
  %arrayidx20 = getelementptr inbounds i16*, i16** %31, i64 0
  store i16* %30, i16** %arrayidx20, align 8, !tbaa !1
  %32 = load i16*, i16** %p, align 8, !tbaa !1
  %33 = load i16**, i16*** %buf.addr, align 8, !tbaa !1
  %arrayidx21 = getelementptr inbounds i16*, i16** %33, i64 1
  store i16* %32, i16** %arrayidx21, align 8, !tbaa !1
  %34 = load i16**, i16*** %bar.addr, align 8, !tbaa !1
  %arrayidx22 = getelementptr inbounds i16*, i16** %34, i64 0
  %35 = load i16*, i16** %arrayidx22, align 8, !tbaa !1
  store i16* %35, i16** %p, align 8, !tbaa !1
  store i32 0, i32* %i, align 4, !tbaa !22
  br label %for.cond.23

for.cond.23:                                      ; preds = %for.inc.28, %for.end.17
  %36 = load i32, i32* %i, align 4, !tbaa !22
  %37 = load i32, i32* %plane_size.addr, align 4, !tbaa !22
  %mul = mul nsw i32 %37, 8
  %cmp24 = icmp slt i32 %36, %mul
  br i1 %cmp24, label %for.body.26, label %for.end.30

for.body.26:                                      ; preds = %for.cond.23
  %38 = load i16*, i16** %p, align 8, !tbaa !1
  %incdec.ptr27 = getelementptr inbounds i16, i16* %38, i32 1
  store i16* %incdec.ptr27, i16** %p, align 8, !tbaa !1
  store i16 0, i16* %38, align 2, !tbaa !5
  br label %for.inc.28

for.inc.28:                                       ; preds = %for.body.26
  %39 = load i32, i32* %i, align 4, !tbaa !22
  %inc29 = add nsw i32 %39, 1
  store i32 %inc29, i32* %i, align 4, !tbaa !22
  br label %for.cond.23

for.end.30:                                       ; preds = %for.cond.23
  %40 = load i16**, i16*** %bar.addr, align 8, !tbaa !1
  %arrayidx31 = getelementptr inbounds i16*, i16** %40, i64 0
  %41 = load i16*, i16** %arrayidx31, align 8, !tbaa !1
  store i16* %41, i16** %p, align 8, !tbaa !1
  store i32 0, i32* %i, align 4, !tbaa !22
  br label %for.cond.32

for.cond.32:                                      ; preds = %for.inc.39, %for.end.30
  %42 = load i32, i32* %i, align 4, !tbaa !22
  %cmp33 = icmp sle i32 %42, 14
  br i1 %cmp33, label %for.body.35, label %for.end.41

for.body.35:                                      ; preds = %for.cond.32
  %43 = load i32, i32* %i, align 4, !tbaa !22
  %add = add nsw i32 %43, 1
  %idxprom = sext i32 %add to i64
  %44 = load i16**, i16*** %bar.addr, align 8, !tbaa !1
  %arrayidx36 = getelementptr inbounds i16*, i16** %44, i64 %idxprom
  %45 = load i16*, i16** %arrayidx36, align 8, !tbaa !1
  %46 = load i32, i32* %i, align 4, !tbaa !22
  %idxprom37 = sext i32 %46 to i64
  %47 = load i16**, i16*** %bar.addr, align 8, !tbaa !1
  %arrayidx38 = getelementptr inbounds i16*, i16** %47, i64 %idxprom37
  store i16* %45, i16** %arrayidx38, align 8, !tbaa !1
  br label %for.inc.39

for.inc.39:                                       ; preds = %for.body.35
  %48 = load i32, i32* %i, align 4, !tbaa !22
  %inc40 = add nsw i32 %48, 1
  store i32 %inc40, i32* %i, align 4, !tbaa !22
  br label %for.cond.32

for.end.41:                                       ; preds = %for.cond.32
  %49 = load i16*, i16** %p, align 8, !tbaa !1
  %50 = load i16**, i16*** %bar.addr, align 8, !tbaa !1
  %arrayidx42 = getelementptr inbounds i16*, i16** %50, i64 15
  store i16* %49, i16** %arrayidx42, align 8, !tbaa !1
  %51 = bitcast i16** %b2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %51) #2
  %52 = bitcast i16** %b1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %52) #2
  %53 = bitcast i16** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %53) #2
  call void @llvm.lifetime.end(i64 1, i8* %out) #2
  call void @llvm.lifetime.end(i64 1, i8* %bitmask) #2
  %54 = bitcast i32* %x to i8*
  call void @llvm.lifetime.end(i64 4, i8* %54) #2
  %55 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %55) #2
  %56 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %56) #2
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @mj_raster_cmd(i32 %c_id, i32 %in_size, i8* %in, i8* %buf2, %struct.gx_device_printer_s* %pdev, %struct._IO_FILE* %prn_stream) #1 {
entry:
  %c_id.addr = alloca i32, align 4
  %in_size.addr = alloca i32, align 4
  %in.addr = alloca i8*, align 8
  %buf2.addr = alloca i8*, align 8
  %pdev.addr = alloca %struct.gx_device_printer_s*, align 8
  %prn_stream.addr = alloca %struct._IO_FILE*, align 8
  %band_size = alloca i32, align 4
  %out = alloca i8*, align 8
  %width = alloca i32, align 4
  %count = alloca i32, align 4
  %in_end = alloca i8*, align 8
  %inp = alloca i8*, align 8
  %outp = alloca i8*, align 8
  %p = alloca i8*, align 8
  %q = alloca i8*, align 8
  store i32 %c_id, i32* %c_id.addr, align 4, !tbaa !22
  store i32 %in_size, i32* %in_size.addr, align 4, !tbaa !22
  store i8* %in, i8** %in.addr, align 8, !tbaa !1
  store i8* %buf2, i8** %buf2.addr, align 8, !tbaa !1
  store %struct.gx_device_printer_s* %pdev, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  store %struct._IO_FILE* %prn_stream, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %0 = bitcast i32* %band_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  store i32 1, i32* %band_size, align 4, !tbaa !22
  %1 = bitcast i8** %out to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #2
  %2 = load i8*, i8** %buf2.addr, align 8, !tbaa !1
  store i8* %2, i8** %out, align 8, !tbaa !1
  %3 = bitcast i32* %width to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = load i32, i32* %in_size.addr, align 4, !tbaa !22
  store i32 %4, i32* %width, align 4, !tbaa !22
  %5 = bitcast i32* %count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  %6 = bitcast i8** %in_end to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #2
  %7 = load i8*, i8** %in.addr, align 8, !tbaa !1
  %8 = load i32, i32* %in_size.addr, align 4, !tbaa !22
  %idx.ext = sext i32 %8 to i64
  %add.ptr = getelementptr inbounds i8, i8* %7, i64 %idx.ext
  store i8* %add.ptr, i8** %in_end, align 8, !tbaa !1
  %9 = bitcast i8** %inp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #2
  %10 = load i8*, i8** %in.addr, align 8, !tbaa !1
  store i8* %10, i8** %inp, align 8, !tbaa !1
  %11 = bitcast i8** %outp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #2
  %12 = load i8*, i8** %out, align 8, !tbaa !1
  store i8* %12, i8** %outp, align 8, !tbaa !1
  %13 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #2
  %14 = bitcast i8** %q to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #2
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.35, i32 0, i32 0), %struct._IO_FILE* %15) #4
  %16 = load i32, i32* %c_id.addr, align 4, !tbaa !22
  %idxprom = sext i32 %16 to i64
  %arrayidx = getelementptr inbounds [5 x i8], [5 x i8]* @mj_raster_cmd.colour_number, i32 0, i64 %idxprom
  %17 = load i8, i8* %arrayidx, align 1, !tbaa !60
  %conv = sext i8 %17 to i32
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call1 = call i32 @fputc(i32 %conv, %struct._IO_FILE* %18) #4
  %19 = load i8*, i8** %inp, align 8, !tbaa !1
  store i8* %19, i8** %p, align 8, !tbaa !1
  %20 = load i8*, i8** %inp, align 8, !tbaa !1
  %add.ptr2 = getelementptr inbounds i8, i8* %20, i64 1
  store i8* %add.ptr2, i8** %q, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %if.end.104, %entry
  %21 = load i8*, i8** %q, align 8, !tbaa !1
  %22 = load i8*, i8** %in_end, align 8, !tbaa !1
  %cmp = icmp ult i8* %21, %22
  br i1 %cmp, label %for.body, label %for.end.105

for.body:                                         ; preds = %for.cond
  %23 = load i8*, i8** %p, align 8, !tbaa !1
  %24 = load i8, i8* %23, align 1, !tbaa !60
  %conv4 = zext i8 %24 to i32
  %25 = load i8*, i8** %q, align 8, !tbaa !1
  %26 = load i8, i8* %25, align 1, !tbaa !60
  %conv5 = zext i8 %26 to i32
  %cmp6 = icmp ne i32 %conv4, %conv5
  br i1 %cmp6, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %27 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr8 = getelementptr inbounds i8, i8* %27, i64 2
  store i8* %add.ptr8, i8** %p, align 8, !tbaa !1
  %28 = load i8*, i8** %q, align 8, !tbaa !1
  %add.ptr9 = getelementptr inbounds i8, i8* %28, i64 2
  store i8* %add.ptr9, i8** %q, align 8, !tbaa !1
  br label %if.end.104

if.else:                                          ; preds = %for.body
  %29 = load i8*, i8** %p, align 8, !tbaa !1
  %30 = load i8*, i8** %inp, align 8, !tbaa !1
  %cmp10 = icmp ugt i8* %29, %30
  br i1 %cmp10, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.else
  %31 = load i8*, i8** %p, align 8, !tbaa !1
  %32 = load i8, i8* %31, align 1, !tbaa !60
  %conv12 = zext i8 %32 to i32
  %33 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr13 = getelementptr inbounds i8, i8* %33, i64 -1
  %34 = load i8, i8* %add.ptr13, align 1, !tbaa !60
  %conv14 = zext i8 %34 to i32
  %cmp15 = icmp eq i32 %conv12, %conv14
  br i1 %cmp15, label %if.then.17, label %if.end

if.then.17:                                       ; preds = %land.lhs.true
  %35 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %35, i32 -1
  store i8* %incdec.ptr, i8** %p, align 8, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.then.17, %land.lhs.true, %if.else
  %36 = load i8*, i8** %q, align 8, !tbaa !1
  %incdec.ptr18 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %incdec.ptr18, i8** %q, align 8, !tbaa !1
  br label %for.cond.19

for.cond.19:                                      ; preds = %for.inc, %if.end
  %37 = load i8*, i8** %q, align 8, !tbaa !1
  %38 = load i8, i8* %37, align 1, !tbaa !60
  %conv20 = zext i8 %38 to i32
  %39 = load i8*, i8** %p, align 8, !tbaa !1
  %40 = load i8, i8* %39, align 1, !tbaa !60
  %conv21 = zext i8 %40 to i32
  %cmp22 = icmp eq i32 %conv20, %conv21
  br i1 %cmp22, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond.19
  %41 = load i8*, i8** %q, align 8, !tbaa !1
  %42 = load i8*, i8** %in_end, align 8, !tbaa !1
  %cmp24 = icmp ult i8* %41, %42
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond.19
  %43 = phi i1 [ false, %for.cond.19 ], [ %cmp24, %land.rhs ]
  br i1 %43, label %for.body.26, label %for.end

for.body.26:                                      ; preds = %land.end
  %44 = load i8*, i8** %q, align 8, !tbaa !1
  %45 = load i8*, i8** %p, align 8, !tbaa !1
  %sub.ptr.lhs.cast = ptrtoint i8* %44 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %45 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp27 = icmp sge i64 %sub.ptr.sub, 128
  br i1 %cmp27, label %if.then.29, label %if.end.54

if.then.29:                                       ; preds = %for.body.26
  %46 = load i8*, i8** %p, align 8, !tbaa !1
  %47 = load i8*, i8** %inp, align 8, !tbaa !1
  %cmp30 = icmp ugt i8* %46, %47
  br i1 %cmp30, label %if.then.32, label %if.end.50

if.then.32:                                       ; preds = %if.then.29
  %48 = load i8*, i8** %p, align 8, !tbaa !1
  %49 = load i8*, i8** %inp, align 8, !tbaa !1
  %sub.ptr.lhs.cast33 = ptrtoint i8* %48 to i64
  %sub.ptr.rhs.cast34 = ptrtoint i8* %49 to i64
  %sub.ptr.sub35 = sub i64 %sub.ptr.lhs.cast33, %sub.ptr.rhs.cast34
  %conv36 = trunc i64 %sub.ptr.sub35 to i32
  store i32 %conv36, i32* %count, align 4, !tbaa !22
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.32
  %50 = load i32, i32* %count, align 4, !tbaa !22
  %cmp37 = icmp sgt i32 %50, 128
  br i1 %cmp37, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %51 = load i8*, i8** %outp, align 8, !tbaa !1
  %incdec.ptr39 = getelementptr inbounds i8, i8* %51, i32 1
  store i8* %incdec.ptr39, i8** %outp, align 8, !tbaa !1
  store i8 127, i8* %51, align 1, !tbaa !60
  %52 = load i8*, i8** %outp, align 8, !tbaa !1
  %53 = load i8*, i8** %inp, align 8, !tbaa !1
  %call40 = call i8* @memcpy(i8* %52, i8* %53, i64 128) #5
  %54 = load i8*, i8** %inp, align 8, !tbaa !1
  %add.ptr41 = getelementptr inbounds i8, i8* %54, i64 128
  store i8* %add.ptr41, i8** %inp, align 8, !tbaa !1
  %55 = load i8*, i8** %outp, align 8, !tbaa !1
  %add.ptr42 = getelementptr inbounds i8, i8* %55, i64 128
  store i8* %add.ptr42, i8** %outp, align 8, !tbaa !1
  %56 = load i32, i32* %count, align 4, !tbaa !22
  %sub = sub nsw i32 %56, 128
  store i32 %sub, i32* %count, align 4, !tbaa !22
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %57 = load i32, i32* %count, align 4, !tbaa !22
  %sub43 = sub nsw i32 %57, 1
  %conv44 = trunc i32 %sub43 to i8
  %58 = load i8*, i8** %outp, align 8, !tbaa !1
  %incdec.ptr45 = getelementptr inbounds i8, i8* %58, i32 1
  store i8* %incdec.ptr45, i8** %outp, align 8, !tbaa !1
  store i8 %conv44, i8* %58, align 1, !tbaa !60
  %59 = load i8*, i8** %outp, align 8, !tbaa !1
  %60 = load i8*, i8** %inp, align 8, !tbaa !1
  %61 = load i32, i32* %count, align 4, !tbaa !22
  %conv46 = sext i32 %61 to i64
  %call47 = call i8* @memcpy(i8* %59, i8* %60, i64 %conv46) #5
  %62 = load i32, i32* %count, align 4, !tbaa !22
  %63 = load i8*, i8** %outp, align 8, !tbaa !1
  %idx.ext48 = sext i32 %62 to i64
  %add.ptr49 = getelementptr inbounds i8, i8* %63, i64 %idx.ext48
  store i8* %add.ptr49, i8** %outp, align 8, !tbaa !1
  br label %if.end.50

if.end.50:                                        ; preds = %while.end, %if.then.29
  %64 = load i8*, i8** %outp, align 8, !tbaa !1
  %incdec.ptr51 = getelementptr inbounds i8, i8* %64, i32 1
  store i8* %incdec.ptr51, i8** %outp, align 8, !tbaa !1
  store i8 -127, i8* %64, align 1, !tbaa !60
  %65 = load i8*, i8** %p, align 8, !tbaa !1
  %66 = load i8, i8* %65, align 1, !tbaa !60
  %67 = load i8*, i8** %outp, align 8, !tbaa !1
  %incdec.ptr52 = getelementptr inbounds i8, i8* %67, i32 1
  store i8* %incdec.ptr52, i8** %outp, align 8, !tbaa !1
  store i8 %66, i8* %67, align 1, !tbaa !60
  %68 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr53 = getelementptr inbounds i8, i8* %68, i64 128
  store i8* %add.ptr53, i8** %p, align 8, !tbaa !1
  %69 = load i8*, i8** %p, align 8, !tbaa !1
  store i8* %69, i8** %inp, align 8, !tbaa !1
  br label %if.end.54

if.end.54:                                        ; preds = %if.end.50, %for.body.26
  br label %for.inc

for.inc:                                          ; preds = %if.end.54
  %70 = load i8*, i8** %q, align 8, !tbaa !1
  %incdec.ptr55 = getelementptr inbounds i8, i8* %70, i32 1
  store i8* %incdec.ptr55, i8** %q, align 8, !tbaa !1
  br label %for.cond.19

for.end:                                          ; preds = %land.end
  %71 = load i8*, i8** %q, align 8, !tbaa !1
  %72 = load i8*, i8** %p, align 8, !tbaa !1
  %sub.ptr.lhs.cast56 = ptrtoint i8* %71 to i64
  %sub.ptr.rhs.cast57 = ptrtoint i8* %72 to i64
  %sub.ptr.sub58 = sub i64 %sub.ptr.lhs.cast56, %sub.ptr.rhs.cast57
  %cmp59 = icmp sgt i64 %sub.ptr.sub58, 2
  br i1 %cmp59, label %if.then.61, label %if.else.97

if.then.61:                                       ; preds = %for.end
  %73 = load i8*, i8** %p, align 8, !tbaa !1
  %74 = load i8*, i8** %inp, align 8, !tbaa !1
  %cmp62 = icmp ugt i8* %73, %74
  br i1 %cmp62, label %if.then.64, label %if.end.86

if.then.64:                                       ; preds = %if.then.61
  %75 = load i8*, i8** %p, align 8, !tbaa !1
  %76 = load i8*, i8** %inp, align 8, !tbaa !1
  %sub.ptr.lhs.cast65 = ptrtoint i8* %75 to i64
  %sub.ptr.rhs.cast66 = ptrtoint i8* %76 to i64
  %sub.ptr.sub67 = sub i64 %sub.ptr.lhs.cast65, %sub.ptr.rhs.cast66
  %conv68 = trunc i64 %sub.ptr.sub67 to i32
  store i32 %conv68, i32* %count, align 4, !tbaa !22
  br label %while.cond.69

while.cond.69:                                    ; preds = %while.body.72, %if.then.64
  %77 = load i32, i32* %count, align 4, !tbaa !22
  %cmp70 = icmp sgt i32 %77, 128
  br i1 %cmp70, label %while.body.72, label %while.end.78

while.body.72:                                    ; preds = %while.cond.69
  %78 = load i8*, i8** %outp, align 8, !tbaa !1
  %incdec.ptr73 = getelementptr inbounds i8, i8* %78, i32 1
  store i8* %incdec.ptr73, i8** %outp, align 8, !tbaa !1
  store i8 127, i8* %78, align 1, !tbaa !60
  %79 = load i8*, i8** %outp, align 8, !tbaa !1
  %80 = load i8*, i8** %inp, align 8, !tbaa !1
  %call74 = call i8* @memcpy(i8* %79, i8* %80, i64 128) #5
  %81 = load i8*, i8** %inp, align 8, !tbaa !1
  %add.ptr75 = getelementptr inbounds i8, i8* %81, i64 128
  store i8* %add.ptr75, i8** %inp, align 8, !tbaa !1
  %82 = load i8*, i8** %outp, align 8, !tbaa !1
  %add.ptr76 = getelementptr inbounds i8, i8* %82, i64 128
  store i8* %add.ptr76, i8** %outp, align 8, !tbaa !1
  %83 = load i32, i32* %count, align 4, !tbaa !22
  %sub77 = sub nsw i32 %83, 128
  store i32 %sub77, i32* %count, align 4, !tbaa !22
  br label %while.cond.69

while.end.78:                                     ; preds = %while.cond.69
  %84 = load i32, i32* %count, align 4, !tbaa !22
  %sub79 = sub nsw i32 %84, 1
  %conv80 = trunc i32 %sub79 to i8
  %85 = load i8*, i8** %outp, align 8, !tbaa !1
  %incdec.ptr81 = getelementptr inbounds i8, i8* %85, i32 1
  store i8* %incdec.ptr81, i8** %outp, align 8, !tbaa !1
  store i8 %conv80, i8* %85, align 1, !tbaa !60
  %86 = load i8*, i8** %outp, align 8, !tbaa !1
  %87 = load i8*, i8** %inp, align 8, !tbaa !1
  %88 = load i32, i32* %count, align 4, !tbaa !22
  %conv82 = sext i32 %88 to i64
  %call83 = call i8* @memcpy(i8* %86, i8* %87, i64 %conv82) #5
  %89 = load i32, i32* %count, align 4, !tbaa !22
  %90 = load i8*, i8** %outp, align 8, !tbaa !1
  %idx.ext84 = sext i32 %89 to i64
  %add.ptr85 = getelementptr inbounds i8, i8* %90, i64 %idx.ext84
  store i8* %add.ptr85, i8** %outp, align 8, !tbaa !1
  br label %if.end.86

if.end.86:                                        ; preds = %while.end.78, %if.then.61
  %91 = load i8*, i8** %q, align 8, !tbaa !1
  %92 = load i8*, i8** %p, align 8, !tbaa !1
  %sub.ptr.lhs.cast87 = ptrtoint i8* %91 to i64
  %sub.ptr.rhs.cast88 = ptrtoint i8* %92 to i64
  %sub.ptr.sub89 = sub i64 %sub.ptr.lhs.cast87, %sub.ptr.rhs.cast88
  %conv90 = trunc i64 %sub.ptr.sub89 to i32
  store i32 %conv90, i32* %count, align 4, !tbaa !22
  %93 = load i32, i32* %count, align 4, !tbaa !22
  %sub91 = sub nsw i32 256, %93
  %add = add nsw i32 %sub91, 1
  %conv92 = trunc i32 %add to i8
  %94 = load i8*, i8** %outp, align 8, !tbaa !1
  %incdec.ptr93 = getelementptr inbounds i8, i8* %94, i32 1
  store i8* %incdec.ptr93, i8** %outp, align 8, !tbaa !1
  store i8 %conv92, i8* %94, align 1, !tbaa !60
  %95 = load i8*, i8** %p, align 8, !tbaa !1
  %96 = load i8, i8* %95, align 1, !tbaa !60
  %97 = load i8*, i8** %outp, align 8, !tbaa !1
  %incdec.ptr94 = getelementptr inbounds i8, i8* %97, i32 1
  store i8* %incdec.ptr94, i8** %outp, align 8, !tbaa !1
  store i8 %96, i8* %97, align 1, !tbaa !60
  %98 = load i32, i32* %count, align 4, !tbaa !22
  %99 = load i8*, i8** %p, align 8, !tbaa !1
  %idx.ext95 = sext i32 %98 to i64
  %add.ptr96 = getelementptr inbounds i8, i8* %99, i64 %idx.ext95
  store i8* %add.ptr96, i8** %p, align 8, !tbaa !1
  %100 = load i8*, i8** %p, align 8, !tbaa !1
  store i8* %100, i8** %inp, align 8, !tbaa !1
  br label %if.end.98

if.else.97:                                       ; preds = %for.end
  %101 = load i8*, i8** %q, align 8, !tbaa !1
  store i8* %101, i8** %p, align 8, !tbaa !1
  br label %if.end.98

if.end.98:                                        ; preds = %if.else.97, %if.end.86
  %102 = load i8*, i8** %q, align 8, !tbaa !1
  %103 = load i8*, i8** %in_end, align 8, !tbaa !1
  %cmp99 = icmp ult i8* %102, %103
  br i1 %cmp99, label %if.then.101, label %if.end.103

if.then.101:                                      ; preds = %if.end.98
  %104 = load i8*, i8** %q, align 8, !tbaa !1
  %incdec.ptr102 = getelementptr inbounds i8, i8* %104, i32 1
  store i8* %incdec.ptr102, i8** %q, align 8, !tbaa !1
  br label %if.end.103

if.end.103:                                       ; preds = %if.then.101, %if.end.98
  br label %if.end.104

if.end.104:                                       ; preds = %if.end.103, %if.then
  br label %for.cond

for.end.105:                                      ; preds = %for.cond
  %105 = load i8*, i8** %inp, align 8, !tbaa !1
  %106 = load i8*, i8** %in_end, align 8, !tbaa !1
  %cmp106 = icmp ult i8* %105, %106
  br i1 %cmp106, label %if.then.108, label %if.end.130

if.then.108:                                      ; preds = %for.end.105
  %107 = load i8*, i8** %in_end, align 8, !tbaa !1
  %108 = load i8*, i8** %inp, align 8, !tbaa !1
  %sub.ptr.lhs.cast109 = ptrtoint i8* %107 to i64
  %sub.ptr.rhs.cast110 = ptrtoint i8* %108 to i64
  %sub.ptr.sub111 = sub i64 %sub.ptr.lhs.cast109, %sub.ptr.rhs.cast110
  %conv112 = trunc i64 %sub.ptr.sub111 to i32
  store i32 %conv112, i32* %count, align 4, !tbaa !22
  br label %while.cond.113

while.cond.113:                                   ; preds = %while.body.116, %if.then.108
  %109 = load i32, i32* %count, align 4, !tbaa !22
  %cmp114 = icmp sgt i32 %109, 128
  br i1 %cmp114, label %while.body.116, label %while.end.122

while.body.116:                                   ; preds = %while.cond.113
  %110 = load i8*, i8** %outp, align 8, !tbaa !1
  %incdec.ptr117 = getelementptr inbounds i8, i8* %110, i32 1
  store i8* %incdec.ptr117, i8** %outp, align 8, !tbaa !1
  store i8 127, i8* %110, align 1, !tbaa !60
  %111 = load i8*, i8** %outp, align 8, !tbaa !1
  %112 = load i8*, i8** %inp, align 8, !tbaa !1
  %call118 = call i8* @memcpy(i8* %111, i8* %112, i64 128) #5
  %113 = load i8*, i8** %inp, align 8, !tbaa !1
  %add.ptr119 = getelementptr inbounds i8, i8* %113, i64 128
  store i8* %add.ptr119, i8** %inp, align 8, !tbaa !1
  %114 = load i8*, i8** %outp, align 8, !tbaa !1
  %add.ptr120 = getelementptr inbounds i8, i8* %114, i64 128
  store i8* %add.ptr120, i8** %outp, align 8, !tbaa !1
  %115 = load i32, i32* %count, align 4, !tbaa !22
  %sub121 = sub nsw i32 %115, 128
  store i32 %sub121, i32* %count, align 4, !tbaa !22
  br label %while.cond.113

while.end.122:                                    ; preds = %while.cond.113
  %116 = load i32, i32* %count, align 4, !tbaa !22
  %sub123 = sub nsw i32 %116, 1
  %conv124 = trunc i32 %sub123 to i8
  %117 = load i8*, i8** %outp, align 8, !tbaa !1
  %incdec.ptr125 = getelementptr inbounds i8, i8* %117, i32 1
  store i8* %incdec.ptr125, i8** %outp, align 8, !tbaa !1
  store i8 %conv124, i8* %117, align 1, !tbaa !60
  %118 = load i8*, i8** %outp, align 8, !tbaa !1
  %119 = load i8*, i8** %inp, align 8, !tbaa !1
  %120 = load i32, i32* %count, align 4, !tbaa !22
  %conv126 = sext i32 %120 to i64
  %call127 = call i8* @memcpy(i8* %118, i8* %119, i64 %conv126) #5
  %121 = load i32, i32* %count, align 4, !tbaa !22
  %122 = load i8*, i8** %outp, align 8, !tbaa !1
  %idx.ext128 = sext i32 %121 to i64
  %add.ptr129 = getelementptr inbounds i8, i8* %122, i64 %idx.ext128
  store i8* %add.ptr129, i8** %outp, align 8, !tbaa !1
  br label %if.end.130

if.end.130:                                       ; preds = %while.end.122, %for.end.105
  %123 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call131 = call i64 @fwrite(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.36, i32 0, i32 0), i64 1, i64 3, %struct._IO_FILE* %123) #4
  %124 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %HWResolution = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %124, i32 0, i32 22
  %arrayidx132 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution, i32 0, i64 1
  %125 = load float, float* %arrayidx132, align 4, !tbaa !23
  %cmp133 = fcmp oeq float %125, 7.200000e+02
  br i1 %cmp133, label %if.then.135, label %if.else.137

if.then.135:                                      ; preds = %if.end.130
  %126 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call136 = call i32 @fputc(i32 5, %struct._IO_FILE* %126) #4
  br label %if.end.147

if.else.137:                                      ; preds = %if.end.130
  %127 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %HWResolution138 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %127, i32 0, i32 22
  %arrayidx139 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution138, i32 0, i64 1
  %128 = load float, float* %arrayidx139, align 4, !tbaa !23
  %cmp140 = fcmp oeq float %128, 1.800000e+02
  br i1 %cmp140, label %if.then.142, label %if.else.144

if.then.142:                                      ; preds = %if.else.137
  %129 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call143 = call i32 @fputc(i32 20, %struct._IO_FILE* %129) #4
  br label %if.end.146

if.else.144:                                      ; preds = %if.else.137
  %130 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call145 = call i32 @fputc(i32 10, %struct._IO_FILE* %130) #4
  br label %if.end.146

if.end.146:                                       ; preds = %if.else.144, %if.then.142
  br label %if.end.147

if.end.147:                                       ; preds = %if.end.146, %if.then.135
  %131 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %HWResolution148 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %131, i32 0, i32 22
  %arrayidx149 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution148, i32 0, i64 0
  %132 = load float, float* %arrayidx149, align 4, !tbaa !23
  %cmp150 = fcmp oeq float %132, 7.200000e+02
  br i1 %cmp150, label %if.then.152, label %if.else.154

if.then.152:                                      ; preds = %if.end.147
  %133 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call153 = call i32 @fputc(i32 5, %struct._IO_FILE* %133) #4
  br label %if.end.164

if.else.154:                                      ; preds = %if.end.147
  %134 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %HWResolution155 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %134, i32 0, i32 22
  %arrayidx156 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution155, i32 0, i64 0
  %135 = load float, float* %arrayidx156, align 4, !tbaa !23
  %cmp157 = fcmp oeq float %135, 1.800000e+02
  br i1 %cmp157, label %if.then.159, label %if.else.161

if.then.159:                                      ; preds = %if.else.154
  %136 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call160 = call i32 @fputc(i32 20, %struct._IO_FILE* %136) #4
  br label %if.end.163

if.else.161:                                      ; preds = %if.else.154
  %137 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call162 = call i32 @fputc(i32 10, %struct._IO_FILE* %137) #4
  br label %if.end.163

if.end.163:                                       ; preds = %if.else.161, %if.then.159
  br label %if.end.164

if.end.164:                                       ; preds = %if.end.163, %if.then.152
  %138 = load i32, i32* %band_size, align 4, !tbaa !22
  %139 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call165 = call i32 @fputc(i32 %138, %struct._IO_FILE* %139) #4
  %140 = load i32, i32* %width, align 4, !tbaa !22
  %shl = shl i32 %140, 3
  %and = and i32 %shl, 255
  %141 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call166 = call i32 @fputc(i32 %and, %struct._IO_FILE* %141) #4
  %142 = load i32, i32* %width, align 4, !tbaa !22
  %shr = ashr i32 %142, 5
  %143 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call167 = call i32 @fputc(i32 %shr, %struct._IO_FILE* %143) #4
  %144 = load i8*, i8** %out, align 8, !tbaa !1
  %145 = load i8*, i8** %outp, align 8, !tbaa !1
  %146 = load i8*, i8** %out, align 8, !tbaa !1
  %sub.ptr.lhs.cast168 = ptrtoint i8* %145 to i64
  %sub.ptr.rhs.cast169 = ptrtoint i8* %146 to i64
  %sub.ptr.sub170 = sub i64 %sub.ptr.lhs.cast168, %sub.ptr.rhs.cast169
  %147 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call171 = call i64 @fwrite(i8* %144, i64 1, i64 %sub.ptr.sub170, %struct._IO_FILE* %147) #4
  %148 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call172 = call i32 @fputc(i32 13, %struct._IO_FILE* %148) #4
  %149 = bitcast i8** %q to i8*
  call void @llvm.lifetime.end(i64 8, i8* %149) #2
  %150 = bitcast i8** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %150) #2
  %151 = bitcast i8** %outp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %151) #2
  %152 = bitcast i8** %inp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %152) #2
  %153 = bitcast i8** %in_end to i8*
  call void @llvm.lifetime.end(i64 8, i8* %153) #2
  %154 = bitcast i32* %count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %154) #2
  %155 = bitcast i32* %width to i8*
  call void @llvm.lifetime.end(i64 4, i8* %155) #2
  %156 = bitcast i8** %out to i8*
  call void @llvm.lifetime.end(i64 8, i8* %156) #2
  %157 = bitcast i32* %band_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %157) #2
  ret i32 0
}

declare i32 @fputs(i8*, %struct._IO_FILE*) #0

declare i32 @fflush(%struct._IO_FILE*) #0

declare i32 @errprintf_nomem(i8*, ...) #0

; Function Attrs: nounwind uwtable
define internal zeroext i8 @Xtal(i8 zeroext %bitmask, i16 signext %d0, i32 %x, i16** %bar, i16* %b1, i16* %b2) #1 {
entry:
  %retval = alloca i8, align 1
  %bitmask.addr = alloca i8, align 1
  %d0.addr = alloca i16, align 2
  %x.addr = alloca i32, align 4
  %bar.addr = alloca i16**, align 8
  %b1.addr = alloca i16*, align 8
  %b2.addr = alloca i16*, align 8
  %a2 = alloca i16*, align 8
  %cleanup.dest.slot = alloca i32
  store i8 %bitmask, i8* %bitmask.addr, align 1, !tbaa !60
  store i16 %d0, i16* %d0.addr, align 2, !tbaa !5
  store i32 %x, i32* %x.addr, align 4, !tbaa !22
  store i16** %bar, i16*** %bar.addr, align 8, !tbaa !1
  store i16* %b1, i16** %b1.addr, align 8, !tbaa !1
  store i16* %b2, i16** %b2.addr, align 8, !tbaa !1
  %0 = bitcast i16** %a2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load i16, i16* %d0.addr, align 2, !tbaa !5
  %conv = sext i16 %1 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i16*, i16** %b1.addr, align 8, !tbaa !1
  %3 = load i16, i16* %2, align 2, !tbaa !5
  %conv2 = sext i16 %3 to i32
  %4 = load i16, i16* %d0.addr, align 2, !tbaa !5
  %conv3 = sext i16 %4 to i32
  %add = add nsw i32 %conv3, %conv2
  %conv4 = trunc i32 %add to i16
  store i16 %conv4, i16* %d0.addr, align 2, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load i16**, i16*** %bar.addr, align 8, !tbaa !1
  %6 = load i16*, i16** %5, align 8, !tbaa !1
  %7 = load i32, i32* %x.addr, align 4, !tbaa !22
  %idx.ext = sext i32 %7 to i64
  %add.ptr = getelementptr inbounds i16, i16* %6, i64 %idx.ext
  store i16* %add.ptr, i16** %a2, align 8, !tbaa !1
  %8 = load i16*, i16** %a2, align 8, !tbaa !1
  %9 = load i16, i16* %8, align 2, !tbaa !5
  %conv5 = sext i16 %9 to i32
  %10 = load i16, i16* %d0.addr, align 2, !tbaa !5
  %conv6 = sext i16 %10 to i32
  %cmp7 = icmp slt i32 %conv5, %conv6
  br i1 %cmp7, label %if.then.9, label %if.else.19

if.then.9:                                        ; preds = %if.end
  %11 = load i16, i16* %d0.addr, align 2, !tbaa !5
  %conv10 = sext i16 %11 to i32
  %sub = sub nsw i32 %conv10, 16400
  %conv11 = trunc i32 %sub to i16
  store i16 %conv11, i16* %d0.addr, align 2, !tbaa !5
  %12 = load i16, i16* %d0.addr, align 2, !tbaa !5
  %conv12 = sext i16 %12 to i32
  %cmp13 = icmp sge i32 -4096, %conv12
  br i1 %cmp13, label %if.then.15, label %if.else

if.then.15:                                       ; preds = %if.then.9
  %13 = load i16, i16* %d0.addr, align 2, !tbaa !5
  %conv16 = sext i16 %13 to i32
  %14 = load i16*, i16** %b1.addr, align 8, !tbaa !1
  %15 = load i16*, i16** %b2.addr, align 8, !tbaa !1
  call void @DifSubK(i32 %conv16, i16* %14, i16* %15) #4
  %16 = load i16**, i16*** %bar.addr, align 8, !tbaa !1
  %17 = load i32, i32* %x.addr, align 4, !tbaa !22
  call void @bld_barrier(i16** %16, i32 %17) #4
  br label %if.end.18

if.else:                                          ; preds = %if.then.9
  %18 = load i16, i16* %d0.addr, align 2, !tbaa !5
  %conv17 = sext i16 %18 to i32
  %19 = load i16*, i16** %b1.addr, align 8, !tbaa !1
  %20 = load i16*, i16** %b2.addr, align 8, !tbaa !1
  call void @DifSubK(i32 %conv17, i16* %19, i16* %20) #4
  br label %if.end.18

if.end.18:                                        ; preds = %if.else, %if.then.15
  %21 = load i8, i8* %bitmask.addr, align 1, !tbaa !60
  store i8 %21, i8* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else.19:                                       ; preds = %if.end
  %22 = load i16, i16* %d0.addr, align 2, !tbaa !5
  %conv20 = sext i16 %22 to i32
  %cmp21 = icmp sgt i32 %conv20, 56
  br i1 %cmp21, label %if.then.23, label %if.end.27

if.then.23:                                       ; preds = %if.else.19
  %23 = load i16, i16* %d0.addr, align 2, !tbaa !5
  %conv24 = sext i16 %23 to i32
  %sub25 = sub nsw i32 %conv24, 56
  %conv26 = trunc i32 %sub25 to i16
  store i16 %conv26, i16* %d0.addr, align 2, !tbaa !5
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.23, %if.else.19
  %24 = load i16, i16* %d0.addr, align 2, !tbaa !5
  %conv28 = sext i16 %24 to i32
  %25 = load i16*, i16** %b1.addr, align 8, !tbaa !1
  %26 = load i16*, i16** %b2.addr, align 8, !tbaa !1
  call void @DifSubK(i32 %conv28, i16* %25, i16* %26) #4
  store i8 0, i8* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.27, %if.end.18
  %27 = bitcast i16** %a2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %27) #2
  %28 = load i8, i8* %retval
  ret i8 %28
}

; Function Attrs: nounwind uwtable
define internal void @DifSubK(i32 %d0, i16* %a4, i16* %a5) #1 {
entry:
  %d0.addr = alloca i32, align 4
  %a4.addr = alloca i16*, align 8
  %a5.addr = alloca i16*, align 8
  store i32 %d0, i32* %d0.addr, align 4, !tbaa !22
  store i16* %a4, i16** %a4.addr, align 8, !tbaa !1
  store i16* %a5, i16** %a5.addr, align 8, !tbaa !1
  %0 = load i16*, i16** %a4.addr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i16, i16* %0, i32 1
  store i16* %incdec.ptr, i16** %a4.addr, align 8, !tbaa !1
  store i16 0, i16* %0, align 2, !tbaa !5
  %1 = load i32, i32* %d0.addr, align 4, !tbaa !22
  %shr = ashr i32 %1, 1
  store i32 %shr, i32* %d0.addr, align 4, !tbaa !22
  %2 = load i32, i32* %d0.addr, align 4, !tbaa !22
  %3 = load i16*, i16** %a4.addr, align 8, !tbaa !1
  %4 = load i16, i16* %3, align 2, !tbaa !5
  %conv = sext i16 %4 to i32
  %add = add nsw i32 %conv, %2
  %conv1 = trunc i32 %add to i16
  store i16 %conv1, i16* %3, align 2, !tbaa !5
  %5 = load i32, i32* %d0.addr, align 4, !tbaa !22
  %shr2 = ashr i32 %5, 1
  store i32 %shr2, i32* %d0.addr, align 4, !tbaa !22
  %6 = load i32, i32* %d0.addr, align 4, !tbaa !22
  %7 = load i16*, i16** %a5.addr, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i16, i16* %7, i64 -1
  %8 = load i16, i16* %add.ptr, align 2, !tbaa !5
  %conv3 = sext i16 %8 to i32
  %add4 = add nsw i32 %conv3, %6
  %conv5 = trunc i32 %add4 to i16
  store i16 %conv5, i16* %add.ptr, align 2, !tbaa !5
  %9 = load i32, i32* %d0.addr, align 4, !tbaa !22
  %shr6 = ashr i32 %9, 1
  store i32 %shr6, i32* %d0.addr, align 4, !tbaa !22
  %10 = load i32, i32* %d0.addr, align 4, !tbaa !22
  %11 = load i16*, i16** %a5.addr, align 8, !tbaa !1
  %incdec.ptr7 = getelementptr inbounds i16, i16* %11, i32 1
  store i16* %incdec.ptr7, i16** %a5.addr, align 8, !tbaa !1
  %12 = load i16, i16* %11, align 2, !tbaa !5
  %conv8 = sext i16 %12 to i32
  %add9 = add nsw i32 %conv8, %10
  %conv10 = trunc i32 %add9 to i16
  store i16 %conv10, i16* %11, align 2, !tbaa !5
  %13 = load i32, i32* %d0.addr, align 4, !tbaa !22
  %14 = load i16*, i16** %a5.addr, align 8, !tbaa !1
  %15 = load i16, i16* %14, align 2, !tbaa !5
  %conv11 = sext i16 %15 to i32
  %add12 = add nsw i32 %conv11, %13
  %conv13 = trunc i32 %add12 to i16
  store i16 %conv13, i16* %14, align 2, !tbaa !5
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @bld_barrier(i16** %bar, i32 %x) #1 {
entry:
  %bar.addr = alloca i16**, align 8
  %x.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %t = alloca i16, align 2
  %p = alloca i16*, align 8
  %b = alloca i16*, align 8
  %dat = alloca i16*, align 8
  store i16** %bar, i16*** %bar.addr, align 8, !tbaa !1
  store i32 %x, i32* %x.addr, align 4, !tbaa !22
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = bitcast i16* %t to i8*
  call void @llvm.lifetime.start(i64 2, i8* %2) #2
  %3 = bitcast i16** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = bitcast i16** %b to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #2
  %5 = bitcast i16** %dat to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #2
  store i16* getelementptr inbounds ([144 x i16], [144 x i16]* @barrier_dat, i32 0, i64 1), i16** %dat, align 8, !tbaa !1
  %6 = load i16**, i16*** %bar.addr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i16*, i16** %6, i32 1
  store i16** %incdec.ptr, i16*** %bar.addr, align 8, !tbaa !1
  %7 = load i16*, i16** %6, align 8, !tbaa !1
  %8 = load i32, i32* %x.addr, align 4, !tbaa !22
  %idx.ext = sext i32 %8 to i64
  %add.ptr = getelementptr inbounds i16, i16* %7, i64 %idx.ext
  %add.ptr1 = getelementptr inbounds i16, i16* %add.ptr, i64 1
  store i16* %add.ptr1, i16** %p, align 8, !tbaa !1
  store i32 0, i32* %i, align 4, !tbaa !22
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %9 = load i32, i32* %i, align 4, !tbaa !22
  %cmp = icmp slt i32 %9, 11
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load i16*, i16** %dat, align 8, !tbaa !1
  %incdec.ptr2 = getelementptr inbounds i16, i16* %10, i32 1
  store i16* %incdec.ptr2, i16** %dat, align 8, !tbaa !1
  %11 = load i16, i16* %10, align 2, !tbaa !5
  store i16 %11, i16* %t, align 2, !tbaa !5
  %12 = load i16*, i16** %p, align 8, !tbaa !1
  %13 = load i16, i16* %12, align 2, !tbaa !5
  %conv = sext i16 %13 to i32
  %14 = load i16, i16* %t, align 2, !tbaa !5
  %conv3 = sext i16 %14 to i32
  %cmp4 = icmp slt i32 %conv, %conv3
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %15 = load i16, i16* %t, align 2, !tbaa !5
  %16 = load i16*, i16** %p, align 8, !tbaa !1
  store i16 %15, i16* %16, align 2, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %17 = load i16*, i16** %p, align 8, !tbaa !1
  %incdec.ptr6 = getelementptr inbounds i16, i16* %17, i32 1
  store i16* %incdec.ptr6, i16** %p, align 8, !tbaa !1
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %18 = load i32, i32* %i, align 4, !tbaa !22
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %i, align 4, !tbaa !22
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %j, align 4, !tbaa !22
  br label %for.cond.7

for.cond.7:                                       ; preds = %for.inc.44, %for.end
  %19 = load i32, i32* %j, align 4, !tbaa !22
  %cmp8 = icmp slt i32 %19, 11
  br i1 %cmp8, label %for.body.10, label %for.end.46

for.body.10:                                      ; preds = %for.cond.7
  %20 = load i16**, i16*** %bar.addr, align 8, !tbaa !1
  %incdec.ptr11 = getelementptr inbounds i16*, i16** %20, i32 1
  store i16** %incdec.ptr11, i16*** %bar.addr, align 8, !tbaa !1
  %21 = load i16*, i16** %20, align 8, !tbaa !1
  %22 = load i32, i32* %x.addr, align 4, !tbaa !22
  %idx.ext12 = sext i32 %22 to i64
  %add.ptr13 = getelementptr inbounds i16, i16* %21, i64 %idx.ext12
  store i16* %add.ptr13, i16** %p, align 8, !tbaa !1
  %23 = load i16*, i16** %p, align 8, !tbaa !1
  store i16* %23, i16** %b, align 8, !tbaa !1
  %24 = load i16*, i16** %dat, align 8, !tbaa !1
  %incdec.ptr14 = getelementptr inbounds i16, i16* %24, i32 1
  store i16* %incdec.ptr14, i16** %dat, align 8, !tbaa !1
  %25 = load i16, i16* %24, align 2, !tbaa !5
  store i16 %25, i16* %t, align 2, !tbaa !5
  %26 = load i16*, i16** %p, align 8, !tbaa !1
  %27 = load i16, i16* %26, align 2, !tbaa !5
  %conv15 = sext i16 %27 to i32
  %28 = load i16, i16* %t, align 2, !tbaa !5
  %conv16 = sext i16 %28 to i32
  %cmp17 = icmp slt i32 %conv15, %conv16
  br i1 %cmp17, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %for.body.10
  %29 = load i16, i16* %t, align 2, !tbaa !5
  %30 = load i16*, i16** %p, align 8, !tbaa !1
  store i16 %29, i16* %30, align 2, !tbaa !5
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.19, %for.body.10
  %31 = load i16*, i16** %p, align 8, !tbaa !1
  %incdec.ptr21 = getelementptr inbounds i16, i16* %31, i32 1
  store i16* %incdec.ptr21, i16** %p, align 8, !tbaa !1
  store i32 0, i32* %i, align 4, !tbaa !22
  br label %for.cond.22

for.cond.22:                                      ; preds = %for.inc.41, %if.end.20
  %32 = load i32, i32* %i, align 4, !tbaa !22
  %cmp23 = icmp slt i32 %32, 11
  br i1 %cmp23, label %for.body.25, label %for.end.43

for.body.25:                                      ; preds = %for.cond.22
  %33 = load i16*, i16** %dat, align 8, !tbaa !1
  %incdec.ptr26 = getelementptr inbounds i16, i16* %33, i32 1
  store i16* %incdec.ptr26, i16** %dat, align 8, !tbaa !1
  %34 = load i16, i16* %33, align 2, !tbaa !5
  store i16 %34, i16* %t, align 2, !tbaa !5
  %35 = load i16*, i16** %p, align 8, !tbaa !1
  %36 = load i16, i16* %35, align 2, !tbaa !5
  %conv27 = sext i16 %36 to i32
  %37 = load i16, i16* %t, align 2, !tbaa !5
  %conv28 = sext i16 %37 to i32
  %cmp29 = icmp slt i32 %conv27, %conv28
  br i1 %cmp29, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %for.body.25
  %38 = load i16, i16* %t, align 2, !tbaa !5
  %39 = load i16*, i16** %p, align 8, !tbaa !1
  store i16 %38, i16* %39, align 2, !tbaa !5
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.31, %for.body.25
  %40 = load i16*, i16** %p, align 8, !tbaa !1
  %incdec.ptr33 = getelementptr inbounds i16, i16* %40, i32 1
  store i16* %incdec.ptr33, i16** %p, align 8, !tbaa !1
  %41 = load i16*, i16** %b, align 8, !tbaa !1
  %incdec.ptr34 = getelementptr inbounds i16, i16* %41, i32 -1
  store i16* %incdec.ptr34, i16** %b, align 8, !tbaa !1
  %42 = load i16, i16* %incdec.ptr34, align 2, !tbaa !5
  %conv35 = sext i16 %42 to i32
  %43 = load i16, i16* %t, align 2, !tbaa !5
  %conv36 = sext i16 %43 to i32
  %cmp37 = icmp slt i32 %conv35, %conv36
  br i1 %cmp37, label %if.then.39, label %if.end.40

if.then.39:                                       ; preds = %if.end.32
  %44 = load i16, i16* %t, align 2, !tbaa !5
  %45 = load i16*, i16** %b, align 8, !tbaa !1
  store i16 %44, i16* %45, align 2, !tbaa !5
  br label %if.end.40

if.end.40:                                        ; preds = %if.then.39, %if.end.32
  br label %for.inc.41

for.inc.41:                                       ; preds = %if.end.40
  %46 = load i32, i32* %i, align 4, !tbaa !22
  %inc42 = add nsw i32 %46, 1
  store i32 %inc42, i32* %i, align 4, !tbaa !22
  br label %for.cond.22

for.end.43:                                       ; preds = %for.cond.22
  br label %for.inc.44

for.inc.44:                                       ; preds = %for.end.43
  %47 = load i32, i32* %j, align 4, !tbaa !22
  %inc45 = add nsw i32 %47, 1
  store i32 %inc45, i32* %j, align 4, !tbaa !22
  br label %for.cond.7

for.end.46:                                       ; preds = %for.cond.7
  %48 = bitcast i16** %dat to i8*
  call void @llvm.lifetime.end(i64 8, i8* %48) #2
  %49 = bitcast i16** %b to i8*
  call void @llvm.lifetime.end(i64 8, i8* %49) #2
  %50 = bitcast i16** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %50) #2
  %51 = bitcast i16* %t to i8*
  call void @llvm.lifetime.end(i64 2, i8* %51) #2
  %52 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %52) #2
  %53 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %53) #2
  ret void
}

; Function Attrs: nounwind
declare i8* @memcpy(i8*, i8*, i64) #3

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
!6 = !{!"short", !3, i64 0}
!7 = !{!8, !6, i64 108}
!8 = !{!"gx_device_s", !9, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !9, i64 40, !2, i64 48, !10, i64 56, !9, i64 80, !9, i64 84, !9, i64 88, !12, i64 96, !14, i64 816, !9, i64 832, !9, i64 836, !9, i64 840, !9, i64 844, !9, i64 848, !9, i64 852, !3, i64 856, !3, i64 864, !9, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !11, i64 928, !11, i64 936, !9, i64 944, !9, i64 948, !9, i64 952, !9, i64 956, !9, i64 960, !11, i64 968, !11, i64 976, !15, i64 984, !9, i64 1052, !9, i64 1056, !16, i64 1064, !2, i64 1104, !3, i64 1112, !18, i64 1120, !19, i64 1144}
!9 = !{!"int", !3, i64 0}
!10 = !{!"rc_header_s", !11, i64 0, !2, i64 8, !2, i64 16}
!11 = !{!"long", !3, i64 0}
!12 = !{!"gx_device_color_info_s", !9, i64 0, !9, i64 4, !3, i64 8, !6, i64 12, !3, i64 14, !9, i64 16, !9, i64 20, !9, i64 24, !9, i64 28, !13, i64 32, !3, i64 40, !3, i64 44, !3, i64 108, !3, i64 176, !2, i64 688, !3, i64 696, !11, i64 704, !9, i64 712}
!13 = !{!"gx_device_anti_alias_info_s", !9, i64 0, !9, i64 4}
!14 = !{!"gx_device_cached_colors_s", !11, i64 0, !11, i64 8}
!15 = !{!"gx_stroked_gradient_recognizer_s", !9, i64 0, !3, i64 4, !3, i64 36}
!16 = !{!"gdev_space_params_s", !11, i64 0, !11, i64 8, !17, i64 16, !9, i64 32, !3, i64 36}
!17 = !{!"gx_band_params_s", !9, i64 0, !9, i64 4, !11, i64 8}
!18 = !{!"gx_page_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16}
!19 = !{!"gx_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176, !2, i64 184, !2, i64 192, !2, i64 200, !2, i64 208, !2, i64 216, !2, i64 224, !2, i64 232, !2, i64 240, !2, i64 248, !2, i64 256, !2, i64 264, !2, i64 272, !2, i64 280, !2, i64 288, !2, i64 296, !2, i64 304, !2, i64 312, !2, i64 320, !2, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !2, i64 376, !2, i64 384, !2, i64 392, !2, i64 400, !2, i64 408, !2, i64 416, !2, i64 424, !2, i64 432, !2, i64 440, !2, i64 448, !2, i64 456, !2, i64 464, !2, i64 472, !2, i64 480, !2, i64 488, !2, i64 496, !2, i64 504, !2, i64 512, !2, i64 520, !2, i64 528, !2, i64 536, !2, i64 544, !2, i64 552, !2, i64 560, !2, i64 568, !2, i64 576}
!20 = !{!8, !9, i64 100}
!21 = !{!11, !11, i64 0}
!22 = !{!9, !9, i64 0}
!23 = !{!24, !24, i64 0}
!24 = !{!"float", !3, i64 0}
!25 = !{!26, !9, i64 18472}
!26 = !{!"gx_device_mj_s", !9, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !9, i64 40, !2, i64 48, !10, i64 56, !9, i64 80, !9, i64 84, !9, i64 88, !12, i64 96, !14, i64 816, !9, i64 832, !9, i64 836, !9, i64 840, !9, i64 844, !9, i64 848, !9, i64 852, !3, i64 856, !3, i64 864, !9, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !11, i64 928, !11, i64 936, !9, i64 944, !9, i64 948, !9, i64 952, !9, i64 956, !9, i64 960, !11, i64 968, !11, i64 976, !15, i64 984, !9, i64 1052, !9, i64 1056, !16, i64 1064, !2, i64 1104, !3, i64 1112, !18, i64 1120, !19, i64 1144, !3, i64 1728, !27, i64 12968, !3, i64 13056, !9, i64 17152, !9, i64 17156, !9, i64 17160, !9, i64 17164, !9, i64 17168, !9, i64 17172, !2, i64 17176, !11, i64 17184, !2, i64 17192, !2, i64 17200, !2, i64 17208, !2, i64 17216, !2, i64 17224, !9, i64 17232, !2, i64 17240, !9, i64 17248, !9, i64 17252, !29, i64 17256, !9, i64 17288, !2, i64 17296, !19, i64 17304, !19, i64 17888, !9, i64 18472, !9, i64 18476, !9, i64 18480, !9, i64 18484, !9, i64 18488, !9, i64 18492, !9, i64 18496, !9, i64 18500, !9, i64 18504}
!27 = !{!"gx_printer_device_procs_s", !2, i64 0, !2, i64 8, !28, i64 16, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80}
!28 = !{!"gx_device_buf_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24}
!29 = !{!"bg_print_s", !2, i64 0, !2, i64 8, !2, i64 16, !9, i64 24, !9, i64 28}
!30 = !{!26, !9, i64 18476}
!31 = !{!26, !6, i64 108}
!32 = !{!26, !9, i64 18480}
!33 = !{!26, !9, i64 18484}
!34 = !{!26, !9, i64 18488}
!35 = !{!26, !9, i64 18492}
!36 = !{!26, !9, i64 18496}
!37 = !{!26, !9, i64 18500}
!38 = !{!26, !9, i64 18504}
!39 = !{!40, !2, i64 0}
!40 = !{!"gs_param_list_s", !2, i64 0, !2, i64 8, !9, i64 16}
!41 = !{!42, !2, i64 56}
!42 = !{!"gs_param_list_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64}
!43 = !{!8, !9, i64 84}
!44 = !{!12, !9, i64 4}
!45 = !{!12, !6, i64 12}
!46 = !{!12, !9, i64 16}
!47 = !{!12, !9, i64 20}
!48 = !{!12, !9, i64 24}
!49 = !{!12, !9, i64 28}
!50 = !{!51, !9, i64 100}
!51 = !{!"gx_device_printer_s", !9, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !9, i64 40, !2, i64 48, !10, i64 56, !9, i64 80, !9, i64 84, !9, i64 88, !12, i64 96, !14, i64 816, !9, i64 832, !9, i64 836, !9, i64 840, !9, i64 844, !9, i64 848, !9, i64 852, !3, i64 856, !3, i64 864, !9, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !11, i64 928, !11, i64 936, !9, i64 944, !9, i64 948, !9, i64 952, !9, i64 956, !9, i64 960, !11, i64 968, !11, i64 976, !15, i64 984, !9, i64 1052, !9, i64 1056, !16, i64 1064, !2, i64 1104, !3, i64 1112, !18, i64 1120, !19, i64 1144, !3, i64 1728, !27, i64 12968, !3, i64 13056, !9, i64 17152, !9, i64 17156, !9, i64 17160, !9, i64 17164, !9, i64 17168, !9, i64 17172, !2, i64 17176, !11, i64 17184, !2, i64 17192, !2, i64 17200, !2, i64 17208, !2, i64 17216, !2, i64 17224, !9, i64 17232, !2, i64 17240, !9, i64 17248, !9, i64 17252, !29, i64 17256, !9, i64 17288, !2, i64 17296, !19, i64 17304, !19, i64 17888}
!52 = !{!51, !6, i64 108}
!53 = !{!51, !2, i64 24}
!54 = !{!55, !2, i64 200}
!55 = !{!"gs_memory_s", !2, i64 0, !56, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!56 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!57 = !{!55, !2, i64 88}
!58 = !{!51, !9, i64 836}
!59 = !{!51, !9, i64 832}
!60 = !{!3, !3, i64 0}
!61 = !{!55, !2, i64 24}
