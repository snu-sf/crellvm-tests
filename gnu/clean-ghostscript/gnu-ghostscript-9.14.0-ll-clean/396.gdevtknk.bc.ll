; ModuleID = './gdevtknk.bc'
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

@tekink_procs = internal global %struct.gx_device_procs_s { i32 (%struct.gx_device_s*)* @gdev_prn_open, void (%struct.gx_device_s*, %struct.gs_matrix_s*)* null, i32 (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i32, i32)* @gdev_prn_bg_output_page, i32 (%struct.gx_device_s*)* @gdev_prn_close, i64 (%struct.gx_device_s*, i16*)* @tekink_map_rgb_color, i32 (%struct.gx_device_s*, i64, i16*)* @tekink_map_color_rgb, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* null, i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* null, i32 (%struct.gx_device_s*, i32, i8*, i8**)* null, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @gdev_prn_get_params, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @gdev_prn_put_params, i64 (%struct.gx_device_s*, i16*)* null, %struct.gx_xfont_procs_s* (%struct.gx_device_s*)* null, %struct.gx_device_s* (%struct.gx_device_s*)* null, i64 (%struct.gx_device_s*, i16, i16, i16, i16)* null, %struct.gx_device_s* (%struct.gx_device_s*)* @gx_page_device_get_page_device, i32 (%struct.gx_device_s*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)* null, i32 (%struct.gx_device_s*, i32, i32*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* null, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)* null, i32 (%struct.gx_device_s*, i64, i16*)* null, i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)* null, i32 (%struct.gx_device_s*, %struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_transparency_group_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gx_transparency_mask_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32)* null, i64 (%struct.gx_device_s*, i16*)* null, i32 (%struct.gx_device_s*, i64, i16*)* null, i32 (%struct.gx_device_s*, i64, %struct.gs_pattern1_instance_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* null, %struct.gs_devn_params_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i8*, i32)* @gdev_prn_dev_spec_op, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)* @gx_default_get_profile, void (%struct.gx_device_s*, i32)* @gx_default_set_graphics_type_tag, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_process_page_options_s*)* null }, align 8
@.str = private unnamed_addr constant [8 x i8] c"tek4696\00", align 1
@st_device_printer = external constant %struct.gs_memory_struct_type_s, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"DeviceRGB\00", align 1
@gs_tek4696_device = constant { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [11240 x i8], { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* }, [4096 x i8], i32, i32, i32, i32, i32, i32, %struct._IO_FILE*, i64, i8*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s*, i32)*, %struct.gx_page_queue_s*, i32, %struct.gx_device_printer_s*, i32, i32, %struct.bg_print_s, i32, %struct.gx_saved_pages_list_s*, %struct.gx_device_procs_s, %struct.gx_device_procs_s } { i32 18472, %struct.gx_device_procs_s* @tekink_procs, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), %struct.gs_memory_s* null, %struct.gs_memory_struct_type_s* @st_device_printer, i32 0, void (%struct.gx_device_s*)* null, %struct.rc_header_s zeroinitializer, i32 0, i32 0, i32 0, %struct.gx_device_color_info_s { i32 3, i32 3, i32 1, i16 8, i8 -1, i32 0, i32 1, i32 1, i32 2, %struct.gx_device_anti_alias_info_s { i32 1, i32 1 }, i32 -1, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [64 x i64] zeroinitializer, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 -1, i64 0, i32 0 }, %struct.gx_device_cached_colors_s { i64 -1, i64 -1 }, i32 1020, i32 1440, i32 0, i32 0, i32 0, i32 0, [2 x float] [float 6.120000e+02, float 8.640000e+02], [4 x float] zeroinitializer, i32 0, [2 x float] [float 1.200000e+02, float 1.200000e+02], [2 x float] [float 1.200000e+02, float 1.200000e+02], [2 x float] [float -0.000000e+00, float -0.000000e+00], [4 x float] zeroinitializer, i64 0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, %struct.gx_stroked_gradient_recognizer_s zeroinitializer, i32 0, i32 0, %struct.gdev_space_params_s { i64 10000000, i64 4000000, %struct.gx_band_params_s zeroinitializer, i32 0, i32 0 }, %struct.cmm_dev_profile_s* null, i32 0, %struct.gx_page_device_procs_s { i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_install, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_begin_page, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* @gx_default_end_page }, %struct.gx_device_procs_s zeroinitializer, [11240 x i8] zeroinitializer, { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* } { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)* @tekink_print_page, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_print_page_copies, %struct.gx_device_buf_procs_s { i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, %struct.gx_render_plane_s*, %struct.gs_memory_s*, %struct.gx_colors_usage_s*)* @gx_default_create_buf_device, i32 (%struct.gx_device_buf_space_s*, %struct.gx_device_s*, %struct.gx_render_plane_s*, i32, i32)* @gx_default_size_buf_device, i32 (%struct.gx_device_s*, i8*, i32, i8**, i32, i32, i32)* @gx_default_setup_buf_device, void (%struct.gx_device_s*)* @gx_default_destroy_buf_device }, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)* @gx_default_get_space_params, i32 (%struct.gdev_prn_start_render_params_s*)* @gx_default_start_render_thread, i32 (%struct.gx_device_printer_s*)* @gx_default_open_render_device, i32 (%struct.gx_device_printer_s*)* @gx_default_close_render_device, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_buffer_page }, [4096 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 -1, i32 0, %struct._IO_FILE* null, i64 0, i8* null, %struct.gs_memory_s* null, %struct.gs_memory_s* null, i32 (%struct.gx_device_s*, i32)* null, %struct.gx_page_queue_s* null, i32 0, %struct.gx_device_printer_s* null, i32 0, i32 0, %struct.bg_print_s zeroinitializer, i32 0, %struct.gx_saved_pages_list_s* null, %struct.gx_device_procs_s zeroinitializer, %struct.gx_device_procs_s zeroinitializer }, align 8
@rgb_to_index = internal global [8 x i64] [i64 1, i64 6, i64 12, i64 4, i64 10, i64 2, i64 8, i64 0], align 16
@index_to_rgb = internal global [16 x [3 x i16]] [[3 x i16] [i16 -1, i16 -1, i16 -1], [3 x i16] zeroinitializer, [3 x i16] [i16 -1, i16 0, i16 -1], [3 x i16] [i16 2, i16 2, i16 2], [3 x i16] [i16 -1, i16 -1, i16 0], [3 x i16] [i16 2, i16 2, i16 2], [3 x i16] [i16 -1, i16 0, i16 0], [3 x i16] [i16 2, i16 2, i16 2], [3 x i16] [i16 0, i16 -1, i16 -1], [3 x i16] [i16 2, i16 2, i16 2], [3 x i16] [i16 0, i16 0, i16 -1], [3 x i16] [i16 2, i16 2, i16 2], [3 x i16] [i16 0, i16 -1, i16 0], [3 x i16] [i16 2, i16 2, i16 2], [3 x i16] [i16 2, i16 2, i16 2], [3 x i16] [i16 2, i16 2, i16 2]], align 16
@.str.2 = private unnamed_addr constant [3 x i8] c"\1BA\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"\1BI%c%03d\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"\0A\0A\0A\0A\0A\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\0C\00", align 1

