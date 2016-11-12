; ModuleID = './gdevmd2k.bc'
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
%struct.gx_device_alps_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [11240 x i8], %struct.gx_printer_device_procs_s, [4096 x i8], i32, i32, i32, i32, i32, i32, %struct._IO_FILE*, i64, i8*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s*, i32)*, %struct.gx_page_queue_s*, i32, %struct.gx_device_printer_s*, i32, i32, %struct.bg_print_s, i32, %struct.gx_saved_pages_list_s*, %struct.gx_device_procs_s, %struct.gx_device_procs_s, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@alps_procs = internal global %struct.gx_device_procs_s { i32 (%struct.gx_device_s*)* @alps_open, void (%struct.gx_device_s*, %struct.gs_matrix_s*)* @gx_default_get_initial_matrix, i32 (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i32, i32)* @gdev_prn_output_page, i32 (%struct.gx_device_s*)* @gdev_prn_close, i64 (%struct.gx_device_s*, i16*)* null, i32 (%struct.gx_device_s*, i64, i16*)* @alps_map_color_rgb, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* null, i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* null, i32 (%struct.gx_device_s*, i32, i8*, i8**)* null, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @alps_get_params, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @alps_put_params, i64 (%struct.gx_device_s*, i16*)* @alps_map_cmyk_color, %struct.gx_xfont_procs_s* (%struct.gx_device_s*)* null, %struct.gx_device_s* (%struct.gx_device_s*)* null, i64 (%struct.gx_device_s*, i16, i16, i16, i16)* null, %struct.gx_device_s* (%struct.gx_device_s*)* @gx_page_device_get_page_device, i32 (%struct.gx_device_s*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)* null, i32 (%struct.gx_device_s*, i32, i32*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* null, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)* null, i32 (%struct.gx_device_s*, i64, i16*)* null, i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)* null, i32 (%struct.gx_device_s*, %struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_transparency_group_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gx_transparency_mask_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32)* null, i64 (%struct.gx_device_s*, i16*)* null, i32 (%struct.gx_device_s*, i64, i16*)* null, i32 (%struct.gx_device_s*, i64, %struct.gs_pattern1_instance_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* null, %struct.gs_devn_params_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i8*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)* null, void (%struct.gx_device_s*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_process_page_options_s*)* null }, align 8
@.str = private unnamed_addr constant [5 x i8] c"md2k\00", align 1
@st_device_printer = external constant %struct.gs_memory_struct_type_s, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"DeviceCMYK\00", align 1
@gs_md2k_device = global { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [11240 x i8], { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* }, [4096 x i8], i32, i32, i32, i32, i32, i32, %struct._IO_FILE*, i64, i8*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s*, i32)*, %struct.gx_page_queue_s*, i32, %struct.gx_device_printer_s*, i32, i32, %struct.bg_print_s, i32, %struct.gx_saved_pages_list_s*, %struct.gx_device_procs_s, %struct.gx_device_procs_s, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 } { i32 18512, %struct.gx_device_procs_s* @alps_procs, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), %struct.gs_memory_s* null, %struct.gs_memory_struct_type_s* @st_device_printer, i32 0, void (%struct.gx_device_s*)* null, %struct.rc_header_s zeroinitializer, i32 0, i32 0, i32 0, %struct.gx_device_color_info_s { i32 4, i32 4, i32 0, i16 0, i8 3, i32 0, i32 0, i32 0, i32 0, %struct.gx_device_anti_alias_info_s { i32 1, i32 1 }, i32 -1, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [64 x i64] zeroinitializer, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 -1, i64 0, i32 0 }, %struct.gx_device_cached_colors_s { i64 -1, i64 -1 }, i32 5100, i32 6600, i32 0, i32 0, i32 0, i32 0, [2 x float] [float 6.120000e+02, float 7.920000e+02], [4 x float] zeroinitializer, i32 0, [2 x float] [float 6.000000e+02, float 6.000000e+02], [2 x float] [float 6.000000e+02, float 6.000000e+02], [2 x float] zeroinitializer, [4 x float] zeroinitializer, i64 0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, %struct.gx_stroked_gradient_recognizer_s zeroinitializer, i32 0, i32 0, %struct.gdev_space_params_s { i64 10000000, i64 4000000, %struct.gx_band_params_s zeroinitializer, i32 0, i32 0 }, %struct.cmm_dev_profile_s* null, i32 0, %struct.gx_page_device_procs_s { i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_install, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_begin_page, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* @gx_default_end_page }, %struct.gx_device_procs_s zeroinitializer, [11240 x i8] zeroinitializer, { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* } { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)* @md2k_print_page, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_print_page_copies, %struct.gx_device_buf_procs_s { i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, %struct.gx_render_plane_s*, %struct.gs_memory_s*, %struct.gx_colors_usage_s*)* @gx_default_create_buf_device, i32 (%struct.gx_device_buf_space_s*, %struct.gx_device_s*, %struct.gx_render_plane_s*, i32, i32)* @gx_default_size_buf_device, i32 (%struct.gx_device_s*, i8*, i32, i8**, i32, i32, i32)* @gx_default_setup_buf_device, void (%struct.gx_device_s*)* @gx_default_destroy_buf_device }, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)* @gx_default_get_space_params, i32 (%struct.gdev_prn_start_render_params_s*)* @gx_default_start_render_thread, i32 (%struct.gx_device_printer_s*)* @gx_default_open_render_device, i32 (%struct.gx_device_printer_s*)* @gx_default_close_render_device, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_buffer_page }, [4096 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 -1, i32 0, %struct._IO_FILE* null, i64 0, i8* null, %struct.gs_memory_s* null, %struct.gs_memory_s* null, i32 (%struct.gx_device_s*, i32)* null, %struct.gx_page_queue_s* null, i32 0, %struct.gx_device_printer_s* null, i32 0, i32 0, %struct.bg_print_s zeroinitializer, i32 0, %struct.gx_saved_pages_list_s* null, %struct.gx_device_procs_s zeroinitializer, %struct.gx_device_procs_s zeroinitializer, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1024, i32 1024, i32 1024, i32 1024 }, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"md5k\00", align 1
@gs_md5k_device = global { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [11240 x i8], { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* }, [4096 x i8], i32, i32, i32, i32, i32, i32, %struct._IO_FILE*, i64, i8*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s*, i32)*, %struct.gx_page_queue_s*, i32, %struct.gx_device_printer_s*, i32, i32, %struct.bg_print_s, i32, %struct.gx_saved_pages_list_s*, %struct.gx_device_procs_s, %struct.gx_device_procs_s, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 } { i32 18512, %struct.gx_device_procs_s* @alps_procs, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), %struct.gs_memory_s* null, %struct.gs_memory_struct_type_s* @st_device_printer, i32 0, void (%struct.gx_device_s*)* null, %struct.rc_header_s zeroinitializer, i32 0, i32 0, i32 0, %struct.gx_device_color_info_s { i32 4, i32 4, i32 0, i16 0, i8 3, i32 0, i32 0, i32 0, i32 0, %struct.gx_device_anti_alias_info_s { i32 1, i32 1 }, i32 -1, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [64 x i64] zeroinitializer, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 -1, i64 0, i32 0 }, %struct.gx_device_cached_colors_s { i64 -1, i64 -1 }, i32 5100, i32 6600, i32 0, i32 0, i32 0, i32 0, [2 x float] [float 6.120000e+02, float 7.920000e+02], [4 x float] zeroinitializer, i32 0, [2 x float] [float 6.000000e+02, float 6.000000e+02], [2 x float] [float 6.000000e+02, float 6.000000e+02], [2 x float] zeroinitializer, [4 x float] zeroinitializer, i64 0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, %struct.gx_stroked_gradient_recognizer_s zeroinitializer, i32 0, i32 0, %struct.gdev_space_params_s { i64 10000000, i64 4000000, %struct.gx_band_params_s zeroinitializer, i32 0, i32 0 }, %struct.cmm_dev_profile_s* null, i32 0, %struct.gx_page_device_procs_s { i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_install, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_begin_page, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* @gx_default_end_page }, %struct.gx_device_procs_s zeroinitializer, [11240 x i8] zeroinitializer, { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* } { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)* @md5k_print_page, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_print_page_copies, %struct.gx_device_buf_procs_s { i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, %struct.gx_render_plane_s*, %struct.gs_memory_s*, %struct.gx_colors_usage_s*)* @gx_default_create_buf_device, i32 (%struct.gx_device_buf_space_s*, %struct.gx_device_s*, %struct.gx_render_plane_s*, i32, i32)* @gx_default_size_buf_device, i32 (%struct.gx_device_s*, i8*, i32, i8**, i32, i32, i32)* @gx_default_setup_buf_device, void (%struct.gx_device_s*)* @gx_default_destroy_buf_device }, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)* @gx_default_get_space_params, i32 (%struct.gdev_prn_start_render_params_s*)* @gx_default_start_render_thread, i32 (%struct.gx_device_printer_s*)* @gx_default_open_render_device, i32 (%struct.gx_device_printer_s*)* @gx_default_close_render_device, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_buffer_page }, [4096 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 -1, i32 0, %struct._IO_FILE* null, i64 0, i8* null, %struct.gs_memory_s* null, %struct.gs_memory_s* null, i32 (%struct.gx_device_s*, i32)* null, %struct.gx_page_queue_s* null, i32 0, %struct.gx_device_printer_s* null, i32 0, i32 0, %struct.bg_print_s zeroinitializer, i32 0, %struct.gx_saved_pages_list_s* null, %struct.gx_device_procs_s zeroinitializer, %struct.gx_device_procs_s zeroinitializer, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1024, i32 1024, i32 1024, i32 1024 }, align 8
@alps_open.margins = internal constant [4 x float] [float 0x3FC1224480000000, float 0x3FE2E5CBA0000000, float 0x3FC1224480000000, float 0x3FDE3C7900000000], align 16
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@alps_get_params.mediaType = private unnamed_addr constant %struct.gs_param_string_s { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i32 0, i32 0), i32 1, i32 0 }, align 8
@.str.4 = private unnamed_addr constant [6 x i8] c"Color\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"Dither\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"ManualFeed\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"ReverseSide\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"EcoBlack\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"Cyan\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"Magenta\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"Yellow\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"Black\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"MediaType\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"BitsPerPixel\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"PlainPaper\00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c"OHP_MD2000\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"IronSeal\00", align 1
@.str.18 = private unnamed_addr constant [11 x i8] c"RebecaFree\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"CardBoard\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"PostCard\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"FinePaper\00", align 1
@.str.22 = private unnamed_addr constant [11 x i8] c"CoatedFilm\00", align 1
@.str.23 = private unnamed_addr constant [12 x i8] c"GlossyPaper\00", align 1
@.str.24 = private unnamed_addr constant [17 x i8] c"TransparencyFilm\00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c"OHP\00", align 1
@.str.26 = private unnamed_addr constant [22 x i8] c"alps_print_page(work)\00", align 1
@.str.27 = private unnamed_addr constant [3 x i8] c"\1B\1A\00", align 1
@.str.28 = private unnamed_addr constant [4 x i8] c"\1B*b\00", align 1
@.str.29 = private unnamed_addr constant [6 x i8] c"\1B\1A\00\00\0C\00", align 1
@.str.30 = private unnamed_addr constant [10 x i8] c"\0C\1B*rC\1B%\00X\00", align 1
@.str.31 = private unnamed_addr constant [12 x i8] c"\1Be\1B%\80A\1B\1A\00\00L\00", align 1
@.str.32 = private unnamed_addr constant [4 x i8] c"\1B&l\00", align 1
@.str.33 = private unnamed_addr constant [4 x i8] c"\1B*r\00", align 1
@.str.34 = private unnamed_addr constant [4 x i8] c"\1B*t\00", align 1
@.str.35 = private unnamed_addr constant [3 x i8] c"\00A\00", align 1
@.str.36 = private unnamed_addr constant [6 x i8] c"\1B\1A\01\00C\00", align 1
@.str.37 = private unnamed_addr constant [8 x i8] c"\1B&l\01\00C\17\00", align 1
@.str.38 = private unnamed_addr constant [8 x i8] c"\1B&l\01\00C\00\00", align 1
@.str.39 = private unnamed_addr constant [11 x i8] c"\1B&l\04\00C\03\02\01\00\00", align 1
@.str.40 = private unnamed_addr constant [6 x i8] c"\1B\1A\00\00U\00", align 1
@.str.41 = private unnamed_addr constant [6 x i8] c"\1B*r\01A\00", align 1
@.str.42 = private unnamed_addr constant [7 x i8] c"\1B*b\00\00M\00", align 1
@.str.43 = private unnamed_addr constant [6 x i8] c"\1B*r\00A\00", align 1
@.str.44 = private unnamed_addr constant [7 x i8] c"\1B*b\02\00M\00", align 1

declare i32 @gx_default_install(%struct.gx_device_s*, %struct.gs_state_s*) #0

declare i32 @gx_default_begin_page(%struct.gx_device_s*, %struct.gs_state_s*) #0

declare i32 @gx_default_end_page(%struct.gx_device_s*, i32, %struct.gs_state_s*) #0

; Function Attrs: nounwind uwtable
define internal i32 @md2k_print_page(%struct.gx_device_printer_s* %pdev, %struct._IO_FILE* %prn_stream) #1 {
entry:
  %pdev.addr = alloca %struct.gx_device_printer_s*, align 8
  %prn_stream.addr = alloca %struct._IO_FILE*, align 8
  store %struct.gx_device_printer_s* %pdev, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  store %struct._IO_FILE* %prn_stream, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %0 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call = call i32 @alps_print_page(%struct.gx_device_printer_s* %0, %struct._IO_FILE* %1, i32 0) #5
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
define internal i32 @md5k_print_page(%struct.gx_device_printer_s* %pdev, %struct._IO_FILE* %prn_stream) #1 {
entry:
  %pdev.addr = alloca %struct.gx_device_printer_s*, align 8
  %prn_stream.addr = alloca %struct._IO_FILE*, align 8
  store %struct.gx_device_printer_s* %pdev, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  store %struct._IO_FILE* %prn_stream, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %0 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call = call i32 @alps_print_page(%struct.gx_device_printer_s* %0, %struct._IO_FILE* %1, i32 2) #5
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @alps_open(%struct.gx_device_s* %pdev) #1 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_s*, align 8
  %xdpi = alloca i32, align 4
  %ydpi = alloca i32, align 4
  %density = alloca float, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %pdev, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %0 = bitcast i32* %xdpi to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %HWResolution = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %1, i32 0, i32 22
  %arrayidx = getelementptr inbounds [2 x float], [2 x float]* %HWResolution, i32 0, i64 0
  %2 = load float, float* %arrayidx, align 4, !tbaa !5
  %conv = fptosi float %2 to i32
  store i32 %conv, i32* %xdpi, align 4, !tbaa !7
  %3 = bitcast i32* %ydpi to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %HWResolution1 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %4, i32 0, i32 22
  %arrayidx2 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution1, i32 0, i64 1
  %5 = load float, float* %arrayidx2, align 4, !tbaa !5
  %conv3 = fptosi float %5 to i32
  store i32 %conv3, i32* %ydpi, align 4, !tbaa !7
  %6 = bitcast float* %density to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  call void @gx_device_set_margins(%struct.gx_device_s* %7, float* getelementptr inbounds ([4 x float], [4 x float]* @alps_open.margins, i32 0, i32 0), i32 1) #5
  %8 = load i32, i32* %ydpi, align 4, !tbaa !7
  %cmp = icmp ne i32 %8, 300
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %9 = load i32, i32* %xdpi, align 4, !tbaa !7
  %cmp5 = icmp ne i32 %9, 300
  br i1 %cmp5, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false, %entry
  %10 = load i32, i32* %ydpi, align 4, !tbaa !7
  %cmp7 = icmp ne i32 %10, 600
  br i1 %cmp7, label %land.lhs.true.12, label %lor.lhs.false.9

lor.lhs.false.9:                                  ; preds = %land.lhs.true
  %11 = load i32, i32* %xdpi, align 4, !tbaa !7
  %cmp10 = icmp ne i32 %11, 600
  br i1 %cmp10, label %land.lhs.true.12, label %if.end

land.lhs.true.12:                                 ; preds = %lor.lhs.false.9, %land.lhs.true
  %12 = load i32, i32* %ydpi, align 4, !tbaa !7
  %cmp13 = icmp ne i32 %12, 600
  br i1 %cmp13, label %if.then, label %lor.lhs.false.15

lor.lhs.false.15:                                 ; preds = %land.lhs.true.12
  %13 = load i32, i32* %xdpi, align 4, !tbaa !7
  %cmp16 = icmp ne i32 %13, 1200
  br i1 %cmp16, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.15, %land.lhs.true.12
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false.15, %lor.lhs.false.9, %lor.lhs.false
  %14 = load i32, i32* %xdpi, align 4, !tbaa !7
  %cmp18 = icmp eq i32 %14, 300
  br i1 %cmp18, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %15 = load i32, i32* %xdpi, align 4, !tbaa !7
  %cmp20 = icmp eq i32 %15, 600
  %cond = select i1 %cmp20, double 4.400000e-01, double 4.000000e-01
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond22 = phi double [ 7.500000e-01, %cond.true ], [ %cond, %cond.false ]
  %conv23 = fptrunc double %cond22 to float
  store float %conv23, float* %density, align 4, !tbaa !5
  %16 = load float, float* %density, align 4, !tbaa !5
  %17 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %18 = bitcast %struct.gx_device_s* %17 to %struct.gx_device_alps_s*
  %cyan = getelementptr inbounds %struct.gx_device_alps_s, %struct.gx_device_alps_s* %18, i32 0, i32 74
  %19 = load i32, i32* %cyan, align 4, !tbaa !9
  %conv24 = sitofp i32 %19 to float
  %mul = fmul float %conv24, %16
  %conv25 = fptosi float %mul to i32
  store i32 %conv25, i32* %cyan, align 4, !tbaa !9
  %20 = load float, float* %density, align 4, !tbaa !5
  %21 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %22 = bitcast %struct.gx_device_s* %21 to %struct.gx_device_alps_s*
  %magenta = getelementptr inbounds %struct.gx_device_alps_s, %struct.gx_device_alps_s* %22, i32 0, i32 75
  %23 = load i32, i32* %magenta, align 4, !tbaa !25
  %conv26 = sitofp i32 %23 to float
  %mul27 = fmul float %conv26, %20
  %conv28 = fptosi float %mul27 to i32
  store i32 %conv28, i32* %magenta, align 4, !tbaa !25
  %24 = load float, float* %density, align 4, !tbaa !5
  %25 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %26 = bitcast %struct.gx_device_s* %25 to %struct.gx_device_alps_s*
  %yellow = getelementptr inbounds %struct.gx_device_alps_s, %struct.gx_device_alps_s* %26, i32 0, i32 76
  %27 = load i32, i32* %yellow, align 4, !tbaa !26
  %conv29 = sitofp i32 %27 to float
  %mul30 = fmul float %conv29, %24
  %conv31 = fptosi float %mul30 to i32
  store i32 %conv31, i32* %yellow, align 4, !tbaa !26
  %28 = load float, float* %density, align 4, !tbaa !5
  %29 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %30 = bitcast %struct.gx_device_s* %29 to %struct.gx_device_alps_s*
  %black = getelementptr inbounds %struct.gx_device_alps_s, %struct.gx_device_alps_s* %30, i32 0, i32 77
  %31 = load i32, i32* %black, align 4, !tbaa !27
  %conv32 = sitofp i32 %31 to float
  %mul33 = fmul float %conv32, %28
  %conv34 = fptosi float %mul33 to i32
  store i32 %conv34, i32* %black, align 4, !tbaa !27
  %32 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %call = call i32 @gdev_prn_open(%struct.gx_device_s* %32) #5
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %if.then
  %33 = bitcast float* %density to i8*
  call void @llvm.lifetime.end(i64 4, i8* %33) #2
  %34 = bitcast i32* %ydpi to i8*
  call void @llvm.lifetime.end(i64 4, i8* %34) #2
  %35 = bitcast i32* %xdpi to i8*
  call void @llvm.lifetime.end(i64 4, i8* %35) #2
  %36 = load i32, i32* %retval
  ret i32 %36
}

declare void @gx_default_get_initial_matrix(%struct.gx_device_s*, %struct.gs_matrix_s*) #0

declare i32 @gdev_prn_output_page(%struct.gx_device_s*, i32, i32) #0

declare i32 @gdev_prn_close(%struct.gx_device_s*) #0

; Function Attrs: nounwind uwtable
define internal i32 @alps_map_color_rgb(%struct.gx_device_s* %pdev, i64 %color, i16* %prgb) #1 {
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
  store i64 %color, i64* %color.addr, align 8, !tbaa !28
  store i16* %prgb, i16** %prgb.addr, align 8, !tbaa !1
  %0 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %0, i32 0, i32 11
  %depth = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 3
  %1 = load i16, i16* %depth, align 2, !tbaa !29
  %conv = zext i16 %1 to i32
  switch i32 %conv, label %sw.default [
    i32 1, label %sw.bb
    i32 8, label %sw.bb.4
  ]

sw.bb:                                            ; preds = %entry
  %2 = load i64, i64* %color.addr, align 8, !tbaa !28
  %sub = sub i64 1, %2
  %mul = mul i64 65535, %sub
  %conv1 = trunc i64 %mul to i16
  %3 = load i16*, i16** %prgb.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %3, i64 2
  store i16 %conv1, i16* %arrayidx, align 2, !tbaa !31
  %4 = load i16*, i16** %prgb.addr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds i16, i16* %4, i64 1
  store i16 %conv1, i16* %arrayidx2, align 2, !tbaa !31
  %5 = load i16*, i16** %prgb.addr, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds i16, i16* %5, i64 0
  store i16 %conv1, i16* %arrayidx3, align 2, !tbaa !31
  br label %sw.epilog

sw.bb.4:                                          ; preds = %entry
  %6 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %color_info5 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %6, i32 0, i32 11
  %num_components = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info5, i32 0, i32 1
  %7 = load i32, i32* %num_components, align 4, !tbaa !32
  %cmp = icmp eq i32 %7, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb.4
  %8 = bitcast i16* %value to i8*
  call void @llvm.lifetime.start(i64 2, i8* %8) #2
  %9 = load i64, i64* %color.addr, align 8, !tbaa !28
  %conv7 = trunc i64 %9 to i16
  %conv8 = zext i16 %conv7 to i32
  %xor = xor i32 %conv8, 255
  %conv9 = trunc i32 %xor to i16
  store i16 %conv9, i16* %value, align 2, !tbaa !31
  %10 = load i16, i16* %value, align 2, !tbaa !31
  %conv10 = zext i16 %10 to i32
  %shl = shl i32 %conv10, 8
  %11 = load i16, i16* %value, align 2, !tbaa !31
  %conv11 = zext i16 %11 to i32
  %add = add nsw i32 %shl, %conv11
  %conv12 = trunc i32 %add to i16
  %12 = load i16*, i16** %prgb.addr, align 8, !tbaa !1
  %arrayidx13 = getelementptr inbounds i16, i16* %12, i64 2
  store i16 %conv12, i16* %arrayidx13, align 2, !tbaa !31
  %13 = load i16*, i16** %prgb.addr, align 8, !tbaa !1
  %arrayidx14 = getelementptr inbounds i16, i16* %13, i64 1
  store i16 %conv12, i16* %arrayidx14, align 2, !tbaa !31
  %14 = load i16*, i16** %prgb.addr, align 8, !tbaa !1
  %arrayidx15 = getelementptr inbounds i16, i16* %14, i64 0
  store i16 %conv12, i16* %arrayidx15, align 2, !tbaa !31
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
  %22 = load i16, i16* %depth17, align 2, !tbaa !29
  %conv18 = zext i16 %22 to i32
  store i32 %conv18, i32* %nbits, align 4, !tbaa !7
  %23 = load i64, i64* %color.addr, align 8, !tbaa !28
  %24 = load i32, i32* %nbits, align 4, !tbaa !7
  %shr = ashr i32 %24, 2
  %mul19 = mul nsw i32 3, %shr
  %sh_prom = zext i32 %mul19 to i64
  %shr20 = lshr i64 %23, %sh_prom
  %25 = load i32, i32* %nbits, align 4, !tbaa !7
  %shr21 = ashr i32 %25, 2
  %shl22 = shl i32 1, %shr21
  %sub23 = sub nsw i32 %shl22, 1
  %conv24 = sext i32 %sub23 to i64
  %and = and i64 %shr20, %conv24
  %26 = load i32, i32* %nbits, align 4, !tbaa !7
  %shr25 = ashr i32 %26, 2
  %conv26 = sext i32 %shr25 to i64
  %sub27 = sub i64 16, %conv26
  %shl28 = shl i64 %and, %sub27
  store i64 %shl28, i64* %bcyan, align 8, !tbaa !28
  %27 = load i64, i64* %color.addr, align 8, !tbaa !28
  %28 = load i32, i32* %nbits, align 4, !tbaa !7
  %shr29 = ashr i32 %28, 2
  %mul30 = mul nsw i32 2, %shr29
  %sh_prom31 = zext i32 %mul30 to i64
  %shr32 = lshr i64 %27, %sh_prom31
  %29 = load i32, i32* %nbits, align 4, !tbaa !7
  %shr33 = ashr i32 %29, 2
  %shl34 = shl i32 1, %shr33
  %sub35 = sub nsw i32 %shl34, 1
  %conv36 = sext i32 %sub35 to i64
  %and37 = and i64 %shr32, %conv36
  %30 = load i32, i32* %nbits, align 4, !tbaa !7
  %shr38 = ashr i32 %30, 2
  %conv39 = sext i32 %shr38 to i64
  %sub40 = sub i64 16, %conv39
  %shl41 = shl i64 %and37, %sub40
  store i64 %shl41, i64* %bmagenta, align 8, !tbaa !28
  %31 = load i64, i64* %color.addr, align 8, !tbaa !28
  %32 = load i32, i32* %nbits, align 4, !tbaa !7
  %shr42 = ashr i32 %32, 2
  %sh_prom43 = zext i32 %shr42 to i64
  %shr44 = lshr i64 %31, %sh_prom43
  %33 = load i32, i32* %nbits, align 4, !tbaa !7
  %shr45 = ashr i32 %33, 2
  %shl46 = shl i32 1, %shr45
  %sub47 = sub nsw i32 %shl46, 1
  %conv48 = sext i32 %sub47 to i64
  %and49 = and i64 %shr44, %conv48
  %34 = load i32, i32* %nbits, align 4, !tbaa !7
  %shr50 = ashr i32 %34, 2
  %conv51 = sext i32 %shr50 to i64
  %sub52 = sub i64 16, %conv51
  %shl53 = shl i64 %and49, %sub52
  store i64 %shl53, i64* %byellow, align 8, !tbaa !28
  %35 = load i64, i64* %color.addr, align 8, !tbaa !28
  %36 = load i32, i32* %nbits, align 4, !tbaa !7
  %shr54 = ashr i32 %36, 2
  %shl55 = shl i32 1, %shr54
  %sub56 = sub nsw i32 %shl55, 1
  %conv57 = sext i32 %sub56 to i64
  %and58 = and i64 %35, %conv57
  %37 = load i32, i32* %nbits, align 4, !tbaa !7
  %shr59 = ashr i32 %37, 2
  %conv60 = sext i32 %shr59 to i64
  %sub61 = sub i64 16, %conv60
  %shl62 = shl i64 %and58, %sub61
  store i64 %shl62, i64* %black, align 8, !tbaa !28
  %38 = load i64, i64* %bcyan, align 8, !tbaa !28
  %sub63 = sub i64 65535, %38
  %39 = load i64, i64* %black, align 8, !tbaa !28
  %sub64 = sub i64 65535, %39
  %mul65 = mul i64 %sub63, %sub64
  %div = udiv i64 %mul65, 65535
  %conv66 = trunc i64 %div to i16
  %40 = load i16*, i16** %prgb.addr, align 8, !tbaa !1
  %arrayidx67 = getelementptr inbounds i16, i16* %40, i64 0
  store i16 %conv66, i16* %arrayidx67, align 2, !tbaa !31
  %41 = load i64, i64* %bmagenta, align 8, !tbaa !28
  %sub68 = sub i64 65535, %41
  %42 = load i64, i64* %black, align 8, !tbaa !28
  %sub69 = sub i64 65535, %42
  %mul70 = mul i64 %sub68, %sub69
  %div71 = udiv i64 %mul70, 65535
  %conv72 = trunc i64 %div71 to i16
  %43 = load i16*, i16** %prgb.addr, align 8, !tbaa !1
  %arrayidx73 = getelementptr inbounds i16, i16* %43, i64 1
  store i16 %conv72, i16* %arrayidx73, align 2, !tbaa !31
  %44 = load i64, i64* %byellow, align 8, !tbaa !28
  %sub74 = sub i64 65535, %44
  %45 = load i64, i64* %black, align 8, !tbaa !28
  %sub75 = sub i64 65535, %45
  %mul76 = mul i64 %sub74, %sub75
  %div77 = udiv i64 %mul76, 65535
  %conv78 = trunc i64 %div77 to i16
  %46 = load i16*, i16** %prgb.addr, align 8, !tbaa !1
  %arrayidx79 = getelementptr inbounds i16, i16* %46, i64 2
  store i16 %conv78, i16* %arrayidx79, align 2, !tbaa !31
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

; Function Attrs: nounwind uwtable
define internal i32 @alps_get_params(%struct.gx_device_s* %pdev, %struct.gs_param_list_s* %plist) #1 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_s*, align 8
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %mediaType = alloca %struct.gs_param_string_s, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %pdev, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_param_string_s* %mediaType to i8*
  call void @llvm.lifetime.start(i64 16, i8* %0) #2
  %1 = bitcast %struct.gs_param_string_s* %mediaType to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* bitcast (%struct.gs_param_string_s* @alps_get_params.mediaType to i8*), i64 16, i32 8, i1 false)
  %2 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  %3 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %4 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call = call i32 @gdev_prn_get_params(%struct.gx_device_s* %3, %struct.gs_param_list_s* %4) #5
  store i32 %call, i32* %code, align 4, !tbaa !7
  %5 = load i32, i32* %code, align 4, !tbaa !7
  %cmp = icmp slt i32 %5, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %6 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %7 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %8 = bitcast %struct.gx_device_s* %7 to %struct.gx_device_alps_s*
  %color = getelementptr inbounds %struct.gx_device_alps_s, %struct.gx_device_alps_s* %8, i32 0, i32 68
  %call1 = call i32 @param_write_bool(%struct.gs_param_list_s* %6, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0), i32* %color) #5
  store i32 %call1, i32* %code, align 4, !tbaa !7
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.then, label %lor.lhs.false.3

lor.lhs.false.3:                                  ; preds = %lor.lhs.false
  %9 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %10 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %11 = bitcast %struct.gx_device_s* %10 to %struct.gx_device_alps_s*
  %dither = getelementptr inbounds %struct.gx_device_alps_s, %struct.gx_device_alps_s* %11, i32 0, i32 69
  %call4 = call i32 @param_write_bool(%struct.gs_param_list_s* %9, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i32* %dither) #5
  store i32 %call4, i32* %code, align 4, !tbaa !7
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %if.then, label %lor.lhs.false.6

lor.lhs.false.6:                                  ; preds = %lor.lhs.false.3
  %12 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %13 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %14 = bitcast %struct.gx_device_s* %13 to %struct.gx_device_alps_s*
  %manualFeed = getelementptr inbounds %struct.gx_device_alps_s, %struct.gx_device_alps_s* %14, i32 0, i32 70
  %call7 = call i32 @param_write_bool(%struct.gs_param_list_s* %12, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i32 0, i32 0), i32* %manualFeed) #5
  store i32 %call7, i32* %code, align 4, !tbaa !7
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %if.then, label %lor.lhs.false.9

lor.lhs.false.9:                                  ; preds = %lor.lhs.false.6
  %15 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %16 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %17 = bitcast %struct.gx_device_s* %16 to %struct.gx_device_alps_s*
  %reverseSide = getelementptr inbounds %struct.gx_device_alps_s, %struct.gx_device_alps_s* %17, i32 0, i32 71
  %call10 = call i32 @param_write_bool(%struct.gs_param_list_s* %15, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i32 0, i32 0), i32* %reverseSide) #5
  store i32 %call10, i32* %code, align 4, !tbaa !7
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %if.then, label %lor.lhs.false.12

lor.lhs.false.12:                                 ; preds = %lor.lhs.false.9
  %18 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %19 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %20 = bitcast %struct.gx_device_s* %19 to %struct.gx_device_alps_s*
  %ecoBlack = getelementptr inbounds %struct.gx_device_alps_s, %struct.gx_device_alps_s* %20, i32 0, i32 72
  %call13 = call i32 @param_write_bool(%struct.gs_param_list_s* %18, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i32 0, i32 0), i32* %ecoBlack) #5
  store i32 %call13, i32* %code, align 4, !tbaa !7
  %cmp14 = icmp slt i32 %call13, 0
  br i1 %cmp14, label %if.then, label %lor.lhs.false.15

lor.lhs.false.15:                                 ; preds = %lor.lhs.false.12
  %21 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %22 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %23 = bitcast %struct.gx_device_s* %22 to %struct.gx_device_alps_s*
  %cyan = getelementptr inbounds %struct.gx_device_alps_s, %struct.gx_device_alps_s* %23, i32 0, i32 74
  %call16 = call i32 @param_write_int(%struct.gs_param_list_s* %21, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0), i32* %cyan) #5
  store i32 %call16, i32* %code, align 4, !tbaa !7
  %cmp17 = icmp slt i32 %call16, 0
  br i1 %cmp17, label %if.then, label %lor.lhs.false.18

