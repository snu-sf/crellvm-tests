; ModuleID = './gdevsj48.bc'
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

@prn_bg_procs = external constant %struct.gx_device_procs_s, align 8
@.str = private unnamed_addr constant [5 x i8] c"sj48\00", align 1
@st_device_printer = external constant %struct.gs_memory_struct_type_s, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"DeviceGray\00", align 1
@gs_sj48_device = global { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [11240 x i8], { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* }, [4096 x i8], i32, i32, i32, i32, i32, i32, %struct._IO_FILE*, i64, i8*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s*, i32)*, %struct.gx_page_queue_s*, i32, %struct.gx_device_printer_s*, i32, i32, %struct.bg_print_s, i32, %struct.gx_saved_pages_list_s*, %struct.gx_device_procs_s, %struct.gx_device_procs_s } { i32 18472, %struct.gx_device_procs_s* @prn_bg_procs, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), %struct.gs_memory_s* null, %struct.gs_memory_struct_type_s* @st_device_printer, i32 0, void (%struct.gx_device_s*)* null, %struct.rc_header_s zeroinitializer, i32 0, i32 0, i32 0, %struct.gx_device_color_info_s { i32 1, i32 1, i32 1, i16 1, i8 0, i32 1, i32 0, i32 2, i32 1, %struct.gx_device_anti_alias_info_s { i32 1, i32 1 }, i32 -1, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [64 x i64] zeroinitializer, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 -1, i64 0, i32 0 }, %struct.gx_device_cached_colors_s { i64 -1, i64 -1 }, i32 2880, i32 3780, i32 0, i32 0, i32 0, i32 0, [2 x float] [float 5.760000e+02, float 7.560000e+02], [4 x float] zeroinitializer, i32 0, [2 x float] [float 3.600000e+02, float 3.600000e+02], [2 x float] [float 3.600000e+02, float 3.600000e+02], [2 x float] zeroinitializer, [4 x float] zeroinitializer, i64 0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, %struct.gx_stroked_gradient_recognizer_s zeroinitializer, i32 0, i32 0, %struct.gdev_space_params_s { i64 10000000, i64 4000000, %struct.gx_band_params_s zeroinitializer, i32 0, i32 0 }, %struct.cmm_dev_profile_s* null, i32 0, %struct.gx_page_device_procs_s { i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_install, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_begin_page, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* @gx_default_end_page }, %struct.gx_device_procs_s zeroinitializer, [11240 x i8] zeroinitializer, { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* } { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)* @sj48_print_page, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_print_page_copies, %struct.gx_device_buf_procs_s { i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, %struct.gx_render_plane_s*, %struct.gs_memory_s*, %struct.gx_colors_usage_s*)* @gx_default_create_buf_device, i32 (%struct.gx_device_buf_space_s*, %struct.gx_device_s*, %struct.gx_render_plane_s*, i32, i32)* @gx_default_size_buf_device, i32 (%struct.gx_device_s*, i8*, i32, i8**, i32, i32, i32)* @gx_default_setup_buf_device, void (%struct.gx_device_s*)* @gx_default_destroy_buf_device }, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)* @gx_default_get_space_params, i32 (%struct.gdev_prn_start_render_params_s*)* @gx_default_start_render_thread, i32 (%struct.gx_device_printer_s*)* @gx_default_open_render_device, i32 (%struct.gx_device_printer_s*)* @gx_default_close_render_device, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_buffer_page }, [4096 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 -1, i32 0, %struct._IO_FILE* null, i64 0, i8* null, %struct.gs_memory_s* null, %struct.gs_memory_s* null, i32 (%struct.gx_device_s*, i32)* null, %struct.gx_page_queue_s* null, i32 0, %struct.gx_device_printer_s* null, i32 0, i32 0, %struct.bg_print_s zeroinitializer, i32 0, %struct.gx_saved_pages_list_s* null, %struct.gx_device_procs_s zeroinitializer, %struct.gx_device_procs_s zeroinitializer }, align 8
@.str.2 = private unnamed_addr constant [20 x i8] c"sj48_print_page(in)\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"sj48_print_page(out)\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"\1B@\00\00\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"\1BJ\FF\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"\1BJ%c\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"\1B\5C%c%c\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"\1B*%c%c%c\00", align 1

declare i32 @gx_default_install(%struct.gx_device_s*, %struct.gs_state_s*) #0

declare i32 @gx_default_begin_page(%struct.gx_device_s*, %struct.gs_state_s*) #0

declare i32 @gx_default_end_page(%struct.gx_device_s*, i32, %struct.gs_state_s*) #0

; Function Attrs: nounwind uwtable
define internal i32 @sj48_print_page(%struct.gx_device_printer_s* %pdev, %struct._IO_FILE* %prn_stream) #1 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_printer_s*, align 8
  %prn_stream.addr = alloca %struct._IO_FILE*, align 8
  %line_size = alloca i32, align 4
  %xres = alloca i32, align 4
  %yres = alloca i32, align 4
  %mode = alloca i32, align 4
  %bytes_per_column = alloca i32, align 4
  %bits_per_column = alloca i32, align 4
  %skip_unit = alloca i32, align 4
  %in = alloca i8*, align 8
  %out = alloca i8*, align 8
  %lnum = alloca i32, align 4
  %skip = alloca i32, align 4
  %skips = alloca i32, align 4
  %code = alloca i32, align 4
  %last_row = alloca i32, align 4
  %limit = alloca i32, align 4
  %in_data = alloca i8*, align 8
  %in_end = alloca i8*, align 8
  %out_beg = alloca i8*, align 8
  %out_end = alloca i8*, align 8
  %outl = alloca i8*, align 8
  %bnum = alloca i32, align 4
  %zip = alloca i64*, align 8
  %zcnt = alloca i32, align 4
  %zipb = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  %lcnt = alloca i32, align 4
  %inp = alloca i8*, align 8
  %outp = alloca i8*, align 8
  %count = alloca i32, align 4
  %n = alloca i32, align 4
  %out_ptr = alloca i8*, align 8
  %count1 = alloca i32, align 4
  store %struct.gx_device_printer_s* %pdev, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  store %struct._IO_FILE* %prn_stream, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %0 = bitcast i32* %line_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_printer_s* %1 to %struct.gx_device_s*
  %call = call i32 @gx_device_raster(%struct.gx_device_s* %2, i32 0) #4
  store i32 %call, i32* %line_size, align 4, !tbaa !5
  %3 = bitcast i32* %xres to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %HWResolution = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %4, i32 0, i32 22
  %arrayidx = getelementptr inbounds [2 x float], [2 x float]* %HWResolution, i32 0, i64 0
  %5 = load float, float* %arrayidx, align 4, !tbaa !7
  %conv = fptosi float %5 to i32
  store i32 %conv, i32* %xres, align 4, !tbaa !5
  %6 = bitcast i32* %yres to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %HWResolution1 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %7, i32 0, i32 22
  %arrayidx2 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution1, i32 0, i64 1
  %8 = load float, float* %arrayidx2, align 4, !tbaa !7
  %conv3 = fptosi float %8 to i32
  store i32 %conv3, i32* %yres, align 4, !tbaa !5
  %9 = bitcast i32* %mode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #2
  %10 = load i32, i32* %yres, align 4, !tbaa !5
  %cmp = icmp eq i32 %10, 180
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %11 = load i32, i32* %xres, align 4, !tbaa !5
  %cmp5 = icmp eq i32 %11, 180
  %cond = select i1 %cmp5, i32 39, i32 40
  br label %cond.end