declare i32 @gx_default_install(%struct.gx_device_s*, %struct.gs_state_s*) #0

declare i32 @gx_default_begin_page(%struct.gx_device_s*, %struct.gs_state_s*) #0

declare i32 @gx_default_end_page(%struct.gx_device_s*, i32, %struct.gs_state_s*) #0

; Function Attrs: nounwind uwtable
define internal i32 @tekink_print_page(%struct.gx_device_printer_s* %pdev, %struct._IO_FILE* %prn_stream) #1 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_printer_s*, align 8
  %prn_stream.addr = alloca %struct._IO_FILE*, align 8
  %line_size = alloca i32, align 4
  %color_line_size = alloca i32, align 4
  %scan_line = alloca i32, align 4
  %num_bytes = alloca i32, align 4
  %scan_lines = alloca i32, align 4
  %color_plane = alloca i32, align 4
  %roll_paper = alloca i32, align 4
  %out_line = alloca i32, align 4
  %micro_line = alloca i32, align 4
  %pending_micro_lines = alloca i32, align 4
  %line_blank = alloca i32, align 4
  %blank_lines = alloca i32, align 4
  %outdata = alloca i8*, align 8
  %indata1 = alloca i8*, align 8
  %bdata1 = alloca i8*, align 8
  %mdata1 = alloca i8*, align 8
  %ydata1 = alloca i8*, align 8
  %cdata1 = alloca i8*, align 8
  %indata = alloca i8*, align 8
  %bdatap = alloca i8*, align 8
  %mdatap = alloca i8*, align 8
  %ydatap = alloca i8*, align 8
  %cdatap = alloca i8*, align 8
  %bdata = alloca i8, align 1
  %mdata = alloca i8, align 1
  %ydata = alloca i8, align 1
  %cdata = alloca i8, align 1
  %mask = alloca i8, align 1
  %inbyte = alloca i8, align 1
  %indataend = alloca i8*, align 8
  %outdataend = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  %__s1_len = alloca i64, align 8
  %__s2_len = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__s1 = alloca i8*, align 8
  %__result = alloca i32, align 4
  %tmp54 = alloca i32, align 4
  store %struct.gx_device_printer_s* %pdev, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  store %struct._IO_FILE* %prn_stream, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %0 = bitcast i32* %line_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast i32* %color_line_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = bitcast i32* %scan_line to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  %3 = bitcast i32* %num_bytes to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = bitcast i32* %scan_lines to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = bitcast i32* %color_plane to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  %6 = bitcast i32* %roll_paper to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = bitcast i32* %out_line to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #2
  %8 = bitcast i32* %micro_line to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #2
  %9 = bitcast i32* %pending_micro_lines to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #2
  %10 = bitcast i32* %line_blank to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #2
  %11 = bitcast i32* %blank_lines to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #2
  %12 = bitcast i8** %outdata to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #2
  %13 = bitcast i8** %indata1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #2
  %14 = bitcast i8** %bdata1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #2
  %15 = bitcast i8** %mdata1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15) #2
  %16 = bitcast i8** %ydata1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %16) #2
  %17 = bitcast i8** %cdata1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %17) #2
  %18 = bitcast i8** %indata to i8*
  call void @llvm.lifetime.start(i64 8, i8* %18) #2
  %19 = bitcast i8** %bdatap to i8*
  call void @llvm.lifetime.start(i64 8, i8* %19) #2
  %20 = bitcast i8** %mdatap to i8*
  call void @llvm.lifetime.start(i64 8, i8* %20) #2
  %21 = bitcast i8** %ydatap to i8*
  call void @llvm.lifetime.start(i64 8, i8* %21) #2
  %22 = bitcast i8** %cdatap to i8*
  call void @llvm.lifetime.start(i64 8, i8* %22) #2
  call void @llvm.lifetime.start(i64 1, i8* %bdata) #2
  call void @llvm.lifetime.start(i64 1, i8* %mdata) #2
  call void @llvm.lifetime.start(i64 1, i8* %ydata) #2
  call void @llvm.lifetime.start(i64 1, i8* %cdata) #2
  call void @llvm.lifetime.start(i64 1, i8* %mask) #2
  call void @llvm.lifetime.start(i64 1, i8* %inbyte) #2
  %23 = bitcast i8** %indataend to i8*
  call void @llvm.lifetime.start(i64 8, i8* %23) #2
  %24 = bitcast i8** %outdataend to i8*
  call void @llvm.lifetime.start(i64 8, i8* %24) #2
  %25 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %26 = bitcast %struct.gx_device_printer_s* %25 to %struct.gx_device_s*
  %27 = bitcast %struct.gx_device_s* %26 to %struct.gx_device_printer_s*
  %28 = bitcast %struct.gx_device_printer_s* %27 to %struct.gx_device_s*
  %call = call i32 @gx_device_raster(%struct.gx_device_s* %28, i32 0) #5
  store i32 %call, i32* %line_size, align 4, !tbaa !5
  %29 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %29, i32 0, i32 13
  %30 = load i32, i32* %width, align 4, !tbaa !7
  %add = add nsw i32 %30, 7
  %div = sdiv i32 %add, 8
  store i32 %div, i32* %color_line_size, align 4, !tbaa !5
  %31 = load i32, i32* %line_size, align 4, !tbaa !5
  %32 = load i32, i32* %color_line_size, align 4, !tbaa !5
  %add1 = add nsw i32 %32, 1
  %mul = mul nsw i32 4, %add1
  %add2 = add nsw i32 %31, %mul
  %conv = sext i32 %add2 to i64
  %call3 = call noalias i8* @malloc(i64 %conv) #6
  store i8* %call3, i8** %indata1, align 8, !tbaa !1
  %33 = load i8*, i8** %indata1, align 8, !tbaa !1
  %cmp = icmp eq i8* %33, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %34 = load i8*, i8** %indata1, align 8, !tbaa !1
  %35 = load i32, i32* %line_size, align 4, !tbaa !5
  %idx.ext = sext i32 %35 to i64
  %add.ptr = getelementptr inbounds i8, i8* %34, i64 %idx.ext
  store i8* %add.ptr, i8** %indataend, align 8, !tbaa !1
  %36 = load i8*, i8** %indataend, align 8, !tbaa !1
  store i8* %36, i8** %bdata1, align 8, !tbaa !1
  %37 = load i8*, i8** %bdata1, align 8, !tbaa !1
  %38 = load i32, i32* %color_line_size, align 4, !tbaa !5
  %add5 = add nsw i32 %38, 1
  %idx.ext6 = sext i32 %add5 to i64
  %add.ptr7 = getelementptr inbounds i8, i8* %37, i64 %idx.ext6
  store i8* %add.ptr7, i8** %mdata1, align 8, !tbaa !1
  %39 = load i8*, i8** %mdata1, align 8, !tbaa !1
  %40 = load i32, i32* %color_line_size, align 4, !tbaa !5
  %add8 = add nsw i32 %40, 1
  %idx.ext9 = sext i32 %add8 to i64
  %add.ptr10 = getelementptr inbounds i8, i8* %39, i64 %idx.ext9
  store i8* %add.ptr10, i8** %ydata1, align 8, !tbaa !1
  %41 = load i8*, i8** %ydata1, align 8, !tbaa !1
  %42 = load i32, i32* %color_line_size, align 4, !tbaa !5
  %add11 = add nsw i32 %42, 1
  %idx.ext12 = sext i32 %add11 to i64
  %add.ptr13 = getelementptr inbounds i8, i8* %41, i64 %idx.ext12
  store i8* %add.ptr13, i8** %cdata1, align 8, !tbaa !1
  %43 = bitcast i64* %__s1_len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %43) #2
  %44 = bitcast i64* %__s2_len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %44) #2
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i64 1) to i64), i64 ptrtoint ([8 x i8]* @.str to i64)), i64 1), label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %if.end
  %call14 = call i64 @strlen(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0)) #7
  store i64 %call14, i64* %__s2_len, align 8, !tbaa !23
  %45 = load i64, i64* %__s2_len, align 8, !tbaa !23
  %cmp15 = icmp ult i64 %45, 4
  br i1 %cmp15, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  %46 = bitcast i8** %__s1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %46) #2
  %47 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %dname = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %47, i32 0, i32 2
  %48 = load i8*, i8** %dname, align 8, !tbaa !24
  store i8* %48, i8** %__s1, align 8, !tbaa !1
  %49 = bitcast i32* %__result to i8*
  call void @llvm.lifetime.start(i64 4, i8* %49) #2
  %50 = load i8*, i8** %__s1, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %50, i64 0
  %51 = load i8, i8* %arrayidx, align 1, !tbaa !25
  %conv19 = zext i8 %51 to i32
  %52 = load i8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), align 1, !tbaa !25
  %conv20 = zext i8 %52 to i32
  %sub = sub nsw i32 %conv19, %conv20
  store i32 %sub, i32* %__result, align 4, !tbaa !5
  %53 = load i64, i64* %__s2_len, align 8, !tbaa !23
  %cmp21 = icmp ugt i64 %53, 0
  br i1 %cmp21, label %land.lhs.true.23, label %if.end.53