lor.lhs.false.18:                                 ; preds = %lor.lhs.false.15
  %24 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %25 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %26 = bitcast %struct.gx_device_s* %25 to %struct.gx_device_alps_s*
  %magenta = getelementptr inbounds %struct.gx_device_alps_s, %struct.gx_device_alps_s* %26, i32 0, i32 75
  %call19 = call i32 @param_write_int(%struct.gs_param_list_s* %24, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i32 0, i32 0), i32* %magenta) #5
  store i32 %call19, i32* %code, align 4, !tbaa !7
  %cmp20 = icmp slt i32 %call19, 0
  br i1 %cmp20, label %if.then, label %lor.lhs.false.21

lor.lhs.false.21:                                 ; preds = %lor.lhs.false.18
  %27 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %28 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %29 = bitcast %struct.gx_device_s* %28 to %struct.gx_device_alps_s*
  %yellow = getelementptr inbounds %struct.gx_device_alps_s, %struct.gx_device_alps_s* %29, i32 0, i32 76
  %call22 = call i32 @param_write_int(%struct.gs_param_list_s* %27, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i32 0, i32 0), i32* %yellow) #5
  store i32 %call22, i32* %code, align 4, !tbaa !7
  %cmp23 = icmp slt i32 %call22, 0
  br i1 %cmp23, label %if.then, label %lor.lhs.false.24

lor.lhs.false.24:                                 ; preds = %lor.lhs.false.21
  %30 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %31 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %32 = bitcast %struct.gx_device_s* %31 to %struct.gx_device_alps_s*
  %black = getelementptr inbounds %struct.gx_device_alps_s, %struct.gx_device_alps_s* %32, i32 0, i32 77
  %call25 = call i32 @param_write_int(%struct.gs_param_list_s* %30, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i32 0, i32 0), i32* %black) #5
  store i32 %call25, i32* %code, align 4, !tbaa !7
  %cmp26 = icmp slt i32 %call25, 0
  br i1 %cmp26, label %if.then, label %lor.lhs.false.27

lor.lhs.false.27:                                 ; preds = %lor.lhs.false.24
  %33 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call28 = call i32 @param_write_string(%struct.gs_param_list_s* %33, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i32 0, i32 0), %struct.gs_param_string_s* %mediaType) #5
  store i32 %call28, i32* %code, align 4, !tbaa !7
  %cmp29 = icmp slt i32 %call28, 0
  br i1 %cmp29, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.27, %lor.lhs.false.24, %lor.lhs.false.21, %lor.lhs.false.18, %lor.lhs.false.15, %lor.lhs.false.12, %lor.lhs.false.9, %lor.lhs.false.6, %lor.lhs.false.3, %lor.lhs.false, %entry
  %34 = load i32, i32* %code, align 4, !tbaa !7
  store i32 %34, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false.27
  %35 = load i32, i32* %code, align 4, !tbaa !7
  store i32 %35, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %36 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %36) #2
  %37 = bitcast %struct.gs_param_string_s* %mediaType to i8*
  call void @llvm.lifetime.end(i64 16, i8* %37) #2
  %38 = load i32, i32* %retval
  ret i32 %38
}

; Function Attrs: nounwind uwtable
define internal i32 @alps_put_params(%struct.gx_device_s* %pdev, %struct.gs_param_list_s* %plist) #1 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_s*, align 8
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %code = alloca i32, align 4
  %bpp = alloca i32, align 4
  %color = alloca i32, align 4
  %dither = alloca i32, align 4
  %manualFeed = alloca i32, align 4
  %reverseSide = alloca i32, align 4
  %ecoBlack = alloca i32, align 4
  %cyan = alloca i32, align 4
  %magenta = alloca i32, align 4
  %yellow = alloca i32, align 4
  %black = alloca i32, align 4
  %mediaType = alloca %struct.gs_param_string_s, align 8
  %__s1_len = alloca i64, align 8
  %__s2_len = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__s1 = alloca i8*, align 8
  %__result = alloca i32, align 4
  %tmp66 = alloca i32, align 4
  %__s1_len85 = alloca i64, align 8
  %__s2_len87 = alloca i64, align 8
  %tmp88 = alloca i32, align 4
  %__s195 = alloca i8*, align 8
  %__result98 = alloca i32, align 4
  %tmp136 = alloca i32, align 4
  %__s1_len159 = alloca i64, align 8
  %__s2_len161 = alloca i64, align 8
  %tmp162 = alloca i32, align 4
  %__s1169 = alloca i8*, align 8
  %__result172 = alloca i32, align 4
  %tmp210 = alloca i32, align 4
  %__s1_len233 = alloca i64, align 8
  %__s2_len235 = alloca i64, align 8
  %tmp236 = alloca i32, align 4
  %__s1243 = alloca i8*, align 8
  %__result246 = alloca i32, align 4
  %tmp284 = alloca i32, align 4
  %__s1_len307 = alloca i64, align 8
  %__s2_len309 = alloca i64, align 8
  %tmp310 = alloca i32, align 4
  %__s1317 = alloca i8*, align 8
  %__result320 = alloca i32, align 4
  %tmp358 = alloca i32, align 4
  %__s1_len381 = alloca i64, align 8
  %__s2_len383 = alloca i64, align 8
  %tmp384 = alloca i32, align 4
  %__s1391 = alloca i8*, align 8
  %__result394 = alloca i32, align 4
  %tmp432 = alloca i32, align 4
  %__s1_len455 = alloca i64, align 8
  %__s2_len457 = alloca i64, align 8
  %tmp458 = alloca i32, align 4
  %__s1465 = alloca i8*, align 8
  %__result468 = alloca i32, align 4
  %tmp506 = alloca i32, align 4
  %__s1_len529 = alloca i64, align 8
  %__s2_len531 = alloca i64, align 8
  %tmp532 = alloca i32, align 4
  %__s1539 = alloca i8*, align 8
  %__result542 = alloca i32, align 4
  %tmp580 = alloca i32, align 4
  %__s1_len603 = alloca i64, align 8
  %__s2_len605 = alloca i64, align 8
  %tmp606 = alloca i32, align 4
  %__s1613 = alloca i8*, align 8
  %__result616 = alloca i32, align 4
  %tmp654 = alloca i32, align 4
  %__s1_len677 = alloca i64, align 8
  %__s2_len679 = alloca i64, align 8
  %tmp680 = alloca i32, align 4
  %__s1687 = alloca i8*, align 8
  %__result690 = alloca i32, align 4
  %tmp728 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %__s1_len817 = alloca i64, align 8
  %__s2_len819 = alloca i64, align 8
  %tmp820 = alloca i32, align 4
  %__s1827 = alloca i8*, align 8
  %__result829 = alloca i32, align 4
  %tmp867 = alloca i32, align 4
  store %struct.gx_device_s* %pdev, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  store i32 0, i32* %code, align 4, !tbaa !7
  %1 = bitcast i32* %bpp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %3 = bitcast %struct.gx_device_s* %2 to %struct.gx_device_alps_s*
  %color_info = getelementptr inbounds %struct.gx_device_alps_s, %struct.gx_device_alps_s* %3, i32 0, i32 11
  %depth = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 3
  %4 = load i16, i16* %depth, align 2, !tbaa !33
  %conv = zext i16 %4 to i32
  store i32 %conv, i32* %bpp, align 4, !tbaa !7
  %5 = bitcast i32* %color to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  %6 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %7 = bitcast %struct.gx_device_s* %6 to %struct.gx_device_alps_s*
  %color1 = getelementptr inbounds %struct.gx_device_alps_s, %struct.gx_device_alps_s* %7, i32 0, i32 68
  %8 = load i32, i32* %color1, align 4, !tbaa !34
  store i32 %8, i32* %color, align 4, !tbaa !7
  %9 = bitcast i32* %dither to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #2
  %10 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %11 = bitcast %struct.gx_device_s* %10 to %struct.gx_device_alps_s*
  %dither2 = getelementptr inbounds %struct.gx_device_alps_s, %struct.gx_device_alps_s* %11, i32 0, i32 69
  %12 = load i32, i32* %dither2, align 4, !tbaa !35
  store i32 %12, i32* %dither, align 4, !tbaa !7
  %13 = bitcast i32* %manualFeed to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #2
  %14 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %15 = bitcast %struct.gx_device_s* %14 to %struct.gx_device_alps_s*
  %manualFeed3 = getelementptr inbounds %struct.gx_device_alps_s, %struct.gx_device_alps_s* %15, i32 0, i32 70
  %16 = load i32, i32* %manualFeed3, align 4, !tbaa !36
  store i32 %16, i32* %manualFeed, align 4, !tbaa !7
  %17 = bitcast i32* %reverseSide to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #2
  %18 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %19 = bitcast %struct.gx_device_s* %18 to %struct.gx_device_alps_s*
  %reverseSide4 = getelementptr inbounds %struct.gx_device_alps_s, %struct.gx_device_alps_s* %19, i32 0, i32 71
  %20 = load i32, i32* %reverseSide4, align 4, !tbaa !37
  store i32 %20, i32* %reverseSide, align 4, !tbaa !7
  %21 = bitcast i32* %ecoBlack to i8*
  call void @llvm.lifetime.start(i64 4, i8* %21) #2
  %22 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %23 = bitcast %struct.gx_device_s* %22 to %struct.gx_device_alps_s*
  %ecoBlack5 = getelementptr inbounds %struct.gx_device_alps_s, %struct.gx_device_alps_s* %23, i32 0, i32 72
  %24 = load i32, i32* %ecoBlack5, align 4, !tbaa !38
  store i32 %24, i32* %ecoBlack, align 4, !tbaa !7
  %25 = bitcast i32* %cyan to i8*
  call void @llvm.lifetime.start(i64 4, i8* %25) #2
  %26 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %27 = bitcast %struct.gx_device_s* %26 to %struct.gx_device_alps_s*
  %cyan6 = getelementptr inbounds %struct.gx_device_alps_s, %struct.gx_device_alps_s* %27, i32 0, i32 74
  %28 = load i32, i32* %cyan6, align 4, !tbaa !9
  store i32 %28, i32* %cyan, align 4, !tbaa !7
  %29 = bitcast i32* %magenta to i8*
  call void @llvm.lifetime.start(i64 4, i8* %29) #2
  %30 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %31 = bitcast %struct.gx_device_s* %30 to %struct.gx_device_alps_s*
  %magenta7 = getelementptr inbounds %struct.gx_device_alps_s, %struct.gx_device_alps_s* %31, i32 0, i32 75
  %32 = load i32, i32* %magenta7, align 4, !tbaa !25
  store i32 %32, i32* %magenta, align 4, !tbaa !7
  %33 = bitcast i32* %yellow to i8*
  call void @llvm.lifetime.start(i64 4, i8* %33) #2
  %34 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %35 = bitcast %struct.gx_device_s* %34 to %struct.gx_device_alps_s*
  %yellow8 = getelementptr inbounds %struct.gx_device_alps_s, %struct.gx_device_alps_s* %35, i32 0, i32 76
  %36 = load i32, i32* %yellow8, align 4, !tbaa !26
  store i32 %36, i32* %yellow, align 4, !tbaa !7
  %37 = bitcast i32* %black to i8*
  call void @llvm.lifetime.start(i64 4, i8* %37) #2
  %38 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %39 = bitcast %struct.gx_device_s* %38 to %struct.gx_device_alps_s*
  %black9 = getelementptr inbounds %struct.gx_device_alps_s, %struct.gx_device_alps_s* %39, i32 0, i32 77
  %40 = load i32, i32* %black9, align 4, !tbaa !27
  store i32 %40, i32* %black, align 4, !tbaa !7
  %41 = bitcast %struct.gs_param_string_s* %mediaType to i8*
  call void @llvm.lifetime.start(i64 16, i8* %41) #2
  %42 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %43 = load i32, i32* %code, align 4, !tbaa !7
  %call = call i32 @alps_put_param_bool(%struct.gs_param_list_s* %42, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0), i32* %color, i32 %43) #5
  store i32 %call, i32* %code, align 4, !tbaa !7
  %44 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %45 = load i32, i32* %code, align 4, !tbaa !7
  %call10 = call i32 @alps_put_param_bool(%struct.gs_param_list_s* %44, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i32* %dither, i32 %45) #5
  store i32 %call10, i32* %code, align 4, !tbaa !7
  %46 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %47 = load i32, i32* %code, align 4, !tbaa !7
  %call11 = call i32 @alps_put_param_bool(%struct.gs_param_list_s* %46, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i32 0, i32 0), i32* %manualFeed, i32 %47) #5
  store i32 %call11, i32* %code, align 4, !tbaa !7
  %48 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %49 = load i32, i32* %code, align 4, !tbaa !7
  %call12 = call i32 @alps_put_param_bool(%struct.gs_param_list_s* %48, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i32 0, i32 0), i32* %reverseSide, i32 %49) #5
  store i32 %call12, i32* %code, align 4, !tbaa !7
  %50 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %51 = load i32, i32* %code, align 4, !tbaa !7
  %call13 = call i32 @alps_put_param_bool(%struct.gs_param_list_s* %50, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i32 0, i32 0), i32* %ecoBlack, i32 %51) #5
  store i32 %call13, i32* %code, align 4, !tbaa !7
  %52 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %53 = load i32, i32* %code, align 4, !tbaa !7
  %call14 = call i32 @alps_put_param_int(%struct.gs_param_list_s* %52, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i32 0, i32 0), i32* %bpp, i32 1, i32 32, i32 %53) #5
  store i32 %call14, i32* %code, align 4, !tbaa !7
  %54 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %55 = load i32, i32* %code, align 4, !tbaa !7
  %call15 = call i32 @alps_put_param_int(%struct.gs_param_list_s* %54, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0), i32* %cyan, i32 0, i32 2048, i32 %55) #5
  store i32 %call15, i32* %code, align 4, !tbaa !7
  %56 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %57 = load i32, i32* %code, align 4, !tbaa !7
  %call16 = call i32 @alps_put_param_int(%struct.gs_param_list_s* %56, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i32 0, i32 0), i32* %magenta, i32 0, i32 2048, i32 %57) #5
  store i32 %call16, i32* %code, align 4, !tbaa !7
  %58 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %59 = load i32, i32* %code, align 4, !tbaa !7
  %call17 = call i32 @alps_put_param_int(%struct.gs_param_list_s* %58, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i32 0, i32 0), i32* %yellow, i32 0, i32 2048, i32 %59) #5
  store i32 %call17, i32* %code, align 4, !tbaa !7
  %60 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %61 = load i32, i32* %code, align 4, !tbaa !7
  %call18 = call i32 @alps_put_param_int(%struct.gs_param_list_s* %60, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i32 0, i32 0), i32* %black, i32 0, i32 2048, i32 %61) #5
  store i32 %call18, i32* %code, align 4, !tbaa !7
  %62 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call19 = call i32 @param_read_string(%struct.gs_param_list_s* %62, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i32 0, i32 0), %struct.gs_param_string_s* %mediaType) #5
  %cmp = icmp eq i32 %call19, 0
  br i1 %cmp, label %if.then, label %if.end.778

if.then:                                          ; preds = %entry
  br i1 false, label %land.lhs.true, label %cond.false.69

land.lhs.true:                                    ; preds = %if.then
  %call21 = call i64 @strlen(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i32 0, i32 0)) #6
  %size = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %mediaType, i32 0, i32 1
  %63 = load i32, i32* %size, align 4, !tbaa !39
  %conv22 = zext i32 %63 to i64
  %cmp23 = icmp ult i64 %call21, %conv22
  br i1 %cmp23, label %cond.true, label %cond.false.69

cond.true:                                        ; preds = %land.lhs.true
  %64 = bitcast i64* %__s1_len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %64) #2
  %65 = bitcast i64* %__s2_len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %65) #2
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i32 0, i64 1) to i64), i64 ptrtoint ([11 x i8]* @.str.15 to i64)), i64 1), label %land.lhs.true.25, label %cond.false

land.lhs.true.25:                                 ; preds = %cond.true
  %call26 = call i64 @strlen(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i32 0, i32 0)) #6
  store i64 %call26, i64* %__s2_len, align 8, !tbaa !28
  %66 = load i64, i64* %__s2_len, align 8, !tbaa !28
  %cmp27 = icmp ult i64 %66, 4
  br i1 %cmp27, label %cond.true.29, label %cond.false

cond.true.29:                                     ; preds = %land.lhs.true.25
  %67 = bitcast i8** %__s1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %67) #2
  %data = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %mediaType, i32 0, i32 0
  %68 = load i8*, i8** %data, align 8, !tbaa !41
  store i8* %68, i8** %__s1, align 8, !tbaa !1
  %69 = bitcast i32* %__result to i8*
  call void @llvm.lifetime.start(i64 4, i8* %69) #2
  %70 = load i8*, i8** %__s1, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %70, i64 0
  %71 = load i8, i8* %arrayidx, align 1, !tbaa !42
  %conv32 = zext i8 %71 to i32
  %72 = load i8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i32 0, i32 0), align 1, !tbaa !42
  %conv33 = zext i8 %72 to i32
  %sub = sub nsw i32 %conv32, %conv33
  store i32 %sub, i32* %__result, align 4, !tbaa !7
  %73 = load i64, i64* %__s2_len, align 8, !tbaa !28
  %cmp34 = icmp ugt i64 %73, 0
  br i1 %cmp34, label %land.lhs.true.36, label %if.end.65

land.lhs.true.36:                                 ; preds = %cond.true.29
  %74 = load i32, i32* %__result, align 4, !tbaa !7
  %cmp37 = icmp eq i32 %74, 0
  br i1 %cmp37, label %if.then.39, label %if.end.65

if.then.39:                                       ; preds = %land.lhs.true.36
  %75 = load i8*, i8** %__s1, align 8, !tbaa !1
  %arrayidx40 = getelementptr inbounds i8, i8* %75, i64 1
  %76 = load i8, i8* %arrayidx40, align 1, !tbaa !42
  %conv41 = zext i8 %76 to i32
  %77 = load i8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i32 0, i64 1), align 1, !tbaa !42
  %conv42 = zext i8 %77 to i32
  %sub43 = sub nsw i32 %conv41, %conv42
  store i32 %sub43, i32* %__result, align 4, !tbaa !7
  %78 = load i64, i64* %__s2_len, align 8, !tbaa !28
  %cmp44 = icmp ugt i64 %78, 1
  br i1 %cmp44, label %land.lhs.true.46, label %if.end.64

land.lhs.true.46:                                 ; preds = %if.then.39
  %79 = load i32, i32* %__result, align 4, !tbaa !7
  %cmp47 = icmp eq i32 %79, 0
  br i1 %cmp47, label %if.then.49, label %if.end.64

if.then.49:                                       ; preds = %land.lhs.true.46
  %80 = load i8*, i8** %__s1, align 8, !tbaa !1
  %arrayidx50 = getelementptr inbounds i8, i8* %80, i64 2
  %81 = load i8, i8* %arrayidx50, align 1, !tbaa !42
  %conv51 = zext i8 %81 to i32
  %82 = load i8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i32 0, i64 2), align 1, !tbaa !42
  %conv52 = zext i8 %82 to i32
  %sub53 = sub nsw i32 %conv51, %conv52
  store i32 %sub53, i32* %__result, align 4, !tbaa !7
  %83 = load i64, i64* %__s2_len, align 8, !tbaa !28
  %cmp54 = icmp ugt i64 %83, 2
  br i1 %cmp54, label %land.lhs.true.56, label %if.end

land.lhs.true.56:                                 ; preds = %if.then.49
  %84 = load i32, i32* %__result, align 4, !tbaa !7
  %cmp57 = icmp eq i32 %84, 0
  br i1 %cmp57, label %if.then.59, label %if.end

if.then.59:                                       ; preds = %land.lhs.true.56
  %85 = load i8*, i8** %__s1, align 8, !tbaa !1
  %arrayidx60 = getelementptr inbounds i8, i8* %85, i64 3
  %86 = load i8, i8* %arrayidx60, align 1, !tbaa !42
  %conv61 = zext i8 %86 to i32
  %87 = load i8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i32 0, i64 3), align 1, !tbaa !42
  %conv62 = zext i8 %87 to i32
  %sub63 = sub nsw i32 %conv61, %conv62
  store i32 %sub63, i32* %__result, align 4, !tbaa !7
  br label %if.end

if.end:                                           ; preds = %if.then.59, %land.lhs.true.56, %if.then.49
  br label %if.end.64

if.end.64:                                        ; preds = %if.end, %land.lhs.true.46, %if.then.39
  br label %if.end.65

if.end.65:                                        ; preds = %if.end.64, %land.lhs.true.36, %cond.true.29
  %88 = load i32, i32* %__result, align 4, !tbaa !7
  store i32 %88, i32* %tmp66, !tbaa !7
  %89 = bitcast i32* %__result to i8*
  call void @llvm.lifetime.end(i64 4, i8* %89) #2
  %90 = bitcast i8** %__s1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %90) #2
  %91 = load i32, i32* %tmp66, !tbaa !7
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true.25, %cond.true
  %data67 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %mediaType, i32 0, i32 0
  %92 = load i8*, i8** %data67, align 8, !tbaa !41
  %call68 = call i32 @strcmp(i8* %92, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i32 0, i32 0)) #7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end.65
  %cond = phi i32 [ %91, %if.end.65 ], [ %call68, %cond.false ]
  store i32 %cond, i32* %tmp, !tbaa !7
  %93 = bitcast i64* %__s2_len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %93) #2
  %94 = bitcast i64* %__s1_len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %94) #2
  %95 = load i32, i32* %tmp, !tbaa !7
  %tobool = icmp ne i32 %95, 0
  br i1 %tobool, label %cond.false.76, label %cond.true.75

cond.false.69:                                    ; preds = %land.lhs.true, %if.then
  %data70 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %mediaType, i32 0, i32 0
  %96 = load i8*, i8** %data70, align 8, !tbaa !41
  %size71 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %mediaType, i32 0, i32 1
  %97 = load i32, i32* %size71, align 4, !tbaa !39
  %conv72 = zext i32 %97 to i64
  %call73 = call i32 @strncmp(i8* %96, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i32 0, i32 0), i64 %conv72) #6
  %tobool74 = icmp ne i32 %call73, 0
  br i1 %tobool74, label %cond.false.76, label %cond.true.75

cond.true.75:                                     ; preds = %cond.false.69, %cond.end
  br label %cond.end.767

cond.false.76:                                    ; preds = %cond.false.69, %cond.end
  br i1 false, label %land.lhs.true.77, label %cond.false.143

land.lhs.true.77:                                 ; preds = %cond.false.76
  %call78 = call i64 @strlen(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.16, i32 0, i32 0)) #6
  %size79 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %mediaType, i32 0, i32 1
  %98 = load i32, i32* %size79, align 4, !tbaa !39
  %conv80 = zext i32 %98 to i64
  %cmp81 = icmp ult i64 %call78, %conv80
  br i1 %cmp81, label %cond.true.83, label %cond.false.143

cond.true.83:                                     ; preds = %land.lhs.true.77
  %99 = bitcast i64* %__s1_len85 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %99) #2
  %100 = bitcast i64* %__s2_len87 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %100) #2
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.16, i32 0, i64 1) to i64), i64 ptrtoint ([11 x i8]* @.str.16 to i64)), i64 1), label %land.lhs.true.89, label %cond.false.137

land.lhs.true.89:                                 ; preds = %cond.true.83
  %call90 = call i64 @strlen(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.16, i32 0, i32 0)) #6
  store i64 %call90, i64* %__s2_len87, align 8, !tbaa !28
  %101 = load i64, i64* %__s2_len87, align 8, !tbaa !28
  %cmp91 = icmp ult i64 %101, 4
  br i1 %cmp91, label %cond.true.93, label %cond.false.137

cond.true.93:                                     ; preds = %land.lhs.true.89
  %102 = bitcast i8** %__s195 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %102) #2
  %data96 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %mediaType, i32 0, i32 0
  %103 = load i8*, i8** %data96, align 8, !tbaa !41
  store i8* %103, i8** %__s195, align 8, !tbaa !1
  %104 = bitcast i32* %__result98 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %104) #2
  %105 = load i8*, i8** %__s195, align 8, !tbaa !1
  %arrayidx99 = getelementptr inbounds i8, i8* %105, i64 0
  %106 = load i8, i8* %arrayidx99, align 1, !tbaa !42
  %conv100 = zext i8 %106 to i32
  %107 = load i8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.16, i32 0, i32 0), align 1, !tbaa !42
  %conv101 = zext i8 %107 to i32
  %sub102 = sub nsw i32 %conv100, %conv101
  store i32 %sub102, i32* %__result98, align 4, !tbaa !7
  %108 = load i64, i64* %__s2_len87, align 8, !tbaa !28
  %cmp103 = icmp ugt i64 %108, 0
  br i1 %cmp103, label %land.lhs.true.105, label %if.end.135

land.lhs.true.105:                                ; preds = %cond.true.93
  %109 = load i32, i32* %__result98, align 4, !tbaa !7
  %cmp106 = icmp eq i32 %109, 0
  br i1 %cmp106, label %if.then.108, label %if.end.135

if.then.108:                                      ; preds = %land.lhs.true.105
  %110 = load i8*, i8** %__s195, align 8, !tbaa !1
  %arrayidx109 = getelementptr inbounds i8, i8* %110, i64 1
  %111 = load i8, i8* %arrayidx109, align 1, !tbaa !42
  %conv110 = zext i8 %111 to i32
  %112 = load i8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.16, i32 0, i64 1), align 1, !tbaa !42
  %conv111 = zext i8 %112 to i32
  %sub112 = sub nsw i32 %conv110, %conv111
  store i32 %sub112, i32* %__result98, align 4, !tbaa !7
  %113 = load i64, i64* %__s2_len87, align 8, !tbaa !28
  %cmp113 = icmp ugt i64 %113, 1
  br i1 %cmp113, label %land.lhs.true.115, label %if.end.134

land.lhs.true.115:                                ; preds = %if.then.108
  %114 = load i32, i32* %__result98, align 4, !tbaa !7
  %cmp116 = icmp eq i32 %114, 0
  br i1 %cmp116, label %if.then.118, label %if.end.134

if.then.118:                                      ; preds = %land.lhs.true.115
  %115 = load i8*, i8** %__s195, align 8, !tbaa !1
  %arrayidx119 = getelementptr inbounds i8, i8* %115, i64 2
  %116 = load i8, i8* %arrayidx119, align 1, !tbaa !42
  %conv120 = zext i8 %116 to i32
  %117 = load i8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.16, i32 0, i64 2), align 1, !tbaa !42
  %conv121 = zext i8 %117 to i32
  %sub122 = sub nsw i32 %conv120, %conv121
  store i32 %sub122, i32* %__result98, align 4, !tbaa !7
  %118 = load i64, i64* %__s2_len87, align 8, !tbaa !28
  %cmp123 = icmp ugt i64 %118, 2
  br i1 %cmp123, label %land.lhs.true.125, label %if.end.133

land.lhs.true.125:                                ; preds = %if.then.118
  %119 = load i32, i32* %__result98, align 4, !tbaa !7
  %cmp126 = icmp eq i32 %119, 0
  br i1 %cmp126, label %if.then.128, label %if.end.133

if.then.128:                                      ; preds = %land.lhs.true.125
  %120 = load i8*, i8** %__s195, align 8, !tbaa !1
  %arrayidx129 = getelementptr inbounds i8, i8* %120, i64 3
  %121 = load i8, i8* %arrayidx129, align 1, !tbaa !42
  %conv130 = zext i8 %121 to i32
  %122 = load i8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.16, i32 0, i64 3), align 1, !tbaa !42
  %conv131 = zext i8 %122 to i32
  %sub132 = sub nsw i32 %conv130, %conv131
  store i32 %sub132, i32* %__result98, align 4, !tbaa !7
  br label %if.end.133

if.end.133:                                       ; preds = %if.then.128, %land.lhs.true.125, %if.then.118
  br label %if.end.134

if.end.134:                                       ; preds = %if.end.133, %land.lhs.true.115, %if.then.108
  br label %if.end.135

if.end.135:                                       ; preds = %if.end.134, %land.lhs.true.105, %cond.true.93
  %123 = load i32, i32* %__result98, align 4, !tbaa !7
  store i32 %123, i32* %tmp136, !tbaa !7
  %124 = bitcast i32* %__result98 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %124) #2
  %125 = bitcast i8** %__s195 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %125) #2
  %126 = load i32, i32* %tmp136, !tbaa !7
  br label %cond.end.140

cond.false.137:                                   ; preds = %land.lhs.true.89, %cond.true.83
  %data138 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %mediaType, i32 0, i32 0
  %127 = load i8*, i8** %data138, align 8, !tbaa !41
  %call139 = call i32 @strcmp(i8* %127, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.16, i32 0, i32 0)) #7
  br label %cond.end.140

cond.end.140:                                     ; preds = %cond.false.137, %if.end.135
  %cond141 = phi i32 [ %126, %if.end.135 ], [ %call139, %cond.false.137 ]
  store i32 %cond141, i32* %tmp88, !tbaa !7
  %128 = bitcast i64* %__s2_len87 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %128) #2
  %129 = bitcast i64* %__s1_len85 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %129) #2
  %130 = load i32, i32* %tmp88, !tbaa !7
  %tobool142 = icmp ne i32 %130, 0
  br i1 %tobool142, label %cond.false.150, label %cond.true.149

cond.false.143:                                   ; preds = %land.lhs.true.77, %cond.false.76
  %data144 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %mediaType, i32 0, i32 0
  %131 = load i8*, i8** %data144, align 8, !tbaa !41
  %size145 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %mediaType, i32 0, i32 1
  %132 = load i32, i32* %size145, align 4, !tbaa !39
  %conv146 = zext i32 %132 to i64
  %call147 = call i32 @strncmp(i8* %131, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.16, i32 0, i32 0), i64 %conv146) #6
  %tobool148 = icmp ne i32 %call147, 0
  br i1 %tobool148, label %cond.false.150, label %cond.true.149

cond.true.149:                                    ; preds = %cond.false.143, %cond.end.140
  br label %cond.end.765

cond.false.150:                                   ; preds = %cond.false.143, %cond.end.140
  br i1 false, label %land.lhs.true.151, label %cond.false.217

land.lhs.true.151:                                ; preds = %cond.false.150
  %call152 = call i64 @strlen(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i32 0, i32 0)) #6
  %size153 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %mediaType, i32 0, i32 1
  %133 = load i32, i32* %size153, align 4, !tbaa !39
  %conv154 = zext i32 %133 to i64
  %cmp155 = icmp ult i64 %call152, %conv154
  br i1 %cmp155, label %cond.true.157, label %cond.false.217

cond.true.157:                                    ; preds = %land.lhs.true.151
  %134 = bitcast i64* %__s1_len159 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %134) #2
  %135 = bitcast i64* %__s2_len161 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %135) #2
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i32 0, i64 1) to i64), i64 ptrtoint ([9 x i8]* @.str.17 to i64)), i64 1), label %land.lhs.true.163, label %cond.false.211

land.lhs.true.163:                                ; preds = %cond.true.157
  %call164 = call i64 @strlen(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i32 0, i32 0)) #6
  store i64 %call164, i64* %__s2_len161, align 8, !tbaa !28
  %136 = load i64, i64* %__s2_len161, align 8, !tbaa !28
  %cmp165 = icmp ult i64 %136, 4
  br i1 %cmp165, label %cond.true.167, label %cond.false.211

cond.true.167:                                    ; preds = %land.lhs.true.163
  %137 = bitcast i8** %__s1169 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %137) #2
  %data170 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %mediaType, i32 0, i32 0
  %138 = load i8*, i8** %data170, align 8, !tbaa !41
  store i8* %138, i8** %__s1169, align 8, !tbaa !1
  %139 = bitcast i32* %__result172 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %139) #2
  %140 = load i8*, i8** %__s1169, align 8, !tbaa !1
  %arrayidx173 = getelementptr inbounds i8, i8* %140, i64 0
  %141 = load i8, i8* %arrayidx173, align 1, !tbaa !42
  %conv174 = zext i8 %141 to i32
  %142 = load i8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i32 0, i32 0), align 1, !tbaa !42
  %conv175 = zext i8 %142 to i32
  %sub176 = sub nsw i32 %conv174, %conv175
  store i32 %sub176, i32* %__result172, align 4, !tbaa !7
  %143 = load i64, i64* %__s2_len161, align 8, !tbaa !28
  %cmp177 = icmp ugt i64 %143, 0
  br i1 %cmp177, label %land.lhs.true.179, label %if.end.209

land.lhs.true.179:                                ; preds = %cond.true.167
  %144 = load i32, i32* %__result172, align 4, !tbaa !7
  %cmp180 = icmp eq i32 %144, 0
  br i1 %cmp180, label %if.then.182, label %if.end.209

if.then.182:                                      ; preds = %land.lhs.true.179
  %145 = load i8*, i8** %__s1169, align 8, !tbaa !1
  %arrayidx183 = getelementptr inbounds i8, i8* %145, i64 1
  %146 = load i8, i8* %arrayidx183, align 1, !tbaa !42
  %conv184 = zext i8 %146 to i32
  %147 = load i8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i32 0, i64 1), align 1, !tbaa !42
  %conv185 = zext i8 %147 to i32
  %sub186 = sub nsw i32 %conv184, %conv185
  store i32 %sub186, i32* %__result172, align 4, !tbaa !7
  %148 = load i64, i64* %__s2_len161, align 8, !tbaa !28
  %cmp187 = icmp ugt i64 %148, 1
  br i1 %cmp187, label %land.lhs.true.189, label %if.end.208

land.lhs.true.189:                                ; preds = %if.then.182
  %149 = load i32, i32* %__result172, align 4, !tbaa !7
  %cmp190 = icmp eq i32 %149, 0
  br i1 %cmp190, label %if.then.192, label %if.end.208

