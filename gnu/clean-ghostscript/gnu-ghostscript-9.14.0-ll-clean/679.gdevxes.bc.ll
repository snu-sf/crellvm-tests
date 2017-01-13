; ModuleID = './gdevxes.bc'
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

@xes_procs = internal global %struct.gx_device_procs_s { i32 (%struct.gx_device_s*)* @gdev_prn_open, void (%struct.gx_device_s*, %struct.gs_matrix_s*)* null, i32 (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i32, i32)* @sixel_output_page, i32 (%struct.gx_device_s*)* @gdev_prn_close, i64 (%struct.gx_device_s*, i16*)* @gx_default_b_w_map_rgb_color, i32 (%struct.gx_device_s*, i64, i16*)* @gx_default_b_w_map_color_rgb, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* null, i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* null, i32 (%struct.gx_device_s*, i32, i8*, i8**)* null, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @gdev_prn_get_params, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @gdev_prn_put_params, i64 (%struct.gx_device_s*, i16*)* null, %struct.gx_xfont_procs_s* (%struct.gx_device_s*)* null, %struct.gx_device_s* (%struct.gx_device_s*)* null, i64 (%struct.gx_device_s*, i16, i16, i16, i16)* null, %struct.gx_device_s* (%struct.gx_device_s*)* @gx_page_device_get_page_device, i32 (%struct.gx_device_s*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)* null, i32 (%struct.gx_device_s*, i32, i32*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* null, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)* null, i32 (%struct.gx_device_s*, i64, i16*)* null, i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)* null, i32 (%struct.gx_device_s*, %struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_transparency_group_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gx_transparency_mask_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32)* null, i64 (%struct.gx_device_s*, i16*)* @gx_default_b_w_map_rgb_color, i32 (%struct.gx_device_s*, i64, i16*)* @gx_default_b_w_map_color_rgb, i32 (%struct.gx_device_s*, i64, %struct.gs_pattern1_instance_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* null, %struct.gs_devn_params_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i8*, i32)* @gdev_prn_dev_spec_op, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)* @gx_default_get_profile, void (%struct.gx_device_s*, i32)* @gx_default_set_graphics_type_tag, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_process_page_options_s*)* null }, align 8
@.str = private unnamed_addr constant [4 x i8] c"xes\00", align 1
@st_device_printer = external constant %struct.gs_memory_struct_type_s, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"DeviceGray\00", align 1
@gs_xes_device = global { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [11240 x i8], { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* }, [4096 x i8], i32, i32, i32, i32, i32, i32, %struct._IO_FILE*, i64, i8*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s*, i32)*, %struct.gx_page_queue_s*, i32, %struct.gx_device_printer_s*, i32, i32, %struct.bg_print_s, i32, %struct.gx_saved_pages_list_s*, %struct.gx_device_procs_s, %struct.gx_device_procs_s } { i32 18472, %struct.gx_device_procs_s* @xes_procs, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), %struct.gs_memory_s* null, %struct.gs_memory_struct_type_s* @st_device_printer, i32 0, void (%struct.gx_device_s*)* null, %struct.rc_header_s zeroinitializer, i32 0, i32 0, i32 0, %struct.gx_device_color_info_s { i32 1, i32 1, i32 1, i16 1, i8 0, i32 1, i32 0, i32 2, i32 1, %struct.gx_device_anti_alias_info_s { i32 1, i32 1 }, i32 -1, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [64 x i64] zeroinitializer, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 -1, i64 0, i32 0 }, %struct.gx_device_cached_colors_s { i64 -1, i64 -1 }, i32 2550, i32 3300, i32 0, i32 0, i32 0, i32 0, [2 x float] [float 6.120000e+02, float 7.920000e+02], [4 x float] zeroinitializer, i32 0, [2 x float] [float 3.000000e+02, float 3.000000e+02], [2 x float] [float 3.000000e+02, float 3.000000e+02], [2 x float] zeroinitializer, [4 x float] [float 0.000000e+00, float 0x403CCCCCC0000000, float 0.000000e+00, float 0.000000e+00], i64 0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, %struct.gx_stroked_gradient_recognizer_s zeroinitializer, i32 0, i32 0, %struct.gdev_space_params_s { i64 10000000, i64 4000000, %struct.gx_band_params_s zeroinitializer, i32 0, i32 0 }, %struct.cmm_dev_profile_s* null, i32 0, %struct.gx_page_device_procs_s { i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_install, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_begin_page, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* @gx_default_end_page }, %struct.gx_device_procs_s zeroinitializer, [11240 x i8] zeroinitializer, { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* } { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)* @xes_print_page, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_print_page_copies, %struct.gx_device_buf_procs_s { i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, %struct.gx_render_plane_s*, %struct.gs_memory_s*, %struct.gx_colors_usage_s*)* @gx_default_create_buf_device, i32 (%struct.gx_device_buf_space_s*, %struct.gx_device_s*, %struct.gx_render_plane_s*, i32, i32)* @gx_default_size_buf_device, i32 (%struct.gx_device_s*, i8*, i32, i8**, i32, i32, i32)* @gx_default_setup_buf_device, void (%struct.gx_device_s*)* @gx_default_destroy_buf_device }, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)* @gx_default_get_space_params, i32 (%struct.gdev_prn_start_render_params_s*)* @gx_default_start_render_thread, i32 (%struct.gx_device_printer_s*)* @gx_default_open_render_device, i32 (%struct.gx_device_printer_s*)* @gx_default_close_render_device, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_buffer_page }, [4096 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 -1, i32 0, %struct._IO_FILE* null, i64 0, i8* null, %struct.gs_memory_s* null, %struct.gs_memory_s* null, i32 (%struct.gx_device_s*, i32)* null, %struct.gx_page_queue_s* null, i32 0, %struct.gx_device_printer_s* null, i32 0, i32 0, %struct.bg_print_s zeroinitializer, i32 0, %struct.gx_saved_pages_list_s* null, %struct.gx_device_procs_s zeroinitializer, %struct.gx_device_procs_s zeroinitializer }, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"\1B+X\0A\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"sixel_print_page\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"%s%d,%d,%d,%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"\1Bgw1;\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"\0C%s\00", align 1

declare i32 @gx_default_install(%struct.gx_device_s*, %struct.gs_state_s*) #0

declare i32 @gx_default_begin_page(%struct.gx_device_s*, %struct.gs_state_s*) #0

declare i32 @gx_default_end_page(%struct.gx_device_s*, i32, %struct.gs_state_s*) #0