land.lhs.true.23:                                 ; preds = %cond.true
  %54 = load i32, i32* %__result, align 4, !tbaa !5
  %cmp24 = icmp eq i32 %54, 0
  br i1 %cmp24, label %if.then.26, label %if.end.53

if.then.26:                                       ; preds = %land.lhs.true.23
  %55 = load i8*, i8** %__s1, align 8, !tbaa !1
  %arrayidx27 = getelementptr inbounds i8, i8* %55, i64 1
  %56 = load i8, i8* %arrayidx27, align 1, !tbaa !25
  %conv28 = zext i8 %56 to i32
  %57 = load i8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i64 1), align 1, !tbaa !25
  %conv29 = zext i8 %57 to i32
  %sub30 = sub nsw i32 %conv28, %conv29
  store i32 %sub30, i32* %__result, align 4, !tbaa !5
  %58 = load i64, i64* %__s2_len, align 8, !tbaa !23
  %cmp31 = icmp ugt i64 %58, 1
  br i1 %cmp31, label %land.lhs.true.33, label %if.end.52

land.lhs.true.33:                                 ; preds = %if.then.26
  %59 = load i32, i32* %__result, align 4, !tbaa !5
  %cmp34 = icmp eq i32 %59, 0
  br i1 %cmp34, label %if.then.36, label %if.end.52

if.then.36:                                       ; preds = %land.lhs.true.33
  %60 = load i8*, i8** %__s1, align 8, !tbaa !1
  %arrayidx37 = getelementptr inbounds i8, i8* %60, i64 2
  %61 = load i8, i8* %arrayidx37, align 1, !tbaa !25
  %conv38 = zext i8 %61 to i32
  %62 = load i8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i64 2), align 1, !tbaa !25
  %conv39 = zext i8 %62 to i32
  %sub40 = sub nsw i32 %conv38, %conv39
  store i32 %sub40, i32* %__result, align 4, !tbaa !5
  %63 = load i64, i64* %__s2_len, align 8, !tbaa !23
  %cmp41 = icmp ugt i64 %63, 2
  br i1 %cmp41, label %land.lhs.true.43, label %if.end.51

land.lhs.true.43:                                 ; preds = %if.then.36
  %64 = load i32, i32* %__result, align 4, !tbaa !5
  %cmp44 = icmp eq i32 %64, 0
  br i1 %cmp44, label %if.then.46, label %if.end.51

if.then.46:                                       ; preds = %land.lhs.true.43
  %65 = load i8*, i8** %__s1, align 8, !tbaa !1
  %arrayidx47 = getelementptr inbounds i8, i8* %65, i64 3
  %66 = load i8, i8* %arrayidx47, align 1, !tbaa !25
  %conv48 = zext i8 %66 to i32
  %67 = load i8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i64 3), align 1, !tbaa !25
  %conv49 = zext i8 %67 to i32
  %sub50 = sub nsw i32 %conv48, %conv49
  store i32 %sub50, i32* %__result, align 4, !tbaa !5
  br label %if.end.51

if.end.51:                                        ; preds = %if.then.46, %land.lhs.true.43, %if.then.36
  br label %if.end.52

if.end.52:                                        ; preds = %if.end.51, %land.lhs.true.33, %if.then.26
  br label %if.end.53