cond.false:                                       ; preds = %entry
  %12 = load i32, i32* %xres, align 4, !tbaa !5
  %cmp7 = icmp eq i32 %12, 180
  %cond9 = select i1 %cmp7, i32 71, i32 72
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond10 = phi i32 [ %cond, %cond.true ], [ %cond9, %cond.false ]
  store i32 %cond10, i32* %mode, align 4, !tbaa !5
  %13 = bitcast i32* %bytes_per_column to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #2
  %14 = load i32, i32* %yres, align 4, !tbaa !5
  %cmp11 = icmp eq i32 %14, 180
  %cond13 = select i1 %cmp11, i32 3, i32 6
  store i32 %cond13, i32* %bytes_per_column, align 4, !tbaa !5
  %15 = bitcast i32* %bits_per_column to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #2
  %16 = load i32, i32* %bytes_per_column, align 4, !tbaa !5
  %mul = mul nsw i32 %16, 8
  store i32 %mul, i32* %bits_per_column, align 4, !tbaa !5
  %17 = bitcast i32* %skip_unit to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #2
  %18 = load i32, i32* %bytes_per_column, align 4, !tbaa !5
  %19 = load i32, i32* %xres, align 4, !tbaa !5
  %cmp14 = icmp eq i32 %19, 180
  %cond16 = select i1 %cmp14, i32 1, i32 2
  %mul17 = mul nsw i32 %18, %cond16
  store i32 %mul17, i32* %skip_unit, align 4, !tbaa !5
  %20 = bitcast i8** %in to i8*
  call void @llvm.lifetime.start(i64 8, i8* %20) #2
  %21 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %21, i32 0, i32 3
  %22 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !9
  %non_gc_memory = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %22, i32 0, i32 3
  %23 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory, align 8, !tbaa !25
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %23, i32 0, i32 1
  %alloc_byte_array = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 10
  %24 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array, align 8, !tbaa !28
  %25 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory18 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %25, i32 0, i32 3
  %26 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory18, align 8, !tbaa !9
  %non_gc_memory19 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %26, i32 0, i32 3
  %27 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory19, align 8, !tbaa !25
  %28 = load i32, i32* %line_size, align 4, !tbaa !5
  %call20 = call i8* %24(%struct.gs_memory_s* %27, i32 8, i32 %28, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0)) #4
  store i8* %call20, i8** %in, align 8, !tbaa !1
  %29 = bitcast i8** %out to i8*
  call void @llvm.lifetime.start(i64 8, i8* %29) #2
  %30 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory21 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %30, i32 0, i32 3
  %31 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory21, align 8, !tbaa !9
  %non_gc_memory22 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %31, i32 0, i32 3
  %32 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory22, align 8, !tbaa !25
  %procs23 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %32, i32 0, i32 1
  %alloc_byte_array24 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs23, i32 0, i32 10
  %33 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array24, align 8, !tbaa !28
  %34 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory25 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %34, i32 0, i32 3
  %35 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory25, align 8, !tbaa !9
  %non_gc_memory26 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %35, i32 0, i32 3
  %36 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory26, align 8, !tbaa !25
  %37 = load i32, i32* %bits_per_column, align 4, !tbaa !5
  %38 = load i32, i32* %line_size, align 4, !tbaa !5
  %call27 = call i8* %33(%struct.gs_memory_s* %36, i32 %37, i32 %38, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i32 0, i32 0)) #4
  store i8* %call27, i8** %out, align 8, !tbaa !1
  %39 = bitcast i32* %lnum to i8*
  call void @llvm.lifetime.start(i64 4, i8* %39) #2
  store i32 0, i32* %lnum, align 4, !tbaa !5
  %40 = bitcast i32* %skip to i8*
  call void @llvm.lifetime.start(i64 4, i8* %40) #2
  store i32 0, i32* %skip, align 4, !tbaa !5
  %41 = bitcast i32* %skips to i8*
  call void @llvm.lifetime.start(i64 4, i8* %41) #2
  %42 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %42) #2
  store i32 0, i32* %code, align 4, !tbaa !5
  %43 = bitcast i32* %last_row to i8*
  call void @llvm.lifetime.start(i64 4, i8* %43) #2
  %44 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %45 = bitcast %struct.gx_device_printer_s* %44 to %struct.gx_device_s*
  %call28 = call i32 @gdev_prn_print_scan_lines(%struct.gx_device_s* %45) #4
  store i32 %call28, i32* %last_row, align 4, !tbaa !5
  %46 = bitcast i32* %limit to i8*
  call void @llvm.lifetime.start(i64 4, i8* %46) #2
  %47 = load i32, i32* %last_row, align 4, !tbaa !5
  %48 = load i32, i32* %bits_per_column, align 4, !tbaa !5
  %sub = sub nsw i32 %47, %48
  store i32 %sub, i32* %limit, align 4, !tbaa !5
  %49 = load i8*, i8** %in, align 8, !tbaa !1
  %cmp29 = icmp eq i8* %49, null
  br i1 %cmp29, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.end
  %50 = load i8*, i8** %out, align 8, !tbaa !1
  %cmp31 = icmp eq i8* %50, null
  br i1 %cmp31, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %cond.end
  store i32 -25, i32* %code, align 4, !tbaa !5
  %51 = load i32, i32* %code, align 4, !tbaa !5
  br label %fin

if.end:                                           ; preds = %lor.lhs.false
  %52 = load i32, i32* %xres, align 4, !tbaa !5
  %cmp33 = icmp ne i32 %52, 180
  br i1 %cmp33, label %land.lhs.true, label %lor.lhs.false.37

land.lhs.true:                                    ; preds = %if.end
  %53 = load i32, i32* %xres, align 4, !tbaa !5
  %cmp35 = icmp ne i32 %53, 360
  br i1 %cmp35, label %if.then.43, label %lor.lhs.false.37

lor.lhs.false.37:                                 ; preds = %land.lhs.true, %if.end
  %54 = load i32, i32* %yres, align 4, !tbaa !5
  %cmp38 = icmp ne i32 %54, 180
  br i1 %cmp38, label %land.lhs.true.40, label %if.end.44

land.lhs.true.40:                                 ; preds = %lor.lhs.false.37
  %55 = load i32, i32* %yres, align 4, !tbaa !5
  %cmp41 = icmp ne i32 %55, 360
  br i1 %cmp41, label %if.then.43, label %if.end.44

