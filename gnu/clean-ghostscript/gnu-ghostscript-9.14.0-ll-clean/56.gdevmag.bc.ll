; ModuleID = './gdevmag.bc'
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

@mag16_procs = internal global %struct.gx_device_procs_s { i32 (%struct.gx_device_s*)* @gdev_mag_4bit_open, void (%struct.gx_device_s*, %struct.gs_matrix_s*)* null, i32 (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i32, i32)* @gdev_prn_output_page, i32 (%struct.gx_device_s*)* @gdev_prn_close, i64 (%struct.gx_device_s*, i16*)* @pc_4bit_map_rgb_color, i32 (%struct.gx_device_s*, i64, i16*)* @pc_4bit_map_color_rgb, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* null, i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* null, i32 (%struct.gx_device_s*, i32, i8*, i8**)* null, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @gdev_prn_get_params, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @gdev_prn_put_params, i64 (%struct.gx_device_s*, i16*)* null, %struct.gx_xfont_procs_s* (%struct.gx_device_s*)* null, %struct.gx_device_s* (%struct.gx_device_s*)* null, i64 (%struct.gx_device_s*, i16, i16, i16, i16)* null, %struct.gx_device_s* (%struct.gx_device_s*)* @gx_page_device_get_page_device, i32 (%struct.gx_device_s*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)* null, i32 (%struct.gx_device_s*, i32, i32*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* null, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)* null, i32 (%struct.gx_device_s*, i64, i16*)* null, i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)* null, i32 (%struct.gx_device_s*, %struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_transparency_group_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gx_transparency_mask_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32)* null, i64 (%struct.gx_device_s*, i16*)* null, i32 (%struct.gx_device_s*, i64, i16*)* null, i32 (%struct.gx_device_s*, i64, %struct.gs_pattern1_instance_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* null, %struct.gs_devn_params_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i8*, i32)* @gdev_prn_dev_spec_op, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)* @gx_default_get_profile, void (%struct.gx_device_s*, i32)* @gx_default_set_graphics_type_tag, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_process_page_options_s*)* null }, align 8
@.str = private unnamed_addr constant [6 x i8] c"mag16\00", align 1
@st_device_printer = external constant %struct.gs_memory_struct_type_s, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"DeviceRGB\00", align 1
@gs_mag16_device = global { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [11240 x i8], { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* }, [4096 x i8], i32, i32, i32, i32, i32, i32, %struct._IO_FILE*, i64, i8*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s*, i32)*, %struct.gx_page_queue_s*, i32, %struct.gx_device_printer_s*, i32, i32, %struct.bg_print_s, i32, %struct.gx_saved_pages_list_s*, %struct.gx_device_procs_s, %struct.gx_device_procs_s } { i32 18472, %struct.gx_device_procs_s* @mag16_procs, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), %struct.gs_memory_s* null, %struct.gs_memory_struct_type_s* @st_device_printer, i32 0, void (%struct.gx_device_s*)* null, %struct.rc_header_s zeroinitializer, i32 0, i32 0, i32 0, %struct.gx_device_color_info_s { i32 3, i32 3, i32 1, i16 8, i8 -1, i32 0, i32 1, i32 1, i32 2, %struct.gx_device_anti_alias_info_s { i32 1, i32 1 }, i32 -1, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [64 x i64] zeroinitializer, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 -1, i64 0, i32 0 }, %struct.gx_device_cached_colors_s { i64 -1, i64 -1 }, i32 636, i32 800, i32 0, i32 0, i32 0, i32 0, [2 x float] [float 0x4084EDAA00000000, float 0x408A533340000000], [4 x float] zeroinitializer, i32 0, [2 x float] [float 0x4051181180000000, float 0x4051181180000000], [2 x float] [float 0x4051181180000000, float 0x4051181180000000], [2 x float] zeroinitializer, [4 x float] zeroinitializer, i64 0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, %struct.gx_stroked_gradient_recognizer_s zeroinitializer, i32 0, i32 0, %struct.gdev_space_params_s { i64 10000000, i64 4000000, %struct.gx_band_params_s zeroinitializer, i32 0, i32 0 }, %struct.cmm_dev_profile_s* null, i32 0, %struct.gx_page_device_procs_s { i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_install, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_begin_page, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* @gx_default_end_page }, %struct.gx_device_procs_s zeroinitializer, [11240 x i8] zeroinitializer, { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* } { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)* @mag_4bit_print_page, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_print_page_copies, %struct.gx_device_buf_procs_s { i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, %struct.gx_render_plane_s*, %struct.gs_memory_s*, %struct.gx_colors_usage_s*)* @gx_default_create_buf_device, i32 (%struct.gx_device_buf_space_s*, %struct.gx_device_s*, %struct.gx_render_plane_s*, i32, i32)* @gx_default_size_buf_device, i32 (%struct.gx_device_s*, i8*, i32, i8**, i32, i32, i32)* @gx_default_setup_buf_device, void (%struct.gx_device_s*)* @gx_default_destroy_buf_device }, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)* @gx_default_get_space_params, i32 (%struct.gdev_prn_start_render_params_s*)* @gx_default_start_render_thread, i32 (%struct.gx_device_printer_s*)* @gx_default_open_render_device, i32 (%struct.gx_device_printer_s*)* @gx_default_close_render_device, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_buffer_page }, [4096 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 -1, i32 0, %struct._IO_FILE* null, i64 0, i8* null, %struct.gs_memory_s* null, %struct.gs_memory_s* null, i32 (%struct.gx_device_s*, i32)* null, %struct.gx_page_queue_s* null, i32 0, %struct.gx_device_printer_s* null, i32 0, i32 0, %struct.bg_print_s zeroinitializer, i32 0, %struct.gx_saved_pages_list_s* null, %struct.gx_device_procs_s zeroinitializer, %struct.gx_device_procs_s zeroinitializer }, align 8
@mag256_procs = internal global %struct.gx_device_procs_s { i32 (%struct.gx_device_s*)* @gdev_mag_8bit_open, void (%struct.gx_device_s*, %struct.gs_matrix_s*)* null, i32 (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i32, i32)* @gdev_prn_output_page, i32 (%struct.gx_device_s*)* @gdev_prn_close, i64 (%struct.gx_device_s*, i16*)* @pc_8bit_map_rgb_color, i32 (%struct.gx_device_s*, i64, i16*)* @pc_8bit_map_color_rgb, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* null, i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* null, i32 (%struct.gx_device_s*, i32, i8*, i8**)* null, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @gdev_prn_get_params, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @gdev_prn_put_params, i64 (%struct.gx_device_s*, i16*)* null, %struct.gx_xfont_procs_s* (%struct.gx_device_s*)* null, %struct.gx_device_s* (%struct.gx_device_s*)* null, i64 (%struct.gx_device_s*, i16, i16, i16, i16)* null, %struct.gx_device_s* (%struct.gx_device_s*)* @gx_page_device_get_page_device, i32 (%struct.gx_device_s*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)* null, i32 (%struct.gx_device_s*, i32, i32*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* null, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)* null, i32 (%struct.gx_device_s*, i64, i16*)* null, i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)* null, i32 (%struct.gx_device_s*, %struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_transparency_group_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gx_transparency_mask_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32)* null, i64 (%struct.gx_device_s*, i16*)* null, i32 (%struct.gx_device_s*, i64, i16*)* null, i32 (%struct.gx_device_s*, i64, %struct.gs_pattern1_instance_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* null, %struct.gs_devn_params_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i8*, i32)* @gdev_prn_dev_spec_op, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)* @gx_default_get_profile, void (%struct.gx_device_s*, i32)* @gx_default_set_graphics_type_tag, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_process_page_options_s*)* null }, align 8
@.str.2 = private unnamed_addr constant [7 x i8] c"mag256\00", align 1
@gs_mag256_device = global { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [11240 x i8], { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* }, [4096 x i8], i32, i32, i32, i32, i32, i32, %struct._IO_FILE*, i64, i8*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s*, i32)*, %struct.gx_page_queue_s*, i32, %struct.gx_device_printer_s*, i32, i32, %struct.bg_print_s, i32, %struct.gx_saved_pages_list_s*, %struct.gx_device_procs_s, %struct.gx_device_procs_s } { i32 18472, %struct.gx_device_procs_s* @mag256_procs, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), %struct.gs_memory_s* null, %struct.gs_memory_struct_type_s* @st_device_printer, i32 0, void (%struct.gx_device_s*)* null, %struct.rc_header_s zeroinitializer, i32 0, i32 0, i32 0, %struct.gx_device_color_info_s { i32 3, i32 3, i32 1, i16 8, i8 -1, i32 0, i32 3, i32 1, i32 4, %struct.gx_device_anti_alias_info_s { i32 1, i32 1 }, i32 -1, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [64 x i64] zeroinitializer, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 -1, i64 0, i32 0 }, %struct.gx_device_cached_colors_s { i64 -1, i64 -1 }, i32 636, i32 800, i32 0, i32 0, i32 0, i32 0, [2 x float] [float 0x4084EDAA00000000, float 0x408A533340000000], [4 x float] zeroinitializer, i32 0, [2 x float] [float 0x4051181180000000, float 0x4051181180000000], [2 x float] [float 0x4051181180000000, float 0x4051181180000000], [2 x float] zeroinitializer, [4 x float] zeroinitializer, i64 0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, %struct.gx_stroked_gradient_recognizer_s zeroinitializer, i32 0, i32 0, %struct.gdev_space_params_s { i64 10000000, i64 4000000, %struct.gx_band_params_s zeroinitializer, i32 0, i32 0 }, %struct.cmm_dev_profile_s* null, i32 0, %struct.gx_page_device_procs_s { i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_install, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_begin_page, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* @gx_default_end_page }, %struct.gx_device_procs_s zeroinitializer, [11240 x i8] zeroinitializer, { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* } { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)* @mag_8bit_print_page, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_print_page_copies, %struct.gx_device_buf_procs_s { i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, %struct.gx_render_plane_s*, %struct.gs_memory_s*, %struct.gx_colors_usage_s*)* @gx_default_create_buf_device, i32 (%struct.gx_device_buf_space_s*, %struct.gx_device_s*, %struct.gx_render_plane_s*, i32, i32)* @gx_default_size_buf_device, i32 (%struct.gx_device_s*, i8*, i32, i8**, i32, i32, i32)* @gx_default_setup_buf_device, void (%struct.gx_device_s*)* @gx_default_destroy_buf_device }, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)* @gx_default_get_space_params, i32 (%struct.gdev_prn_start_render_params_s*)* @gx_default_start_render_thread, i32 (%struct.gx_device_printer_s*)* @gx_default_open_render_device, i32 (%struct.gx_device_printer_s*)* @gx_default_close_render_device, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_buffer_page }, [4096 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 -1, i32 0, %struct._IO_FILE* null, i64 0, i8* null, %struct.gs_memory_s* null, %struct.gs_memory_s* null, i32 (%struct.gx_device_s*, i32)* null, %struct.gx_page_queue_s* null, i32 0, %struct.gx_device_printer_s* null, i32 0, i32 0, %struct.bg_print_s zeroinitializer, i32 0, %struct.gx_saved_pages_list_s* null, %struct.gx_device_procs_s zeroinitializer, %struct.gx_device_procs_s zeroinitializer }, align 8
@.str.3 = private unnamed_addr constant [14 x i8] c"MAKI02  gs   \00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"USER\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"mag_row\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"mag_flag\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"mag_flag_a\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"mag_flag_b\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"mag_pixel\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"Unknown\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"%-18s\00", align 1
@.str.12 = private unnamed_addr constant [29 x i8] c" Ghostscript with %s driver\1A\00", align 1

declare i32 @gx_default_install(%struct.gx_device_s*, %struct.gs_state_s*) #0

declare i32 @gx_default_begin_page(%struct.gx_device_s*, %struct.gs_state_s*) #0

declare i32 @gx_default_end_page(%struct.gx_device_s*, i32, %struct.gs_state_s*) #0

; Function Attrs: nounwind uwtable
define internal i32 @mag_4bit_print_page(%struct.gx_device_printer_s* %pdev, %struct._IO_FILE* %file) #1 {
entry:
  %pdev.addr = alloca %struct.gx_device_printer_s*, align 8
  %file.addr = alloca %struct._IO_FILE*, align 8
  store %struct.gx_device_printer_s* %pdev, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  store %struct._IO_FILE* %file, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  %0 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  %call = call i32 @mag_print_page(%struct.gx_device_printer_s* %0, i32 4, %struct._IO_FILE* %1) #5
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
define internal i32 @mag_8bit_print_page(%struct.gx_device_printer_s* %pdev, %struct._IO_FILE* %file) #1 {
entry:
  %pdev.addr = alloca %struct.gx_device_printer_s*, align 8
  %file.addr = alloca %struct._IO_FILE*, align 8
  store %struct.gx_device_printer_s* %pdev, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  store %struct._IO_FILE* %file, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  %0 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  %call = call i32 @mag_print_page(%struct.gx_device_printer_s* %0, i32 8, %struct._IO_FILE* %1) #5
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @gdev_mag_4bit_open(%struct.gx_device_s* %dev) #1 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %0 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %0, i32 0, i32 13
  %1 = load i32, i32* %width, align 4, !tbaa !5
  %add = add nsw i32 %1, 7
  %div = sdiv i32 %add, 8
  %mul = mul nsw i32 %div, 8
  %2 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %width1 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %2, i32 0, i32 13
  store i32 %mul, i32* %width1, align 4, !tbaa !5
  %3 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call = call i32 @gdev_prn_open(%struct.gx_device_s* %3) #5
  ret i32 %call
}

declare i32 @gdev_prn_output_page(%struct.gx_device_s*, i32, i32) #0

declare i32 @gdev_prn_close(%struct.gx_device_s*) #0

declare i64 @pc_4bit_map_rgb_color(%struct.gx_device_s*, i16*) #0

declare i32 @pc_4bit_map_color_rgb(%struct.gx_device_s*, i64, i16*) #0

declare i32 @gdev_prn_get_params(%struct.gx_device_s*, %struct.gs_param_list_s*) #0

declare i32 @gdev_prn_put_params(%struct.gx_device_s*, %struct.gs_param_list_s*) #0

declare %struct.gx_device_s* @gx_page_device_get_page_device(%struct.gx_device_s*) #0

declare i32 @gdev_prn_dev_spec_op(%struct.gx_device_s*, i32, i8*, i32) #0

declare i32 @gx_default_get_profile(%struct.gx_device_s*, %struct.cmm_dev_profile_s**) #0

declare void @gx_default_set_graphics_type_tag(%struct.gx_device_s*, i32) #0

declare i32 @gdev_prn_open(%struct.gx_device_s*) #0

; Function Attrs: nounwind uwtable
define internal i32 @gdev_mag_8bit_open(%struct.gx_device_s* %dev) #1 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %0 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %0, i32 0, i32 13
  %1 = load i32, i32* %width, align 4, !tbaa !5
  %add = add nsw i32 %1, 3
  %div = sdiv i32 %add, 4
  %mul = mul nsw i32 %div, 4
  %2 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %width1 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %2, i32 0, i32 13
  store i32 %mul, i32* %width1, align 4, !tbaa !5
  %3 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call = call i32 @gdev_prn_open(%struct.gx_device_s* %3) #5
  ret i32 %call
}

declare i64 @pc_8bit_map_rgb_color(%struct.gx_device_s*, i16*) #0

declare i32 @pc_8bit_map_color_rgb(%struct.gx_device_s*, i64, i16*) #0

; Function Attrs: nounwind uwtable
define internal i32 @mag_print_page(%struct.gx_device_printer_s* %pdev, i32 %depth, %struct._IO_FILE* %file) #1 {
entry:
  %pdev.addr = alloca %struct.gx_device_printer_s*, align 8
  %depth.addr = alloca i32, align 4
  %file.addr = alloca %struct._IO_FILE*, align 8
  %code = alloca i32, align 4
  %magic = alloca i8*, align 8
  %user = alloca i8*, align 8
  %check = alloca [256 x i8], align 16
  %header = alloca [32 x i8], align 16
  %flag = alloca i8*, align 8
  %flag_prev = alloca i8*, align 8
  %flag_a = alloca i8*, align 8
  %flag_b = alloca i8*, align 8
  %row_buffer = alloca i8*, align 8
  %row = alloca [17 x i8*], align 16
  %pixel = alloca i8*, align 8
  %raster = alloca i32, align 4
  %height = alloca i32, align 4
  %width = alloca i32, align 4
  %width_pixel = alloca i32, align 4
  %flag_size = alloca i32, align 4
  %flag_a_bytes = alloca i32, align 4
  %flag_b_size = alloca i32, align 4
  %flag_b_bytes = alloca i64, align 8
  %pixel_bytes = alloca i64, align 8
  %y = alloca i32, align 4
  %f0 = alloca i8*, align 8
  %f1 = alloca i8*, align 8
  %f2 = alloca i8*, align 8
  %offset = alloca i64, align 8
  %count = alloca i32, align 4
  %next_bit = alloca i32, align 4
  %f0258 = alloca i8*, align 8
  %f1259 = alloca i8*, align 8
  %f2266 = alloca i8*, align 8
  %f2295 = alloca i8*, align 8
  store %struct.gx_device_printer_s* %pdev, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  store i32 %depth, i32* %depth.addr, align 4, !tbaa !19
  store %struct._IO_FILE* %file, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  store i32 0, i32* %code, align 4, !tbaa !19
  %1 = bitcast i8** %magic to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #2
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0), i8** %magic, align 8, !tbaa !1
  %2 = bitcast i8** %user to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #2
  %call = call i8* @getenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0)) #6
  store i8* %call, i8** %user, align 8, !tbaa !1
  %3 = bitcast [256 x i8]* %check to i8*
  call void @llvm.lifetime.start(i64 256, i8* %3) #2
  %4 = bitcast [32 x i8]* %header to i8*
  call void @llvm.lifetime.start(i64 32, i8* %4) #2
  %5 = bitcast [32 x i8]* %header to i8*
  call void @llvm.memset.p0i8.i64(i8* %5, i8 0, i64 32, i32 16, i1 false)
  %6 = bitcast i8** %flag to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #2
  %7 = bitcast i8** %flag_prev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #2
  %8 = bitcast i8** %flag_a to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #2
  %9 = bitcast i8** %flag_b to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #2
  %10 = bitcast i8** %row_buffer to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #2
  %11 = bitcast [17 x i8*]* %row to i8*
  call void @llvm.lifetime.start(i64 136, i8* %11) #2
  %12 = bitcast i8** %pixel to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #2
  %13 = bitcast i32* %raster to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #2
  %14 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %15 = bitcast %struct.gx_device_printer_s* %14 to %struct.gx_device_s*
  %call1 = call i32 @gx_device_raster(%struct.gx_device_s* %15, i32 0) #5
  store i32 %call1, i32* %raster, align 4, !tbaa !19
  %16 = bitcast i32* %height to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #2
  %17 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %height2 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %17, i32 0, i32 14
  %18 = load i32, i32* %height2, align 4, !tbaa !20
  store i32 %18, i32* %height, align 4, !tbaa !19
  %19 = bitcast i32* %width to i8*
  call void @llvm.lifetime.start(i64 4, i8* %19) #2
  %20 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %width3 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %20, i32 0, i32 13
  %21 = load i32, i32* %width3, align 4, !tbaa !25
  store i32 %21, i32* %width, align 4, !tbaa !19
  %22 = bitcast i32* %width_pixel to i8*
  call void @llvm.lifetime.start(i64 4, i8* %22) #2
  %23 = load i32, i32* %width, align 4, !tbaa !19
  %24 = load i32, i32* %depth.addr, align 4, !tbaa !19
  %cmp = icmp eq i32 %24, 4
  %cond = select i1 %cmp, i32 4, i32 2
  %div = sdiv i32 %23, %cond
  store i32 %div, i32* %width_pixel, align 4, !tbaa !19
  %25 = bitcast i32* %flag_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %25) #2
  %26 = load i32, i32* %width_pixel, align 4, !tbaa !19
  %div4 = sdiv i32 %26, 2
  store i32 %div4, i32* %flag_size, align 4, !tbaa !19
  %27 = bitcast i32* %flag_a_bytes to i8*
  call void @llvm.lifetime.start(i64 4, i8* %27) #2
  %28 = load i32, i32* %flag_size, align 4, !tbaa !19
  %add = add nsw i32 %28, 7
  %div5 = sdiv i32 %add, 8
  %add6 = add nsw i32 %div5, 1
  store i32 %add6, i32* %flag_a_bytes, align 4, !tbaa !19
  %29 = bitcast i32* %flag_b_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %29) #2
  %30 = load i32, i32* %flag_size, align 4, !tbaa !19
  store i32 %30, i32* %flag_b_size, align 4, !tbaa !19
  %31 = bitcast i64* %flag_b_bytes to i8*
  call void @llvm.lifetime.start(i64 8, i8* %31) #2
  %32 = bitcast i64* %pixel_bytes to i8*
  call void @llvm.lifetime.start(i64 8, i8* %32) #2
  %33 = bitcast i32* %y to i8*
  call void @llvm.lifetime.start(i64 4, i8* %33) #2
  %34 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %34, i32 0, i32 3
  %35 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !26
  %non_gc_memory = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %35, i32 0, i32 3
  %36 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory, align 8, !tbaa !27
  %non_gc_memory7 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %36, i32 0, i32 3
  %37 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory7, align 8, !tbaa !27
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %37, i32 0, i32 1
  %alloc_byte_array = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 10
  %38 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array, align 8, !tbaa !30
  %39 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory8 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %39, i32 0, i32 3
  %40 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory8, align 8, !tbaa !26
  %non_gc_memory9 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %40, i32 0, i32 3
  %41 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory9, align 8, !tbaa !27
  %non_gc_memory10 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %41, i32 0, i32 3
  %42 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory10, align 8, !tbaa !27
  %43 = load i32, i32* %raster, align 4, !tbaa !19
  %call11 = call i8* %38(%struct.gs_memory_s* %42, i32 %43, i32 17, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0)) #5
  store i8* %call11, i8** %row_buffer, align 8, !tbaa !1
  %44 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory12 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %44, i32 0, i32 3
  %45 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory12, align 8, !tbaa !26
  %non_gc_memory13 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %45, i32 0, i32 3
  %46 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory13, align 8, !tbaa !27
  %non_gc_memory14 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %46, i32 0, i32 3
  %47 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory14, align 8, !tbaa !27
  %procs15 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %47, i32 0, i32 1
  %alloc_byte_array16 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs15, i32 0, i32 10
  %48 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array16, align 8, !tbaa !30
  %49 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory17 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %49, i32 0, i32 3
  %50 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory17, align 8, !tbaa !26
  %non_gc_memory18 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %50, i32 0, i32 3
  %51 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory18, align 8, !tbaa !27
  %non_gc_memory19 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %51, i32 0, i32 3
  %52 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory19, align 8, !tbaa !27
  %53 = load i32, i32* %flag_size, align 4, !tbaa !19
  %call20 = call i8* %48(%struct.gs_memory_s* %52, i32 %53, i32 2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0)) #5
  store i8* %call20, i8** %flag, align 8, !tbaa !1
  %54 = load i8*, i8** %flag, align 8, !tbaa !1
  %55 = load i32, i32* %flag_size, align 4, !tbaa !19
  %idx.ext = sext i32 %55 to i64
  %add.ptr = getelementptr inbounds i8, i8* %54, i64 %idx.ext
  store i8* %add.ptr, i8** %flag_prev, align 8, !tbaa !1
  %56 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory21 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %56, i32 0, i32 3
  %57 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory21, align 8, !tbaa !26
  %non_gc_memory22 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %57, i32 0, i32 3
  %58 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory22, align 8, !tbaa !27
  %non_gc_memory23 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %58, i32 0, i32 3
  %59 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory23, align 8, !tbaa !27
  %procs24 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %59, i32 0, i32 1
  %alloc_byte_array25 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs24, i32 0, i32 10
  %60 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array25, align 8, !tbaa !30
  %61 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory26 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %61, i32 0, i32 3
  %62 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory26, align 8, !tbaa !26
  %non_gc_memory27 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %62, i32 0, i32 3
  %63 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory27, align 8, !tbaa !27
  %non_gc_memory28 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %63, i32 0, i32 3
  %64 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory28, align 8, !tbaa !27
  %65 = load i32, i32* %flag_a_bytes, align 4, !tbaa !19
  %call29 = call i8* %60(%struct.gs_memory_s* %64, i32 %65, i32 1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i32 0, i32 0)) #5
  store i8* %call29, i8** %flag_a, align 8, !tbaa !1
  %66 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory30 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %66, i32 0, i32 3
  %67 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory30, align 8, !tbaa !26
  %non_gc_memory31 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %67, i32 0, i32 3
  %68 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory31, align 8, !tbaa !27
  %non_gc_memory32 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %68, i32 0, i32 3
  %69 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory32, align 8, !tbaa !27
  %procs33 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %69, i32 0, i32 1
  %alloc_byte_array34 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs33, i32 0, i32 10
  %70 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array34, align 8, !tbaa !30
  %71 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory35 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %71, i32 0, i32 3
  %72 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory35, align 8, !tbaa !26
  %non_gc_memory36 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %72, i32 0, i32 3
  %73 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory36, align 8, !tbaa !27
  %non_gc_memory37 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %73, i32 0, i32 3
  %74 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory37, align 8, !tbaa !27
  %75 = load i32, i32* %flag_b_size, align 4, !tbaa !19
  %call38 = call i8* %70(%struct.gs_memory_s* %74, i32 %75, i32 1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i32 0, i32 0)) #5
  store i8* %call38, i8** %flag_b, align 8, !tbaa !1
  %76 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory39 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %76, i32 0, i32 3
  %77 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory39, align 8, !tbaa !26
  %non_gc_memory40 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %77, i32 0, i32 3
  %78 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory40, align 8, !tbaa !27
  %non_gc_memory41 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %78, i32 0, i32 3
  %79 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory41, align 8, !tbaa !27
  %procs42 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %79, i32 0, i32 1
  %alloc_byte_array43 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs42, i32 0, i32 10
  %80 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array43, align 8, !tbaa !30
  %81 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory44 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %81, i32 0, i32 3
  %82 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory44, align 8, !tbaa !26
  %non_gc_memory45 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %82, i32 0, i32 3
  %83 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory45, align 8, !tbaa !27
  %non_gc_memory46 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %83, i32 0, i32 3
  %84 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory46, align 8, !tbaa !27
  %85 = load i32, i32* %width, align 4, !tbaa !19
  %call47 = call i8* %80(%struct.gs_memory_s* %84, i32 %85, i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i32 0, i32 0)) #5
  store i8* %call47, i8** %pixel, align 8, !tbaa !1
  %86 = load i8*, i8** %row_buffer, align 8, !tbaa !1
  %cmp48 = icmp eq i8* %86, null
  br i1 %cmp48, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %87 = load i8*, i8** %flag, align 8, !tbaa !1
  %cmp49 = icmp eq i8* %87, null
  br i1 %cmp49, label %if.then, label %lor.lhs.false.50