if.end.53:                                        ; preds = %if.end.52, %land.lhs.true.23, %cond.true
  %68 = load i32, i32* %__result, align 4, !tbaa !5
  store i32 %68, i32* %tmp54, !tbaa !5
  %69 = bitcast i32* %__result to i8*
  call void @llvm.lifetime.end(i64 4, i8* %69) #2
  %70 = bitcast i8** %__s1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %70) #2
  %71 = load i32, i32* %tmp54, !tbaa !5
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true, %if.end
  %72 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %dname55 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %72, i32 0, i32 2
  %73 = load i8*, i8** %dname55, align 8, !tbaa !24
  %call56 = call i32 @strcmp(i8* %73, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0)) #6
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end.53
  %cond = phi i32 [ %71, %if.end.53 ], [ %call56, %cond.false ]
  store i32 %cond, i32* %tmp, !tbaa !5
  %74 = bitcast i64* %__s2_len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %74) #2
  %75 = bitcast i64* %__s1_len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %75) #2
  %76 = load i32, i32* %tmp, !tbaa !5
  %tobool = icmp ne i32 %76, 0
  %lnot = xor i1 %tobool, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, i32* %roll_paper, align 4, !tbaa !5
  store i32 0, i32* %out_line, align 4, !tbaa !5
  store i32 0, i32* %blank_lines, align 4, !tbaa !5
  %77 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %77, i32 0, i32 14
  %78 = load i32, i32* %height, align 4, !tbaa !26
  store i32 %78, i32* %scan_lines, align 4, !tbaa !5
  store i32 0, i32* %scan_line, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc.181, %cond.end
  %79 = load i32, i32* %scan_line, align 4, !tbaa !5
  %80 = load i32, i32* %scan_lines, align 4, !tbaa !5
  %cmp57 = icmp slt i32 %79, %80
  br i1 %cmp57, label %for.body, label %for.end.183

for.body:                                         ; preds = %for.cond
  %81 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %82 = load i32, i32* %scan_line, align 4, !tbaa !5
  %83 = load i8*, i8** %indata1, align 8, !tbaa !1
  %84 = load i32, i32* %line_size, align 4, !tbaa !5
  %call59 = call i32 @gdev_prn_copy_scan_lines(%struct.gx_device_printer_s* %81, i32 %82, i8* %83, i32 %84) #5
  %85 = load i8*, i8** %bdata1, align 8, !tbaa !1
  %add.ptr60 = getelementptr inbounds i8, i8* %85, i64 1
  store i8* %add.ptr60, i8** %bdatap, align 8, !tbaa !1
  %86 = load i8*, i8** %mdata1, align 8, !tbaa !1
  %add.ptr61 = getelementptr inbounds i8, i8* %86, i64 1
  store i8* %add.ptr61, i8** %mdatap, align 8, !tbaa !1
  %87 = load i8*, i8** %ydata1, align 8, !tbaa !1
  %add.ptr62 = getelementptr inbounds i8, i8* %87, i64 1
  store i8* %add.ptr62, i8** %ydatap, align 8, !tbaa !1
  %88 = load i8*, i8** %cdata1, align 8, !tbaa !1
  %add.ptr63 = getelementptr inbounds i8, i8* %88, i64 1
  store i8* %add.ptr63, i8** %cdatap, align 8, !tbaa !1
  store i8 0, i8* %bdata, align 1, !tbaa !25
  store i8 0, i8* %mdata, align 1, !tbaa !25
  store i8 0, i8* %cdata, align 1, !tbaa !25
  store i8 0, i8* %ydata, align 1, !tbaa !25
  store i8 -128, i8* %mask, align 1, !tbaa !25
  %89 = load i8*, i8** %indataend, align 8, !tbaa !1
  %90 = load i32, i32* %color_line_size, align 4, !tbaa !5
  %add64 = add nsw i32 %90, 1
  %mul65 = mul nsw i32 4, %add64
  %conv66 = sext i32 %mul65 to i64
  %call67 = call i8* @memset(i8* %89, i32 0, i64 %conv66) #6
  %91 = load i8*, i8** %indata1, align 8, !tbaa !1
  store i8* %91, i8** %indata, align 8, !tbaa !1
  br label %for.cond.68

for.cond.68:                                      ; preds = %for.inc, %for.body
  %92 = load i8*, i8** %indata, align 8, !tbaa !1
  %93 = load i8*, i8** %indataend, align 8, !tbaa !1
  %cmp69 = icmp ult i8* %92, %93
  br i1 %cmp69, label %for.body.71, label %for.end

for.body.71:                                      ; preds = %for.cond.68
  %94 = load i8*, i8** %indata, align 8, !tbaa !1
  %95 = load i8, i8* %94, align 1, !tbaa !25
  store i8 %95, i8* %inbyte, align 1, !tbaa !25
  %96 = load i8, i8* %inbyte, align 1, !tbaa !25
  %conv72 = zext i8 %96 to i32
  %and = and i32 %conv72, 1
  %tobool73 = icmp ne i32 %and, 0
  br i1 %tobool73, label %if.then.74, label %if.end.78

if.then.74:                                       ; preds = %for.body.71
  %97 = load i8, i8* %mask, align 1, !tbaa !25
  %conv75 = zext i8 %97 to i32
  %98 = load i8, i8* %bdata, align 1, !tbaa !25
  %conv76 = zext i8 %98 to i32
  %or = or i32 %conv76, %conv75
  %conv77 = trunc i32 %or to i8
  store i8 %conv77, i8* %bdata, align 1, !tbaa !25
  br label %if.end.78

if.end.78:                                        ; preds = %if.then.74, %for.body.71
  %99 = load i8, i8* %inbyte, align 1, !tbaa !25
  %conv79 = zext i8 %99 to i32
  %and80 = and i32 %conv79, 2
  %tobool81 = icmp ne i32 %and80, 0
  br i1 %tobool81, label %if.then.82, label %if.end.87

if.then.82:                                       ; preds = %if.end.78
  %100 = load i8, i8* %mask, align 1, !tbaa !25
  %conv83 = zext i8 %100 to i32
  %101 = load i8, i8* %mdata, align 1, !tbaa !25
  %conv84 = zext i8 %101 to i32
  %or85 = or i32 %conv84, %conv83
  %conv86 = trunc i32 %or85 to i8
  store i8 %conv86, i8* %mdata, align 1, !tbaa !25
  br label %if.end.87

if.end.87:                                        ; preds = %if.then.82, %if.end.78
  %102 = load i8, i8* %inbyte, align 1, !tbaa !25
  %conv88 = zext i8 %102 to i32
  %and89 = and i32 %conv88, 4
  %tobool90 = icmp ne i32 %and89, 0
  br i1 %tobool90, label %if.then.91, label %if.end.96

if.then.91:                                       ; preds = %if.end.87
  %103 = load i8, i8* %mask, align 1, !tbaa !25
  %conv92 = zext i8 %103 to i32
  %104 = load i8, i8* %ydata, align 1, !tbaa !25
  %conv93 = zext i8 %104 to i32
  %or94 = or i32 %conv93, %conv92
  %conv95 = trunc i32 %or94 to i8
  store i8 %conv95, i8* %ydata, align 1, !tbaa !25
  br label %if.end.96