; Function Attrs: nounwind uwtable
define internal i32 @xes_print_page(%struct.gx_device_printer_s* %pdev, %struct._IO_FILE* %prn_stream) #1 {
entry:
  %pdev.addr = alloca %struct.gx_device_printer_s*, align 8
  %prn_stream.addr = alloca %struct._IO_FILE*, align 8
  store %struct.gx_device_printer_s* %pdev, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  store %struct._IO_FILE* %prn_stream, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %0 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call = call i32 @sixel_print_page(%struct.gx_device_printer_s* %0, %struct._IO_FILE* %1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0)) #3
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

declare i32 @gdev_prn_open(%struct.gx_device_s*) #0

; Function Attrs: nounwind uwtable
define internal i32 @sixel_output_page(%struct.gx_device_s* %pdev, i32 %num_copies, i32 %flush) #1 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_s*, align 8
  %num_copies.addr = alloca i32, align 4
  %flush.addr = alloca i32, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %pdev, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  store i32 %num_copies, i32* %num_copies.addr, align 4, !tbaa !5
  store i32 %flush, i32* %flush.addr, align 4, !tbaa !5
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %call = call i32 @gdev_prn_open_printer(%struct.gx_device_s* %1, i32 0) #3
  store i32 %call, i32* %code, align 4, !tbaa !5
  %2 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %3, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %5 = load i32, i32* %num_copies.addr, align 4, !tbaa !5
  %6 = load i32, i32* %flush.addr, align 4, !tbaa !5
  %call1 = call i32 @gdev_prn_output_page(%struct.gx_device_s* %4, i32 %5, i32 %6) #3
  store i32 %call1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %7 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %7) #2
  %8 = load i32, i32* %retval
  ret i32 %8
}

declare i32 @gdev_prn_close(%struct.gx_device_s*) #0

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

declare i32 @gdev_prn_open_printer(%struct.gx_device_s*, i32) #0

declare i32 @gdev_prn_output_page(%struct.gx_device_s*, i32, i32) #0

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define internal i32 @sixel_print_page(%struct.gx_device_printer_s* %pdev, %struct._IO_FILE* %prn_stream, i8* %init) #1 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_printer_s*, align 8
  %prn_stream.addr = alloca %struct._IO_FILE*, align 8
  %init.addr = alloca i8*, align 8
  %buf = alloca i8*, align 8
  %b = alloca i8*, align 8
  %end = alloca i8*, align 8
  %last = alloca i8, align 1
  %tmp = alloca [4 x i8], align 1
  %run = alloca [8 x i8], align 1
  %t = alloca i8*, align 8
  %lnum = alloca i32, align 4
  %l = alloca i32, align 4
  %line_size = alloca i32, align 4
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %top = alloca i32, align 4
  %bottom = alloca i32, align 4
  %left = alloca i32, align 4
  %right = alloca i32, align 4
  %count = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_printer_s* %pdev, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  store %struct._IO_FILE* %prn_stream, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  store i8* %init, i8** %init.addr, align 8, !tbaa !1
  %0 = bitcast i8** %buf to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = bitcast i8** %b to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #2
  %2 = bitcast i8** %end to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #2
  call void @llvm.lifetime.start(i64 1, i8* %last) #2
  store i8 0, i8* %last, align 1, !tbaa !7
  %3 = bitcast [4 x i8]* %tmp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = bitcast [8 x i8]* %run to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #2
  %5 = bitcast i8** %t to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #2
  %6 = bitcast i32* %lnum to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = bitcast i32* %l to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #2
  %8 = bitcast i32* %line_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #2
  %9 = bitcast i32* %width to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #2
  %10 = bitcast i32* %height to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #2
  %11 = bitcast i32* %top to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #2
  %12 = bitcast i32* %bottom to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #2
  %13 = bitcast i32* %left to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #2
  %14 = bitcast i32* %right to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #2
  %15 = bitcast i32* %count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #2
  store i32 0, i32* %count, align 4, !tbaa !5
  %16 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %17 = bitcast %struct.gx_device_printer_s* %16 to %struct.gx_device_s*
  %call = call i32 @gx_device_raster(%struct.gx_device_s* %17, i32 0) #3
  store i32 %call, i32* %line_size, align 4, !tbaa !5
  %18 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %height13 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %18, i32 0, i32 14
  %19 = load i32, i32* %height13, align 4, !tbaa !8
  store i32 %19, i32* %height, align 4, !tbaa !5
  %20 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %height14 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %20, i32 0, i32 14
  %21 = load i32, i32* %height14, align 4, !tbaa !8
  store i32 %21, i32* %top, align 4, !tbaa !5
  %22 = load i32, i32* %line_size, align 4, !tbaa !5
  store i32 %22, i32* %left, align 4, !tbaa !5
  store i32 0, i32* %right, align 4, !tbaa !5
  store i32 0, i32* %bottom, align 4, !tbaa !5
  %23 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %23, i32 0, i32 3
  %24 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !24
  %non_gc_memory = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %24, i32 0, i32 3
  %25 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory, align 8, !tbaa !25
  %non_gc_memory15 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %25, i32 0, i32 3
  %26 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory15, align 8, !tbaa !25
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %26, i32 0, i32 1
  %alloc_byte_array = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 10
  %27 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array, align 8, !tbaa !28
  %28 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory16 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %28, i32 0, i32 3
  %29 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory16, align 8, !tbaa !24
  %non_gc_memory17 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %29, i32 0, i32 3
  %30 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory17, align 8, !tbaa !25
  %non_gc_memory18 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %30, i32 0, i32 3
  %31 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory18, align 8, !tbaa !25
  %32 = load i32, i32* %line_size, align 4, !tbaa !5
  %call19 = call i8* %27(%struct.gs_memory_s* %31, i32 %32, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0)) #3
  store i8* %call19, i8** %buf, align 8, !tbaa !1
  %33 = load i8*, i8** %buf, align 8, !tbaa !1
  %34 = load i32, i32* %line_size, align 4, !tbaa !5
  %idx.ext = sext i32 %34 to i64
  %add.ptr = getelementptr inbounds i8, i8* %33, i64 %idx.ext
  %add.ptr20 = getelementptr inbounds i8, i8* %add.ptr, i64 -1
  store i8* %add.ptr20, i8** %end, align 8, !tbaa !1
  %35 = load i8*, i8** %buf, align 8, !tbaa !1
  %tobool = icmp ne i8* %35, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  store i32 0, i32* %lnum, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc.77, %if.end
  %36 = load i32, i32* %lnum, align 4, !tbaa !5
  %37 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %height21 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %37, i32 0, i32 14
  %38 = load i32, i32* %height21, align 4, !tbaa !8
  %cmp = icmp slt i32 %36, %38
  br i1 %cmp, label %for.body, label %for.end.78