lor.lhs.false.50:                                 ; preds = %lor.lhs.false
  %88 = load i8*, i8** %flag_a, align 8, !tbaa !1
  %cmp51 = icmp eq i8* %88, null
  br i1 %cmp51, label %if.then, label %lor.lhs.false.52

lor.lhs.false.52:                                 ; preds = %lor.lhs.false.50
  %89 = load i8*, i8** %flag_b, align 8, !tbaa !1
  %cmp53 = icmp eq i8* %89, null
  br i1 %cmp53, label %if.then, label %lor.lhs.false.54

lor.lhs.false.54:                                 ; preds = %lor.lhs.false.52
  %90 = load i8*, i8** %pixel, align 8, !tbaa !1
  %cmp55 = icmp eq i8* %90, null
  br i1 %cmp55, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.54, %lor.lhs.false.52, %lor.lhs.false.50, %lor.lhs.false, %entry
  store i32 -1, i32* %code, align 4, !tbaa !19
  br label %mag_done

if.end:                                           ; preds = %lor.lhs.false.54
  store i32 0, i32* %y, align 4, !tbaa !19
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %91 = load i32, i32* %y, align 4, !tbaa !19
  %cmp56 = icmp slt i32 %91, 17
  br i1 %cmp56, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %92 = load i8*, i8** %row_buffer, align 8, !tbaa !1
  %93 = load i32, i32* %raster, align 4, !tbaa !19
  %94 = load i32, i32* %y, align 4, !tbaa !19
  %mul = mul nsw i32 %93, %94
  %idx.ext57 = sext i32 %mul to i64
  %add.ptr58 = getelementptr inbounds i8, i8* %92, i64 %idx.ext57
  %95 = load i32, i32* %y, align 4, !tbaa !19
  %idxprom = sext i32 %95 to i64
  %arrayidx = getelementptr inbounds [17 x i8*], [17 x i8*]* %row, i32 0, i64 %idxprom
  store i8* %add.ptr58, i8** %arrayidx, align 8, !tbaa !1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %96 = load i32, i32* %y, align 4, !tbaa !19
  %inc = add nsw i32 %96, 1
  store i32 %inc, i32* %y, align 4, !tbaa !19
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %97 = load i8*, i8** %user, align 8, !tbaa !1
  %cmp59 = icmp eq i8* %97, null
  br i1 %cmp59, label %if.then.60, label %if.end.61

if.then.60:                                       ; preds = %for.end
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i32 0, i32 0), i8** %user, align 8, !tbaa !1
  br label %if.end.61

if.end.61:                                        ; preds = %if.then.60, %for.end
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %check, i32 0, i32 0
  %98 = load i8*, i8** %magic, align 8, !tbaa !1
  %call62 = call i8* @strcpy(i8* %arraydecay, i8* %98) #6
  %arraydecay63 = getelementptr inbounds [256 x i8], [256 x i8]* %check, i32 0, i32 0
  %arraydecay64 = getelementptr inbounds [256 x i8], [256 x i8]* %check, i32 0, i32 0
  %call65 = call i64 @strlen(i8* %arraydecay64) #7
  %add.ptr66 = getelementptr inbounds i8, i8* %arraydecay63, i64 %call65
  %99 = load i8*, i8** %user, align 8, !tbaa !1
  %call67 = call i32 (i8*, i8*, ...) @gs_sprintf(i8* %add.ptr66, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i32 0, i32 0), i8* %99) #5
  %arraydecay68 = getelementptr inbounds [256 x i8], [256 x i8]* %check, i32 0, i32 0
  %add.ptr69 = getelementptr inbounds i8, i8* %arraydecay68, i64 31
  %100 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %dname = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %100, i32 0, i32 2
  %101 = load i8*, i8** %dname, align 8, !tbaa !31
  %call70 = call i32 (i8*, i8*, ...) @gs_sprintf(i8* %add.ptr69, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.12, i32 0, i32 0), i8* %101) #5
  store i64 0, i64* %pixel_bytes, align 8, !tbaa !32
  store i64 0, i64* %flag_b_bytes, align 8, !tbaa !32
  %102 = bitcast i8** %f0 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %102) #2
  %103 = load i8*, i8** %flag_prev, align 8, !tbaa !1
  store i8* %103, i8** %f0, align 8, !tbaa !1
  %104 = bitcast i8** %f1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %104) #2
  %105 = load i8*, i8** %flag, align 8, !tbaa !1
  store i8* %105, i8** %f1, align 8, !tbaa !1
  %106 = load i8*, i8** %f0, align 8, !tbaa !1
  %107 = load i32, i32* %flag_size, align 4, !tbaa !19
  %conv = sext i32 %107 to i64
  %call71 = call i8* @memset(i8* %106, i32 0, i64 %conv) #6
  store i32 0, i32* %y, align 4, !tbaa !19
  br label %for.cond.72

for.cond.72:                                      ; preds = %for.inc.83, %if.end.61
  %108 = load i32, i32* %y, align 4, !tbaa !19
  %109 = load i32, i32* %height, align 4, !tbaa !19
  %cmp73 = icmp slt i32 %108, %109
  br i1 %cmp73, label %for.body.75, label %for.end.85

for.body.75:                                      ; preds = %for.cond.72
  %110 = bitcast i8** %f2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %110) #2
  %111 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %112 = load i32, i32* %y, align 4, !tbaa !19
  %113 = load i32, i32* %depth.addr, align 4, !tbaa !19
  %arraydecay76 = getelementptr inbounds [17 x i8*], [17 x i8*]* %row, i32 0, i32 0
  %114 = load i8*, i8** %f1, align 8, !tbaa !1
  %115 = load i8*, i8** %pixel, align 8, !tbaa !1
  %call77 = call i32 @mag_make_flag(%struct.gx_device_printer_s* %111, i32 %112, i32 %113, i8** %arraydecay76, i8* %114, i8* %115) #5
  %conv78 = sext i32 %call77 to i64
  %116 = load i64, i64* %pixel_bytes, align 8, !tbaa !32
  %add79 = add nsw i64 %116, %conv78
  store i64 %add79, i64* %pixel_bytes, align 8, !tbaa !32
  %117 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %118 = load i32, i32* %flag_size, align 4, !tbaa !19
  %119 = load i8*, i8** %f0, align 8, !tbaa !1
  %120 = load i8*, i8** %f1, align 8, !tbaa !1
  %121 = load i8*, i8** %flag_a, align 8, !tbaa !1
  %122 = load i8*, i8** %flag_b, align 8, !tbaa !1
  %call80 = call i32 @mag_comp_flag(%struct.gx_device_printer_s* %117, i32 %118, i8* %119, i8* %120, i8* %121, i32 0, i8* %122) #5
  %conv81 = sext i32 %call80 to i64
  %123 = load i64, i64* %flag_b_bytes, align 8, !tbaa !32
  %add82 = add nsw i64 %123, %conv81
  store i64 %add82, i64* %flag_b_bytes, align 8, !tbaa !32
  %124 = load i8*, i8** %f0, align 8, !tbaa !1
  store i8* %124, i8** %f2, align 8, !tbaa !1
  %125 = load i8*, i8** %f1, align 8, !tbaa !1
  store i8* %125, i8** %f0, align 8, !tbaa !1
  %126 = load i8*, i8** %f2, align 8, !tbaa !1
  store i8* %126, i8** %f1, align 8, !tbaa !1
  %127 = bitcast i8** %f2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %127) #2
  br label %for.inc.83

for.inc.83:                                       ; preds = %for.body.75
  %128 = load i32, i32* %y, align 4, !tbaa !19
  %inc84 = add nsw i32 %128, 1
  store i32 %inc84, i32* %y, align 4, !tbaa !19
  br label %for.cond.72

for.end.85:                                       ; preds = %for.cond.72
  %129 = bitcast i8** %f1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %129) #2
  %130 = bitcast i8** %f0 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %130) #2
  %131 = bitcast i64* %offset to i8*
  call void @llvm.lifetime.start(i64 8, i8* %131) #2
  %132 = load i32, i32* %depth.addr, align 4, !tbaa !19
  %cmp86 = icmp eq i32 %132, 4
  %cond88 = select i1 %cmp86, i32 0, i32 128
  %conv89 = trunc i32 %cond88 to i8
  %arrayidx90 = getelementptr inbounds [32 x i8], [32 x i8]* %header, i32 0, i64 3
  store i8 %conv89, i8* %arrayidx90, align 1, !tbaa !33
  %133 = load i32, i32* %width, align 4, !tbaa !19
  %sub = sub nsw i32 %133, 1
  %and = and i32 %sub, 255
  %conv91 = trunc i32 %and to i8
  %arraydecay92 = getelementptr inbounds [32 x i8], [32 x i8]* %header, i32 0, i32 0
  %add.ptr93 = getelementptr inbounds i8, i8* %arraydecay92, i64 8
  %arrayidx94 = getelementptr inbounds i8, i8* %add.ptr93, i64 0
  store i8 %conv91, i8* %arrayidx94, align 1, !tbaa !33
  %134 = load i32, i32* %width, align 4, !tbaa !19
  %sub95 = sub nsw i32 %134, 1
  %shr = ashr i32 %sub95, 8
  %and96 = and i32 %shr, 255
  %conv97 = trunc i32 %and96 to i8
  %arraydecay98 = getelementptr inbounds [32 x i8], [32 x i8]* %header, i32 0, i32 0
  %add.ptr99 = getelementptr inbounds i8, i8* %arraydecay98, i64 8
  %arrayidx100 = getelementptr inbounds i8, i8* %add.ptr99, i64 1
  store i8 %conv97, i8* %arrayidx100, align 1, !tbaa !33
  %135 = load i32, i32* %height, align 4, !tbaa !19
  %sub101 = sub nsw i32 %135, 1
  %and102 = and i32 %sub101, 255
  %conv103 = trunc i32 %and102 to i8
  %arraydecay104 = getelementptr inbounds [32 x i8], [32 x i8]* %header, i32 0, i32 0
  %add.ptr105 = getelementptr inbounds i8, i8* %arraydecay104, i64 10
  %arrayidx106 = getelementptr inbounds i8, i8* %add.ptr105, i64 0
  store i8 %conv103, i8* %arrayidx106, align 1, !tbaa !33
  %136 = load i32, i32* %height, align 4, !tbaa !19
  %sub107 = sub nsw i32 %136, 1
  %shr108 = ashr i32 %sub107, 8
  %and109 = and i32 %shr108, 255
  %conv110 = trunc i32 %and109 to i8
  %arraydecay111 = getelementptr inbounds [32 x i8], [32 x i8]* %header, i32 0, i32 0
  %add.ptr112 = getelementptr inbounds i8, i8* %arraydecay111, i64 10
  %arrayidx113 = getelementptr inbounds i8, i8* %add.ptr112, i64 1
  store i8 %conv110, i8* %arrayidx113, align 1, !tbaa !33
  %137 = load i32, i32* %depth.addr, align 4, !tbaa !19
  %shl = shl i32 1, %137
  %mul114 = mul nsw i32 %shl, 3
  %add115 = add nsw i32 32, %mul114
  %conv116 = sext i32 %add115 to i64
  store i64 %conv116, i64* %offset, align 8, !tbaa !32
  %138 = load i64, i64* %offset, align 8, !tbaa !32
  %and117 = and i64 %138, 255
  %conv118 = trunc i64 %and117 to i8
  %arraydecay119 = getelementptr inbounds [32 x i8], [32 x i8]* %header, i32 0, i32 0
  %add.ptr120 = getelementptr inbounds i8, i8* %arraydecay119, i64 12
  %arrayidx121 = getelementptr inbounds i8, i8* %add.ptr120, i64 0
  store i8 %conv118, i8* %arrayidx121, align 1, !tbaa !33
  %139 = load i64, i64* %offset, align 8, !tbaa !32
  %shr122 = ashr i64 %139, 8
  %and123 = and i64 %shr122, 255
  %conv124 = trunc i64 %and123 to i8
  %arraydecay125 = getelementptr inbounds [32 x i8], [32 x i8]* %header, i32 0, i32 0
  %add.ptr126 = getelementptr inbounds i8, i8* %arraydecay125, i64 12
  %arrayidx127 = getelementptr inbounds i8, i8* %add.ptr126, i64 1
  store i8 %conv124, i8* %arrayidx127, align 1, !tbaa !33
  %140 = load i64, i64* %offset, align 8, !tbaa !32
  %shr128 = ashr i64 %140, 16
  %and129 = and i64 %shr128, 255
  %conv130 = trunc i64 %and129 to i8
  %arraydecay131 = getelementptr inbounds [32 x i8], [32 x i8]* %header, i32 0, i32 0
  %add.ptr132 = getelementptr inbounds i8, i8* %arraydecay131, i64 12
  %add.ptr133 = getelementptr inbounds i8, i8* %add.ptr132, i64 2
  %arrayidx134 = getelementptr inbounds i8, i8* %add.ptr133, i64 0
  store i8 %conv130, i8* %arrayidx134, align 1, !tbaa !33
  %141 = load i64, i64* %offset, align 8, !tbaa !32
  %shr135 = ashr i64 %141, 16
  %shr136 = ashr i64 %shr135, 8
  %and137 = and i64 %shr136, 255
  %conv138 = trunc i64 %and137 to i8
  %arraydecay139 = getelementptr inbounds [32 x i8], [32 x i8]* %header, i32 0, i32 0
  %add.ptr140 = getelementptr inbounds i8, i8* %arraydecay139, i64 12
  %add.ptr141 = getelementptr inbounds i8, i8* %add.ptr140, i64 2
  %arrayidx142 = getelementptr inbounds i8, i8* %add.ptr141, i64 1
  store i8 %conv138, i8* %arrayidx142, align 1, !tbaa !33
  %142 = load i32, i32* %flag_size, align 4, !tbaa !19
  %143 = load i32, i32* %height, align 4, !tbaa !19
  %mul143 = mul nsw i32 %142, %143
  %add144 = add nsw i32 %mul143, 7
  %div145 = sdiv i32 %add144, 8
  %conv146 = sext i32 %div145 to i64
  %144 = load i64, i64* %offset, align 8, !tbaa !32
  %add147 = add nsw i64 %144, %conv146
  store i64 %add147, i64* %offset, align 8, !tbaa !32
  %145 = load i64, i64* %offset, align 8, !tbaa !32
  %and148 = and i64 %145, 255
  %conv149 = trunc i64 %and148 to i8
  %arraydecay150 = getelementptr inbounds [32 x i8], [32 x i8]* %header, i32 0, i32 0
  %add.ptr151 = getelementptr inbounds i8, i8* %arraydecay150, i64 16
  %arrayidx152 = getelementptr inbounds i8, i8* %add.ptr151, i64 0
  store i8 %conv149, i8* %arrayidx152, align 1, !tbaa !33
  %146 = load i64, i64* %offset, align 8, !tbaa !32
  %shr153 = ashr i64 %146, 8
  %and154 = and i64 %shr153, 255
  %conv155 = trunc i64 %and154 to i8
  %arraydecay156 = getelementptr inbounds [32 x i8], [32 x i8]* %header, i32 0, i32 0
  %add.ptr157 = getelementptr inbounds i8, i8* %arraydecay156, i64 16
  %arrayidx158 = getelementptr inbounds i8, i8* %add.ptr157, i64 1
  store i8 %conv155, i8* %arrayidx158, align 1, !tbaa !33
  %147 = load i64, i64* %offset, align 8, !tbaa !32
  %shr159 = ashr i64 %147, 16
  %and160 = and i64 %shr159, 255
  %conv161 = trunc i64 %and160 to i8
  %arraydecay162 = getelementptr inbounds [32 x i8], [32 x i8]* %header, i32 0, i32 0
  %add.ptr163 = getelementptr inbounds i8, i8* %arraydecay162, i64 16
  %add.ptr164 = getelementptr inbounds i8, i8* %add.ptr163, i64 2
  %arrayidx165 = getelementptr inbounds i8, i8* %add.ptr164, i64 0
  store i8 %conv161, i8* %arrayidx165, align 1, !tbaa !33
  %148 = load i64, i64* %offset, align 8, !tbaa !32
  %shr166 = ashr i64 %148, 16
  %shr167 = ashr i64 %shr166, 8
  %and168 = and i64 %shr167, 255
  %conv169 = trunc i64 %and168 to i8
  %arraydecay170 = getelementptr inbounds [32 x i8], [32 x i8]* %header, i32 0, i32 0
  %add.ptr171 = getelementptr inbounds i8, i8* %arraydecay170, i64 16
  %add.ptr172 = getelementptr inbounds i8, i8* %add.ptr171, i64 2
  %arrayidx173 = getelementptr inbounds i8, i8* %add.ptr172, i64 1
  store i8 %conv169, i8* %arrayidx173, align 1, !tbaa !33
  %149 = load i64, i64* %flag_b_bytes, align 8, !tbaa !32
  %and174 = and i64 %149, 255
  %conv175 = trunc i64 %and174 to i8
  %arraydecay176 = getelementptr inbounds [32 x i8], [32 x i8]* %header, i32 0, i32 0
  %add.ptr177 = getelementptr inbounds i8, i8* %arraydecay176, i64 20
  %arrayidx178 = getelementptr inbounds i8, i8* %add.ptr177, i64 0
  store i8 %conv175, i8* %arrayidx178, align 1, !tbaa !33
  %150 = load i64, i64* %flag_b_bytes, align 8, !tbaa !32
  %shr179 = ashr i64 %150, 8
  %and180 = and i64 %shr179, 255
  %conv181 = trunc i64 %and180 to i8
  %arraydecay182 = getelementptr inbounds [32 x i8], [32 x i8]* %header, i32 0, i32 0
  %add.ptr183 = getelementptr inbounds i8, i8* %arraydecay182, i64 20
  %arrayidx184 = getelementptr inbounds i8, i8* %add.ptr183, i64 1
  store i8 %conv181, i8* %arrayidx184, align 1, !tbaa !33
  %151 = load i64, i64* %flag_b_bytes, align 8, !tbaa !32
  %shr185 = ashr i64 %151, 16
  %and186 = and i64 %shr185, 255
  %conv187 = trunc i64 %and186 to i8
  %arraydecay188 = getelementptr inbounds [32 x i8], [32 x i8]* %header, i32 0, i32 0
  %add.ptr189 = getelementptr inbounds i8, i8* %arraydecay188, i64 20
  %add.ptr190 = getelementptr inbounds i8, i8* %add.ptr189, i64 2
  %arrayidx191 = getelementptr inbounds i8, i8* %add.ptr190, i64 0
  store i8 %conv187, i8* %arrayidx191, align 1, !tbaa !33
  %152 = load i64, i64* %flag_b_bytes, align 8, !tbaa !32
  %shr192 = ashr i64 %152, 16
  %shr193 = ashr i64 %shr192, 8
  %and194 = and i64 %shr193, 255
  %conv195 = trunc i64 %and194 to i8
  %arraydecay196 = getelementptr inbounds [32 x i8], [32 x i8]* %header, i32 0, i32 0
  %add.ptr197 = getelementptr inbounds i8, i8* %arraydecay196, i64 20
  %add.ptr198 = getelementptr inbounds i8, i8* %add.ptr197, i64 2
  %arrayidx199 = getelementptr inbounds i8, i8* %add.ptr198, i64 1
  store i8 %conv195, i8* %arrayidx199, align 1, !tbaa !33
  %153 = load i64, i64* %flag_b_bytes, align 8, !tbaa !32
  %154 = load i64, i64* %offset, align 8, !tbaa !32
  %add200 = add nsw i64 %154, %153
  store i64 %add200, i64* %offset, align 8, !tbaa !32
  %155 = load i64, i64* %offset, align 8, !tbaa !32
  %and201 = and i64 %155, 255
  %conv202 = trunc i64 %and201 to i8
  %arraydecay203 = getelementptr inbounds [32 x i8], [32 x i8]* %header, i32 0, i32 0
  %add.ptr204 = getelementptr inbounds i8, i8* %arraydecay203, i64 24
  %arrayidx205 = getelementptr inbounds i8, i8* %add.ptr204, i64 0
  store i8 %conv202, i8* %arrayidx205, align 1, !tbaa !33
  %156 = load i64, i64* %offset, align 8, !tbaa !32
  %shr206 = ashr i64 %156, 8
  %and207 = and i64 %shr206, 255
  %conv208 = trunc i64 %and207 to i8
  %arraydecay209 = getelementptr inbounds [32 x i8], [32 x i8]* %header, i32 0, i32 0
  %add.ptr210 = getelementptr inbounds i8, i8* %arraydecay209, i64 24
  %arrayidx211 = getelementptr inbounds i8, i8* %add.ptr210, i64 1
  store i8 %conv208, i8* %arrayidx211, align 1, !tbaa !33
  %157 = load i64, i64* %offset, align 8, !tbaa !32
  %shr212 = ashr i64 %157, 16
  %and213 = and i64 %shr212, 255
  %conv214 = trunc i64 %and213 to i8
  %arraydecay215 = getelementptr inbounds [32 x i8], [32 x i8]* %header, i32 0, i32 0
  %add.ptr216 = getelementptr inbounds i8, i8* %arraydecay215, i64 24
  %add.ptr217 = getelementptr inbounds i8, i8* %add.ptr216, i64 2
  %arrayidx218 = getelementptr inbounds i8, i8* %add.ptr217, i64 0
  store i8 %conv214, i8* %arrayidx218, align 1, !tbaa !33
  %158 = load i64, i64* %offset, align 8, !tbaa !32
  %shr219 = ashr i64 %158, 16
  %shr220 = ashr i64 %shr219, 8
  %and221 = and i64 %shr220, 255
  %conv222 = trunc i64 %and221 to i8
  %arraydecay223 = getelementptr inbounds [32 x i8], [32 x i8]* %header, i32 0, i32 0
  %add.ptr224 = getelementptr inbounds i8, i8* %arraydecay223, i64 24
  %add.ptr225 = getelementptr inbounds i8, i8* %add.ptr224, i64 2
  %arrayidx226 = getelementptr inbounds i8, i8* %add.ptr225, i64 1
  store i8 %conv222, i8* %arrayidx226, align 1, !tbaa !33
  %159 = load i64, i64* %pixel_bytes, align 8, !tbaa !32
  %and227 = and i64 %159, 255
  %conv228 = trunc i64 %and227 to i8
  %arraydecay229 = getelementptr inbounds [32 x i8], [32 x i8]* %header, i32 0, i32 0
  %add.ptr230 = getelementptr inbounds i8, i8* %arraydecay229, i64 28
  %arrayidx231 = getelementptr inbounds i8, i8* %add.ptr230, i64 0
  store i8 %conv228, i8* %arrayidx231, align 1, !tbaa !33
  %160 = load i64, i64* %pixel_bytes, align 8, !tbaa !32
  %shr232 = ashr i64 %160, 8
  %and233 = and i64 %shr232, 255
  %conv234 = trunc i64 %and233 to i8
  %arraydecay235 = getelementptr inbounds [32 x i8], [32 x i8]* %header, i32 0, i32 0
  %add.ptr236 = getelementptr inbounds i8, i8* %arraydecay235, i64 28
  %arrayidx237 = getelementptr inbounds i8, i8* %add.ptr236, i64 1
  store i8 %conv234, i8* %arrayidx237, align 1, !tbaa !33
  %161 = load i64, i64* %pixel_bytes, align 8, !tbaa !32
  %shr238 = ashr i64 %161, 16
  %and239 = and i64 %shr238, 255
  %conv240 = trunc i64 %and239 to i8
  %arraydecay241 = getelementptr inbounds [32 x i8], [32 x i8]* %header, i32 0, i32 0
  %add.ptr242 = getelementptr inbounds i8, i8* %arraydecay241, i64 28
  %add.ptr243 = getelementptr inbounds i8, i8* %add.ptr242, i64 2
  %arrayidx244 = getelementptr inbounds i8, i8* %add.ptr243, i64 0
  store i8 %conv240, i8* %arrayidx244, align 1, !tbaa !33
  %162 = load i64, i64* %pixel_bytes, align 8, !tbaa !32
  %shr245 = ashr i64 %162, 16
  %shr246 = ashr i64 %shr245, 8
  %and247 = and i64 %shr246, 255
  %conv248 = trunc i64 %and247 to i8
  %arraydecay249 = getelementptr inbounds [32 x i8], [32 x i8]* %header, i32 0, i32 0
  %add.ptr250 = getelementptr inbounds i8, i8* %arraydecay249, i64 28
  %add.ptr251 = getelementptr inbounds i8, i8* %add.ptr250, i64 2
  %arrayidx252 = getelementptr inbounds i8, i8* %add.ptr251, i64 1
  store i8 %conv248, i8* %arrayidx252, align 1, !tbaa !33
  %163 = bitcast i64* %offset to i8*
  call void @llvm.lifetime.end(i64 8, i8* %163) #2
  %arraydecay253 = getelementptr inbounds [256 x i8], [256 x i8]* %check, i32 0, i32 0
  %164 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  %call254 = call i32 @fputs(i8* %arraydecay253, %struct._IO_FILE* %164) #5
  %arraydecay255 = getelementptr inbounds [32 x i8], [32 x i8]* %header, i32 0, i32 0
  %165 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  %call256 = call i64 @fwrite(i8* %arraydecay255, i64 32, i64 1, %struct._IO_FILE* %165) #5
  %166 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %167 = load i32, i32* %depth.addr, align 4, !tbaa !19
  %call257 = call i32 @mag_write_palette(%struct.gx_device_printer_s* %166, i32 %167) #5
  %168 = bitcast i32* %count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %168) #2
  %169 = bitcast i32* %next_bit to i8*
  call void @llvm.lifetime.start(i64 4, i8* %169) #2
  %170 = bitcast i8** %f0258 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %170) #2
  %171 = load i8*, i8** %flag_prev, align 8, !tbaa !1
  store i8* %171, i8** %f0258, align 8, !tbaa !1
  %172 = bitcast i8** %f1259 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %172) #2
  %173 = load i8*, i8** %flag, align 8, !tbaa !1
  store i8* %173, i8** %f1259, align 8, !tbaa !1
  %174 = load i8*, i8** %f0258, align 8, !tbaa !1
  %175 = load i32, i32* %flag_size, align 4, !tbaa !19
  %conv260 = sext i32 %175 to i64
  %call261 = call i8* @memset(i8* %174, i32 0, i64 %conv260) #6
  store i32 0, i32* %next_bit, align 4, !tbaa !19
  store i32 0, i32* %y, align 4, !tbaa !19
  br label %for.cond.262