if.end.96:                                        ; preds = %if.then.91, %if.end.87
  %105 = load i8, i8* %inbyte, align 1, !tbaa !25
  %conv97 = zext i8 %105 to i32
  %and98 = and i32 %conv97, 8
  %tobool99 = icmp ne i32 %and98, 0
  br i1 %tobool99, label %if.then.100, label %if.end.105

if.then.100:                                      ; preds = %if.end.96
  %106 = load i8, i8* %mask, align 1, !tbaa !25
  %conv101 = zext i8 %106 to i32
  %107 = load i8, i8* %cdata, align 1, !tbaa !25
  %conv102 = zext i8 %107 to i32
  %or103 = or i32 %conv102, %conv101
  %conv104 = trunc i32 %or103 to i8
  store i8 %conv104, i8* %cdata, align 1, !tbaa !25
  br label %if.end.105

if.end.105:                                       ; preds = %if.then.100, %if.end.96
  %108 = load i8, i8* %mask, align 1, !tbaa !25
  %conv106 = zext i8 %108 to i32
  %shr = ashr i32 %conv106, 1
  %conv107 = trunc i32 %shr to i8
  store i8 %conv107, i8* %mask, align 1, !tbaa !25
  %109 = load i8, i8* %mask, align 1, !tbaa !25
  %tobool108 = icmp ne i8 %109, 0
  br i1 %tobool108, label %if.end.113, label %if.then.109

if.then.109:                                      ; preds = %if.end.105
  %110 = load i8, i8* %bdata, align 1, !tbaa !25
  %111 = load i8*, i8** %bdatap, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %111, i32 1
  store i8* %incdec.ptr, i8** %bdatap, align 8, !tbaa !1
  store i8 %110, i8* %111, align 1, !tbaa !25
  %112 = load i8, i8* %mdata, align 1, !tbaa !25
  %113 = load i8*, i8** %mdatap, align 8, !tbaa !1
  %incdec.ptr110 = getelementptr inbounds i8, i8* %113, i32 1
  store i8* %incdec.ptr110, i8** %mdatap, align 8, !tbaa !1
  store i8 %112, i8* %113, align 1, !tbaa !25
  %114 = load i8, i8* %cdata, align 1, !tbaa !25
  %115 = load i8*, i8** %cdatap, align 8, !tbaa !1
  %incdec.ptr111 = getelementptr inbounds i8, i8* %115, i32 1
  store i8* %incdec.ptr111, i8** %cdatap, align 8, !tbaa !1
  store i8 %114, i8* %115, align 1, !tbaa !25
  %116 = load i8, i8* %ydata, align 1, !tbaa !25
  %117 = load i8*, i8** %ydatap, align 8, !tbaa !1
  %incdec.ptr112 = getelementptr inbounds i8, i8* %117, i32 1
  store i8* %incdec.ptr112, i8** %ydatap, align 8, !tbaa !1
  store i8 %116, i8* %117, align 1, !tbaa !25
  store i8 0, i8* %bdata, align 1, !tbaa !25
  store i8 0, i8* %mdata, align 1, !tbaa !25
  store i8 0, i8* %cdata, align 1, !tbaa !25
  store i8 0, i8* %ydata, align 1, !tbaa !25
  store i8 -128, i8* %mask, align 1, !tbaa !25
  br label %if.end.113

if.end.113:                                       ; preds = %if.then.109, %if.end.105
  br label %for.inc

for.inc:                                          ; preds = %if.end.113
  %118 = load i8*, i8** %indata, align 8, !tbaa !1
  %incdec.ptr114 = getelementptr inbounds i8, i8* %118, i32 1
  store i8* %incdec.ptr114, i8** %indata, align 8, !tbaa !1
  br label %for.cond.68

for.end:                                          ; preds = %for.cond.68
  %119 = load i8, i8* %mask, align 1, !tbaa !25
  %conv115 = zext i8 %119 to i32
  %cmp116 = icmp ne i32 %conv115, 128
  br i1 %cmp116, label %if.then.118, label %if.end.119

if.then.118:                                      ; preds = %for.end
  %120 = load i8, i8* %bdata, align 1, !tbaa !25
  %121 = load i8*, i8** %bdatap, align 8, !tbaa !1
  store i8 %120, i8* %121, align 1, !tbaa !25
  %122 = load i8, i8* %mdata, align 1, !tbaa !25
  %123 = load i8*, i8** %mdatap, align 8, !tbaa !1
  store i8 %122, i8* %123, align 1, !tbaa !25
  %124 = load i8, i8* %cdata, align 1, !tbaa !25
  %125 = load i8*, i8** %cdatap, align 8, !tbaa !1
  store i8 %124, i8* %125, align 1, !tbaa !25
  %126 = load i8, i8* %ydata, align 1, !tbaa !25
  %127 = load i8*, i8** %ydatap, align 8, !tbaa !1
  store i8 %126, i8* %127, align 1, !tbaa !25
  br label %if.end.119

if.end.119:                                       ; preds = %if.then.118, %for.end
  store i32 1, i32* %line_blank, align 4, !tbaa !5
  store i32 0, i32* %color_plane, align 4, !tbaa !5
  br label %for.cond.120

for.cond.120:                                     ; preds = %for.inc.162, %if.end.119
  %128 = load i32, i32* %color_plane, align 4, !tbaa !5
  %cmp121 = icmp slt i32 %128, 4
  br i1 %cmp121, label %for.body.123, label %for.end.164

for.body.123:                                     ; preds = %for.cond.120
  %129 = load i8*, i8** %indataend, align 8, !tbaa !1
  %130 = load i32, i32* %color_plane, align 4, !tbaa !5
  %131 = load i32, i32* %color_line_size, align 4, !tbaa !5
  %add124 = add nsw i32 %131, 1
  %mul125 = mul nsw i32 %130, %add124
  %idx.ext126 = sext i32 %mul125 to i64
  %add.ptr127 = getelementptr inbounds i8, i8* %129, i64 %idx.ext126
  store i8* %add.ptr127, i8** %outdata, align 8, !tbaa !1
  %132 = load i8*, i8** %outdata, align 8, !tbaa !1
  %133 = load i32, i32* %color_line_size, align 4, !tbaa !5
  %idx.ext128 = sext i32 %133 to i64
  %add.ptr129 = getelementptr inbounds i8, i8* %132, i64 %idx.ext128
  store i8* %add.ptr129, i8** %outdataend, align 8, !tbaa !1
  %134 = load i8*, i8** %outdata, align 8, !tbaa !1
  store i8 -1, i8* %134, align 1, !tbaa !25
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.body.123
  %135 = load i8*, i8** %outdataend, align 8, !tbaa !1
  %136 = load i8, i8* %135, align 1, !tbaa !25
  %tobool130 = icmp ne i8 %136, 0
  %lnot131 = xor i1 %tobool130, true
  br i1 %lnot131, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %137 = load i8*, i8** %outdataend, align 8, !tbaa !1
  %incdec.ptr133 = getelementptr inbounds i8, i8* %137, i32 -1
  store i8* %incdec.ptr133, i8** %outdataend, align 8, !tbaa !1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %138 = load i8*, i8** %outdataend, align 8, !tbaa !1
  %139 = load i8*, i8** %outdata, align 8, !tbaa !1
  %sub.ptr.lhs.cast = ptrtoint i8* %138 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %139 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv134 = trunc i64 %sub.ptr.sub to i32
  store i32 %conv134, i32* %num_bytes, align 4, !tbaa !5
  %140 = load i32, i32* %num_bytes, align 4, !tbaa !5
  %cmp135 = icmp ne i32 %140, 0
  br i1 %cmp135, label %if.then.137, label %if.end.161