for.body:                                         ; preds = %for.cond
  %39 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %40 = load i32, i32* %lnum, align 4, !tbaa !5
  %41 = load i8*, i8** %buf, align 8, !tbaa !1
  %42 = load i32, i32* %line_size, align 4, !tbaa !5
  %call22 = call i32 @gdev_prn_copy_scan_lines(%struct.gx_device_printer_s* %39, i32 %40, i8* %41, i32 %42) #3
  %43 = load i8*, i8** %buf, align 8, !tbaa !1
  store i8* %43, i8** %b, align 8, !tbaa !1
  br label %for.cond.23

for.cond.23:                                      ; preds = %for.inc, %for.body
  %44 = load i8*, i8** %b, align 8, !tbaa !1
  %45 = load i8*, i8** %end, align 8, !tbaa !1
  %cmp24 = icmp ule i8* %44, %45
  br i1 %cmp24, label %for.body.25, label %for.end

for.body.25:                                      ; preds = %for.cond.23
  %46 = load i8*, i8** %b, align 8, !tbaa !1
  %47 = load i8, i8* %46, align 1, !tbaa !7
  %tobool26 = icmp ne i8 %47, 0
  br i1 %tobool26, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %for.body.25
  br label %for.end

if.end.28:                                        ; preds = %for.body.25
  br label %for.inc

for.inc:                                          ; preds = %if.end.28
  %48 = load i8*, i8** %b, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %48, i32 1
  store i8* %incdec.ptr, i8** %b, align 8, !tbaa !1
  br label %for.cond.23

for.end:                                          ; preds = %if.then.27, %for.cond.23
  %49 = load i8*, i8** %b, align 8, !tbaa !1
  %50 = load i8*, i8** %end, align 8, !tbaa !1
  %cmp29 = icmp ule i8* %49, %50
  br i1 %cmp29, label %if.then.30, label %if.end.76

if.then.30:                                       ; preds = %for.end
  %51 = load i32, i32* %top, align 4, !tbaa !5
  %52 = load i32, i32* %lnum, align 4, !tbaa !5
  %cmp31 = icmp slt i32 %51, %52
  br i1 %cmp31, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.30
  %53 = load i32, i32* %top, align 4, !tbaa !5
  br label %cond.end

cond.false:                                       ; preds = %if.then.30
  %54 = load i32, i32* %lnum, align 4, !tbaa !5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %53, %cond.true ], [ %54, %cond.false ]
  store i32 %cond, i32* %top, align 4, !tbaa !5
  %55 = load i32, i32* %left, align 4, !tbaa !5
  %56 = load i8*, i8** %b, align 8, !tbaa !1
  %57 = load i8*, i8** %buf, align 8, !tbaa !1
  %sub.ptr.lhs.cast = ptrtoint i8* %56 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %57 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv = trunc i64 %sub.ptr.sub to i32
  %cmp32 = icmp slt i32 %55, %conv
  br i1 %cmp32, label %cond.true.34, label %cond.false.35

cond.true.34:                                     ; preds = %cond.end
  %58 = load i32, i32* %left, align 4, !tbaa !5
  br label %cond.end.40

cond.false.35:                                    ; preds = %cond.end
  %59 = load i8*, i8** %b, align 8, !tbaa !1
  %60 = load i8*, i8** %buf, align 8, !tbaa !1
  %sub.ptr.lhs.cast36 = ptrtoint i8* %59 to i64
  %sub.ptr.rhs.cast37 = ptrtoint i8* %60 to i64
  %sub.ptr.sub38 = sub i64 %sub.ptr.lhs.cast36, %sub.ptr.rhs.cast37
  %conv39 = trunc i64 %sub.ptr.sub38 to i32
  br label %cond.end.40

cond.end.40:                                      ; preds = %cond.false.35, %cond.true.34
  %cond41 = phi i32 [ %58, %cond.true.34 ], [ %conv39, %cond.false.35 ]
  store i32 %cond41, i32* %left, align 4, !tbaa !5
  %61 = load i32, i32* %bottom, align 4, !tbaa !5
  %62 = load i32, i32* %lnum, align 4, !tbaa !5
  %cmp42 = icmp sgt i32 %61, %62
  br i1 %cmp42, label %cond.true.44, label %cond.false.45

cond.true.44:                                     ; preds = %cond.end.40
  %63 = load i32, i32* %bottom, align 4, !tbaa !5
  br label %cond.end.46

cond.false.45:                                    ; preds = %cond.end.40
  %64 = load i32, i32* %lnum, align 4, !tbaa !5
  br label %cond.end.46

cond.end.46:                                      ; preds = %cond.false.45, %cond.true.44
  %cond47 = phi i32 [ %63, %cond.true.44 ], [ %64, %cond.false.45 ]
  store i32 %cond47, i32* %bottom, align 4, !tbaa !5
  %65 = load i8*, i8** %end, align 8, !tbaa !1
  store i8* %65, i8** %b, align 8, !tbaa !1
  br label %for.cond.48

for.cond.48:                                      ; preds = %for.inc.55, %cond.end.46
  %66 = load i8*, i8** %b, align 8, !tbaa !1
  %67 = load i8*, i8** %buf, align 8, !tbaa !1
  %cmp49 = icmp uge i8* %66, %67
  br i1 %cmp49, label %for.body.51, label %for.end.57

for.body.51:                                      ; preds = %for.cond.48
  %68 = load i8*, i8** %b, align 8, !tbaa !1
  %69 = load i8, i8* %68, align 1, !tbaa !7
  %tobool52 = icmp ne i8 %69, 0
  br i1 %tobool52, label %if.then.53, label %if.end.54

if.then.53:                                       ; preds = %for.body.51
  br label %for.end.57

if.end.54:                                        ; preds = %for.body.51
  br label %for.inc.55

for.inc.55:                                       ; preds = %if.end.54
  %70 = load i8*, i8** %b, align 8, !tbaa !1
  %incdec.ptr56 = getelementptr inbounds i8, i8* %70, i32 -1
  store i8* %incdec.ptr56, i8** %b, align 8, !tbaa !1
  br label %for.cond.48