for.cond.262:                                     ; preds = %for.inc.280, %for.end.85
  %176 = load i32, i32* %y, align 4, !tbaa !19
  %177 = load i32, i32* %height, align 4, !tbaa !19
  %cmp263 = icmp slt i32 %176, %177
  br i1 %cmp263, label %for.body.265, label %for.end.282

for.body.265:                                     ; preds = %for.cond.262
  %178 = bitcast i8** %f2266 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %178) #2
  %179 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %180 = load i32, i32* %y, align 4, !tbaa !19
  %181 = load i32, i32* %depth.addr, align 4, !tbaa !19
  %arraydecay267 = getelementptr inbounds [17 x i8*], [17 x i8*]* %row, i32 0, i32 0
  %182 = load i8*, i8** %f1259, align 8, !tbaa !1
  %183 = load i8*, i8** %pixel, align 8, !tbaa !1
  %call268 = call i32 @mag_make_flag(%struct.gx_device_printer_s* %179, i32 %180, i32 %181, i8** %arraydecay267, i8* %182, i8* %183) #5
  %184 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %185 = load i32, i32* %flag_size, align 4, !tbaa !19
  %186 = load i8*, i8** %f0258, align 8, !tbaa !1
  %187 = load i8*, i8** %f1259, align 8, !tbaa !1
  %188 = load i8*, i8** %flag_a, align 8, !tbaa !1
  %189 = load i32, i32* %next_bit, align 4, !tbaa !19
  %190 = load i8*, i8** %flag_b, align 8, !tbaa !1
  %call269 = call i32 @mag_comp_flag(%struct.gx_device_printer_s* %184, i32 %185, i8* %186, i8* %187, i8* %188, i32 %189, i8* %190) #5
  %191 = load i32, i32* %next_bit, align 4, !tbaa !19
  %192 = load i32, i32* %flag_size, align 4, !tbaa !19
  %add270 = add nsw i32 %191, %192
  %div271 = sdiv i32 %add270, 8
  store i32 %div271, i32* %count, align 4, !tbaa !19
  %193 = load i32, i32* %next_bit, align 4, !tbaa !19
  %194 = load i32, i32* %flag_size, align 4, !tbaa !19
  %add272 = add nsw i32 %193, %194
  %rem = srem i32 %add272, 8
  store i32 %rem, i32* %next_bit, align 4, !tbaa !19
  %195 = load i8*, i8** %flag_a, align 8, !tbaa !1
  %196 = load i32, i32* %count, align 4, !tbaa !19
  %conv273 = sext i32 %196 to i64
  %197 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  %call274 = call i64 @fwrite(i8* %195, i64 %conv273, i64 1, %struct._IO_FILE* %197) #5
  %198 = load i32, i32* %next_bit, align 4, !tbaa !19
  %tobool = icmp ne i32 %198, 0
  br i1 %tobool, label %if.then.275, label %if.end.279

if.then.275:                                      ; preds = %for.body.265
  %199 = load i32, i32* %count, align 4, !tbaa !19
  %idxprom276 = sext i32 %199 to i64
  %200 = load i8*, i8** %flag_a, align 8, !tbaa !1
  %arrayidx277 = getelementptr inbounds i8, i8* %200, i64 %idxprom276
  %201 = load i8, i8* %arrayidx277, align 1, !tbaa !33
  %202 = load i8*, i8** %flag_a, align 8, !tbaa !1
  %arrayidx278 = getelementptr inbounds i8, i8* %202, i64 0
  store i8 %201, i8* %arrayidx278, align 1, !tbaa !33
  br label %if.end.279

if.end.279:                                       ; preds = %if.then.275, %for.body.265
  %203 = load i8*, i8** %f0258, align 8, !tbaa !1
  store i8* %203, i8** %f2266, align 8, !tbaa !1
  %204 = load i8*, i8** %f1259, align 8, !tbaa !1
  store i8* %204, i8** %f0258, align 8, !tbaa !1
  %205 = load i8*, i8** %f2266, align 8, !tbaa !1
  store i8* %205, i8** %f1259, align 8, !tbaa !1
  %206 = bitcast i8** %f2266 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %206) #2
  br label %for.inc.280

for.inc.280:                                      ; preds = %if.end.279
  %207 = load i32, i32* %y, align 4, !tbaa !19
  %inc281 = add nsw i32 %207, 1
  store i32 %inc281, i32* %y, align 4, !tbaa !19
  br label %for.cond.262

for.end.282:                                      ; preds = %for.cond.262
  %208 = load i32, i32* %next_bit, align 4, !tbaa !19
  %tobool283 = icmp ne i32 %208, 0
  br i1 %tobool283, label %if.then.284, label %if.end.288

if.then.284:                                      ; preds = %for.end.282
  %209 = load i8*, i8** %flag_a, align 8, !tbaa !1
  %arrayidx285 = getelementptr inbounds i8, i8* %209, i64 0
  %210 = load i8, i8* %arrayidx285, align 1, !tbaa !33
  %conv286 = zext i8 %210 to i32
  %211 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  %call287 = call i32 @fputc(i32 %conv286, %struct._IO_FILE* %211) #5
  br label %if.end.288

if.end.288:                                       ; preds = %if.then.284, %for.end.282
  %212 = load i8*, i8** %f0258, align 8, !tbaa !1
  %213 = load i32, i32* %flag_size, align 4, !tbaa !19
  %conv289 = sext i32 %213 to i64
  %call290 = call i8* @memset(i8* %212, i32 0, i64 %conv289) #6
  store i32 0, i32* %y, align 4, !tbaa !19
  br label %for.cond.291

for.cond.291:                                     ; preds = %for.inc.301, %if.end.288
  %214 = load i32, i32* %y, align 4, !tbaa !19
  %215 = load i32, i32* %height, align 4, !tbaa !19
  %cmp292 = icmp slt i32 %214, %215
  br i1 %cmp292, label %for.body.294, label %for.end.303

for.body.294:                                     ; preds = %for.cond.291
  %216 = bitcast i8** %f2295 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %216) #2
  %217 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %218 = load i32, i32* %y, align 4, !tbaa !19
  %219 = load i32, i32* %depth.addr, align 4, !tbaa !19
  %arraydecay296 = getelementptr inbounds [17 x i8*], [17 x i8*]* %row, i32 0, i32 0
  %220 = load i8*, i8** %f1259, align 8, !tbaa !1
  %221 = load i8*, i8** %pixel, align 8, !tbaa !1
  %call297 = call i32 @mag_make_flag(%struct.gx_device_printer_s* %217, i32 %218, i32 %219, i8** %arraydecay296, i8* %220, i8* %221) #5
  %222 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %223 = load i32, i32* %flag_size, align 4, !tbaa !19
  %224 = load i8*, i8** %f0258, align 8, !tbaa !1
  %225 = load i8*, i8** %f1259, align 8, !tbaa !1
  %226 = load i8*, i8** %flag_a, align 8, !tbaa !1
  %227 = load i8*, i8** %flag_b, align 8, !tbaa !1
  %call298 = call i32 @mag_comp_flag(%struct.gx_device_printer_s* %222, i32 %223, i8* %224, i8* %225, i8* %226, i32 0, i8* %227) #5
  store i32 %call298, i32* %count, align 4, !tbaa !19
  %228 = load i8*, i8** %flag_b, align 8, !tbaa !1
  %229 = load i32, i32* %count, align 4, !tbaa !19
  %conv299 = sext i32 %229 to i64
  %230 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  %call300 = call i64 @fwrite(i8* %228, i64 %conv299, i64 1, %struct._IO_FILE* %230) #5
  %231 = load i8*, i8** %f0258, align 8, !tbaa !1
  store i8* %231, i8** %f2295, align 8, !tbaa !1
  %232 = load i8*, i8** %f1259, align 8, !tbaa !1
  store i8* %232, i8** %f0258, align 8, !tbaa !1
  %233 = load i8*, i8** %f2295, align 8, !tbaa !1
  store i8* %233, i8** %f1259, align 8, !tbaa !1
  %234 = bitcast i8** %f2295 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %234) #2
  br label %for.inc.301

for.inc.301:                                      ; preds = %for.body.294
  %235 = load i32, i32* %y, align 4, !tbaa !19
  %inc302 = add nsw i32 %235, 1
  store i32 %inc302, i32* %y, align 4, !tbaa !19
  br label %for.cond.291

for.end.303:                                      ; preds = %for.cond.291
  store i32 0, i32* %y, align 4, !tbaa !19
  br label %for.cond.304

for.cond.304:                                     ; preds = %for.inc.312, %for.end.303
  %236 = load i32, i32* %y, align 4, !tbaa !19
  %237 = load i32, i32* %height, align 4, !tbaa !19
  %cmp305 = icmp slt i32 %236, %237
  br i1 %cmp305, label %for.body.307, label %for.end.314

for.body.307:                                     ; preds = %for.cond.304
  %238 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %239 = load i32, i32* %y, align 4, !tbaa !19
  %240 = load i32, i32* %depth.addr, align 4, !tbaa !19
  %arraydecay308 = getelementptr inbounds [17 x i8*], [17 x i8*]* %row, i32 0, i32 0
  %241 = load i8*, i8** %f1259, align 8, !tbaa !1
  %242 = load i8*, i8** %pixel, align 8, !tbaa !1
  %call309 = call i32 @mag_make_flag(%struct.gx_device_printer_s* %238, i32 %239, i32 %240, i8** %arraydecay308, i8* %241, i8* %242) #5
  store i32 %call309, i32* %count, align 4, !tbaa !19
  %243 = load i8*, i8** %pixel, align 8, !tbaa !1
  %244 = load i32, i32* %count, align 4, !tbaa !19
  %conv310 = sext i32 %244 to i64
  %245 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  %call311 = call i64 @fwrite(i8* %243, i64 %conv310, i64 1, %struct._IO_FILE* %245) #5
  br label %for.inc.312

for.inc.312:                                      ; preds = %for.body.307
  %246 = load i32, i32* %y, align 4, !tbaa !19
  %inc313 = add nsw i32 %246, 1
  store i32 %inc313, i32* %y, align 4, !tbaa !19
  br label %for.cond.304

for.end.314:                                      ; preds = %for.cond.304
  %247 = bitcast i8** %f1259 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %247) #2
  %248 = bitcast i8** %f0258 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %248) #2
  %249 = bitcast i32* %next_bit to i8*
  call void @llvm.lifetime.end(i64 4, i8* %249) #2
  %250 = bitcast i32* %count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %250) #2
  br label %mag_done

mag_done:                                         ; preds = %for.end.314, %if.then
  %251 = load i8*, i8** %row_buffer, align 8, !tbaa !1
  %tobool315 = icmp ne i8* %251, null
  br i1 %tobool315, label %if.then.316, label %if.end.324

if.then.316:                                      ; preds = %mag_done
  %252 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory317 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %252, i32 0, i32 3
  %253 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory317, align 8, !tbaa !26
  %non_gc_memory318 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %253, i32 0, i32 3
  %254 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory318, align 8, !tbaa !27
  %non_gc_memory319 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %254, i32 0, i32 3
  %255 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory319, align 8, !tbaa !27
  %procs320 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %255, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs320, i32 0, i32 2
  %256 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !34
  %257 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory321 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %257, i32 0, i32 3
  %258 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory321, align 8, !tbaa !26
  %non_gc_memory322 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %258, i32 0, i32 3
  %259 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory322, align 8, !tbaa !27
  %non_gc_memory323 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %259, i32 0, i32 3
  %260 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory323, align 8, !tbaa !27
  %261 = load i8*, i8** %row_buffer, align 8, !tbaa !1
  call void %256(%struct.gs_memory_s* %260, i8* %261, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0)) #5
  br label %if.end.324

if.end.324:                                       ; preds = %if.then.316, %mag_done
  %262 = load i8*, i8** %flag, align 8, !tbaa !1
  %tobool325 = icmp ne i8* %262, null
  br i1 %tobool325, label %if.then.326, label %if.end.335

if.then.326:                                      ; preds = %if.end.324
  %263 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory327 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %263, i32 0, i32 3
  %264 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory327, align 8, !tbaa !26
  %non_gc_memory328 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %264, i32 0, i32 3
  %265 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory328, align 8, !tbaa !27
  %non_gc_memory329 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %265, i32 0, i32 3
  %266 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory329, align 8, !tbaa !27
  %procs330 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %266, i32 0, i32 1
  %free_object331 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs330, i32 0, i32 2
  %267 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object331, align 8, !tbaa !34
  %268 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory332 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %268, i32 0, i32 3
  %269 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory332, align 8, !tbaa !26
  %non_gc_memory333 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %269, i32 0, i32 3
  %270 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory333, align 8, !tbaa !27
  %non_gc_memory334 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %270, i32 0, i32 3
  %271 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory334, align 8, !tbaa !27
  %272 = load i8*, i8** %flag, align 8, !tbaa !1
  call void %267(%struct.gs_memory_s* %271, i8* %272, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0)) #5
  br label %if.end.335

if.end.335:                                       ; preds = %if.then.326, %if.end.324
  %273 = load i8*, i8** %flag_a, align 8, !tbaa !1
  %tobool336 = icmp ne i8* %273, null
  br i1 %tobool336, label %if.then.337, label %if.end.346

if.then.337:                                      ; preds = %if.end.335
  %274 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory338 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %274, i32 0, i32 3
  %275 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory338, align 8, !tbaa !26
  %non_gc_memory339 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %275, i32 0, i32 3
  %276 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory339, align 8, !tbaa !27
  %non_gc_memory340 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %276, i32 0, i32 3
  %277 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory340, align 8, !tbaa !27
  %procs341 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %277, i32 0, i32 1
  %free_object342 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs341, i32 0, i32 2
  %278 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object342, align 8, !tbaa !34
  %279 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory343 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %279, i32 0, i32 3
  %280 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory343, align 8, !tbaa !26
  %non_gc_memory344 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %280, i32 0, i32 3
  %281 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory344, align 8, !tbaa !27
  %non_gc_memory345 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %281, i32 0, i32 3
  %282 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory345, align 8, !tbaa !27
  %283 = load i8*, i8** %flag_a, align 8, !tbaa !1
  call void %278(%struct.gs_memory_s* %282, i8* %283, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i32 0, i32 0)) #5
  br label %if.end.346