if.then.43:                                       ; preds = %land.lhs.true.40, %land.lhs.true
  store i32 -15, i32* %code, align 4, !tbaa !5
  %56 = load i32, i32* %code, align 4, !tbaa !5
  br label %fin

if.end.44:                                        ; preds = %land.lhs.true.40, %lor.lhs.false.37
  %57 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call45 = call i64 @fwrite(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i64 1, i64 4, %struct._IO_FILE* %57) #4
  br label %while.cond

while.cond:                                       ; preds = %cleanup.cont.273, %cleanup.266, %if.end.44
  %58 = load i32, i32* %lnum, align 4, !tbaa !5
  %59 = load i32, i32* %last_row, align 4, !tbaa !5
  %cmp46 = icmp slt i32 %58, %59
  br i1 %cmp46, label %while.body, label %while.end.274

while.body:                                       ; preds = %while.cond
  %60 = bitcast i8** %in_data to i8*
  call void @llvm.lifetime.start(i64 8, i8* %60) #2
  %61 = bitcast i8** %in_end to i8*
  call void @llvm.lifetime.start(i64 8, i8* %61) #2
  %62 = load i8*, i8** %in, align 8, !tbaa !1
  %63 = load i32, i32* %line_size, align 4, !tbaa !5
  %idx.ext = sext i32 %63 to i64
  %add.ptr = getelementptr inbounds i8, i8* %62, i64 %idx.ext
  store i8* %add.ptr, i8** %in_end, align 8, !tbaa !1
  %64 = bitcast i8** %out_beg to i8*
  call void @llvm.lifetime.start(i64 8, i8* %64) #2
  %65 = load i8*, i8** %out, align 8, !tbaa !1
  store i8* %65, i8** %out_beg, align 8, !tbaa !1
  %66 = bitcast i8** %out_end to i8*
  call void @llvm.lifetime.start(i64 8, i8* %66) #2
  %67 = load i8*, i8** %out, align 8, !tbaa !1
  %68 = load i32, i32* %bytes_per_column, align 4, !tbaa !5
  %69 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %69, i32 0, i32 13
  %70 = load i32, i32* %width, align 4, !tbaa !29
  %mul48 = mul nsw i32 %68, %70
  %idx.ext49 = sext i32 %mul48 to i64
  %add.ptr50 = getelementptr inbounds i8, i8* %67, i64 %idx.ext49
  store i8* %add.ptr50, i8** %out_end, align 8, !tbaa !1
  %71 = bitcast i8** %outl to i8*
  call void @llvm.lifetime.start(i64 8, i8* %71) #2
  %72 = load i8*, i8** %out, align 8, !tbaa !1
  store i8* %72, i8** %outl, align 8, !tbaa !1
  %73 = bitcast i32* %bnum to i8*
  call void @llvm.lifetime.start(i64 4, i8* %73) #2
  %74 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %75 = load i32, i32* %lnum, align 4, !tbaa !5
  %76 = load i8*, i8** %in, align 8, !tbaa !1
  %call51 = call i32 @gdev_prn_get_bits(%struct.gx_device_printer_s* %74, i32 %75, i8* %76, i8** %in_data) #4
  store i32 %call51, i32* %code, align 4, !tbaa !5
  %77 = load i32, i32* %code, align 4, !tbaa !5
  %cmp52 = icmp slt i32 %77, 0
  br i1 %cmp52, label %if.then.54, label %if.end.55

if.then.54:                                       ; preds = %while.body
  store i32 5, i32* %cleanup.dest.slot
  br label %cleanup.266

if.end.55:                                        ; preds = %while.body
  %78 = bitcast i64** %zip to i8*
  call void @llvm.lifetime.start(i64 8, i8* %78) #2
  %79 = load i8*, i8** %in_data, align 8, !tbaa !1
  %80 = bitcast i8* %79 to i64*
  store i64* %80, i64** %zip, align 8, !tbaa !1
  %81 = bitcast i32* %zcnt to i8*
  call void @llvm.lifetime.start(i64 4, i8* %81) #2
  %82 = load i32, i32* %line_size, align 4, !tbaa !5
  store i32 %82, i32* %zcnt, align 4, !tbaa !5
  %83 = bitcast i8** %zipb to i8*
  call void @llvm.lifetime.start(i64 8, i8* %83) #2
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.55
  %84 = load i32, i32* %zcnt, align 4, !tbaa !5
  %conv56 = sext i32 %84 to i64
  %cmp57 = icmp uge i64 %conv56, 32
  br i1 %cmp57, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %85 = load i64*, i64** %zip, align 8, !tbaa !1
  %arrayidx59 = getelementptr inbounds i64, i64* %85, i64 0
  %86 = load i64, i64* %arrayidx59, align 8, !tbaa !30
  %87 = load i64*, i64** %zip, align 8, !tbaa !1
  %arrayidx60 = getelementptr inbounds i64, i64* %87, i64 1
  %88 = load i64, i64* %arrayidx60, align 8, !tbaa !30
  %or = or i64 %86, %88
  %89 = load i64*, i64** %zip, align 8, !tbaa !1
  %arrayidx61 = getelementptr inbounds i64, i64* %89, i64 2
  %90 = load i64, i64* %arrayidx61, align 8, !tbaa !30
  %or62 = or i64 %or, %90
  %91 = load i64*, i64** %zip, align 8, !tbaa !1
  %arrayidx63 = getelementptr inbounds i64, i64* %91, i64 3
  %92 = load i64, i64* %arrayidx63, align 8, !tbaa !30
  %or64 = or i64 %or62, %92
  %tobool = icmp ne i64 %or64, 0
  br i1 %tobool, label %if.then.65, label %if.end.66

if.then.65:                                       ; preds = %for.body
  br label %notz

if.end.66:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.66
  %93 = load i64*, i64** %zip, align 8, !tbaa !1
  %add.ptr67 = getelementptr inbounds i64, i64* %93, i64 4
  store i64* %add.ptr67, i64** %zip, align 8, !tbaa !1
  %94 = load i32, i32* %zcnt, align 4, !tbaa !5
  %conv68 = sext i32 %94 to i64
  %sub69 = sub i64 %conv68, 32
  %conv70 = trunc i64 %sub69 to i32
  store i32 %conv70, i32* %zcnt, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %95 = load i64*, i64** %zip, align 8, !tbaa !1
  %96 = bitcast i64* %95 to i8*
  store i8* %96, i8** %zipb, align 8, !tbaa !1
  br label %while.cond.71

while.cond.71:                                    ; preds = %if.end.77, %for.end
  %97 = load i32, i32* %zcnt, align 4, !tbaa !5
  %dec = add nsw i32 %97, -1
  store i32 %dec, i32* %zcnt, align 4, !tbaa !5
  %cmp72 = icmp sge i32 %dec, 0
  br i1 %cmp72, label %while.body.74, label %while.end