for.end.57:                                       ; preds = %if.then.53, %for.cond.48
  %71 = load i8*, i8** %b, align 8, !tbaa !1
  %72 = load i8*, i8** %buf, align 8, !tbaa !1
  %cmp58 = icmp uge i8* %71, %72
  br i1 %cmp58, label %if.then.60, label %if.end.75

if.then.60:                                       ; preds = %for.end.57
  %73 = load i32, i32* %right, align 4, !tbaa !5
  %74 = load i8*, i8** %b, align 8, !tbaa !1
  %75 = load i8*, i8** %buf, align 8, !tbaa !1
  %sub.ptr.lhs.cast61 = ptrtoint i8* %74 to i64
  %sub.ptr.rhs.cast62 = ptrtoint i8* %75 to i64
  %sub.ptr.sub63 = sub i64 %sub.ptr.lhs.cast61, %sub.ptr.rhs.cast62
  %conv64 = trunc i64 %sub.ptr.sub63 to i32
  %cmp65 = icmp sgt i32 %73, %conv64
  br i1 %cmp65, label %cond.true.67, label %cond.false.68

cond.true.67:                                     ; preds = %if.then.60
  %76 = load i32, i32* %right, align 4, !tbaa !5
  br label %cond.end.73

cond.false.68:                                    ; preds = %if.then.60
  %77 = load i8*, i8** %b, align 8, !tbaa !1
  %78 = load i8*, i8** %buf, align 8, !tbaa !1
  %sub.ptr.lhs.cast69 = ptrtoint i8* %77 to i64
  %sub.ptr.rhs.cast70 = ptrtoint i8* %78 to i64
  %sub.ptr.sub71 = sub i64 %sub.ptr.lhs.cast69, %sub.ptr.rhs.cast70
  %conv72 = trunc i64 %sub.ptr.sub71 to i32
  br label %cond.end.73

cond.end.73:                                      ; preds = %cond.false.68, %cond.true.67
  %cond74 = phi i32 [ %76, %cond.true.67 ], [ %conv72, %cond.false.68 ]
  store i32 %cond74, i32* %right, align 4, !tbaa !5
  br label %if.end.75

if.end.75:                                        ; preds = %cond.end.73, %for.end.57
  br label %if.end.76

if.end.76:                                        ; preds = %if.end.75, %for.end
  br label %for.inc.77

for.inc.77:                                       ; preds = %if.end.76
  %79 = load i32, i32* %lnum, align 4, !tbaa !5
  %inc = add nsw i32 %79, 1
  store i32 %inc, i32* %lnum, align 4, !tbaa !5
  br label %for.cond

for.end.78:                                       ; preds = %for.cond
  %80 = load i32, i32* %right, align 4, !tbaa !5
  %81 = load i32, i32* %left, align 4, !tbaa !5
  %sub = sub nsw i32 %80, %81
  %add = add nsw i32 %sub, 1
  store i32 %add, i32* %width, align 4, !tbaa !5
  %82 = load i32, i32* %bottom, align 4, !tbaa !5
  %83 = load i32, i32* %top, align 4, !tbaa !5
  %sub79 = sub nsw i32 %82, %83
  %add80 = add nsw i32 %sub79, 1
  store i32 %add80, i32* %height, align 4, !tbaa !5
  %84 = load i32, i32* %width, align 4, !tbaa !5
  %add81 = add nsw i32 %84, 2
  %div = sdiv i32 %add81, 3
  %mul = mul nsw i32 %div, 3
  store i32 %mul, i32* %width, align 4, !tbaa !5
  %85 = load i32, i32* %line_size, align 4, !tbaa !5
  %sub82 = sub nsw i32 %85, 1
  %86 = load i32, i32* %left, align 4, !tbaa !5
  %87 = load i32, i32* %width, align 4, !tbaa !5
  %add83 = add nsw i32 %86, %87
  %sub84 = sub nsw i32 %add83, 1
  %cmp85 = icmp slt i32 %sub82, %sub84
  br i1 %cmp85, label %cond.true.87, label %cond.false.89

cond.true.87:                                     ; preds = %for.end.78
  %88 = load i32, i32* %line_size, align 4, !tbaa !5
  %sub88 = sub nsw i32 %88, 1
  br label %cond.end.92

cond.false.89:                                    ; preds = %for.end.78
  %89 = load i32, i32* %left, align 4, !tbaa !5
  %90 = load i32, i32* %width, align 4, !tbaa !5
  %add90 = add nsw i32 %89, %90
  %sub91 = sub nsw i32 %add90, 1
  br label %cond.end.92

cond.end.92:                                      ; preds = %cond.false.89, %cond.true.87
  %cond93 = phi i32 [ %sub88, %cond.true.87 ], [ %sub91, %cond.false.89 ]
  store i32 %cond93, i32* %right, align 4, !tbaa !5
  %91 = load i8*, i8** %buf, align 8, !tbaa !1
  %92 = load i32, i32* %right, align 4, !tbaa !5
  %idx.ext94 = sext i32 %92 to i64
  %add.ptr95 = getelementptr inbounds i8, i8* %91, i64 %idx.ext94
  store i8* %add.ptr95, i8** %end, align 8, !tbaa !1
  %93 = load i8*, i8** %init.addr, align 8, !tbaa !1
  %94 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call96 = call i32 @fputs(i8* %93, %struct._IO_FILE* %94) #3
  %95 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %96 = load i32, i32* %left, align 4, !tbaa !5
  %mul97 = mul nsw i32 %96, 8
  %97 = load i32, i32* %top, align 4, !tbaa !5
  %sub98 = sub nsw i32 3300, %97
  %98 = load i32, i32* %width, align 4, !tbaa !5
  %mul99 = mul nsw i32 %98, 8
  %99 = load i32, i32* %height, align 4, !tbaa !5
  %call100 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %95, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i32 %mul97, i32 %sub98, i32 %mul99, i32 %99) #3
  %100 = load i32, i32* %top, align 4, !tbaa !5
  store i32 %100, i32* %lnum, align 4, !tbaa !5
  br label %for.cond.101

for.cond.101:                                     ; preds = %for.inc.211, %cond.end.92
  %101 = load i32, i32* %lnum, align 4, !tbaa !5
  %102 = load i32, i32* %bottom, align 4, !tbaa !5
  %cmp102 = icmp sle i32 %101, %102
  br i1 %cmp102, label %for.body.104, label %for.end.213