if.end.346:                                       ; preds = %if.then.337, %if.end.335
  %284 = load i8*, i8** %flag_b, align 8, !tbaa !1
  %tobool347 = icmp ne i8* %284, null
  br i1 %tobool347, label %if.then.348, label %if.end.357

if.then.348:                                      ; preds = %if.end.346
  %285 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory349 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %285, i32 0, i32 3
  %286 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory349, align 8, !tbaa !26
  %non_gc_memory350 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %286, i32 0, i32 3
  %287 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory350, align 8, !tbaa !27
  %non_gc_memory351 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %287, i32 0, i32 3
  %288 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory351, align 8, !tbaa !27
  %procs352 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %288, i32 0, i32 1
  %free_object353 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs352, i32 0, i32 2
  %289 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object353, align 8, !tbaa !34
  %290 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory354 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %290, i32 0, i32 3
  %291 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory354, align 8, !tbaa !26
  %non_gc_memory355 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %291, i32 0, i32 3
  %292 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory355, align 8, !tbaa !27
  %non_gc_memory356 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %292, i32 0, i32 3
  %293 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory356, align 8, !tbaa !27
  %294 = load i8*, i8** %flag_b, align 8, !tbaa !1
  call void %289(%struct.gs_memory_s* %293, i8* %294, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i32 0, i32 0)) #5
  br label %if.end.357

if.end.357:                                       ; preds = %if.then.348, %if.end.346
  %295 = load i8*, i8** %pixel, align 8, !tbaa !1
  %tobool358 = icmp ne i8* %295, null
  br i1 %tobool358, label %if.then.359, label %if.end.368

if.then.359:                                      ; preds = %if.end.357
  %296 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory360 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %296, i32 0, i32 3
  %297 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory360, align 8, !tbaa !26
  %non_gc_memory361 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %297, i32 0, i32 3
  %298 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory361, align 8, !tbaa !27
  %non_gc_memory362 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %298, i32 0, i32 3
  %299 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory362, align 8, !tbaa !27
  %procs363 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %299, i32 0, i32 1
  %free_object364 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs363, i32 0, i32 2
  %300 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object364, align 8, !tbaa !34
  %301 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory365 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %301, i32 0, i32 3
  %302 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory365, align 8, !tbaa !26
  %non_gc_memory366 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %302, i32 0, i32 3
  %303 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory366, align 8, !tbaa !27
  %non_gc_memory367 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %303, i32 0, i32 3
  %304 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory367, align 8, !tbaa !27
  %305 = load i8*, i8** %pixel, align 8, !tbaa !1
  call void %300(%struct.gs_memory_s* %304, i8* %305, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i32 0, i32 0)) #5
  br label %if.end.368

if.end.368:                                       ; preds = %if.then.359, %if.end.357
  %306 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  %call369 = call i32 @fflush(%struct._IO_FILE* %306) #5
  %307 = load i32, i32* %code, align 4, !tbaa !19
  %308 = bitcast i32* %y to i8*
  call void @llvm.lifetime.end(i64 4, i8* %308) #2
  %309 = bitcast i64* %pixel_bytes to i8*
  call void @llvm.lifetime.end(i64 8, i8* %309) #2
  %310 = bitcast i64* %flag_b_bytes to i8*
  call void @llvm.lifetime.end(i64 8, i8* %310) #2
  %311 = bitcast i32* %flag_b_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %311) #2
  %312 = bitcast i32* %flag_a_bytes to i8*
  call void @llvm.lifetime.end(i64 4, i8* %312) #2
  %313 = bitcast i32* %flag_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %313) #2
  %314 = bitcast i32* %width_pixel to i8*
  call void @llvm.lifetime.end(i64 4, i8* %314) #2
  %315 = bitcast i32* %width to i8*
  call void @llvm.lifetime.end(i64 4, i8* %315) #2
  %316 = bitcast i32* %height to i8*
  call void @llvm.lifetime.end(i64 4, i8* %316) #2
  %317 = bitcast i32* %raster to i8*
  call void @llvm.lifetime.end(i64 4, i8* %317) #2
  %318 = bitcast i8** %pixel to i8*
  call void @llvm.lifetime.end(i64 8, i8* %318) #2
  %319 = bitcast [17 x i8*]* %row to i8*
  call void @llvm.lifetime.end(i64 136, i8* %319) #2
  %320 = bitcast i8** %row_buffer to i8*
  call void @llvm.lifetime.end(i64 8, i8* %320) #2
  %321 = bitcast i8** %flag_b to i8*
  call void @llvm.lifetime.end(i64 8, i8* %321) #2
  %322 = bitcast i8** %flag_a to i8*
  call void @llvm.lifetime.end(i64 8, i8* %322) #2
  %323 = bitcast i8** %flag_prev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %323) #2
  %324 = bitcast i8** %flag to i8*
  call void @llvm.lifetime.end(i64 8, i8* %324) #2
  %325 = bitcast [32 x i8]* %header to i8*
  call void @llvm.lifetime.end(i64 32, i8* %325) #2
  %326 = bitcast [256 x i8]* %check to i8*
  call void @llvm.lifetime.end(i64 256, i8* %326) #2
  %327 = bitcast i8** %user to i8*
  call void @llvm.lifetime.end(i64 8, i8* %327) #2
  %328 = bitcast i8** %magic to i8*
  call void @llvm.lifetime.end(i64 8, i8* %328) #2
  %329 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %329) #2
  ret i32 %307
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: nounwind
declare i8* @getenv(i8*) #3

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #2

declare i32 @gx_device_raster(%struct.gx_device_s*, i32) #0

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #3

declare i32 @gs_sprintf(i8*, i8*, ...) #0

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

; Function Attrs: nounwind
declare i8* @memset(i8*, i32, i64) #3

; Function Attrs: nounwind uwtable
define internal i32 @mag_make_flag(%struct.gx_device_printer_s* %pdev, i32 %line_no, i32 %depth, i8** %row, i8* %flag, i8* %pixel) #1 {
entry:
  %pdev.addr = alloca %struct.gx_device_printer_s*, align 8
  %line_no.addr = alloca i32, align 4
  %depth.addr = alloca i32, align 4
  %row.addr = alloca i8**, align 8
  %flag.addr = alloca i8*, align 8
  %pixel.addr = alloca i8*, align 8
  %x = alloca i32, align 4
  %raster = alloca i32, align 4
  %ppixel = alloca i8*, align 8
  %prow = alloca i8*, align 8
  store %struct.gx_device_printer_s* %pdev, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  store i32 %line_no, i32* %line_no.addr, align 4, !tbaa !19
  store i32 %depth, i32* %depth.addr, align 4, !tbaa !19
  store i8** %row, i8*** %row.addr, align 8, !tbaa !1
  store i8* %flag, i8** %flag.addr, align 8, !tbaa !1
  store i8* %pixel, i8** %pixel.addr, align 8, !tbaa !1
  %0 = bitcast i32* %x to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast i32* %raster to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %3 = bitcast %struct.gx_device_printer_s* %2 to %struct.gx_device_s*
  %call = call i32 @gx_device_raster(%struct.gx_device_s* %3, i32 0) #5
  store i32 %call, i32* %raster, align 4, !tbaa !19
  %4 = bitcast i8** %ppixel to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #2
  %5 = load i8*, i8** %pixel.addr, align 8, !tbaa !1
  store i8* %5, i8** %ppixel, align 8, !tbaa !1
  %6 = bitcast i8** %prow to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #2
  %7 = load i8**, i8*** %row.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8*, i8** %7, i64 16
  %8 = load i8*, i8** %arrayidx, align 8, !tbaa !1
  store i8* %8, i8** %prow, align 8, !tbaa !1
  store i32 16, i32* %x, align 4, !tbaa !19
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %9 = load i32, i32* %x, align 4, !tbaa !19
  %cmp = icmp sgt i32 %9, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load i32, i32* %x, align 4, !tbaa !19
  %sub = sub nsw i32 %10, 1
  %idxprom = sext i32 %sub to i64
  %11 = load i8**, i8*** %row.addr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds i8*, i8** %11, i64 %idxprom
  %12 = load i8*, i8** %arrayidx1, align 8, !tbaa !1
  %13 = load i32, i32* %x, align 4, !tbaa !19
  %idxprom2 = sext i32 %13 to i64
  %14 = load i8**, i8*** %row.addr, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds i8*, i8** %14, i64 %idxprom2
  store i8* %12, i8** %arrayidx3, align 8, !tbaa !1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %15 = load i32, i32* %x, align 4, !tbaa !19
  %dec = add nsw i32 %15, -1
  store i32 %dec, i32* %x, align 4, !tbaa !19
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %16 = load i8*, i8** %prow, align 8, !tbaa !1
  %17 = load i8**, i8*** %row.addr, align 8, !tbaa !1
  %arrayidx4 = getelementptr inbounds i8*, i8** %17, i64 0
  store i8* %16, i8** %arrayidx4, align 8, !tbaa !1
  %18 = bitcast i8** %prow to i8*
  call void @llvm.lifetime.end(i64 8, i8* %18) #2
  %19 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %20 = load i32, i32* %line_no.addr, align 4, !tbaa !19
  %21 = load i8**, i8*** %row.addr, align 8, !tbaa !1
  %arrayidx5 = getelementptr inbounds i8*, i8** %21, i64 0
  %22 = load i8*, i8** %arrayidx5, align 8, !tbaa !1
  %23 = load i32, i32* %raster, align 4, !tbaa !19
  %call6 = call i32 @gdev_prn_copy_scan_lines(%struct.gx_device_printer_s* %19, i32 %20, i8* %22, i32 %23) #5
  %24 = load i32, i32* %depth.addr, align 4, !tbaa !19
  %cmp7 = icmp eq i32 %24, 4
  br i1 %cmp7, label %if.then, label %if.end.30

if.then:                                          ; preds = %for.end
  store i32 0, i32* %x, align 4, !tbaa !19
  br label %for.cond.8

for.cond.8:                                       ; preds = %for.inc.27, %if.then
  %25 = load i32, i32* %x, align 4, !tbaa !19
  %26 = load i32, i32* %raster, align 4, !tbaa !19
  %cmp9 = icmp slt i32 %25, %26
  br i1 %cmp9, label %for.body.10, label %for.end.28

for.body.10:                                      ; preds = %for.cond.8
  %27 = load i32, i32* %x, align 4, !tbaa !19
  %and = and i32 %27, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then.11, label %if.else

if.then.11:                                       ; preds = %for.body.10
  %28 = load i8**, i8*** %row.addr, align 8, !tbaa !1
  %arrayidx12 = getelementptr inbounds i8*, i8** %28, i64 0
  %29 = load i8*, i8** %arrayidx12, align 8, !tbaa !1
  %30 = load i32, i32* %x, align 4, !tbaa !19
  %idx.ext = sext i32 %30 to i64
  %add.ptr = getelementptr inbounds i8, i8* %29, i64 %idx.ext
  %31 = load i8, i8* %add.ptr, align 1, !tbaa !33
  %conv = zext i8 %31 to i32
  %32 = load i8**, i8*** %row.addr, align 8, !tbaa !1
  %arrayidx13 = getelementptr inbounds i8*, i8** %32, i64 0
  %33 = load i8*, i8** %arrayidx13, align 8, !tbaa !1
  %34 = load i32, i32* %x, align 4, !tbaa !19
  %div = sdiv i32 %34, 2
  %idx.ext14 = sext i32 %div to i64
  %add.ptr15 = getelementptr inbounds i8, i8* %33, i64 %idx.ext14
  %35 = load i8, i8* %add.ptr15, align 1, !tbaa !33
  %conv16 = zext i8 %35 to i32
  %or = or i32 %conv16, %conv
  %conv17 = trunc i32 %or to i8
  store i8 %conv17, i8* %add.ptr15, align 1, !tbaa !33
  br label %if.end

if.else:                                          ; preds = %for.body.10
  %36 = load i8**, i8*** %row.addr, align 8, !tbaa !1
  %arrayidx18 = getelementptr inbounds i8*, i8** %36, i64 0
  %37 = load i8*, i8** %arrayidx18, align 8, !tbaa !1
  %38 = load i32, i32* %x, align 4, !tbaa !19
  %idx.ext19 = sext i32 %38 to i64
  %add.ptr20 = getelementptr inbounds i8, i8* %37, i64 %idx.ext19
  %39 = load i8, i8* %add.ptr20, align 1, !tbaa !33
  %conv21 = zext i8 %39 to i32
  %shl = shl i32 %conv21, 4
  %conv22 = trunc i32 %shl to i8
  %40 = load i8**, i8*** %row.addr, align 8, !tbaa !1
  %arrayidx23 = getelementptr inbounds i8*, i8** %40, i64 0
  %41 = load i8*, i8** %arrayidx23, align 8, !tbaa !1
  %42 = load i32, i32* %x, align 4, !tbaa !19
  %div24 = sdiv i32 %42, 2
  %idx.ext25 = sext i32 %div24 to i64
  %add.ptr26 = getelementptr inbounds i8, i8* %41, i64 %idx.ext25
  store i8 %conv22, i8* %add.ptr26, align 1, !tbaa !33
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.11
  br label %for.inc.27

for.inc.27:                                       ; preds = %if.end
  %43 = load i32, i32* %x, align 4, !tbaa !19
  %inc = add nsw i32 %43, 1
  store i32 %inc, i32* %x, align 4, !tbaa !19
  br label %for.cond.8

for.end.28:                                       ; preds = %for.cond.8
  %44 = load i32, i32* %raster, align 4, !tbaa !19
  %add = add nsw i32 %44, 1
  %div29 = sdiv i32 %add, 2
  store i32 %div29, i32* %raster, align 4, !tbaa !19
  br label %if.end.30

if.end.30:                                        ; preds = %for.end.28, %for.end
  store i32 0, i32* %x, align 4, !tbaa !19
  br label %for.cond.31

for.cond.31:                                      ; preds = %for.inc.802, %if.end.30
  %45 = load i32, i32* %x, align 4, !tbaa !19
  %46 = load i32, i32* %raster, align 4, !tbaa !19
  %cmp32 = icmp slt i32 %45, %46
  br i1 %cmp32, label %for.body.34, label %for.end.804

for.body.34:                                      ; preds = %for.cond.31
  %47 = load i32, i32* %x, align 4, !tbaa !19
  %cmp35 = icmp sge i32 %47, 2
  br i1 %cmp35, label %land.lhs.true, label %if.else.77

land.lhs.true:                                    ; preds = %for.body.34
  %48 = load i32, i32* %line_no.addr, align 4, !tbaa !19
  %cmp37 = icmp sge i32 %48, 0
  br i1 %cmp37, label %land.lhs.true.39, label %if.else.77

land.lhs.true.39:                                 ; preds = %land.lhs.true
  %49 = load i8**, i8*** %row.addr, align 8, !tbaa !1
  %arrayidx40 = getelementptr inbounds i8*, i8** %49, i64 0
  %50 = load i8*, i8** %arrayidx40, align 8, !tbaa !1
  %51 = load i32, i32* %x, align 4, !tbaa !19
  %idx.ext41 = sext i32 %51 to i64
  %add.ptr42 = getelementptr inbounds i8, i8* %50, i64 %idx.ext41
  %52 = load i8, i8* %add.ptr42, align 1, !tbaa !33
  %conv43 = zext i8 %52 to i32
  %53 = load i8**, i8*** %row.addr, align 8, !tbaa !1
  %arrayidx44 = getelementptr inbounds i8*, i8** %53, i64 0
  %54 = load i8*, i8** %arrayidx44, align 8, !tbaa !1
  %55 = load i32, i32* %x, align 4, !tbaa !19
  %sub45 = sub nsw i32 %55, 2
  %idx.ext46 = sext i32 %sub45 to i64
  %add.ptr47 = getelementptr inbounds i8, i8* %54, i64 %idx.ext46
  %56 = load i8, i8* %add.ptr47, align 1, !tbaa !33
  %conv48 = zext i8 %56 to i32
  %cmp49 = icmp eq i32 %conv43, %conv48
  br i1 %cmp49, label %land.lhs.true.51, label %if.else.77

land.lhs.true.51:                                 ; preds = %land.lhs.true.39
  %57 = load i8**, i8*** %row.addr, align 8, !tbaa !1
  %arrayidx52 = getelementptr inbounds i8*, i8** %57, i64 0
  %58 = load i8*, i8** %arrayidx52, align 8, !tbaa !1
  %59 = load i32, i32* %x, align 4, !tbaa !19
  %idx.ext53 = sext i32 %59 to i64
  %add.ptr54 = getelementptr inbounds i8, i8* %58, i64 %idx.ext53
  %add.ptr55 = getelementptr inbounds i8, i8* %add.ptr54, i64 1
  %60 = load i8, i8* %add.ptr55, align 1, !tbaa !33
  %conv56 = zext i8 %60 to i32
  %61 = load i8**, i8*** %row.addr, align 8, !tbaa !1
  %arrayidx57 = getelementptr inbounds i8*, i8** %61, i64 0
  %62 = load i8*, i8** %arrayidx57, align 8, !tbaa !1
  %63 = load i32, i32* %x, align 4, !tbaa !19
  %add58 = add nsw i32 %63, 1
  %sub59 = sub nsw i32 %add58, 2
  %idx.ext60 = sext i32 %sub59 to i64
  %add.ptr61 = getelementptr inbounds i8, i8* %62, i64 %idx.ext60
  %64 = load i8, i8* %add.ptr61, align 1, !tbaa !33
  %conv62 = zext i8 %64 to i32
  %cmp63 = icmp eq i32 %conv56, %conv62
  br i1 %cmp63, label %if.then.65, label %if.else.77

if.then.65:                                       ; preds = %land.lhs.true.51
  %65 = load i32, i32* %x, align 4, !tbaa !19
  %and66 = and i32 %65, 2
  %tobool67 = icmp ne i32 %and66, 0
  br i1 %tobool67, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.65
  %66 = load i32, i32* %x, align 4, !tbaa !19
  %shr = ashr i32 %66, 2
  %idxprom68 = sext i32 %shr to i64
  %67 = load i8*, i8** %flag.addr, align 8, !tbaa !1
  %arrayidx69 = getelementptr inbounds i8, i8* %67, i64 %idxprom68
  %68 = load i8, i8* %arrayidx69, align 1, !tbaa !33
  %conv70 = zext i8 %68 to i32
  %or71 = or i32 %conv70, 1
  %conv72 = trunc i32 %or71 to i8
  store i8 %conv72, i8* %arrayidx69, align 1, !tbaa !33
  %conv73 = zext i8 %conv72 to i32
  br label %cond.end

cond.false:                                       ; preds = %if.then.65
  %69 = load i32, i32* %x, align 4, !tbaa !19
  %shr74 = ashr i32 %69, 2
  %idxprom75 = sext i32 %shr74 to i64
  %70 = load i8*, i8** %flag.addr, align 8, !tbaa !1
  %arrayidx76 = getelementptr inbounds i8, i8* %70, i64 %idxprom75
  store i8 16, i8* %arrayidx76, align 1, !tbaa !33
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv73, %cond.true ], [ 16, %cond.false ]
  br label %if.end.801

if.else.77:                                       ; preds = %land.lhs.true.51, %land.lhs.true.39, %land.lhs.true, %for.body.34
  %71 = load i32, i32* %x, align 4, !tbaa !19
  %cmp78 = icmp sge i32 %71, 0
  br i1 %cmp78, label %land.lhs.true.80, label %if.else.126

land.lhs.true.80:                                 ; preds = %if.else.77
  %72 = load i32, i32* %line_no.addr, align 4, !tbaa !19
  %cmp81 = icmp sge i32 %72, 1
  br i1 %cmp81, label %land.lhs.true.83, label %if.else.126

land.lhs.true.83:                                 ; preds = %land.lhs.true.80
  %73 = load i8**, i8*** %row.addr, align 8, !tbaa !1
  %arrayidx84 = getelementptr inbounds i8*, i8** %73, i64 0
  %74 = load i8*, i8** %arrayidx84, align 8, !tbaa !1
  %75 = load i32, i32* %x, align 4, !tbaa !19
  %idx.ext85 = sext i32 %75 to i64
  %add.ptr86 = getelementptr inbounds i8, i8* %74, i64 %idx.ext85
  %76 = load i8, i8* %add.ptr86, align 1, !tbaa !33
  %conv87 = zext i8 %76 to i32
  %77 = load i8**, i8*** %row.addr, align 8, !tbaa !1
  %arrayidx88 = getelementptr inbounds i8*, i8** %77, i64 1
  %78 = load i8*, i8** %arrayidx88, align 8, !tbaa !1
  %79 = load i32, i32* %x, align 4, !tbaa !19
  %sub89 = sub nsw i32 %79, 0
  %idx.ext90 = sext i32 %sub89 to i64
  %add.ptr91 = getelementptr inbounds i8, i8* %78, i64 %idx.ext90
  %80 = load i8, i8* %add.ptr91, align 1, !tbaa !33
  %conv92 = zext i8 %80 to i32
  %cmp93 = icmp eq i32 %conv87, %conv92
  br i1 %cmp93, label %land.lhs.true.95, label %if.else.126

land.lhs.true.95:                                 ; preds = %land.lhs.true.83
  %81 = load i8**, i8*** %row.addr, align 8, !tbaa !1
  %arrayidx96 = getelementptr inbounds i8*, i8** %81, i64 0
  %82 = load i8*, i8** %arrayidx96, align 8, !tbaa !1
  %83 = load i32, i32* %x, align 4, !tbaa !19
  %idx.ext97 = sext i32 %83 to i64
  %add.ptr98 = getelementptr inbounds i8, i8* %82, i64 %idx.ext97
  %add.ptr99 = getelementptr inbounds i8, i8* %add.ptr98, i64 1
  %84 = load i8, i8* %add.ptr99, align 1, !tbaa !33
  %conv100 = zext i8 %84 to i32
  %85 = load i8**, i8*** %row.addr, align 8, !tbaa !1
  %arrayidx101 = getelementptr inbounds i8*, i8** %85, i64 1
  %86 = load i8*, i8** %arrayidx101, align 8, !tbaa !1
  %87 = load i32, i32* %x, align 4, !tbaa !19
  %add102 = add nsw i32 %87, 1
  %sub103 = sub nsw i32 %add102, 0
  %idx.ext104 = sext i32 %sub103 to i64
  %add.ptr105 = getelementptr inbounds i8, i8* %86, i64 %idx.ext104
  %88 = load i8, i8* %add.ptr105, align 1, !tbaa !33
  %conv106 = zext i8 %88 to i32
  %cmp107 = icmp eq i32 %conv100, %conv106
  br i1 %cmp107, label %if.then.109, label %if.else.126