while.body.74:                                    ; preds = %while.cond.71
  %98 = load i8*, i8** %zipb, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %98, i32 1
  store i8* %incdec.ptr, i8** %zipb, align 8, !tbaa !1
  %99 = load i8, i8* %98, align 1, !tbaa !31
  %tobool75 = icmp ne i8 %99, 0
  br i1 %tobool75, label %if.then.76, label %if.end.77

if.then.76:                                       ; preds = %while.body.74
  br label %notz

if.end.77:                                        ; preds = %while.body.74
  br label %while.cond.71

while.end:                                        ; preds = %while.cond.71
  %100 = load i32, i32* %lnum, align 4, !tbaa !5
  %inc = add nsw i32 %100, 1
  store i32 %inc, i32* %lnum, align 4, !tbaa !5
  %101 = load i32, i32* %skip, align 4, !tbaa !5
  %inc78 = add nsw i32 %101, 1
  store i32 %inc78, i32* %skip, align 4, !tbaa !5
  store i32 3, i32* %cleanup.dest.slot
  br label %cleanup

notz:                                             ; preds = %if.then.76, %if.then.65
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %notz, %while.end
  %102 = bitcast i8** %zipb to i8*
  call void @llvm.lifetime.end(i64 8, i8* %102) #2
  %103 = bitcast i32* %zcnt to i8*
  call void @llvm.lifetime.end(i64 4, i8* %103) #2
  %104 = bitcast i64** %zip to i8*
  call void @llvm.lifetime.end(i64 8, i8* %104) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.266 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  %105 = load i32, i32* %lnum, align 4, !tbaa !5
  %106 = load i32, i32* %limit, align 4, !tbaa !5
  %cmp81 = icmp sgt i32 %105, %106
  br i1 %cmp81, label %if.then.83, label %if.end.86

if.then.83:                                       ; preds = %cleanup.cont
  %107 = load i32, i32* %limit, align 4, !tbaa !5
  %108 = load i32, i32* %lnum, align 4, !tbaa !5
  %sub84 = sub nsw i32 %107, %108
  %109 = load i32, i32* %skip, align 4, !tbaa !5
  %sub85 = sub nsw i32 %109, %sub84
  store i32 %sub85, i32* %skip, align 4, !tbaa !5
  %110 = load i32, i32* %limit, align 4, !tbaa !5
  store i32 %110, i32* %lnum, align 4, !tbaa !5
  br label %if.end.86

if.end.86:                                        ; preds = %if.then.83, %cleanup.cont
  %111 = load i32, i32* %yres, align 4, !tbaa !5
  %cmp87 = icmp eq i32 %111, 180
  br i1 %cmp87, label %if.then.89, label %if.else

if.then.89:                                       ; preds = %if.end.86
  %112 = load i32, i32* %skip, align 4, !tbaa !5
  store i32 %112, i32* %skips, align 4, !tbaa !5
  br label %if.end.95

if.else:                                          ; preds = %if.end.86
  %113 = load i32, i32* %skip, align 4, !tbaa !5
  %and = and i32 %113, 1
  %tobool90 = icmp ne i32 %and, 0
  br i1 %tobool90, label %if.then.91, label %if.end.94

if.then.91:                                       ; preds = %if.else
  %114 = load i32, i32* %skip, align 4, !tbaa !5
  %dec92 = add nsw i32 %114, -1
  store i32 %dec92, i32* %skip, align 4, !tbaa !5
  %115 = load i32, i32* %lnum, align 4, !tbaa !5
  %dec93 = add nsw i32 %115, -1
  store i32 %dec93, i32* %lnum, align 4, !tbaa !5
  br label %if.end.94

if.end.94:                                        ; preds = %if.then.91, %if.else
  %116 = load i32, i32* %skip, align 4, !tbaa !5
  %div = sdiv i32 %116, 2
  store i32 %div, i32* %skips, align 4, !tbaa !5
  br label %if.end.95

if.end.95:                                        ; preds = %if.end.94, %if.then.89
  br label %while.cond.96

while.cond.96:                                    ; preds = %while.body.99, %if.end.95
  %117 = load i32, i32* %skips, align 4, !tbaa !5
  %cmp97 = icmp sgt i32 %117, 255
  br i1 %cmp97, label %while.body.99, label %while.end.102

while.body.99:                                    ; preds = %while.cond.96
  %118 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call100 = call i32 @fputs(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), %struct._IO_FILE* %118) #4
  %119 = load i32, i32* %skips, align 4, !tbaa !5
  %sub101 = sub nsw i32 %119, 255
  store i32 %sub101, i32* %skips, align 4, !tbaa !5
  br label %while.cond.96

while.end.102:                                    ; preds = %while.cond.96
  %120 = load i32, i32* %skips, align 4, !tbaa !5
  %tobool103 = icmp ne i32 %120, 0
  br i1 %tobool103, label %if.then.104, label %if.end.106

if.then.104:                                      ; preds = %while.end.102
  %121 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %122 = load i32, i32* %skips, align 4, !tbaa !5
  %call105 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %121, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i32 %122) #4
  br label %if.end.106

if.end.106:                                       ; preds = %if.then.104, %while.end.102
  %123 = load i32, i32* %lnum, align 4, !tbaa !5
  %124 = load i32, i32* %limit, align 4, !tbaa !5
  %cmp107 = icmp eq i32 %123, %124
  br i1 %cmp107, label %if.then.109, label %if.end.110

if.then.109:                                      ; preds = %if.end.106
  %125 = load i32, i32* %last_row, align 4, !tbaa !5
  store i32 %125, i32* %limit, align 4, !tbaa !5
  br label %if.end.110

if.end.110:                                       ; preds = %if.then.109, %if.end.106
  store i32 0, i32* %skip, align 4, !tbaa !5
  store i32 0, i32* %bnum, align 4, !tbaa !5
  br label %for.cond.111

for.cond.111:                                     ; preds = %for.inc.156, %if.end.110
  %126 = load i32, i32* %bnum, align 4, !tbaa !5
  %127 = load i32, i32* %bits_per_column, align 4, !tbaa !5
  %cmp112 = icmp slt i32 %126, %127
  br i1 %cmp112, label %for.body.114, label %for.end.158

for.body.114:                                     ; preds = %for.cond.111
  %128 = bitcast i32* %lcnt to i8*
  call void @llvm.lifetime.start(i64 4, i8* %128) #2
  %129 = load i32, i32* %limit, align 4, !tbaa !5
  %130 = load i32, i32* %lnum, align 4, !tbaa !5
  %sub115 = sub nsw i32 %129, %130
  %cmp116 = icmp slt i32 8, %sub115
  br i1 %cmp116, label %cond.true.118, label %cond.false.119

cond.true.118:                                    ; preds = %for.body.114
  br label %cond.end.121

cond.false.119:                                   ; preds = %for.body.114
  %131 = load i32, i32* %limit, align 4, !tbaa !5
  %132 = load i32, i32* %lnum, align 4, !tbaa !5
  %sub120 = sub nsw i32 %131, %132
  br label %cond.end.121