for.body.104:                                     ; preds = %for.cond.101
  %103 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %104 = load i32, i32* %lnum, align 4, !tbaa !5
  %105 = load i8*, i8** %buf, align 8, !tbaa !1
  %106 = load i32, i32* %line_size, align 4, !tbaa !5
  %call105 = call i32 @gdev_prn_copy_scan_lines(%struct.gx_device_printer_s* %103, i32 %104, i8* %105, i32 %106) #3
  %107 = load i8*, i8** %buf, align 8, !tbaa !1
  %108 = load i32, i32* %left, align 4, !tbaa !5
  %idx.ext106 = sext i32 %108 to i64
  %add.ptr107 = getelementptr inbounds i8, i8* %107, i64 %idx.ext106
  store i8* %add.ptr107, i8** %b, align 8, !tbaa !1
  br label %for.cond.108

for.cond.108:                                     ; preds = %for.end.209, %for.body.104
  %109 = load i8*, i8** %b, align 8, !tbaa !1
  %110 = load i8*, i8** %end, align 8, !tbaa !1
  %cmp109 = icmp ule i8* %109, %110
  br i1 %cmp109, label %for.body.111, label %for.end.210

for.body.111:                                     ; preds = %for.cond.108
  %arrayidx = getelementptr inbounds [4 x i8], [4 x i8]* %tmp, i32 0, i64 2
  store i8 0, i8* %arrayidx, align 1, !tbaa !7
  %arrayidx112 = getelementptr inbounds [4 x i8], [4 x i8]* %tmp, i32 0, i64 1
  store i8 0, i8* %arrayidx112, align 1, !tbaa !7
  %arrayidx113 = getelementptr inbounds [4 x i8], [4 x i8]* %tmp, i32 0, i64 0
  store i8 0, i8* %arrayidx113, align 1, !tbaa !7
  %111 = load i8*, i8** %b, align 8, !tbaa !1
  %incdec.ptr114 = getelementptr inbounds i8, i8* %111, i32 1
  store i8* %incdec.ptr114, i8** %b, align 8, !tbaa !1
  %112 = load i8, i8* %111, align 1, !tbaa !7
  %arrayidx115 = getelementptr inbounds [4 x i8], [4 x i8]* %tmp, i32 0, i64 0
  store i8 %112, i8* %arrayidx115, align 1, !tbaa !7
  %113 = load i8*, i8** %b, align 8, !tbaa !1
  %114 = load i8*, i8** %end, align 8, !tbaa !1
  %cmp116 = icmp ule i8* %113, %114
  br i1 %cmp116, label %if.then.118, label %if.end.121

if.then.118:                                      ; preds = %for.body.111
  %115 = load i8*, i8** %b, align 8, !tbaa !1
  %incdec.ptr119 = getelementptr inbounds i8, i8* %115, i32 1
  store i8* %incdec.ptr119, i8** %b, align 8, !tbaa !1
  %116 = load i8, i8* %115, align 1, !tbaa !7
  %arrayidx120 = getelementptr inbounds [4 x i8], [4 x i8]* %tmp, i32 0, i64 1
  store i8 %116, i8* %arrayidx120, align 1, !tbaa !7
  br label %if.end.121

if.end.121:                                       ; preds = %if.then.118, %for.body.111
  %117 = load i8*, i8** %b, align 8, !tbaa !1
  %118 = load i8*, i8** %end, align 8, !tbaa !1
  %cmp122 = icmp ule i8* %117, %118
  br i1 %cmp122, label %if.then.124, label %if.end.127

if.then.124:                                      ; preds = %if.end.121
  %119 = load i8*, i8** %b, align 8, !tbaa !1
  %incdec.ptr125 = getelementptr inbounds i8, i8* %119, i32 1
  store i8* %incdec.ptr125, i8** %b, align 8, !tbaa !1
  %120 = load i8, i8* %119, align 1, !tbaa !7
  %arrayidx126 = getelementptr inbounds [4 x i8], [4 x i8]* %tmp, i32 0, i64 2
  store i8 %120, i8* %arrayidx126, align 1, !tbaa !7
  br label %if.end.127

if.end.127:                                       ; preds = %if.then.124, %if.end.121
  %arrayidx128 = getelementptr inbounds [4 x i8], [4 x i8]* %tmp, i32 0, i64 2
  %121 = load i8, i8* %arrayidx128, align 1, !tbaa !7
  %conv129 = zext i8 %121 to i32
  %and = and i32 %conv129, 63
  %add130 = add nsw i32 %and, 63
  %conv131 = trunc i32 %add130 to i8
  %arrayidx132 = getelementptr inbounds [4 x i8], [4 x i8]* %tmp, i32 0, i64 3
  store i8 %conv131, i8* %arrayidx132, align 1, !tbaa !7
  %arrayidx133 = getelementptr inbounds [4 x i8], [4 x i8]* %tmp, i32 0, i64 2
  %122 = load i8, i8* %arrayidx133, align 1, !tbaa !7
  %conv134 = zext i8 %122 to i32
  %shr = ashr i32 %conv134, 6
  %arrayidx135 = getelementptr inbounds [4 x i8], [4 x i8]* %tmp, i32 0, i64 1
  %123 = load i8, i8* %arrayidx135, align 1, !tbaa !7
  %conv136 = zext i8 %123 to i32
  %and137 = and i32 %conv136, 15
  %shl = shl i32 %and137, 2
  %or = or i32 %shr, %shl
  %add138 = add nsw i32 %or, 63
  %conv139 = trunc i32 %add138 to i8
  %arrayidx140 = getelementptr inbounds [4 x i8], [4 x i8]* %tmp, i32 0, i64 2
  store i8 %conv139, i8* %arrayidx140, align 1, !tbaa !7
  %arrayidx141 = getelementptr inbounds [4 x i8], [4 x i8]* %tmp, i32 0, i64 1
  %124 = load i8, i8* %arrayidx141, align 1, !tbaa !7
  %conv142 = zext i8 %124 to i32
  %shr143 = ashr i32 %conv142, 4
  %arrayidx144 = getelementptr inbounds [4 x i8], [4 x i8]* %tmp, i32 0, i64 0
  %125 = load i8, i8* %arrayidx144, align 1, !tbaa !7
  %conv145 = zext i8 %125 to i32
  %and146 = and i32 %conv145, 3
  %shl147 = shl i32 %and146, 4
  %or148 = or i32 %shr143, %shl147
  %add149 = add nsw i32 %or148, 63
  %conv150 = trunc i32 %add149 to i8
  %arrayidx151 = getelementptr inbounds [4 x i8], [4 x i8]* %tmp, i32 0, i64 1
  store i8 %conv150, i8* %arrayidx151, align 1, !tbaa !7
  %arrayidx152 = getelementptr inbounds [4 x i8], [4 x i8]* %tmp, i32 0, i64 0
  %126 = load i8, i8* %arrayidx152, align 1, !tbaa !7
  %conv153 = zext i8 %126 to i32
  %shr154 = ashr i32 %conv153, 2
  %add155 = add nsw i32 %shr154, 63
  %conv156 = trunc i32 %add155 to i8
  %arrayidx157 = getelementptr inbounds [4 x i8], [4 x i8]* %tmp, i32 0, i64 0
  store i8 %conv156, i8* %arrayidx157, align 1, !tbaa !7
  store i32 0, i32* %l, align 4, !tbaa !5
  br label %for.cond.158