if.then.109:                                      ; preds = %land.lhs.true.95
  %89 = load i32, i32* %x, align 4, !tbaa !19
  %and110 = and i32 %89, 2
  %tobool111 = icmp ne i32 %and110, 0
  br i1 %tobool111, label %cond.true.112, label %cond.false.120

cond.true.112:                                    ; preds = %if.then.109
  %90 = load i32, i32* %x, align 4, !tbaa !19
  %shr113 = ashr i32 %90, 2
  %idxprom114 = sext i32 %shr113 to i64
  %91 = load i8*, i8** %flag.addr, align 8, !tbaa !1
  %arrayidx115 = getelementptr inbounds i8, i8* %91, i64 %idxprom114
  %92 = load i8, i8* %arrayidx115, align 1, !tbaa !33
  %conv116 = zext i8 %92 to i32
  %or117 = or i32 %conv116, 4
  %conv118 = trunc i32 %or117 to i8
  store i8 %conv118, i8* %arrayidx115, align 1, !tbaa !33
  %conv119 = zext i8 %conv118 to i32
  br label %cond.end.124

cond.false.120:                                   ; preds = %if.then.109
  %93 = load i32, i32* %x, align 4, !tbaa !19
  %shr121 = ashr i32 %93, 2
  %idxprom122 = sext i32 %shr121 to i64
  %94 = load i8*, i8** %flag.addr, align 8, !tbaa !1
  %arrayidx123 = getelementptr inbounds i8, i8* %94, i64 %idxprom122
  store i8 64, i8* %arrayidx123, align 1, !tbaa !33
  br label %cond.end.124

cond.end.124:                                     ; preds = %cond.false.120, %cond.true.112
  %cond125 = phi i32 [ %conv119, %cond.true.112 ], [ 64, %cond.false.120 ]
  br label %if.end.800

if.else.126:                                      ; preds = %land.lhs.true.95, %land.lhs.true.83, %land.lhs.true.80, %if.else.77
  %95 = load i32, i32* %x, align 4, !tbaa !19
  %cmp127 = icmp sge i32 %95, 2
  br i1 %cmp127, label %land.lhs.true.129, label %if.else.175

land.lhs.true.129:                                ; preds = %if.else.126
  %96 = load i32, i32* %line_no.addr, align 4, !tbaa !19
  %cmp130 = icmp sge i32 %96, 1
  br i1 %cmp130, label %land.lhs.true.132, label %if.else.175

land.lhs.true.132:                                ; preds = %land.lhs.true.129
  %97 = load i8**, i8*** %row.addr, align 8, !tbaa !1
  %arrayidx133 = getelementptr inbounds i8*, i8** %97, i64 0
  %98 = load i8*, i8** %arrayidx133, align 8, !tbaa !1
  %99 = load i32, i32* %x, align 4, !tbaa !19
  %idx.ext134 = sext i32 %99 to i64
  %add.ptr135 = getelementptr inbounds i8, i8* %98, i64 %idx.ext134
  %100 = load i8, i8* %add.ptr135, align 1, !tbaa !33
  %conv136 = zext i8 %100 to i32
  %101 = load i8**, i8*** %row.addr, align 8, !tbaa !1
  %arrayidx137 = getelementptr inbounds i8*, i8** %101, i64 1
  %102 = load i8*, i8** %arrayidx137, align 8, !tbaa !1
  %103 = load i32, i32* %x, align 4, !tbaa !19
  %sub138 = sub nsw i32 %103, 2
  %idx.ext139 = sext i32 %sub138 to i64
  %add.ptr140 = getelementptr inbounds i8, i8* %102, i64 %idx.ext139
  %104 = load i8, i8* %add.ptr140, align 1, !tbaa !33
  %conv141 = zext i8 %104 to i32
  %cmp142 = icmp eq i32 %conv136, %conv141
  br i1 %cmp142, label %land.lhs.true.144, label %if.else.175

land.lhs.true.144:                                ; preds = %land.lhs.true.132
  %105 = load i8**, i8*** %row.addr, align 8, !tbaa !1
  %arrayidx145 = getelementptr inbounds i8*, i8** %105, i64 0
  %106 = load i8*, i8** %arrayidx145, align 8, !tbaa !1
  %107 = load i32, i32* %x, align 4, !tbaa !19
  %idx.ext146 = sext i32 %107 to i64
  %add.ptr147 = getelementptr inbounds i8, i8* %106, i64 %idx.ext146
  %add.ptr148 = getelementptr inbounds i8, i8* %add.ptr147, i64 1
  %108 = load i8, i8* %add.ptr148, align 1, !tbaa !33
  %conv149 = zext i8 %108 to i32
  %109 = load i8**, i8*** %row.addr, align 8, !tbaa !1
  %arrayidx150 = getelementptr inbounds i8*, i8** %109, i64 1
  %110 = load i8*, i8** %arrayidx150, align 8, !tbaa !1
  %111 = load i32, i32* %x, align 4, !tbaa !19
  %add151 = add nsw i32 %111, 1
  %sub152 = sub nsw i32 %add151, 2
  %idx.ext153 = sext i32 %sub152 to i64
  %add.ptr154 = getelementptr inbounds i8, i8* %110, i64 %idx.ext153
  %112 = load i8, i8* %add.ptr154, align 1, !tbaa !33
  %conv155 = zext i8 %112 to i32
  %cmp156 = icmp eq i32 %conv149, %conv155
  br i1 %cmp156, label %if.then.158, label %if.else.175

if.then.158:                                      ; preds = %land.lhs.true.144
  %113 = load i32, i32* %x, align 4, !tbaa !19
  %and159 = and i32 %113, 2
  %tobool160 = icmp ne i32 %and159, 0
  br i1 %tobool160, label %cond.true.161, label %cond.false.169

cond.true.161:                                    ; preds = %if.then.158
  %114 = load i32, i32* %x, align 4, !tbaa !19
  %shr162 = ashr i32 %114, 2
  %idxprom163 = sext i32 %shr162 to i64
  %115 = load i8*, i8** %flag.addr, align 8, !tbaa !1
  %arrayidx164 = getelementptr inbounds i8, i8* %115, i64 %idxprom163
  %116 = load i8, i8* %arrayidx164, align 1, !tbaa !33
  %conv165 = zext i8 %116 to i32
  %or166 = or i32 %conv165, 5
  %conv167 = trunc i32 %or166 to i8
  store i8 %conv167, i8* %arrayidx164, align 1, !tbaa !33
  %conv168 = zext i8 %conv167 to i32
  br label %cond.end.173

cond.false.169:                                   ; preds = %if.then.158
  %117 = load i32, i32* %x, align 4, !tbaa !19
  %shr170 = ashr i32 %117, 2
  %idxprom171 = sext i32 %shr170 to i64
  %118 = load i8*, i8** %flag.addr, align 8, !tbaa !1
  %arrayidx172 = getelementptr inbounds i8, i8* %118, i64 %idxprom171
  store i8 80, i8* %arrayidx172, align 1, !tbaa !33
  br label %cond.end.173

cond.end.173:                                     ; preds = %cond.false.169, %cond.true.161
  %cond174 = phi i32 [ %conv168, %cond.true.161 ], [ 80, %cond.false.169 ]
  br label %if.end.799

if.else.175:                                      ; preds = %land.lhs.true.144, %land.lhs.true.132, %land.lhs.true.129, %if.else.126
  %119 = load i32, i32* %x, align 4, !tbaa !19
  %cmp176 = icmp sge i32 %119, 0
  br i1 %cmp176, label %land.lhs.true.178, label %if.else.224

land.lhs.true.178:                                ; preds = %if.else.175
  %120 = load i32, i32* %line_no.addr, align 4, !tbaa !19
  %cmp179 = icmp sge i32 %120, 2
  br i1 %cmp179, label %land.lhs.true.181, label %if.else.224

land.lhs.true.181:                                ; preds = %land.lhs.true.178
  %121 = load i8**, i8*** %row.addr, align 8, !tbaa !1
  %arrayidx182 = getelementptr inbounds i8*, i8** %121, i64 0
  %122 = load i8*, i8** %arrayidx182, align 8, !tbaa !1
  %123 = load i32, i32* %x, align 4, !tbaa !19
  %idx.ext183 = sext i32 %123 to i64
  %add.ptr184 = getelementptr inbounds i8, i8* %122, i64 %idx.ext183
  %124 = load i8, i8* %add.ptr184, align 1, !tbaa !33
  %conv185 = zext i8 %124 to i32
  %125 = load i8**, i8*** %row.addr, align 8, !tbaa !1
  %arrayidx186 = getelementptr inbounds i8*, i8** %125, i64 2
  %126 = load i8*, i8** %arrayidx186, align 8, !tbaa !1
  %127 = load i32, i32* %x, align 4, !tbaa !19
  %sub187 = sub nsw i32 %127, 0
  %idx.ext188 = sext i32 %sub187 to i64
  %add.ptr189 = getelementptr inbounds i8, i8* %126, i64 %idx.ext188
  %128 = load i8, i8* %add.ptr189, align 1, !tbaa !33
  %conv190 = zext i8 %128 to i32
  %cmp191 = icmp eq i32 %conv185, %conv190
  br i1 %cmp191, label %land.lhs.true.193, label %if.else.224

land.lhs.true.193:                                ; preds = %land.lhs.true.181
  %129 = load i8**, i8*** %row.addr, align 8, !tbaa !1
  %arrayidx194 = getelementptr inbounds i8*, i8** %129, i64 0
  %130 = load i8*, i8** %arrayidx194, align 8, !tbaa !1
  %131 = load i32, i32* %x, align 4, !tbaa !19
  %idx.ext195 = sext i32 %131 to i64
  %add.ptr196 = getelementptr inbounds i8, i8* %130, i64 %idx.ext195
  %add.ptr197 = getelementptr inbounds i8, i8* %add.ptr196, i64 1
  %132 = load i8, i8* %add.ptr197, align 1, !tbaa !33
  %conv198 = zext i8 %132 to i32
  %133 = load i8**, i8*** %row.addr, align 8, !tbaa !1
  %arrayidx199 = getelementptr inbounds i8*, i8** %133, i64 2
  %134 = load i8*, i8** %arrayidx199, align 8, !tbaa !1
  %135 = load i32, i32* %x, align 4, !tbaa !19
  %add200 = add nsw i32 %135, 1
  %sub201 = sub nsw i32 %add200, 0
  %idx.ext202 = sext i32 %sub201 to i64
  %add.ptr203 = getelementptr inbounds i8, i8* %134, i64 %idx.ext202
  %136 = load i8, i8* %add.ptr203, align 1, !tbaa !33
  %conv204 = zext i8 %136 to i32
  %cmp205 = icmp eq i32 %conv198, %conv204
  br i1 %cmp205, label %if.then.207, label %if.else.224

if.then.207:                                      ; preds = %land.lhs.true.193
  %137 = load i32, i32* %x, align 4, !tbaa !19
  %and208 = and i32 %137, 2
  %tobool209 = icmp ne i32 %and208, 0
  br i1 %tobool209, label %cond.true.210, label %cond.false.218

cond.true.210:                                    ; preds = %if.then.207
  %138 = load i32, i32* %x, align 4, !tbaa !19
  %shr211 = ashr i32 %138, 2
  %idxprom212 = sext i32 %shr211 to i64
  %139 = load i8*, i8** %flag.addr, align 8, !tbaa !1
  %arrayidx213 = getelementptr inbounds i8, i8* %139, i64 %idxprom212
  %140 = load i8, i8* %arrayidx213, align 1, !tbaa !33
  %conv214 = zext i8 %140 to i32
  %or215 = or i32 %conv214, 6
  %conv216 = trunc i32 %or215 to i8
  store i8 %conv216, i8* %arrayidx213, align 1, !tbaa !33
  %conv217 = zext i8 %conv216 to i32
  br label %cond.end.222

cond.false.218:                                   ; preds = %if.then.207
  %141 = load i32, i32* %x, align 4, !tbaa !19
  %shr219 = ashr i32 %141, 2
  %idxprom220 = sext i32 %shr219 to i64
  %142 = load i8*, i8** %flag.addr, align 8, !tbaa !1
  %arrayidx221 = getelementptr inbounds i8, i8* %142, i64 %idxprom220
  store i8 96, i8* %arrayidx221, align 1, !tbaa !33
  br label %cond.end.222

cond.end.222:                                     ; preds = %cond.false.218, %cond.true.210
  %cond223 = phi i32 [ %conv217, %cond.true.210 ], [ 96, %cond.false.218 ]
  br label %if.end.798

if.else.224:                                      ; preds = %land.lhs.true.193, %land.lhs.true.181, %land.lhs.true.178, %if.else.175
  %143 = load i32, i32* %x, align 4, !tbaa !19
  %cmp225 = icmp sge i32 %143, 2
  br i1 %cmp225, label %land.lhs.true.227, label %if.else.273

land.lhs.true.227:                                ; preds = %if.else.224
  %144 = load i32, i32* %line_no.addr, align 4, !tbaa !19
  %cmp228 = icmp sge i32 %144, 2
  br i1 %cmp228, label %land.lhs.true.230, label %if.else.273

land.lhs.true.230:                                ; preds = %land.lhs.true.227
  %145 = load i8**, i8*** %row.addr, align 8, !tbaa !1
  %arrayidx231 = getelementptr inbounds i8*, i8** %145, i64 0
  %146 = load i8*, i8** %arrayidx231, align 8, !tbaa !1
  %147 = load i32, i32* %x, align 4, !tbaa !19
  %idx.ext232 = sext i32 %147 to i64
  %add.ptr233 = getelementptr inbounds i8, i8* %146, i64 %idx.ext232
  %148 = load i8, i8* %add.ptr233, align 1, !tbaa !33
  %conv234 = zext i8 %148 to i32
  %149 = load i8**, i8*** %row.addr, align 8, !tbaa !1
  %arrayidx235 = getelementptr inbounds i8*, i8** %149, i64 2
  %150 = load i8*, i8** %arrayidx235, align 8, !tbaa !1
  %151 = load i32, i32* %x, align 4, !tbaa !19
  %sub236 = sub nsw i32 %151, 2
  %idx.ext237 = sext i32 %sub236 to i64
  %add.ptr238 = getelementptr inbounds i8, i8* %150, i64 %idx.ext237
  %152 = load i8, i8* %add.ptr238, align 1, !tbaa !33
  %conv239 = zext i8 %152 to i32
  %cmp240 = icmp eq i32 %conv234, %conv239
  br i1 %cmp240, label %land.lhs.true.242, label %if.else.273

land.lhs.true.242:                                ; preds = %land.lhs.true.230
  %153 = load i8**, i8*** %row.addr, align 8, !tbaa !1
  %arrayidx243 = getelementptr inbounds i8*, i8** %153, i64 0
  %154 = load i8*, i8** %arrayidx243, align 8, !tbaa !1
  %155 = load i32, i32* %x, align 4, !tbaa !19
  %idx.ext244 = sext i32 %155 to i64
  %add.ptr245 = getelementptr inbounds i8, i8* %154, i64 %idx.ext244
  %add.ptr246 = getelementptr inbounds i8, i8* %add.ptr245, i64 1
  %156 = load i8, i8* %add.ptr246, align 1, !tbaa !33
  %conv247 = zext i8 %156 to i32
  %157 = load i8**, i8*** %row.addr, align 8, !tbaa !1
  %arrayidx248 = getelementptr inbounds i8*, i8** %157, i64 2
  %158 = load i8*, i8** %arrayidx248, align 8, !tbaa !1
  %159 = load i32, i32* %x, align 4, !tbaa !19
  %add249 = add nsw i32 %159, 1
  %sub250 = sub nsw i32 %add249, 2
  %idx.ext251 = sext i32 %sub250 to i64
  %add.ptr252 = getelementptr inbounds i8, i8* %158, i64 %idx.ext251
  %160 = load i8, i8* %add.ptr252, align 1, !tbaa !33
  %conv253 = zext i8 %160 to i32
  %cmp254 = icmp eq i32 %conv247, %conv253
  br i1 %cmp254, label %if.then.256, label %if.else.273

if.then.256:                                      ; preds = %land.lhs.true.242
  %161 = load i32, i32* %x, align 4, !tbaa !19
  %and257 = and i32 %161, 2
  %tobool258 = icmp ne i32 %and257, 0
  br i1 %tobool258, label %cond.true.259, label %cond.false.267

cond.true.259:                                    ; preds = %if.then.256
  %162 = load i32, i32* %x, align 4, !tbaa !19
  %shr260 = ashr i32 %162, 2
  %idxprom261 = sext i32 %shr260 to i64
  %163 = load i8*, i8** %flag.addr, align 8, !tbaa !1
  %arrayidx262 = getelementptr inbounds i8, i8* %163, i64 %idxprom261
  %164 = load i8, i8* %arrayidx262, align 1, !tbaa !33
  %conv263 = zext i8 %164 to i32
  %or264 = or i32 %conv263, 7
  %conv265 = trunc i32 %or264 to i8
  store i8 %conv265, i8* %arrayidx262, align 1, !tbaa !33
  %conv266 = zext i8 %conv265 to i32
  br label %cond.end.271

cond.false.267:                                   ; preds = %if.then.256
  %165 = load i32, i32* %x, align 4, !tbaa !19
  %shr268 = ashr i32 %165, 2
  %idxprom269 = sext i32 %shr268 to i64
  %166 = load i8*, i8** %flag.addr, align 8, !tbaa !1
  %arrayidx270 = getelementptr inbounds i8, i8* %166, i64 %idxprom269
  store i8 112, i8* %arrayidx270, align 1, !tbaa !33
  br label %cond.end.271

cond.end.271:                                     ; preds = %cond.false.267, %cond.true.259
  %cond272 = phi i32 [ %conv266, %cond.true.259 ], [ 112, %cond.false.267 ]
  br label %if.end.797

if.else.273:                                      ; preds = %land.lhs.true.242, %land.lhs.true.230, %land.lhs.true.227, %if.else.224
  %167 = load i32, i32* %x, align 4, !tbaa !19
  %cmp274 = icmp sge i32 %167, 0
  br i1 %cmp274, label %land.lhs.true.276, label %if.else.322

land.lhs.true.276:                                ; preds = %if.else.273
  %168 = load i32, i32* %line_no.addr, align 4, !tbaa !19
  %cmp277 = icmp sge i32 %168, 4
  br i1 %cmp277, label %land.lhs.true.279, label %if.else.322

land.lhs.true.279:                                ; preds = %land.lhs.true.276
  %169 = load i8**, i8*** %row.addr, align 8, !tbaa !1
  %arrayidx280 = getelementptr inbounds i8*, i8** %169, i64 0
  %170 = load i8*, i8** %arrayidx280, align 8, !tbaa !1
  %171 = load i32, i32* %x, align 4, !tbaa !19
  %idx.ext281 = sext i32 %171 to i64
  %add.ptr282 = getelementptr inbounds i8, i8* %170, i64 %idx.ext281
  %172 = load i8, i8* %add.ptr282, align 1, !tbaa !33
  %conv283 = zext i8 %172 to i32
  %173 = load i8**, i8*** %row.addr, align 8, !tbaa !1
  %arrayidx284 = getelementptr inbounds i8*, i8** %173, i64 4
  %174 = load i8*, i8** %arrayidx284, align 8, !tbaa !1
  %175 = load i32, i32* %x, align 4, !tbaa !19
  %sub285 = sub nsw i32 %175, 0
  %idx.ext286 = sext i32 %sub285 to i64
  %add.ptr287 = getelementptr inbounds i8, i8* %174, i64 %idx.ext286
  %176 = load i8, i8* %add.ptr287, align 1, !tbaa !33
  %conv288 = zext i8 %176 to i32
  %cmp289 = icmp eq i32 %conv283, %conv288
  br i1 %cmp289, label %land.lhs.true.291, label %if.else.322

land.lhs.true.291:                                ; preds = %land.lhs.true.279
  %177 = load i8**, i8*** %row.addr, align 8, !tbaa !1
  %arrayidx292 = getelementptr inbounds i8*, i8** %177, i64 0
  %178 = load i8*, i8** %arrayidx292, align 8, !tbaa !1
  %179 = load i32, i32* %x, align 4, !tbaa !19
  %idx.ext293 = sext i32 %179 to i64
  %add.ptr294 = getelementptr inbounds i8, i8* %178, i64 %idx.ext293
  %add.ptr295 = getelementptr inbounds i8, i8* %add.ptr294, i64 1
  %180 = load i8, i8* %add.ptr295, align 1, !tbaa !33
  %conv296 = zext i8 %180 to i32
  %181 = load i8**, i8*** %row.addr, align 8, !tbaa !1
  %arrayidx297 = getelementptr inbounds i8*, i8** %181, i64 4
  %182 = load i8*, i8** %arrayidx297, align 8, !tbaa !1
  %183 = load i32, i32* %x, align 4, !tbaa !19
  %add298 = add nsw i32 %183, 1
  %sub299 = sub nsw i32 %add298, 0
  %idx.ext300 = sext i32 %sub299 to i64
  %add.ptr301 = getelementptr inbounds i8, i8* %182, i64 %idx.ext300
  %184 = load i8, i8* %add.ptr301, align 1, !tbaa !33
  %conv302 = zext i8 %184 to i32
  %cmp303 = icmp eq i32 %conv296, %conv302
  br i1 %cmp303, label %if.then.305, label %if.else.322

if.then.305:                                      ; preds = %land.lhs.true.291
  %185 = load i32, i32* %x, align 4, !tbaa !19
  %and306 = and i32 %185, 2
  %tobool307 = icmp ne i32 %and306, 0
  br i1 %tobool307, label %cond.true.308, label %cond.false.316

cond.true.308:                                    ; preds = %if.then.305
  %186 = load i32, i32* %x, align 4, !tbaa !19
  %shr309 = ashr i32 %186, 2
  %idxprom310 = sext i32 %shr309 to i64
  %187 = load i8*, i8** %flag.addr, align 8, !tbaa !1
  %arrayidx311 = getelementptr inbounds i8, i8* %187, i64 %idxprom310
  %188 = load i8, i8* %arrayidx311, align 1, !tbaa !33
  %conv312 = zext i8 %188 to i32
  %or313 = or i32 %conv312, 9
  %conv314 = trunc i32 %or313 to i8
  store i8 %conv314, i8* %arrayidx311, align 1, !tbaa !33
  %conv315 = zext i8 %conv314 to i32
  br label %cond.end.320

cond.false.316:                                   ; preds = %if.then.305
  %189 = load i32, i32* %x, align 4, !tbaa !19
  %shr317 = ashr i32 %189, 2
  %idxprom318 = sext i32 %shr317 to i64
  %190 = load i8*, i8** %flag.addr, align 8, !tbaa !1
  %arrayidx319 = getelementptr inbounds i8, i8* %190, i64 %idxprom318
  store i8 -112, i8* %arrayidx319, align 1, !tbaa !33
  br label %cond.end.320