cond.end.121:                                     ; preds = %cond.false.119, %cond.true.118
  %cond122 = phi i32 [ 8, %cond.true.118 ], [ %sub120, %cond.false.119 ]
  store i32 %cond122, i32* %lcnt, align 4, !tbaa !5
  %133 = bitcast i8** %inp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %133) #2
  %134 = load i8*, i8** %in, align 8, !tbaa !1
  store i8* %134, i8** %inp, align 8, !tbaa !1
  %135 = bitcast i8** %outp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %135) #2
  %136 = load i8*, i8** %outl, align 8, !tbaa !1
  store i8* %136, i8** %outp, align 8, !tbaa !1
  %137 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %138 = load i32, i32* %lnum, align 4, !tbaa !5
  %139 = load i8*, i8** %in, align 8, !tbaa !1
  %140 = load i32, i32* %lcnt, align 4, !tbaa !5
  %141 = load i32, i32* %line_size, align 4, !tbaa !5
  %mul123 = mul nsw i32 %140, %141
  %call124 = call i32 @gdev_prn_copy_scan_lines(%struct.gx_device_printer_s* %137, i32 %138, i8* %139, i32 %mul123) #4
  store i32 %call124, i32* %lcnt, align 4, !tbaa !5
  %142 = load i32, i32* %lcnt, align 4, !tbaa !5
  %cmp125 = icmp slt i32 %142, 0
  br i1 %cmp125, label %if.then.127, label %if.end.128

if.then.127:                                      ; preds = %cond.end.121
  %143 = load i32, i32* %lcnt, align 4, !tbaa !5
  store i32 %143, i32* %code, align 4, !tbaa !5
  store i32 5, i32* %cleanup.dest.slot
  br label %cleanup.151

if.end.128:                                       ; preds = %cond.end.121
  %144 = load i32, i32* %lcnt, align 4, !tbaa !5
  %cmp129 = icmp slt i32 %144, 8
  br i1 %cmp129, label %if.then.131, label %if.end.139

if.then.131:                                      ; preds = %if.end.128
  %145 = load i8*, i8** %in, align 8, !tbaa !1
  %146 = load i32, i32* %lcnt, align 4, !tbaa !5
  %147 = load i32, i32* %line_size, align 4, !tbaa !5
  %mul132 = mul nsw i32 %146, %147
  %idx.ext133 = sext i32 %mul132 to i64
  %add.ptr134 = getelementptr inbounds i8, i8* %145, i64 %idx.ext133
  %148 = load i32, i32* %lcnt, align 4, !tbaa !5
  %sub135 = sub nsw i32 8, %148
  %149 = load i32, i32* %line_size, align 4, !tbaa !5
  %mul136 = mul nsw i32 %sub135, %149
  %conv137 = sext i32 %mul136 to i64
  %call138 = call i8* @memset(i8* %add.ptr134, i32 0, i64 %conv137) #5
  br label %if.end.139

if.end.139:                                       ; preds = %if.then.131, %if.end.128
  br label %for.cond.140

for.cond.140:                                     ; preds = %for.inc.144, %if.end.139
  %150 = load i8*, i8** %inp, align 8, !tbaa !1
  %151 = load i8*, i8** %in_end, align 8, !tbaa !1
  %cmp141 = icmp ult i8* %150, %151
  br i1 %cmp141, label %for.body.143, label %for.end.148

for.body.143:                                     ; preds = %for.cond.140
  %152 = load i8*, i8** %inp, align 8, !tbaa !1
  %153 = load i32, i32* %line_size, align 4, !tbaa !5
  %154 = load i8*, i8** %outp, align 8, !tbaa !1
  %155 = load i32, i32* %bytes_per_column, align 4, !tbaa !5
  call void @memflip8x8(i8* %152, i32 %153, i8* %154, i32 %155) #4
  br label %for.inc.144

for.inc.144:                                      ; preds = %for.body.143
  %156 = load i8*, i8** %inp, align 8, !tbaa !1
  %incdec.ptr145 = getelementptr inbounds i8, i8* %156, i32 1
  store i8* %incdec.ptr145, i8** %inp, align 8, !tbaa !1
  %157 = load i32, i32* %bits_per_column, align 4, !tbaa !5
  %158 = load i8*, i8** %outp, align 8, !tbaa !1
  %idx.ext146 = sext i32 %157 to i64
  %add.ptr147 = getelementptr inbounds i8, i8* %158, i64 %idx.ext146
  store i8* %add.ptr147, i8** %outp, align 8, !tbaa !1
  br label %for.cond.140

for.end.148:                                      ; preds = %for.cond.140
  %159 = load i8*, i8** %outl, align 8, !tbaa !1
  %incdec.ptr149 = getelementptr inbounds i8, i8* %159, i32 1
  store i8* %incdec.ptr149, i8** %outl, align 8, !tbaa !1
  %160 = load i32, i32* %lcnt, align 4, !tbaa !5
  %161 = load i32, i32* %lnum, align 4, !tbaa !5
  %add = add nsw i32 %161, %160
  store i32 %add, i32* %lnum, align 4, !tbaa !5
  %162 = load i32, i32* %lcnt, align 4, !tbaa !5
  %163 = load i32, i32* %skip, align 4, !tbaa !5
  %add150 = add nsw i32 %163, %162
  store i32 %add150, i32* %skip, align 4, !tbaa !5
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.151

cleanup.151:                                      ; preds = %if.then.127, %for.end.148
  %164 = bitcast i8** %outp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %164) #2
  %165 = bitcast i8** %inp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %165) #2
  %166 = bitcast i32* %lcnt to i8*
  call void @llvm.lifetime.end(i64 4, i8* %166) #2
  %cleanup.dest.154 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.154, label %cleanup.266 [
    i32 0, label %cleanup.cont.155
  ]

cleanup.cont.155:                                 ; preds = %cleanup.151
  br label %for.inc.156

for.inc.156:                                      ; preds = %cleanup.cont.155
  %167 = load i32, i32* %bnum, align 4, !tbaa !5
  %add157 = add nsw i32 %167, 8
  store i32 %add157, i32* %bnum, align 4, !tbaa !5
  br label %for.cond.111

for.end.158:                                      ; preds = %for.cond.111
  %168 = load i8*, i8** %out, align 8, !tbaa !1
  store i8* %168, i8** %outl, align 8, !tbaa !1
  br label %do.body

do.body:                                          ; preds = %do.cond, %for.end.158
  %169 = bitcast i32* %count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %169) #2
  %170 = bitcast i32* %n to i8*
  call void @llvm.lifetime.start(i64 4, i8* %170) #2
  %171 = bitcast i8** %out_ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %171) #2
  br label %while.cond.159