if.then.137:                                      ; preds = %while.end
  store i32 0, i32* %line_blank, align 4, !tbaa !5
  %141 = load i32, i32* %blank_lines, align 4, !tbaa !5
  %tobool138 = icmp ne i32 %141, 0
  br i1 %tobool138, label %if.then.139, label %if.end.153

if.then.139:                                      ; preds = %if.then.137
  %142 = load i32, i32* %out_line, align 4, !tbaa !5
  %143 = load i32, i32* %blank_lines, align 4, !tbaa !5
  %add140 = add nsw i32 %142, %143
  %add141 = add nsw i32 %add140, 1
  %div142 = sdiv i32 %add141, 4
  %144 = load i32, i32* %out_line, align 4, !tbaa !5
  %div143 = sdiv i32 %144, 4
  %sub144 = sub nsw i32 %div142, %div143
  store i32 %sub144, i32* %pending_micro_lines, align 4, !tbaa !5
  store i32 0, i32* %micro_line, align 4, !tbaa !5
  br label %for.cond.145

for.cond.145:                                     ; preds = %for.inc.150, %if.then.139
  %145 = load i32, i32* %micro_line, align 4, !tbaa !5
  %146 = load i32, i32* %pending_micro_lines, align 4, !tbaa !5
  %cmp146 = icmp slt i32 %145, %146
  br i1 %cmp146, label %for.body.148, label %for.end.151

for.body.148:                                     ; preds = %for.cond.145
  %147 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call149 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0), %struct._IO_FILE* %147) #5
  br label %for.inc.150

for.inc.150:                                      ; preds = %for.body.148
  %148 = load i32, i32* %micro_line, align 4, !tbaa !5
  %inc = add nsw i32 %148, 1
  store i32 %inc, i32* %micro_line, align 4, !tbaa !5
  br label %for.cond.145

for.end.151:                                      ; preds = %for.cond.145
  %149 = load i32, i32* %blank_lines, align 4, !tbaa !5
  %150 = load i32, i32* %out_line, align 4, !tbaa !5
  %add152 = add nsw i32 %150, %149
  store i32 %add152, i32* %out_line, align 4, !tbaa !5
  store i32 0, i32* %blank_lines, align 4, !tbaa !5
  br label %if.end.153

if.end.153:                                       ; preds = %for.end.151, %if.then.137
  %151 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %152 = load i32, i32* %out_line, align 4, !tbaa !5
  %rem = srem i32 %152, 4
  %add154 = add nsw i32 48, %rem
  %153 = load i32, i32* %color_plane, align 4, !tbaa !5
  %mul155 = mul nsw i32 4, %153
  %add156 = add nsw i32 %add154, %mul155
  %154 = load i32, i32* %num_bytes, align 4, !tbaa !5
  %call157 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %151, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), i32 %add156, i32 %154) #5
  %155 = load i8*, i8** %outdata, align 8, !tbaa !1
  %add.ptr158 = getelementptr inbounds i8, i8* %155, i64 1
  %156 = load i32, i32* %num_bytes, align 4, !tbaa !5
  %conv159 = sext i32 %156 to i64
  %157 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call160 = call i64 @fwrite(i8* %add.ptr158, i64 1, i64 %conv159, %struct._IO_FILE* %157) #5
  br label %if.end.161

if.end.161:                                       ; preds = %if.end.153, %while.end
  br label %for.inc.162

for.inc.162:                                      ; preds = %if.end.161
  %158 = load i32, i32* %color_plane, align 4, !tbaa !5
  %inc163 = add nsw i32 %158, 1
  store i32 %inc163, i32* %color_plane, align 4, !tbaa !5
  br label %for.cond.120

for.end.164:                                      ; preds = %for.cond.120
  %159 = load i32, i32* %line_blank, align 4, !tbaa !5
  %tobool165 = icmp ne i32 %159, 0
  br i1 %tobool165, label %land.lhs.true.166, label %if.else

land.lhs.true.166:                                ; preds = %for.end.164
  %160 = load i32, i32* %roll_paper, align 4, !tbaa !5
  %tobool167 = icmp ne i32 %160, 0
  br i1 %tobool167, label %if.then.168, label %if.else

if.then.168:                                      ; preds = %land.lhs.true.166
  %161 = load i32, i32* %out_line, align 4, !tbaa !5
  %tobool169 = icmp ne i32 %161, 0
  br i1 %tobool169, label %if.then.170, label %if.end.172

if.then.170:                                      ; preds = %if.then.168
  %162 = load i32, i32* %blank_lines, align 4, !tbaa !5
  %inc171 = add nsw i32 %162, 1
  store i32 %inc171, i32* %blank_lines, align 4, !tbaa !5
  br label %if.end.172

if.end.172:                                       ; preds = %if.then.170, %if.then.168
  br label %if.end.180

if.else:                                          ; preds = %land.lhs.true.166, %for.end.164
  %163 = load i32, i32* %out_line, align 4, !tbaa !5
  %rem173 = srem i32 %163, 4
  %cmp174 = icmp eq i32 %rem173, 3
  br i1 %cmp174, label %if.then.176, label %if.end.178

if.then.176:                                      ; preds = %if.else
  %164 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call177 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0), %struct._IO_FILE* %164) #5
  br label %if.end.178

if.end.178:                                       ; preds = %if.then.176, %if.else
  %165 = load i32, i32* %out_line, align 4, !tbaa !5
  %inc179 = add nsw i32 %165, 1
  store i32 %inc179, i32* %out_line, align 4, !tbaa !5
  br label %if.end.180

if.end.180:                                       ; preds = %if.end.178, %if.end.172
  br label %for.inc.181

for.inc.181:                                      ; preds = %if.end.180
  %166 = load i32, i32* %scan_line, align 4, !tbaa !5
  %inc182 = add nsw i32 %166, 1
  store i32 %inc182, i32* %scan_line, align 4, !tbaa !5
  br label %for.cond