for.cond.158:                                     ; preds = %for.inc.207, %if.end.127
  %127 = load i32, i32* %l, align 4, !tbaa !5
  %cmp159 = icmp slt i32 %127, 4
  br i1 %cmp159, label %for.body.161, label %for.end.209

for.body.161:                                     ; preds = %for.cond.158
  %128 = load i32, i32* %l, align 4, !tbaa !5
  %idxprom = sext i32 %128 to i64
  %arrayidx162 = getelementptr inbounds [4 x i8], [4 x i8]* %tmp, i32 0, i64 %idxprom
  %129 = load i8, i8* %arrayidx162, align 1, !tbaa !7
  %conv163 = zext i8 %129 to i32
  %130 = load i8, i8* %last, align 1, !tbaa !7
  %conv164 = zext i8 %130 to i32
  %cmp165 = icmp eq i32 %conv163, %conv164
  br i1 %cmp165, label %if.then.167, label %if.else

if.then.167:                                      ; preds = %for.body.161
  %131 = load i32, i32* %count, align 4, !tbaa !5
  %inc168 = add nsw i32 %131, 1
  store i32 %inc168, i32* %count, align 4, !tbaa !5
  %132 = load i32, i32* %count, align 4, !tbaa !5
  %cmp169 = icmp eq i32 %132, 32767
  br i1 %cmp169, label %if.then.171, label %if.end.186

if.then.171:                                      ; preds = %if.then.167
  %arraydecay = getelementptr inbounds [8 x i8], [8 x i8]* %run, i32 0, i32 0
  %133 = load i32, i32* %count, align 4, !tbaa !5
  %call172 = call i32 (i8*, i8*, ...) @gs_sprintf(i8* %arraydecay, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i32 0, i32 0), i32 %133) #3
  %idxprom173 = sext i32 %call172 to i64
  %arrayidx174 = getelementptr inbounds [8 x i8], [8 x i8]* %run, i32 0, i64 %idxprom173
  store i8 0, i8* %arrayidx174, align 1, !tbaa !7
  %arraydecay175 = getelementptr inbounds [8 x i8], [8 x i8]* %run, i32 0, i32 0
  store i8* %arraydecay175, i8** %t, align 8, !tbaa !1
  br label %for.cond.176

for.cond.176:                                     ; preds = %for.inc.181, %if.then.171
  %134 = load i8*, i8** %t, align 8, !tbaa !1
  %135 = load i8, i8* %134, align 1, !tbaa !7
  %tobool177 = icmp ne i8 %135, 0
  br i1 %tobool177, label %for.body.178, label %for.end.183

for.body.178:                                     ; preds = %for.cond.176
  %136 = load i8*, i8** %t, align 8, !tbaa !1
  %137 = load i8, i8* %136, align 1, !tbaa !7
  %conv179 = sext i8 %137 to i32
  %138 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call180 = call i32 @fputc(i32 %conv179, %struct._IO_FILE* %138) #3
  br label %for.inc.181

for.inc.181:                                      ; preds = %for.body.178
  %139 = load i8*, i8** %t, align 8, !tbaa !1
  %incdec.ptr182 = getelementptr inbounds i8, i8* %139, i32 1
  store i8* %incdec.ptr182, i8** %t, align 8, !tbaa !1
  br label %for.cond.176

for.end.183:                                      ; preds = %for.cond.176
  %140 = load i8, i8* %last, align 1, !tbaa !7
  %conv184 = zext i8 %140 to i32
  %141 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call185 = call i32 @fputc(i32 %conv184, %struct._IO_FILE* %141) #3
  store i8 0, i8* %last, align 1, !tbaa !7
  store i32 0, i32* %count, align 4, !tbaa !5
  br label %if.end.186

if.end.186:                                       ; preds = %for.end.183, %if.then.167
  br label %if.end.206

if.else:                                          ; preds = %for.body.161
  %142 = load i32, i32* %count, align 4, !tbaa !5
  switch i32 %142, label %sw.default [
    i32 0, label %sw.epilog
    i32 1, label %sw.bb
  ]

sw.bb:                                            ; preds = %if.else
  %143 = load i8, i8* %last, align 1, !tbaa !7
  %conv187 = zext i8 %143 to i32
  %144 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call188 = call i32 @fputc(i32 %conv187, %struct._IO_FILE* %144) #3
  br label %sw.epilog

sw.default:                                       ; preds = %if.else
  %arraydecay189 = getelementptr inbounds [8 x i8], [8 x i8]* %run, i32 0, i32 0
  %145 = load i32, i32* %count, align 4, !tbaa !5
  %call190 = call i32 (i8*, i8*, ...) @gs_sprintf(i8* %arraydecay189, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i32 0, i32 0), i32 %145) #3
  %idxprom191 = sext i32 %call190 to i64
  %arrayidx192 = getelementptr inbounds [8 x i8], [8 x i8]* %run, i32 0, i64 %idxprom191
  store i8 0, i8* %arrayidx192, align 1, !tbaa !7
  %arraydecay193 = getelementptr inbounds [8 x i8], [8 x i8]* %run, i32 0, i32 0
  store i8* %arraydecay193, i8** %t, align 8, !tbaa !1
  br label %for.cond.194

for.cond.194:                                     ; preds = %for.inc.199, %sw.default
  %146 = load i8*, i8** %t, align 8, !tbaa !1
  %147 = load i8, i8* %146, align 1, !tbaa !7
  %tobool195 = icmp ne i8 %147, 0
  br i1 %tobool195, label %for.body.196, label %for.end.201