while.cond.159:                                   ; preds = %if.end.189, %do.body
  %172 = load i8*, i8** %outl, align 8, !tbaa !1
  %173 = load i8*, i8** %out_end, align 8, !tbaa !1
  %cmp160 = icmp ult i8* %172, %173
  br i1 %cmp160, label %while.body.162, label %while.end.190

while.body.162:                                   ; preds = %while.cond.159
  %174 = load i8*, i8** %out_end, align 8, !tbaa !1
  %175 = load i8*, i8** %outl, align 8, !tbaa !1
  %sub.ptr.lhs.cast = ptrtoint i8* %174 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %175 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %176 = load i32, i32* %skip_unit, align 4, !tbaa !5
  %conv163 = sext i32 %176 to i64
  %cmp164 = icmp slt i64 %sub.ptr.sub, %conv163
  br i1 %cmp164, label %cond.true.166, label %cond.false.170

cond.true.166:                                    ; preds = %while.body.162
  %177 = load i8*, i8** %out_end, align 8, !tbaa !1
  %178 = load i8*, i8** %outl, align 8, !tbaa !1
  %sub.ptr.lhs.cast167 = ptrtoint i8* %177 to i64
  %sub.ptr.rhs.cast168 = ptrtoint i8* %178 to i64
  %sub.ptr.sub169 = sub i64 %sub.ptr.lhs.cast167, %sub.ptr.rhs.cast168
  br label %cond.end.172

cond.false.170:                                   ; preds = %while.body.162
  %179 = load i32, i32* %skip_unit, align 4, !tbaa !5
  %conv171 = sext i32 %179 to i64
  br label %cond.end.172

cond.end.172:                                     ; preds = %cond.false.170, %cond.true.166
  %cond173 = phi i64 [ %sub.ptr.sub169, %cond.true.166 ], [ %conv171, %cond.false.170 ]
  %conv174 = trunc i64 %cond173 to i32
  store i32 %conv174, i32* %count, align 4, !tbaa !5
  store i32 %conv174, i32* %n, align 4, !tbaa !5
  %180 = load i8*, i8** %outl, align 8, !tbaa !1
  store i8* %180, i8** %out_ptr, align 8, !tbaa !1
  br label %while.cond.175

while.cond.175:                                   ; preds = %if.end.183, %cond.end.172
  %181 = load i32, i32* %count, align 4, !tbaa !5
  %dec176 = add nsw i32 %181, -1
  store i32 %dec176, i32* %count, align 4, !tbaa !5
  %cmp177 = icmp sge i32 %dec176, 0
  br i1 %cmp177, label %while.body.179, label %while.end.184

while.body.179:                                   ; preds = %while.cond.175
  %182 = load i8*, i8** %out_ptr, align 8, !tbaa !1
  %incdec.ptr180 = getelementptr inbounds i8, i8* %182, i32 1
  store i8* %incdec.ptr180, i8** %out_ptr, align 8, !tbaa !1
  %183 = load i8, i8* %182, align 1, !tbaa !31
  %tobool181 = icmp ne i8 %183, 0
  br i1 %tobool181, label %if.then.182, label %if.end.183

if.then.182:                                      ; preds = %while.body.179
  br label %while.end.184

if.end.183:                                       ; preds = %while.body.179
  br label %while.cond.175

while.end.184:                                    ; preds = %if.then.182, %while.cond.175
  %184 = load i32, i32* %count, align 4, !tbaa !5
  %cmp185 = icmp sge i32 %184, 0
  br i1 %cmp185, label %if.then.187, label %if.else.188

if.then.187:                                      ; preds = %while.end.184
  br label %while.end.190

if.else.188:                                      ; preds = %while.end.184
  %185 = load i8*, i8** %out_ptr, align 8, !tbaa !1
  store i8* %185, i8** %outl, align 8, !tbaa !1
  br label %if.end.189

if.end.189:                                       ; preds = %if.else.188
  br label %while.cond.159

while.end.190:                                    ; preds = %if.then.187, %while.cond.159
  %186 = load i8*, i8** %outl, align 8, !tbaa !1
  %187 = load i8*, i8** %out_end, align 8, !tbaa !1
  %cmp191 = icmp uge i8* %186, %187
  br i1 %cmp191, label %if.then.193, label %if.end.194

if.then.193:                                      ; preds = %while.end.190
  store i32 20, i32* %cleanup.dest.slot
  br label %cleanup.258

if.end.194:                                       ; preds = %while.end.190
  %188 = load i8*, i8** %outl, align 8, !tbaa !1
  %189 = load i8*, i8** %out_beg, align 8, !tbaa !1
  %cmp195 = icmp ugt i8* %188, %189
  br i1 %cmp195, label %if.then.197, label %if.end.206

if.then.197:                                      ; preds = %if.end.194
  %190 = load i8*, i8** %outl, align 8, !tbaa !1
  %191 = load i8*, i8** %out_beg, align 8, !tbaa !1
  %sub.ptr.lhs.cast198 = ptrtoint i8* %190 to i64
  %sub.ptr.rhs.cast199 = ptrtoint i8* %191 to i64
  %sub.ptr.sub200 = sub i64 %sub.ptr.lhs.cast198, %sub.ptr.rhs.cast199
  %192 = load i32, i32* %skip_unit, align 4, !tbaa !5
  %conv201 = sext i32 %192 to i64
  %div202 = sdiv i64 %sub.ptr.sub200, %conv201
  %conv203 = trunc i64 %div202 to i32
  store i32 %conv203, i32* %count, align 4, !tbaa !5
  %193 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %194 = load i32, i32* %count, align 4, !tbaa !5
  %and204 = and i32 %194, 255
  %195 = load i32, i32* %count, align 4, !tbaa !5
  %shr = ashr i32 %195, 8
  %call205 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %193, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0), i32 %and204, i32 %shr) #4
  br label %if.end.206

if.end.206:                                       ; preds = %if.then.197, %if.end.194
  %196 = load i8*, i8** %outl, align 8, !tbaa !1
  store i8* %196, i8** %out_beg, align 8, !tbaa !1
  %197 = load i32, i32* %n, align 4, !tbaa !5
  %198 = load i8*, i8** %outl, align 8, !tbaa !1
  %idx.ext207 = sext i32 %197 to i64
  %add.ptr208 = getelementptr inbounds i8, i8* %198, i64 %idx.ext207
  store i8* %add.ptr208, i8** %outl, align 8, !tbaa !1
  br label %while.cond.209

while.cond.209:                                   ; preds = %if.end.244, %if.end.206
  %199 = load i8*, i8** %outl, align 8, !tbaa !1
  %200 = load i8*, i8** %out_end, align 8, !tbaa !1
  %cmp210 = icmp ult i8* %199, %200
  br i1 %cmp210, label %while.body.212, label %while.end.245