if.then.192:                                      ; preds = %land.lhs.true.189
  %150 = load i8*, i8** %__s1169, align 8, !tbaa !1
  %arrayidx193 = getelementptr inbounds i8, i8* %150, i64 2
  %151 = load i8, i8* %arrayidx193, align 1, !tbaa !42
  %conv194 = zext i8 %151 to i32
  %152 = load i8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i32 0, i64 2), align 1, !tbaa !42
  %conv195 = zext i8 %152 to i32
  %sub196 = sub nsw i32 %conv194, %conv195
  store i32 %sub196, i32* %__result172, align 4, !tbaa !7
  %153 = load i64, i64* %__s2_len161, align 8, !tbaa !28
  %cmp197 = icmp ugt i64 %153, 2
  br i1 %cmp197, label %land.lhs.true.199, label %if.end.207

land.lhs.true.199:                                ; preds = %if.then.192
  %154 = load i32, i32* %__result172, align 4, !tbaa !7
  %cmp200 = icmp eq i32 %154, 0
  br i1 %cmp200, label %if.then.202, label %if.end.207

if.then.202:                                      ; preds = %land.lhs.true.199
  %155 = load i8*, i8** %__s1169, align 8, !tbaa !1
  %arrayidx203 = getelementptr inbounds i8, i8* %155, i64 3
  %156 = load i8, i8* %arrayidx203, align 1, !tbaa !42
  %conv204 = zext i8 %156 to i32
  %157 = load i8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i32 0, i64 3), align 1, !tbaa !42
  %conv205 = zext i8 %157 to i32
  %sub206 = sub nsw i32 %conv204, %conv205
  store i32 %sub206, i32* %__result172, align 4, !tbaa !7
  br label %if.end.207

if.end.207:                                       ; preds = %if.then.202, %land.lhs.true.199, %if.then.192
  br label %if.end.208

if.end.208:                                       ; preds = %if.end.207, %land.lhs.true.189, %if.then.182
  br label %if.end.209

if.end.209:                                       ; preds = %if.end.208, %land.lhs.true.179, %cond.true.167
  %158 = load i32, i32* %__result172, align 4, !tbaa !7
  store i32 %158, i32* %tmp210, !tbaa !7
  %159 = bitcast i32* %__result172 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %159) #2
  %160 = bitcast i8** %__s1169 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %160) #2
  %161 = load i32, i32* %tmp210, !tbaa !7
  br label %cond.end.214

cond.false.211:                                   ; preds = %land.lhs.true.163, %cond.true.157
  %data212 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %mediaType, i32 0, i32 0
  %162 = load i8*, i8** %data212, align 8, !tbaa !41
  %call213 = call i32 @strcmp(i8* %162, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i32 0, i32 0)) #7
  br label %cond.end.214

cond.end.214:                                     ; preds = %cond.false.211, %if.end.209
  %cond215 = phi i32 [ %161, %if.end.209 ], [ %call213, %cond.false.211 ]
  store i32 %cond215, i32* %tmp162, !tbaa !7
  %163 = bitcast i64* %__s2_len161 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %163) #2
  %164 = bitcast i64* %__s1_len159 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %164) #2
  %165 = load i32, i32* %tmp162, !tbaa !7
  %tobool216 = icmp ne i32 %165, 0
  br i1 %tobool216, label %cond.false.224, label %cond.true.223

cond.false.217:                                   ; preds = %land.lhs.true.151, %cond.false.150
  %data218 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %mediaType, i32 0, i32 0
  %166 = load i8*, i8** %data218, align 8, !tbaa !41
  %size219 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %mediaType, i32 0, i32 1
  %167 = load i32, i32* %size219, align 4, !tbaa !39
  %conv220 = zext i32 %167 to i64
  %call221 = call i32 @strncmp(i8* %166, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i32 0, i32 0), i64 %conv220) #6
  %tobool222 = icmp ne i32 %call221, 0
  br i1 %tobool222, label %cond.false.224, label %cond.true.223

cond.true.223:                                    ; preds = %cond.false.217, %cond.end.214
  br label %cond.end.763

cond.false.224:                                   ; preds = %cond.false.217, %cond.end.214
  br i1 false, label %land.lhs.true.225, label %cond.false.291

land.lhs.true.225:                                ; preds = %cond.false.224
  %call226 = call i64 @strlen(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.18, i32 0, i32 0)) #6
  %size227 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %mediaType, i32 0, i32 1
  %168 = load i32, i32* %size227, align 4, !tbaa !39
  %conv228 = zext i32 %168 to i64
  %cmp229 = icmp ult i64 %call226, %conv228
  br i1 %cmp229, label %cond.true.231, label %cond.false.291

cond.true.231:                                    ; preds = %land.lhs.true.225
  %169 = bitcast i64* %__s1_len233 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %169) #2
  %170 = bitcast i64* %__s2_len235 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %170) #2
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.18, i32 0, i64 1) to i64), i64 ptrtoint ([11 x i8]* @.str.18 to i64)), i64 1), label %land.lhs.true.237, label %cond.false.285

land.lhs.true.237:                                ; preds = %cond.true.231
  %call238 = call i64 @strlen(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.18, i32 0, i32 0)) #6
  store i64 %call238, i64* %__s2_len235, align 8, !tbaa !28
  %171 = load i64, i64* %__s2_len235, align 8, !tbaa !28
  %cmp239 = icmp ult i64 %171, 4
  br i1 %cmp239, label %cond.true.241, label %cond.false.285

cond.true.241:                                    ; preds = %land.lhs.true.237
  %172 = bitcast i8** %__s1243 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %172) #2
  %data244 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %mediaType, i32 0, i32 0
  %173 = load i8*, i8** %data244, align 8, !tbaa !41
  store i8* %173, i8** %__s1243, align 8, !tbaa !1
  %174 = bitcast i32* %__result246 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %174) #2
  %175 = load i8*, i8** %__s1243, align 8, !tbaa !1
  %arrayidx247 = getelementptr inbounds i8, i8* %175, i64 0
  %176 = load i8, i8* %arrayidx247, align 1, !tbaa !42
  %conv248 = zext i8 %176 to i32
  %177 = load i8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.18, i32 0, i32 0), align 1, !tbaa !42
  %conv249 = zext i8 %177 to i32
  %sub250 = sub nsw i32 %conv248, %conv249
  store i32 %sub250, i32* %__result246, align 4, !tbaa !7
  %178 = load i64, i64* %__s2_len235, align 8, !tbaa !28
  %cmp251 = icmp ugt i64 %178, 0
  br i1 %cmp251, label %land.lhs.true.253, label %if.end.283

land.lhs.true.253:                                ; preds = %cond.true.241
  %179 = load i32, i32* %__result246, align 4, !tbaa !7
  %cmp254 = icmp eq i32 %179, 0
  br i1 %cmp254, label %if.then.256, label %if.end.283

if.then.256:                                      ; preds = %land.lhs.true.253
  %180 = load i8*, i8** %__s1243, align 8, !tbaa !1
  %arrayidx257 = getelementptr inbounds i8, i8* %180, i64 1
  %181 = load i8, i8* %arrayidx257, align 1, !tbaa !42
  %conv258 = zext i8 %181 to i32
  %182 = load i8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.18, i32 0, i64 1), align 1, !tbaa !42
  %conv259 = zext i8 %182 to i32
  %sub260 = sub nsw i32 %conv258, %conv259
  store i32 %sub260, i32* %__result246, align 4, !tbaa !7
  %183 = load i64, i64* %__s2_len235, align 8, !tbaa !28
  %cmp261 = icmp ugt i64 %183, 1
  br i1 %cmp261, label %land.lhs.true.263, label %if.end.282

land.lhs.true.263:                                ; preds = %if.then.256
  %184 = load i32, i32* %__result246, align 4, !tbaa !7
  %cmp264 = icmp eq i32 %184, 0
  br i1 %cmp264, label %if.then.266, label %if.end.282

if.then.266:                                      ; preds = %land.lhs.true.263
  %185 = load i8*, i8** %__s1243, align 8, !tbaa !1
  %arrayidx267 = getelementptr inbounds i8, i8* %185, i64 2
  %186 = load i8, i8* %arrayidx267, align 1, !tbaa !42
  %conv268 = zext i8 %186 to i32
  %187 = load i8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.18, i32 0, i64 2), align 1, !tbaa !42
  %conv269 = zext i8 %187 to i32
  %sub270 = sub nsw i32 %conv268, %conv269
  store i32 %sub270, i32* %__result246, align 4, !tbaa !7
  %188 = load i64, i64* %__s2_len235, align 8, !tbaa !28
  %cmp271 = icmp ugt i64 %188, 2
  br i1 %cmp271, label %land.lhs.true.273, label %if.end.281

land.lhs.true.273:                                ; preds = %if.then.266
  %189 = load i32, i32* %__result246, align 4, !tbaa !7
  %cmp274 = icmp eq i32 %189, 0
  br i1 %cmp274, label %if.then.276, label %if.end.281

if.then.276:                                      ; preds = %land.lhs.true.273
  %190 = load i8*, i8** %__s1243, align 8, !tbaa !1
  %arrayidx277 = getelementptr inbounds i8, i8* %190, i64 3
  %191 = load i8, i8* %arrayidx277, align 1, !tbaa !42
  %conv278 = zext i8 %191 to i32
  %192 = load i8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.18, i32 0, i64 3), align 1, !tbaa !42
  %conv279 = zext i8 %192 to i32
  %sub280 = sub nsw i32 %conv278, %conv279
  store i32 %sub280, i32* %__result246, align 4, !tbaa !7
  br label %if.end.281

if.end.281:                                       ; preds = %if.then.276, %land.lhs.true.273, %if.then.266
  br label %if.end.282

if.end.282:                                       ; preds = %if.end.281, %land.lhs.true.263, %if.then.256
  br label %if.end.283

if.end.283:                                       ; preds = %if.end.282, %land.lhs.true.253, %cond.true.241
  %193 = load i32, i32* %__result246, align 4, !tbaa !7
  store i32 %193, i32* %tmp284, !tbaa !7
  %194 = bitcast i32* %__result246 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %194) #2
  %195 = bitcast i8** %__s1243 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %195) #2
  %196 = load i32, i32* %tmp284, !tbaa !7
  br label %cond.end.288

cond.false.285:                                   ; preds = %land.lhs.true.237, %cond.true.231
  %data286 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %mediaType, i32 0, i32 0
  %197 = load i8*, i8** %data286, align 8, !tbaa !41
  %call287 = call i32 @strcmp(i8* %197, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.18, i32 0, i32 0)) #7
  br label %cond.end.288

cond.end.288:                                     ; preds = %cond.false.285, %if.end.283
  %cond289 = phi i32 [ %196, %if.end.283 ], [ %call287, %cond.false.285 ]
  store i32 %cond289, i32* %tmp236, !tbaa !7
  %198 = bitcast i64* %__s2_len235 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %198) #2
  %199 = bitcast i64* %__s1_len233 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %199) #2
  %200 = load i32, i32* %tmp236, !tbaa !7
  %tobool290 = icmp ne i32 %200, 0
  br i1 %tobool290, label %cond.false.298, label %cond.true.297

cond.false.291:                                   ; preds = %land.lhs.true.225, %cond.false.224
  %data292 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %mediaType, i32 0, i32 0
  %201 = load i8*, i8** %data292, align 8, !tbaa !41
  %size293 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %mediaType, i32 0, i32 1
  %202 = load i32, i32* %size293, align 4, !tbaa !39
  %conv294 = zext i32 %202 to i64
  %call295 = call i32 @strncmp(i8* %201, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.18, i32 0, i32 0), i64 %conv294) #6
  %tobool296 = icmp ne i32 %call295, 0
  br i1 %tobool296, label %cond.false.298, label %cond.true.297

cond.true.297:                                    ; preds = %cond.false.291, %cond.end.288
  br label %cond.end.761

cond.false.298:                                   ; preds = %cond.false.291, %cond.end.288
  br i1 false, label %land.lhs.true.299, label %cond.false.365

land.lhs.true.299:                                ; preds = %cond.false.298
  %call300 = call i64 @strlen(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i32 0, i32 0)) #6
  %size301 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %mediaType, i32 0, i32 1
  %203 = load i32, i32* %size301, align 4, !tbaa !39
  %conv302 = zext i32 %203 to i64
  %cmp303 = icmp ult i64 %call300, %conv302
  br i1 %cmp303, label %cond.true.305, label %cond.false.365

cond.true.305:                                    ; preds = %land.lhs.true.299
  %204 = bitcast i64* %__s1_len307 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %204) #2
  %205 = bitcast i64* %__s2_len309 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %205) #2
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i32 0, i64 1) to i64), i64 ptrtoint ([10 x i8]* @.str.19 to i64)), i64 1), label %land.lhs.true.311, label %cond.false.359

land.lhs.true.311:                                ; preds = %cond.true.305
  %call312 = call i64 @strlen(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i32 0, i32 0)) #6
  store i64 %call312, i64* %__s2_len309, align 8, !tbaa !28
  %206 = load i64, i64* %__s2_len309, align 8, !tbaa !28
  %cmp313 = icmp ult i64 %206, 4
  br i1 %cmp313, label %cond.true.315, label %cond.false.359

cond.true.315:                                    ; preds = %land.lhs.true.311
  %207 = bitcast i8** %__s1317 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %207) #2
  %data318 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %mediaType, i32 0, i32 0
  %208 = load i8*, i8** %data318, align 8, !tbaa !41
  store i8* %208, i8** %__s1317, align 8, !tbaa !1
  %209 = bitcast i32* %__result320 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %209) #2
  %210 = load i8*, i8** %__s1317, align 8, !tbaa !1
  %arrayidx321 = getelementptr inbounds i8, i8* %210, i64 0
  %211 = load i8, i8* %arrayidx321, align 1, !tbaa !42
  %conv322 = zext i8 %211 to i32
  %212 = load i8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i32 0, i32 0), align 1, !tbaa !42
  %conv323 = zext i8 %212 to i32
  %sub324 = sub nsw i32 %conv322, %conv323
  store i32 %sub324, i32* %__result320, align 4, !tbaa !7
  %213 = load i64, i64* %__s2_len309, align 8, !tbaa !28
  %cmp325 = icmp ugt i64 %213, 0
  br i1 %cmp325, label %land.lhs.true.327, label %if.end.357

land.lhs.true.327:                                ; preds = %cond.true.315
  %214 = load i32, i32* %__result320, align 4, !tbaa !7
  %cmp328 = icmp eq i32 %214, 0
  br i1 %cmp328, label %if.then.330, label %if.end.357

if.then.330:                                      ; preds = %land.lhs.true.327
  %215 = load i8*, i8** %__s1317, align 8, !tbaa !1
  %arrayidx331 = getelementptr inbounds i8, i8* %215, i64 1
  %216 = load i8, i8* %arrayidx331, align 1, !tbaa !42
  %conv332 = zext i8 %216 to i32
  %217 = load i8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i32 0, i64 1), align 1, !tbaa !42
  %conv333 = zext i8 %217 to i32
  %sub334 = sub nsw i32 %conv332, %conv333
  store i32 %sub334, i32* %__result320, align 4, !tbaa !7
  %218 = load i64, i64* %__s2_len309, align 8, !tbaa !28
  %cmp335 = icmp ugt i64 %218, 1
  br i1 %cmp335, label %land.lhs.true.337, label %if.end.356

land.lhs.true.337:                                ; preds = %if.then.330
  %219 = load i32, i32* %__result320, align 4, !tbaa !7
  %cmp338 = icmp eq i32 %219, 0
  br i1 %cmp338, label %if.then.340, label %if.end.356

if.then.340:                                      ; preds = %land.lhs.true.337
  %220 = load i8*, i8** %__s1317, align 8, !tbaa !1
  %arrayidx341 = getelementptr inbounds i8, i8* %220, i64 2
  %221 = load i8, i8* %arrayidx341, align 1, !tbaa !42
  %conv342 = zext i8 %221 to i32
  %222 = load i8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i32 0, i64 2), align 1, !tbaa !42
  %conv343 = zext i8 %222 to i32
  %sub344 = sub nsw i32 %conv342, %conv343
  store i32 %sub344, i32* %__result320, align 4, !tbaa !7
  %223 = load i64, i64* %__s2_len309, align 8, !tbaa !28
  %cmp345 = icmp ugt i64 %223, 2
  br i1 %cmp345, label %land.lhs.true.347, label %if.end.355

land.lhs.true.347:                                ; preds = %if.then.340
  %224 = load i32, i32* %__result320, align 4, !tbaa !7
  %cmp348 = icmp eq i32 %224, 0
  br i1 %cmp348, label %if.then.350, label %if.end.355

if.then.350:                                      ; preds = %land.lhs.true.347
  %225 = load i8*, i8** %__s1317, align 8, !tbaa !1
  %arrayidx351 = getelementptr inbounds i8, i8* %225, i64 3
  %226 = load i8, i8* %arrayidx351, align 1, !tbaa !42
  %conv352 = zext i8 %226 to i32
  %227 = load i8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i32 0, i64 3), align 1, !tbaa !42
  %conv353 = zext i8 %227 to i32
  %sub354 = sub nsw i32 %conv352, %conv353
  store i32 %sub354, i32* %__result320, align 4, !tbaa !7
  br label %if.end.355

if.end.355:                                       ; preds = %if.then.350, %land.lhs.true.347, %if.then.340
  br label %if.end.356

if.end.356:                                       ; preds = %if.end.355, %land.lhs.true.337, %if.then.330
  br label %if.end.357

if.end.357:                                       ; preds = %if.end.356, %land.lhs.true.327, %cond.true.315
  %228 = load i32, i32* %__result320, align 4, !tbaa !7
  store i32 %228, i32* %tmp358, !tbaa !7
  %229 = bitcast i32* %__result320 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %229) #2
  %230 = bitcast i8** %__s1317 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %230) #2
  %231 = load i32, i32* %tmp358, !tbaa !7
  br label %cond.end.362

cond.false.359:                                   ; preds = %land.lhs.true.311, %cond.true.305
  %data360 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %mediaType, i32 0, i32 0
  %232 = load i8*, i8** %data360, align 8, !tbaa !41
  %call361 = call i32 @strcmp(i8* %232, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i32 0, i32 0)) #7
  br label %cond.end.362

cond.end.362:                                     ; preds = %cond.false.359, %if.end.357
  %cond363 = phi i32 [ %231, %if.end.357 ], [ %call361, %cond.false.359 ]
  store i32 %cond363, i32* %tmp310, !tbaa !7
  %233 = bitcast i64* %__s2_len309 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %233) #2
  %234 = bitcast i64* %__s1_len307 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %234) #2
  %235 = load i32, i32* %tmp310, !tbaa !7
  %tobool364 = icmp ne i32 %235, 0
  br i1 %tobool364, label %cond.false.372, label %cond.true.371

cond.false.365:                                   ; preds = %land.lhs.true.299, %cond.false.298
  %data366 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %mediaType, i32 0, i32 0
  %236 = load i8*, i8** %data366, align 8, !tbaa !41
  %size367 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %mediaType, i32 0, i32 1
  %237 = load i32, i32* %size367, align 4, !tbaa !39
  %conv368 = zext i32 %237 to i64
  %call369 = call i32 @strncmp(i8* %236, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i32 0, i32 0), i64 %conv368) #6
  %tobool370 = icmp ne i32 %call369, 0
  br i1 %tobool370, label %cond.false.372, label %cond.true.371

cond.true.371:                                    ; preds = %cond.false.365, %cond.end.362
  br label %cond.end.759

cond.false.372:                                   ; preds = %cond.false.365, %cond.end.362
  br i1 false, label %land.lhs.true.373, label %cond.false.439

land.lhs.true.373:                                ; preds = %cond.false.372
  %call374 = call i64 @strlen(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i32 0, i32 0)) #6
  %size375 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %mediaType, i32 0, i32 1
  %238 = load i32, i32* %size375, align 4, !tbaa !39
  %conv376 = zext i32 %238 to i64
  %cmp377 = icmp ult i64 %call374, %conv376
  br i1 %cmp377, label %cond.true.379, label %cond.false.439

cond.true.379:                                    ; preds = %land.lhs.true.373
  %239 = bitcast i64* %__s1_len381 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %239) #2
  %240 = bitcast i64* %__s2_len383 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %240) #2
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i32 0, i64 1) to i64), i64 ptrtoint ([9 x i8]* @.str.20 to i64)), i64 1), label %land.lhs.true.385, label %cond.false.433

land.lhs.true.385:                                ; preds = %cond.true.379
  %call386 = call i64 @strlen(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i32 0, i32 0)) #6
  store i64 %call386, i64* %__s2_len383, align 8, !tbaa !28
  %241 = load i64, i64* %__s2_len383, align 8, !tbaa !28
  %cmp387 = icmp ult i64 %241, 4
  br i1 %cmp387, label %cond.true.389, label %cond.false.433

cond.true.389:                                    ; preds = %land.lhs.true.385
  %242 = bitcast i8** %__s1391 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %242) #2
  %data392 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %mediaType, i32 0, i32 0
  %243 = load i8*, i8** %data392, align 8, !tbaa !41
  store i8* %243, i8** %__s1391, align 8, !tbaa !1
  %244 = bitcast i32* %__result394 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %244) #2
  %245 = load i8*, i8** %__s1391, align 8, !tbaa !1
  %arrayidx395 = getelementptr inbounds i8, i8* %245, i64 0
  %246 = load i8, i8* %arrayidx395, align 1, !tbaa !42
  %conv396 = zext i8 %246 to i32
  %247 = load i8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i32 0, i32 0), align 1, !tbaa !42
  %conv397 = zext i8 %247 to i32
  %sub398 = sub nsw i32 %conv396, %conv397
  store i32 %sub398, i32* %__result394, align 4, !tbaa !7
  %248 = load i64, i64* %__s2_len383, align 8, !tbaa !28
  %cmp399 = icmp ugt i64 %248, 0
  br i1 %cmp399, label %land.lhs.true.401, label %if.end.431

land.lhs.true.401:                                ; preds = %cond.true.389
  %249 = load i32, i32* %__result394, align 4, !tbaa !7
  %cmp402 = icmp eq i32 %249, 0
  br i1 %cmp402, label %if.then.404, label %if.end.431

if.then.404:                                      ; preds = %land.lhs.true.401
  %250 = load i8*, i8** %__s1391, align 8, !tbaa !1
  %arrayidx405 = getelementptr inbounds i8, i8* %250, i64 1
  %251 = load i8, i8* %arrayidx405, align 1, !tbaa !42
  %conv406 = zext i8 %251 to i32
  %252 = load i8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i32 0, i64 1), align 1, !tbaa !42
  %conv407 = zext i8 %252 to i32
  %sub408 = sub nsw i32 %conv406, %conv407
  store i32 %sub408, i32* %__result394, align 4, !tbaa !7
  %253 = load i64, i64* %__s2_len383, align 8, !tbaa !28
  %cmp409 = icmp ugt i64 %253, 1
  br i1 %cmp409, label %land.lhs.true.411, label %if.end.430

land.lhs.true.411:                                ; preds = %if.then.404
  %254 = load i32, i32* %__result394, align 4, !tbaa !7
  %cmp412 = icmp eq i32 %254, 0
  br i1 %cmp412, label %if.then.414, label %if.end.430

if.then.414:                                      ; preds = %land.lhs.true.411
  %255 = load i8*, i8** %__s1391, align 8, !tbaa !1
  %arrayidx415 = getelementptr inbounds i8, i8* %255, i64 2
  %256 = load i8, i8* %arrayidx415, align 1, !tbaa !42
  %conv416 = zext i8 %256 to i32
  %257 = load i8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i32 0, i64 2), align 1, !tbaa !42
  %conv417 = zext i8 %257 to i32
  %sub418 = sub nsw i32 %conv416, %conv417
  store i32 %sub418, i32* %__result394, align 4, !tbaa !7
  %258 = load i64, i64* %__s2_len383, align 8, !tbaa !28
  %cmp419 = icmp ugt i64 %258, 2
  br i1 %cmp419, label %land.lhs.true.421, label %if.end.429

land.lhs.true.421:                                ; preds = %if.then.414
  %259 = load i32, i32* %__result394, align 4, !tbaa !7
  %cmp422 = icmp eq i32 %259, 0
  br i1 %cmp422, label %if.then.424, label %if.end.429

if.then.424:                                      ; preds = %land.lhs.true.421
  %260 = load i8*, i8** %__s1391, align 8, !tbaa !1
  %arrayidx425 = getelementptr inbounds i8, i8* %260, i64 3
  %261 = load i8, i8* %arrayidx425, align 1, !tbaa !42
  %conv426 = zext i8 %261 to i32
  %262 = load i8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i32 0, i64 3), align 1, !tbaa !42
  %conv427 = zext i8 %262 to i32
  %sub428 = sub nsw i32 %conv426, %conv427
  store i32 %sub428, i32* %__result394, align 4, !tbaa !7
  br label %if.end.429

if.end.429:                                       ; preds = %if.then.424, %land.lhs.true.421, %if.then.414
  br label %if.end.430

if.end.430:                                       ; preds = %if.end.429, %land.lhs.true.411, %if.then.404
  br label %if.end.431

if.end.431:                                       ; preds = %if.end.430, %land.lhs.true.401, %cond.true.389
  %263 = load i32, i32* %__result394, align 4, !tbaa !7
  store i32 %263, i32* %tmp432, !tbaa !7
  %264 = bitcast i32* %__result394 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %264) #2
  %265 = bitcast i8** %__s1391 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %265) #2
  %266 = load i32, i32* %tmp432, !tbaa !7
  br label %cond.end.436

cond.false.433:                                   ; preds = %land.lhs.true.385, %cond.true.379
  %data434 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %mediaType, i32 0, i32 0
  %267 = load i8*, i8** %data434, align 8, !tbaa !41
  %call435 = call i32 @strcmp(i8* %267, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i32 0, i32 0)) #7
  br label %cond.end.436

cond.end.436:                                     ; preds = %cond.false.433, %if.end.431
  %cond437 = phi i32 [ %266, %if.end.431 ], [ %call435, %cond.false.433 ]
  store i32 %cond437, i32* %tmp384, !tbaa !7
  %268 = bitcast i64* %__s2_len383 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %268) #2
  %269 = bitcast i64* %__s1_len381 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %269) #2
  %270 = load i32, i32* %tmp384, !tbaa !7
  %tobool438 = icmp ne i32 %270, 0
  br i1 %tobool438, label %cond.false.446, label %cond.true.445

cond.false.439:                                   ; preds = %land.lhs.true.373, %cond.false.372
  %data440 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %mediaType, i32 0, i32 0
  %271 = load i8*, i8** %data440, align 8, !tbaa !41
  %size441 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %mediaType, i32 0, i32 1
  %272 = load i32, i32* %size441, align 4, !tbaa !39
  %conv442 = zext i32 %272 to i64
  %call443 = call i32 @strncmp(i8* %271, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i32 0, i32 0), i64 %conv442) #6
  %tobool444 = icmp ne i32 %call443, 0
  br i1 %tobool444, label %cond.false.446, label %cond.true.445

cond.true.445:                                    ; preds = %cond.false.439, %cond.end.436
  br label %cond.end.757

cond.false.446:                                   ; preds = %cond.false.439, %cond.end.436
  br i1 false, label %land.lhs.true.447, label %cond.false.513

land.lhs.true.447:                                ; preds = %cond.false.446
  %call448 = call i64 @strlen(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i32 0, i32 0)) #6
  %size449 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %mediaType, i32 0, i32 1
  %273 = load i32, i32* %size449, align 4, !tbaa !39
  %conv450 = zext i32 %273 to i64
  %cmp451 = icmp ult i64 %call448, %conv450
  br i1 %cmp451, label %cond.true.453, label %cond.false.513

cond.true.453:                                    ; preds = %land.lhs.true.447
  %274 = bitcast i64* %__s1_len455 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %274) #2
  %275 = bitcast i64* %__s2_len457 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %275) #2
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i32 0, i64 1) to i64), i64 ptrtoint ([10 x i8]* @.str.21 to i64)), i64 1), label %land.lhs.true.459, label %cond.false.507

land.lhs.true.459:                                ; preds = %cond.true.453
  %call460 = call i64 @strlen(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i32 0, i32 0)) #6
  store i64 %call460, i64* %__s2_len457, align 8, !tbaa !28
  %276 = load i64, i64* %__s2_len457, align 8, !tbaa !28
  %cmp461 = icmp ult i64 %276, 4
  br i1 %cmp461, label %cond.true.463, label %cond.false.507

cond.true.463:                                    ; preds = %land.lhs.true.459
  %277 = bitcast i8** %__s1465 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %277) #2
  %data466 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %mediaType, i32 0, i32 0
  %278 = load i8*, i8** %data466, align 8, !tbaa !41
  store i8* %278, i8** %__s1465, align 8, !tbaa !1
  %279 = bitcast i32* %__result468 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %279) #2
  %280 = load i8*, i8** %__s1465, align 8, !tbaa !1
  %arrayidx469 = getelementptr inbounds i8, i8* %280, i64 0
  %281 = load i8, i8* %arrayidx469, align 1, !tbaa !42
  %conv470 = zext i8 %281 to i32
  %282 = load i8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i32 0, i32 0), align 1, !tbaa !42
  %conv471 = zext i8 %282 to i32
  %sub472 = sub nsw i32 %conv470, %conv471
  store i32 %sub472, i32* %__result468, align 4, !tbaa !7
  %283 = load i64, i64* %__s2_len457, align 8, !tbaa !28
  %cmp473 = icmp ugt i64 %283, 0
  br i1 %cmp473, label %land.lhs.true.475, label %if.end.505

land.lhs.true.475:                                ; preds = %cond.true.463
  %284 = load i32, i32* %__result468, align 4, !tbaa !7
  %cmp476 = icmp eq i32 %284, 0
  br i1 %cmp476, label %if.then.478, label %if.end.505

if.then.478:                                      ; preds = %land.lhs.true.475
  %285 = load i8*, i8** %__s1465, align 8, !tbaa !1
  %arrayidx479 = getelementptr inbounds i8, i8* %285, i64 1
  %286 = load i8, i8* %arrayidx479, align 1, !tbaa !42
  %conv480 = zext i8 %286 to i32
  %287 = load i8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i32 0, i64 1), align 1, !tbaa !42
  %conv481 = zext i8 %287 to i32
  %sub482 = sub nsw i32 %conv480, %conv481
  store i32 %sub482, i32* %__result468, align 4, !tbaa !7
  %288 = load i64, i64* %__s2_len457, align 8, !tbaa !28
  %cmp483 = icmp ugt i64 %288, 1
  br i1 %cmp483, label %land.lhs.true.485, label %if.end.504

land.lhs.true.485:                                ; preds = %if.then.478
  %289 = load i32, i32* %__result468, align 4, !tbaa !7
  %cmp486 = icmp eq i32 %289, 0
  br i1 %cmp486, label %if.then.488, label %if.end.504

if.then.488:                                      ; preds = %land.lhs.true.485
  %290 = load i8*, i8** %__s1465, align 8, !tbaa !1
  %arrayidx489 = getelementptr inbounds i8, i8* %290, i64 2
  %291 = load i8, i8* %arrayidx489, align 1, !tbaa !42
  %conv490 = zext i8 %291 to i32
  %292 = load i8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i32 0, i64 2), align 1, !tbaa !42
  %conv491 = zext i8 %292 to i32
  %sub492 = sub nsw i32 %conv490, %conv491
  store i32 %sub492, i32* %__result468, align 4, !tbaa !7
  %293 = load i64, i64* %__s2_len457, align 8, !tbaa !28
  %cmp493 = icmp ugt i64 %293, 2
  br i1 %cmp493, label %land.lhs.true.495, label %if.end.503

land.lhs.true.495:                                ; preds = %if.then.488
  %294 = load i32, i32* %__result468, align 4, !tbaa !7
  %cmp496 = icmp eq i32 %294, 0
  br i1 %cmp496, label %if.then.498, label %if.end.503

if.then.498:                                      ; preds = %land.lhs.true.495
  %295 = load i8*, i8** %__s1465, align 8, !tbaa !1
  %arrayidx499 = getelementptr inbounds i8, i8* %295, i64 3
  %296 = load i8, i8* %arrayidx499, align 1, !tbaa !42
  %conv500 = zext i8 %296 to i32
  %297 = load i8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i32 0, i64 3), align 1, !tbaa !42
  %conv501 = zext i8 %297 to i32
  %sub502 = sub nsw i32 %conv500, %conv501
  store i32 %sub502, i32* %__result468, align 4, !tbaa !7
  br label %if.end.503

if.end.503:                                       ; preds = %if.then.498, %land.lhs.true.495, %if.then.488
  br label %if.end.504

if.end.504:                                       ; preds = %if.end.503, %land.lhs.true.485, %if.then.478
  br label %if.end.505

if.end.505:                                       ; preds = %if.end.504, %land.lhs.true.475, %cond.true.463
  %298 = load i32, i32* %__result468, align 4, !tbaa !7
  store i32 %298, i32* %tmp506, !tbaa !7
  %299 = bitcast i32* %__result468 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %299) #2
  %300 = bitcast i8** %__s1465 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %300) #2
  %301 = load i32, i32* %tmp506, !tbaa !7
  br label %cond.end.510

cond.false.507:                                   ; preds = %land.lhs.true.459, %cond.true.453
  %data508 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %mediaType, i32 0, i32 0
  %302 = load i8*, i8** %data508, align 8, !tbaa !41
  %call509 = call i32 @strcmp(i8* %302, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i32 0, i32 0)) #7
  br label %cond.end.510

cond.end.510:                                     ; preds = %cond.false.507, %if.end.505
  %cond511 = phi i32 [ %301, %if.end.505 ], [ %call509, %cond.false.507 ]
  store i32 %cond511, i32* %tmp458, !tbaa !7
  %303 = bitcast i64* %__s2_len457 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %303) #2
  %304 = bitcast i64* %__s1_len455 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %304) #2
  %305 = load i32, i32* %tmp458, !tbaa !7
  %tobool512 = icmp ne i32 %305, 0
  br i1 %tobool512, label %cond.false.520, label %cond.true.519