for.body.196:                                     ; preds = %for.cond.194
  %148 = load i8*, i8** %t, align 8, !tbaa !1
  %149 = load i8, i8* %148, align 1, !tbaa !7
  %conv197 = sext i8 %149 to i32
  %150 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call198 = call i32 @fputc(i32 %conv197, %struct._IO_FILE* %150) #3
  br label %for.inc.199

for.inc.199:                                      ; preds = %for.body.196
  %151 = load i8*, i8** %t, align 8, !tbaa !1
  %incdec.ptr200 = getelementptr inbounds i8, i8* %151, i32 1
  store i8* %incdec.ptr200, i8** %t, align 8, !tbaa !1
  br label %for.cond.194

for.end.201:                                      ; preds = %for.cond.194
  %152 = load i8, i8* %last, align 1, !tbaa !7
  %conv202 = zext i8 %152 to i32
  %153 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call203 = call i32 @fputc(i32 %conv202, %struct._IO_FILE* %153) #3
  br label %sw.epilog

sw.epilog:                                        ; preds = %for.end.201, %sw.bb, %if.else
  %154 = load i32, i32* %l, align 4, !tbaa !5
  %idxprom204 = sext i32 %154 to i64
  %arrayidx205 = getelementptr inbounds [4 x i8], [4 x i8]* %tmp, i32 0, i64 %idxprom204
  %155 = load i8, i8* %arrayidx205, align 1, !tbaa !7
  store i8 %155, i8* %last, align 1, !tbaa !7
  store i32 1, i32* %count, align 4, !tbaa !5
  br label %if.end.206

if.end.206:                                       ; preds = %sw.epilog, %if.end.186
  br label %for.inc.207

for.inc.207:                                      ; preds = %if.end.206
  %156 = load i32, i32* %l, align 4, !tbaa !5
  %inc208 = add nsw i32 %156, 1
  store i32 %inc208, i32* %l, align 4, !tbaa !5
  br label %for.cond.158

for.end.209:                                      ; preds = %for.cond.158
  br label %for.cond.108

for.end.210:                                      ; preds = %for.cond.108
  br label %for.inc.211

for.inc.211:                                      ; preds = %for.end.210
  %157 = load i32, i32* %lnum, align 4, !tbaa !5
  %inc212 = add nsw i32 %157, 1
  store i32 %inc212, i32* %lnum, align 4, !tbaa !5
  br label %for.cond.101

for.end.213:                                      ; preds = %for.cond.101
  %158 = load i32, i32* %count, align 4, !tbaa !5
  switch i32 %158, label %sw.default.217 [
    i32 0, label %sw.epilog.233
    i32 1, label %sw.bb.214
  ]

sw.bb.214:                                        ; preds = %for.end.213
  %159 = load i8, i8* %last, align 1, !tbaa !7
  %conv215 = zext i8 %159 to i32
  %160 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call216 = call i32 @fputc(i32 %conv215, %struct._IO_FILE* %160) #3
  br label %sw.epilog.233

sw.default.217:                                   ; preds = %for.end.213
  %arraydecay218 = getelementptr inbounds [8 x i8], [8 x i8]* %run, i32 0, i32 0
  %161 = load i32, i32* %count, align 4, !tbaa !5
  %call219 = call i32 (i8*, i8*, ...) @gs_sprintf(i8* %arraydecay218, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i32 0, i32 0), i32 %161) #3
  %idxprom220 = sext i32 %call219 to i64
  %arrayidx221 = getelementptr inbounds [8 x i8], [8 x i8]* %run, i32 0, i64 %idxprom220
  store i8 0, i8* %arrayidx221, align 1, !tbaa !7
  %arraydecay222 = getelementptr inbounds [8 x i8], [8 x i8]* %run, i32 0, i32 0
  store i8* %arraydecay222, i8** %t, align 8, !tbaa !1
  br label %for.cond.223

for.cond.223:                                     ; preds = %for.inc.228, %sw.default.217
  %162 = load i8*, i8** %t, align 8, !tbaa !1
  %163 = load i8, i8* %162, align 1, !tbaa !7
  %tobool224 = icmp ne i8 %163, 0
  br i1 %tobool224, label %for.body.225, label %for.end.230

for.body.225:                                     ; preds = %for.cond.223
  %164 = load i8*, i8** %t, align 8, !tbaa !1
  %165 = load i8, i8* %164, align 1, !tbaa !7
  %conv226 = sext i8 %165 to i32
  %166 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call227 = call i32 @fputc(i32 %conv226, %struct._IO_FILE* %166) #3
  br label %for.inc.228

for.inc.228:                                      ; preds = %for.body.225
  %167 = load i8*, i8** %t, align 8, !tbaa !1
  %incdec.ptr229 = getelementptr inbounds i8, i8* %167, i32 1
  store i8* %incdec.ptr229, i8** %t, align 8, !tbaa !1
  br label %for.cond.223

for.end.230:                                      ; preds = %for.cond.223
  %168 = load i8, i8* %last, align 1, !tbaa !7
  %conv231 = zext i8 %168 to i32
  %169 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call232 = call i32 @fputc(i32 %conv231, %struct._IO_FILE* %169) #3
  br label %sw.epilog.233