while.body.212:                                   ; preds = %while.cond.209
  %201 = load i8*, i8** %out_end, align 8, !tbaa !1
  %202 = load i8*, i8** %outl, align 8, !tbaa !1
  %sub.ptr.lhs.cast213 = ptrtoint i8* %201 to i64
  %sub.ptr.rhs.cast214 = ptrtoint i8* %202 to i64
  %sub.ptr.sub215 = sub i64 %sub.ptr.lhs.cast213, %sub.ptr.rhs.cast214
  %203 = load i32, i32* %skip_unit, align 4, !tbaa !5
  %conv216 = sext i32 %203 to i64
  %cmp217 = icmp slt i64 %sub.ptr.sub215, %conv216
  br i1 %cmp217, label %cond.true.219, label %cond.false.223

cond.true.219:                                    ; preds = %while.body.212
  %204 = load i8*, i8** %out_end, align 8, !tbaa !1
  %205 = load i8*, i8** %outl, align 8, !tbaa !1
  %sub.ptr.lhs.cast220 = ptrtoint i8* %204 to i64
  %sub.ptr.rhs.cast221 = ptrtoint i8* %205 to i64
  %sub.ptr.sub222 = sub i64 %sub.ptr.lhs.cast220, %sub.ptr.rhs.cast221
  br label %cond.end.225

cond.false.223:                                   ; preds = %while.body.212
  %206 = load i32, i32* %skip_unit, align 4, !tbaa !5
  %conv224 = sext i32 %206 to i64
  br label %cond.end.225

cond.end.225:                                     ; preds = %cond.false.223, %cond.true.219
  %cond226 = phi i64 [ %sub.ptr.sub222, %cond.true.219 ], [ %conv224, %cond.false.223 ]
  %conv227 = trunc i64 %cond226 to i32
  store i32 %conv227, i32* %count, align 4, !tbaa !5
  store i32 %conv227, i32* %n, align 4, !tbaa !5
  %207 = load i8*, i8** %outl, align 8, !tbaa !1
  store i8* %207, i8** %out_ptr, align 8, !tbaa !1
  br label %while.cond.228

while.cond.228:                                   ; preds = %if.end.236, %cond.end.225
  %208 = load i32, i32* %count, align 4, !tbaa !5
  %dec229 = add nsw i32 %208, -1
  store i32 %dec229, i32* %count, align 4, !tbaa !5
  %cmp230 = icmp sge i32 %dec229, 0
  br i1 %cmp230, label %while.body.232, label %while.end.237

while.body.232:                                   ; preds = %while.cond.228
  %209 = load i8*, i8** %out_ptr, align 8, !tbaa !1
  %incdec.ptr233 = getelementptr inbounds i8, i8* %209, i32 1
  store i8* %incdec.ptr233, i8** %out_ptr, align 8, !tbaa !1
  %210 = load i8, i8* %209, align 1, !tbaa !31
  %tobool234 = icmp ne i8 %210, 0
  br i1 %tobool234, label %if.then.235, label %if.end.236

if.then.235:                                      ; preds = %while.body.232
  br label %while.end.237

if.end.236:                                       ; preds = %while.body.232
  br label %while.cond.228

while.end.237:                                    ; preds = %if.then.235, %while.cond.228
  %211 = load i32, i32* %count, align 4, !tbaa !5
  %cmp238 = icmp slt i32 %211, 0
  br i1 %cmp238, label %if.then.240, label %if.else.241

if.then.240:                                      ; preds = %while.end.237
  br label %while.end.245

if.else.241:                                      ; preds = %while.end.237
  %212 = load i32, i32* %n, align 4, !tbaa !5
  %213 = load i8*, i8** %outl, align 8, !tbaa !1
  %idx.ext242 = sext i32 %212 to i64
  %add.ptr243 = getelementptr inbounds i8, i8* %213, i64 %idx.ext242
  store i8* %add.ptr243, i8** %outl, align 8, !tbaa !1
  br label %if.end.244

if.end.244:                                       ; preds = %if.else.241
  br label %while.cond.209

while.end.245:                                    ; preds = %if.then.240, %while.cond.209
  %214 = load i8*, i8** %outl, align 8, !tbaa !1
  %215 = load i8*, i8** %out_beg, align 8, !tbaa !1
  %sub.ptr.lhs.cast246 = ptrtoint i8* %214 to i64
  %sub.ptr.rhs.cast247 = ptrtoint i8* %215 to i64
  %sub.ptr.sub248 = sub i64 %sub.ptr.lhs.cast246, %sub.ptr.rhs.cast247
  %conv249 = trunc i64 %sub.ptr.sub248 to i32
  store i32 %conv249, i32* %count, align 4, !tbaa !5
  %216 = bitcast i32* %count1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %216) #2
  %217 = load i32, i32* %count, align 4, !tbaa !5
  %218 = load i32, i32* %bytes_per_column, align 4, !tbaa !5
  %div250 = sdiv i32 %217, %218
  store i32 %div250, i32* %count1, align 4, !tbaa !5
  %219 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %220 = load i32, i32* %mode, align 4, !tbaa !5
  %221 = load i32, i32* %count1, align 4, !tbaa !5
  %and251 = and i32 %221, 255
  %222 = load i32, i32* %count1, align 4, !tbaa !5
  %shr252 = ashr i32 %222, 8
  %call253 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %219, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i32 0, i32 0), i32 %220, i32 %and251, i32 %shr252) #4
  %223 = bitcast i32* %count1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %223) #2
  %224 = load i8*, i8** %out_beg, align 8, !tbaa !1
  %225 = load i32, i32* %count, align 4, !tbaa !5
  %conv254 = sext i32 %225 to i64
  %226 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call255 = call i64 @fwrite(i8* %224, i64 1, i64 %conv254, %struct._IO_FILE* %226) #4
  %227 = load i8*, i8** %outl, align 8, !tbaa !1
  store i8* %227, i8** %out_beg, align 8, !tbaa !1
  %228 = load i32, i32* %n, align 4, !tbaa !5
  %229 = load i8*, i8** %outl, align 8, !tbaa !1
  %idx.ext256 = sext i32 %228 to i64
  %add.ptr257 = getelementptr inbounds i8, i8* %229, i64 %idx.ext256
  store i8* %add.ptr257, i8** %outl, align 8, !tbaa !1
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.258

cleanup.258:                                      ; preds = %while.end.245, %if.then.193
  %230 = bitcast i8** %out_ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %230) #2
  %231 = bitcast i32* %n to i8*
  call void @llvm.lifetime.end(i64 4, i8* %231) #2
  %232 = bitcast i32* %count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %232) #2
  %cleanup.dest.261 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.261, label %unreachable [
    i32 0, label %cleanup.cont.262
    i32 20, label %do.end
  ]

cleanup.cont.262:                                 ; preds = %cleanup.258
  br label %do.cond

do.cond:                                          ; preds = %cleanup.cont.262
  %233 = load i8*, i8** %out_beg, align 8, !tbaa !1
  %234 = load i8*, i8** %out_end, align 8, !tbaa !1
  %cmp263 = icmp ult i8* %233, %234
  br i1 %cmp263, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond, %cleanup.258
  %235 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call265 = call i32 @fputc(i32 13, %struct._IO_FILE* %235) #4
  %236 = load i32, i32* %bits_per_column, align 4, !tbaa !5
  store i32 %236, i32* %skip, align 4, !tbaa !5
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.266