cond.end.320:                                     ; preds = %cond.false.316, %cond.true.308
  %cond321 = phi i32 [ %conv315, %cond.true.308 ], [ 144, %cond.false.316 ]
  br label %if.end.796

if.else.322:                                      ; preds = %land.lhs.true.291, %land.lhs.true.279, %land.lhs.true.276, %if.else.273
  %191 = load i32, i32* %x, align 4, !tbaa !19
  %cmp323 = icmp sge i32 %191, 2
  br i1 %cmp323, label %land.lhs.true.325, label %if.else.371

land.lhs.true.325:                                ; preds = %if.else.322
  %192 = load i32, i32* %line_no.addr, align 4, !tbaa !19
  %cmp326 = icmp sge i32 %192, 4
  br i1 %cmp326, label %land.lhs.true.328, label %if.else.371

land.lhs.true.328:                                ; preds = %land.lhs.true.325
  %193 = load i8**, i8*** %row.addr, align 8, !tbaa !1
  %arrayidx329 = getelementptr inbounds i8*, i8** %193, i64 0
  %194 = load i8*, i8** %arrayidx329, align 8, !tbaa !1
  %195 = load i32, i32* %x, align 4, !tbaa !19
  %idx.ext330 = sext i32 %195 to i64
  %add.ptr331 = getelementptr inbounds i8, i8* %194, i64 %idx.ext330
  %196 = load i8, i8* %add.ptr331, align 1, !tbaa !33
  %conv332 = zext i8 %196 to i32
  %197 = load i8**, i8*** %row.addr, align 8, !tbaa !1
  %arrayidx333 = getelementptr inbounds i8*, i8** %197, i64 4
  %198 = load i8*, i8** %arrayidx333, align 8, !tbaa !1
  %199 = load i32, i32* %x, align 4, !tbaa !19
  %sub334 = sub nsw i32 %199, 2
  %idx.ext335 = sext i32 %sub334 to i64
  %add.ptr336 = getelementptr inbounds i8, i8* %198, i64 %idx.ext335
  %200 = load i8, i8* %add.ptr336, align 1, !tbaa !33
  %conv337 = zext i8 %200 to i32
  %cmp338 = icmp eq i32 %conv332, %conv337
  br i1 %cmp338, label %land.lhs.true.340, label %if.else.371

land.lhs.true.340:                                ; preds = %land.lhs.true.328
  %201 = load i8**, i8*** %row.addr, align 8, !tbaa !1
  %arrayidx341 = getelementptr inbounds i8*, i8** %201, i64 0
  %202 = load i8*, i8** %arrayidx341, align 8, !tbaa !1
  %203 = load i32, i32* %x, align 4, !tbaa !19
  %idx.ext342 = sext i32 %203 to i64
  %add.ptr343 = getelementptr inbounds i8, i8* %202, i64 %idx.ext342
  %add.ptr344 = getelementptr inbounds i8, i8* %add.ptr343, i64 1
  %204 = load i8, i8* %add.ptr344, align 1, !tbaa !33
  %conv345 = zext i8 %204 to i32
  %205 = load i8**, i8*** %row.addr, align 8, !tbaa !1
  %arrayidx346 = getelementptr inbounds i8*, i8** %205, i64 4
  %206 = load i8*, i8** %arrayidx346, align 8, !tbaa !1
  %207 = load i32, i32* %x, align 4, !tbaa !19
  %add347 = add nsw i32 %207, 1
  %sub348 = sub nsw i32 %add347, 2
  %idx.ext349 = sext i32 %sub348 to i64
  %add.ptr350 = getelementptr inbounds i8, i8* %206, i64 %idx.ext349
  %208 = load i8, i8* %add.ptr350, align 1, !tbaa !33
  %conv351 = zext i8 %208 to i32
  %cmp352 = icmp eq i32 %conv345, %conv351
  br i1 %cmp352, label %if.then.354, label %if.else.371

if.then.354:                                      ; preds = %land.lhs.true.340
  %209 = load i32, i32* %x, align 4, !tbaa !19
  %and355 = and i32 %209, 2
  %tobool356 = icmp ne i32 %and355, 0
  br i1 %tobool356, label %cond.true.357, label %cond.false.365

cond.true.357:                                    ; preds = %if.then.354
  %210 = load i32, i32* %x, align 4, !tbaa !19
  %shr358 = ashr i32 %210, 2
  %idxprom359 = sext i32 %shr358 to i64
  %211 = load i8*, i8** %flag.addr, align 8, !tbaa !1
  %arrayidx360 = getelementptr inbounds i8, i8* %211, i64 %idxprom359
  %212 = load i8, i8* %arrayidx360, align 1, !tbaa !33
  %conv361 = zext i8 %212 to i32
  %or362 = or i32 %conv361, 10
  %conv363 = trunc i32 %or362 to i8
  store i8 %conv363, i8* %arrayidx360, align 1, !tbaa !33
  %conv364 = zext i8 %conv363 to i32
  br label %cond.end.369

cond.false.365:                                   ; preds = %if.then.354
  %213 = load i32, i32* %x, align 4, !tbaa !19
  %shr366 = ashr i32 %213, 2
  %idxprom367 = sext i32 %shr366 to i64
  %214 = load i8*, i8** %flag.addr, align 8, !tbaa !1
  %arrayidx368 = getelementptr inbounds i8, i8* %214, i64 %idxprom367
  store i8 -96, i8* %arrayidx368, align 1, !tbaa !33
  br label %cond.end.369

cond.end.369:                                     ; preds = %cond.false.365, %cond.true.357
  %cond370 = phi i32 [ %conv364, %cond.true.357 ], [ 160, %cond.false.365 ]
  br label %if.end.795

if.else.371:                                      ; preds = %land.lhs.true.340, %land.lhs.true.328, %land.lhs.true.325, %if.else.322
  %215 = load i32, i32* %x, align 4, !tbaa !19
  %cmp372 = icmp sge i32 %215, 4
  br i1 %cmp372, label %land.lhs.true.374, label %if.else.420

land.lhs.true.374:                                ; preds = %if.else.371
  %216 = load i32, i32* %line_no.addr, align 4, !tbaa !19
  %cmp375 = icmp sge i32 %216, 0
  br i1 %cmp375, label %land.lhs.true.377, label %if.else.420

land.lhs.true.377:                                ; preds = %land.lhs.true.374
  %217 = load i8**, i8*** %row.addr, align 8, !tbaa !1
  %arrayidx378 = getelementptr inbounds i8*, i8** %217, i64 0
  %218 = load i8*, i8** %arrayidx378, align 8, !tbaa !1
  %219 = load i32, i32* %x, align 4, !tbaa !19
  %idx.ext379 = sext i32 %219 to i64
  %add.ptr380 = getelementptr inbounds i8, i8* %218, i64 %idx.ext379
  %220 = load i8, i8* %add.ptr380, align 1, !tbaa !33
  %conv381 = zext i8 %220 to i32
  %221 = load i8**, i8*** %row.addr, align 8, !tbaa !1
  %arrayidx382 = getelementptr inbounds i8*, i8** %221, i64 0
  %222 = load i8*, i8** %arrayidx382, align 8, !tbaa !1
  %223 = load i32, i32* %x, align 4, !tbaa !19
  %sub383 = sub nsw i32 %223, 4
  %idx.ext384 = sext i32 %sub383 to i64
  %add.ptr385 = getelementptr inbounds i8, i8* %222, i64 %idx.ext384
  %224 = load i8, i8* %add.ptr385, align 1, !tbaa !33
  %conv386 = zext i8 %224 to i32
  %cmp387 = icmp eq i32 %conv381, %conv386
  br i1 %cmp387, label %land.lhs.true.389, label %if.else.420

land.lhs.true.389:                                ; preds = %land.lhs.true.377
  %225 = load i8**, i8*** %row.addr, align 8, !tbaa !1
  %arrayidx390 = getelementptr inbounds i8*, i8** %225, i64 0
  %226 = load i8*, i8** %arrayidx390, align 8, !tbaa !1
  %227 = load i32, i32* %x, align 4, !tbaa !19
  %idx.ext391 = sext i32 %227 to i64
  %add.ptr392 = getelementptr inbounds i8, i8* %226, i64 %idx.ext391
  %add.ptr393 = getelementptr inbounds i8, i8* %add.ptr392, i64 1
  %228 = load i8, i8* %add.ptr393, align 1, !tbaa !33
  %conv394 = zext i8 %228 to i32
  %229 = load i8**, i8*** %row.addr, align 8, !tbaa !1
  %arrayidx395 = getelementptr inbounds i8*, i8** %229, i64 0
  %230 = load i8*, i8** %arrayidx395, align 8, !tbaa !1
  %231 = load i32, i32* %x, align 4, !tbaa !19
  %add396 = add nsw i32 %231, 1
  %sub397 = sub nsw i32 %add396, 4
  %idx.ext398 = sext i32 %sub397 to i64
  %add.ptr399 = getelementptr inbounds i8, i8* %230, i64 %idx.ext398
  %232 = load i8, i8* %add.ptr399, align 1, !tbaa !33
  %conv400 = zext i8 %232 to i32
  %cmp401 = icmp eq i32 %conv394, %conv400
  br i1 %cmp401, label %if.then.403, label %if.else.420

if.then.403:                                      ; preds = %land.lhs.true.389
  %233 = load i32, i32* %x, align 4, !tbaa !19
  %and404 = and i32 %233, 2
  %tobool405 = icmp ne i32 %and404, 0
  br i1 %tobool405, label %cond.true.406, label %cond.false.414

cond.true.406:                                    ; preds = %if.then.403
  %234 = load i32, i32* %x, align 4, !tbaa !19
  %shr407 = ashr i32 %234, 2
  %idxprom408 = sext i32 %shr407 to i64
  %235 = load i8*, i8** %flag.addr, align 8, !tbaa !1
  %arrayidx409 = getelementptr inbounds i8, i8* %235, i64 %idxprom408
  %236 = load i8, i8* %arrayidx409, align 1, !tbaa !33
  %conv410 = zext i8 %236 to i32
  %or411 = or i32 %conv410, 2
  %conv412 = trunc i32 %or411 to i8
  store i8 %conv412, i8* %arrayidx409, align 1, !tbaa !33
  %conv413 = zext i8 %conv412 to i32
  br label %cond.end.418

cond.false.414:                                   ; preds = %if.then.403
  %237 = load i32, i32* %x, align 4, !tbaa !19
  %shr415 = ashr i32 %237, 2
  %idxprom416 = sext i32 %shr415 to i64
  %238 = load i8*, i8** %flag.addr, align 8, !tbaa !1
  %arrayidx417 = getelementptr inbounds i8, i8* %238, i64 %idxprom416
  store i8 32, i8* %arrayidx417, align 1, !tbaa !33
  br label %cond.end.418

cond.end.418:                                     ; preds = %cond.false.414, %cond.true.406
  %cond419 = phi i32 [ %conv413, %cond.true.406 ], [ 32, %cond.false.414 ]
  br label %if.end.794

if.else.420:                                      ; preds = %land.lhs.true.389, %land.lhs.true.377, %land.lhs.true.374, %if.else.371
  %239 = load i32, i32* %x, align 4, !tbaa !19
  %cmp421 = icmp sge i32 %239, 4
  br i1 %cmp421, label %land.lhs.true.423, label %if.else.469

land.lhs.true.423:                                ; preds = %if.else.420
  %240 = load i32, i32* %line_no.addr, align 4, !tbaa !19
  %cmp424 = icmp sge i32 %240, 2
  br i1 %cmp424, label %land.lhs.true.426, label %if.else.469

land.lhs.true.426:                                ; preds = %land.lhs.true.423
  %241 = load i8**, i8*** %row.addr, align 8, !tbaa !1
  %arrayidx427 = getelementptr inbounds i8*, i8** %241, i64 0
  %242 = load i8*, i8** %arrayidx427, align 8, !tbaa !1
  %243 = load i32, i32* %x, align 4, !tbaa !19
  %idx.ext428 = sext i32 %243 to i64
  %add.ptr429 = getelementptr inbounds i8, i8* %242, i64 %idx.ext428
  %244 = load i8, i8* %add.ptr429, align 1, !tbaa !33
  %conv430 = zext i8 %244 to i32
  %245 = load i8**, i8*** %row.addr, align 8, !tbaa !1
  %arrayidx431 = getelementptr inbounds i8*, i8** %245, i64 2
  %246 = load i8*, i8** %arrayidx431, align 8, !tbaa !1
  %247 = load i32, i32* %x, align 4, !tbaa !19
  %sub432 = sub nsw i32 %247, 4
  %idx.ext433 = sext i32 %sub432 to i64
  %add.ptr434 = getelementptr inbounds i8, i8* %246, i64 %idx.ext433
  %248 = load i8, i8* %add.ptr434, align 1, !tbaa !33
  %conv435 = zext i8 %248 to i32
  %cmp436 = icmp eq i32 %conv430, %conv435
  br i1 %cmp436, label %land.lhs.true.438, label %if.else.469

land.lhs.true.438:                                ; preds = %land.lhs.true.426
  %249 = load i8**, i8*** %row.addr, align 8, !tbaa !1
  %arrayidx439 = getelementptr inbounds i8*, i8** %249, i64 0
  %250 = load i8*, i8** %arrayidx439, align 8, !tbaa !1
  %251 = load i32, i32* %x, align 4, !tbaa !19
  %idx.ext440 = sext i32 %251 to i64
  %add.ptr441 = getelementptr inbounds i8, i8* %250, i64 %idx.ext440
  %add.ptr442 = getelementptr inbounds i8, i8* %add.ptr441, i64 1
  %252 = load i8, i8* %add.ptr442, align 1, !tbaa !33
  %conv443 = zext i8 %252 to i32
  %253 = load i8**, i8*** %row.addr, align 8, !tbaa !1
  %arrayidx444 = getelementptr inbounds i8*, i8** %253, i64 2
  %254 = load i8*, i8** %arrayidx444, align 8, !tbaa !1
  %255 = load i32, i32* %x, align 4, !tbaa !19
  %add445 = add nsw i32 %255, 1
  %sub446 = sub nsw i32 %add445, 4
  %idx.ext447 = sext i32 %sub446 to i64
  %add.ptr448 = getelementptr inbounds i8, i8* %254, i64 %idx.ext447
  %256 = load i8, i8* %add.ptr448, align 1, !tbaa !33
  %conv449 = zext i8 %256 to i32
  %cmp450 = icmp eq i32 %conv443, %conv449
  br i1 %cmp450, label %if.then.452, label %if.else.469

if.then.452:                                      ; preds = %land.lhs.true.438
  %257 = load i32, i32* %x, align 4, !tbaa !19
  %and453 = and i32 %257, 2
  %tobool454 = icmp ne i32 %and453, 0
  br i1 %tobool454, label %cond.true.455, label %cond.false.463

cond.true.455:                                    ; preds = %if.then.452
  %258 = load i32, i32* %x, align 4, !tbaa !19
  %shr456 = ashr i32 %258, 2
  %idxprom457 = sext i32 %shr456 to i64
  %259 = load i8*, i8** %flag.addr, align 8, !tbaa !1
  %arrayidx458 = getelementptr inbounds i8, i8* %259, i64 %idxprom457
  %260 = load i8, i8* %arrayidx458, align 1, !tbaa !33
  %conv459 = zext i8 %260 to i32
  %or460 = or i32 %conv459, 8
  %conv461 = trunc i32 %or460 to i8
  store i8 %conv461, i8* %arrayidx458, align 1, !tbaa !33
  %conv462 = zext i8 %conv461 to i32
  br label %cond.end.467

cond.false.463:                                   ; preds = %if.then.452
  %261 = load i32, i32* %x, align 4, !tbaa !19
  %shr464 = ashr i32 %261, 2
  %idxprom465 = sext i32 %shr464 to i64
  %262 = load i8*, i8** %flag.addr, align 8, !tbaa !1
  %arrayidx466 = getelementptr inbounds i8, i8* %262, i64 %idxprom465
  store i8 -128, i8* %arrayidx466, align 1, !tbaa !33
  br label %cond.end.467

cond.end.467:                                     ; preds = %cond.false.463, %cond.true.455
  %cond468 = phi i32 [ %conv462, %cond.true.455 ], [ 128, %cond.false.463 ]
  br label %if.end.793

if.else.469:                                      ; preds = %land.lhs.true.438, %land.lhs.true.426, %land.lhs.true.423, %if.else.420
  %263 = load i32, i32* %x, align 4, !tbaa !19
  %cmp470 = icmp sge i32 %263, 4
  br i1 %cmp470, label %land.lhs.true.472, label %if.else.518

land.lhs.true.472:                                ; preds = %if.else.469
  %264 = load i32, i32* %line_no.addr, align 4, !tbaa !19
  %cmp473 = icmp sge i32 %264, 4
  br i1 %cmp473, label %land.lhs.true.475, label %if.else.518

land.lhs.true.475:                                ; preds = %land.lhs.true.472
  %265 = load i8**, i8*** %row.addr, align 8, !tbaa !1
  %arrayidx476 = getelementptr inbounds i8*, i8** %265, i64 0
  %266 = load i8*, i8** %arrayidx476, align 8, !tbaa !1
  %267 = load i32, i32* %x, align 4, !tbaa !19
  %idx.ext477 = sext i32 %267 to i64
  %add.ptr478 = getelementptr inbounds i8, i8* %266, i64 %idx.ext477
  %268 = load i8, i8* %add.ptr478, align 1, !tbaa !33
  %conv479 = zext i8 %268 to i32
  %269 = load i8**, i8*** %row.addr, align 8, !tbaa !1
  %arrayidx480 = getelementptr inbounds i8*, i8** %269, i64 4
  %270 = load i8*, i8** %arrayidx480, align 8, !tbaa !1
  %271 = load i32, i32* %x, align 4, !tbaa !19
  %sub481 = sub nsw i32 %271, 4
  %idx.ext482 = sext i32 %sub481 to i64
  %add.ptr483 = getelementptr inbounds i8, i8* %270, i64 %idx.ext482
  %272 = load i8, i8* %add.ptr483, align 1, !tbaa !33
  %conv484 = zext i8 %272 to i32
  %cmp485 = icmp eq i32 %conv479, %conv484
  br i1 %cmp485, label %land.lhs.true.487, label %if.else.518

land.lhs.true.487:                                ; preds = %land.lhs.true.475
  %273 = load i8**, i8*** %row.addr, align 8, !tbaa !1
  %arrayidx488 = getelementptr inbounds i8*, i8** %273, i64 0
  %274 = load i8*, i8** %arrayidx488, align 8, !tbaa !1
  %275 = load i32, i32* %x, align 4, !tbaa !19
  %idx.ext489 = sext i32 %275 to i64
  %add.ptr490 = getelementptr inbounds i8, i8* %274, i64 %idx.ext489
  %add.ptr491 = getelementptr inbounds i8, i8* %add.ptr490, i64 1
  %276 = load i8, i8* %add.ptr491, align 1, !tbaa !33
  %conv492 = zext i8 %276 to i32
  %277 = load i8**, i8*** %row.addr, align 8, !tbaa !1
  %arrayidx493 = getelementptr inbounds i8*, i8** %277, i64 4
  %278 = load i8*, i8** %arrayidx493, align 8, !tbaa !1
  %279 = load i32, i32* %x, align 4, !tbaa !19
  %add494 = add nsw i32 %279, 1
  %sub495 = sub nsw i32 %add494, 4
  %idx.ext496 = sext i32 %sub495 to i64
  %add.ptr497 = getelementptr inbounds i8, i8* %278, i64 %idx.ext496
  %280 = load i8, i8* %add.ptr497, align 1, !tbaa !33
  %conv498 = zext i8 %280 to i32
  %cmp499 = icmp eq i32 %conv492, %conv498
  br i1 %cmp499, label %if.then.501, label %if.else.518

if.then.501:                                      ; preds = %land.lhs.true.487
  %281 = load i32, i32* %x, align 4, !tbaa !19
  %and502 = and i32 %281, 2
  %tobool503 = icmp ne i32 %and502, 0
  br i1 %tobool503, label %cond.true.504, label %cond.false.512

cond.true.504:                                    ; preds = %if.then.501
  %282 = load i32, i32* %x, align 4, !tbaa !19
  %shr505 = ashr i32 %282, 2
  %idxprom506 = sext i32 %shr505 to i64
  %283 = load i8*, i8** %flag.addr, align 8, !tbaa !1
  %arrayidx507 = getelementptr inbounds i8, i8* %283, i64 %idxprom506
  %284 = load i8, i8* %arrayidx507, align 1, !tbaa !33
  %conv508 = zext i8 %284 to i32
  %or509 = or i32 %conv508, 11
  %conv510 = trunc i32 %or509 to i8
  store i8 %conv510, i8* %arrayidx507, align 1, !tbaa !33
  %conv511 = zext i8 %conv510 to i32
  br label %cond.end.516

cond.false.512:                                   ; preds = %if.then.501
  %285 = load i32, i32* %x, align 4, !tbaa !19
  %shr513 = ashr i32 %285, 2
  %idxprom514 = sext i32 %shr513 to i64
  %286 = load i8*, i8** %flag.addr, align 8, !tbaa !1
  %arrayidx515 = getelementptr inbounds i8, i8* %286, i64 %idxprom514
  store i8 -80, i8* %arrayidx515, align 1, !tbaa !33
  br label %cond.end.516

cond.end.516:                                     ; preds = %cond.false.512, %cond.true.504
  %cond517 = phi i32 [ %conv511, %cond.true.504 ], [ 176, %cond.false.512 ]
  br label %if.end.792

if.else.518:                                      ; preds = %land.lhs.true.487, %land.lhs.true.475, %land.lhs.true.472, %if.else.469
  %287 = load i32, i32* %x, align 4, !tbaa !19
  %cmp519 = icmp sge i32 %287, 0
  br i1 %cmp519, label %land.lhs.true.521, label %if.else.567

land.lhs.true.521:                                ; preds = %if.else.518
  %288 = load i32, i32* %line_no.addr, align 4, !tbaa !19
  %cmp522 = icmp sge i32 %288, 8
  br i1 %cmp522, label %land.lhs.true.524, label %if.else.567