for.end.183:                                      ; preds = %for.cond
  %167 = load i32, i32* %out_line, align 4, !tbaa !5
  %rem184 = srem i32 %167, 4
  %tobool185 = icmp ne i32 %rem184, 0
  br i1 %tobool185, label %if.then.186, label %if.end.188

if.then.186:                                      ; preds = %for.end.183
  %168 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call187 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0), %struct._IO_FILE* %168) #5
  br label %if.end.188

if.end.188:                                       ; preds = %if.then.186, %for.end.183
  %169 = load i32, i32* %roll_paper, align 4, !tbaa !5
  %tobool189 = icmp ne i32 %169, 0
  br i1 %tobool189, label %if.then.190, label %if.else.192

if.then.190:                                      ; preds = %if.end.188
  %170 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call191 = call i32 @fputs(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0), %struct._IO_FILE* %170) #5
  br label %if.end.194

if.else.192:                                      ; preds = %if.end.188
  %171 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call193 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0), %struct._IO_FILE* %171) #5
  br label %if.end.194

if.end.194:                                       ; preds = %if.else.192, %if.then.190
  %172 = load i8*, i8** %indata1, align 8, !tbaa !1
  call void @free(i8* %172) #6
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.194, %if.then
  %173 = bitcast i8** %outdataend to i8*
  call void @llvm.lifetime.end(i64 8, i8* %173) #2
  %174 = bitcast i8** %indataend to i8*
  call void @llvm.lifetime.end(i64 8, i8* %174) #2
  call void @llvm.lifetime.end(i64 1, i8* %inbyte) #2
  call void @llvm.lifetime.end(i64 1, i8* %mask) #2
  call void @llvm.lifetime.end(i64 1, i8* %cdata) #2
  call void @llvm.lifetime.end(i64 1, i8* %ydata) #2
  call void @llvm.lifetime.end(i64 1, i8* %mdata) #2
  call void @llvm.lifetime.end(i64 1, i8* %bdata) #2
  %175 = bitcast i8** %cdatap to i8*
  call void @llvm.lifetime.end(i64 8, i8* %175) #2
  %176 = bitcast i8** %ydatap to i8*
  call void @llvm.lifetime.end(i64 8, i8* %176) #2
  %177 = bitcast i8** %mdatap to i8*
  call void @llvm.lifetime.end(i64 8, i8* %177) #2
  %178 = bitcast i8** %bdatap to i8*
  call void @llvm.lifetime.end(i64 8, i8* %178) #2
  %179 = bitcast i8** %indata to i8*
  call void @llvm.lifetime.end(i64 8, i8* %179) #2
  %180 = bitcast i8** %cdata1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %180) #2
  %181 = bitcast i8** %ydata1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %181) #2
  %182 = bitcast i8** %mdata1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %182) #2
  %183 = bitcast i8** %bdata1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %183) #2
  %184 = bitcast i8** %indata1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %184) #2
  %185 = bitcast i8** %outdata to i8*
  call void @llvm.lifetime.end(i64 8, i8* %185) #2
  %186 = bitcast i32* %blank_lines to i8*
  call void @llvm.lifetime.end(i64 4, i8* %186) #2
  %187 = bitcast i32* %line_blank to i8*
  call void @llvm.lifetime.end(i64 4, i8* %187) #2
  %188 = bitcast i32* %pending_micro_lines to i8*
  call void @llvm.lifetime.end(i64 4, i8* %188) #2
  %189 = bitcast i32* %micro_line to i8*
  call void @llvm.lifetime.end(i64 4, i8* %189) #2
  %190 = bitcast i32* %out_line to i8*
  call void @llvm.lifetime.end(i64 4, i8* %190) #2
  %191 = bitcast i32* %roll_paper to i8*
  call void @llvm.lifetime.end(i64 4, i8* %191) #2
  %192 = bitcast i32* %color_plane to i8*
  call void @llvm.lifetime.end(i64 4, i8* %192) #2
  %193 = bitcast i32* %scan_lines to i8*
  call void @llvm.lifetime.end(i64 4, i8* %193) #2
  %194 = bitcast i32* %num_bytes to i8*
  call void @llvm.lifetime.end(i64 4, i8* %194) #2
  %195 = bitcast i32* %scan_line to i8*
  call void @llvm.lifetime.end(i64 4, i8* %195) #2
  %196 = bitcast i32* %color_line_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %196) #2
  %197 = bitcast i32* %line_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %197) #2
  %198 = load i32, i32* %retval
  ret i32 %198
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

declare i32 @gdev_prn_bg_output_page(%struct.gx_device_s*, i32, i32) #0

declare i32 @gdev_prn_close(%struct.gx_device_s*) #0

; Function Attrs: nounwind uwtable
define internal i64 @tekink_map_rgb_color(%struct.gx_device_s* %dev, i16* %cv) #1 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %cv.addr = alloca i16*, align 8
  %r = alloca i16, align 2
  %g = alloca i16, align 2
  %b = alloca i16, align 2
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i16* %cv, i16** %cv.addr, align 8, !tbaa !1
  %0 = bitcast i16* %r to i8*
  call void @llvm.lifetime.start(i64 2, i8* %0) #2
  %1 = load i16*, i16** %cv.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %1, i64 0
  %2 = load i16, i16* %arrayidx, align 2, !tbaa !27
  store i16 %2, i16* %r, align 2, !tbaa !27
  %3 = bitcast i16* %g to i8*
  call void @llvm.lifetime.start(i64 2, i8* %3) #2
  %4 = load i16*, i16** %cv.addr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds i16, i16* %4, i64 1
  %5 = load i16, i16* %arrayidx1, align 2, !tbaa !27
  store i16 %5, i16* %g, align 2, !tbaa !27
  %6 = bitcast i16* %b to i8*
  call void @llvm.lifetime.start(i64 2, i8* %6) #2
  %7 = load i16*, i16** %cv.addr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds i16, i16* %7, i64 2
  %8 = load i16, i16* %arrayidx2, align 2, !tbaa !27
  store i16 %8, i16* %b, align 2, !tbaa !27
  %9 = load i16, i16* %b, align 2, !tbaa !27
  %conv = zext i16 %9 to i32
  %cmp = icmp sgt i32 %conv, 32767
  %conv3 = zext i1 %cmp to i32
  %shl = shl i32 %conv3, 2
  %10 = load i16, i16* %g, align 2, !tbaa !27
  %conv4 = zext i16 %10 to i32
  %cmp5 = icmp sgt i32 %conv4, 32767
  %conv6 = zext i1 %cmp5 to i32
  %shl7 = shl i32 %conv6, 1
  %add = add nsw i32 %shl, %shl7
  %11 = load i16, i16* %r, align 2, !tbaa !27
  %conv8 = zext i16 %11 to i32
  %cmp9 = icmp sgt i32 %conv8, 32767
  %conv10 = zext i1 %cmp9 to i32
  %add11 = add nsw i32 %add, %conv10
  %and = and i32 %add11, 7
  %idxprom = sext i32 %and to i64
  %arrayidx12 = getelementptr inbounds [8 x i64], [8 x i64]* @rgb_to_index, i32 0, i64 %idxprom
  %12 = load i64, i64* %arrayidx12, align 8, !tbaa !23
  %13 = bitcast i16* %b to i8*
  call void @llvm.lifetime.end(i64 2, i8* %13) #2
  %14 = bitcast i16* %g to i8*
  call void @llvm.lifetime.end(i64 2, i8* %14) #2
  %15 = bitcast i16* %r to i8*
  call void @llvm.lifetime.end(i64 2, i8* %15) #2
  ret i64 %12
}