cond.false.513:                                   ; preds = %land.lhs.true.447, %cond.false.446
  %data514 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %mediaType, i32 0, i32 0
  %306 = load i8*, i8** %data514, align 8, !tbaa !41
  %size515 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %mediaType, i32 0, i32 1
  %307 = load i32, i32* %size515, align 4, !tbaa !39
  %conv516 = zext i32 %307 to i64
  %call517 = call i32 @strncmp(i8* %306, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i32 0, i32 0), i64 %conv516) #6
  %tobool518 = icmp ne i32 %call517, 0
  br i1 %tobool518, label %cond.false.520, label %cond.true.519

cond.true.519:                                    ; preds = %cond.false.513, %cond.end.510
  br label %cond.end.755

cond.false.520:                                   ; preds = %cond.false.513, %cond.end.510
  br i1 false, label %land.lhs.true.521, label %cond.false.587

land.lhs.true.521:                                ; preds = %cond.false.520
  %call522 = call i64 @strlen(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.22, i32 0, i32 0)) #6
  %size523 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %mediaType, i32 0, i32 1
  %308 = load i32, i32* %size523, align 4, !tbaa !39
  %conv524 = zext i32 %308 to i64
  %cmp525 = icmp ult i64 %call522, %conv524
  br i1 %cmp525, label %cond.true.527, label %cond.false.587

cond.true.527:                                    ; preds = %land.lhs.true.521
  %309 = bitcast i64* %__s1_len529 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %309) #2
  %310 = bitcast i64* %__s2_len531 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %310) #2
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.22, i32 0, i64 1) to i64), i64 ptrtoint ([11 x i8]* @.str.22 to i64)), i64 1), label %land.lhs.true.533, label %cond.false.581

land.lhs.true.533:                                ; preds = %cond.true.527
  %call534 = call i64 @strlen(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.22, i32 0, i32 0)) #6
  store i64 %call534, i64* %__s2_len531, align 8, !tbaa !28
  %311 = load i64, i64* %__s2_len531, align 8, !tbaa !28
  %cmp535 = icmp ult i64 %311, 4
  br i1 %cmp535, label %cond.true.537, label %cond.false.581

cond.true.537:                                    ; preds = %land.lhs.true.533
  %312 = bitcast i8** %__s1539 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %312) #2
  %data540 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %mediaType, i32 0, i32 0
  %313 = load i8*, i8** %data540, align 8, !tbaa !41
  store i8* %313, i8** %__s1539, align 8, !tbaa !1
  %314 = bitcast i32* %__result542 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %314) #2
  %315 = load i8*, i8** %__s1539, align 8, !tbaa !1
  %arrayidx543 = getelementptr inbounds i8, i8* %315, i64 0
  %316 = load i8, i8* %arrayidx543, align 1, !tbaa !42
  %conv544 = zext i8 %316 to i32
  %317 = load i8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.22, i32 0, i32 0), align 1, !tbaa !42
  %conv545 = zext i8 %317 to i32
  %sub546 = sub nsw i32 %conv544, %conv545
  store i32 %sub546, i32* %__result542, align 4, !tbaa !7
  %318 = load i64, i64* %__s2_len531, align 8, !tbaa !28
  %cmp547 = icmp ugt i64 %318, 0
  br i1 %cmp547, label %land.lhs.true.549, label %if.end.579

land.lhs.true.549:                                ; preds = %cond.true.537
  %319 = load i32, i32* %__result542, align 4, !tbaa !7
  %cmp550 = icmp eq i32 %319, 0
  br i1 %cmp550, label %if.then.552, label %if.end.579

if.then.552:                                      ; preds = %land.lhs.true.549
  %320 = load i8*, i8** %__s1539, align 8, !tbaa !1
  %arrayidx553 = getelementptr inbounds i8, i8* %320, i64 1
  %321 = load i8, i8* %arrayidx553, align 1, !tbaa !42
  %conv554 = zext i8 %321 to i32
  %322 = load i8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.22, i32 0, i64 1), align 1, !tbaa !42
  %conv555 = zext i8 %322 to i32
  %sub556 = sub nsw i32 %conv554, %conv555
  store i32 %sub556, i32* %__result542, align 4, !tbaa !7
  %323 = load i64, i64* %__s2_len531, align 8, !tbaa !28
  %cmp557 = icmp ugt i64 %323, 1
  br i1 %cmp557, label %land.lhs.true.559, label %if.end.578

land.lhs.true.559:                                ; preds = %if.then.552
  %324 = load i32, i32* %__result542, align 4, !tbaa !7
  %cmp560 = icmp eq i32 %324, 0
  br i1 %cmp560, label %if.then.562, label %if.end.578

if.then.562:                                      ; preds = %land.lhs.true.559
  %325 = load i8*, i8** %__s1539, align 8, !tbaa !1
  %arrayidx563 = getelementptr inbounds i8, i8* %325, i64 2
  %326 = load i8, i8* %arrayidx563, align 1, !tbaa !42
  %conv564 = zext i8 %326 to i32
  %327 = load i8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.22, i32 0, i64 2), align 1, !tbaa !42
  %conv565 = zext i8 %327 to i32
  %sub566 = sub nsw i32 %conv564, %conv565
  store i32 %sub566, i32* %__result542, align 4, !tbaa !7
  %328 = load i64, i64* %__s2_len531, align 8, !tbaa !28
  %cmp567 = icmp ugt i64 %328, 2
  br i1 %cmp567, label %land.lhs.true.569, label %if.end.577

land.lhs.true.569:                                ; preds = %if.then.562
  %329 = load i32, i32* %__result542, align 4, !tbaa !7
  %cmp570 = icmp eq i32 %329, 0
  br i1 %cmp570, label %if.then.572, label %if.end.577

if.then.572:                                      ; preds = %land.lhs.true.569
  %330 = load i8*, i8** %__s1539, align 8, !tbaa !1
  %arrayidx573 = getelementptr inbounds i8, i8* %330, i64 3
  %331 = load i8, i8* %arrayidx573, align 1, !tbaa !42
  %conv574 = zext i8 %331 to i32
  %332 = load i8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.22, i32 0, i64 3), align 1, !tbaa !42
  %conv575 = zext i8 %332 to i32
  %sub576 = sub nsw i32 %conv574, %conv575
  store i32 %sub576, i32* %__result542, align 4, !tbaa !7
  br label %if.end.577

if.end.577:                                       ; preds = %if.then.572, %land.lhs.true.569, %if.then.562
  br label %if.end.578

if.end.578:                                       ; preds = %if.end.577, %land.lhs.true.559, %if.then.552
  br label %if.end.579

if.end.579:                                       ; preds = %if.end.578, %land.lhs.true.549, %cond.true.537
  %333 = load i32, i32* %__result542, align 4, !tbaa !7
  store i32 %333, i32* %tmp580, !tbaa !7
  %334 = bitcast i32* %__result542 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %334) #2
  %335 = bitcast i8** %__s1539 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %335) #2
  %336 = load i32, i32* %tmp580, !tbaa !7
  br label %cond.end.584

cond.false.581:                                   ; preds = %land.lhs.true.533, %cond.true.527
  %data582 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %mediaType, i32 0, i32 0
  %337 = load i8*, i8** %data582, align 8, !tbaa !41
  %call583 = call i32 @strcmp(i8* %337, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.22, i32 0, i32 0)) #7
  br label %cond.end.584

cond.end.584:                                     ; preds = %cond.false.581, %if.end.579
  %cond585 = phi i32 [ %336, %if.end.579 ], [ %call583, %cond.false.581 ]
  store i32 %cond585, i32* %tmp532, !tbaa !7
  %338 = bitcast i64* %__s2_len531 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %338) #2
  %339 = bitcast i64* %__s1_len529 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %339) #2
  %340 = load i32, i32* %tmp532, !tbaa !7
  %tobool586 = icmp ne i32 %340, 0
  br i1 %tobool586, label %cond.false.594, label %cond.true.593

cond.false.587:                                   ; preds = %land.lhs.true.521, %cond.false.520
  %data588 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %mediaType, i32 0, i32 0
  %341 = load i8*, i8** %data588, align 8, !tbaa !41
  %size589 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %mediaType, i32 0, i32 1
  %342 = load i32, i32* %size589, align 4, !tbaa !39
  %conv590 = zext i32 %342 to i64
  %call591 = call i32 @strncmp(i8* %341, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.22, i32 0, i32 0), i64 %conv590) #6
  %tobool592 = icmp ne i32 %call591, 0
  br i1 %tobool592, label %cond.false.594, label %cond.true.593

cond.true.593:                                    ; preds = %cond.false.587, %cond.end.584
  br label %cond.end.753

cond.false.594:                                   ; preds = %cond.false.587, %cond.end.584
  br i1 false, label %land.lhs.true.595, label %cond.false.661

land.lhs.true.595:                                ; preds = %cond.false.594
  %call596 = call i64 @strlen(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.23, i32 0, i32 0)) #6
  %size597 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %mediaType, i32 0, i32 1
  %343 = load i32, i32* %size597, align 4, !tbaa !39
  %conv598 = zext i32 %343 to i64
  %cmp599 = icmp ult i64 %call596, %conv598
  br i1 %cmp599, label %cond.true.601, label %cond.false.661

cond.true.601:                                    ; preds = %land.lhs.true.595
  %344 = bitcast i64* %__s1_len603 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %344) #2
  %345 = bitcast i64* %__s2_len605 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %345) #2
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.23, i32 0, i64 1) to i64), i64 ptrtoint ([12 x i8]* @.str.23 to i64)), i64 1), label %land.lhs.true.607, label %cond.false.655

land.lhs.true.607:                                ; preds = %cond.true.601
  %call608 = call i64 @strlen(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.23, i32 0, i32 0)) #6
  store i64 %call608, i64* %__s2_len605, align 8, !tbaa !28
  %346 = load i64, i64* %__s2_len605, align 8, !tbaa !28
  %cmp609 = icmp ult i64 %346, 4
  br i1 %cmp609, label %cond.true.611, label %cond.false.655

cond.true.611:                                    ; preds = %land.lhs.true.607
  %347 = bitcast i8** %__s1613 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %347) #2
  %data614 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %mediaType, i32 0, i32 0
  %348 = load i8*, i8** %data614, align 8, !tbaa !41
  store i8* %348, i8** %__s1613, align 8, !tbaa !1
  %349 = bitcast i32* %__result616 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %349) #2
  %350 = load i8*, i8** %__s1613, align 8, !tbaa !1
  %arrayidx617 = getelementptr inbounds i8, i8* %350, i64 0
  %351 = load i8, i8* %arrayidx617, align 1, !tbaa !42
  %conv618 = zext i8 %351 to i32
  %352 = load i8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.23, i32 0, i32 0), align 1, !tbaa !42
  %conv619 = zext i8 %352 to i32
  %sub620 = sub nsw i32 %conv618, %conv619
  store i32 %sub620, i32* %__result616, align 4, !tbaa !7
  %353 = load i64, i64* %__s2_len605, align 8, !tbaa !28
  %cmp621 = icmp ugt i64 %353, 0
  br i1 %cmp621, label %land.lhs.true.623, label %if.end.653

land.lhs.true.623:                                ; preds = %cond.true.611
  %354 = load i32, i32* %__result616, align 4, !tbaa !7
  %cmp624 = icmp eq i32 %354, 0
  br i1 %cmp624, label %if.then.626, label %if.end.653

if.then.626:                                      ; preds = %land.lhs.true.623
  %355 = load i8*, i8** %__s1613, align 8, !tbaa !1
  %arrayidx627 = getelementptr inbounds i8, i8* %355, i64 1
  %356 = load i8, i8* %arrayidx627, align 1, !tbaa !42
  %conv628 = zext i8 %356 to i32
  %357 = load i8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.23, i32 0, i64 1), align 1, !tbaa !42
  %conv629 = zext i8 %357 to i32
  %sub630 = sub nsw i32 %conv628, %conv629
  store i32 %sub630, i32* %__result616, align 4, !tbaa !7
  %358 = load i64, i64* %__s2_len605, align 8, !tbaa !28
  %cmp631 = icmp ugt i64 %358, 1
  br i1 %cmp631, label %land.lhs.true.633, label %if.end.652

land.lhs.true.633:                                ; preds = %if.then.626
  %359 = load i32, i32* %__result616, align 4, !tbaa !7
  %cmp634 = icmp eq i32 %359, 0
  br i1 %cmp634, label %if.then.636, label %if.end.652

if.then.636:                                      ; preds = %land.lhs.true.633
  %360 = load i8*, i8** %__s1613, align 8, !tbaa !1
  %arrayidx637 = getelementptr inbounds i8, i8* %360, i64 2
  %361 = load i8, i8* %arrayidx637, align 1, !tbaa !42
  %conv638 = zext i8 %361 to i32
  %362 = load i8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.23, i32 0, i64 2), align 1, !tbaa !42
  %conv639 = zext i8 %362 to i32
  %sub640 = sub nsw i32 %conv638, %conv639
  store i32 %sub640, i32* %__result616, align 4, !tbaa !7
  %363 = load i64, i64* %__s2_len605, align 8, !tbaa !28
  %cmp641 = icmp ugt i64 %363, 2
  br i1 %cmp641, label %land.lhs.true.643, label %if.end.651

land.lhs.true.643:                                ; preds = %if.then.636
  %364 = load i32, i32* %__result616, align 4, !tbaa !7
  %cmp644 = icmp eq i32 %364, 0
  br i1 %cmp644, label %if.then.646, label %if.end.651

if.then.646:                                      ; preds = %land.lhs.true.643
  %365 = load i8*, i8** %__s1613, align 8, !tbaa !1
  %arrayidx647 = getelementptr inbounds i8, i8* %365, i64 3
  %366 = load i8, i8* %arrayidx647, align 1, !tbaa !42
  %conv648 = zext i8 %366 to i32
  %367 = load i8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.23, i32 0, i64 3), align 1, !tbaa !42
  %conv649 = zext i8 %367 to i32
  %sub650 = sub nsw i32 %conv648, %conv649
  store i32 %sub650, i32* %__result616, align 4, !tbaa !7
  br label %if.end.651

if.end.651:                                       ; preds = %if.then.646, %land.lhs.true.643, %if.then.636
  br label %if.end.652

if.end.652:                                       ; preds = %if.end.651, %land.lhs.true.633, %if.then.626
  br label %if.end.653

if.end.653:                                       ; preds = %if.end.652, %land.lhs.true.623, %cond.true.611
  %368 = load i32, i32* %__result616, align 4, !tbaa !7
  store i32 %368, i32* %tmp654, !tbaa !7
  %369 = bitcast i32* %__result616 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %369) #2
  %370 = bitcast i8** %__s1613 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %370) #2
  %371 = load i32, i32* %tmp654, !tbaa !7
  br label %cond.end.658

cond.false.655:                                   ; preds = %land.lhs.true.607, %cond.true.601
  %data656 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %mediaType, i32 0, i32 0
  %372 = load i8*, i8** %data656, align 8, !tbaa !41
  %call657 = call i32 @strcmp(i8* %372, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.23, i32 0, i32 0)) #7
  br label %cond.end.658

cond.end.658:                                     ; preds = %cond.false.655, %if.end.653
  %cond659 = phi i32 [ %371, %if.end.653 ], [ %call657, %cond.false.655 ]
  store i32 %cond659, i32* %tmp606, !tbaa !7
  %373 = bitcast i64* %__s2_len605 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %373) #2
  %374 = bitcast i64* %__s1_len603 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %374) #2
  %375 = load i32, i32* %tmp606, !tbaa !7
  %tobool660 = icmp ne i32 %375, 0
  br i1 %tobool660, label %cond.false.668, label %cond.true.667

cond.false.661:                                   ; preds = %land.lhs.true.595, %cond.false.594
  %data662 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %mediaType, i32 0, i32 0
  %376 = load i8*, i8** %data662, align 8, !tbaa !41
  %size663 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %mediaType, i32 0, i32 1
  %377 = load i32, i32* %size663, align 4, !tbaa !39
  %conv664 = zext i32 %377 to i64
  %call665 = call i32 @strncmp(i8* %376, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.23, i32 0, i32 0), i64 %conv664) #6
  %tobool666 = icmp ne i32 %call665, 0
  br i1 %tobool666, label %cond.false.668, label %cond.true.667

cond.true.667:                                    ; preds = %cond.false.661, %cond.end.658
  br label %cond.end.751

cond.false.668:                                   ; preds = %cond.false.661, %cond.end.658
  br i1 false, label %land.lhs.true.669, label %cond.false.735

land.lhs.true.669:                                ; preds = %cond.false.668
  %call670 = call i64 @strlen(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i32 0, i32 0)) #6
  %size671 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %mediaType, i32 0, i32 1
  %378 = load i32, i32* %size671, align 4, !tbaa !39
  %conv672 = zext i32 %378 to i64
  %cmp673 = icmp ult i64 %call670, %conv672
  br i1 %cmp673, label %cond.true.675, label %cond.false.735

cond.true.675:                                    ; preds = %land.lhs.true.669
  %379 = bitcast i64* %__s1_len677 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %379) #2
  %380 = bitcast i64* %__s2_len679 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %380) #2
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i32 0, i64 1) to i64), i64 ptrtoint ([17 x i8]* @.str.24 to i64)), i64 1), label %land.lhs.true.681, label %cond.false.729

land.lhs.true.681:                                ; preds = %cond.true.675
  %call682 = call i64 @strlen(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i32 0, i32 0)) #6
  store i64 %call682, i64* %__s2_len679, align 8, !tbaa !28
  %381 = load i64, i64* %__s2_len679, align 8, !tbaa !28
  %cmp683 = icmp ult i64 %381, 4
  br i1 %cmp683, label %cond.true.685, label %cond.false.729

cond.true.685:                                    ; preds = %land.lhs.true.681
  %382 = bitcast i8** %__s1687 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %382) #2
  %data688 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %mediaType, i32 0, i32 0
  %383 = load i8*, i8** %data688, align 8, !tbaa !41
  store i8* %383, i8** %__s1687, align 8, !tbaa !1
  %384 = bitcast i32* %__result690 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %384) #2
  %385 = load i8*, i8** %__s1687, align 8, !tbaa !1
  %arrayidx691 = getelementptr inbounds i8, i8* %385, i64 0
  %386 = load i8, i8* %arrayidx691, align 1, !tbaa !42
  %conv692 = zext i8 %386 to i32
  %387 = load i8, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i32 0, i32 0), align 1, !tbaa !42
  %conv693 = zext i8 %387 to i32
  %sub694 = sub nsw i32 %conv692, %conv693
  store i32 %sub694, i32* %__result690, align 4, !tbaa !7
  %388 = load i64, i64* %__s2_len679, align 8, !tbaa !28
  %cmp695 = icmp ugt i64 %388, 0
  br i1 %cmp695, label %land.lhs.true.697, label %if.end.727

land.lhs.true.697:                                ; preds = %cond.true.685
  %389 = load i32, i32* %__result690, align 4, !tbaa !7
  %cmp698 = icmp eq i32 %389, 0
  br i1 %cmp698, label %if.then.700, label %if.end.727

if.then.700:                                      ; preds = %land.lhs.true.697
  %390 = load i8*, i8** %__s1687, align 8, !tbaa !1
  %arrayidx701 = getelementptr inbounds i8, i8* %390, i64 1
  %391 = load i8, i8* %arrayidx701, align 1, !tbaa !42
  %conv702 = zext i8 %391 to i32
  %392 = load i8, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i32 0, i64 1), align 1, !tbaa !42
  %conv703 = zext i8 %392 to i32
  %sub704 = sub nsw i32 %conv702, %conv703
  store i32 %sub704, i32* %__result690, align 4, !tbaa !7
  %393 = load i64, i64* %__s2_len679, align 8, !tbaa !28
  %cmp705 = icmp ugt i64 %393, 1
  br i1 %cmp705, label %land.lhs.true.707, label %if.end.726

land.lhs.true.707:                                ; preds = %if.then.700
  %394 = load i32, i32* %__result690, align 4, !tbaa !7
  %cmp708 = icmp eq i32 %394, 0
  br i1 %cmp708, label %if.then.710, label %if.end.726

if.then.710:                                      ; preds = %land.lhs.true.707
  %395 = load i8*, i8** %__s1687, align 8, !tbaa !1
  %arrayidx711 = getelementptr inbounds i8, i8* %395, i64 2
  %396 = load i8, i8* %arrayidx711, align 1, !tbaa !42
  %conv712 = zext i8 %396 to i32
  %397 = load i8, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i32 0, i64 2), align 1, !tbaa !42
  %conv713 = zext i8 %397 to i32
  %sub714 = sub nsw i32 %conv712, %conv713
  store i32 %sub714, i32* %__result690, align 4, !tbaa !7
  %398 = load i64, i64* %__s2_len679, align 8, !tbaa !28
  %cmp715 = icmp ugt i64 %398, 2
  br i1 %cmp715, label %land.lhs.true.717, label %if.end.725

land.lhs.true.717:                                ; preds = %if.then.710
  %399 = load i32, i32* %__result690, align 4, !tbaa !7
  %cmp718 = icmp eq i32 %399, 0
  br i1 %cmp718, label %if.then.720, label %if.end.725

if.then.720:                                      ; preds = %land.lhs.true.717
  %400 = load i8*, i8** %__s1687, align 8, !tbaa !1
  %arrayidx721 = getelementptr inbounds i8, i8* %400, i64 3
  %401 = load i8, i8* %arrayidx721, align 1, !tbaa !42
  %conv722 = zext i8 %401 to i32
  %402 = load i8, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i32 0, i64 3), align 1, !tbaa !42
  %conv723 = zext i8 %402 to i32
  %sub724 = sub nsw i32 %conv722, %conv723
  store i32 %sub724, i32* %__result690, align 4, !tbaa !7
  br label %if.end.725

if.end.725:                                       ; preds = %if.then.720, %land.lhs.true.717, %if.then.710
  br label %if.end.726

if.end.726:                                       ; preds = %if.end.725, %land.lhs.true.707, %if.then.700
  br label %if.end.727

if.end.727:                                       ; preds = %if.end.726, %land.lhs.true.697, %cond.true.685
  %403 = load i32, i32* %__result690, align 4, !tbaa !7
  store i32 %403, i32* %tmp728, !tbaa !7
  %404 = bitcast i32* %__result690 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %404) #2
  %405 = bitcast i8** %__s1687 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %405) #2
  %406 = load i32, i32* %tmp728, !tbaa !7
  br label %cond.end.732

cond.false.729:                                   ; preds = %land.lhs.true.681, %cond.true.675
  %data730 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %mediaType, i32 0, i32 0
  %407 = load i8*, i8** %data730, align 8, !tbaa !41
  %call731 = call i32 @strcmp(i8* %407, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i32 0, i32 0)) #7
  br label %cond.end.732

cond.end.732:                                     ; preds = %cond.false.729, %if.end.727
  %cond733 = phi i32 [ %406, %if.end.727 ], [ %call731, %cond.false.729 ]
  store i32 %cond733, i32* %tmp680, !tbaa !7
  %408 = bitcast i64* %__s2_len679 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %408) #2
  %409 = bitcast i64* %__s1_len677 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %409) #2
  %410 = load i32, i32* %tmp680, !tbaa !7
  %tobool734 = icmp ne i32 %410, 0
  br i1 %tobool734, label %cond.false.742, label %cond.true.741

cond.false.735:                                   ; preds = %land.lhs.true.669, %cond.false.668
  %data736 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %mediaType, i32 0, i32 0
  %411 = load i8*, i8** %data736, align 8, !tbaa !41
  %size737 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %mediaType, i32 0, i32 1
  %412 = load i32, i32* %size737, align 4, !tbaa !39
  %conv738 = zext i32 %412 to i64
  %call739 = call i32 @strncmp(i8* %411, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i32 0, i32 0), i64 %conv738) #6
  %tobool740 = icmp ne i32 %call739, 0
  br i1 %tobool740, label %cond.false.742, label %cond.true.741

cond.true.741:                                    ; preds = %cond.false.735, %cond.end.732
  br label %cond.end.749

cond.false.742:                                   ; preds = %cond.false.735, %cond.end.732
  %data743 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %mediaType, i32 0, i32 0
  %413 = load i8*, i8** %data743, align 8, !tbaa !41
  %size744 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %mediaType, i32 0, i32 1
  %414 = load i32, i32* %size744, align 4, !tbaa !39
  %conv745 = zext i32 %414 to i64
  %call746 = call i32 @strncmp(i8* %413, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.25, i32 0, i32 0), i64 %conv745) #6
  %tobool747 = icmp ne i32 %call746, 0
  %lnot = xor i1 %tobool747, true
  %cond748 = select i1 %lnot, i32 264, i32 -1
  br label %cond.end.749

cond.end.749:                                     ; preds = %cond.false.742, %cond.true.741
  %cond750 = phi i32 [ 264, %cond.true.741 ], [ %cond748, %cond.false.742 ]
  br label %cond.end.751

cond.end.751:                                     ; preds = %cond.end.749, %cond.true.667
  %cond752 = phi i32 [ 15, %cond.true.667 ], [ %cond750, %cond.end.749 ]
  br label %cond.end.753

cond.end.753:                                     ; preds = %cond.end.751, %cond.true.593
  %cond754 = phi i32 [ 9, %cond.true.593 ], [ %cond752, %cond.end.751 ]
  br label %cond.end.755

cond.end.755:                                     ; preds = %cond.end.753, %cond.true.519
  %cond756 = phi i32 [ 7, %cond.true.519 ], [ %cond754, %cond.end.753 ]
  br label %cond.end.757

cond.end.757:                                     ; preds = %cond.end.755, %cond.true.445
  %cond758 = phi i32 [ 6, %cond.true.445 ], [ %cond756, %cond.end.755 ]
  br label %cond.end.759

cond.end.759:                                     ; preds = %cond.end.757, %cond.true.371
  %cond760 = phi i32 [ 5, %cond.true.371 ], [ %cond758, %cond.end.757 ]
  br label %cond.end.761

cond.end.761:                                     ; preds = %cond.end.759, %cond.true.297
  %cond762 = phi i32 [ 3, %cond.true.297 ], [ %cond760, %cond.end.759 ]
  br label %cond.end.763

cond.end.763:                                     ; preds = %cond.end.761, %cond.true.223
  %cond764 = phi i32 [ 2, %cond.true.223 ], [ %cond762, %cond.end.761 ]
  br label %cond.end.765

cond.end.765:                                     ; preds = %cond.end.763, %cond.true.149
  %cond766 = phi i32 [ 1, %cond.true.149 ], [ %cond764, %cond.end.763 ]
  br label %cond.end.767

cond.end.767:                                     ; preds = %cond.end.765, %cond.true.75
  %cond768 = phi i32 [ 0, %cond.true.75 ], [ %cond766, %cond.end.765 ]
  %415 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %416 = bitcast %struct.gx_device_s* %415 to %struct.gx_device_alps_s*
  %mediaType769 = getelementptr inbounds %struct.gx_device_alps_s, %struct.gx_device_alps_s* %416, i32 0, i32 73
  store i32 %cond768, i32* %mediaType769, align 4, !tbaa !43
  %417 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %418 = bitcast %struct.gx_device_s* %417 to %struct.gx_device_alps_s*
  %mediaType770 = getelementptr inbounds %struct.gx_device_alps_s, %struct.gx_device_alps_s* %418, i32 0, i32 73
  %419 = load i32, i32* %mediaType770, align 4, !tbaa !43
  switch i32 %419, label %sw.default [
    i32 -1, label %sw.bb
    i32 1, label %sw.bb.772
    i32 6, label %sw.bb.774
  ]

sw.bb:                                            ; preds = %cond.end.767
  %420 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %420, i32 0, i32 0
  %421 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs, align 8, !tbaa !44
  %signal_error = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %421, i32 0, i32 7
  %422 = load i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*, i8*, i32)** %signal_error, align 8, !tbaa !46
  %423 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i32 -15, i32* %code, align 4, !tbaa !7
  %call771 = call i32 %422(%struct.gs_param_list_s* %423, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i32 0, i32 0), i32 -15) #5
  br label %sw.epilog

sw.bb.772:                                        ; preds = %cond.end.767
  %424 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %procs773 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %424, i32 0, i32 42
  %map_cmyk_color = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs773, i32 0, i32 15
  store i64 (%struct.gx_device_s*, i16*)* @alps_map_cmy_color, i64 (%struct.gx_device_s*, i16*)** %map_cmyk_color, align 8, !tbaa !48
  br label %sw.epilog

sw.bb.774:                                        ; preds = %cond.end.767
  %425 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %MediaSize = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %425, i32 0, i32 19
  %arrayidx775 = getelementptr inbounds [2 x float], [2 x float]* %MediaSize, i32 0, i64 0
  store float 2.840000e+02, float* %arrayidx775, align 4, !tbaa !5
  %426 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %MediaSize776 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %426, i32 0, i32 19
  %arrayidx777 = getelementptr inbounds [2 x float], [2 x float]* %MediaSize776, i32 0, i64 1
  store float 4.190000e+02, float* %arrayidx777, align 4, !tbaa !5
  br label %sw.default

sw.default:                                       ; preds = %cond.end.767, %sw.bb.774
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.772, %sw.bb
  br label %if.end.778

if.end.778:                                       ; preds = %sw.epilog, %entry
  %427 = load i32, i32* %code, align 4, !tbaa !7
  %cmp779 = icmp slt i32 %427, 0
  br i1 %cmp779, label %if.then.781, label %if.end.782

if.then.781:                                      ; preds = %if.end.778
  %428 = load i32, i32* %code, align 4, !tbaa !7
  store i32 %428, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.782:                                       ; preds = %if.end.778
  %429 = load i32, i32* %color, align 4, !tbaa !7
  %430 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %431 = bitcast %struct.gx_device_s* %430 to %struct.gx_device_alps_s*
  %color783 = getelementptr inbounds %struct.gx_device_alps_s, %struct.gx_device_alps_s* %431, i32 0, i32 68
  store i32 %429, i32* %color783, align 4, !tbaa !34
  %432 = load i32, i32* %dither, align 4, !tbaa !7
  %433 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %434 = bitcast %struct.gx_device_s* %433 to %struct.gx_device_alps_s*
  %dither784 = getelementptr inbounds %struct.gx_device_alps_s, %struct.gx_device_alps_s* %434, i32 0, i32 69
  store i32 %432, i32* %dither784, align 4, !tbaa !35
  %435 = load i32, i32* %manualFeed, align 4, !tbaa !7
  %436 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %437 = bitcast %struct.gx_device_s* %436 to %struct.gx_device_alps_s*
  %manualFeed785 = getelementptr inbounds %struct.gx_device_alps_s, %struct.gx_device_alps_s* %437, i32 0, i32 70
  store i32 %435, i32* %manualFeed785, align 4, !tbaa !36
  %438 = load i32, i32* %reverseSide, align 4, !tbaa !7
  %439 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %440 = bitcast %struct.gx_device_s* %439 to %struct.gx_device_alps_s*
  %reverseSide786 = getelementptr inbounds %struct.gx_device_alps_s, %struct.gx_device_alps_s* %440, i32 0, i32 71
  store i32 %438, i32* %reverseSide786, align 4, !tbaa !37
  %441 = load i32, i32* %ecoBlack, align 4, !tbaa !7
  %442 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %443 = bitcast %struct.gx_device_s* %442 to %struct.gx_device_alps_s*
  %ecoBlack787 = getelementptr inbounds %struct.gx_device_alps_s, %struct.gx_device_alps_s* %443, i32 0, i32 72
  store i32 %441, i32* %ecoBlack787, align 4, !tbaa !38
  %444 = load i32, i32* %cyan, align 4, !tbaa !7
  %445 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %446 = bitcast %struct.gx_device_s* %445 to %struct.gx_device_alps_s*
  %cyan788 = getelementptr inbounds %struct.gx_device_alps_s, %struct.gx_device_alps_s* %446, i32 0, i32 74
  store i32 %444, i32* %cyan788, align 4, !tbaa !9
  %447 = load i32, i32* %magenta, align 4, !tbaa !7
  %448 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %449 = bitcast %struct.gx_device_s* %448 to %struct.gx_device_alps_s*
  %magenta789 = getelementptr inbounds %struct.gx_device_alps_s, %struct.gx_device_alps_s* %449, i32 0, i32 75
  store i32 %447, i32* %magenta789, align 4, !tbaa !25
  %450 = load i32, i32* %yellow, align 4, !tbaa !7
  %451 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %452 = bitcast %struct.gx_device_s* %451 to %struct.gx_device_alps_s*
  %yellow790 = getelementptr inbounds %struct.gx_device_alps_s, %struct.gx_device_alps_s* %452, i32 0, i32 76
  store i32 %450, i32* %yellow790, align 4, !tbaa !26
  %453 = load i32, i32* %black, align 4, !tbaa !7
  %454 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %455 = bitcast %struct.gx_device_s* %454 to %struct.gx_device_alps_s*
  %black791 = getelementptr inbounds %struct.gx_device_alps_s, %struct.gx_device_alps_s* %455, i32 0, i32 77
  store i32 %453, i32* %black791, align 4, !tbaa !27
  %456 = load i32, i32* %bpp, align 4, !tbaa !7
  %tobool792 = icmp ne i32 %456, 0
  br i1 %tobool792, label %if.then.793, label %if.else

if.then.793:                                      ; preds = %if.end.782
  %457 = load i32, i32* %bpp, align 4, !tbaa !7
  %cmp794 = icmp slt i32 %457, 4
  br i1 %cmp794, label %cond.true.796, label %cond.false.797

cond.true.796:                                    ; preds = %if.then.793
  br label %cond.end.807

cond.false.797:                                   ; preds = %if.then.793
  %458 = load i32, i32* %bpp, align 4, !tbaa !7
  %cmp798 = icmp slt i32 %458, 8
  br i1 %cmp798, label %cond.true.800, label %cond.false.801