land.lhs.true.524:                                ; preds = %land.lhs.true.521
  %289 = load i8**, i8*** %row.addr, align 8, !tbaa !1
  %arrayidx525 = getelementptr inbounds i8*, i8** %289, i64 0
  %290 = load i8*, i8** %arrayidx525, align 8, !tbaa !1
  %291 = load i32, i32* %x, align 4, !tbaa !19
  %idx.ext526 = sext i32 %291 to i64
  %add.ptr527 = getelementptr inbounds i8, i8* %290, i64 %idx.ext526
  %292 = load i8, i8* %add.ptr527, align 1, !tbaa !33
  %conv528 = zext i8 %292 to i32
  %293 = load i8**, i8*** %row.addr, align 8, !tbaa !1
  %arrayidx529 = getelementptr inbounds i8*, i8** %293, i64 8
  %294 = load i8*, i8** %arrayidx529, align 8, !tbaa !1
  %295 = load i32, i32* %x, align 4, !tbaa !19
  %sub530 = sub nsw i32 %295, 0
  %idx.ext531 = sext i32 %sub530 to i64
  %add.ptr532 = getelementptr inbounds i8, i8* %294, i64 %idx.ext531
  %296 = load i8, i8* %add.ptr532, align 1, !tbaa !33
  %conv533 = zext i8 %296 to i32
  %cmp534 = icmp eq i32 %conv528, %conv533
  br i1 %cmp534, label %land.lhs.true.536, label %if.else.567

land.lhs.true.536:                                ; preds = %land.lhs.true.524
  %297 = load i8**, i8*** %row.addr, align 8, !tbaa !1
  %arrayidx537 = getelementptr inbounds i8*, i8** %297, i64 0
  %298 = load i8*, i8** %arrayidx537, align 8, !tbaa !1
  %299 = load i32, i32* %x, align 4, !tbaa !19
  %idx.ext538 = sext i32 %299 to i64
  %add.ptr539 = getelementptr inbounds i8, i8* %298, i64 %idx.ext538
  %add.ptr540 = getelementptr inbounds i8, i8* %add.ptr539, i64 1
  %300 = load i8, i8* %add.ptr540, align 1, !tbaa !33
  %conv541 = zext i8 %300 to i32
  %301 = load i8**, i8*** %row.addr, align 8, !tbaa !1
  %arrayidx542 = getelementptr inbounds i8*, i8** %301, i64 8
  %302 = load i8*, i8** %arrayidx542, align 8, !tbaa !1
  %303 = load i32, i32* %x, align 4, !tbaa !19
  %add543 = add nsw i32 %303, 1
  %sub544 = sub nsw i32 %add543, 0
  %idx.ext545 = sext i32 %sub544 to i64
  %add.ptr546 = getelementptr inbounds i8, i8* %302, i64 %idx.ext545
  %304 = load i8, i8* %add.ptr546, align 1, !tbaa !33
  %conv547 = zext i8 %304 to i32
  %cmp548 = icmp eq i32 %conv541, %conv547
  br i1 %cmp548, label %if.then.550, label %if.else.567

if.then.550:                                      ; preds = %land.lhs.true.536
  %305 = load i32, i32* %x, align 4, !tbaa !19
  %and551 = and i32 %305, 2
  %tobool552 = icmp ne i32 %and551, 0
  br i1 %tobool552, label %cond.true.553, label %cond.false.561

cond.true.553:                                    ; preds = %if.then.550
  %306 = load i32, i32* %x, align 4, !tbaa !19
  %shr554 = ashr i32 %306, 2
  %idxprom555 = sext i32 %shr554 to i64
  %307 = load i8*, i8** %flag.addr, align 8, !tbaa !1
  %arrayidx556 = getelementptr inbounds i8, i8* %307, i64 %idxprom555
  %308 = load i8, i8* %arrayidx556, align 1, !tbaa !33
  %conv557 = zext i8 %308 to i32
  %or558 = or i32 %conv557, 12
  %conv559 = trunc i32 %or558 to i8
  store i8 %conv559, i8* %arrayidx556, align 1, !tbaa !33
  %conv560 = zext i8 %conv559 to i32
  br label %cond.end.565

cond.false.561:                                   ; preds = %if.then.550
  %309 = load i32, i32* %x, align 4, !tbaa !19
  %shr562 = ashr i32 %309, 2
  %idxprom563 = sext i32 %shr562 to i64
  %310 = load i8*, i8** %flag.addr, align 8, !tbaa !1
  %arrayidx564 = getelementptr inbounds i8, i8* %310, i64 %idxprom563
  store i8 -64, i8* %arrayidx564, align 1, !tbaa !33
  br label %cond.end.565

cond.end.565:                                     ; preds = %cond.false.561, %cond.true.553
  %cond566 = phi i32 [ %conv560, %cond.true.553 ], [ 192, %cond.false.561 ]
  br label %if.end.791

if.else.567:                                      ; preds = %land.lhs.true.536, %land.lhs.true.524, %land.lhs.true.521, %if.else.518
  %311 = load i32, i32* %x, align 4, !tbaa !19
  %cmp568 = icmp sge i32 %311, 2
  br i1 %cmp568, label %land.lhs.true.570, label %if.else.616

land.lhs.true.570:                                ; preds = %if.else.567
  %312 = load i32, i32* %line_no.addr, align 4, !tbaa !19
  %cmp571 = icmp sge i32 %312, 8
  br i1 %cmp571, label %land.lhs.true.573, label %if.else.616

land.lhs.true.573:                                ; preds = %land.lhs.true.570
  %313 = load i8**, i8*** %row.addr, align 8, !tbaa !1
  %arrayidx574 = getelementptr inbounds i8*, i8** %313, i64 0
  %314 = load i8*, i8** %arrayidx574, align 8, !tbaa !1
  %315 = load i32, i32* %x, align 4, !tbaa !19
  %idx.ext575 = sext i32 %315 to i64
  %add.ptr576 = getelementptr inbounds i8, i8* %314, i64 %idx.ext575
  %316 = load i8, i8* %add.ptr576, align 1, !tbaa !33
  %conv577 = zext i8 %316 to i32
  %317 = load i8**, i8*** %row.addr, align 8, !tbaa !1
  %arrayidx578 = getelementptr inbounds i8*, i8** %317, i64 8
  %318 = load i8*, i8** %arrayidx578, align 8, !tbaa !1
  %319 = load i32, i32* %x, align 4, !tbaa !19
  %sub579 = sub nsw i32 %319, 2
  %idx.ext580 = sext i32 %sub579 to i64
  %add.ptr581 = getelementptr inbounds i8, i8* %318, i64 %idx.ext580
  %320 = load i8, i8* %add.ptr581, align 1, !tbaa !33
  %conv582 = zext i8 %320 to i32
  %cmp583 = icmp eq i32 %conv577, %conv582
  br i1 %cmp583, label %land.lhs.true.585, label %if.else.616

land.lhs.true.585:                                ; preds = %land.lhs.true.573
  %321 = load i8**, i8*** %row.addr, align 8, !tbaa !1
  %arrayidx586 = getelementptr inbounds i8*, i8** %321, i64 0
  %322 = load i8*, i8** %arrayidx586, align 8, !tbaa !1
  %323 = load i32, i32* %x, align 4, !tbaa !19
  %idx.ext587 = sext i32 %323 to i64
  %add.ptr588 = getelementptr inbounds i8, i8* %322, i64 %idx.ext587
  %add.ptr589 = getelementptr inbounds i8, i8* %add.ptr588, i64 1
  %324 = load i8, i8* %add.ptr589, align 1, !tbaa !33
  %conv590 = zext i8 %324 to i32
  %325 = load i8**, i8*** %row.addr, align 8, !tbaa !1
  %arrayidx591 = getelementptr inbounds i8*, i8** %325, i64 8
  %326 = load i8*, i8** %arrayidx591, align 8, !tbaa !1
  %327 = load i32, i32* %x, align 4, !tbaa !19
  %add592 = add nsw i32 %327, 1
  %sub593 = sub nsw i32 %add592, 2
  %idx.ext594 = sext i32 %sub593 to i64
  %add.ptr595 = getelementptr inbounds i8, i8* %326, i64 %idx.ext594
  %328 = load i8, i8* %add.ptr595, align 1, !tbaa !33
  %conv596 = zext i8 %328 to i32
  %cmp597 = icmp eq i32 %conv590, %conv596
  br i1 %cmp597, label %if.then.599, label %if.else.616

if.then.599:                                      ; preds = %land.lhs.true.585
  %329 = load i32, i32* %x, align 4, !tbaa !19
  %and600 = and i32 %329, 2
  %tobool601 = icmp ne i32 %and600, 0
  br i1 %tobool601, label %cond.true.602, label %cond.false.610

cond.true.602:                                    ; preds = %if.then.599
  %330 = load i32, i32* %x, align 4, !tbaa !19
  %shr603 = ashr i32 %330, 2
  %idxprom604 = sext i32 %shr603 to i64
  %331 = load i8*, i8** %flag.addr, align 8, !tbaa !1
  %arrayidx605 = getelementptr inbounds i8, i8* %331, i64 %idxprom604
  %332 = load i8, i8* %arrayidx605, align 1, !tbaa !33
  %conv606 = zext i8 %332 to i32
  %or607 = or i32 %conv606, 13
  %conv608 = trunc i32 %or607 to i8
  store i8 %conv608, i8* %arrayidx605, align 1, !tbaa !33
  %conv609 = zext i8 %conv608 to i32
  br label %cond.end.614

cond.false.610:                                   ; preds = %if.then.599
  %333 = load i32, i32* %x, align 4, !tbaa !19
  %shr611 = ashr i32 %333, 2
  %idxprom612 = sext i32 %shr611 to i64
  %334 = load i8*, i8** %flag.addr, align 8, !tbaa !1
  %arrayidx613 = getelementptr inbounds i8, i8* %334, i64 %idxprom612
  store i8 -48, i8* %arrayidx613, align 1, !tbaa !33
  br label %cond.end.614

cond.end.614:                                     ; preds = %cond.false.610, %cond.true.602
  %cond615 = phi i32 [ %conv609, %cond.true.602 ], [ 208, %cond.false.610 ]
  br label %if.end.790

if.else.616:                                      ; preds = %land.lhs.true.585, %land.lhs.true.573, %land.lhs.true.570, %if.else.567
  %335 = load i32, i32* %x, align 4, !tbaa !19
  %cmp617 = icmp sge i32 %335, 4
  br i1 %cmp617, label %land.lhs.true.619, label %if.else.665

land.lhs.true.619:                                ; preds = %if.else.616
  %336 = load i32, i32* %line_no.addr, align 4, !tbaa !19
  %cmp620 = icmp sge i32 %336, 8
  br i1 %cmp620, label %land.lhs.true.622, label %if.else.665

land.lhs.true.622:                                ; preds = %land.lhs.true.619
  %337 = load i8**, i8*** %row.addr, align 8, !tbaa !1
  %arrayidx623 = getelementptr inbounds i8*, i8** %337, i64 0
  %338 = load i8*, i8** %arrayidx623, align 8, !tbaa !1
  %339 = load i32, i32* %x, align 4, !tbaa !19
  %idx.ext624 = sext i32 %339 to i64
  %add.ptr625 = getelementptr inbounds i8, i8* %338, i64 %idx.ext624
  %340 = load i8, i8* %add.ptr625, align 1, !tbaa !33
  %conv626 = zext i8 %340 to i32
  %341 = load i8**, i8*** %row.addr, align 8, !tbaa !1
  %arrayidx627 = getelementptr inbounds i8*, i8** %341, i64 8
  %342 = load i8*, i8** %arrayidx627, align 8, !tbaa !1
  %343 = load i32, i32* %x, align 4, !tbaa !19
  %sub628 = sub nsw i32 %343, 4
  %idx.ext629 = sext i32 %sub628 to i64
  %add.ptr630 = getelementptr inbounds i8, i8* %342, i64 %idx.ext629
  %344 = load i8, i8* %add.ptr630, align 1, !tbaa !33
  %conv631 = zext i8 %344 to i32
  %cmp632 = icmp eq i32 %conv626, %conv631
  br i1 %cmp632, label %land.lhs.true.634, label %if.else.665

land.lhs.true.634:                                ; preds = %land.lhs.true.622
  %345 = load i8**, i8*** %row.addr, align 8, !tbaa !1
  %arrayidx635 = getelementptr inbounds i8*, i8** %345, i64 0
  %346 = load i8*, i8** %arrayidx635, align 8, !tbaa !1
  %347 = load i32, i32* %x, align 4, !tbaa !19
  %idx.ext636 = sext i32 %347 to i64
  %add.ptr637 = getelementptr inbounds i8, i8* %346, i64 %idx.ext636
  %add.ptr638 = getelementptr inbounds i8, i8* %add.ptr637, i64 1
  %348 = load i8, i8* %add.ptr638, align 1, !tbaa !33
  %conv639 = zext i8 %348 to i32
  %349 = load i8**, i8*** %row.addr, align 8, !tbaa !1
  %arrayidx640 = getelementptr inbounds i8*, i8** %349, i64 8
  %350 = load i8*, i8** %arrayidx640, align 8, !tbaa !1
  %351 = load i32, i32* %x, align 4, !tbaa !19
  %add641 = add nsw i32 %351, 1
  %sub642 = sub nsw i32 %add641, 4
  %idx.ext643 = sext i32 %sub642 to i64
  %add.ptr644 = getelementptr inbounds i8, i8* %350, i64 %idx.ext643
  %352 = load i8, i8* %add.ptr644, align 1, !tbaa !33
  %conv645 = zext i8 %352 to i32
  %cmp646 = icmp eq i32 %conv639, %conv645
  br i1 %cmp646, label %if.then.648, label %if.else.665

if.then.648:                                      ; preds = %land.lhs.true.634
  %353 = load i32, i32* %x, align 4, !tbaa !19
  %and649 = and i32 %353, 2
  %tobool650 = icmp ne i32 %and649, 0
  br i1 %tobool650, label %cond.true.651, label %cond.false.659

cond.true.651:                                    ; preds = %if.then.648
  %354 = load i32, i32* %x, align 4, !tbaa !19
  %shr652 = ashr i32 %354, 2
  %idxprom653 = sext i32 %shr652 to i64
  %355 = load i8*, i8** %flag.addr, align 8, !tbaa !1
  %arrayidx654 = getelementptr inbounds i8, i8* %355, i64 %idxprom653
  %356 = load i8, i8* %arrayidx654, align 1, !tbaa !33
  %conv655 = zext i8 %356 to i32
  %or656 = or i32 %conv655, 14
  %conv657 = trunc i32 %or656 to i8
  store i8 %conv657, i8* %arrayidx654, align 1, !tbaa !33
  %conv658 = zext i8 %conv657 to i32
  br label %cond.end.663

cond.false.659:                                   ; preds = %if.then.648
  %357 = load i32, i32* %x, align 4, !tbaa !19
  %shr660 = ashr i32 %357, 2
  %idxprom661 = sext i32 %shr660 to i64
  %358 = load i8*, i8** %flag.addr, align 8, !tbaa !1
  %arrayidx662 = getelementptr inbounds i8, i8* %358, i64 %idxprom661
  store i8 -32, i8* %arrayidx662, align 1, !tbaa !33
  br label %cond.end.663

cond.end.663:                                     ; preds = %cond.false.659, %cond.true.651
  %cond664 = phi i32 [ %conv658, %cond.true.651 ], [ 224, %cond.false.659 ]
  br label %if.end.789

if.else.665:                                      ; preds = %land.lhs.true.634, %land.lhs.true.622, %land.lhs.true.619, %if.else.616
  %359 = load i32, i32* %x, align 4, !tbaa !19
  %cmp666 = icmp sge i32 %359, 8
  br i1 %cmp666, label %land.lhs.true.668, label %if.else.714

land.lhs.true.668:                                ; preds = %if.else.665
  %360 = load i32, i32* %line_no.addr, align 4, !tbaa !19
  %cmp669 = icmp sge i32 %360, 0
  br i1 %cmp669, label %land.lhs.true.671, label %if.else.714

land.lhs.true.671:                                ; preds = %land.lhs.true.668
  %361 = load i8**, i8*** %row.addr, align 8, !tbaa !1
  %arrayidx672 = getelementptr inbounds i8*, i8** %361, i64 0
  %362 = load i8*, i8** %arrayidx672, align 8, !tbaa !1
  %363 = load i32, i32* %x, align 4, !tbaa !19
  %idx.ext673 = sext i32 %363 to i64
  %add.ptr674 = getelementptr inbounds i8, i8* %362, i64 %idx.ext673
  %364 = load i8, i8* %add.ptr674, align 1, !tbaa !33
  %conv675 = zext i8 %364 to i32
  %365 = load i8**, i8*** %row.addr, align 8, !tbaa !1
  %arrayidx676 = getelementptr inbounds i8*, i8** %365, i64 0
  %366 = load i8*, i8** %arrayidx676, align 8, !tbaa !1
  %367 = load i32, i32* %x, align 4, !tbaa !19
  %sub677 = sub nsw i32 %367, 8
  %idx.ext678 = sext i32 %sub677 to i64
  %add.ptr679 = getelementptr inbounds i8, i8* %366, i64 %idx.ext678
  %368 = load i8, i8* %add.ptr679, align 1, !tbaa !33
  %conv680 = zext i8 %368 to i32
  %cmp681 = icmp eq i32 %conv675, %conv680
  br i1 %cmp681, label %land.lhs.true.683, label %if.else.714

land.lhs.true.683:                                ; preds = %land.lhs.true.671
  %369 = load i8**, i8*** %row.addr, align 8, !tbaa !1
  %arrayidx684 = getelementptr inbounds i8*, i8** %369, i64 0
  %370 = load i8*, i8** %arrayidx684, align 8, !tbaa !1
  %371 = load i32, i32* %x, align 4, !tbaa !19
  %idx.ext685 = sext i32 %371 to i64
  %add.ptr686 = getelementptr inbounds i8, i8* %370, i64 %idx.ext685
  %add.ptr687 = getelementptr inbounds i8, i8* %add.ptr686, i64 1
  %372 = load i8, i8* %add.ptr687, align 1, !tbaa !33
  %conv688 = zext i8 %372 to i32
  %373 = load i8**, i8*** %row.addr, align 8, !tbaa !1
  %arrayidx689 = getelementptr inbounds i8*, i8** %373, i64 0
  %374 = load i8*, i8** %arrayidx689, align 8, !tbaa !1
  %375 = load i32, i32* %x, align 4, !tbaa !19
  %add690 = add nsw i32 %375, 1
  %sub691 = sub nsw i32 %add690, 8
  %idx.ext692 = sext i32 %sub691 to i64
  %add.ptr693 = getelementptr inbounds i8, i8* %374, i64 %idx.ext692
  %376 = load i8, i8* %add.ptr693, align 1, !tbaa !33
  %conv694 = zext i8 %376 to i32
  %cmp695 = icmp eq i32 %conv688, %conv694
  br i1 %cmp695, label %if.then.697, label %if.else.714

if.then.697:                                      ; preds = %land.lhs.true.683
  %377 = load i32, i32* %x, align 4, !tbaa !19
  %and698 = and i32 %377, 2
  %tobool699 = icmp ne i32 %and698, 0
  br i1 %tobool699, label %cond.true.700, label %cond.false.708

cond.true.700:                                    ; preds = %if.then.697
  %378 = load i32, i32* %x, align 4, !tbaa !19
  %shr701 = ashr i32 %378, 2
  %idxprom702 = sext i32 %shr701 to i64
  %379 = load i8*, i8** %flag.addr, align 8, !tbaa !1
  %arrayidx703 = getelementptr inbounds i8, i8* %379, i64 %idxprom702
  %380 = load i8, i8* %arrayidx703, align 1, !tbaa !33
  %conv704 = zext i8 %380 to i32
  %or705 = or i32 %conv704, 3
  %conv706 = trunc i32 %or705 to i8
  store i8 %conv706, i8* %arrayidx703, align 1, !tbaa !33
  %conv707 = zext i8 %conv706 to i32
  br label %cond.end.712

cond.false.708:                                   ; preds = %if.then.697
  %381 = load i32, i32* %x, align 4, !tbaa !19
  %shr709 = ashr i32 %381, 2
  %idxprom710 = sext i32 %shr709 to i64
  %382 = load i8*, i8** %flag.addr, align 8, !tbaa !1
  %arrayidx711 = getelementptr inbounds i8, i8* %382, i64 %idxprom710
  store i8 48, i8* %arrayidx711, align 1, !tbaa !33
  br label %cond.end.712

cond.end.712:                                     ; preds = %cond.false.708, %cond.true.700
  %cond713 = phi i32 [ %conv707, %cond.true.700 ], [ 48, %cond.false.708 ]
  br label %if.end.788

if.else.714:                                      ; preds = %land.lhs.true.683, %land.lhs.true.671, %land.lhs.true.668, %if.else.665
  %383 = load i32, i32* %x, align 4, !tbaa !19
  %cmp715 = icmp sge i32 %383, 0
  br i1 %cmp715, label %land.lhs.true.717, label %if.else.763

land.lhs.true.717:                                ; preds = %if.else.714
  %384 = load i32, i32* %line_no.addr, align 4, !tbaa !19
  %cmp718 = icmp sge i32 %384, 16
  br i1 %cmp718, label %land.lhs.true.720, label %if.else.763

land.lhs.true.720:                                ; preds = %land.lhs.true.717
  %385 = load i8**, i8*** %row.addr, align 8, !tbaa !1
  %arrayidx721 = getelementptr inbounds i8*, i8** %385, i64 0
  %386 = load i8*, i8** %arrayidx721, align 8, !tbaa !1
  %387 = load i32, i32* %x, align 4, !tbaa !19
  %idx.ext722 = sext i32 %387 to i64
  %add.ptr723 = getelementptr inbounds i8, i8* %386, i64 %idx.ext722
  %388 = load i8, i8* %add.ptr723, align 1, !tbaa !33
  %conv724 = zext i8 %388 to i32
  %389 = load i8**, i8*** %row.addr, align 8, !tbaa !1
  %arrayidx725 = getelementptr inbounds i8*, i8** %389, i64 16
  %390 = load i8*, i8** %arrayidx725, align 8, !tbaa !1
  %391 = load i32, i32* %x, align 4, !tbaa !19
  %sub726 = sub nsw i32 %391, 0
  %idx.ext727 = sext i32 %sub726 to i64
  %add.ptr728 = getelementptr inbounds i8, i8* %390, i64 %idx.ext727
  %392 = load i8, i8* %add.ptr728, align 1, !tbaa !33
  %conv729 = zext i8 %392 to i32
  %cmp730 = icmp eq i32 %conv724, %conv729
  br i1 %cmp730, label %land.lhs.true.732, label %if.else.763