sw.epilog.233:                                    ; preds = %for.end.230, %sw.bb.214, %for.end.213
  %170 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call234 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %170, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0)) #3
  %171 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call235 = call i32 @fflush(%struct._IO_FILE* %171) #3
  %172 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory236 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %172, i32 0, i32 3
  %173 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory236, align 8, !tbaa !24
  %non_gc_memory237 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %173, i32 0, i32 3
  %174 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory237, align 8, !tbaa !25
  %non_gc_memory238 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %174, i32 0, i32 3
  %175 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory238, align 8, !tbaa !25
  %procs239 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %175, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs239, i32 0, i32 2
  %176 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !29
  %177 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory240 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %177, i32 0, i32 3
  %178 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory240, align 8, !tbaa !24
  %non_gc_memory241 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %178, i32 0, i32 3
  %179 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory241, align 8, !tbaa !25
  %non_gc_memory242 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %179, i32 0, i32 3
  %180 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory242, align 8, !tbaa !25
  %181 = load i8*, i8** %buf, align 8, !tbaa !1
  call void %176(%struct.gs_memory_s* %180, i8* %181, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0)) #3
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog.233, %if.then
  %182 = bitcast i32* %count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %182) #2
  %183 = bitcast i32* %right to i8*
  call void @llvm.lifetime.end(i64 4, i8* %183) #2
  %184 = bitcast i32* %left to i8*
  call void @llvm.lifetime.end(i64 4, i8* %184) #2
  %185 = bitcast i32* %bottom to i8*
  call void @llvm.lifetime.end(i64 4, i8* %185) #2
  %186 = bitcast i32* %top to i8*
  call void @llvm.lifetime.end(i64 4, i8* %186) #2
  %187 = bitcast i32* %height to i8*
  call void @llvm.lifetime.end(i64 4, i8* %187) #2
  %188 = bitcast i32* %width to i8*
  call void @llvm.lifetime.end(i64 4, i8* %188) #2
  %189 = bitcast i32* %line_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %189) #2
  %190 = bitcast i32* %l to i8*
  call void @llvm.lifetime.end(i64 4, i8* %190) #2
  %191 = bitcast i32* %lnum to i8*
  call void @llvm.lifetime.end(i64 4, i8* %191) #2
  %192 = bitcast i8** %t to i8*
  call void @llvm.lifetime.end(i64 8, i8* %192) #2
  %193 = bitcast [8 x i8]* %run to i8*
  call void @llvm.lifetime.end(i64 8, i8* %193) #2
  %194 = bitcast [4 x i8]* %tmp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %194) #2
  call void @llvm.lifetime.end(i64 1, i8* %last) #2
  %195 = bitcast i8** %end to i8*
  call void @llvm.lifetime.end(i64 8, i8* %195) #2
  %196 = bitcast i8** %b to i8*
  call void @llvm.lifetime.end(i64 8, i8* %196) #2
  %197 = bitcast i8** %buf to i8*
  call void @llvm.lifetime.end(i64 8, i8* %197) #2
  %198 = load i32, i32* %retval
  ret i32 %198
}

declare i32 @gx_device_raster(%struct.gx_device_s*, i32) #0

declare i32 @gdev_prn_copy_scan_lines(%struct.gx_device_printer_s*, i32, i8*, i32) #0

declare i32 @fputs(i8*, %struct._IO_FILE*) #0

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #0

declare i32 @gs_sprintf(i8*, i8*, ...) #0

declare i32 @fputc(i32, %struct._IO_FILE*) #0

declare i32 @fflush(%struct._IO_FILE*) #0

attributes #0 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nobuiltin }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !3, i64 0}
!7 = !{!3, !3, i64 0}
!8 = !{!9, !6, i64 836}
!9 = !{!"gx_device_printer_s", !6, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !6, i64 40, !2, i64 48, !10, i64 56, !6, i64 80, !6, i64 84, !6, i64 88, !12, i64 96, !15, i64 816, !6, i64 832, !6, i64 836, !6, i64 840, !6, i64 844, !6, i64 848, !6, i64 852, !3, i64 856, !3, i64 864, !6, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !11, i64 928, !11, i64 936, !6, i64 944, !6, i64 948, !6, i64 952, !6, i64 956, !6, i64 960, !11, i64 968, !11, i64 976, !16, i64 984, !6, i64 1052, !6, i64 1056, !17, i64 1064, !2, i64 1104, !3, i64 1112, !19, i64 1120, !20, i64 1144, !3, i64 1728, !21, i64 12968, !3, i64 13056, !6, i64 17152, !6, i64 17156, !6, i64 17160, !6, i64 17164, !6, i64 17168, !6, i64 17172, !2, i64 17176, !11, i64 17184, !2, i64 17192, !2, i64 17200, !2, i64 17208, !2, i64 17216, !2, i64 17224, !6, i64 17232, !2, i64 17240, !6, i64 17248, !6, i64 17252, !23, i64 17256, !6, i64 17288, !2, i64 17296, !20, i64 17304, !20, i64 17888}
!10 = !{!"rc_header_s", !11, i64 0, !2, i64 8, !2, i64 16}
!11 = !{!"long", !3, i64 0}
!12 = !{!"gx_device_color_info_s", !6, i64 0, !6, i64 4, !3, i64 8, !13, i64 12, !3, i64 14, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !14, i64 32, !3, i64 40, !3, i64 44, !3, i64 108, !3, i64 176, !2, i64 688, !3, i64 696, !11, i64 704, !6, i64 712}
!13 = !{!"short", !3, i64 0}
!14 = !{!"gx_device_anti_alias_info_s", !6, i64 0, !6, i64 4}
!15 = !{!"gx_device_cached_colors_s", !11, i64 0, !11, i64 8}
!16 = !{!"gx_stroked_gradient_recognizer_s", !6, i64 0, !3, i64 4, !3, i64 36}
!17 = !{!"gdev_space_params_s", !11, i64 0, !11, i64 8, !18, i64 16, !6, i64 32, !3, i64 36}
!18 = !{!"gx_band_params_s", !6, i64 0, !6, i64 4, !11, i64 8}
!19 = !{!"gx_page_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16}
!20 = !{!"gx_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176, !2, i64 184, !2, i64 192, !2, i64 200, !2, i64 208, !2, i64 216, !2, i64 224, !2, i64 232, !2, i64 240, !2, i64 248, !2, i64 256, !2, i64 264, !2, i64 272, !2, i64 280, !2, i64 288, !2, i64 296, !2, i64 304, !2, i64 312, !2, i64 320, !2, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !2, i64 376, !2, i64 384, !2, i64 392, !2, i64 400, !2, i64 408, !2, i64 416, !2, i64 424, !2, i64 432, !2, i64 440, !2, i64 448, !2, i64 456, !2, i64 464, !2, i64 472, !2, i64 480, !2, i64 488, !2, i64 496, !2, i64 504, !2, i64 512, !2, i64 520, !2, i64 528, !2, i64 536, !2, i64 544, !2, i64 552, !2, i64 560, !2, i64 568, !2, i64 576}
!21 = !{!"gx_printer_device_procs_s", !2, i64 0, !2, i64 8, !22, i64 16, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80}
!22 = !{!"gx_device_buf_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24}
!23 = !{!"bg_print_s", !2, i64 0, !2, i64 8, !2, i64 16, !6, i64 24, !6, i64 28}
!24 = !{!9, !2, i64 24}
!25 = !{!26, !2, i64 200}
!26 = !{!"gs_memory_s", !2, i64 0, !27, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!27 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!28 = !{!26, !2, i64 88}
!29 = !{!26, !2, i64 24}