cond.true.800:                                    ; preds = %cond.false.797
  br label %cond.end.805

cond.false.801:                                   ; preds = %cond.false.797
  %459 = load i32, i32* %bpp, align 4, !tbaa !7
  %cmp802 = icmp sgt i32 %459, 8
  %cond804 = select i1 %cmp802, i32 32, i32 8
  br label %cond.end.805

cond.end.805:                                     ; preds = %cond.false.801, %cond.true.800
  %cond806 = phi i32 [ 4, %cond.true.800 ], [ %cond804, %cond.false.801 ]
  br label %cond.end.807

cond.end.807:                                     ; preds = %cond.end.805, %cond.true.796
  %cond808 = phi i32 [ 1, %cond.true.796 ], [ %cond806, %cond.end.805 ]
  store i32 %cond808, i32* %bpp, align 4, !tbaa !7
  br label %if.end.813

if.else:                                          ; preds = %if.end.782
  %460 = load i32, i32* %color, align 4, !tbaa !7
  %tobool809 = icmp ne i32 %460, 0
  %cond810 = select i1 %tobool809, i32 4, i32 1
  %461 = load i32, i32* %dither, align 4, !tbaa !7
  %tobool811 = icmp ne i32 %461, 0
  %cond812 = select i1 %tobool811, i32 8, i32 1
  %mul = mul nsw i32 %cond810, %cond812
  store i32 %mul, i32* %bpp, align 4, !tbaa !7
  br label %if.end.813

if.end.813:                                       ; preds = %if.else, %cond.end.807
  %462 = load i32, i32* %ecoBlack, align 4, !tbaa !7
  %tobool814 = icmp ne i32 %462, 0
  br i1 %tobool814, label %land.lhs.true.815, label %if.end.875

land.lhs.true.815:                                ; preds = %if.end.813
  %463 = bitcast i64* %__s1_len817 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %463) #2
  %464 = bitcast i64* %__s2_len819 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %464) #2
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i64 1) to i64), i64 ptrtoint ([5 x i8]* @.str.2 to i64)), i64 1), label %land.lhs.true.821, label %cond.false.868

land.lhs.true.821:                                ; preds = %land.lhs.true.815
  %call822 = call i64 @strlen(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0)) #6
  store i64 %call822, i64* %__s2_len819, align 8, !tbaa !28
  %465 = load i64, i64* %__s2_len819, align 8, !tbaa !28
  %cmp823 = icmp ult i64 %465, 4
  br i1 %cmp823, label %cond.true.825, label %cond.false.868

cond.true.825:                                    ; preds = %land.lhs.true.821
  %466 = bitcast i8** %__s1827 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %466) #2
  %467 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %dname = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %467, i32 0, i32 2
  %468 = load i8*, i8** %dname, align 8, !tbaa !49
  store i8* %468, i8** %__s1827, align 8, !tbaa !1
  %469 = bitcast i32* %__result829 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %469) #2
  %470 = load i8*, i8** %__s1827, align 8, !tbaa !1
  %arrayidx830 = getelementptr inbounds i8, i8* %470, i64 0
  %471 = load i8, i8* %arrayidx830, align 1, !tbaa !42
  %conv831 = zext i8 %471 to i32
  %472 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), align 1, !tbaa !42
  %conv832 = zext i8 %472 to i32
  %sub833 = sub nsw i32 %conv831, %conv832
  store i32 %sub833, i32* %__result829, align 4, !tbaa !7
  %473 = load i64, i64* %__s2_len819, align 8, !tbaa !28
  %cmp834 = icmp ugt i64 %473, 0
  br i1 %cmp834, label %land.lhs.true.836, label %if.end.866

land.lhs.true.836:                                ; preds = %cond.true.825
  %474 = load i32, i32* %__result829, align 4, !tbaa !7
  %cmp837 = icmp eq i32 %474, 0
  br i1 %cmp837, label %if.then.839, label %if.end.866

if.then.839:                                      ; preds = %land.lhs.true.836
  %475 = load i8*, i8** %__s1827, align 8, !tbaa !1
  %arrayidx840 = getelementptr inbounds i8, i8* %475, i64 1
  %476 = load i8, i8* %arrayidx840, align 1, !tbaa !42
  %conv841 = zext i8 %476 to i32
  %477 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i64 1), align 1, !tbaa !42
  %conv842 = zext i8 %477 to i32
  %sub843 = sub nsw i32 %conv841, %conv842
  store i32 %sub843, i32* %__result829, align 4, !tbaa !7
  %478 = load i64, i64* %__s2_len819, align 8, !tbaa !28
  %cmp844 = icmp ugt i64 %478, 1
  br i1 %cmp844, label %land.lhs.true.846, label %if.end.865

land.lhs.true.846:                                ; preds = %if.then.839
  %479 = load i32, i32* %__result829, align 4, !tbaa !7
  %cmp847 = icmp eq i32 %479, 0
  br i1 %cmp847, label %if.then.849, label %if.end.865

if.then.849:                                      ; preds = %land.lhs.true.846
  %480 = load i8*, i8** %__s1827, align 8, !tbaa !1
  %arrayidx850 = getelementptr inbounds i8, i8* %480, i64 2
  %481 = load i8, i8* %arrayidx850, align 1, !tbaa !42
  %conv851 = zext i8 %481 to i32
  %482 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i64 2), align 1, !tbaa !42
  %conv852 = zext i8 %482 to i32
  %sub853 = sub nsw i32 %conv851, %conv852
  store i32 %sub853, i32* %__result829, align 4, !tbaa !7
  %483 = load i64, i64* %__s2_len819, align 8, !tbaa !28
  %cmp854 = icmp ugt i64 %483, 2
  br i1 %cmp854, label %land.lhs.true.856, label %if.end.864

land.lhs.true.856:                                ; preds = %if.then.849
  %484 = load i32, i32* %__result829, align 4, !tbaa !7
  %cmp857 = icmp eq i32 %484, 0
  br i1 %cmp857, label %if.then.859, label %if.end.864

if.then.859:                                      ; preds = %land.lhs.true.856
  %485 = load i8*, i8** %__s1827, align 8, !tbaa !1
  %arrayidx860 = getelementptr inbounds i8, i8* %485, i64 3
  %486 = load i8, i8* %arrayidx860, align 1, !tbaa !42
  %conv861 = zext i8 %486 to i32
  %487 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i64 3), align 1, !tbaa !42
  %conv862 = zext i8 %487 to i32
  %sub863 = sub nsw i32 %conv861, %conv862
  store i32 %sub863, i32* %__result829, align 4, !tbaa !7
  br label %if.end.864

if.end.864:                                       ; preds = %if.then.859, %land.lhs.true.856, %if.then.849
  br label %if.end.865

if.end.865:                                       ; preds = %if.end.864, %land.lhs.true.846, %if.then.839
  br label %if.end.866

if.end.866:                                       ; preds = %if.end.865, %land.lhs.true.836, %cond.true.825
  %488 = load i32, i32* %__result829, align 4, !tbaa !7
  store i32 %488, i32* %tmp867, !tbaa !7
  %489 = bitcast i32* %__result829 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %489) #2
  %490 = bitcast i8** %__s1827 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %490) #2
  %491 = load i32, i32* %tmp867, !tbaa !7
  br label %cond.end.871

cond.false.868:                                   ; preds = %land.lhs.true.821, %land.lhs.true.815
  %492 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %dname869 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %492, i32 0, i32 2
  %493 = load i8*, i8** %dname869, align 8, !tbaa !49
  %call870 = call i32 @strcmp(i8* %493, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0)) #7
  br label %cond.end.871

cond.end.871:                                     ; preds = %cond.false.868, %if.end.866
  %cond872 = phi i32 [ %491, %if.end.866 ], [ %call870, %cond.false.868 ]
  store i32 %cond872, i32* %tmp820, !tbaa !7
  %494 = bitcast i64* %__s2_len819 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %494) #2
  %495 = bitcast i64* %__s1_len817 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %495) #2
  %496 = load i32, i32* %tmp820, !tbaa !7
  %tobool873 = icmp ne i32 %496, 0
  br i1 %tobool873, label %if.end.875, label %if.then.874

if.then.874:                                      ; preds = %cond.end.871
  store i32 1, i32* %bpp, align 4, !tbaa !7
  br label %if.end.875

if.end.875:                                       ; preds = %if.then.874, %cond.end.871, %if.end.813
  %497 = load i32, i32* %bpp, align 4, !tbaa !7
  %cmp876 = icmp eq i32 %497, 1
  br i1 %cmp876, label %if.then.880, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.875
  %498 = load i32, i32* %bpp, align 4, !tbaa !7
  %cmp878 = icmp eq i32 %498, 8
  br i1 %cmp878, label %if.then.880, label %if.end.882

if.then.880:                                      ; preds = %lor.lhs.false, %if.end.875
  %499 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %procs881 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %499, i32 0, i32 42
  %map_rgb_color = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs881, i32 0, i32 5
  store i64 (%struct.gx_device_s*, i16*)* @alps_map_rgb_color, i64 (%struct.gx_device_s*, i16*)** %map_rgb_color, align 8, !tbaa !50
  br label %if.end.882

if.end.882:                                       ; preds = %if.then.880, %lor.lhs.false
  %500 = load i32, i32* %bpp, align 4, !tbaa !7
  %conv883 = trunc i32 %500 to i16
  %501 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %color_info884 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %501, i32 0, i32 11
  %depth885 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info884, i32 0, i32 3
  store i16 %conv883, i16* %depth885, align 2, !tbaa !29
  %502 = load i32, i32* %bpp, align 4, !tbaa !7
  %cmp886 = icmp eq i32 %502, 1
  br i1 %cmp886, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.end.882
  %503 = load i32, i32* %bpp, align 4, !tbaa !7
  %cmp888 = icmp eq i32 %503, 8
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.end.882
  %504 = phi i1 [ true, %if.end.882 ], [ %cmp888, %lor.rhs ]
  %cond890 = select i1 %504, i32 1, i32 4
  %505 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %color_info891 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %505, i32 0, i32 11
  %num_components = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info891, i32 0, i32 1
  store i32 %cond890, i32* %num_components, align 4, !tbaa !32
  %506 = load i32, i32* %bpp, align 4, !tbaa !7
  %cmp892 = icmp sge i32 %506, 8
  %cond894 = select i1 %cmp892, i32 255, i32 1
  %507 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %color_info895 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %507, i32 0, i32 11
  %max_gray = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info895, i32 0, i32 5
  store i32 %cond894, i32* %max_gray, align 4, !tbaa !51
  %508 = load i32, i32* %bpp, align 4, !tbaa !7
  %cmp896 = icmp sge i32 %508, 8
  br i1 %cmp896, label %cond.true.898, label %cond.false.899

cond.true.898:                                    ; preds = %lor.end
  br label %cond.end.903

cond.false.899:                                   ; preds = %lor.end
  %509 = load i32, i32* %bpp, align 4, !tbaa !7
  %cmp900 = icmp sgt i32 %509, 1
  %cond902 = select i1 %cmp900, i32 1, i32 0
  br label %cond.end.903

cond.end.903:                                     ; preds = %cond.false.899, %cond.true.898
  %cond904 = phi i32 [ 255, %cond.true.898 ], [ %cond902, %cond.false.899 ]
  %510 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %color_info905 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %510, i32 0, i32 11
  %max_color = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info905, i32 0, i32 6
  store i32 %cond904, i32* %max_color, align 4, !tbaa !52
  %511 = load i32, i32* %bpp, align 4, !tbaa !7
  %cmp906 = icmp sge i32 %511, 8
  %cond908 = select i1 %cmp906, i32 5, i32 2
  %512 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %color_info909 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %512, i32 0, i32 11
  %dither_grays = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info909, i32 0, i32 7
  store i32 %cond908, i32* %dither_grays, align 4, !tbaa !53
  %513 = load i32, i32* %bpp, align 4, !tbaa !7
  %cmp910 = icmp sge i32 %513, 8
  br i1 %cmp910, label %cond.true.912, label %cond.false.913

cond.true.912:                                    ; preds = %cond.end.903
  br label %cond.end.917

cond.false.913:                                   ; preds = %cond.end.903
  %514 = load i32, i32* %bpp, align 4, !tbaa !7
  %cmp914 = icmp sgt i32 %514, 1
  %cond916 = select i1 %cmp914, i32 2, i32 0
  br label %cond.end.917

cond.end.917:                                     ; preds = %cond.false.913, %cond.true.912
  %cond918 = phi i32 [ 5, %cond.true.912 ], [ %cond916, %cond.false.913 ]
  %515 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %color_info919 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %515, i32 0, i32 11
  %dither_colors = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info919, i32 0, i32 8
  store i32 %cond918, i32* %dither_colors, align 4, !tbaa !54
  %516 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %517 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call920 = call i32 @gdev_prn_put_params(%struct.gx_device_s* %516, %struct.gs_param_list_s* %517) #5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %cond.end.917, %if.then.781
  %518 = bitcast %struct.gs_param_string_s* %mediaType to i8*
  call void @llvm.lifetime.end(i64 16, i8* %518) #2
  %519 = bitcast i32* %black to i8*
  call void @llvm.lifetime.end(i64 4, i8* %519) #2
  %520 = bitcast i32* %yellow to i8*
  call void @llvm.lifetime.end(i64 4, i8* %520) #2
  %521 = bitcast i32* %magenta to i8*
  call void @llvm.lifetime.end(i64 4, i8* %521) #2
  %522 = bitcast i32* %cyan to i8*
  call void @llvm.lifetime.end(i64 4, i8* %522) #2
  %523 = bitcast i32* %ecoBlack to i8*
  call void @llvm.lifetime.end(i64 4, i8* %523) #2
  %524 = bitcast i32* %reverseSide to i8*
  call void @llvm.lifetime.end(i64 4, i8* %524) #2
  %525 = bitcast i32* %manualFeed to i8*
  call void @llvm.lifetime.end(i64 4, i8* %525) #2
  %526 = bitcast i32* %dither to i8*
  call void @llvm.lifetime.end(i64 4, i8* %526) #2
  %527 = bitcast i32* %color to i8*
  call void @llvm.lifetime.end(i64 4, i8* %527) #2
  %528 = bitcast i32* %bpp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %528) #2
  %529 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %529) #2
  %530 = load i32, i32* %retval
  ret i32 %530
}

; Function Attrs: nounwind uwtable
define internal i64 @alps_map_cmyk_color(%struct.gx_device_s* %pdev, i16* %cv) #1 {
entry:
  %pdev.addr = alloca %struct.gx_device_s*, align 8
  %cv.addr = alloca i16*, align 8
  %color = alloca i64, align 8
  %c = alloca i16, align 2
  %m = alloca i16, align 2
  %y = alloca i16, align 2
  %k = alloca i16, align 2
  %nbits = alloca i32, align 4
  %weight = alloca i64, align 8
  %black = alloca i64, align 8
  store %struct.gx_device_s* %pdev, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  store i16* %cv, i16** %cv.addr, align 8, !tbaa !1
  %0 = bitcast i64* %color to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = bitcast i16* %c to i8*
  call void @llvm.lifetime.start(i64 2, i8* %1) #2
  %2 = bitcast i16* %m to i8*
  call void @llvm.lifetime.start(i64 2, i8* %2) #2
  %3 = bitcast i16* %y to i8*
  call void @llvm.lifetime.start(i64 2, i8* %3) #2
  %4 = bitcast i16* %k to i8*
  call void @llvm.lifetime.start(i64 2, i8* %4) #2
  %5 = load i16*, i16** %cv.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %5, i64 0
  %6 = load i16, i16* %arrayidx, align 2, !tbaa !31
  store i16 %6, i16* %c, align 2, !tbaa !31
  %7 = load i16*, i16** %cv.addr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds i16, i16* %7, i64 1
  %8 = load i16, i16* %arrayidx1, align 2, !tbaa !31
  store i16 %8, i16* %m, align 2, !tbaa !31
  %9 = load i16*, i16** %cv.addr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds i16, i16* %9, i64 2
  %10 = load i16, i16* %arrayidx2, align 2, !tbaa !31
  store i16 %10, i16* %y, align 2, !tbaa !31
  %11 = load i16*, i16** %cv.addr, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds i16, i16* %11, i64 3
  %12 = load i16, i16* %arrayidx3, align 2, !tbaa !31
  store i16 %12, i16* %k, align 2, !tbaa !31
  %13 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %13, i32 0, i32 11
  %depth = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 3
  %14 = load i16, i16* %depth, align 2, !tbaa !29
  %conv = zext i16 %14 to i32
  switch i32 %conv, label %sw.default [
    i32 1, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry
  %15 = load i16, i16* %c, align 2, !tbaa !31
  %conv4 = zext i16 %15 to i32
  %16 = load i16, i16* %m, align 2, !tbaa !31
  %conv5 = zext i16 %16 to i32
  %or = or i32 %conv4, %conv5
  %17 = load i16, i16* %y, align 2, !tbaa !31
  %conv6 = zext i16 %17 to i32
  %or7 = or i32 %or, %conv6
  %18 = load i16, i16* %k, align 2, !tbaa !31
  %conv8 = zext i16 %18 to i32
  %or9 = or i32 %or7, %conv8
  %cmp = icmp sgt i32 %or9, 32767
  %cond = select i1 %cmp, i64 1, i64 0
  store i64 %cond, i64* %color, align 8, !tbaa !28
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %19 = bitcast i32* %nbits to i8*
  call void @llvm.lifetime.start(i64 4, i8* %19) #2
  %20 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %color_info11 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %20, i32 0, i32 11
  %depth12 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info11, i32 0, i32 3
  %21 = load i16, i16* %depth12, align 2, !tbaa !29
  %conv13 = zext i16 %21 to i32
  store i32 %conv13, i32* %nbits, align 4, !tbaa !7
  %22 = bitcast i64* %weight to i8*
  call void @llvm.lifetime.start(i64 8, i8* %22) #2
  %23 = bitcast i64* %black to i8*
  call void @llvm.lifetime.start(i64 8, i8* %23) #2
  %24 = load i16, i16* %c, align 2, !tbaa !31
  %conv14 = zext i16 %24 to i32
  %25 = load i16, i16* %y, align 2, !tbaa !31
  %conv15 = zext i16 %25 to i32
  %cmp16 = icmp sle i32 %conv14, %conv15
  br i1 %cmp16, label %cond.true, label %cond.false.26

cond.true:                                        ; preds = %sw.default
  %26 = load i16, i16* %c, align 2, !tbaa !31
  %conv18 = zext i16 %26 to i32
  %27 = load i16, i16* %m, align 2, !tbaa !31
  %conv19 = zext i16 %27 to i32
  %cmp20 = icmp sle i32 %conv18, %conv19
  br i1 %cmp20, label %cond.true.22, label %cond.false

cond.true.22:                                     ; preds = %cond.true
  %28 = load i16, i16* %c, align 2, !tbaa !31
  %conv23 = zext i16 %28 to i32
  br label %cond.end

cond.false:                                       ; preds = %cond.true
  %29 = load i16, i16* %m, align 2, !tbaa !31
  %conv24 = zext i16 %29 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true.22
  %cond25 = phi i32 [ %conv23, %cond.true.22 ], [ %conv24, %cond.false ]
  br label %cond.end.37

cond.false.26:                                    ; preds = %sw.default
  %30 = load i16, i16* %m, align 2, !tbaa !31
  %conv27 = zext i16 %30 to i32
  %31 = load i16, i16* %y, align 2, !tbaa !31
  %conv28 = zext i16 %31 to i32
  %cmp29 = icmp sle i32 %conv27, %conv28
  br i1 %cmp29, label %cond.true.31, label %cond.false.33

cond.true.31:                                     ; preds = %cond.false.26
  %32 = load i16, i16* %m, align 2, !tbaa !31
  %conv32 = zext i16 %32 to i32
  br label %cond.end.35

cond.false.33:                                    ; preds = %cond.false.26
  %33 = load i16, i16* %y, align 2, !tbaa !31
  %conv34 = zext i16 %33 to i32
  br label %cond.end.35

cond.end.35:                                      ; preds = %cond.false.33, %cond.true.31
  %cond36 = phi i32 [ %conv32, %cond.true.31 ], [ %conv34, %cond.false.33 ]
  br label %cond.end.37

cond.end.37:                                      ; preds = %cond.end.35, %cond.end
  %cond38 = phi i32 [ %cond25, %cond.end ], [ %cond36, %cond.end.35 ]
  %conv39 = sext i32 %cond38 to i64
  store i64 %conv39, i64* %black, align 8, !tbaa !28
  %34 = load i64, i64* %black, align 8, !tbaa !28
  %cmp40 = icmp ult i64 %34, 65535
  br i1 %cmp40, label %cond.true.42, label %cond.false.43

cond.true.42:                                     ; preds = %cond.end.37
  %35 = load i64, i64* %black, align 8, !tbaa !28
  %sub = sub i64 65535, %35
  %div = udiv i64 67107840, %sub
  br label %cond.end.44

cond.false.43:                                    ; preds = %cond.end.37
  br label %cond.end.44

cond.end.44:                                      ; preds = %cond.false.43, %cond.true.42
  %cond45 = phi i64 [ %div, %cond.true.42 ], [ 0, %cond.false.43 ]
  store i64 %cond45, i64* %weight, align 8, !tbaa !28
  %36 = load i16, i16* %c, align 2, !tbaa !31
  %conv46 = zext i16 %36 to i64
  %37 = load i64, i64* %black, align 8, !tbaa !28
  %sub47 = sub i64 %conv46, %37
  %38 = load i64, i64* %weight, align 8, !tbaa !28
  %mul = mul i64 %sub47, %38
  %shr = lshr i64 %mul, 10
  %conv48 = trunc i64 %shr to i16
  store i16 %conv48, i16* %c, align 2, !tbaa !31
  %39 = load i16, i16* %m, align 2, !tbaa !31
  %conv49 = zext i16 %39 to i64
  %40 = load i64, i64* %black, align 8, !tbaa !28
  %sub50 = sub i64 %conv49, %40
  %41 = load i64, i64* %weight, align 8, !tbaa !28
  %mul51 = mul i64 %sub50, %41
  %shr52 = lshr i64 %mul51, 10
  %conv53 = trunc i64 %shr52 to i16
  store i16 %conv53, i16* %m, align 2, !tbaa !31
  %42 = load i16, i16* %y, align 2, !tbaa !31
  %conv54 = zext i16 %42 to i64
  %43 = load i64, i64* %black, align 8, !tbaa !28
  %sub55 = sub i64 %conv54, %43
  %44 = load i64, i64* %weight, align 8, !tbaa !28
  %mul56 = mul i64 %sub55, %44
  %shr57 = lshr i64 %mul56, 10
  %conv58 = trunc i64 %shr57 to i16
  store i16 %conv58, i16* %y, align 2, !tbaa !31
  %45 = load i16, i16* %k, align 2, !tbaa !31
  %conv59 = zext i16 %45 to i64
  %46 = load i64, i64* %black, align 8, !tbaa !28
  %add = add i64 %46, %conv59
  store i64 %add, i64* %black, align 8, !tbaa !28
  %47 = load i64, i64* %black, align 8, !tbaa !28
  %cmp60 = icmp ule i64 %47, 65535
  br i1 %cmp60, label %cond.true.62, label %cond.false.63

cond.true.62:                                     ; preds = %cond.end.44
  %48 = load i64, i64* %black, align 8, !tbaa !28
  br label %cond.end.64

cond.false.63:                                    ; preds = %cond.end.44
  br label %cond.end.64

cond.end.64:                                      ; preds = %cond.false.63, %cond.true.62
  %cond65 = phi i64 [ %48, %cond.true.62 ], [ 65535, %cond.false.63 ]
  %conv66 = trunc i64 %cond65 to i16
  store i16 %conv66, i16* %k, align 2, !tbaa !31
  %49 = load i16, i16* %c, align 2, !tbaa !31
  %conv67 = zext i16 %49 to i32
  %50 = load i32, i32* %nbits, align 4, !tbaa !7
  %shr68 = ashr i32 %50, 2
  %conv69 = sext i32 %shr68 to i64
  %sub70 = sub i64 16, %conv69
  %sh_prom = trunc i64 %sub70 to i32
  %shr71 = ashr i32 %conv67, %sh_prom
  %51 = load i32, i32* %nbits, align 4, !tbaa !7
  %shr72 = ashr i32 %51, 2
  %mul73 = mul nsw i32 3, %shr72
  %shl = shl i32 %shr71, %mul73
  %52 = load i16, i16* %m, align 2, !tbaa !31
  %conv74 = zext i16 %52 to i32
  %53 = load i32, i32* %nbits, align 4, !tbaa !7
  %shr75 = ashr i32 %53, 2
  %conv76 = sext i32 %shr75 to i64
  %sub77 = sub i64 16, %conv76
  %sh_prom78 = trunc i64 %sub77 to i32
  %shr79 = ashr i32 %conv74, %sh_prom78
  %54 = load i32, i32* %nbits, align 4, !tbaa !7
  %shr80 = ashr i32 %54, 2
  %mul81 = mul nsw i32 2, %shr80
  %shl82 = shl i32 %shr79, %mul81
  %or83 = or i32 %shl, %shl82
  %55 = load i16, i16* %y, align 2, !tbaa !31
  %conv84 = zext i16 %55 to i32
  %56 = load i32, i32* %nbits, align 4, !tbaa !7
  %shr85 = ashr i32 %56, 2
  %conv86 = sext i32 %shr85 to i64
  %sub87 = sub i64 16, %conv86
  %sh_prom88 = trunc i64 %sub87 to i32
  %shr89 = ashr i32 %conv84, %sh_prom88
  %57 = load i32, i32* %nbits, align 4, !tbaa !7
  %shr90 = ashr i32 %57, 2
  %shl91 = shl i32 %shr89, %shr90
  %or92 = or i32 %or83, %shl91
  %58 = load i16, i16* %k, align 2, !tbaa !31
  %conv93 = zext i16 %58 to i32
  %59 = load i32, i32* %nbits, align 4, !tbaa !7
  %shr94 = ashr i32 %59, 2
  %conv95 = sext i32 %shr94 to i64
  %sub96 = sub i64 16, %conv95
  %sh_prom97 = trunc i64 %sub96 to i32
  %shr98 = ashr i32 %conv93, %sh_prom97
  %or99 = or i32 %or92, %shr98
  %conv100 = sext i32 %or99 to i64
  store i64 %conv100, i64* %color, align 8, !tbaa !28
  %60 = bitcast i64* %black to i8*
  call void @llvm.lifetime.end(i64 8, i8* %60) #2
  %61 = bitcast i64* %weight to i8*
  call void @llvm.lifetime.end(i64 8, i8* %61) #2
  %62 = bitcast i32* %nbits to i8*
  call void @llvm.lifetime.end(i64 4, i8* %62) #2
  br label %sw.epilog

sw.epilog:                                        ; preds = %cond.end.64, %sw.bb
  %63 = load i64, i64* %color, align 8, !tbaa !28
  %64 = bitcast i16* %k to i8*
  call void @llvm.lifetime.end(i64 2, i8* %64) #2
  %65 = bitcast i16* %y to i8*
  call void @llvm.lifetime.end(i64 2, i8* %65) #2
  %66 = bitcast i16* %m to i8*
  call void @llvm.lifetime.end(i64 2, i8* %66) #2
  %67 = bitcast i16* %c to i8*
  call void @llvm.lifetime.end(i64 2, i8* %67) #2
  %68 = bitcast i64* %color to i8*
  call void @llvm.lifetime.end(i64 8, i8* %68) #2
  ret i64 %63
}

declare %struct.gx_device_s* @gx_page_device_get_page_device(%struct.gx_device_s*) #0

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

declare void @gx_device_set_margins(%struct.gx_device_s*, float*, i32) #0

declare i32 @gdev_prn_open(%struct.gx_device_s*) #0

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

declare i32 @gdev_prn_get_params(%struct.gx_device_s*, %struct.gs_param_list_s*) #0

declare i32 @param_write_bool(%struct.gs_param_list_s*, i8*, i32*) #0

declare i32 @param_write_int(%struct.gs_param_list_s*, i8*, i32*) #0

declare i32 @param_write_string(%struct.gs_param_list_s*, i8*, %struct.gs_param_string_s*) #0

; Function Attrs: nounwind uwtable
define internal i32 @alps_put_param_bool(%struct.gs_param_list_s* %plist, i8* %pname, i32* %pvalue, i32 %ecode) #1 {
entry:
  %retval = alloca i32, align 4
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %pname.addr = alloca i8*, align 8
  %pvalue.addr = alloca i32*, align 8
  %ecode.addr = alloca i32, align 4
  %code = alloca i32, align 4
  %value = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* %pname, i8** %pname.addr, align 8, !tbaa !1
  store i32* %pvalue, i32** %pvalue.addr, align 8, !tbaa !1
  store i32 %ecode, i32* %ecode.addr, align 4, !tbaa !7
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast i32* %value to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %3 = load i8*, i8** %pname.addr, align 8, !tbaa !1
  %call = call i32 @param_read_bool(%struct.gs_param_list_s* %2, i8* %3, i32* %value) #5
  store i32 %call, i32* %code, align 4, !tbaa !7
  switch i32 %call, label %sw.default [
    i32 1, label %sw.bb
    i32 0, label %sw.bb.1
  ]

sw.default:                                       ; preds = %entry
  %4 = load i32, i32* %code, align 4, !tbaa !7
  store i32 %4, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %5 = load i32, i32* %ecode.addr, align 4, !tbaa !7
  store i32 %5, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.1:                                          ; preds = %entry
  %6 = load i32, i32* %value, align 4, !tbaa !7
  %7 = load i32*, i32** %pvalue.addr, align 8, !tbaa !1
  store i32 %6, i32* %7, align 4, !tbaa !7
  %8 = load i32, i32* %ecode.addr, align 4, !tbaa !7
  %cmp = icmp slt i32 %8, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.bb.1
  %9 = load i32, i32* %ecode.addr, align 4, !tbaa !7
  br label %cond.end

cond.false:                                       ; preds = %sw.bb.1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %9, %cond.true ], [ 1, %cond.false ]
  store i32 %cond, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %sw.bb, %sw.default
  %10 = bitcast i32* %value to i8*
  call void @llvm.lifetime.end(i64 4, i8* %10) #2
  %11 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %11) #2
  %12 = load i32, i32* %retval
  ret i32 %12
}

; Function Attrs: nounwind uwtable
define internal i32 @alps_put_param_int(%struct.gs_param_list_s* %plist, i8* %pname, i32* %pvalue, i32 %minval, i32 %maxval, i32 %ecode) #1 {
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
  store i32 %minval, i32* %minval.addr, align 4, !tbaa !7
  store i32 %maxval, i32* %maxval.addr, align 4, !tbaa !7
  store i32 %ecode, i32* %ecode.addr, align 4, !tbaa !7
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast i32* %value to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %3 = load i8*, i8** %pname.addr, align 8, !tbaa !1
  %call = call i32 @param_read_int(%struct.gs_param_list_s* %2, i8* %3, i32* %value) #5
  store i32 %call, i32* %code, align 4, !tbaa !7
  switch i32 %call, label %sw.default [
    i32 1, label %sw.bb
    i32 0, label %sw.bb.1
  ]

sw.default:                                       ; preds = %entry
  %4 = load i32, i32* %code, align 4, !tbaa !7
  store i32 %4, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %5 = load i32, i32* %ecode.addr, align 4, !tbaa !7
  store i32 %5, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.1:                                          ; preds = %entry
  %6 = load i32, i32* %value, align 4, !tbaa !7
  %7 = load i32, i32* %minval.addr, align 4, !tbaa !7
  %cmp = icmp slt i32 %6, %7
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.bb.1
  %8 = load i32, i32* %value, align 4, !tbaa !7
  %9 = load i32, i32* %maxval.addr, align 4, !tbaa !7
  %cmp2 = icmp sgt i32 %8, %9
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %sw.bb.1
  %10 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %10, i32 0, i32 0
  %11 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs, align 8, !tbaa !44
  %signal_error = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %11, i32 0, i32 7
  %12 = load i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*, i8*, i32)** %signal_error, align 8, !tbaa !46
  %13 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %14 = load i8*, i8** %pname.addr, align 8, !tbaa !1
  %call3 = call i32 %12(%struct.gs_param_list_s* %13, i8* %14, i32 -15) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %15 = load i32, i32* %value, align 4, !tbaa !7
  %16 = load i32*, i32** %pvalue.addr, align 8, !tbaa !1
  store i32 %15, i32* %16, align 4, !tbaa !7
  %17 = load i32, i32* %ecode.addr, align 4, !tbaa !7
  %cmp4 = icmp slt i32 %17, 0
  br i1 %cmp4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %18 = load i32, i32* %ecode.addr, align 4, !tbaa !7
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

declare i32 @param_read_string(%struct.gs_param_list_s*, i8*, %struct.gs_param_string_s*) #0

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

; Function Attrs: nounwind
declare i32 @strcmp(i8*, i8*) #4

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #3