land.lhs.true.732:                                ; preds = %land.lhs.true.720
  %393 = load i8**, i8*** %row.addr, align 8, !tbaa !1
  %arrayidx733 = getelementptr inbounds i8*, i8** %393, i64 0
  %394 = load i8*, i8** %arrayidx733, align 8, !tbaa !1
  %395 = load i32, i32* %x, align 4, !tbaa !19
  %idx.ext734 = sext i32 %395 to i64
  %add.ptr735 = getelementptr inbounds i8, i8* %394, i64 %idx.ext734
  %add.ptr736 = getelementptr inbounds i8, i8* %add.ptr735, i64 1
  %396 = load i8, i8* %add.ptr736, align 1, !tbaa !33
  %conv737 = zext i8 %396 to i32
  %397 = load i8**, i8*** %row.addr, align 8, !tbaa !1
  %arrayidx738 = getelementptr inbounds i8*, i8** %397, i64 16
  %398 = load i8*, i8** %arrayidx738, align 8, !tbaa !1
  %399 = load i32, i32* %x, align 4, !tbaa !19
  %add739 = add nsw i32 %399, 1
  %sub740 = sub nsw i32 %add739, 0
  %idx.ext741 = sext i32 %sub740 to i64
  %add.ptr742 = getelementptr inbounds i8, i8* %398, i64 %idx.ext741
  %400 = load i8, i8* %add.ptr742, align 1, !tbaa !33
  %conv743 = zext i8 %400 to i32
  %cmp744 = icmp eq i32 %conv737, %conv743
  br i1 %cmp744, label %if.then.746, label %if.else.763

if.then.746:                                      ; preds = %land.lhs.true.732
  %401 = load i32, i32* %x, align 4, !tbaa !19
  %and747 = and i32 %401, 2
  %tobool748 = icmp ne i32 %and747, 0
  br i1 %tobool748, label %cond.true.749, label %cond.false.757

cond.true.749:                                    ; preds = %if.then.746
  %402 = load i32, i32* %x, align 4, !tbaa !19
  %shr750 = ashr i32 %402, 2
  %idxprom751 = sext i32 %shr750 to i64
  %403 = load i8*, i8** %flag.addr, align 8, !tbaa !1
  %arrayidx752 = getelementptr inbounds i8, i8* %403, i64 %idxprom751
  %404 = load i8, i8* %arrayidx752, align 1, !tbaa !33
  %conv753 = zext i8 %404 to i32
  %or754 = or i32 %conv753, 15
  %conv755 = trunc i32 %or754 to i8
  store i8 %conv755, i8* %arrayidx752, align 1, !tbaa !33
  %conv756 = zext i8 %conv755 to i32
  br label %cond.end.761

cond.false.757:                                   ; preds = %if.then.746
  %405 = load i32, i32* %x, align 4, !tbaa !19
  %shr758 = ashr i32 %405, 2
  %idxprom759 = sext i32 %shr758 to i64
  %406 = load i8*, i8** %flag.addr, align 8, !tbaa !1
  %arrayidx760 = getelementptr inbounds i8, i8* %406, i64 %idxprom759
  store i8 -16, i8* %arrayidx760, align 1, !tbaa !33
  br label %cond.end.761

cond.end.761:                                     ; preds = %cond.false.757, %cond.true.749
  %cond762 = phi i32 [ %conv756, %cond.true.749 ], [ 240, %cond.false.757 ]
  br label %if.end.787

if.else.763:                                      ; preds = %land.lhs.true.732, %land.lhs.true.720, %land.lhs.true.717, %if.else.714
  %407 = load i32, i32* %x, align 4, !tbaa !19
  %and764 = and i32 %407, 2
  %tobool765 = icmp ne i32 %and764, 0
  br i1 %tobool765, label %cond.true.766, label %cond.false.773

cond.true.766:                                    ; preds = %if.else.763
  %408 = load i32, i32* %x, align 4, !tbaa !19
  %shr767 = ashr i32 %408, 2
  %idxprom768 = sext i32 %shr767 to i64
  %409 = load i8*, i8** %flag.addr, align 8, !tbaa !1
  %arrayidx769 = getelementptr inbounds i8, i8* %409, i64 %idxprom768
  %410 = load i8, i8* %arrayidx769, align 1, !tbaa !33
  %conv770 = zext i8 %410 to i32
  %conv771 = trunc i32 %conv770 to i8
  store i8 %conv771, i8* %arrayidx769, align 1, !tbaa !33
  %conv772 = zext i8 %conv771 to i32
  br label %cond.end.777

cond.false.773:                                   ; preds = %if.else.763
  %411 = load i32, i32* %x, align 4, !tbaa !19
  %shr774 = ashr i32 %411, 2
  %idxprom775 = sext i32 %shr774 to i64
  %412 = load i8*, i8** %flag.addr, align 8, !tbaa !1
  %arrayidx776 = getelementptr inbounds i8, i8* %412, i64 %idxprom775
  store i8 0, i8* %arrayidx776, align 1, !tbaa !33
  br label %cond.end.777

cond.end.777:                                     ; preds = %cond.false.773, %cond.true.766
  %cond778 = phi i32 [ %conv772, %cond.true.766 ], [ 0, %cond.false.773 ]
  %413 = load i8**, i8*** %row.addr, align 8, !tbaa !1
  %arrayidx779 = getelementptr inbounds i8*, i8** %413, i64 0
  %414 = load i8*, i8** %arrayidx779, align 8, !tbaa !1
  %415 = load i32, i32* %x, align 4, !tbaa !19
  %idx.ext780 = sext i32 %415 to i64
  %add.ptr781 = getelementptr inbounds i8, i8* %414, i64 %idx.ext780
  %416 = load i8, i8* %add.ptr781, align 1, !tbaa !33
  %417 = load i8*, i8** %ppixel, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %417, i32 1
  store i8* %incdec.ptr, i8** %ppixel, align 8, !tbaa !1
  store i8 %416, i8* %417, align 1, !tbaa !33
  %418 = load i8**, i8*** %row.addr, align 8, !tbaa !1
  %arrayidx782 = getelementptr inbounds i8*, i8** %418, i64 0
  %419 = load i8*, i8** %arrayidx782, align 8, !tbaa !1
  %420 = load i32, i32* %x, align 4, !tbaa !19
  %idx.ext783 = sext i32 %420 to i64
  %add.ptr784 = getelementptr inbounds i8, i8* %419, i64 %idx.ext783
  %add.ptr785 = getelementptr inbounds i8, i8* %add.ptr784, i64 1
  %421 = load i8, i8* %add.ptr785, align 1, !tbaa !33
  %422 = load i8*, i8** %ppixel, align 8, !tbaa !1
  %incdec.ptr786 = getelementptr inbounds i8, i8* %422, i32 1
  store i8* %incdec.ptr786, i8** %ppixel, align 8, !tbaa !1
  store i8 %421, i8* %422, align 1, !tbaa !33
  br label %if.end.787

if.end.787:                                       ; preds = %cond.end.777, %cond.end.761
  br label %if.end.788

if.end.788:                                       ; preds = %if.end.787, %cond.end.712
  br label %if.end.789

if.end.789:                                       ; preds = %if.end.788, %cond.end.663
  br label %if.end.790

if.end.790:                                       ; preds = %if.end.789, %cond.end.614
  br label %if.end.791

if.end.791:                                       ; preds = %if.end.790, %cond.end.565
  br label %if.end.792

if.end.792:                                       ; preds = %if.end.791, %cond.end.516
  br label %if.end.793

if.end.793:                                       ; preds = %if.end.792, %cond.end.467
  br label %if.end.794

if.end.794:                                       ; preds = %if.end.793, %cond.end.418
  br label %if.end.795

if.end.795:                                       ; preds = %if.end.794, %cond.end.369
  br label %if.end.796

if.end.796:                                       ; preds = %if.end.795, %cond.end.320
  br label %if.end.797

if.end.797:                                       ; preds = %if.end.796, %cond.end.271
  br label %if.end.798

if.end.798:                                       ; preds = %if.end.797, %cond.end.222
  br label %if.end.799

if.end.799:                                       ; preds = %if.end.798, %cond.end.173
  br label %if.end.800

if.end.800:                                       ; preds = %if.end.799, %cond.end.124
  br label %if.end.801

if.end.801:                                       ; preds = %if.end.800, %cond.end
  br label %for.inc.802

for.inc.802:                                      ; preds = %if.end.801
  %423 = load i32, i32* %x, align 4, !tbaa !19
  %add803 = add nsw i32 %423, 2
  store i32 %add803, i32* %x, align 4, !tbaa !19
  br label %for.cond.31

for.end.804:                                      ; preds = %for.cond.31
  %424 = load i8*, i8** %ppixel, align 8, !tbaa !1
  %425 = load i8*, i8** %pixel.addr, align 8, !tbaa !1
  %sub.ptr.lhs.cast = ptrtoint i8* %424 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %425 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv805 = trunc i64 %sub.ptr.sub to i32
  %426 = bitcast i8** %ppixel to i8*
  call void @llvm.lifetime.end(i64 8, i8* %426) #2
  %427 = bitcast i32* %raster to i8*
  call void @llvm.lifetime.end(i64 4, i8* %427) #2
  %428 = bitcast i32* %x to i8*
  call void @llvm.lifetime.end(i64 4, i8* %428) #2
  ret i32 %conv805
}

; Function Attrs: nounwind uwtable
define internal i32 @mag_comp_flag(%struct.gx_device_printer_s* %pdev, i32 %size, i8* %f0, i8* %f1, i8* %flag_a, i32 %next_bit, i8* %flag_b) #1 {
entry:
  %pdev.addr = alloca %struct.gx_device_printer_s*, align 8
  %size.addr = alloca i32, align 4
  %f0.addr = alloca i8*, align 8
  %f1.addr = alloca i8*, align 8
  %flag_a.addr = alloca i8*, align 8
  %next_bit.addr = alloca i32, align 4
  %flag_b.addr = alloca i8*, align 8
  %mask = alloca i8, align 1
  %pflag_b = alloca i8*, align 8
  %b = alloca i8, align 1
  store %struct.gx_device_printer_s* %pdev, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !19
  store i8* %f0, i8** %f0.addr, align 8, !tbaa !1
  store i8* %f1, i8** %f1.addr, align 8, !tbaa !1
  store i8* %flag_a, i8** %flag_a.addr, align 8, !tbaa !1
  store i32 %next_bit, i32* %next_bit.addr, align 4, !tbaa !19
  store i8* %flag_b, i8** %flag_b.addr, align 8, !tbaa !1
  call void @llvm.lifetime.start(i64 1, i8* %mask) #2
  %0 = load i32, i32* %next_bit.addr, align 4, !tbaa !19
  %shr = ashr i32 128, %0
  %conv = trunc i32 %shr to i8
  store i8 %conv, i8* %mask, align 1, !tbaa !33
  %1 = bitcast i8** %pflag_b to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #2
  %2 = load i8*, i8** %flag_b.addr, align 8, !tbaa !1
  store i8* %2, i8** %pflag_b, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %size.addr, align 4, !tbaa !19
  %cmp = icmp sgt i32 %3, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start(i64 1, i8* %b) #2
  %4 = load i8*, i8** %f0.addr, align 8, !tbaa !1
  %5 = load i8, i8* %4, align 1, !tbaa !33
  %conv2 = zext i8 %5 to i32
  %6 = load i8*, i8** %f1.addr, align 8, !tbaa !1
  %7 = load i8, i8* %6, align 1, !tbaa !33
  %conv3 = zext i8 %7 to i32
  %xor = xor i32 %conv2, %conv3
  %conv4 = trunc i32 %xor to i8
  store i8 %conv4, i8* %b, align 1, !tbaa !33
  %8 = load i8, i8* %mask, align 1, !tbaa !33
  %conv5 = zext i8 %8 to i32
  %cmp6 = icmp eq i32 %conv5, 128
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %9 = load i8*, i8** %flag_a.addr, align 8, !tbaa !1
  store i8 0, i8* %9, align 1, !tbaa !33
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %10 = load i8, i8* %b, align 1, !tbaa !33
  %tobool = icmp ne i8 %10, 0
  br i1 %tobool, label %if.then.8, label %if.end.12

if.then.8:                                        ; preds = %if.end
  %11 = load i8, i8* %mask, align 1, !tbaa !33
  %conv9 = zext i8 %11 to i32
  %12 = load i8*, i8** %flag_a.addr, align 8, !tbaa !1
  %13 = load i8, i8* %12, align 1, !tbaa !33
  %conv10 = zext i8 %13 to i32
  %or = or i32 %conv10, %conv9
  %conv11 = trunc i32 %or to i8
  store i8 %conv11, i8* %12, align 1, !tbaa !33
  %14 = load i8, i8* %b, align 1, !tbaa !33
  %15 = load i8*, i8** %pflag_b, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %incdec.ptr, i8** %pflag_b, align 8, !tbaa !1
  store i8 %14, i8* %15, align 1, !tbaa !33
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.8, %if.end
  %16 = load i8, i8* %mask, align 1, !tbaa !33
  %conv13 = zext i8 %16 to i32
  %shr14 = ashr i32 %conv13, 1
  %conv15 = trunc i32 %shr14 to i8
  store i8 %conv15, i8* %mask, align 1, !tbaa !33
  %17 = load i8*, i8** %f0.addr, align 8, !tbaa !1
  %incdec.ptr16 = getelementptr inbounds i8, i8* %17, i32 1
  store i8* %incdec.ptr16, i8** %f0.addr, align 8, !tbaa !1
  %18 = load i8*, i8** %f1.addr, align 8, !tbaa !1
  %incdec.ptr17 = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %incdec.ptr17, i8** %f1.addr, align 8, !tbaa !1
  %19 = load i8, i8* %mask, align 1, !tbaa !33
  %conv18 = zext i8 %19 to i32
  %cmp19 = icmp eq i32 %conv18, 0
  br i1 %cmp19, label %if.then.21, label %if.end.23

if.then.21:                                       ; preds = %if.end.12
  store i8 -128, i8* %mask, align 1, !tbaa !33
  %20 = load i8*, i8** %flag_a.addr, align 8, !tbaa !1
  %incdec.ptr22 = getelementptr inbounds i8, i8* %20, i32 1
  store i8* %incdec.ptr22, i8** %flag_a.addr, align 8, !tbaa !1
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.21, %if.end.12
  call void @llvm.lifetime.end(i64 1, i8* %b) #2
  br label %for.inc

for.inc:                                          ; preds = %if.end.23
  %21 = load i32, i32* %size.addr, align 4, !tbaa !19
  %dec = add nsw i32 %21, -1
  store i32 %dec, i32* %size.addr, align 4, !tbaa !19
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %22 = load i8*, i8** %pflag_b, align 8, !tbaa !1
  %23 = load i8*, i8** %flag_b.addr, align 8, !tbaa !1
  %sub.ptr.lhs.cast = ptrtoint i8* %22 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %23 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv24 = trunc i64 %sub.ptr.sub to i32
  %24 = bitcast i8** %pflag_b to i8*
  call void @llvm.lifetime.end(i64 8, i8* %24) #2
  call void @llvm.lifetime.end(i64 1, i8* %mask) #2
  ret i32 %conv24
}

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

declare i32 @fputs(i8*, %struct._IO_FILE*) #0

declare i64 @fwrite(i8*, i64, i64, %struct._IO_FILE*) #0

; Function Attrs: nounwind uwtable
define internal i32 @mag_write_palette(%struct.gx_device_printer_s* %pdev, i32 %depth) #1 {
entry:
  %pdev.addr = alloca %struct.gx_device_printer_s*, align 8
  %depth.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %rgb = alloca [3 x i16], align 2
  %max_index = alloca i32, align 4
  %grb = alloca [3 x i8], align 1
  store %struct.gx_device_printer_s* %pdev, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  store i32 %depth, i32* %depth.addr, align 4, !tbaa !19
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast [3 x i16]* %rgb to i8*
  call void @llvm.lifetime.start(i64 6, i8* %1) #2
  %2 = bitcast i32* %max_index to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  %3 = load i32, i32* %depth.addr, align 4, !tbaa !19
  %shl = shl i32 1, %3
  store i32 %shl, i32* %max_index, align 4, !tbaa !19
  store i32 0, i32* %i, align 4, !tbaa !19
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %i, align 4, !tbaa !19
  %5 = load i32, i32* %max_index, align 4, !tbaa !19
  %cmp = icmp ult i32 %4, %5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = bitcast [3 x i8]* %grb to i8*
  call void @llvm.lifetime.start(i64 3, i8* %6) #2
  %7 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %orig_procs = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %7, i32 0, i32 67
  %map_color_rgb = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %orig_procs, i32 0, i32 6
  %8 = load i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i64, i16*)** %map_color_rgb, align 8, !tbaa !35
  %9 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %10 = bitcast %struct.gx_device_printer_s* %9 to %struct.gx_device_s*
  %11 = load i32, i32* %i, align 4, !tbaa !19
  %conv = zext i32 %11 to i64
  %arraydecay = getelementptr inbounds [3 x i16], [3 x i16]* %rgb, i32 0, i32 0
  %call = call i32 %8(%struct.gx_device_s* %10, i64 %conv, i16* %arraydecay) #5
  %arrayidx = getelementptr inbounds [3 x i16], [3 x i16]* %rgb, i32 0, i64 1
  %12 = load i16, i16* %arrayidx, align 2, !tbaa !36
  %conv1 = zext i16 %12 to i32
  %shr = ashr i32 %conv1, 8
  %conv2 = trunc i32 %shr to i8
  %arrayidx3 = getelementptr inbounds [3 x i8], [3 x i8]* %grb, i32 0, i64 0
  store i8 %conv2, i8* %arrayidx3, align 1, !tbaa !33
  %arrayidx4 = getelementptr inbounds [3 x i16], [3 x i16]* %rgb, i32 0, i64 0
  %13 = load i16, i16* %arrayidx4, align 2, !tbaa !36
  %conv5 = zext i16 %13 to i32
  %shr6 = ashr i32 %conv5, 8
  %conv7 = trunc i32 %shr6 to i8
  %arrayidx8 = getelementptr inbounds [3 x i8], [3 x i8]* %grb, i32 0, i64 1
  store i8 %conv7, i8* %arrayidx8, align 1, !tbaa !33
  %arrayidx9 = getelementptr inbounds [3 x i16], [3 x i16]* %rgb, i32 0, i64 2
  %14 = load i16, i16* %arrayidx9, align 2, !tbaa !36
  %conv10 = zext i16 %14 to i32
  %shr11 = ashr i32 %conv10, 8
  %conv12 = trunc i32 %shr11 to i8
  %arrayidx13 = getelementptr inbounds [3 x i8], [3 x i8]* %grb, i32 0, i64 2
  store i8 %conv12, i8* %arrayidx13, align 1, !tbaa !33
  %arraydecay14 = getelementptr inbounds [3 x i8], [3 x i8]* %grb, i32 0, i32 0
  %15 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %file = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %15, i32 0, i32 52
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8, !tbaa !37
  %call15 = call i64 @fwrite(i8* %arraydecay14, i64 3, i64 1, %struct._IO_FILE* %16) #5
  %17 = bitcast [3 x i8]* %grb to i8*
  call void @llvm.lifetime.end(i64 3, i8* %17) #2
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %18 = load i32, i32* %i, align 4, !tbaa !19
  %inc = add i32 %18, 1
  store i32 %inc, i32* %i, align 4, !tbaa !19
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %19 = bitcast i32* %max_index to i8*
  call void @llvm.lifetime.end(i64 4, i8* %19) #2
  %20 = bitcast [3 x i16]* %rgb to i8*
  call void @llvm.lifetime.end(i64 6, i8* %20) #2
  %21 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %21) #2
  ret i32 0
}

declare i32 @fputc(i32, %struct._IO_FILE*) #0

declare i32 @fflush(%struct._IO_FILE*) #0

declare i32 @gdev_prn_copy_scan_lines(%struct.gx_device_printer_s*, i32, i8*, i32) #0

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
!5 = !{!6, !7, i64 832}
!6 = !{!"gx_device_s", !7, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !7, i64 40, !2, i64 48, !8, i64 56, !7, i64 80, !7, i64 84, !7, i64 88, !10, i64 96, !13, i64 816, !7, i64 832, !7, i64 836, !7, i64 840, !7, i64 844, !7, i64 848, !7, i64 852, !3, i64 856, !3, i64 864, !7, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !9, i64 928, !9, i64 936, !7, i64 944, !7, i64 948, !7, i64 952, !7, i64 956, !7, i64 960, !9, i64 968, !9, i64 976, !14, i64 984, !7, i64 1052, !7, i64 1056, !15, i64 1064, !2, i64 1104, !3, i64 1112, !17, i64 1120, !18, i64 1144}
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
!19 = !{!7, !7, i64 0}
!20 = !{!21, !7, i64 836}
!21 = !{!"gx_device_printer_s", !7, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !7, i64 40, !2, i64 48, !8, i64 56, !7, i64 80, !7, i64 84, !7, i64 88, !10, i64 96, !13, i64 816, !7, i64 832, !7, i64 836, !7, i64 840, !7, i64 844, !7, i64 848, !7, i64 852, !3, i64 856, !3, i64 864, !7, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !9, i64 928, !9, i64 936, !7, i64 944, !7, i64 948, !7, i64 952, !7, i64 956, !7, i64 960, !9, i64 968, !9, i64 976, !14, i64 984, !7, i64 1052, !7, i64 1056, !15, i64 1064, !2, i64 1104, !3, i64 1112, !17, i64 1120, !18, i64 1144, !3, i64 1728, !22, i64 12968, !3, i64 13056, !7, i64 17152, !7, i64 17156, !7, i64 17160, !7, i64 17164, !7, i64 17168, !7, i64 17172, !2, i64 17176, !9, i64 17184, !2, i64 17192, !2, i64 17200, !2, i64 17208, !2, i64 17216, !2, i64 17224, !7, i64 17232, !2, i64 17240, !7, i64 17248, !7, i64 17252, !24, i64 17256, !7, i64 17288, !2, i64 17296, !18, i64 17304, !18, i64 17888}
!22 = !{!"gx_printer_device_procs_s", !2, i64 0, !2, i64 8, !23, i64 16, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80}
!23 = !{!"gx_device_buf_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24}
!24 = !{!"bg_print_s", !2, i64 0, !2, i64 8, !2, i64 16, !7, i64 24, !7, i64 28}
!25 = !{!21, !7, i64 832}
!26 = !{!21, !2, i64 24}
!27 = !{!28, !2, i64 200}
!28 = !{!"gs_memory_s", !2, i64 0, !29, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!29 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!30 = !{!28, !2, i64 88}
!31 = !{!21, !2, i64 16}
!32 = !{!9, !9, i64 0}
!33 = !{!3, !3, i64 0}
!34 = !{!28, !2, i64 24}
!35 = !{!21, !2, i64 17936}
!36 = !{!11, !11, i64 0}
!37 = !{!21, !2, i64 17176}