; Function Attrs: nounwind uwtable
define internal i32 @tekink_map_color_rgb(%struct.gx_device_s* %dev, i64 %color, i16* %prgb) #1 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %color.addr = alloca i64, align 8
  %prgb.addr = alloca i16*, align 8
  %c = alloca i16, align 2
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i64 %color, i64* %color.addr, align 8, !tbaa !23
  store i16* %prgb, i16** %prgb.addr, align 8, !tbaa !1
  %0 = bitcast i16* %c to i8*
  call void @llvm.lifetime.start(i64 2, i8* %0) #2
  %1 = load i64, i64* %color.addr, align 8, !tbaa !23
  %conv = trunc i64 %1 to i16
  store i16 %conv, i16* %c, align 2, !tbaa !27
  %2 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  %3 = load i16, i16* %c, align 2, !tbaa !27
  %conv1 = zext i16 %3 to i32
  %cmp = icmp sgt i32 %conv1, 15
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = load i16, i16* %c, align 2, !tbaa !27
  %idxprom = zext i16 %4 to i64
  %arrayidx = getelementptr inbounds [16 x [3 x i16]], [16 x [3 x i16]]* @index_to_rgb, i32 0, i64 %idxprom
  %arrayidx3 = getelementptr inbounds [3 x i16], [3 x i16]* %arrayidx, i32 0, i64 0
  %5 = load i16, i16* %arrayidx3, align 2, !tbaa !27
  %conv4 = zext i16 %5 to i32
  %cmp5 = icmp eq i32 %conv4, 2
  br i1 %cmp5, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.8:                                         ; preds = %if.end
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.8
  %6 = load i32, i32* %i, align 4, !tbaa !5
  %cmp9 = icmp slt i32 %6, 3
  br i1 %cmp9, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom11 = sext i32 %7 to i64
  %8 = load i16, i16* %c, align 2, !tbaa !27
  %idxprom12 = zext i16 %8 to i64
  %arrayidx13 = getelementptr inbounds [16 x [3 x i16]], [16 x [3 x i16]]* @index_to_rgb, i32 0, i64 %idxprom12
  %arrayidx14 = getelementptr inbounds [3 x i16], [3 x i16]* %arrayidx13, i32 0, i64 %idxprom11
  %9 = load i16, i16* %arrayidx14, align 2, !tbaa !27
  %10 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom15 = sext i32 %10 to i64
  %11 = load i16*, i16** %prgb.addr, align 8, !tbaa !1
  %arrayidx16 = getelementptr inbounds i16, i16* %11, i64 %idxprom15
  store i16 %9, i16* %arrayidx16, align 2, !tbaa !27
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %12 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then.7, %if.then
  %13 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %13) #2
  %14 = bitcast i16* %c to i8*
  call void @llvm.lifetime.end(i64 2, i8* %14) #2
  %15 = load i32, i32* %retval
  ret i32 %15
}

declare i32 @gdev_prn_get_params(%struct.gx_device_s*, %struct.gs_param_list_s*) #0

declare i32 @gdev_prn_put_params(%struct.gx_device_s*, %struct.gs_param_list_s*) #0

declare %struct.gx_device_s* @gx_page_device_get_page_device(%struct.gx_device_s*) #0

declare i32 @gdev_prn_dev_spec_op(%struct.gx_device_s*, i32, i8*, i32) #0

declare i32 @gx_default_get_profile(%struct.gx_device_s*, %struct.cmm_dev_profile_s**) #0

declare void @gx_default_set_graphics_type_tag(%struct.gx_device_s*, i32) #0

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

declare i32 @gx_device_raster(%struct.gx_device_s*, i32) #0

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #3

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

; Function Attrs: nounwind
declare i32 @strcmp(i8*, i8*) #3

declare i32 @gdev_prn_copy_scan_lines(%struct.gx_device_printer_s*, i32, i8*, i32) #0

; Function Attrs: nounwind
declare i8* @memset(i8*, i32, i64) #3

declare i32 @fputs(i8*, %struct._IO_FILE*) #0

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #0

declare i64 @fwrite(i8*, i64, i64, %struct._IO_FILE*) #0

; Function Attrs: nounwind
declare void @free(i8*) #3

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
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !3, i64 0}
!7 = !{!8, !6, i64 832}
!8 = !{!"gx_device_printer_s", !6, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !6, i64 40, !2, i64 48, !9, i64 56, !6, i64 80, !6, i64 84, !6, i64 88, !11, i64 96, !14, i64 816, !6, i64 832, !6, i64 836, !6, i64 840, !6, i64 844, !6, i64 848, !6, i64 852, !3, i64 856, !3, i64 864, !6, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !10, i64 928, !10, i64 936, !6, i64 944, !6, i64 948, !6, i64 952, !6, i64 956, !6, i64 960, !10, i64 968, !10, i64 976, !15, i64 984, !6, i64 1052, !6, i64 1056, !16, i64 1064, !2, i64 1104, !3, i64 1112, !18, i64 1120, !19, i64 1144, !3, i64 1728, !20, i64 12968, !3, i64 13056, !6, i64 17152, !6, i64 17156, !6, i64 17160, !6, i64 17164, !6, i64 17168, !6, i64 17172, !2, i64 17176, !10, i64 17184, !2, i64 17192, !2, i64 17200, !2, i64 17208, !2, i64 17216, !2, i64 17224, !6, i64 17232, !2, i64 17240, !6, i64 17248, !6, i64 17252, !22, i64 17256, !6, i64 17288, !2, i64 17296, !19, i64 17304, !19, i64 17888}
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
!23 = !{!10, !10, i64 0}
!24 = !{!8, !2, i64 16}
!25 = !{!3, !3, i64 0}
!26 = !{!8, !6, i64 836}
!27 = !{!12, !12, i64 0}