cleanup.266:                                      ; preds = %if.then.54, %do.end, %cleanup.151, %cleanup
  %237 = bitcast i32* %bnum to i8*
  call void @llvm.lifetime.end(i64 4, i8* %237) #2
  %238 = bitcast i8** %outl to i8*
  call void @llvm.lifetime.end(i64 8, i8* %238) #2
  %239 = bitcast i8** %out_end to i8*
  call void @llvm.lifetime.end(i64 8, i8* %239) #2
  %240 = bitcast i8** %out_beg to i8*
  call void @llvm.lifetime.end(i64 8, i8* %240) #2
  %241 = bitcast i8** %in_end to i8*
  call void @llvm.lifetime.end(i64 8, i8* %241) #2
  %242 = bitcast i8** %in_data to i8*
  call void @llvm.lifetime.end(i64 8, i8* %242) #2
  %cleanup.dest.272 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.272, label %cleanup.296 [
    i32 0, label %cleanup.cont.273
    i32 3, label %while.cond
    i32 5, label %xit
  ]

cleanup.cont.273:                                 ; preds = %cleanup.266
  br label %while.cond

while.end.274:                                    ; preds = %while.cond
  br label %xit

xit:                                              ; preds = %while.end.274, %cleanup.266
  %243 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call275 = call i32 @fputc(i32 12, %struct._IO_FILE* %243) #4
  %244 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call276 = call i32 @fflush(%struct._IO_FILE* %244) #4
  br label %fin

fin:                                              ; preds = %xit, %if.then.43, %if.then
  %245 = load i8*, i8** %out, align 8, !tbaa !1
  %cmp277 = icmp ne i8* %245, null
  br i1 %cmp277, label %if.then.279, label %if.end.285

if.then.279:                                      ; preds = %fin
  %246 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory280 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %246, i32 0, i32 3
  %247 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory280, align 8, !tbaa !9
  %non_gc_memory281 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %247, i32 0, i32 3
  %248 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory281, align 8, !tbaa !25
  %procs282 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %248, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs282, i32 0, i32 2
  %249 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !32
  %250 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory283 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %250, i32 0, i32 3
  %251 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory283, align 8, !tbaa !9
  %non_gc_memory284 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %251, i32 0, i32 3
  %252 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory284, align 8, !tbaa !25
  %253 = load i8*, i8** %out, align 8, !tbaa !1
  call void %249(%struct.gs_memory_s* %252, i8* %253, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i32 0, i32 0)) #4
  br label %if.end.285

if.end.285:                                       ; preds = %if.then.279, %fin
  %254 = load i8*, i8** %in, align 8, !tbaa !1
  %cmp286 = icmp ne i8* %254, null
  br i1 %cmp286, label %if.then.288, label %if.end.295

if.then.288:                                      ; preds = %if.end.285
  %255 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory289 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %255, i32 0, i32 3
  %256 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory289, align 8, !tbaa !9
  %non_gc_memory290 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %256, i32 0, i32 3
  %257 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory290, align 8, !tbaa !25
  %procs291 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %257, i32 0, i32 1
  %free_object292 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs291, i32 0, i32 2
  %258 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object292, align 8, !tbaa !32
  %259 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory293 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %259, i32 0, i32 3
  %260 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory293, align 8, !tbaa !9
  %non_gc_memory294 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %260, i32 0, i32 3
  %261 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory294, align 8, !tbaa !25
  %262 = load i8*, i8** %in, align 8, !tbaa !1
  call void %258(%struct.gs_memory_s* %261, i8* %262, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0)) #4
  br label %if.end.295

if.end.295:                                       ; preds = %if.then.288, %if.end.285
  %263 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %263, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.296

cleanup.296:                                      ; preds = %if.end.295, %cleanup.266
  %264 = bitcast i32* %limit to i8*
  call void @llvm.lifetime.end(i64 4, i8* %264) #2
  %265 = bitcast i32* %last_row to i8*
  call void @llvm.lifetime.end(i64 4, i8* %265) #2
  %266 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %266) #2
  %267 = bitcast i32* %skips to i8*
  call void @llvm.lifetime.end(i64 4, i8* %267) #2
  %268 = bitcast i32* %skip to i8*
  call void @llvm.lifetime.end(i64 4, i8* %268) #2
  %269 = bitcast i32* %lnum to i8*
  call void @llvm.lifetime.end(i64 4, i8* %269) #2
  %270 = bitcast i8** %out to i8*
  call void @llvm.lifetime.end(i64 8, i8* %270) #2
  %271 = bitcast i8** %in to i8*
  call void @llvm.lifetime.end(i64 8, i8* %271) #2
  %272 = bitcast i32* %skip_unit to i8*
  call void @llvm.lifetime.end(i64 4, i8* %272) #2
  %273 = bitcast i32* %bits_per_column to i8*
  call void @llvm.lifetime.end(i64 4, i8* %273) #2
  %274 = bitcast i32* %bytes_per_column to i8*
  call void @llvm.lifetime.end(i64 4, i8* %274) #2
  %275 = bitcast i32* %mode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %275) #2
  %276 = bitcast i32* %yres to i8*
  call void @llvm.lifetime.end(i64 4, i8* %276) #2
  %277 = bitcast i32* %xres to i8*
  call void @llvm.lifetime.end(i64 4, i8* %277) #2
  %278 = bitcast i32* %line_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %278) #2
  %279 = load i32, i32* %retval
  ret i32 %279

unreachable:                                      ; preds = %cleanup.258
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

declare i32 @gdev_prn_print_scan_lines(%struct.gx_device_s*) #0

declare i64 @fwrite(i8*, i64, i64, %struct._IO_FILE*) #0

declare i32 @gdev_prn_get_bits(%struct.gx_device_printer_s*, i32, i8*, i8**) #0

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

declare i32 @fputs(i8*, %struct._IO_FILE*) #0

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #0

declare i32 @gdev_prn_copy_scan_lines(%struct.gx_device_printer_s*, i32, i8*, i32) #0

; Function Attrs: nounwind
declare i8* @memset(i8*, i32, i64) #3

declare void @memflip8x8(i8*, i32, i8*, i32) #0

declare i32 @fputc(i32, %struct._IO_FILE*) #0

declare i32 @fflush(%struct._IO_FILE*) #0

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
!9 = !{!10, !2, i64 24}
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
!25 = !{!26, !2, i64 200}
!26 = !{!"gs_memory_s", !2, i64 0, !27, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!27 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!28 = !{!26, !2, i64 88}
!29 = !{!10, !6, i64 832}
!30 = !{!12, !12, i64 0}
!31 = !{!3, !3, i64 0}
!32 = !{!26, !2, i64 24}