; Function Attrs: nounwind uwtable
define internal i64 @alps_map_cmy_color(%struct.gx_device_s* %pdev, i16* %cv) #1 {
entry:
  %pdev.addr = alloca %struct.gx_device_s*, align 8
  %cv.addr = alloca i16*, align 8
  %nbits = alloca i32, align 4
  %c = alloca i16, align 2
  %m = alloca i16, align 2
  %y = alloca i16, align 2
  %k = alloca i16, align 2
  %weight = alloca i64, align 8
  store %struct.gx_device_s* %pdev, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  store i16* %cv, i16** %cv.addr, align 8, !tbaa !1
  %0 = bitcast i32* %nbits to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %1, i32 0, i32 11
  %depth = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 3
  %2 = load i16, i16* %depth, align 2, !tbaa !29
  %conv = zext i16 %2 to i32
  store i32 %conv, i32* %nbits, align 4, !tbaa !7
  %3 = bitcast i16* %c to i8*
  call void @llvm.lifetime.start(i64 2, i8* %3) #2
  %4 = load i16*, i16** %cv.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %4, i64 0
  %5 = load i16, i16* %arrayidx, align 2, !tbaa !31
  store i16 %5, i16* %c, align 2, !tbaa !31
  %6 = bitcast i16* %m to i8*
  call void @llvm.lifetime.start(i64 2, i8* %6) #2
  %7 = load i16*, i16** %cv.addr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds i16, i16* %7, i64 1
  %8 = load i16, i16* %arrayidx1, align 2, !tbaa !31
  store i16 %8, i16* %m, align 2, !tbaa !31
  %9 = bitcast i16* %y to i8*
  call void @llvm.lifetime.start(i64 2, i8* %9) #2
  %10 = load i16*, i16** %cv.addr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds i16, i16* %10, i64 2
  %11 = load i16, i16* %arrayidx2, align 2, !tbaa !31
  store i16 %11, i16* %y, align 2, !tbaa !31
  %12 = bitcast i16* %k to i8*
  call void @llvm.lifetime.start(i64 2, i8* %12) #2
  %13 = load i16*, i16** %cv.addr, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds i16, i16* %13, i64 3
  %14 = load i16, i16* %arrayidx3, align 2, !tbaa !31
  store i16 %14, i16* %k, align 2, !tbaa !31
  %15 = bitcast i64* %weight to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15) #2
  %16 = load i16, i16* %k, align 2, !tbaa !31
  %conv4 = zext i16 %16 to i32
  %sub = sub nsw i32 65535, %conv4
  %shl = shl i32 %sub, 10
  %div = sdiv i32 %shl, 65535
  %conv5 = sext i32 %div to i64
  store i64 %conv5, i64* %weight, align 8, !tbaa !28
  %17 = load i16, i16* %c, align 2, !tbaa !31
  %conv6 = zext i16 %17 to i64
  %18 = load i64, i64* %weight, align 8, !tbaa !28
  %mul = mul i64 %conv6, %18
  %shr = lshr i64 %mul, 10
  %19 = load i16, i16* %k, align 2, !tbaa !31
  %conv7 = zext i16 %19 to i64
  %add = add i64 %shr, %conv7
  %conv8 = trunc i64 %add to i16
  store i16 %conv8, i16* %c, align 2, !tbaa !31
  %20 = load i16, i16* %m, align 2, !tbaa !31
  %conv9 = zext i16 %20 to i64
  %21 = load i64, i64* %weight, align 8, !tbaa !28
  %mul10 = mul i64 %conv9, %21
  %shr11 = lshr i64 %mul10, 10
  %22 = load i16, i16* %k, align 2, !tbaa !31
  %conv12 = zext i16 %22 to i64
  %add13 = add i64 %shr11, %conv12
  %conv14 = trunc i64 %add13 to i16
  store i16 %conv14, i16* %m, align 2, !tbaa !31
  %23 = load i16, i16* %y, align 2, !tbaa !31
  %conv15 = zext i16 %23 to i64
  %24 = load i64, i64* %weight, align 8, !tbaa !28
  %mul16 = mul i64 %conv15, %24
  %shr17 = lshr i64 %mul16, 10
  %25 = load i16, i16* %k, align 2, !tbaa !31
  %conv18 = zext i16 %25 to i64
  %add19 = add i64 %shr17, %conv18
  %conv20 = trunc i64 %add19 to i16
  store i16 %conv20, i16* %y, align 2, !tbaa !31
  %26 = load i16, i16* %c, align 2, !tbaa !31
  %conv21 = zext i16 %26 to i32
  %cmp = icmp sgt i32 %conv21, 65535
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i16 -1, i16* %c, align 2, !tbaa !31
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %27 = load i16, i16* %m, align 2, !tbaa !31
  %conv23 = zext i16 %27 to i32
  %cmp24 = icmp sgt i32 %conv23, 65535
  br i1 %cmp24, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %if.end
  store i16 -1, i16* %m, align 2, !tbaa !31
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.26, %if.end
  %28 = load i16, i16* %y, align 2, !tbaa !31
  %conv28 = zext i16 %28 to i32
  %cmp29 = icmp sgt i32 %conv28, 65535
  br i1 %cmp29, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %if.end.27
  store i16 -1, i16* %y, align 2, !tbaa !31
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.31, %if.end.27
  %29 = load i16, i16* %c, align 2, !tbaa !31
  %conv33 = zext i16 %29 to i32
  %30 = load i32, i32* %nbits, align 4, !tbaa !7
  %shr34 = ashr i32 %30, 2
  %conv35 = sext i32 %shr34 to i64
  %sub36 = sub i64 16, %conv35
  %sh_prom = trunc i64 %sub36 to i32
  %shr37 = ashr i32 %conv33, %sh_prom
  %31 = load i32, i32* %nbits, align 4, !tbaa !7
  %shr38 = ashr i32 %31, 2
  %mul39 = mul nsw i32 3, %shr38
  %shl40 = shl i32 %shr37, %mul39
  %32 = load i16, i16* %m, align 2, !tbaa !31
  %conv41 = zext i16 %32 to i32
  %33 = load i32, i32* %nbits, align 4, !tbaa !7
  %shr42 = ashr i32 %33, 2
  %conv43 = sext i32 %shr42 to i64
  %sub44 = sub i64 16, %conv43
  %sh_prom45 = trunc i64 %sub44 to i32
  %shr46 = ashr i32 %conv41, %sh_prom45
  %34 = load i32, i32* %nbits, align 4, !tbaa !7
  %shr47 = ashr i32 %34, 2
  %mul48 = mul nsw i32 2, %shr47
  %shl49 = shl i32 %shr46, %mul48
  %or = or i32 %shl40, %shl49
  %35 = load i16, i16* %y, align 2, !tbaa !31
  %conv50 = zext i16 %35 to i32
  %36 = load i32, i32* %nbits, align 4, !tbaa !7
  %shr51 = ashr i32 %36, 2
  %conv52 = sext i32 %shr51 to i64
  %sub53 = sub i64 16, %conv52
  %sh_prom54 = trunc i64 %sub53 to i32
  %shr55 = ashr i32 %conv50, %sh_prom54
  %37 = load i32, i32* %nbits, align 4, !tbaa !7
  %shr56 = ashr i32 %37, 2
  %shl57 = shl i32 %shr55, %shr56
  %or58 = or i32 %or, %shl57
  %38 = load i32, i32* %nbits, align 4, !tbaa !7
  %shr59 = ashr i32 %38, 2
  %conv60 = sext i32 %shr59 to i64
  %sub61 = sub i64 16, %conv60
  %sh_prom62 = trunc i64 %sub61 to i32
  %shr63 = ashr i32 0, %sh_prom62
  %or64 = or i32 %or58, %shr63
  %conv65 = sext i32 %or64 to i64
  %39 = bitcast i64* %weight to i8*
  call void @llvm.lifetime.end(i64 8, i8* %39) #2
  %40 = bitcast i16* %k to i8*
  call void @llvm.lifetime.end(i64 2, i8* %40) #2
  %41 = bitcast i16* %y to i8*
  call void @llvm.lifetime.end(i64 2, i8* %41) #2
  %42 = bitcast i16* %m to i8*
  call void @llvm.lifetime.end(i64 2, i8* %42) #2
  %43 = bitcast i16* %c to i8*
  call void @llvm.lifetime.end(i64 2, i8* %43) #2
  %44 = bitcast i32* %nbits to i8*
  call void @llvm.lifetime.end(i64 4, i8* %44) #2
  ret i64 %conv65
}

; Function Attrs: nounwind uwtable
define internal i64 @alps_map_rgb_color(%struct.gx_device_s* %pdev, i16* %cv) #1 {
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
  %4 = load i16, i16* %arrayidx, align 2, !tbaa !31
  store i16 %4, i16* %r, align 2, !tbaa !31
  %5 = load i16*, i16** %cv.addr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds i16, i16* %5, i64 1
  %6 = load i16, i16* %arrayidx1, align 2, !tbaa !31
  store i16 %6, i16* %g, align 2, !tbaa !31
  %7 = load i16*, i16** %cv.addr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds i16, i16* %7, i64 2
  %8 = load i16, i16* %arrayidx2, align 2, !tbaa !31
  store i16 %8, i16* %b, align 2, !tbaa !31
  %9 = load i16, i16* %r, align 2, !tbaa !31
  %conv = zext i16 %9 to i32
  %10 = load i16, i16* %g, align 2, !tbaa !31
  %conv3 = zext i16 %10 to i32
  %and = and i32 %conv, %conv3
  %11 = load i16, i16* %b, align 2, !tbaa !31
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
  br label %cleanup.36

if.else:                                          ; preds = %entry
  %12 = bitcast i16* %c to i8*
  call void @llvm.lifetime.start(i64 2, i8* %12) #2
  %13 = load i16, i16* %r, align 2, !tbaa !31
  %conv9 = zext i16 %13 to i32
  %sub = sub nsw i32 65535, %conv9
  %conv10 = trunc i32 %sub to i16
  store i16 %conv10, i16* %c, align 2, !tbaa !31
  %14 = bitcast i16* %m to i8*
  call void @llvm.lifetime.start(i64 2, i8* %14) #2
  %15 = load i16, i16* %g, align 2, !tbaa !31
  %conv11 = zext i16 %15 to i32
  %sub12 = sub nsw i32 65535, %conv11
  %conv13 = trunc i32 %sub12 to i16
  store i16 %conv13, i16* %m, align 2, !tbaa !31
  %16 = bitcast i16* %y to i8*
  call void @llvm.lifetime.start(i64 2, i8* %16) #2
  %17 = load i16, i16* %b, align 2, !tbaa !31
  %conv14 = zext i16 %17 to i32
  %sub15 = sub nsw i32 65535, %conv14
  %conv16 = trunc i32 %sub15 to i16
  store i16 %conv16, i16* %y, align 2, !tbaa !31
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
  %20 = load i16, i16* %c, align 2, !tbaa !31
  %conv18 = zext i16 %20 to i32
  %21 = load i16, i16* %m, align 2, !tbaa !31
  %conv19 = zext i16 %21 to i32
  %or = or i32 %conv18, %conv19
  %22 = load i16, i16* %y, align 2, !tbaa !31
  %conv20 = zext i16 %22 to i32
  %or21 = or i32 %or, %conv20
  %cmp22 = icmp sgt i32 %or21, 32767
  %cond = select i1 %cmp22, i64 1, i64 0
  store i64 %cond, i64* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.24:                                         ; preds = %if.else
  %23 = load i16, i16* %c, align 2, !tbaa !31
  %conv25 = zext i16 %23 to i64
  %mul26 = mul i64 %conv25, 306
  %24 = load i16, i16* %m, align 2, !tbaa !31
  %conv27 = zext i16 %24 to i64
  %mul28 = mul i64 %conv27, 601
  %add29 = add i64 %mul26, %mul28
  %25 = load i16, i16* %y, align 2, !tbaa !31
  %conv30 = zext i16 %25 to i64
  %mul31 = mul i64 %conv30, 117
  %add32 = add i64 %add29, %mul31
  %shr33 = lshr i64 %add32, 18
  store i64 %shr33, i64* %retval
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
  switch i32 %cleanup.dest, label %cleanup.36 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end

if.end:                                           ; preds = %cleanup.cont
  store i64 0, i64* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.36

cleanup.36:                                       ; preds = %if.end, %cleanup, %if.then
  %29 = bitcast i16* %b to i8*
  call void @llvm.lifetime.end(i64 2, i8* %29) #2
  %30 = bitcast i16* %g to i8*
  call void @llvm.lifetime.end(i64 2, i8* %30) #2
  %31 = bitcast i16* %r to i8*
  call void @llvm.lifetime.end(i64 2, i8* %31) #2
  %32 = load i64, i64* %retval
  ret i64 %32
}

declare i32 @gdev_prn_put_params(%struct.gx_device_s*, %struct.gs_param_list_s*) #0

declare i32 @param_read_bool(%struct.gs_param_list_s*, i8*, i32*) #0

declare i32 @param_read_int(%struct.gs_param_list_s*, i8*, i32*) #0

; Function Attrs: nounwind uwtable
define internal i32 @alps_print_page(%struct.gx_device_printer_s* %pdev, %struct._IO_FILE* %prn_stream, i32 %ptype) #1 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_printer_s*, align 8
  %prn_stream.addr = alloca %struct._IO_FILE*, align 8
  %ptype.addr = alloca i32, align 4
  %line_size = alloca i32, align 4
  %in = alloca i8*, align 8
  %out = alloca i8*, align 8
  %work = alloca i8*, align 8
  %dp = alloca i8*, align 8
  %outP = alloca i8*, align 8
  %y = alloca i32, align 4
  %y_height = alloca i32, align 4
  %c_comp = alloca i32, align 4
  %num_comp = alloca i32, align 4
  %n_comp = alloca i32, align 4
  %error = alloca i32*, align 8
  %ep = alloca i32*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %yskip = alloca i32, align 4
  %color_weight = alloca i32, align 4
  %len = alloca i32, align 4
  %c = alloca i8, align 1
  %bitmask = alloca i8, align 1
  %Err = alloca i32, align 4
  %oldErr = alloca i32, align 4
  %xskip = alloca i32, align 4
  store %struct.gx_device_printer_s* %pdev, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  store %struct._IO_FILE* %prn_stream, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  store i32 %ptype, i32* %ptype.addr, align 4, !tbaa !42
  %0 = bitcast i32* %line_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_printer_s* %1 to %struct.gx_device_s*
  %3 = bitcast %struct.gx_device_s* %2 to %struct.gx_device_printer_s*
  %4 = bitcast %struct.gx_device_printer_s* %3 to %struct.gx_device_s*
  %call = call i32 @gx_device_raster(%struct.gx_device_s* %4, i32 0) #5
  store i32 %call, i32* %line_size, align 4, !tbaa !7
  %5 = bitcast i8** %in to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #2
  %6 = bitcast i8** %out to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #2
  %7 = bitcast i8** %work to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #2
  %8 = bitcast i8** %dp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #2
  %9 = bitcast i8** %outP to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #2
  %10 = bitcast i32* %y to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #2
  %11 = bitcast i32* %y_height to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #2
  %12 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %12, i32 0, i32 14
  %13 = load i32, i32* %height, align 4, !tbaa !55
  store i32 %13, i32* %y_height, align 4, !tbaa !7
  %14 = bitcast i32* %c_comp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #2
  %15 = bitcast i32* %num_comp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #2
  %16 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %16, i32 0, i32 11
  %num_components = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 1
  %17 = load i32, i32* %num_components, align 4, !tbaa !57
  store i32 %17, i32* %num_comp, align 4, !tbaa !7
  %18 = bitcast i32* %n_comp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #2
  %19 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %20 = bitcast %struct.gx_device_printer_s* %19 to %struct.gx_device_alps_s*
  %mediaType = getelementptr inbounds %struct.gx_device_alps_s, %struct.gx_device_alps_s* %20, i32 0, i32 73
  %21 = load i32, i32* %mediaType, align 4, !tbaa !43
  %cmp = icmp eq i32 %21, 1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %22 = load i32, i32* %num_comp, align 4, !tbaa !7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 3, %cond.true ], [ %22, %cond.false ]
  store i32 %cond, i32* %n_comp, align 4, !tbaa !7
  %23 = bitcast i32** %error to i8*
  call void @llvm.lifetime.start(i64 8, i8* %23) #2
  %24 = bitcast i32** %ep to i8*
  call void @llvm.lifetime.start(i64 8, i8* %24) #2
  %25 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %25) #2
  %26 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %26) #2
  %27 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %27, i32 0, i32 3
  %28 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !58
  %non_gc_memory = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %28, i32 0, i32 3
  %29 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory, align 8, !tbaa !59
  %non_gc_memory1 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %29, i32 0, i32 3
  %30 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory1, align 8, !tbaa !59
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %30, i32 0, i32 1
  %alloc_byte_array = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 10
  %31 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array, align 8, !tbaa !62
  %32 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory2 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %32, i32 0, i32 3
  %33 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory2, align 8, !tbaa !58
  %non_gc_memory3 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %33, i32 0, i32 3
  %34 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory3, align 8, !tbaa !59
  %non_gc_memory4 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %34, i32 0, i32 3
  %35 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory4, align 8, !tbaa !59
  %36 = load i32, i32* %line_size, align 4, !tbaa !7
  %call5 = call i8* %31(%struct.gs_memory_s* %35, i32 7, i32 %36, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.26, i32 0, i32 0)) #5
  store i8* %call5, i8** %work, align 8, !tbaa !1
  %37 = load i8*, i8** %work, align 8, !tbaa !1
  %cmp6 = icmp eq i8* %37, null
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %cond.end
  %38 = load i8*, i8** %work, align 8, !tbaa !1
  %39 = load i32, i32* %line_size, align 4, !tbaa !7
  %idx.ext = sext i32 %39 to i64
  %add.ptr = getelementptr inbounds i8, i8* %38, i64 %idx.ext
  store i8* %add.ptr, i8** %in, align 8, !tbaa !1
  %40 = load i8*, i8** %in, align 8, !tbaa !1
  %41 = load i32, i32* %line_size, align 4, !tbaa !7
  %idx.ext7 = sext i32 %41 to i64
  %add.ptr8 = getelementptr inbounds i8, i8* %40, i64 %idx.ext7
  store i8* %add.ptr8, i8** %out, align 8, !tbaa !1
  %42 = load i8*, i8** %out, align 8, !tbaa !1
  %43 = load i32, i32* %line_size, align 4, !tbaa !7
  %idx.ext9 = sext i32 %43 to i64
  %add.ptr10 = getelementptr inbounds i8, i8* %42, i64 %idx.ext9
  %44 = bitcast i8* %add.ptr10 to i32*
  store i32* %44, i32** %error, align 8, !tbaa !1
  %45 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %47 = load i32, i32* %ptype.addr, align 4, !tbaa !42
  call void @alps_init(%struct.gx_device_printer_s* %45, %struct._IO_FILE* %46, i32 %47) #5
  store i32 0, i32* %c_comp, align 4, !tbaa !7
  br label %for.cond

for.cond:                                         ; preds = %for.inc.227, %if.end
  %48 = load i32, i32* %c_comp, align 4, !tbaa !7
  %49 = load i32, i32* %n_comp, align 4, !tbaa !7
  %cmp11 = icmp slt i32 %48, %49
  br i1 %cmp11, label %for.body, label %for.end.229

for.body:                                         ; preds = %for.cond
  %50 = bitcast i32* %yskip to i8*
  call void @llvm.lifetime.start(i64 4, i8* %50) #2
  store i32 0, i32* %yskip, align 4, !tbaa !7
  %51 = bitcast i32* %color_weight to i8*
  call void @llvm.lifetime.start(i64 4, i8* %51) #2
  store i32 0, i32* %i, align 4, !tbaa !7
  br label %for.cond.12

for.cond.12:                                      ; preds = %for.inc, %for.body
  %52 = load i32, i32* %i, align 4, !tbaa !7
  %53 = load i32, i32* %line_size, align 4, !tbaa !7
  %cmp13 = icmp slt i32 %52, %53
  br i1 %cmp13, label %for.body.14, label %for.end

for.body.14:                                      ; preds = %for.cond.12
  %call15 = call i32 @rand() #7
  %shl = shl i32 %call15, 16
  %rem = srem i32 %shl, 66846720
  %sub = sub nsw i32 %rem, 33423360
  %54 = load i32, i32* %i, align 4, !tbaa !7
  %idxprom = sext i32 %54 to i64
  %55 = load i32*, i32** %error, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i32, i32* %55, i64 %idxprom
  store i32 %sub, i32* %arrayidx, align 4, !tbaa !7
  br label %for.inc

for.inc:                                          ; preds = %for.body.14
  %56 = load i32, i32* %i, align 4, !tbaa !7
  %inc = add nsw i32 %56, 1
  store i32 %inc, i32* %i, align 4, !tbaa !7
  br label %for.cond.12

for.end:                                          ; preds = %for.cond.12
  %57 = load i32, i32* %n_comp, align 4, !tbaa !7
  %cmp16 = icmp eq i32 %57, 1
  br i1 %cmp16, label %if.then.17, label %if.else

if.then.17:                                       ; preds = %for.end
  %58 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %59 = bitcast %struct.gx_device_printer_s* %58 to %struct.gx_device_alps_s*
  %black = getelementptr inbounds %struct.gx_device_alps_s, %struct.gx_device_alps_s* %59, i32 0, i32 77
  %60 = load i32, i32* %black, align 4, !tbaa !27
  store i32 %60, i32* %color_weight, align 4, !tbaa !7
  br label %if.end.34

if.else:                                          ; preds = %for.end
  %61 = load i32, i32* %c_comp, align 4, !tbaa !7
  %cmp18 = icmp slt i32 %61, 2
  br i1 %cmp18, label %cond.true.19, label %cond.false.25

cond.true.19:                                     ; preds = %if.else
  %62 = load i32, i32* %c_comp, align 4, !tbaa !7
  %cmp20 = icmp eq i32 %62, 0
  br i1 %cmp20, label %cond.true.21, label %cond.false.22

cond.true.21:                                     ; preds = %cond.true.19
  %63 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %64 = bitcast %struct.gx_device_printer_s* %63 to %struct.gx_device_alps_s*
  %cyan = getelementptr inbounds %struct.gx_device_alps_s, %struct.gx_device_alps_s* %64, i32 0, i32 74
  %65 = load i32, i32* %cyan, align 4, !tbaa !9
  br label %cond.end.23

cond.false.22:                                    ; preds = %cond.true.19
  %66 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %67 = bitcast %struct.gx_device_printer_s* %66 to %struct.gx_device_alps_s*
  %magenta = getelementptr inbounds %struct.gx_device_alps_s, %struct.gx_device_alps_s* %67, i32 0, i32 75
  %68 = load i32, i32* %magenta, align 4, !tbaa !25
  br label %cond.end.23

cond.end.23:                                      ; preds = %cond.false.22, %cond.true.21
  %cond24 = phi i32 [ %65, %cond.true.21 ], [ %68, %cond.false.22 ]
  br label %cond.end.32

cond.false.25:                                    ; preds = %if.else
  %69 = load i32, i32* %c_comp, align 4, !tbaa !7
  %cmp26 = icmp eq i32 %69, 2
  br i1 %cmp26, label %cond.true.27, label %cond.false.28

cond.true.27:                                     ; preds = %cond.false.25
  %70 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %71 = bitcast %struct.gx_device_printer_s* %70 to %struct.gx_device_alps_s*
  %yellow = getelementptr inbounds %struct.gx_device_alps_s, %struct.gx_device_alps_s* %71, i32 0, i32 76
  %72 = load i32, i32* %yellow, align 4, !tbaa !26
  br label %cond.end.30

cond.false.28:                                    ; preds = %cond.false.25
  %73 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %74 = bitcast %struct.gx_device_printer_s* %73 to %struct.gx_device_alps_s*
  %black29 = getelementptr inbounds %struct.gx_device_alps_s, %struct.gx_device_alps_s* %74, i32 0, i32 77
  %75 = load i32, i32* %black29, align 4, !tbaa !27
  br label %cond.end.30

cond.end.30:                                      ; preds = %cond.false.28, %cond.true.27
  %cond31 = phi i32 [ %72, %cond.true.27 ], [ %75, %cond.false.28 ]
  br label %cond.end.32

cond.end.32:                                      ; preds = %cond.end.30, %cond.end.23
  %cond33 = phi i32 [ %cond24, %cond.end.23 ], [ %cond31, %cond.end.30 ]
  store i32 %cond33, i32* %color_weight, align 4, !tbaa !7
  br label %if.end.34

if.end.34:                                        ; preds = %cond.end.32, %if.then.17
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call35 = call i64 @fwrite(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.27, i32 0, i32 0), i64 1, i64 2, %struct._IO_FILE* %76) #5
  %77 = load i32, i32* %n_comp, align 4, !tbaa !7
  %cmp36 = icmp eq i32 %77, 1
  br i1 %cmp36, label %cond.true.37, label %cond.false.39

cond.true.37:                                     ; preds = %if.end.34
  %78 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %79 = bitcast %struct.gx_device_printer_s* %78 to %struct.gx_device_alps_s*
  %ecoBlack = getelementptr inbounds %struct.gx_device_alps_s, %struct.gx_device_alps_s* %79, i32 0, i32 72
  %80 = load i32, i32* %ecoBlack, align 4, !tbaa !38
  %tobool = icmp ne i32 %80, 0
  %cond38 = select i1 %tobool, i32 22, i32 0
  br label %cond.end.41

cond.false.39:                                    ; preds = %if.end.34
  %81 = load i32, i32* %c_comp, align 4, !tbaa !7
  %add = add nsw i32 %81, 1
  %rem40 = srem i32 %add, 4
  br label %cond.end.41

cond.end.41:                                      ; preds = %cond.false.39, %cond.true.37
  %cond42 = phi i32 [ %cond38, %cond.true.37 ], [ %rem40, %cond.false.39 ]
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call43 = call i32 @fputc(i32 %cond42, %struct._IO_FILE* %82) #5
  %83 = load i32, i32* %c_comp, align 4, !tbaa !7
  %84 = load i32, i32* %n_comp, align 4, !tbaa !7
  %sub44 = sub nsw i32 %84, 1
  %cmp45 = icmp eq i32 %83, %sub44
  br i1 %cmp45, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %cond.end.41
  %85 = load i32, i32* %ptype.addr, align 4, !tbaa !42
  %cmp46 = icmp eq i32 %85, 2
  br label %land.end

land.end:                                         ; preds = %land.rhs, %cond.end.41
  %86 = phi i1 [ false, %cond.end.41 ], [ %cmp46, %land.rhs ]
  %cond47 = select i1 %86, i32 128, i32 0
  %87 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call48 = call i32 @fputc(i32 %cond47, %struct._IO_FILE* %87) #5
  %88 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call49 = call i32 @fputc(i32 114, %struct._IO_FILE* %88) #5
  store i32 0, i32* %y, align 4, !tbaa !7
  br label %for.cond.50

for.cond.50:                                      ; preds = %for.inc.218, %land.end
  %89 = load i32, i32* %y, align 4, !tbaa !7
  %90 = load i32, i32* %y_height, align 4, !tbaa !7
  %cmp51 = icmp slt i32 %89, %90
  br i1 %cmp51, label %for.body.52, label %for.end.220

for.body.52:                                      ; preds = %for.cond.50
  %91 = bitcast i32* %len to i8*
  call void @llvm.lifetime.start(i64 4, i8* %91) #2
  %92 = load i32, i32* %line_size, align 4, !tbaa !7
  store i32 %92, i32* %len, align 4, !tbaa !7
  %93 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %94 = load i32, i32* %y, align 4, !tbaa !7
  %95 = load i8*, i8** %in, align 8, !tbaa !1
  %call53 = call i32 @gdev_prn_get_bits(%struct.gx_device_printer_s* %93, i32 %94, i8* %95, i8** %dp) #5
  %96 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %color_info54 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %96, i32 0, i32 11
  %depth = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info54, i32 0, i32 3
  %97 = load i16, i16* %depth, align 2, !tbaa !63
  %conv = zext i16 %97 to i32
  switch i32 %conv, label %sw.epilog [
    i32 4, label %sw.bb
    i32 1, label %sw.bb.56
    i32 32, label %sw.bb.71
    i32 8, label %sw.bb.74
  ]

sw.bb:                                            ; preds = %for.body.52
  %98 = load i8*, i8** %work, align 8, !tbaa !1
  %99 = load i8*, i8** %dp, align 8, !tbaa !1
  %100 = load i32, i32* %len, align 4, !tbaa !7
  %101 = load i32, i32* %c_comp, align 4, !tbaa !7
  %call55 = call i32 @cmyk_to_bit(i8* %98, i8* %99, i32 %100, i32 %101) #5
  store i32 %call55, i32* %len, align 4, !tbaa !7
  %102 = load i8*, i8** %work, align 8, !tbaa !1
  store i8* %102, i8** %dp, align 8, !tbaa !1
  br label %sw.bb.56

sw.bb.56:                                         ; preds = %for.body.52, %sw.bb
  br label %for.cond.57

for.cond.57:                                      ; preds = %for.inc.69, %sw.bb.56
  %103 = load i32, i32* %len, align 4, !tbaa !7
  %cmp58 = icmp ugt i32 %103, 0
  br i1 %cmp58, label %land.rhs.60, label %land.end.67

land.rhs.60:                                      ; preds = %for.cond.57
  %104 = load i32, i32* %len, align 4, !tbaa !7
  %sub61 = sub i32 %104, 1
  %idxprom62 = zext i32 %sub61 to i64
  %105 = load i8*, i8** %dp, align 8, !tbaa !1
  %arrayidx63 = getelementptr inbounds i8, i8* %105, i64 %idxprom62
  %106 = load i8, i8* %arrayidx63, align 1, !tbaa !42
  %conv64 = zext i8 %106 to i32
  %cmp65 = icmp eq i32 %conv64, 0
  br label %land.end.67

land.end.67:                                      ; preds = %land.rhs.60, %for.cond.57
  %107 = phi i1 [ false, %for.cond.57 ], [ %cmp65, %land.rhs.60 ]
  br i1 %107, label %for.body.68, label %for.end.70

for.body.68:                                      ; preds = %land.end.67
  br label %for.inc.69

for.inc.69:                                       ; preds = %for.body.68
  %108 = load i32, i32* %len, align 4, !tbaa !7
  %dec = add i32 %108, -1
  store i32 %dec, i32* %len, align 4, !tbaa !7
  br label %for.cond.57

for.end.70:                                       ; preds = %land.end.67
  br label %sw.epilog

sw.bb.71:                                         ; preds = %for.body.52
  %109 = load i32, i32* %c_comp, align 4, !tbaa !7
  %110 = load i8*, i8** %dp, align 8, !tbaa !1
  %idx.ext72 = sext i32 %109 to i64
  %add.ptr73 = getelementptr inbounds i8, i8* %110, i64 %idx.ext72
  store i8* %add.ptr73, i8** %dp, align 8, !tbaa !1
  br label %sw.bb.74

sw.bb.74:                                         ; preds = %for.body.52, %sw.bb.71
  %111 = load i8*, i8** %work, align 8, !tbaa !1
  store i8* %111, i8** %outP, align 8, !tbaa !1
  %112 = load i32*, i32** %error, align 8, !tbaa !1
  store i32* %112, i32** %ep, align 8, !tbaa !1
  br label %for.cond.75

for.cond.75:                                      ; preds = %for.inc.87, %sw.bb.74
  %113 = load i32, i32* %len, align 4, !tbaa !7
  %cmp76 = icmp ugt i32 %113, 0
  br i1 %cmp76, label %land.rhs.78, label %land.end.85

land.rhs.78:                                      ; preds = %for.cond.75
  %114 = load i32, i32* %len, align 4, !tbaa !7
  %115 = load i32, i32* %num_comp, align 4, !tbaa !7
  %sub79 = sub i32 %114, %115
  %idxprom80 = zext i32 %sub79 to i64
  %116 = load i8*, i8** %dp, align 8, !tbaa !1
  %arrayidx81 = getelementptr inbounds i8, i8* %116, i64 %idxprom80
  %117 = load i8, i8* %arrayidx81, align 1, !tbaa !42
  %conv82 = zext i8 %117 to i32
  %cmp83 = icmp eq i32 %conv82, 0
  br label %land.end.85

land.end.85:                                      ; preds = %land.rhs.78, %for.cond.75
  %118 = phi i1 [ false, %for.cond.75 ], [ %cmp83, %land.rhs.78 ]
  br i1 %118, label %for.body.86, label %for.end.89

for.body.86:                                      ; preds = %land.end.85
  br label %for.inc.87

for.inc.87:                                       ; preds = %for.body.86
  %119 = load i32, i32* %num_comp, align 4, !tbaa !7
  %120 = load i32, i32* %len, align 4, !tbaa !7
  %sub88 = sub i32 %120, %119
  store i32 %sub88, i32* %len, align 4, !tbaa !7
  br label %for.cond.75

for.end.89:                                       ; preds = %land.end.85
  store i32 0, i32* %i, align 4, !tbaa !7
  br label %for.cond.90

for.cond.90:                                      ; preds = %for.inc.100, %for.end.89
  %121 = load i32, i32* %i, align 4, !tbaa !7
  %122 = load i32, i32* %len, align 4, !tbaa !7
  %cmp91 = icmp ult i32 %121, %122
  br i1 %cmp91, label %for.body.93, label %for.end.102

for.body.93:                                      ; preds = %for.cond.90
  %123 = load i32, i32* %i, align 4, !tbaa !7
  %idxprom94 = sext i32 %123 to i64
  %124 = load i8*, i8** %dp, align 8, !tbaa !1
  %arrayidx95 = getelementptr inbounds i8, i8* %124, i64 %idxprom94
  %125 = load i8, i8* %arrayidx95, align 1, !tbaa !42
  %conv96 = zext i8 %125 to i32
  %126 = load i32, i32* %color_weight, align 4, !tbaa !7
  %mul = mul nsw i32 %conv96, %126
  %shr = ashr i32 %mul, 10
  %conv97 = trunc i32 %shr to i8
  %127 = load i32, i32* %i, align 4, !tbaa !7
  %idxprom98 = sext i32 %127 to i64
  %128 = load i8*, i8** %dp, align 8, !tbaa !1
  %arrayidx99 = getelementptr inbounds i8, i8* %128, i64 %idxprom98
  store i8 %conv97, i8* %arrayidx99, align 1, !tbaa !42
  br label %for.inc.100

for.inc.100:                                      ; preds = %for.body.93
  %129 = load i32, i32* %num_comp, align 4, !tbaa !7
  %130 = load i32, i32* %i, align 4, !tbaa !7
  %add101 = add nsw i32 %130, %129
  store i32 %add101, i32* %i, align 4, !tbaa !7
  br label %for.cond.90

