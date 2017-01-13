; ModuleID = './gdevfmpr.bc'
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

@prn_std_procs = external constant %struct.gx_device_procs_s, align 8
@.str = private unnamed_addr constant [5 x i8] c"fmpr\00", align 1
@st_device_printer = external constant %struct.gs_memory_struct_type_s, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"DeviceGray\00", align 1
@gs_fmpr_device = global { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [11240 x i8], { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* }, [4096 x i8], i32, i32, i32, i32, i32, i32, %struct._IO_FILE*, i64, i8*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s*, i32)*, %struct.gx_page_queue_s*, i32, %struct.gx_device_printer_s*, i32, i32, %struct.bg_print_s, i32, %struct.gx_saved_pages_list_s*, %struct.gx_device_procs_s, %struct.gx_device_procs_s } { i32 18472, %struct.gx_device_procs_s* @prn_std_procs, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), %struct.gs_memory_s* null, %struct.gs_memory_struct_type_s* @st_device_printer, i32 0, void (%struct.gx_device_s*)* null, %struct.rc_header_s zeroinitializer, i32 0, i32 0, i32 0, %struct.gx_device_color_info_s { i32 1, i32 1, i32 1, i16 1, i8 0, i32 1, i32 0, i32 2, i32 1, %struct.gx_device_anti_alias_info_s { i32 1, i32 1 }, i32 -1, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [64 x i64] zeroinitializer, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 -1, i64 0, i32 0 }, %struct.gx_device_cached_colors_s { i64 -1, i64 -1 }, i32 1530, i32 1980, i32 0, i32 0, i32 0, i32 0, [2 x float] [float 6.120000e+02, float 7.920000e+02], [4 x float] zeroinitializer, i32 0, [2 x float] [float 1.800000e+02, float 1.800000e+02], [2 x float] [float 1.800000e+02, float 1.800000e+02], [2 x float] zeroinitializer, [4 x float] zeroinitializer, i64 0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, %struct.gx_stroked_gradient_recognizer_s zeroinitializer, i32 0, i32 0, %struct.gdev_space_params_s { i64 10000000, i64 4000000, %struct.gx_band_params_s zeroinitializer, i32 0, i32 0 }, %struct.cmm_dev_profile_s* null, i32 0, %struct.gx_page_device_procs_s { i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_install, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_begin_page, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* @gx_default_end_page }, %struct.gx_device_procs_s zeroinitializer, [11240 x i8] zeroinitializer, { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* } { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)* @fmpr_print_page, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_print_page_copies, %struct.gx_device_buf_procs_s { i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, %struct.gx_render_plane_s*, %struct.gs_memory_s*, %struct.gx_colors_usage_s*)* @gx_default_create_buf_device, i32 (%struct.gx_device_buf_space_s*, %struct.gx_device_s*, %struct.gx_render_plane_s*, i32, i32)* @gx_default_size_buf_device, i32 (%struct.gx_device_s*, i8*, i32, i8**, i32, i32, i32)* @gx_default_setup_buf_device, void (%struct.gx_device_s*)* @gx_default_destroy_buf_device }, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)* @gx_default_get_space_params, i32 (%struct.gdev_prn_start_render_params_s*)* @gx_default_start_render_thread, i32 (%struct.gx_device_printer_s*)* @gx_default_open_render_device, i32 (%struct.gx_device_printer_s*)* @gx_default_close_render_device, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_buffer_page }, [4096 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 -1, i32 0, %struct._IO_FILE* null, i64 0, i8* null, %struct.gs_memory_s* null, %struct.gs_memory_s* null, i32 (%struct.gx_device_s*, i32)* null, %struct.gx_page_queue_s* null, i32 0, %struct.gx_device_printer_s* null, i32 0, i32 0, %struct.bg_print_s zeroinitializer, i32 0, %struct.gx_saved_pages_list_s* null, %struct.gx_device_procs_s zeroinitializer, %struct.gx_device_procs_s zeroinitializer }, align 8
@.str.2 = private unnamed_addr constant [20 x i8] c"fmpr_print_page(in)\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"fmpr_print_page(out)\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"\1Bc\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"\1BQ1 `\1B[24;18 G\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"\1B[%da\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"\1BQ%d W\00", align 1

declare i32 @gx_default_install(%struct.gx_device_s*, %struct.gs_state_s*) #0

declare i32 @gx_default_begin_page(%struct.gx_device_s*, %struct.gs_state_s*) #0

declare i32 @gx_default_end_page(%struct.gx_device_s*, i32, %struct.gs_state_s*) #0

; Function Attrs: nounwind uwtable
define internal i32 @fmpr_print_page(%struct.gx_device_printer_s* %pdev, %struct._IO_FILE* %prn_stream) #1 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_printer_s*, align 8
  %prn_stream.addr = alloca %struct._IO_FILE*, align 8
  %line_size = alloca i32, align 4
  %height = alloca i32, align 4
  %bits_per_column = alloca i32, align 4
  %bytes_per_column = alloca i32, align 4
  %chunk_size = alloca i32, align 4
  %in = alloca i8*, align 8
  %out = alloca i8*, align 8
  %lnum = alloca i32, align 4
  %prn_buf = alloca [16 x i8], align 16
  %cleanup.dest.slot = alloca i32
  %inp = alloca i8*, align 8
  %outp = alloca i8*, align 8
  %out_beg = alloca i8*, align 8
  %out_end = alloca i8*, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %num_lines = alloca i32, align 4
  %size = alloca i32, align 4
  %mod = alloca i32, align 4
  store %struct.gx_device_printer_s* %pdev, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  store %struct._IO_FILE* %prn_stream, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %0 = bitcast i32* %line_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_printer_s* %1 to %struct.gx_device_s*
  %call = call i32 @gx_device_raster(%struct.gx_device_s* %2, i32 0) #5
  store i32 %call, i32* %line_size, align 4, !tbaa !5
  %3 = bitcast i32* %height to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %height1 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %4, i32 0, i32 14
  %5 = load i32, i32* %height1, align 4, !tbaa !7
  store i32 %5, i32* %height, align 4, !tbaa !5
  %6 = bitcast i32* %bits_per_column to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  store i32 24, i32* %bits_per_column, align 4, !tbaa !5
  %7 = bitcast i32* %bytes_per_column to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #2
  %8 = load i32, i32* %bits_per_column, align 4, !tbaa !5
  %div = sdiv i32 %8, 8
  store i32 %div, i32* %bytes_per_column, align 4, !tbaa !5
  %9 = bitcast i32* %chunk_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #2
  %10 = load i32, i32* %bits_per_column, align 4, !tbaa !5
  %11 = load i32, i32* %line_size, align 4, !tbaa !5
  %mul = mul nsw i32 %10, %11
  store i32 %mul, i32* %chunk_size, align 4, !tbaa !5
  %12 = bitcast i8** %in to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #2
  %13 = bitcast i8** %out to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #2
  %14 = bitcast i32* %lnum to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #2
  %15 = bitcast [16 x i8]* %prn_buf to i8*
  call void @llvm.lifetime.start(i64 16, i8* %15) #2
  %16 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %16, i32 0, i32 3
  %17 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !23
  %non_gc_memory = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %17, i32 0, i32 3
  %18 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory, align 8, !tbaa !24
  %non_gc_memory2 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %18, i32 0, i32 3
  %19 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory2, align 8, !tbaa !24
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %19, i32 0, i32 1
  %alloc_byte_array = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 10
  %20 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array, align 8, !tbaa !27
  %21 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory3 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %21, i32 0, i32 3
  %22 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory3, align 8, !tbaa !23
  %non_gc_memory4 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %22, i32 0, i32 3
  %23 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory4, align 8, !tbaa !24
  %non_gc_memory5 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %23, i32 0, i32 3
  %24 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory5, align 8, !tbaa !24
  %25 = load i32, i32* %bits_per_column, align 4, !tbaa !5
  %26 = load i32, i32* %line_size, align 4, !tbaa !5
  %call6 = call i8* %20(%struct.gs_memory_s* %24, i32 %25, i32 %26, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0)) #5
  store i8* %call6, i8** %in, align 8, !tbaa !1
  %27 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory7 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %27, i32 0, i32 3
  %28 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory7, align 8, !tbaa !23
  %non_gc_memory8 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %28, i32 0, i32 3
  %29 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory8, align 8, !tbaa !24
  %non_gc_memory9 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %29, i32 0, i32 3
  %30 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory9, align 8, !tbaa !24
  %procs10 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %30, i32 0, i32 1
  %alloc_byte_array11 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs10, i32 0, i32 10
  %31 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array11, align 8, !tbaa !27
  %32 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory12 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %32, i32 0, i32 3
  %33 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory12, align 8, !tbaa !23
  %non_gc_memory13 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %33, i32 0, i32 3
  %34 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory13, align 8, !tbaa !24
  %non_gc_memory14 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %34, i32 0, i32 3
  %35 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory14, align 8, !tbaa !24
  %36 = load i32, i32* %bits_per_column, align 4, !tbaa !5
  %37 = load i32, i32* %line_size, align 4, !tbaa !5
  %call15 = call i8* %31(%struct.gs_memory_s* %35, i32 %36, i32 %37, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i32 0, i32 0)) #5
  store i8* %call15, i8** %out, align 8, !tbaa !1
  %38 = load i8*, i8** %in, align 8, !tbaa !1
  %cmp = icmp eq i8* %38, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %39 = load i8*, i8** %out, align 8, !tbaa !1
  %cmp16 = icmp eq i8* %39, null
  br i1 %cmp16, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.146

if.end:                                           ; preds = %lor.lhs.false
  %40 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %call17 = call i32 @prn_puts(%struct.gx_device_printer_s* %40, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0)) #5
  %41 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %call18 = call i32 @prn_puts(%struct.gx_device_printer_s* %41, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0)) #5
  store i32 0, i32* %lnum, align 4, !tbaa !5
  br label %while.cond

while.cond:                                       ; preds = %cleanup.cont, %cleanup, %if.end
  %42 = load i32, i32* %lnum, align 4, !tbaa !5
  %43 = load i32, i32* %height, align 4, !tbaa !5
  %cmp19 = icmp slt i32 %42, %43
  br i1 %cmp19, label %while.body, label %while.end.128

while.body:                                       ; preds = %while.cond
  %44 = bitcast i8** %inp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %44) #2
  %45 = bitcast i8** %outp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %45) #2
  %46 = bitcast i8** %out_beg to i8*
  call void @llvm.lifetime.start(i64 8, i8* %46) #2
  %47 = bitcast i8** %out_end to i8*
  call void @llvm.lifetime.start(i64 8, i8* %47) #2
  %48 = bitcast i32* %x to i8*
  call void @llvm.lifetime.start(i64 4, i8* %48) #2
  %49 = bitcast i32* %y to i8*
  call void @llvm.lifetime.start(i64 4, i8* %49) #2
  %50 = bitcast i32* %num_lines to i8*
  call void @llvm.lifetime.start(i64 4, i8* %50) #2
  %51 = bitcast i32* %size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %51) #2
  %52 = bitcast i32* %mod to i8*
  call void @llvm.lifetime.start(i64 4, i8* %52) #2
  %53 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %54 = load i32, i32* %lnum, align 4, !tbaa !5
  %55 = load i8*, i8** %in, align 8, !tbaa !1
  %56 = load i32, i32* %chunk_size, align 4, !tbaa !5
  %call20 = call i32 @gdev_prn_copy_scan_lines(%struct.gx_device_printer_s* %53, i32 %54, i8* %55, i32 %56) #5
  %cmp21 = icmp slt i32 %call20, 0
  br i1 %cmp21, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %while.body
  store i32 3, i32* %cleanup.dest.slot
  br label %cleanup

if.end.23:                                        ; preds = %while.body
  %57 = load i32, i32* %height, align 4, !tbaa !5
  %58 = load i32, i32* %lnum, align 4, !tbaa !5
  %sub = sub nsw i32 %57, %58
  store i32 %sub, i32* %num_lines, align 4, !tbaa !5
  %59 = load i32, i32* %bits_per_column, align 4, !tbaa !5
  %cmp24 = icmp sgt i32 %sub, %59
  br i1 %cmp24, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %if.end.23
  %60 = load i32, i32* %bits_per_column, align 4, !tbaa !5
  store i32 %60, i32* %num_lines, align 4, !tbaa !5
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.25, %if.end.23
  %61 = load i32, i32* %line_size, align 4, !tbaa !5
  %62 = load i32, i32* %num_lines, align 4, !tbaa !5
  %mul27 = mul nsw i32 %61, %62
  store i32 %mul27, i32* %size, align 4, !tbaa !5
  %63 = load i8*, i8** %in, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %63, i64 0
  %64 = load i8, i8* %arrayidx, align 1, !tbaa !28
  %conv = zext i8 %64 to i32
  %cmp28 = icmp eq i32 %conv, 0
  br i1 %cmp28, label %land.lhs.true, label %if.end.35

land.lhs.true:                                    ; preds = %if.end.26
  %65 = load i8*, i8** %in, align 8, !tbaa !1
  %66 = load i8*, i8** %in, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %66, i64 1
  %67 = load i32, i32* %size, align 4, !tbaa !5
  %sub30 = sub nsw i32 %67, 1
  %conv31 = sext i32 %sub30 to i64
  %call32 = call i32 @memcmp(i8* %65, i8* %add.ptr, i64 %conv31) #6
  %tobool = icmp ne i32 %call32, 0
  br i1 %tobool, label %if.end.35, label %if.then.33

if.then.33:                                       ; preds = %land.lhs.true
  %68 = load i32, i32* %bits_per_column, align 4, !tbaa !5
  %69 = load i32, i32* %lnum, align 4, !tbaa !5
  %add = add nsw i32 %69, %68
  store i32 %add, i32* %lnum, align 4, !tbaa !5
  %70 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %call34 = call i32 @prn_putc(%struct.gx_device_printer_s* %70, i32 10) #5
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup

if.end.35:                                        ; preds = %land.lhs.true, %if.end.26
  %71 = load i32, i32* %num_lines, align 4, !tbaa !5
  %72 = load i32, i32* %bits_per_column, align 4, !tbaa !5
  %cmp36 = icmp slt i32 %71, %72
  br i1 %cmp36, label %if.then.38, label %if.end.45

if.then.38:                                       ; preds = %if.end.35
  %73 = load i32, i32* %line_size, align 4, !tbaa !5
  %74 = load i32, i32* %bits_per_column, align 4, !tbaa !5
  %75 = load i32, i32* %num_lines, align 4, !tbaa !5
  %sub39 = sub nsw i32 %74, %75
  %mul40 = mul nsw i32 %73, %sub39
  store i32 %mul40, i32* %size, align 4, !tbaa !5
  %76 = load i8*, i8** %in, align 8, !tbaa !1
  %77 = load i32, i32* %line_size, align 4, !tbaa !5
  %78 = load i32, i32* %num_lines, align 4, !tbaa !5
  %mul41 = mul nsw i32 %77, %78
  %idx.ext = sext i32 %mul41 to i64
  %add.ptr42 = getelementptr inbounds i8, i8* %76, i64 %idx.ext
  %79 = load i32, i32* %size, align 4, !tbaa !5
  %conv43 = sext i32 %79 to i64
  %call44 = call i8* @memset(i8* %add.ptr42, i32 0, i64 %conv43) #7
  br label %if.end.45

if.end.45:                                        ; preds = %if.then.38, %if.end.35
  %80 = load i32, i32* %bits_per_column, align 4, !tbaa !5
  %81 = load i32, i32* %lnum, align 4, !tbaa !5
  %add46 = add nsw i32 %81, %80
  store i32 %add46, i32* %lnum, align 4, !tbaa !5
  store i32 0, i32* %y, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc.62, %if.end.45
  %82 = load i32, i32* %y, align 4, !tbaa !5
  %83 = load i32, i32* %bytes_per_column, align 4, !tbaa !5
  %cmp47 = icmp slt i32 %82, %83
  br i1 %cmp47, label %for.body, label %for.end.64

for.body:                                         ; preds = %for.cond
  %84 = load i8*, i8** %in, align 8, !tbaa !1
  %85 = load i32, i32* %line_size, align 4, !tbaa !5
  %mul49 = mul nsw i32 %85, 8
  %86 = load i32, i32* %y, align 4, !tbaa !5
  %mul50 = mul nsw i32 %mul49, %86
  %idx.ext51 = sext i32 %mul50 to i64
  %add.ptr52 = getelementptr inbounds i8, i8* %84, i64 %idx.ext51
  store i8* %add.ptr52, i8** %inp, align 8, !tbaa !1
  %87 = load i8*, i8** %out, align 8, !tbaa !1
  %88 = load i32, i32* %y, align 4, !tbaa !5
  %idx.ext53 = sext i32 %88 to i64
  %add.ptr54 = getelementptr inbounds i8, i8* %87, i64 %idx.ext53
  store i8* %add.ptr54, i8** %outp, align 8, !tbaa !1
  store i32 0, i32* %x, align 4, !tbaa !5
  br label %for.cond.55

for.cond.55:                                      ; preds = %for.inc, %for.body
  %89 = load i32, i32* %x, align 4, !tbaa !5
  %90 = load i32, i32* %line_size, align 4, !tbaa !5
  %cmp56 = icmp slt i32 %89, %90
  br i1 %cmp56, label %for.body.58, label %for.end

for.body.58:                                      ; preds = %for.cond.55
  %91 = load i8*, i8** %inp, align 8, !tbaa !1
  %92 = load i32, i32* %line_size, align 4, !tbaa !5
  %93 = load i8*, i8** %outp, align 8, !tbaa !1
  %94 = load i32, i32* %bytes_per_column, align 4, !tbaa !5
  %call59 = call i32 @fmpr_transpose_8x8(i8* %91, i32 %92, i8* %93, i32 %94) #5
  %95 = load i8*, i8** %inp, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %95, i32 1
  store i8* %incdec.ptr, i8** %inp, align 8, !tbaa !1
  %96 = load i32, i32* %bits_per_column, align 4, !tbaa !5
  %97 = load i8*, i8** %outp, align 8, !tbaa !1
  %idx.ext60 = sext i32 %96 to i64
  %add.ptr61 = getelementptr inbounds i8, i8* %97, i64 %idx.ext60
  store i8* %add.ptr61, i8** %outp, align 8, !tbaa !1
  br label %for.inc

for.inc:                                          ; preds = %for.body.58
  %98 = load i32, i32* %x, align 4, !tbaa !5
  %inc = add nsw i32 %98, 1
  store i32 %inc, i32* %x, align 4, !tbaa !5
  br label %for.cond.55

for.end:                                          ; preds = %for.cond.55
  br label %for.inc.62

for.inc.62:                                       ; preds = %for.end
  %99 = load i32, i32* %y, align 4, !tbaa !5
  %inc63 = add nsw i32 %99, 1
  store i32 %inc63, i32* %y, align 4, !tbaa !5
  br label %for.cond

for.end.64:                                       ; preds = %for.cond
  %100 = load i8*, i8** %out, align 8, !tbaa !1
  %101 = load i32, i32* %chunk_size, align 4, !tbaa !5
  %idx.ext65 = sext i32 %101 to i64
  %add.ptr66 = getelementptr inbounds i8, i8* %100, i64 %idx.ext65
  %add.ptr67 = getelementptr inbounds i8, i8* %add.ptr66, i64 -1
  store i8* %add.ptr67, i8** %out_end, align 8, !tbaa !1
  br label %while.cond.68

while.cond.68:                                    ; preds = %if.end.74, %for.end.64
  %102 = load i8*, i8** %out_end, align 8, !tbaa !1
  %103 = load i8*, i8** %out, align 8, !tbaa !1
  %cmp69 = icmp uge i8* %102, %103
  br i1 %cmp69, label %while.body.71, label %while.end

while.body.71:                                    ; preds = %while.cond.68
  %104 = load i8*, i8** %out_end, align 8, !tbaa !1
  %105 = load i8, i8* %104, align 1, !tbaa !28
  %tobool72 = icmp ne i8 %105, 0
  br i1 %tobool72, label %if.then.73, label %if.end.74

if.then.73:                                       ; preds = %while.body.71
  br label %while.end

if.end.74:                                        ; preds = %while.body.71
  %106 = load i8*, i8** %out_end, align 8, !tbaa !1
  %incdec.ptr75 = getelementptr inbounds i8, i8* %106, i32 -1
  store i8* %incdec.ptr75, i8** %out_end, align 8, !tbaa !1
  br label %while.cond.68

while.end:                                        ; preds = %if.then.73, %while.cond.68
  %107 = load i8*, i8** %out_end, align 8, !tbaa !1
  %108 = load i8*, i8** %out, align 8, !tbaa !1
  %sub.ptr.lhs.cast = ptrtoint i8* %107 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %108 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %add76 = add nsw i64 %sub.ptr.sub, 1
  %conv77 = trunc i64 %add76 to i32
  store i32 %conv77, i32* %size, align 4, !tbaa !5
  %109 = load i32, i32* %size, align 4, !tbaa !5
  %110 = load i32, i32* %bytes_per_column, align 4, !tbaa !5
  %rem = srem i32 %109, %110
  store i32 %rem, i32* %mod, align 4, !tbaa !5
  %cmp78 = icmp ne i32 %rem, 0
  br i1 %cmp78, label %if.then.80, label %if.end.84

if.then.80:                                       ; preds = %while.end
  %111 = load i32, i32* %bytes_per_column, align 4, !tbaa !5
  %112 = load i32, i32* %mod, align 4, !tbaa !5
  %sub81 = sub nsw i32 %111, %112
  %113 = load i8*, i8** %out_end, align 8, !tbaa !1
  %idx.ext82 = sext i32 %sub81 to i64
  %add.ptr83 = getelementptr inbounds i8, i8* %113, i64 %idx.ext82
  store i8* %add.ptr83, i8** %out_end, align 8, !tbaa !1
  br label %if.end.84

if.end.84:                                        ; preds = %if.then.80, %while.end
  %114 = load i8*, i8** %out, align 8, !tbaa !1
  store i8* %114, i8** %out_beg, align 8, !tbaa !1
  br label %while.cond.85

while.cond.85:                                    ; preds = %if.end.91, %if.end.84
  %115 = load i8*, i8** %out_beg, align 8, !tbaa !1
  %116 = load i8*, i8** %out_end, align 8, !tbaa !1
  %cmp86 = icmp ule i8* %115, %116
  br i1 %cmp86, label %while.body.88, label %while.end.93

while.body.88:                                    ; preds = %while.cond.85
  %117 = load i8*, i8** %out_beg, align 8, !tbaa !1
  %118 = load i8, i8* %117, align 1, !tbaa !28
  %tobool89 = icmp ne i8 %118, 0
  br i1 %tobool89, label %if.then.90, label %if.end.91

if.then.90:                                       ; preds = %while.body.88
  br label %while.end.93

if.end.91:                                        ; preds = %while.body.88
  %119 = load i8*, i8** %out_beg, align 8, !tbaa !1
  %incdec.ptr92 = getelementptr inbounds i8, i8* %119, i32 1
  store i8* %incdec.ptr92, i8** %out_beg, align 8, !tbaa !1
  br label %while.cond.85

while.end.93:                                     ; preds = %if.then.90, %while.cond.85
  %120 = load i8*, i8** %out_beg, align 8, !tbaa !1
  %121 = load i8*, i8** %out, align 8, !tbaa !1
  %sub.ptr.lhs.cast94 = ptrtoint i8* %120 to i64
  %sub.ptr.rhs.cast95 = ptrtoint i8* %121 to i64
  %sub.ptr.sub96 = sub i64 %sub.ptr.lhs.cast94, %sub.ptr.rhs.cast95
  %122 = load i32, i32* %bytes_per_column, align 4, !tbaa !5
  %conv97 = sext i32 %122 to i64
  %rem98 = srem i64 %sub.ptr.sub96, %conv97
  %123 = load i8*, i8** %out_beg, align 8, !tbaa !1
  %idx.neg = sub i64 0, %rem98
  %add.ptr99 = getelementptr inbounds i8, i8* %123, i64 %idx.neg
  store i8* %add.ptr99, i8** %out_beg, align 8, !tbaa !1
  %arraydecay = getelementptr inbounds [16 x i8], [16 x i8]* %prn_buf, i32 0, i32 0
  %124 = load i8*, i8** %out_beg, align 8, !tbaa !1
  %125 = load i8*, i8** %out, align 8, !tbaa !1
  %sub.ptr.lhs.cast100 = ptrtoint i8* %124 to i64
  %sub.ptr.rhs.cast101 = ptrtoint i8* %125 to i64
  %sub.ptr.sub102 = sub i64 %sub.ptr.lhs.cast100, %sub.ptr.rhs.cast101
  %126 = load i32, i32* %bytes_per_column, align 4, !tbaa !5
  %conv103 = sext i32 %126 to i64
  %div104 = sdiv i64 %sub.ptr.sub102, %conv103
  %call105 = call i32 (i8*, i8*, ...) @gs_sprintf(i8* %arraydecay, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i64 %div104) #5
  %127 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %arraydecay106 = getelementptr inbounds [16 x i8], [16 x i8]* %prn_buf, i32 0, i32 0
  %call107 = call i32 @prn_puts(%struct.gx_device_printer_s* %127, i8* %arraydecay106) #5
  %128 = load i8*, i8** %out_end, align 8, !tbaa !1
  %129 = load i8*, i8** %out_beg, align 8, !tbaa !1
  %sub.ptr.lhs.cast108 = ptrtoint i8* %128 to i64
  %sub.ptr.rhs.cast109 = ptrtoint i8* %129 to i64
  %sub.ptr.sub110 = sub i64 %sub.ptr.lhs.cast108, %sub.ptr.rhs.cast109
  %add111 = add nsw i64 %sub.ptr.sub110, 1
  %conv112 = trunc i64 %add111 to i32
  store i32 %conv112, i32* %size, align 4, !tbaa !5
  %arraydecay113 = getelementptr inbounds [16 x i8], [16 x i8]* %prn_buf, i32 0, i32 0
  %130 = load i32, i32* %size, align 4, !tbaa !5
  %131 = load i32, i32* %bytes_per_column, align 4, !tbaa !5
  %div114 = sdiv i32 %130, %131
  %call115 = call i32 (i8*, i8*, ...) @gs_sprintf(i8* %arraydecay113, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0), i32 %div114) #5
  %132 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %arraydecay116 = getelementptr inbounds [16 x i8], [16 x i8]* %prn_buf, i32 0, i32 0
  %call117 = call i32 @prn_puts(%struct.gx_device_printer_s* %132, i8* %arraydecay116) #5
  %133 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %134 = load i8*, i8** %out_beg, align 8, !tbaa !1
  %135 = load i32, i32* %size, align 4, !tbaa !5
  %call118 = call i32 @prn_write(%struct.gx_device_printer_s* %133, i8* %134, i32 %135) #5
  %136 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %call119 = call i32 @prn_putc(%struct.gx_device_printer_s* %136, i32 10) #5
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %while.end.93, %if.then.33, %if.then.22
  %137 = bitcast i32* %mod to i8*
  call void @llvm.lifetime.end(i64 4, i8* %137) #2
  %138 = bitcast i32* %size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %138) #2
  %139 = bitcast i32* %num_lines to i8*
  call void @llvm.lifetime.end(i64 4, i8* %139) #2
  %140 = bitcast i32* %y to i8*
  call void @llvm.lifetime.end(i64 4, i8* %140) #2
  %141 = bitcast i32* %x to i8*
  call void @llvm.lifetime.end(i64 4, i8* %141) #2
  %142 = bitcast i8** %out_end to i8*
  call void @llvm.lifetime.end(i64 8, i8* %142) #2
  %143 = bitcast i8** %out_beg to i8*
  call void @llvm.lifetime.end(i64 8, i8* %143) #2
  %144 = bitcast i8** %outp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %144) #2
  %145 = bitcast i8** %inp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %145) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 3, label %while.end.128
    i32 2, label %while.cond
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond

while.end.128:                                    ; preds = %cleanup, %while.cond
  %146 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %call129 = call i32 @prn_putc(%struct.gx_device_printer_s* %146, i32 12) #5
  %147 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %call130 = call i32 @prn_flush(%struct.gx_device_printer_s* %147) #5
  %148 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory131 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %148, i32 0, i32 3
  %149 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory131, align 8, !tbaa !23
  %non_gc_memory132 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %149, i32 0, i32 3
  %150 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory132, align 8, !tbaa !24
  %non_gc_memory133 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %150, i32 0, i32 3
  %151 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory133, align 8, !tbaa !24
  %procs134 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %151, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs134, i32 0, i32 2
  %152 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !29
  %153 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory135 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %153, i32 0, i32 3
  %154 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory135, align 8, !tbaa !23
  %non_gc_memory136 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %154, i32 0, i32 3
  %155 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory136, align 8, !tbaa !24
  %non_gc_memory137 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %155, i32 0, i32 3
  %156 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory137, align 8, !tbaa !24
  %157 = load i8*, i8** %out, align 8, !tbaa !1
  call void %152(%struct.gs_memory_s* %156, i8* %157, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i32 0, i32 0)) #5
  %158 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory138 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %158, i32 0, i32 3
  %159 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory138, align 8, !tbaa !23
  %non_gc_memory139 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %159, i32 0, i32 3
  %160 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory139, align 8, !tbaa !24
  %non_gc_memory140 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %160, i32 0, i32 3
  %161 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory140, align 8, !tbaa !24
  %procs141 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %161, i32 0, i32 1
  %free_object142 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs141, i32 0, i32 2
  %162 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object142, align 8, !tbaa !29
  %163 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory143 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %163, i32 0, i32 3
  %164 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory143, align 8, !tbaa !23
  %non_gc_memory144 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %164, i32 0, i32 3
  %165 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory144, align 8, !tbaa !24
  %non_gc_memory145 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %165, i32 0, i32 3
  %166 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory145, align 8, !tbaa !24
  %167 = load i8*, i8** %in, align 8, !tbaa !1
  call void %162(%struct.gs_memory_s* %166, i8* %167, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0)) #5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.146

cleanup.146:                                      ; preds = %while.end.128, %if.then
  %168 = bitcast [16 x i8]* %prn_buf to i8*
  call void @llvm.lifetime.end(i64 16, i8* %168) #2
  %169 = bitcast i32* %lnum to i8*
  call void @llvm.lifetime.end(i64 4, i8* %169) #2
  %170 = bitcast i8** %out to i8*
  call void @llvm.lifetime.end(i64 8, i8* %170) #2
  %171 = bitcast i8** %in to i8*
  call void @llvm.lifetime.end(i64 8, i8* %171) #2
  %172 = bitcast i32* %chunk_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %172) #2
  %173 = bitcast i32* %bytes_per_column to i8*
  call void @llvm.lifetime.end(i64 4, i8* %173) #2
  %174 = bitcast i32* %bits_per_column to i8*
  call void @llvm.lifetime.end(i64 4, i8* %174) #2
  %175 = bitcast i32* %height to i8*
  call void @llvm.lifetime.end(i64 4, i8* %175) #2
  %176 = bitcast i32* %line_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %176) #2
  %177 = load i32, i32* %retval
  ret i32 %177

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

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

declare i32 @gx_device_raster(%struct.gx_device_s*, i32) #0

; Function Attrs: nounwind uwtable
define internal i32 @prn_puts(%struct.gx_device_printer_s* %pdev, i8* %ptr) #1 {
entry:
  %pdev.addr = alloca %struct.gx_device_printer_s*, align 8
  %ptr.addr = alloca i8*, align 8
  store %struct.gx_device_printer_s* %pdev, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !1
  %0 = load i8*, i8** %ptr.addr, align 8, !tbaa !1
  %1 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %file = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %1, i32 0, i32 52
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8, !tbaa !30
  %call = call i32 @fputs(i8* %0, %struct._IO_FILE* %2) #5
  ret i32 %call
}

declare i32 @gdev_prn_copy_scan_lines(%struct.gx_device_printer_s*, i32, i8*, i32) #0

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8*, i8*, i64) #3

; Function Attrs: nounwind uwtable
define internal i32 @prn_putc(%struct.gx_device_printer_s* %pdev, i32 %c) #1 {
entry:
  %pdev.addr = alloca %struct.gx_device_printer_s*, align 8
  %c.addr = alloca i32, align 4
  store %struct.gx_device_printer_s* %pdev, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  store i32 %c, i32* %c.addr, align 4, !tbaa !5
  %0 = load i32, i32* %c.addr, align 4, !tbaa !5
  %1 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %file = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %1, i32 0, i32 52
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8, !tbaa !30
  %call = call i32 @fputc(i32 %0, %struct._IO_FILE* %2) #5
  ret i32 %call
}

; Function Attrs: nounwind
declare i8* @memset(i8*, i32, i64) #4

; Function Attrs: nounwind uwtable
define internal i32 @fmpr_transpose_8x8(i8* %src, i32 %src_step, i8* %dst, i32 %dst_step) #1 {
entry:
  %src.addr = alloca i8*, align 8
  %src_step.addr = alloca i32, align 4
  %dst.addr = alloca i8*, align 8
  %dst_step.addr = alloca i32, align 4
  %mask = alloca i8, align 1
  %s = alloca i8, align 1
  %d0 = alloca i8, align 1
  %d1 = alloca i8, align 1
  %d2 = alloca i8, align 1
  %d3 = alloca i8, align 1
  %d4 = alloca i8, align 1
  %d5 = alloca i8, align 1
  %d6 = alloca i8, align 1
  %d7 = alloca i8, align 1
  %i = alloca i32, align 4
  store i8* %src, i8** %src.addr, align 8, !tbaa !1
  store i32 %src_step, i32* %src_step.addr, align 4, !tbaa !5
  store i8* %dst, i8** %dst.addr, align 8, !tbaa !1
  store i32 %dst_step, i32* %dst_step.addr, align 4, !tbaa !5
  call void @llvm.lifetime.start(i64 1, i8* %mask) #2
  call void @llvm.lifetime.start(i64 1, i8* %s) #2
  call void @llvm.lifetime.start(i64 1, i8* %d0) #2
  call void @llvm.lifetime.start(i64 1, i8* %d1) #2
  call void @llvm.lifetime.start(i64 1, i8* %d2) #2
  call void @llvm.lifetime.start(i64 1, i8* %d3) #2
  call void @llvm.lifetime.start(i64 1, i8* %d4) #2
  call void @llvm.lifetime.start(i64 1, i8* %d5) #2
  call void @llvm.lifetime.start(i64 1, i8* %d6) #2
  call void @llvm.lifetime.start(i64 1, i8* %d7) #2
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  store i8 0, i8* %d7, align 1, !tbaa !28
  store i8 0, i8* %d6, align 1, !tbaa !28
  store i8 0, i8* %d5, align 1, !tbaa !28
  store i8 0, i8* %d4, align 1, !tbaa !28
  store i8 0, i8* %d3, align 1, !tbaa !28
  store i8 0, i8* %d2, align 1, !tbaa !28
  store i8 0, i8* %d1, align 1, !tbaa !28
  store i8 0, i8* %d0, align 1, !tbaa !28
  store i32 0, i32* %i, align 4, !tbaa !5
  store i8 -128, i8* %mask, align 1, !tbaa !28
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4, !tbaa !5
  %cmp = icmp slt i32 %1, 8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %src.addr, align 8, !tbaa !1
  %3 = load i8, i8* %2, align 1, !tbaa !28
  store i8 %3, i8* %s, align 1, !tbaa !28
  %4 = load i8, i8* %s, align 1, !tbaa !28
  %conv = zext i8 %4 to i32
  %and = and i32 %conv, 128
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %5 = load i8, i8* %mask, align 1, !tbaa !28
  %conv1 = zext i8 %5 to i32
  %6 = load i8, i8* %d0, align 1, !tbaa !28
  %conv2 = zext i8 %6 to i32
  %or = or i32 %conv2, %conv1
  %conv3 = trunc i32 %or to i8
  store i8 %conv3, i8* %d0, align 1, !tbaa !28
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %7 = load i8, i8* %s, align 1, !tbaa !28
  %conv4 = zext i8 %7 to i32
  %and5 = and i32 %conv4, 64
  %tobool6 = icmp ne i32 %and5, 0
  br i1 %tobool6, label %if.then.7, label %if.end.12

if.then.7:                                        ; preds = %if.end
  %8 = load i8, i8* %mask, align 1, !tbaa !28
  %conv8 = zext i8 %8 to i32
  %9 = load i8, i8* %d1, align 1, !tbaa !28
  %conv9 = zext i8 %9 to i32
  %or10 = or i32 %conv9, %conv8
  %conv11 = trunc i32 %or10 to i8
  store i8 %conv11, i8* %d1, align 1, !tbaa !28
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.7, %if.end
  %10 = load i8, i8* %s, align 1, !tbaa !28
  %conv13 = zext i8 %10 to i32
  %and14 = and i32 %conv13, 32
  %tobool15 = icmp ne i32 %and14, 0
  br i1 %tobool15, label %if.then.16, label %if.end.21

if.then.16:                                       ; preds = %if.end.12
  %11 = load i8, i8* %mask, align 1, !tbaa !28
  %conv17 = zext i8 %11 to i32
  %12 = load i8, i8* %d2, align 1, !tbaa !28
  %conv18 = zext i8 %12 to i32
  %or19 = or i32 %conv18, %conv17
  %conv20 = trunc i32 %or19 to i8
  store i8 %conv20, i8* %d2, align 1, !tbaa !28
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.16, %if.end.12
  %13 = load i8, i8* %s, align 1, !tbaa !28
  %conv22 = zext i8 %13 to i32
  %and23 = and i32 %conv22, 16
  %tobool24 = icmp ne i32 %and23, 0
  br i1 %tobool24, label %if.then.25, label %if.end.30

if.then.25:                                       ; preds = %if.end.21
  %14 = load i8, i8* %mask, align 1, !tbaa !28
  %conv26 = zext i8 %14 to i32
  %15 = load i8, i8* %d3, align 1, !tbaa !28
  %conv27 = zext i8 %15 to i32
  %or28 = or i32 %conv27, %conv26
  %conv29 = trunc i32 %or28 to i8
  store i8 %conv29, i8* %d3, align 1, !tbaa !28
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.25, %if.end.21
  %16 = load i8, i8* %s, align 1, !tbaa !28
  %conv31 = zext i8 %16 to i32
  %and32 = and i32 %conv31, 8
  %tobool33 = icmp ne i32 %and32, 0
  br i1 %tobool33, label %if.then.34, label %if.end.39

if.then.34:                                       ; preds = %if.end.30
  %17 = load i8, i8* %mask, align 1, !tbaa !28
  %conv35 = zext i8 %17 to i32
  %18 = load i8, i8* %d4, align 1, !tbaa !28
  %conv36 = zext i8 %18 to i32
  %or37 = or i32 %conv36, %conv35
  %conv38 = trunc i32 %or37 to i8
  store i8 %conv38, i8* %d4, align 1, !tbaa !28
  br label %if.end.39

if.end.39:                                        ; preds = %if.then.34, %if.end.30
  %19 = load i8, i8* %s, align 1, !tbaa !28
  %conv40 = zext i8 %19 to i32
  %and41 = and i32 %conv40, 4
  %tobool42 = icmp ne i32 %and41, 0
  br i1 %tobool42, label %if.then.43, label %if.end.48

if.then.43:                                       ; preds = %if.end.39
  %20 = load i8, i8* %mask, align 1, !tbaa !28
  %conv44 = zext i8 %20 to i32
  %21 = load i8, i8* %d5, align 1, !tbaa !28
  %conv45 = zext i8 %21 to i32
  %or46 = or i32 %conv45, %conv44
  %conv47 = trunc i32 %or46 to i8
  store i8 %conv47, i8* %d5, align 1, !tbaa !28
  br label %if.end.48

if.end.48:                                        ; preds = %if.then.43, %if.end.39
  %22 = load i8, i8* %s, align 1, !tbaa !28
  %conv49 = zext i8 %22 to i32
  %and50 = and i32 %conv49, 2
  %tobool51 = icmp ne i32 %and50, 0
  br i1 %tobool51, label %if.then.52, label %if.end.57

if.then.52:                                       ; preds = %if.end.48
  %23 = load i8, i8* %mask, align 1, !tbaa !28
  %conv53 = zext i8 %23 to i32
  %24 = load i8, i8* %d6, align 1, !tbaa !28
  %conv54 = zext i8 %24 to i32
  %or55 = or i32 %conv54, %conv53
  %conv56 = trunc i32 %or55 to i8
  store i8 %conv56, i8* %d6, align 1, !tbaa !28
  br label %if.end.57

if.end.57:                                        ; preds = %if.then.52, %if.end.48
  %25 = load i8, i8* %s, align 1, !tbaa !28
  %conv58 = zext i8 %25 to i32
  %and59 = and i32 %conv58, 1
  %tobool60 = icmp ne i32 %and59, 0
  br i1 %tobool60, label %if.then.61, label %if.end.66

if.then.61:                                       ; preds = %if.end.57
  %26 = load i8, i8* %mask, align 1, !tbaa !28
  %conv62 = zext i8 %26 to i32
  %27 = load i8, i8* %d7, align 1, !tbaa !28
  %conv63 = zext i8 %27 to i32
  %or64 = or i32 %conv63, %conv62
  %conv65 = trunc i32 %or64 to i8
  store i8 %conv65, i8* %d7, align 1, !tbaa !28
  br label %if.end.66

if.end.66:                                        ; preds = %if.then.61, %if.end.57
  %28 = load i32, i32* %src_step.addr, align 4, !tbaa !5
  %29 = load i8*, i8** %src.addr, align 8, !tbaa !1
  %idx.ext = sext i32 %28 to i64
  %add.ptr = getelementptr inbounds i8, i8* %29, i64 %idx.ext
  store i8* %add.ptr, i8** %src.addr, align 8, !tbaa !1
  br label %for.inc

for.inc:                                          ; preds = %if.end.66
  %30 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %30, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  %31 = load i8, i8* %mask, align 1, !tbaa !28
  %conv67 = zext i8 %31 to i32
  %shr = ashr i32 %conv67, 1
  %conv68 = trunc i32 %shr to i8
  store i8 %conv68, i8* %mask, align 1, !tbaa !28
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %32 = load i8, i8* %d0, align 1, !tbaa !28
  %33 = load i8*, i8** %dst.addr, align 8, !tbaa !1
  store i8 %32, i8* %33, align 1, !tbaa !28
  %34 = load i8, i8* %d1, align 1, !tbaa !28
  %35 = load i32, i32* %dst_step.addr, align 4, !tbaa !5
  %36 = load i8*, i8** %dst.addr, align 8, !tbaa !1
  %idx.ext69 = sext i32 %35 to i64
  %add.ptr70 = getelementptr inbounds i8, i8* %36, i64 %idx.ext69
  store i8* %add.ptr70, i8** %dst.addr, align 8, !tbaa !1
  store i8 %34, i8* %add.ptr70, align 1, !tbaa !28
  %37 = load i8, i8* %d2, align 1, !tbaa !28
  %38 = load i32, i32* %dst_step.addr, align 4, !tbaa !5
  %39 = load i8*, i8** %dst.addr, align 8, !tbaa !1
  %idx.ext71 = sext i32 %38 to i64
  %add.ptr72 = getelementptr inbounds i8, i8* %39, i64 %idx.ext71
  store i8* %add.ptr72, i8** %dst.addr, align 8, !tbaa !1
  store i8 %37, i8* %add.ptr72, align 1, !tbaa !28
  %40 = load i8, i8* %d3, align 1, !tbaa !28
  %41 = load i32, i32* %dst_step.addr, align 4, !tbaa !5
  %42 = load i8*, i8** %dst.addr, align 8, !tbaa !1
  %idx.ext73 = sext i32 %41 to i64
  %add.ptr74 = getelementptr inbounds i8, i8* %42, i64 %idx.ext73
  store i8* %add.ptr74, i8** %dst.addr, align 8, !tbaa !1
  store i8 %40, i8* %add.ptr74, align 1, !tbaa !28
  %43 = load i8, i8* %d4, align 1, !tbaa !28
  %44 = load i32, i32* %dst_step.addr, align 4, !tbaa !5
  %45 = load i8*, i8** %dst.addr, align 8, !tbaa !1
  %idx.ext75 = sext i32 %44 to i64
  %add.ptr76 = getelementptr inbounds i8, i8* %45, i64 %idx.ext75
  store i8* %add.ptr76, i8** %dst.addr, align 8, !tbaa !1
  store i8 %43, i8* %add.ptr76, align 1, !tbaa !28
  %46 = load i8, i8* %d5, align 1, !tbaa !28
  %47 = load i32, i32* %dst_step.addr, align 4, !tbaa !5
  %48 = load i8*, i8** %dst.addr, align 8, !tbaa !1
  %idx.ext77 = sext i32 %47 to i64
  %add.ptr78 = getelementptr inbounds i8, i8* %48, i64 %idx.ext77
  store i8* %add.ptr78, i8** %dst.addr, align 8, !tbaa !1
  store i8 %46, i8* %add.ptr78, align 1, !tbaa !28
  %49 = load i8, i8* %d6, align 1, !tbaa !28
  %50 = load i32, i32* %dst_step.addr, align 4, !tbaa !5
  %51 = load i8*, i8** %dst.addr, align 8, !tbaa !1
  %idx.ext79 = sext i32 %50 to i64
  %add.ptr80 = getelementptr inbounds i8, i8* %51, i64 %idx.ext79
  store i8* %add.ptr80, i8** %dst.addr, align 8, !tbaa !1
  store i8 %49, i8* %add.ptr80, align 1, !tbaa !28
  %52 = load i8, i8* %d7, align 1, !tbaa !28
  %53 = load i32, i32* %dst_step.addr, align 4, !tbaa !5
  %54 = load i8*, i8** %dst.addr, align 8, !tbaa !1
  %idx.ext81 = sext i32 %53 to i64
  %add.ptr82 = getelementptr inbounds i8, i8* %54, i64 %idx.ext81
  store i8* %add.ptr82, i8** %dst.addr, align 8, !tbaa !1
  store i8 %52, i8* %add.ptr82, align 1, !tbaa !28
  %55 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %55) #2
  call void @llvm.lifetime.end(i64 1, i8* %d7) #2
  call void @llvm.lifetime.end(i64 1, i8* %d6) #2
  call void @llvm.lifetime.end(i64 1, i8* %d5) #2
  call void @llvm.lifetime.end(i64 1, i8* %d4) #2
  call void @llvm.lifetime.end(i64 1, i8* %d3) #2
  call void @llvm.lifetime.end(i64 1, i8* %d2) #2
  call void @llvm.lifetime.end(i64 1, i8* %d1) #2
  call void @llvm.lifetime.end(i64 1, i8* %d0) #2
  call void @llvm.lifetime.end(i64 1, i8* %s) #2
  call void @llvm.lifetime.end(i64 1, i8* %mask) #2
  ret i32 0
}

declare i32 @gs_sprintf(i8*, i8*, ...) #0

; Function Attrs: nounwind uwtable
define internal i32 @prn_write(%struct.gx_device_printer_s* %pdev, i8* %ptr, i32 %size) #1 {
entry:
  %pdev.addr = alloca %struct.gx_device_printer_s*, align 8
  %ptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  store %struct.gx_device_printer_s* %pdev, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !5
  %0 = load i8*, i8** %ptr.addr, align 8, !tbaa !1
  %1 = load i32, i32* %size.addr, align 4, !tbaa !5
  %conv = sext i32 %1 to i64
  %2 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %file = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %2, i32 0, i32 52
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8, !tbaa !30
  %call = call i64 @fwrite(i8* %0, i64 1, i64 %conv, %struct._IO_FILE* %3) #5
  %conv1 = trunc i64 %call to i32
  ret i32 %conv1
}

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define internal i32 @prn_flush(%struct.gx_device_printer_s* %pdev) #1 {
entry:
  %pdev.addr = alloca %struct.gx_device_printer_s*, align 8
  store %struct.gx_device_printer_s* %pdev, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %0 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %file = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %0, i32 0, i32 52
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8, !tbaa !30
  %call = call i32 @fflush(%struct._IO_FILE* %1) #5
  ret i32 %call
}

declare i32 @fputs(i8*, %struct._IO_FILE*) #0

declare i32 @fputc(i32, %struct._IO_FILE*) #0

declare i64 @fwrite(i8*, i64, i64, %struct._IO_FILE*) #0

declare i32 @fflush(%struct._IO_FILE*) #0

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
!7 = !{!8, !6, i64 836}
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
!23 = !{!8, !2, i64 24}
!24 = !{!25, !2, i64 200}
!25 = !{!"gs_memory_s", !2, i64 0, !26, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!26 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!27 = !{!25, !2, i64 88}
!28 = !{!3, !3, i64 0}
!29 = !{!25, !2, i64 24}
!30 = !{!8, !2, i64 17176}