for.end.102:                                      ; preds = %for.cond.90
  %131 = load i32, i32* %len, align 4, !tbaa !7
  %132 = load i32, i32* %num_comp, align 4, !tbaa !7
  %div = udiv i32 %131, %132
  %add103 = add i32 %div, 7
  %shr104 = lshr i32 %add103, 3
  store i32 %shr104, i32* %len, align 4, !tbaa !7
  call void @llvm.lifetime.start(i64 1, i8* %c) #2
  call void @llvm.lifetime.start(i64 1, i8* %bitmask) #2
  %133 = bitcast i32* %Err to i8*
  call void @llvm.lifetime.start(i64 4, i8* %133) #2
  store i32 0, i32* %Err, align 4, !tbaa !7
  %134 = bitcast i32* %oldErr to i8*
  call void @llvm.lifetime.start(i64 4, i8* %134) #2
  store i32 0, i32* %i, align 4, !tbaa !7
  br label %for.cond.105

for.cond.105:                                     ; preds = %for.inc.148, %for.end.102
  %135 = load i32, i32* %i, align 4, !tbaa !7
  %136 = load i32, i32* %len, align 4, !tbaa !7
  %cmp106 = icmp ult i32 %135, %136
  br i1 %cmp106, label %for.body.108, label %for.end.150

for.body.108:                                     ; preds = %for.cond.105
  store i8 -128, i8* %bitmask, align 1, !tbaa !42
  store i32 0, i32* %j, align 4, !tbaa !7
  store i8 0, i8* %c, align 1, !tbaa !42
  br label %for.cond.109

for.cond.109:                                     ; preds = %for.inc.144, %for.body.108
  %137 = load i32, i32* %j, align 4, !tbaa !7
  %cmp110 = icmp slt i32 %137, 8
  br i1 %cmp110, label %for.body.112, label %for.end.146

for.body.112:                                     ; preds = %for.cond.109
  %138 = load i32, i32* %Err, align 4, !tbaa !7
  store i32 %138, i32* %oldErr, align 4, !tbaa !7
  %139 = load i32*, i32** %ep, align 8, !tbaa !1
  %140 = load i32, i32* %139, align 4, !tbaa !7
  %141 = load i32, i32* %Err, align 4, !tbaa !7
  %mul113 = mul nsw i32 %141, 7
  %add114 = add nsw i32 %mul113, 8
  %shr115 = ashr i32 %add114, 4
  %add116 = add nsw i32 %140, %shr115
  %142 = load i8*, i8** %dp, align 8, !tbaa !1
  %143 = load i8, i8* %142, align 1, !tbaa !42
  %conv117 = zext i8 %143 to i32
  %shl118 = shl i32 %conv117, 19
  %add119 = add nsw i32 %add116, %shl118
  store i32 %add119, i32* %Err, align 4, !tbaa !7
  %144 = load i32, i32* %num_comp, align 4, !tbaa !7
  %145 = load i8*, i8** %dp, align 8, !tbaa !1
  %idx.ext120 = sext i32 %144 to i64
  %add.ptr121 = getelementptr inbounds i8, i8* %145, i64 %idx.ext120
  store i8* %add.ptr121, i8** %dp, align 8, !tbaa !1
  %146 = load i32, i32* %Err, align 4, !tbaa !7
  %cmp122 = icmp sgt i32 %146, 67108864
  br i1 %cmp122, label %if.then.124, label %if.end.129

if.then.124:                                      ; preds = %for.body.112
  %147 = load i8, i8* %bitmask, align 1, !tbaa !42
  %conv125 = zext i8 %147 to i32
  %148 = load i8, i8* %c, align 1, !tbaa !42
  %conv126 = zext i8 %148 to i32
  %or = or i32 %conv126, %conv125
  %conv127 = trunc i32 %or to i8
  store i8 %conv127, i8* %c, align 1, !tbaa !42
  %149 = load i32, i32* %Err, align 4, !tbaa !7
  %sub128 = sub nsw i32 %149, 133693440
  store i32 %sub128, i32* %Err, align 4, !tbaa !7
  br label %if.end.129

if.end.129:                                       ; preds = %if.then.124, %for.body.112
  %150 = load i32, i32* %Err, align 4, !tbaa !7
  %mul130 = mul nsw i32 %150, 3
  %add131 = add nsw i32 %mul130, 8
  %shr132 = ashr i32 %add131, 4
  %151 = load i32, i32* %num_comp, align 4, !tbaa !7
  %sub133 = sub nsw i32 0, %151
  %idxprom134 = sext i32 %sub133 to i64
  %152 = load i32*, i32** %ep, align 8, !tbaa !1
  %arrayidx135 = getelementptr inbounds i32, i32* %152, i64 %idxprom134
  %153 = load i32, i32* %arrayidx135, align 4, !tbaa !7
  %add136 = add nsw i32 %153, %shr132
  store i32 %add136, i32* %arrayidx135, align 4, !tbaa !7
  %154 = load i32, i32* %Err, align 4, !tbaa !7
  %mul137 = mul nsw i32 %154, 5
  %155 = load i32, i32* %oldErr, align 4, !tbaa !7
  %add138 = add nsw i32 %mul137, %155
  %add139 = add nsw i32 %add138, 8
  %shr140 = ashr i32 %add139, 4
  %156 = load i32*, i32** %ep, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i32, i32* %156, i32 1
  store i32* %incdec.ptr, i32** %ep, align 8, !tbaa !1
  store i32 %shr140, i32* %156, align 4, !tbaa !7
  %157 = load i8, i8* %bitmask, align 1, !tbaa !42
  %conv141 = zext i8 %157 to i32
  %shr142 = ashr i32 %conv141, 1
  %conv143 = trunc i32 %shr142 to i8
  store i8 %conv143, i8* %bitmask, align 1, !tbaa !42
  br label %for.inc.144

for.inc.144:                                      ; preds = %if.end.129
  %158 = load i32, i32* %j, align 4, !tbaa !7
  %inc145 = add nsw i32 %158, 1
  store i32 %inc145, i32* %j, align 4, !tbaa !7
  br label %for.cond.109

for.end.146:                                      ; preds = %for.cond.109
  %159 = load i8, i8* %c, align 1, !tbaa !42
  %160 = load i8*, i8** %outP, align 8, !tbaa !1
  %incdec.ptr147 = getelementptr inbounds i8, i8* %160, i32 1
  store i8* %incdec.ptr147, i8** %outP, align 8, !tbaa !1
  store i8 %159, i8* %160, align 1, !tbaa !42
  br label %for.inc.148

for.inc.148:                                      ; preds = %for.end.146
  %161 = load i32, i32* %i, align 4, !tbaa !7
  %inc149 = add nsw i32 %161, 1
  store i32 %inc149, i32* %i, align 4, !tbaa !7
  br label %for.cond.105

for.end.150:                                      ; preds = %for.cond.105
  %162 = bitcast i32* %oldErr to i8*
  call void @llvm.lifetime.end(i64 4, i8* %162) #2
  %163 = bitcast i32* %Err to i8*
  call void @llvm.lifetime.end(i64 4, i8* %163) #2
  call void @llvm.lifetime.end(i64 1, i8* %bitmask) #2
  call void @llvm.lifetime.end(i64 1, i8* %c) #2
  %164 = load i8*, i8** %work, align 8, !tbaa !1
  store i8* %164, i8** %dp, align 8, !tbaa !1
  br label %sw.epilog

sw.epilog:                                        ; preds = %for.body.52, %for.end.150, %for.end.70
  %165 = load i32, i32* %len, align 4, !tbaa !7
  %cmp151 = icmp eq i32 %165, 0
  br i1 %cmp151, label %if.then.153, label %if.else.155

if.then.153:                                      ; preds = %sw.epilog
  %166 = load i32, i32* %yskip, align 4, !tbaa !7
  %inc154 = add nsw i32 %166, 1
  store i32 %inc154, i32* %yskip, align 4, !tbaa !7
  br label %if.end.217

if.else.155:                                      ; preds = %sw.epilog
  %167 = load i32, i32* %yskip, align 4, !tbaa !7
  %tobool156 = icmp ne i32 %167, 0
  br i1 %tobool156, label %if.then.157, label %if.end.167

if.then.157:                                      ; preds = %if.else.155
  %168 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call158 = call i64 @fwrite(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.28, i32 0, i32 0), i64 1, i64 3, %struct._IO_FILE* %168) #5
  %169 = load i32, i32* %yskip, align 4, !tbaa !7
  %conv159 = trunc i32 %169 to i8
  %conv160 = zext i8 %conv159 to i32
  %170 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call161 = call i32 @fputc(i32 %conv160, %struct._IO_FILE* %170) #5
  %171 = load i32, i32* %yskip, align 4, !tbaa !7
  %conv162 = trunc i32 %171 to i16
  %conv163 = zext i16 %conv162 to i32
  %shr164 = ashr i32 %conv163, 8
  %172 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call165 = call i32 @fputc(i32 %shr164, %struct._IO_FILE* %172) #5
  %173 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call166 = call i32 @fputc(i32 89, %struct._IO_FILE* %173) #5
  store i32 0, i32* %yskip, align 4, !tbaa !7
  br label %if.end.167

if.end.167:                                       ; preds = %if.then.157, %if.else.155
  %174 = load i32, i32* %ptype.addr, align 4, !tbaa !42
  %cmp168 = icmp eq i32 %174, 2
  br i1 %cmp168, label %if.then.170, label %if.else.203

if.then.170:                                      ; preds = %if.end.167
  %175 = bitcast i32* %xskip to i8*
  call void @llvm.lifetime.start(i64 4, i8* %175) #2
  store i32 0, i32* %xskip, align 4, !tbaa !7
  br label %for.cond.171

for.cond.171:                                     ; preds = %for.inc.180, %if.then.170
  %176 = load i32, i32* %len, align 4, !tbaa !7
  %cmp172 = icmp ugt i32 %176, 0
  br i1 %cmp172, label %land.rhs.174, label %land.end.178

land.rhs.174:                                     ; preds = %for.cond.171
  %177 = load i8*, i8** %dp, align 8, !tbaa !1
  %178 = load i8, i8* %177, align 1, !tbaa !42
  %conv175 = zext i8 %178 to i32
  %cmp176 = icmp eq i32 %conv175, 0
  br label %land.end.178

land.end.178:                                     ; preds = %land.rhs.174, %for.cond.171
  %179 = phi i1 [ false, %for.cond.171 ], [ %cmp176, %land.rhs.174 ]
  br i1 %179, label %for.body.179, label %for.end.184

for.body.179:                                     ; preds = %land.end.178
  br label %for.inc.180

for.inc.180:                                      ; preds = %for.body.179
  %180 = load i32, i32* %len, align 4, !tbaa !7
  %dec181 = add i32 %180, -1
  store i32 %dec181, i32* %len, align 4, !tbaa !7
  %181 = load i8*, i8** %dp, align 8, !tbaa !1
  %incdec.ptr182 = getelementptr inbounds i8, i8* %181, i32 1
  store i8* %incdec.ptr182, i8** %dp, align 8, !tbaa !1
  %182 = load i32, i32* %xskip, align 4, !tbaa !7
  %inc183 = add nsw i32 %182, 1
  store i32 %inc183, i32* %xskip, align 4, !tbaa !7
  br label %for.cond.171

for.end.184:                                      ; preds = %land.end.178
  %183 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call185 = call i64 @fwrite(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.28, i32 0, i32 0), i64 1, i64 3, %struct._IO_FILE* %183) #5
  %184 = load i32, i32* %len, align 4, !tbaa !7
  %conv186 = trunc i32 %184 to i8
  %conv187 = zext i8 %conv186 to i32
  %185 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call188 = call i32 @fputc(i32 %conv187, %struct._IO_FILE* %185) #5
  %186 = load i32, i32* %len, align 4, !tbaa !7
  %conv189 = trunc i32 %186 to i16
  %conv190 = zext i16 %conv189 to i32
  %shr191 = ashr i32 %conv190, 8
  %187 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call192 = call i32 @fputc(i32 %shr191, %struct._IO_FILE* %187) #5
  %188 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call193 = call i32 @fputc(i32 84, %struct._IO_FILE* %188) #5
  %189 = load i32, i32* %xskip, align 4, !tbaa !7
  %conv194 = trunc i32 %189 to i8
  %conv195 = zext i8 %conv194 to i32
  %190 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call196 = call i32 @fputc(i32 %conv195, %struct._IO_FILE* %190) #5
  %191 = load i32, i32* %xskip, align 4, !tbaa !7
  %conv197 = trunc i32 %191 to i16
  %conv198 = zext i16 %conv197 to i32
  %shr199 = ashr i32 %conv198, 8
  %192 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call200 = call i32 @fputc(i32 %shr199, %struct._IO_FILE* %192) #5
  %193 = load i8*, i8** %dp, align 8, !tbaa !1
  %194 = load i32, i32* %len, align 4, !tbaa !7
  %conv201 = zext i32 %194 to i64
  %195 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call202 = call i64 @fwrite(i8* %193, i64 1, i64 %conv201, %struct._IO_FILE* %195) #5
  %196 = bitcast i32* %xskip to i8*
  call void @llvm.lifetime.end(i64 4, i8* %196) #2
  br label %if.end.216

if.else.203:                                      ; preds = %if.end.167
  %197 = load i8*, i8** %out, align 8, !tbaa !1
  %198 = load i8*, i8** %dp, align 8, !tbaa !1
  %199 = load i32, i32* %len, align 4, !tbaa !7
  %call204 = call i32 @runlength(i8* %197, i8* %198, i32 %199) #5
  store i32 %call204, i32* %len, align 4, !tbaa !7
  %200 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call205 = call i64 @fwrite(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.28, i32 0, i32 0), i64 1, i64 3, %struct._IO_FILE* %200) #5
  %201 = load i32, i32* %len, align 4, !tbaa !7
  %conv206 = trunc i32 %201 to i8
  %conv207 = zext i8 %conv206 to i32
  %202 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call208 = call i32 @fputc(i32 %conv207, %struct._IO_FILE* %202) #5
  %203 = load i32, i32* %len, align 4, !tbaa !7
  %conv209 = trunc i32 %203 to i16
  %conv210 = zext i16 %conv209 to i32
  %shr211 = ashr i32 %conv210, 8
  %204 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call212 = call i32 @fputc(i32 %shr211, %struct._IO_FILE* %204) #5
  %205 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call213 = call i32 @fputc(i32 87, %struct._IO_FILE* %205) #5
  %206 = load i8*, i8** %out, align 8, !tbaa !1
  %207 = load i32, i32* %len, align 4, !tbaa !7
  %conv214 = zext i32 %207 to i64
  %208 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call215 = call i64 @fwrite(i8* %206, i64 1, i64 %conv214, %struct._IO_FILE* %208) #5
  br label %if.end.216

if.end.216:                                       ; preds = %if.else.203, %for.end.184
  br label %if.end.217

if.end.217:                                       ; preds = %if.end.216, %if.then.153
  %209 = bitcast i32* %len to i8*
  call void @llvm.lifetime.end(i64 4, i8* %209) #2
  br label %for.inc.218

for.inc.218:                                      ; preds = %if.end.217
  %210 = load i32, i32* %y, align 4, !tbaa !7
  %inc219 = add nsw i32 %210, 1
  store i32 %inc219, i32* %y, align 4, !tbaa !7
  br label %for.cond.50

for.end.220:                                      ; preds = %for.cond.50
  %211 = load i32, i32* %c_comp, align 4, !tbaa !7
  %add221 = add nsw i32 %211, 1
  %212 = load i32, i32* %n_comp, align 4, !tbaa !7
  %cmp222 = icmp slt i32 %add221, %212
  br i1 %cmp222, label %if.then.224, label %if.end.226

if.then.224:                                      ; preds = %for.end.220
  %213 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call225 = call i64 @fwrite(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.29, i32 0, i32 0), i64 1, i64 5, %struct._IO_FILE* %213) #5
  br label %if.end.226

if.end.226:                                       ; preds = %if.then.224, %for.end.220
  %214 = bitcast i32* %color_weight to i8*
  call void @llvm.lifetime.end(i64 4, i8* %214) #2
  %215 = bitcast i32* %yskip to i8*
  call void @llvm.lifetime.end(i64 4, i8* %215) #2
  br label %for.inc.227

for.inc.227:                                      ; preds = %if.end.226
  %216 = load i32, i32* %c_comp, align 4, !tbaa !7
  %inc228 = add nsw i32 %216, 1
  store i32 %inc228, i32* %c_comp, align 4, !tbaa !7
  br label %for.cond

for.end.229:                                      ; preds = %for.cond
  %217 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call230 = call i64 @fwrite(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.30, i32 0, i32 0), i64 1, i64 9, %struct._IO_FILE* %217) #5
  %218 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory231 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %218, i32 0, i32 3
  %219 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory231, align 8, !tbaa !58
  %non_gc_memory232 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %219, i32 0, i32 3
  %220 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory232, align 8, !tbaa !59
  %non_gc_memory233 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %220, i32 0, i32 3
  %221 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory233, align 8, !tbaa !59
  %procs234 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %221, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs234, i32 0, i32 2
  %222 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !64
  %223 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory235 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %223, i32 0, i32 3
  %224 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory235, align 8, !tbaa !58
  %non_gc_memory236 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %224, i32 0, i32 3
  %225 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory236, align 8, !tbaa !59
  %non_gc_memory237 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %225, i32 0, i32 3
  %226 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory237, align 8, !tbaa !59
  %227 = load i8*, i8** %work, align 8, !tbaa !1
  call void %222(%struct.gs_memory_s* %226, i8* %227, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.26, i32 0, i32 0)) #5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end.229, %if.then
  %228 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %228) #2
  %229 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %229) #2
  %230 = bitcast i32** %ep to i8*
  call void @llvm.lifetime.end(i64 8, i8* %230) #2
  %231 = bitcast i32** %error to i8*
  call void @llvm.lifetime.end(i64 8, i8* %231) #2
  %232 = bitcast i32* %n_comp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %232) #2
  %233 = bitcast i32* %num_comp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %233) #2
  %234 = bitcast i32* %c_comp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %234) #2
  %235 = bitcast i32* %y_height to i8*
  call void @llvm.lifetime.end(i64 4, i8* %235) #2
  %236 = bitcast i32* %y to i8*
  call void @llvm.lifetime.end(i64 4, i8* %236) #2
  %237 = bitcast i8** %outP to i8*
  call void @llvm.lifetime.end(i64 8, i8* %237) #2
  %238 = bitcast i8** %dp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %238) #2
  %239 = bitcast i8** %work to i8*
  call void @llvm.lifetime.end(i64 8, i8* %239) #2
  %240 = bitcast i8** %out to i8*
  call void @llvm.lifetime.end(i64 8, i8* %240) #2
  %241 = bitcast i8** %in to i8*
  call void @llvm.lifetime.end(i64 8, i8* %241) #2
  %242 = bitcast i32* %line_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %242) #2
  %243 = load i32, i32* %retval
  ret i32 %243
}

declare i32 @gx_device_raster(%struct.gx_device_s*, i32) #0

; Function Attrs: nounwind uwtable
define internal void @alps_init(%struct.gx_device_printer_s* %pdev, %struct._IO_FILE* %prn_stream, i32 %ptype) #1 {
entry:
  %pdev.addr = alloca %struct.gx_device_printer_s*, align 8
  %prn_stream.addr = alloca %struct._IO_FILE*, align 8
  %ptype.addr = alloca i32, align 4
  %height = alloca i16, align 2
  store %struct.gx_device_printer_s* %pdev, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  store %struct._IO_FILE* %prn_stream, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  store i32 %ptype, i32* %ptype.addr, align 4, !tbaa !42
  %0 = bitcast i16* %height to i8*
  call void @llvm.lifetime.start(i64 2, i8* %0) #2
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call = call i64 @fwrite(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.31, i32 0, i32 0), i64 1, i64 11, %struct._IO_FILE* %1) #5
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call1 = call i64 @fwrite(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.32, i32 0, i32 0), i64 1, i64 3, %struct._IO_FILE* %2) #5
  %3 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %4 = bitcast %struct.gx_device_printer_s* %3 to %struct.gx_device_alps_s*
  %manualFeed = getelementptr inbounds %struct.gx_device_alps_s, %struct.gx_device_alps_s* %4, i32 0, i32 70
  %5 = load i32, i32* %manualFeed, align 4, !tbaa !36
  %tobool = icmp ne i32 %5, 0
  %cond = select i1 %tobool, i32 2, i32 1
  %conv = trunc i32 %cond to i8
  %conv2 = zext i8 %conv to i32
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call3 = call i32 @fputc(i32 %conv2, %struct._IO_FILE* %6) #5
  %7 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %8 = bitcast %struct.gx_device_printer_s* %7 to %struct.gx_device_alps_s*
  %manualFeed4 = getelementptr inbounds %struct.gx_device_alps_s, %struct.gx_device_alps_s* %8, i32 0, i32 70
  %9 = load i32, i32* %manualFeed4, align 4, !tbaa !36
  %tobool5 = icmp ne i32 %9, 0
  %cond6 = select i1 %tobool5, i32 2, i32 1
  %conv7 = trunc i32 %cond6 to i16
  %conv8 = zext i16 %conv7 to i32
  %shr = ashr i32 %conv8, 8
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call9 = call i32 @fputc(i32 %shr, %struct._IO_FILE* %10) #5
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call10 = call i32 @fputc(i32 72, %struct._IO_FILE* %11) #5
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call11 = call i64 @fwrite(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.32, i32 0, i32 0), i64 1, i64 3, %struct._IO_FILE* %12) #5
  %13 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %14 = bitcast %struct.gx_device_printer_s* %13 to %struct.gx_device_alps_s*
  %mediaType = getelementptr inbounds %struct.gx_device_alps_s, %struct.gx_device_alps_s* %14, i32 0, i32 73
  %15 = load i32, i32* %mediaType, align 4, !tbaa !43
  %conv12 = trunc i32 %15 to i8
  %conv13 = zext i8 %conv12 to i32
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call14 = call i32 @fputc(i32 %conv13, %struct._IO_FILE* %16) #5
  %17 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %18 = bitcast %struct.gx_device_printer_s* %17 to %struct.gx_device_alps_s*
  %mediaType15 = getelementptr inbounds %struct.gx_device_alps_s, %struct.gx_device_alps_s* %18, i32 0, i32 73
  %19 = load i32, i32* %mediaType15, align 4, !tbaa !43
  %conv16 = trunc i32 %19 to i16
  %conv17 = zext i16 %conv16 to i32
  %shr18 = ashr i32 %conv17, 8
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call19 = call i32 @fputc(i32 %shr18, %struct._IO_FILE* %20) #5
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call20 = call i32 @fputc(i32 77, %struct._IO_FILE* %21) #5
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call21 = call i64 @fwrite(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.32, i32 0, i32 0), i64 1, i64 3, %struct._IO_FILE* %22) #5
  %23 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %MediaSize = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %23, i32 0, i32 19
  %arrayidx = getelementptr inbounds [2 x float], [2 x float]* %MediaSize, i32 0, i64 0
  %24 = load float, float* %arrayidx, align 4, !tbaa !5
  %cmp = fcmp oeq float %24, 6.120000e+02
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end.51

cond.false:                                       ; preds = %entry
  %25 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %MediaSize23 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %25, i32 0, i32 19
  %arrayidx24 = getelementptr inbounds [2 x float], [2 x float]* %MediaSize23, i32 0, i64 0
  %26 = load float, float* %arrayidx24, align 4, !tbaa !5
  %cmp25 = fcmp oge float %26, 5.950000e+02
  br i1 %cmp25, label %land.lhs.true, label %cond.false.32

land.lhs.true:                                    ; preds = %cond.false
  %27 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %MediaSize27 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %27, i32 0, i32 19
  %arrayidx28 = getelementptr inbounds [2 x float], [2 x float]* %MediaSize27, i32 0, i64 0
  %28 = load float, float* %arrayidx28, align 4, !tbaa !5
  %cmp29 = fcmp ole float %28, 5.980000e+02
  br i1 %cmp29, label %cond.true.31, label %cond.false.32

cond.true.31:                                     ; preds = %land.lhs.true
  br label %cond.end.49

cond.false.32:                                    ; preds = %land.lhs.true, %cond.false
  %29 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %MediaSize33 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %29, i32 0, i32 19
  %arrayidx34 = getelementptr inbounds [2 x float], [2 x float]* %MediaSize33, i32 0, i64 0
  %30 = load float, float* %arrayidx34, align 4, !tbaa !5
  %cmp35 = fcmp oeq float %30, 5.160000e+02
  br i1 %cmp35, label %cond.true.41, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.false.32
  %31 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %MediaSize37 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %31, i32 0, i32 19
  %arrayidx38 = getelementptr inbounds [2 x float], [2 x float]* %MediaSize37, i32 0, i64 0
  %32 = load float, float* %arrayidx38, align 4, !tbaa !5
  %cmp39 = fcmp oeq float %32, 5.010000e+02
  br i1 %cmp39, label %cond.true.41, label %cond.false.42

cond.true.41:                                     ; preds = %lor.lhs.false, %cond.false.32
  br label %cond.end

cond.false.42:                                    ; preds = %lor.lhs.false
  %33 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %MediaSize43 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %33, i32 0, i32 19
  %arrayidx44 = getelementptr inbounds [2 x float], [2 x float]* %MediaSize43, i32 0, i64 0
  %34 = load float, float* %arrayidx44, align 4, !tbaa !5
  %cmp45 = fcmp oeq float %34, 2.840000e+02
  %cond47 = select i1 %cmp45, i32 6, i32 0
  br label %cond.end

cond.end:                                         ; preds = %cond.false.42, %cond.true.41
  %cond48 = phi i32 [ 5, %cond.true.41 ], [ %cond47, %cond.false.42 ]
  br label %cond.end.49

cond.end.49:                                      ; preds = %cond.end, %cond.true.31
  %cond50 = phi i32 [ 4, %cond.true.31 ], [ %cond48, %cond.end ]
  br label %cond.end.51

cond.end.51:                                      ; preds = %cond.end.49, %cond.true
  %cond52 = phi i32 [ 2, %cond.true ], [ %cond50, %cond.end.49 ]
  %conv53 = trunc i32 %cond52 to i8
  %conv54 = zext i8 %conv53 to i32
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call55 = call i32 @fputc(i32 %conv54, %struct._IO_FILE* %35) #5
  %36 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %MediaSize56 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %36, i32 0, i32 19
  %arrayidx57 = getelementptr inbounds [2 x float], [2 x float]* %MediaSize56, i32 0, i64 0
  %37 = load float, float* %arrayidx57, align 4, !tbaa !5
  %cmp58 = fcmp oeq float %37, 6.120000e+02
  br i1 %cmp58, label %cond.true.60, label %cond.false.61

cond.true.60:                                     ; preds = %cond.end.51
  br label %cond.end.93

cond.false.61:                                    ; preds = %cond.end.51
  %38 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %MediaSize62 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %38, i32 0, i32 19
  %arrayidx63 = getelementptr inbounds [2 x float], [2 x float]* %MediaSize62, i32 0, i64 0
  %39 = load float, float* %arrayidx63, align 4, !tbaa !5
  %cmp64 = fcmp oge float %39, 5.950000e+02
  br i1 %cmp64, label %land.lhs.true.66, label %cond.false.72

land.lhs.true.66:                                 ; preds = %cond.false.61
  %40 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %MediaSize67 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %40, i32 0, i32 19
  %arrayidx68 = getelementptr inbounds [2 x float], [2 x float]* %MediaSize67, i32 0, i64 0
  %41 = load float, float* %arrayidx68, align 4, !tbaa !5
  %cmp69 = fcmp ole float %41, 5.980000e+02
  br i1 %cmp69, label %cond.true.71, label %cond.false.72

cond.true.71:                                     ; preds = %land.lhs.true.66
  br label %cond.end.91

cond.false.72:                                    ; preds = %land.lhs.true.66, %cond.false.61
  %42 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %MediaSize73 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %42, i32 0, i32 19
  %arrayidx74 = getelementptr inbounds [2 x float], [2 x float]* %MediaSize73, i32 0, i64 0
  %43 = load float, float* %arrayidx74, align 4, !tbaa !5
  %cmp75 = fcmp oeq float %43, 5.160000e+02
  br i1 %cmp75, label %cond.true.82, label %lor.lhs.false.77

lor.lhs.false.77:                                 ; preds = %cond.false.72
  %44 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %MediaSize78 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %44, i32 0, i32 19
  %arrayidx79 = getelementptr inbounds [2 x float], [2 x float]* %MediaSize78, i32 0, i64 0
  %45 = load float, float* %arrayidx79, align 4, !tbaa !5
  %cmp80 = fcmp oeq float %45, 5.010000e+02
  br i1 %cmp80, label %cond.true.82, label %cond.false.83

cond.true.82:                                     ; preds = %lor.lhs.false.77, %cond.false.72
  br label %cond.end.89

cond.false.83:                                    ; preds = %lor.lhs.false.77
  %46 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %MediaSize84 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %46, i32 0, i32 19
  %arrayidx85 = getelementptr inbounds [2 x float], [2 x float]* %MediaSize84, i32 0, i64 0
  %47 = load float, float* %arrayidx85, align 4, !tbaa !5
  %cmp86 = fcmp oeq float %47, 2.840000e+02
  %cond88 = select i1 %cmp86, i32 6, i32 0
  br label %cond.end.89

cond.end.89:                                      ; preds = %cond.false.83, %cond.true.82
  %cond90 = phi i32 [ 5, %cond.true.82 ], [ %cond88, %cond.false.83 ]
  br label %cond.end.91

cond.end.91:                                      ; preds = %cond.end.89, %cond.true.71
  %cond92 = phi i32 [ 4, %cond.true.71 ], [ %cond90, %cond.end.89 ]
  br label %cond.end.93

cond.end.93:                                      ; preds = %cond.end.91, %cond.true.60
  %cond94 = phi i32 [ 2, %cond.true.60 ], [ %cond92, %cond.end.91 ]
  %conv95 = trunc i32 %cond94 to i16
  %conv96 = zext i16 %conv95 to i32
  %shr97 = ashr i32 %conv96, 8
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call98 = call i32 @fputc(i32 %shr97, %struct._IO_FILE* %48) #5
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call99 = call i32 @fputc(i32 65, %struct._IO_FILE* %49) #5
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call100 = call i64 @fwrite(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.33, i32 0, i32 0), i64 1, i64 3, %struct._IO_FILE* %50) #5
  %51 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %52 = bitcast %struct.gx_device_printer_s* %51 to %struct.gx_device_alps_s*
  %mediaType101 = getelementptr inbounds %struct.gx_device_alps_s, %struct.gx_device_alps_s* %52, i32 0, i32 73
  %53 = load i32, i32* %mediaType101, align 4, !tbaa !43
  %cmp102 = icmp eq i32 %53, 1
  br i1 %cmp102, label %cond.true.104, label %cond.false.105

cond.true.104:                                    ; preds = %cond.end.93
  br label %cond.end.117

cond.false.105:                                   ; preds = %cond.end.93
  %54 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %54, i32 0, i32 11
  %num_components = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 1
  %55 = load i32, i32* %num_components, align 4, !tbaa !57
  %cmp106 = icmp eq i32 %55, 1
  br i1 %cmp106, label %cond.true.108, label %cond.false.111

cond.true.108:                                    ; preds = %cond.false.105
  %56 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %57 = bitcast %struct.gx_device_printer_s* %56 to %struct.gx_device_alps_s*
  %ecoBlack = getelementptr inbounds %struct.gx_device_alps_s, %struct.gx_device_alps_s* %57, i32 0, i32 72
  %58 = load i32, i32* %ecoBlack, align 4, !tbaa !38
  %tobool109 = icmp ne i32 %58, 0
  %cond110 = select i1 %tobool109, i32 1, i32 0
  br label %cond.end.115

cond.false.111:                                   ; preds = %cond.false.105
  %59 = load i32, i32* %ptype.addr, align 4, !tbaa !42
  %cmp112 = icmp eq i32 %59, 2
  %cond114 = select i1 %cmp112, i32 8, i32 4
  br label %cond.end.115

cond.end.115:                                     ; preds = %cond.false.111, %cond.true.108
  %cond116 = phi i32 [ %cond110, %cond.true.108 ], [ %cond114, %cond.false.111 ]
  br label %cond.end.117

cond.end.117:                                     ; preds = %cond.end.115, %cond.true.104
  %cond118 = phi i32 [ 4, %cond.true.104 ], [ %cond116, %cond.end.115 ]
  %60 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call119 = call i32 @fputc(i32 %cond118, %struct._IO_FILE* %60) #5
  %61 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call120 = call i32 @fputc(i32 85, %struct._IO_FILE* %61) #5
  %62 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call121 = call i64 @fwrite(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.34, i32 0, i32 0), i64 1, i64 3, %struct._IO_FILE* %62) #5
  %63 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %HWResolution = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %63, i32 0, i32 22
  %arrayidx122 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution, i32 0, i64 0
  %64 = load float, float* %arrayidx122, align 4, !tbaa !5
  %cmp123 = fcmp oeq float %64, 3.000000e+02
  br i1 %cmp123, label %cond.true.125, label %cond.false.126

cond.true.125:                                    ; preds = %cond.end.117
  br label %cond.end.132

cond.false.126:                                   ; preds = %cond.end.117
  %65 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %HWResolution127 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %65, i32 0, i32 22
  %arrayidx128 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution127, i32 0, i64 0
  %66 = load float, float* %arrayidx128, align 4, !tbaa !5
  %cmp129 = fcmp oeq float %66, 6.000000e+02
  %cond131 = select i1 %cmp129, i32 3, i32 4
  br label %cond.end.132

cond.end.132:                                     ; preds = %cond.false.126, %cond.true.125
  %cond133 = phi i32 [ 2, %cond.true.125 ], [ %cond131, %cond.false.126 ]
  %67 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call134 = call i32 @fputc(i32 %cond133, %struct._IO_FILE* %67) #5
  %68 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call135 = call i32 @fputc(i32 82, %struct._IO_FILE* %68) #5
  %69 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %MediaSize136 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %69, i32 0, i32 19
  %arrayidx137 = getelementptr inbounds [2 x float], [2 x float]* %MediaSize136, i32 0, i64 1
  %70 = load float, float* %arrayidx137, align 4, !tbaa !5
  %71 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %HWMargins = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %71, i32 0, i32 25
  %arrayidx138 = getelementptr inbounds [4 x float], [4 x float]* %HWMargins, i32 0, i64 1
  %72 = load float, float* %arrayidx138, align 4, !tbaa !5
  %sub = fsub float %70, %72
  %73 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %HWMargins139 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %73, i32 0, i32 25
  %arrayidx140 = getelementptr inbounds [4 x float], [4 x float]* %HWMargins139, i32 0, i64 3
  %74 = load float, float* %arrayidx140, align 4, !tbaa !5
  %sub141 = fsub float %sub, %74
  %75 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %HWResolution142 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %75, i32 0, i32 22
  %arrayidx143 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution142, i32 0, i64 1
  %76 = load float, float* %arrayidx143, align 4, !tbaa !5
  %mul = fmul float %sub141, %76
  %conv144 = fpext float %mul to double
  %div = fdiv double %conv144, 7.200000e+01
  %conv145 = fptosi double %div to i16
  store i16 %conv145, i16* %height, align 2, !tbaa !31
  %77 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call146 = call i64 @fwrite(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.32, i32 0, i32 0), i64 1, i64 3, %struct._IO_FILE* %77) #5
  %78 = load i16, i16* %height, align 2, !tbaa !31
  %conv147 = trunc i16 %78 to i8
  %conv148 = zext i8 %conv147 to i32
  %79 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call149 = call i32 @fputc(i32 %conv148, %struct._IO_FILE* %79) #5
  %80 = load i16, i16* %height, align 2, !tbaa !31
  %conv150 = zext i16 %80 to i32
  %shr151 = ashr i32 %conv150, 8
  %81 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call152 = call i32 @fputc(i32 %shr151, %struct._IO_FILE* %81) #5
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call153 = call i32 @fputc(i32 80, %struct._IO_FILE* %82) #5
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call154 = call i64 @fwrite(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.27, i32 0, i32 0), i64 1, i64 2, %struct._IO_FILE* %83) #5
  %84 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %85 = bitcast %struct.gx_device_printer_s* %84 to %struct.gx_device_alps_s*
  %reverseSide = getelementptr inbounds %struct.gx_device_alps_s, %struct.gx_device_alps_s* %85, i32 0, i32 71
  %86 = load i32, i32* %reverseSide, align 4, !tbaa !37
  %87 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call155 = call i32 @fputc(i32 %86, %struct._IO_FILE* %87) #5
  %88 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call156 = call i64 @fwrite(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.35, i32 0, i32 0), i64 1, i64 2, %struct._IO_FILE* %88) #5
  %89 = load i32, i32* %ptype.addr, align 4, !tbaa !42
  %cmp157 = icmp eq i32 %89, 2
  br i1 %cmp157, label %if.then, label %if.else.176

if.then:                                          ; preds = %cond.end.132
  %90 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %91 = bitcast %struct.gx_device_printer_s* %90 to %struct.gx_device_alps_s*
  %ecoBlack159 = getelementptr inbounds %struct.gx_device_alps_s, %struct.gx_device_alps_s* %91, i32 0, i32 72
  %92 = load i32, i32* %ecoBlack159, align 4, !tbaa !38
  %tobool160 = icmp ne i32 %92, 0
  br i1 %tobool160, label %if.then.161, label %if.else

if.then.161:                                      ; preds = %if.then
  %93 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call162 = call i64 @fwrite(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.36, i32 0, i32 0), i64 1, i64 5, %struct._IO_FILE* %93) #5
  %94 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call163 = call i64 @fwrite(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.37, i32 0, i32 0), i64 1, i64 7, %struct._IO_FILE* %94) #5
  br label %if.end.172

if.else:                                          ; preds = %if.then
  %95 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %color_info164 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %95, i32 0, i32 11
  %num_components165 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info164, i32 0, i32 1
  %96 = load i32, i32* %num_components165, align 4, !tbaa !57
  %cmp166 = icmp eq i32 %96, 1
  br i1 %cmp166, label %if.then.168, label %if.else.170

if.then.168:                                      ; preds = %if.else
  %97 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call169 = call i64 @fwrite(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.38, i32 0, i32 0), i64 1, i64 7, %struct._IO_FILE* %97) #5
  br label %if.end

if.else.170:                                      ; preds = %if.else
  %98 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call171 = call i64 @fwrite(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.39, i32 0, i32 0), i64 1, i64 10, %struct._IO_FILE* %98) #5
  br label %if.end

if.end:                                           ; preds = %if.else.170, %if.then.168
  br label %if.end.172

if.end.172:                                       ; preds = %if.end, %if.then.161
  %99 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call173 = call i64 @fwrite(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.40, i32 0, i32 0), i64 1, i64 5, %struct._IO_FILE* %99) #5
  %100 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call174 = call i64 @fwrite(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.41, i32 0, i32 0), i64 1, i64 5, %struct._IO_FILE* %100) #5
  %101 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call175 = call i64 @fwrite(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.42, i32 0, i32 0), i64 1, i64 6, %struct._IO_FILE* %101) #5
  br label %if.end.179

if.else.176:                                      ; preds = %cond.end.132
  %102 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call177 = call i64 @fwrite(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.43, i32 0, i32 0), i64 1, i64 5, %struct._IO_FILE* %102) #5
  %103 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call178 = call i64 @fwrite(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.44, i32 0, i32 0), i64 1, i64 6, %struct._IO_FILE* %103) #5
  br label %if.end.179

if.end.179:                                       ; preds = %if.else.176, %if.end.172
  %104 = bitcast i16* %height to i8*
  call void @llvm.lifetime.end(i64 2, i8* %104) #2
  ret void
}

; Function Attrs: nounwind
declare i32 @rand() #4

declare i64 @fwrite(i8*, i64, i64, %struct._IO_FILE*) #0

declare i32 @fputc(i32, %struct._IO_FILE*) #0

declare i32 @gdev_prn_get_bits(%struct.gx_device_printer_s*, i32, i8*, i8**) #0

; Function Attrs: nounwind uwtable
define internal i32 @cmyk_to_bit(i8* %out, i8* %in, i32 %length, i32 %c_comp) #1 {
entry:
  %out.addr = alloca i8*, align 8
  %in.addr = alloca i8*, align 8
  %length.addr = alloca i32, align 4
  %c_comp.addr = alloca i32, align 4
  %p_in = alloca i8*, align 8
  %p_out = alloca i8*, align 8
  %p_end = alloca i8*, align 8
  %in_data = alloca i8, align 1
  %out_data = alloca i8, align 1
  %mask1 = alloca i8, align 1
  %mask2 = alloca i8, align 1
  %i = alloca i32, align 4
  store i8* %out, i8** %out.addr, align 8, !tbaa !1
  store i8* %in, i8** %in.addr, align 8, !tbaa !1
  store i32 %length, i32* %length.addr, align 4, !tbaa !7
  store i32 %c_comp, i32* %c_comp.addr, align 4, !tbaa !7
  %0 = bitcast i8** %p_in to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load i8*, i8** %in.addr, align 8, !tbaa !1
  store i8* %1, i8** %p_in, align 8, !tbaa !1
  %2 = bitcast i8** %p_out to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #2
  %3 = load i8*, i8** %out.addr, align 8, !tbaa !1
  store i8* %3, i8** %p_out, align 8, !tbaa !1
  %4 = bitcast i8** %p_end to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #2
  call void @llvm.lifetime.start(i64 1, i8* %in_data) #2
  call void @llvm.lifetime.start(i64 1, i8* %out_data) #2
  call void @llvm.lifetime.start(i64 1, i8* %mask1) #2
  call void @llvm.lifetime.start(i64 1, i8* %mask2) #2
  %5 = load i8*, i8** %in.addr, align 8, !tbaa !1
  %6 = load i32, i32* %length.addr, align 4, !tbaa !7
  %idx.ext = sext i32 %6 to i64
  %add.ptr = getelementptr inbounds i8, i8* %5, i64 %idx.ext
  store i8* %add.ptr, i8** %p_end, align 8, !tbaa !1
  %7 = load i32, i32* %c_comp.addr, align 4, !tbaa !7
  %shr = ashr i32 128, %7
  %conv = trunc i32 %shr to i8
  store i8 %conv, i8* %mask1, align 1, !tbaa !42
  %8 = load i8, i8* %mask1, align 1, !tbaa !42
  %conv1 = zext i8 %8 to i32
  %shr2 = ashr i32 %conv1, 4
  %conv3 = trunc i32 %shr2 to i8
  store i8 %conv3, i8* %mask2, align 1, !tbaa !42
  br label %while.cond

while.cond:                                       ; preds = %for.end, %entry
  %9 = load i8*, i8** %p_in, align 8, !tbaa !1
  %10 = load i8*, i8** %p_end, align 8, !tbaa !1
  %cmp = icmp ult i8* %9, %10
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %11 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #2
  store i8 0, i8* %out_data, align 1, !tbaa !42
  store i32 0, i32* %i, align 4, !tbaa !7
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %12 = load i32, i32* %i, align 4, !tbaa !7
  %cmp5 = icmp slt i32 %12, 4
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load i8*, i8** %p_in, align 8, !tbaa !1
  %14 = load i8*, i8** %p_end, align 8, !tbaa !1
  %cmp7 = icmp ult i8* %13, %14
  br i1 %cmp7, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %15 = load i8*, i8** %p_in, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %incdec.ptr, i8** %p_in, align 8, !tbaa !1
  %16 = load i8, i8* %15, align 1, !tbaa !42
  %conv9 = zext i8 %16 to i32
  br label %cond.end

cond.false:                                       ; preds = %for.body
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv9, %cond.true ], [ 0, %cond.false ]
  %conv10 = trunc i32 %cond to i8
  store i8 %conv10, i8* %in_data, align 1, !tbaa !42
  %17 = load i8, i8* %out_data, align 1, !tbaa !42
  %conv11 = zext i8 %17 to i32
  %shl = shl i32 %conv11, 2
  %conv12 = trunc i32 %shl to i8
  store i8 %conv12, i8* %out_data, align 1, !tbaa !42
  %18 = load i8, i8* %in_data, align 1, !tbaa !42
  %conv13 = zext i8 %18 to i32
  %19 = load i8, i8* %mask1, align 1, !tbaa !42
  %conv14 = zext i8 %19 to i32
  %and = and i32 %conv13, %conv14
  %20 = load i32, i32* %c_comp.addr, align 4, !tbaa !7
  %sub = sub nsw i32 6, %20
  %shr15 = ashr i32 %and, %sub
  %21 = load i8, i8* %in_data, align 1, !tbaa !42
  %conv16 = zext i8 %21 to i32
  %22 = load i8, i8* %mask2, align 1, !tbaa !42
  %conv17 = zext i8 %22 to i32
  %and18 = and i32 %conv16, %conv17
  %23 = load i32, i32* %c_comp.addr, align 4, !tbaa !7
  %sub19 = sub nsw i32 3, %23
  %shr20 = ashr i32 %and18, %sub19
  %or = or i32 %shr15, %shr20
  %24 = load i8, i8* %out_data, align 1, !tbaa !42
  %conv21 = zext i8 %24 to i32
  %or22 = or i32 %conv21, %or
  %conv23 = trunc i32 %or22 to i8
  store i8 %conv23, i8* %out_data, align 1, !tbaa !42
  br label %for.inc

for.inc:                                          ; preds = %cond.end
  %25 = load i32, i32* %i, align 4, !tbaa !7
  %inc = add nsw i32 %25, 1
  store i32 %inc, i32* %i, align 4, !tbaa !7
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %26 = load i8, i8* %out_data, align 1, !tbaa !42
  %27 = load i8*, i8** %p_out, align 8, !tbaa !1
  %incdec.ptr24 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %incdec.ptr24, i8** %p_out, align 8, !tbaa !1
  store i8 %26, i8* %27, align 1, !tbaa !42
  %28 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %28) #2
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %29 = load i8*, i8** %p_out, align 8, !tbaa !1
  %30 = load i8*, i8** %out.addr, align 8, !tbaa !1
  %sub.ptr.lhs.cast = ptrtoint i8* %29 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %30 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv25 = trunc i64 %sub.ptr.sub to i32
  call void @llvm.lifetime.end(i64 1, i8* %mask2) #2
  call void @llvm.lifetime.end(i64 1, i8* %mask1) #2
  call void @llvm.lifetime.end(i64 1, i8* %out_data) #2
  call void @llvm.lifetime.end(i64 1, i8* %in_data) #2
  %31 = bitcast i8** %p_end to i8*
  call void @llvm.lifetime.end(i64 8, i8* %31) #2
  %32 = bitcast i8** %p_out to i8*
  call void @llvm.lifetime.end(i64 8, i8* %32) #2
  %33 = bitcast i8** %p_in to i8*
  call void @llvm.lifetime.end(i64 8, i8* %33) #2
  ret i32 %conv25
}

; Function Attrs: nounwind uwtable
define internal i32 @runlength(i8* %out, i8* %in, i32 %length) #1 {
entry:
  %out.addr = alloca i8*, align 8
  %in.addr = alloca i8*, align 8
  %length.addr = alloca i32, align 4
  %p_in = alloca i8*, align 8
  %p_out = alloca i8*, align 8
  %p_end = alloca i8*, align 8
  %count = alloca i32, align 4
  %climit = alloca i32, align 4
  %contflag = alloca i32, align 4
  store i8* %out, i8** %out.addr, align 8, !tbaa !1
  store i8* %in, i8** %in.addr, align 8, !tbaa !1
  store i32 %length, i32* %length.addr, align 4, !tbaa !7
  %0 = bitcast i8** %p_in to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load i8*, i8** %in.addr, align 8, !tbaa !1
  store i8* %1, i8** %p_in, align 8, !tbaa !1
  %2 = bitcast i8** %p_out to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #2
  %3 = load i8*, i8** %out.addr, align 8, !tbaa !1
  store i8* %3, i8** %p_out, align 8, !tbaa !1
  %4 = bitcast i8** %p_end to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #2
  %5 = bitcast i32* %count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  %6 = bitcast i32* %climit to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = bitcast i32* %contflag to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #2
  %8 = load i8*, i8** %p_in, align 8, !tbaa !1
  %9 = load i32, i32* %length.addr, align 4, !tbaa !7
  %idx.ext = sext i32 %9 to i64
  %add.ptr = getelementptr inbounds i8, i8* %8, i64 %idx.ext
  store i8* %add.ptr, i8** %p_end, align 8, !tbaa !1
  br label %while.cond

while.cond:                                       ; preds = %if.end.65, %entry
  %10 = load i8*, i8** %p_in, align 8, !tbaa !1
  %11 = load i8*, i8** %p_end, align 8, !tbaa !1
  %cmp = icmp ult i8* %10, %11
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  store i32 0, i32* %count, align 4, !tbaa !7
  %12 = load i8*, i8** %p_end, align 8, !tbaa !1
  %13 = load i8*, i8** %p_in, align 8, !tbaa !1
  %sub.ptr.lhs.cast = ptrtoint i8* %12 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %13 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp1 = icmp slt i64 128, %sub.ptr.sub
  br i1 %cmp1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.body
  br label %cond.end

cond.false:                                       ; preds = %while.body
  %14 = load i8*, i8** %p_end, align 8, !tbaa !1
  %15 = load i8*, i8** %p_in, align 8, !tbaa !1
  %sub.ptr.lhs.cast2 = ptrtoint i8* %14 to i64
  %sub.ptr.rhs.cast3 = ptrtoint i8* %15 to i64
  %sub.ptr.sub4 = sub i64 %sub.ptr.lhs.cast2, %sub.ptr.rhs.cast3
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ 128, %cond.true ], [ %sub.ptr.sub4, %cond.false ]
  %conv = trunc i64 %cond to i32
  store i32 %conv, i32* %climit, align 4, !tbaa !7
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end
  %16 = load i32, i32* %count, align 4, !tbaa !7
  %17 = load i32, i32* %climit, align 4, !tbaa !7
  %cmp5 = icmp slt i32 %16, %17
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %18 = load i8*, i8** %p_in, align 8, !tbaa !1
  %19 = load i8, i8* %18, align 1, !tbaa !42
  %conv7 = zext i8 %19 to i32
  %20 = load i8*, i8** %p_in, align 8, !tbaa !1
  %add.ptr8 = getelementptr inbounds i8, i8* %20, i64 1
  %21 = load i8, i8* %add.ptr8, align 1, !tbaa !42
  %conv9 = zext i8 %21 to i32
  %cmp10 = icmp eq i32 %conv7, %conv9
  br i1 %cmp10, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.body
  %22 = load i8*, i8** %p_in, align 8, !tbaa !1
  %23 = load i8, i8* %22, align 1, !tbaa !42
  %conv12 = zext i8 %23 to i32
  %24 = load i8*, i8** %p_in, align 8, !tbaa !1
  %add.ptr13 = getelementptr inbounds i8, i8* %24, i64 2
  %25 = load i8, i8* %add.ptr13, align 1, !tbaa !42
  %conv14 = zext i8 %25 to i32
  %cmp15 = icmp eq i32 %conv12, %conv14
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.body
  %26 = phi i1 [ false, %for.body ], [ %cmp15, %land.rhs ]
  %land.ext = zext i1 %26 to i32
  store i32 %land.ext, i32* %contflag, align 4, !tbaa !7
  %27 = load i32, i32* %contflag, align 4, !tbaa !7
  %tobool = icmp ne i32 %27, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %land.end
  br label %for.end

if.end:                                           ; preds = %land.end
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %28 = load i32, i32* %count, align 4, !tbaa !7
  %inc = add nsw i32 %28, 1
  store i32 %inc, i32* %count, align 4, !tbaa !7
  %29 = load i8*, i8** %p_in, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %incdec.ptr, i8** %p_in, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %if.then, %for.cond
  %30 = load i32, i32* %count, align 4, !tbaa !7
  %cmp17 = icmp sgt i32 %30, 0
  br i1 %cmp17, label %if.then.19, label %if.end.27

if.then.19:                                       ; preds = %for.end
  %31 = load i32, i32* %count, align 4, !tbaa !7
  %sub = sub nsw i32 %31, 1
  %conv20 = trunc i32 %sub to i8
  %32 = load i8*, i8** %p_out, align 8, !tbaa !1
  %incdec.ptr21 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %incdec.ptr21, i8** %p_out, align 8, !tbaa !1
  store i8 %conv20, i8* %32, align 1, !tbaa !42
  %33 = load i8*, i8** %p_out, align 8, !tbaa !1
  %34 = load i8*, i8** %p_in, align 8, !tbaa !1
  %35 = load i32, i32* %count, align 4, !tbaa !7
  %idx.ext22 = sext i32 %35 to i64
  %idx.neg = sub i64 0, %idx.ext22
  %add.ptr23 = getelementptr inbounds i8, i8* %34, i64 %idx.neg
  %36 = load i32, i32* %count, align 4, !tbaa !7
  %conv24 = sext i32 %36 to i64
  %call = call i8* @memcpy(i8* %33, i8* %add.ptr23, i64 %conv24) #7
  %37 = load i32, i32* %count, align 4, !tbaa !7
  %38 = load i8*, i8** %p_out, align 8, !tbaa !1
  %idx.ext25 = sext i32 %37 to i64
  %add.ptr26 = getelementptr inbounds i8, i8* %38, i64 %idx.ext25
  store i8* %add.ptr26, i8** %p_out, align 8, !tbaa !1
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.19, %for.end
  %39 = load i32, i32* %contflag, align 4, !tbaa !7
  %tobool28 = icmp ne i32 %39, 0
  br i1 %tobool28, label %if.then.29, label %if.end.65

if.then.29:                                       ; preds = %if.end.27
  %40 = load i8*, i8** %p_end, align 8, !tbaa !1
  %41 = load i8*, i8** %p_in, align 8, !tbaa !1
  %sub.ptr.lhs.cast30 = ptrtoint i8* %40 to i64
  %sub.ptr.rhs.cast31 = ptrtoint i8* %41 to i64
  %sub.ptr.sub32 = sub i64 %sub.ptr.lhs.cast30, %sub.ptr.rhs.cast31
  %cmp33 = icmp slt i64 129, %sub.ptr.sub32
  br i1 %cmp33, label %cond.true.35, label %cond.false.36

cond.true.35:                                     ; preds = %if.then.29
  br label %cond.end.40

cond.false.36:                                    ; preds = %if.then.29
  %42 = load i8*, i8** %p_end, align 8, !tbaa !1
  %43 = load i8*, i8** %p_in, align 8, !tbaa !1
  %sub.ptr.lhs.cast37 = ptrtoint i8* %42 to i64
  %sub.ptr.rhs.cast38 = ptrtoint i8* %43 to i64
  %sub.ptr.sub39 = sub i64 %sub.ptr.lhs.cast37, %sub.ptr.rhs.cast38
  br label %cond.end.40

cond.end.40:                                      ; preds = %cond.false.36, %cond.true.35
  %cond41 = phi i64 [ 129, %cond.true.35 ], [ %sub.ptr.sub39, %cond.false.36 ]
  %conv42 = trunc i64 %cond41 to i32
  store i32 %conv42, i32* %climit, align 4, !tbaa !7
  %44 = load i8*, i8** %p_in, align 8, !tbaa !1
  %add.ptr43 = getelementptr inbounds i8, i8* %44, i64 3
  store i8* %add.ptr43, i8** %p_in, align 8, !tbaa !1
  store i32 3, i32* %count, align 4, !tbaa !7
  br label %for.cond.44

for.cond.44:                                      ; preds = %for.inc.56, %cond.end.40
  %45 = load i32, i32* %count, align 4, !tbaa !7
  %46 = load i32, i32* %climit, align 4, !tbaa !7
  %cmp45 = icmp slt i32 %45, %46
  br i1 %cmp45, label %land.rhs.47, label %land.end.53

land.rhs.47:                                      ; preds = %for.cond.44
  %47 = load i8*, i8** %p_in, align 8, !tbaa !1
  %add.ptr48 = getelementptr inbounds i8, i8* %47, i64 -1
  %48 = load i8, i8* %add.ptr48, align 1, !tbaa !42
  %conv49 = zext i8 %48 to i32
  %49 = load i8*, i8** %p_in, align 8, !tbaa !1
  %50 = load i8, i8* %49, align 1, !tbaa !42
  %conv50 = zext i8 %50 to i32
  %cmp51 = icmp eq i32 %conv49, %conv50
  br label %land.end.53

land.end.53:                                      ; preds = %land.rhs.47, %for.cond.44
  %51 = phi i1 [ false, %for.cond.44 ], [ %cmp51, %land.rhs.47 ]
  br i1 %51, label %for.body.55, label %for.end.59

for.body.55:                                      ; preds = %land.end.53
  br label %for.inc.56

for.inc.56:                                       ; preds = %for.body.55
  %52 = load i32, i32* %count, align 4, !tbaa !7
  %inc57 = add nsw i32 %52, 1
  store i32 %inc57, i32* %count, align 4, !tbaa !7
  %53 = load i8*, i8** %p_in, align 8, !tbaa !1
  %incdec.ptr58 = getelementptr inbounds i8, i8* %53, i32 1
  store i8* %incdec.ptr58, i8** %p_in, align 8, !tbaa !1
  br label %for.cond.44

for.end.59:                                       ; preds = %land.end.53
  %54 = load i32, i32* %count, align 4, !tbaa !7
  %sub60 = sub nsw i32 257, %54
  %conv61 = trunc i32 %sub60 to i8
  %55 = load i8*, i8** %p_out, align 8, !tbaa !1
  %incdec.ptr62 = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %incdec.ptr62, i8** %p_out, align 8, !tbaa !1
  store i8 %conv61, i8* %55, align 1, !tbaa !42
  %56 = load i8*, i8** %p_in, align 8, !tbaa !1
  %add.ptr63 = getelementptr inbounds i8, i8* %56, i64 -1
  %57 = load i8, i8* %add.ptr63, align 1, !tbaa !42
  %58 = load i8*, i8** %p_out, align 8, !tbaa !1
  %incdec.ptr64 = getelementptr inbounds i8, i8* %58, i32 1
  store i8* %incdec.ptr64, i8** %p_out, align 8, !tbaa !1
  store i8 %57, i8* %58, align 1, !tbaa !42
  br label %if.end.65

if.end.65:                                        ; preds = %for.end.59, %if.end.27
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %59 = load i8*, i8** %p_out, align 8, !tbaa !1
  %60 = load i8*, i8** %out.addr, align 8, !tbaa !1
  %sub.ptr.lhs.cast66 = ptrtoint i8* %59 to i64
  %sub.ptr.rhs.cast67 = ptrtoint i8* %60 to i64
  %sub.ptr.sub68 = sub i64 %sub.ptr.lhs.cast66, %sub.ptr.rhs.cast67
  %conv69 = trunc i64 %sub.ptr.sub68 to i32
  %61 = bitcast i32* %contflag to i8*
  call void @llvm.lifetime.end(i64 4, i8* %61) #2
  %62 = bitcast i32* %climit to i8*
  call void @llvm.lifetime.end(i64 4, i8* %62) #2
  %63 = bitcast i32* %count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %63) #2
  %64 = bitcast i8** %p_end to i8*
  call void @llvm.lifetime.end(i64 8, i8* %64) #2
  %65 = bitcast i8** %p_out to i8*
  call void @llvm.lifetime.end(i64 8, i8* %65) #2
  %66 = bitcast i8** %p_in to i8*
  call void @llvm.lifetime.end(i64 8, i8* %66) #2
  ret i32 %conv69
}

; Function Attrs: nounwind
declare i8* @memcpy(i8*, i8*, i64) #4

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
!6 = !{!"float", !3, i64 0}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !3, i64 0}
!9 = !{!10, !8, i64 18496}
!10 = !{!"gx_device_alps_s", !8, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !8, i64 40, !2, i64 48, !11, i64 56, !8, i64 80, !8, i64 84, !8, i64 88, !13, i64 96, !16, i64 816, !8, i64 832, !8, i64 836, !8, i64 840, !8, i64 844, !8, i64 848, !8, i64 852, !3, i64 856, !3, i64 864, !8, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !12, i64 928, !12, i64 936, !8, i64 944, !8, i64 948, !8, i64 952, !8, i64 956, !8, i64 960, !12, i64 968, !12, i64 976, !17, i64 984, !8, i64 1052, !8, i64 1056, !18, i64 1064, !2, i64 1104, !3, i64 1112, !20, i64 1120, !21, i64 1144, !3, i64 1728, !22, i64 12968, !3, i64 13056, !8, i64 17152, !8, i64 17156, !8, i64 17160, !8, i64 17164, !8, i64 17168, !8, i64 17172, !2, i64 17176, !12, i64 17184, !2, i64 17192, !2, i64 17200, !2, i64 17208, !2, i64 17216, !2, i64 17224, !8, i64 17232, !2, i64 17240, !8, i64 17248, !8, i64 17252, !24, i64 17256, !8, i64 17288, !2, i64 17296, !21, i64 17304, !21, i64 17888, !8, i64 18472, !8, i64 18476, !8, i64 18480, !8, i64 18484, !8, i64 18488, !8, i64 18492, !8, i64 18496, !8, i64 18500, !8, i64 18504, !8, i64 18508}
!11 = !{!"rc_header_s", !12, i64 0, !2, i64 8, !2, i64 16}
!12 = !{!"long", !3, i64 0}
!13 = !{!"gx_device_color_info_s", !8, i64 0, !8, i64 4, !3, i64 8, !14, i64 12, !3, i64 14, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !15, i64 32, !3, i64 40, !3, i64 44, !3, i64 108, !3, i64 176, !2, i64 688, !3, i64 696, !12, i64 704, !8, i64 712}
!14 = !{!"short", !3, i64 0}
!15 = !{!"gx_device_anti_alias_info_s", !8, i64 0, !8, i64 4}
!16 = !{!"gx_device_cached_colors_s", !12, i64 0, !12, i64 8}
!17 = !{!"gx_stroked_gradient_recognizer_s", !8, i64 0, !3, i64 4, !3, i64 36}
!18 = !{!"gdev_space_params_s", !12, i64 0, !12, i64 8, !19, i64 16, !8, i64 32, !3, i64 36}
!19 = !{!"gx_band_params_s", !8, i64 0, !8, i64 4, !12, i64 8}
!20 = !{!"gx_page_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16}
!21 = !{!"gx_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176, !2, i64 184, !2, i64 192, !2, i64 200, !2, i64 208, !2, i64 216, !2, i64 224, !2, i64 232, !2, i64 240, !2, i64 248, !2, i64 256, !2, i64 264, !2, i64 272, !2, i64 280, !2, i64 288, !2, i64 296, !2, i64 304, !2, i64 312, !2, i64 320, !2, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !2, i64 376, !2, i64 384, !2, i64 392, !2, i64 400, !2, i64 408, !2, i64 416, !2, i64 424, !2, i64 432, !2, i64 440, !2, i64 448, !2, i64 456, !2, i64 464, !2, i64 472, !2, i64 480, !2, i64 488, !2, i64 496, !2, i64 504, !2, i64 512, !2, i64 520, !2, i64 528, !2, i64 536, !2, i64 544, !2, i64 552, !2, i64 560, !2, i64 568, !2, i64 576}
!22 = !{!"gx_printer_device_procs_s", !2, i64 0, !2, i64 8, !23, i64 16, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80}
!23 = !{!"gx_device_buf_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24}
!24 = !{!"bg_print_s", !2, i64 0, !2, i64 8, !2, i64 16, !8, i64 24, !8, i64 28}
!25 = !{!10, !8, i64 18500}
!26 = !{!10, !8, i64 18504}
!27 = !{!10, !8, i64 18508}
!28 = !{!12, !12, i64 0}
!29 = !{!30, !14, i64 108}
!30 = !{!"gx_device_s", !8, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !8, i64 40, !2, i64 48, !11, i64 56, !8, i64 80, !8, i64 84, !8, i64 88, !13, i64 96, !16, i64 816, !8, i64 832, !8, i64 836, !8, i64 840, !8, i64 844, !8, i64 848, !8, i64 852, !3, i64 856, !3, i64 864, !8, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !12, i64 928, !12, i64 936, !8, i64 944, !8, i64 948, !8, i64 952, !8, i64 956, !8, i64 960, !12, i64 968, !12, i64 976, !17, i64 984, !8, i64 1052, !8, i64 1056, !18, i64 1064, !2, i64 1104, !3, i64 1112, !20, i64 1120, !21, i64 1144}
!31 = !{!14, !14, i64 0}
!32 = !{!30, !8, i64 100}
!33 = !{!10, !14, i64 108}
!34 = !{!10, !8, i64 18472}
!35 = !{!10, !8, i64 18476}
!36 = !{!10, !8, i64 18480}
!37 = !{!10, !8, i64 18484}
!38 = !{!10, !8, i64 18488}
!39 = !{!40, !8, i64 8}
!40 = !{!"gs_param_string_s", !2, i64 0, !8, i64 8, !8, i64 12}
!41 = !{!40, !2, i64 0}
!42 = !{!3, !3, i64 0}
!43 = !{!10, !8, i64 18492}
!44 = !{!45, !2, i64 0}
!45 = !{!"gs_param_list_s", !2, i64 0, !2, i64 8, !8, i64 16}
!46 = !{!47, !2, i64 56}
!47 = !{!"gs_param_list_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64}
!48 = !{!30, !2, i64 1264}
!49 = !{!30, !2, i64 16}
!50 = !{!30, !2, i64 1184}
!51 = !{!30, !8, i64 112}
!52 = !{!30, !8, i64 116}
!53 = !{!30, !8, i64 120}
!54 = !{!30, !8, i64 124}
!55 = !{!56, !8, i64 836}
!56 = !{!"gx_device_printer_s", !8, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !8, i64 40, !2, i64 48, !11, i64 56, !8, i64 80, !8, i64 84, !8, i64 88, !13, i64 96, !16, i64 816, !8, i64 832, !8, i64 836, !8, i64 840, !8, i64 844, !8, i64 848, !8, i64 852, !3, i64 856, !3, i64 864, !8, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !12, i64 928, !12, i64 936, !8, i64 944, !8, i64 948, !8, i64 952, !8, i64 956, !8, i64 960, !12, i64 968, !12, i64 976, !17, i64 984, !8, i64 1052, !8, i64 1056, !18, i64 1064, !2, i64 1104, !3, i64 1112, !20, i64 1120, !21, i64 1144, !3, i64 1728, !22, i64 12968, !3, i64 13056, !8, i64 17152, !8, i64 17156, !8, i64 17160, !8, i64 17164, !8, i64 17168, !8, i64 17172, !2, i64 17176, !12, i64 17184, !2, i64 17192, !2, i64 17200, !2, i64 17208, !2, i64 17216, !2, i64 17224, !8, i64 17232, !2, i64 17240, !8, i64 17248, !8, i64 17252, !24, i64 17256, !8, i64 17288, !2, i64 17296, !21, i64 17304, !21, i64 17888}
!57 = !{!56, !8, i64 100}
!58 = !{!56, !2, i64 24}
!59 = !{!60, !2, i64 200}
!60 = !{!"gs_memory_s", !2, i64 0, !61, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!61 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!62 = !{!60, !2, i64 88}
!63 = !{!56, !14, i64 108}
!64 = !{!60, !2, i64 24}
