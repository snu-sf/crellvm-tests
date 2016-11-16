; ModuleID = './gdevlbp3.bc'
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
%struct.ppi = type { i32, i32, i32 }
%struct.bounding = type { i32, i32, i32, i32, i32 }

@prn_std_procs = external constant %struct.gx_device_procs_s, align 8
@.str = private unnamed_addr constant [7 x i8] c"lbp310\00", align 1
@st_device_printer = external constant %struct.gs_memory_struct_type_s, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"DeviceGray\00", align 1
@gs_lbp310_device = global { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [11240 x i8], { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* }, [4096 x i8], i32, i32, i32, i32, i32, i32, %struct._IO_FILE*, i64, i8*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s*, i32)*, %struct.gx_page_queue_s*, i32, %struct.gx_device_printer_s*, i32, i32, %struct.bg_print_s, i32, %struct.gx_saved_pages_list_s*, %struct.gx_device_procs_s, %struct.gx_device_procs_s } { i32 18472, %struct.gx_device_procs_s* @prn_std_procs, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), %struct.gs_memory_s* null, %struct.gs_memory_struct_type_s* @st_device_printer, i32 0, void (%struct.gx_device_s*)* null, %struct.rc_header_s zeroinitializer, i32 0, i32 0, i32 0, %struct.gx_device_color_info_s { i32 1, i32 1, i32 1, i16 1, i8 0, i32 1, i32 0, i32 2, i32 1, %struct.gx_device_anti_alias_info_s { i32 1, i32 1 }, i32 -1, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [64 x i64] zeroinitializer, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 -1, i64 0, i32 0 }, %struct.gx_device_cached_colors_s { i64 -1, i64 -1 }, i32 5100, i32 6600, i32 0, i32 0, i32 0, i32 0, [2 x float] [float 6.120000e+02, float 7.920000e+02], [4 x float] zeroinitializer, i32 0, [2 x float] [float 6.000000e+02, float 6.000000e+02], [2 x float] [float 6.000000e+02, float 6.000000e+02], [2 x float] [float 0xC05D870E20000000, float 0xC05D870E20000000], [4 x float] [float 0x402C58B160000000, float 0x402C58B160000000, float 0x402C58B160000000, float 0x402C58B160000000], i64 0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, %struct.gx_stroked_gradient_recognizer_s zeroinitializer, i32 0, i32 0, %struct.gdev_space_params_s { i64 10000000, i64 4000000, %struct.gx_band_params_s zeroinitializer, i32 0, i32 0 }, %struct.cmm_dev_profile_s* null, i32 0, %struct.gx_page_device_procs_s { i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_install, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_begin_page, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* @gx_default_end_page }, %struct.gx_device_procs_s zeroinitializer, [11240 x i8] zeroinitializer, { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* } { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)* @lbp310PrintPage, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_print_page_copies, %struct.gx_device_buf_procs_s { i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, %struct.gx_render_plane_s*, %struct.gs_memory_s*, %struct.gx_colors_usage_s*)* @gx_default_create_buf_device, i32 (%struct.gx_device_buf_space_s*, %struct.gx_device_s*, %struct.gx_render_plane_s*, i32, i32)* @gx_default_size_buf_device, i32 (%struct.gx_device_s*, i8*, i32, i8**, i32, i32, i32)* @gx_default_setup_buf_device, void (%struct.gx_device_s*)* @gx_default_destroy_buf_device }, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)* @gx_default_get_space_params, i32 (%struct.gdev_prn_start_render_params_s*)* @gx_default_start_render_thread, i32 (%struct.gx_device_printer_s*)* @gx_default_open_render_device, i32 (%struct.gx_device_printer_s*)* @gx_default_close_render_device, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_buffer_page }, [4096 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 -1, i32 0, %struct._IO_FILE* null, i64 0, i8* null, %struct.gs_memory_s* null, %struct.gs_memory_s* null, i32 (%struct.gx_device_s*, i32)* null, %struct.gx_page_queue_s* null, i32 0, %struct.gx_device_printer_s* null, i32 0, i32 0, %struct.bg_print_s zeroinitializer, i32 0, %struct.gx_saved_pages_list_s* null, %struct.gx_device_procs_s zeroinitializer, %struct.gx_device_procs_s zeroinitializer }, align 8
@.str.2 = private unnamed_addr constant [7 x i8] c"lbp320\00", align 1
@gs_lbp320_device = global { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [11240 x i8], { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* }, [4096 x i8], i32, i32, i32, i32, i32, i32, %struct._IO_FILE*, i64, i8*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s*, i32)*, %struct.gx_page_queue_s*, i32, %struct.gx_device_printer_s*, i32, i32, %struct.bg_print_s, i32, %struct.gx_saved_pages_list_s*, %struct.gx_device_procs_s, %struct.gx_device_procs_s } { i32 18472, %struct.gx_device_procs_s* @prn_std_procs, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), %struct.gs_memory_s* null, %struct.gs_memory_struct_type_s* @st_device_printer, i32 0, void (%struct.gx_device_s*)* null, %struct.rc_header_s zeroinitializer, i32 0, i32 0, i32 0, %struct.gx_device_color_info_s { i32 1, i32 1, i32 1, i16 1, i8 0, i32 1, i32 0, i32 2, i32 1, %struct.gx_device_anti_alias_info_s { i32 1, i32 1 }, i32 -1, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [64 x i64] zeroinitializer, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 -1, i64 0, i32 0 }, %struct.gx_device_cached_colors_s { i64 -1, i64 -1 }, i32 5100, i32 6600, i32 0, i32 0, i32 0, i32 0, [2 x float] [float 6.120000e+02, float 7.920000e+02], [4 x float] zeroinitializer, i32 0, [2 x float] [float 6.000000e+02, float 6.000000e+02], [2 x float] [float 6.000000e+02, float 6.000000e+02], [2 x float] [float 0xC05D870E20000000, float 0xC05D870E20000000], [4 x float] [float 0x402C58B160000000, float 0x402C58B160000000, float 0x402C58B160000000, float 0x402C58B160000000], i64 0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, %struct.gx_stroked_gradient_recognizer_s zeroinitializer, i32 0, i32 0, %struct.gdev_space_params_s { i64 10000000, i64 4000000, %struct.gx_band_params_s zeroinitializer, i32 0, i32 0 }, %struct.cmm_dev_profile_s* null, i32 0, %struct.gx_page_device_procs_s { i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_install, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_begin_page, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* @gx_default_end_page }, %struct.gx_device_procs_s zeroinitializer, [11240 x i8] zeroinitializer, { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* } { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)* @lbp320PrintPage, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_print_page_copies, %struct.gx_device_buf_procs_s { i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, %struct.gx_render_plane_s*, %struct.gs_memory_s*, %struct.gx_colors_usage_s*)* @gx_default_create_buf_device, i32 (%struct.gx_device_buf_space_s*, %struct.gx_device_s*, %struct.gx_render_plane_s*, i32, i32)* @gx_default_size_buf_device, i32 (%struct.gx_device_s*, i8*, i32, i8**, i32, i32, i32)* @gx_default_setup_buf_device, void (%struct.gx_device_s*)* @gx_default_destroy_buf_device }, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)* @gx_default_get_space_params, i32 (%struct.gdev_prn_start_render_params_s*)* @gx_default_start_render_thread, i32 (%struct.gx_device_printer_s*)* @gx_default_open_render_device, i32 (%struct.gx_device_printer_s*)* @gx_default_close_render_device, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_buffer_page }, [4096 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 -1, i32 0, %struct._IO_FILE* null, i64 0, i8* null, %struct.gs_memory_s* null, %struct.gs_memory_s* null, i32 (%struct.gx_device_s*, i32)* null, %struct.gx_page_queue_s* null, i32 0, %struct.gx_device_printer_s* null, i32 0, i32 0, %struct.bg_print_s zeroinitializer, i32 0, %struct.gx_saved_pages_list_s* null, %struct.gx_device_procs_s zeroinitializer, %struct.gx_device_procs_s zeroinitializer }, align 8
@.str.3 = private unnamed_addr constant [19 x i8] c"\1B[1;%d;%d;11;%d;.r\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"0%ld\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"\80%s\80\80\80\80\0C\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"\1BP0J\1B\5C\00", align 1
@PaperInfo = internal constant [5 x %struct.ppi] [%struct.ppi { i32 2100, i32 2960, i32 14 }, %struct.ppi { i32 1485, i32 2098, i32 16 }, %struct.ppi { i32 1000, i32 1480, i32 18 }, %struct.ppi { i32 1820, i32 2570, i32 26 }, %struct.ppi { i32 2100, i32 2790, i32 14 }], align 16
@.str.7 = private unnamed_addr constant [11 x i8] c"LineBuffer\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"\1B%%@\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"\1BP35;%d;1J;GhostScript\1B\5C\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"\1B<\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"\1B[7 I\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"\1B[;1;'v\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"\1B[%d;;p\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"\1B[1q\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"\1B[?2h\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"\1B[%dv\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"\1B[%d;%df\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"%c%c\00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.20 = private unnamed_addr constant [33 x i8] c"\1B%%-12345X@PJL CJLMODE\0A@PJL JOB\0A\00", align 1
@.str.21 = private unnamed_addr constant [20 x i8] c"\1B[1;%d;%d;11;%d;.&r\00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c"000%ld\00", align 1
@.str.23 = private unnamed_addr constant [43 x i8] c"\1B%%-12345X@PJL CJLMODE\0A@PJL EOJ\0A\1B%%-12345X\00", align 1

declare i32 @gx_default_install(%struct.gx_device_s*, %struct.gs_state_s*) #0

declare i32 @gx_default_begin_page(%struct.gx_device_s*, %struct.gs_state_s*) #0

declare i32 @gx_default_end_page(%struct.gx_device_s*, i32, %struct.gs_state_s*) #0

; Function Attrs: nounwind uwtable
define internal i32 @lbp310PrintPage(%struct.gx_device_printer_s* %pDev, %struct._IO_FILE* %fp) #1 {
entry:
  %pDev.addr = alloca %struct.gx_device_printer_s*, align 8
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %i = alloca i32, align 4
  %Buf = alloca [10 x i8], align 1
  %DataSize = alloca i64, align 8
  %Box = alloca %struct.bounding, align 4
  store %struct.gx_device_printer_s* %pDev, %struct.gx_device_printer_s** %pDev.addr, align 8, !tbaa !1
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8, !tbaa !1
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast [10 x i8]* %Buf to i8*
  call void @llvm.lifetime.start(i64 10, i8* %1) #2
  %2 = bitcast i64* %DataSize to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #2
  %3 = bitcast %struct.bounding* %Box to i8*
  call void @llvm.lifetime.start(i64 20, i8* %3) #2
  %4 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pDev.addr, align 8, !tbaa !1
  call void @BoundImage(%struct.gx_device_printer_s* %4, %struct.bounding* %Box) #4
  %5 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pDev.addr, align 8, !tbaa !1
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8, !tbaa !1
  %call = call i64 @CompressImage(%struct.gx_device_printer_s* %5, %struct.bounding* %Box, %struct._IO_FILE* %6, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i32 0, i32 0)) #4
  store i64 %call, i64* %DataSize, align 8, !tbaa !5
  %arraydecay = getelementptr inbounds [10 x i8], [10 x i8]* %Buf, i32 0, i32 0
  %7 = load i64, i64* %DataSize, align 8, !tbaa !5
  %call1 = call i32 (i8*, i8*, ...) @gs_sprintf(i8* %arraydecay, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i64 %7) #4
  %8 = load i64, i64* %DataSize, align 8, !tbaa !5
  %arraydecay2 = getelementptr inbounds [10 x i8], [10 x i8]* %Buf, i32 0, i32 0
  %call3 = call i64 @strlen(i8* %arraydecay2) #5
  %add = add i64 %8, %call3
  %add4 = add i64 %add, 1
  %and = and i64 %add4, 1
  %conv = trunc i64 %and to i32
  store i32 %conv, i32* %i, align 4, !tbaa !7
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8, !tbaa !1
  %arraydecay5 = getelementptr inbounds [10 x i8], [10 x i8]* %Buf, i32 0, i32 0
  %10 = load i32, i32* %i, align 4, !tbaa !7
  %idx.ext = sext i32 %10 to i64
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay5, i64 %idx.ext
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* %add.ptr) #4
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8, !tbaa !1
  %call7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0)) #4
  %12 = bitcast %struct.bounding* %Box to i8*
  call void @llvm.lifetime.end(i64 20, i8* %12) #2
  %13 = bitcast i64* %DataSize to i8*
  call void @llvm.lifetime.end(i64 8, i8* %13) #2
  %14 = bitcast [10 x i8]* %Buf to i8*
  call void @llvm.lifetime.end(i64 10, i8* %14) #2
  %15 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %15) #2
  ret i32 0
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
define internal i32 @lbp320PrintPage(%struct.gx_device_printer_s* %pDev, %struct._IO_FILE* %fp) #1 {
entry:
  %pDev.addr = alloca %struct.gx_device_printer_s*, align 8
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %i = alloca i32, align 4
  %Buf = alloca [16 x i8], align 16
  %DataSize = alloca i64, align 8
  %Box = alloca %struct.bounding, align 4
  store %struct.gx_device_printer_s* %pDev, %struct.gx_device_printer_s** %pDev.addr, align 8, !tbaa !1
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8, !tbaa !1
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast [16 x i8]* %Buf to i8*
  call void @llvm.lifetime.start(i64 16, i8* %1) #2
  %2 = bitcast i64* %DataSize to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #2
  %3 = bitcast %struct.bounding* %Box to i8*
  call void @llvm.lifetime.start(i64 20, i8* %3) #2
  %4 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pDev.addr, align 8, !tbaa !1
  call void @BoundImage(%struct.gx_device_printer_s* %4, %struct.bounding* %Box) #4
  %Left = getelementptr inbounds %struct.bounding, %struct.bounding* %Box, i32 0, i32 3
  %5 = load i32, i32* %Left, align 4, !tbaa !9
  %and = and i32 %5, -2
  store i32 %and, i32* %Left, align 4, !tbaa !9
  %Right = getelementptr inbounds %struct.bounding, %struct.bounding* %Box, i32 0, i32 4
  %6 = load i32, i32* %Right, align 4, !tbaa !11
  %or = or i32 %6, 1
  store i32 %or, i32* %Right, align 4, !tbaa !11
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8, !tbaa !1
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.20, i32 0, i32 0)) #4
  %8 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pDev.addr, align 8, !tbaa !1
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8, !tbaa !1
  %call1 = call i64 @CompressImage(%struct.gx_device_printer_s* %8, %struct.bounding* %Box, %struct._IO_FILE* %9, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.21, i32 0, i32 0)) #4
  store i64 %call1, i64* %DataSize, align 8, !tbaa !5
  %arraydecay = getelementptr inbounds [16 x i8], [16 x i8]* %Buf, i32 0, i32 0
  %10 = load i64, i64* %DataSize, align 8, !tbaa !5
  %call2 = call i32 (i8*, i8*, ...) @gs_sprintf(i8* %arraydecay, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.22, i32 0, i32 0), i64 %10) #4
  %11 = load i64, i64* %DataSize, align 8, !tbaa !5
  %arraydecay3 = getelementptr inbounds [16 x i8], [16 x i8]* %Buf, i32 0, i32 0
  %call4 = call i64 @strlen(i8* %arraydecay3) #5
  %add = add i64 %11, %call4
  %add5 = add i64 %add, 1
  %and6 = and i64 %add5, 3
  %conv = trunc i64 %and6 to i32
  store i32 %conv, i32* %i, align 4, !tbaa !7
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8, !tbaa !1
  %arraydecay7 = getelementptr inbounds [16 x i8], [16 x i8]* %Buf, i32 0, i32 0
  %13 = load i32, i32* %i, align 4, !tbaa !7
  %idx.ext = sext i32 %13 to i64
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay7, i64 %idx.ext
  %call8 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* %add.ptr) #4
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8, !tbaa !1
  %call9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %14, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0)) #4
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8, !tbaa !1
  %call10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.23, i32 0, i32 0)) #4
  %16 = bitcast %struct.bounding* %Box to i8*
  call void @llvm.lifetime.end(i64 20, i8* %16) #2
  %17 = bitcast i64* %DataSize to i8*
  call void @llvm.lifetime.end(i64 8, i8* %17) #2
  %18 = bitcast [16 x i8]* %Buf to i8*
  call void @llvm.lifetime.end(i64 16, i8* %18) #2
  %19 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %19) #2
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define internal void @BoundImage(%struct.gx_device_printer_s* %pDev, %struct.bounding* %pBox) #1 {
entry:
  %pDev.addr = alloca %struct.gx_device_printer_s*, align 8
  %pBox.addr = alloca %struct.bounding*, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %flag = alloca i32, align 4
  %LineSize = alloca i32, align 4
  %Xsize = alloca i32, align 4
  %Ysize = alloca i32, align 4
  %Pt = alloca i32, align 4
  %Pb = alloca i32, align 4
  %Pl = alloca i32, align 4
  %Pr = alloca i32, align 4
  %Xres = alloca i32, align 4
  %Yres = alloca i32, align 4
  %height = alloca i32, align 4
  %Buf = alloca i8*, align 8
  %paper = alloca i32, align 4
  store %struct.gx_device_printer_s* %pDev, %struct.gx_device_printer_s** %pDev.addr, align 8, !tbaa !1
  store %struct.bounding* %pBox, %struct.bounding** %pBox.addr, align 8, !tbaa !1
  %0 = bitcast i32* %x to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast i32* %y to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = bitcast i32* %flag to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  %3 = bitcast i32* %LineSize to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pDev.addr, align 8, !tbaa !1
  %5 = bitcast %struct.gx_device_printer_s* %4 to %struct.gx_device_s*
  %6 = bitcast %struct.gx_device_s* %5 to %struct.gx_device_printer_s*
  %7 = bitcast %struct.gx_device_printer_s* %6 to %struct.gx_device_s*
  %call = call i32 @gx_device_raster(%struct.gx_device_s* %7, i32 0) #4
  store i32 %call, i32* %LineSize, align 4, !tbaa !7
  %8 = bitcast i32* %Xsize to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #2
  %9 = bitcast i32* %Ysize to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #2
  %10 = bitcast i32* %Pt to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #2
  %11 = bitcast i32* %Pb to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #2
  %12 = bitcast i32* %Pl to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #2
  %13 = bitcast i32* %Pr to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #2
  %14 = bitcast i32* %Xres to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #2
  %15 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pDev.addr, align 8, !tbaa !1
  %HWResolution = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %15, i32 0, i32 22
  %arrayidx = getelementptr inbounds [2 x float], [2 x float]* %HWResolution, i32 0, i64 0
  %16 = load float, float* %arrayidx, align 4, !tbaa !12
  %conv = fptosi float %16 to i32
  store i32 %conv, i32* %Xres, align 4, !tbaa !7
  %17 = bitcast i32* %Yres to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #2
  %18 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pDev.addr, align 8, !tbaa !1
  %HWResolution1 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %18, i32 0, i32 22
  %arrayidx2 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution1, i32 0, i64 1
  %19 = load float, float* %arrayidx2, align 4, !tbaa !12
  %conv3 = fptosi float %19 to i32
  store i32 %conv3, i32* %Yres, align 4, !tbaa !7
  %20 = bitcast i32* %height to i8*
  call void @llvm.lifetime.start(i64 4, i8* %20) #2
  %21 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pDev.addr, align 8, !tbaa !1
  %height4 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %21, i32 0, i32 14
  %22 = load i32, i32* %height4, align 4, !tbaa !14
  store i32 %22, i32* %height, align 4, !tbaa !7
  %23 = bitcast i8** %Buf to i8*
  call void @llvm.lifetime.start(i64 8, i8* %23) #2
  %24 = bitcast i32* %paper to i8*
  call void @llvm.lifetime.start(i64 4, i8* %24) #2
  %25 = load i32, i32* %height, align 4, !tbaa !7
  %mul = mul nsw i32 %25, 10
  %26 = load i32, i32* %Yres, align 4, !tbaa !7
  %div = sdiv i32 %mul, %26
  %cmp = icmp slt i32 %div, 82
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end.25

cond.false:                                       ; preds = %entry
  %27 = load i32, i32* %height, align 4, !tbaa !7
  %mul6 = mul nsw i32 %27, 10
  %28 = load i32, i32* %Yres, align 4, !tbaa !7
  %div7 = sdiv i32 %mul6, %28
  %cmp8 = icmp slt i32 %div7, 98
  br i1 %cmp8, label %cond.true.10, label %cond.false.11

cond.true.10:                                     ; preds = %cond.false
  br label %cond.end.23

cond.false.11:                                    ; preds = %cond.false
  %29 = load i32, i32* %height, align 4, !tbaa !7
  %mul12 = mul nsw i32 %29, 10
  %30 = load i32, i32* %Yres, align 4, !tbaa !7
  %div13 = sdiv i32 %mul12, %30
  %cmp14 = icmp slt i32 %div13, 109
  br i1 %cmp14, label %cond.true.16, label %cond.false.17

cond.true.16:                                     ; preds = %cond.false.11
  br label %cond.end

cond.false.17:                                    ; preds = %cond.false.11
  %31 = load i32, i32* %height, align 4, !tbaa !7
  %mul18 = mul nsw i32 %31, 10
  %32 = load i32, i32* %Yres, align 4, !tbaa !7
  %div19 = sdiv i32 %mul18, %32
  %cmp20 = icmp slt i32 %div19, 116
  %cond = select i1 %cmp20, i32 4, i32 0
  br label %cond.end

cond.end:                                         ; preds = %cond.false.17, %cond.true.16
  %cond22 = phi i32 [ 3, %cond.true.16 ], [ %cond, %cond.false.17 ]
  br label %cond.end.23

cond.end.23:                                      ; preds = %cond.end, %cond.true.10
  %cond24 = phi i32 [ 1, %cond.true.10 ], [ %cond22, %cond.end ]
  br label %cond.end.25

cond.end.25:                                      ; preds = %cond.end.23, %cond.true
  %cond26 = phi i32 [ 2, %cond.true ], [ %cond24, %cond.end.23 ]
  store i32 %cond26, i32* %paper, align 4, !tbaa !29
  %33 = load i32, i32* %Xres, align 4, !tbaa !7
  %34 = load i32, i32* %paper, align 4, !tbaa !29
  %idxprom = zext i32 %34 to i64
  %arrayidx27 = getelementptr inbounds [5 x %struct.ppi], [5 x %struct.ppi]* @PaperInfo, i32 0, i64 %idxprom
  %w = getelementptr inbounds %struct.ppi, %struct.ppi* %arrayidx27, i32 0, i32 0
  %35 = load i32, i32* %w, align 4, !tbaa !30
  %sub = sub nsw i32 %35, 100
  %mul28 = mul nsw i32 %33, %sub
  %conv29 = sitofp i32 %mul28 to double
  %div30 = fdiv double %conv29, 2.540000e+01
  %div31 = fdiv double %div30, 1.600000e+02
  %conv32 = fptosi double %div31 to i32
  store i32 %conv32, i32* %Xsize, align 4, !tbaa !7
  %36 = load i32, i32* %Yres, align 4, !tbaa !7
  %37 = load i32, i32* %paper, align 4, !tbaa !29
  %idxprom33 = zext i32 %37 to i64
  %arrayidx34 = getelementptr inbounds [5 x %struct.ppi], [5 x %struct.ppi]* @PaperInfo, i32 0, i64 %idxprom33
  %h = getelementptr inbounds %struct.ppi, %struct.ppi* %arrayidx34, i32 0, i32 1
  %38 = load i32, i32* %h, align 4, !tbaa !32
  %sub35 = sub nsw i32 %38, 100
  %mul36 = mul nsw i32 %36, %sub35
  %conv37 = sitofp i32 %mul36 to double
  %div38 = fdiv double %conv37, 2.540000e+01
  %div39 = fdiv double %div38, 1.000000e+01
  %conv40 = fptosi double %div39 to i32
  store i32 %conv40, i32* %Ysize, align 4, !tbaa !7
  %39 = load i32, i32* %LineSize, align 4, !tbaa !7
  %40 = load i32, i32* %Xsize, align 4, !tbaa !7
  %mul41 = mul nsw i32 %40, 2
  %add = add nsw i32 %mul41, 1
  %cmp42 = icmp slt i32 %39, %add
  br i1 %cmp42, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end.25
  %41 = load i32, i32* %Xsize, align 4, !tbaa !7
  %mul44 = mul nsw i32 %41, 2
  %add45 = add nsw i32 %mul44, 1
  store i32 %add45, i32* %LineSize, align 4, !tbaa !7
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end.25
  %42 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pDev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %42, i32 0, i32 3
  %43 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !33
  %non_gc_memory = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %43, i32 0, i32 3
  %44 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory, align 8, !tbaa !34
  %non_gc_memory46 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %44, i32 0, i32 3
  %45 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory46, align 8, !tbaa !34
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %45, i32 0, i32 1
  %alloc_byte_array = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 10
  %46 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array, align 8, !tbaa !37
  %47 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pDev.addr, align 8, !tbaa !1
  %memory47 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %47, i32 0, i32 3
  %48 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory47, align 8, !tbaa !33
  %non_gc_memory48 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %48, i32 0, i32 3
  %49 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory48, align 8, !tbaa !34
  %non_gc_memory49 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %49, i32 0, i32 3
  %50 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory49, align 8, !tbaa !34
  %51 = load i32, i32* %LineSize, align 4, !tbaa !7
  %call50 = call i8* %46(%struct.gs_memory_s* %50, i32 1, i32 %51, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i32 0, i32 0)) #4
  store i8* %call50, i8** %Buf, align 8, !tbaa !1
  store i32 -1, i32* %Pr, align 4, !tbaa !7
  store i32 -1, i32* %Pl, align 4, !tbaa !7
  store i32 -1, i32* %Pb, align 4, !tbaa !7
  store i32 -1, i32* %Pt, align 4, !tbaa !7
  store i32 0, i32* %y, align 4, !tbaa !7
  br label %for.cond

for.cond:                                         ; preds = %for.inc.96, %if.end
  %52 = load i32, i32* %y, align 4, !tbaa !7
  %53 = load i32, i32* %height, align 4, !tbaa !7
  %cmp51 = icmp slt i32 %52, %53
  br i1 %cmp51, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %54 = load i32, i32* %y, align 4, !tbaa !7
  %55 = load i32, i32* %Ysize, align 4, !tbaa !7
  %cmp53 = icmp slt i32 %54, %55
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %56 = phi i1 [ false, %for.cond ], [ %cmp53, %land.rhs ]
  br i1 %56, label %for.body, label %for.end.98

for.body:                                         ; preds = %land.end
  store i32 0, i32* %flag, align 4, !tbaa !7
  %57 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pDev.addr, align 8, !tbaa !1
  %58 = load i32, i32* %y, align 4, !tbaa !7
  %59 = load i8*, i8** %Buf, align 8, !tbaa !1
  %60 = load i32, i32* %LineSize, align 4, !tbaa !7
  %call55 = call i32 @gdev_prn_copy_scan_lines(%struct.gx_device_printer_s* %57, i32 %58, i8* %59, i32 %60) #4
  store i32 0, i32* %x, align 4, !tbaa !7
  br label %for.cond.56

for.cond.56:                                      ; preds = %for.inc, %for.body
  %61 = load i32, i32* %x, align 4, !tbaa !7
  %62 = load i32, i32* %LineSize, align 4, !tbaa !7
  %div57 = sdiv i32 %62, 2
  %63 = load i32, i32* %Xsize, align 4, !tbaa !7
  %cmp58 = icmp slt i32 %div57, %63
  br i1 %cmp58, label %cond.true.60, label %cond.false.62

cond.true.60:                                     ; preds = %for.cond.56
  %64 = load i32, i32* %LineSize, align 4, !tbaa !7
  %div61 = sdiv i32 %64, 2
  br label %cond.end.63

cond.false.62:                                    ; preds = %for.cond.56
  %65 = load i32, i32* %Xsize, align 4, !tbaa !7
  br label %cond.end.63

cond.end.63:                                      ; preds = %cond.false.62, %cond.true.60
  %cond64 = phi i32 [ %div61, %cond.true.60 ], [ %65, %cond.false.62 ]
  %cmp65 = icmp slt i32 %61, %cond64
  br i1 %cmp65, label %for.body.67, label %for.end

for.body.67:                                      ; preds = %cond.end.63
  %66 = load i8*, i8** %Buf, align 8, !tbaa !1
  %67 = load i32, i32* %x, align 4, !tbaa !7
  %mul68 = mul nsw i32 %67, 2
  %idx.ext = sext i32 %mul68 to i64
  %add.ptr = getelementptr inbounds i8, i8* %66, i64 %idx.ext
  %68 = load i8, i8* %add.ptr, align 1, !tbaa !29
  %conv69 = zext i8 %68 to i32
  %tobool = icmp ne i32 %conv69, 0
  br i1 %tobool, label %if.then.76, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body.67
  %69 = load i8*, i8** %Buf, align 8, !tbaa !1
  %70 = load i32, i32* %x, align 4, !tbaa !7
  %mul70 = mul nsw i32 %70, 2
  %idx.ext71 = sext i32 %mul70 to i64
  %add.ptr72 = getelementptr inbounds i8, i8* %69, i64 %idx.ext71
  %add.ptr73 = getelementptr inbounds i8, i8* %add.ptr72, i64 1
  %71 = load i8, i8* %add.ptr73, align 1, !tbaa !29
  %conv74 = zext i8 %71 to i32
  %tobool75 = icmp ne i32 %conv74, 0
  br i1 %tobool75, label %if.then.76, label %if.end.88

if.then.76:                                       ; preds = %lor.lhs.false, %for.body.67
  %72 = load i32, i32* %Pl, align 4, !tbaa !7
  %cmp77 = icmp eq i32 %72, -1
  br i1 %cmp77, label %if.then.82, label %lor.lhs.false.79

lor.lhs.false.79:                                 ; preds = %if.then.76
  %73 = load i32, i32* %Pl, align 4, !tbaa !7
  %74 = load i32, i32* %x, align 4, !tbaa !7
  %cmp80 = icmp sgt i32 %73, %74
  br i1 %cmp80, label %if.then.82, label %if.end.83

if.then.82:                                       ; preds = %lor.lhs.false.79, %if.then.76
  %75 = load i32, i32* %x, align 4, !tbaa !7
  store i32 %75, i32* %Pl, align 4, !tbaa !7
  br label %if.end.83

if.end.83:                                        ; preds = %if.then.82, %lor.lhs.false.79
  %76 = load i32, i32* %Pr, align 4, !tbaa !7
  %77 = load i32, i32* %x, align 4, !tbaa !7
  %cmp84 = icmp slt i32 %76, %77
  br i1 %cmp84, label %if.then.86, label %if.end.87

if.then.86:                                       ; preds = %if.end.83
  %78 = load i32, i32* %x, align 4, !tbaa !7
  store i32 %78, i32* %Pr, align 4, !tbaa !7
  br label %if.end.87

if.end.87:                                        ; preds = %if.then.86, %if.end.83
  store i32 1, i32* %flag, align 4, !tbaa !7
  br label %if.end.88

if.end.88:                                        ; preds = %if.end.87, %lor.lhs.false
  br label %for.inc

for.inc:                                          ; preds = %if.end.88
  %79 = load i32, i32* %x, align 4, !tbaa !7
  %inc = add nsw i32 %79, 1
  store i32 %inc, i32* %x, align 4, !tbaa !7
  br label %for.cond.56

for.end:                                          ; preds = %cond.end.63
  %80 = load i32, i32* %flag, align 4, !tbaa !7
  %tobool89 = icmp ne i32 %80, 0
  br i1 %tobool89, label %if.then.90, label %if.end.95

if.then.90:                                       ; preds = %for.end
  %81 = load i32, i32* %Pt, align 4, !tbaa !7
  %cmp91 = icmp eq i32 %81, -1
  br i1 %cmp91, label %if.then.93, label %if.end.94

if.then.93:                                       ; preds = %if.then.90
  %82 = load i32, i32* %y, align 4, !tbaa !7
  store i32 %82, i32* %Pt, align 4, !tbaa !7
  br label %if.end.94

if.end.94:                                        ; preds = %if.then.93, %if.then.90
  %83 = load i32, i32* %y, align 4, !tbaa !7
  store i32 %83, i32* %Pb, align 4, !tbaa !7
  br label %if.end.95

if.end.95:                                        ; preds = %if.end.94, %for.end
  br label %for.inc.96

for.inc.96:                                       ; preds = %if.end.95
  %84 = load i32, i32* %y, align 4, !tbaa !7
  %inc97 = add nsw i32 %84, 1
  store i32 %inc97, i32* %y, align 4, !tbaa !7
  br label %for.cond

for.end.98:                                       ; preds = %land.end
  %85 = load i32, i32* %paper, align 4, !tbaa !29
  %86 = load %struct.bounding*, %struct.bounding** %pBox.addr, align 8, !tbaa !1
  %paper99 = getelementptr inbounds %struct.bounding, %struct.bounding* %86, i32 0, i32 0
  store i32 %85, i32* %paper99, align 4, !tbaa !38
  %87 = load i32, i32* %Pt, align 4, !tbaa !7
  %88 = load %struct.bounding*, %struct.bounding** %pBox.addr, align 8, !tbaa !1
  %Top = getelementptr inbounds %struct.bounding, %struct.bounding* %88, i32 0, i32 1
  store i32 %87, i32* %Top, align 4, !tbaa !39
  %89 = load i32, i32* %Pb, align 4, !tbaa !7
  %90 = load %struct.bounding*, %struct.bounding** %pBox.addr, align 8, !tbaa !1
  %Bottom = getelementptr inbounds %struct.bounding, %struct.bounding* %90, i32 0, i32 2
  store i32 %89, i32* %Bottom, align 4, !tbaa !40
  %91 = load i32, i32* %Pl, align 4, !tbaa !7
  %92 = load %struct.bounding*, %struct.bounding** %pBox.addr, align 8, !tbaa !1
  %Left = getelementptr inbounds %struct.bounding, %struct.bounding* %92, i32 0, i32 3
  store i32 %91, i32* %Left, align 4, !tbaa !9
  %93 = load i32, i32* %Pr, align 4, !tbaa !7
  %94 = load %struct.bounding*, %struct.bounding** %pBox.addr, align 8, !tbaa !1
  %Right = getelementptr inbounds %struct.bounding, %struct.bounding* %94, i32 0, i32 4
  store i32 %93, i32* %Right, align 4, !tbaa !11
  %95 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pDev.addr, align 8, !tbaa !1
  %memory100 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %95, i32 0, i32 3
  %96 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory100, align 8, !tbaa !33
  %non_gc_memory101 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %96, i32 0, i32 3
  %97 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory101, align 8, !tbaa !34
  %non_gc_memory102 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %97, i32 0, i32 3
  %98 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory102, align 8, !tbaa !34
  %procs103 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %98, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs103, i32 0, i32 2
  %99 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !41
  %100 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pDev.addr, align 8, !tbaa !1
  %memory104 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %100, i32 0, i32 3
  %101 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory104, align 8, !tbaa !33
  %non_gc_memory105 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %101, i32 0, i32 3
  %102 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory105, align 8, !tbaa !34
  %non_gc_memory106 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %102, i32 0, i32 3
  %103 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory106, align 8, !tbaa !34
  %104 = load i8*, i8** %Buf, align 8, !tbaa !1
  call void %99(%struct.gs_memory_s* %103, i8* %104, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i32 0, i32 0)) #4
  %105 = bitcast i32* %paper to i8*
  call void @llvm.lifetime.end(i64 4, i8* %105) #2
  %106 = bitcast i8** %Buf to i8*
  call void @llvm.lifetime.end(i64 8, i8* %106) #2
  %107 = bitcast i32* %height to i8*
  call void @llvm.lifetime.end(i64 4, i8* %107) #2
  %108 = bitcast i32* %Yres to i8*
  call void @llvm.lifetime.end(i64 4, i8* %108) #2
  %109 = bitcast i32* %Xres to i8*
  call void @llvm.lifetime.end(i64 4, i8* %109) #2
  %110 = bitcast i32* %Pr to i8*
  call void @llvm.lifetime.end(i64 4, i8* %110) #2
  %111 = bitcast i32* %Pl to i8*
  call void @llvm.lifetime.end(i64 4, i8* %111) #2
  %112 = bitcast i32* %Pb to i8*
  call void @llvm.lifetime.end(i64 4, i8* %112) #2
  %113 = bitcast i32* %Pt to i8*
  call void @llvm.lifetime.end(i64 4, i8* %113) #2
  %114 = bitcast i32* %Ysize to i8*
  call void @llvm.lifetime.end(i64 4, i8* %114) #2
  %115 = bitcast i32* %Xsize to i8*
  call void @llvm.lifetime.end(i64 4, i8* %115) #2
  %116 = bitcast i32* %LineSize to i8*
  call void @llvm.lifetime.end(i64 4, i8* %116) #2
  %117 = bitcast i32* %flag to i8*
  call void @llvm.lifetime.end(i64 4, i8* %117) #2
  %118 = bitcast i32* %y to i8*
  call void @llvm.lifetime.end(i64 4, i8* %118) #2
  %119 = bitcast i32* %x to i8*
  call void @llvm.lifetime.end(i64 4, i8* %119) #2
  ret void
}

; Function Attrs: nounwind uwtable
define internal i64 @CompressImage(%struct.gx_device_printer_s* %pDev, %struct.bounding* %pBox, %struct._IO_FILE* %fp, i8* %format) #1 {
entry:
  %pDev.addr = alloca %struct.gx_device_printer_s*, align 8
  %pBox.addr = alloca %struct.bounding*, align 8
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %format.addr = alloca i8*, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %i = alloca i32, align 4
  %count = alloca i32, align 4
  %Xres = alloca i32, align 4
  %LineSize = alloca i32, align 4
  %Buf = alloca i8*, align 8
  %oBuf = alloca [128 x i8], align 16
  %c_prev = alloca i8, align 1
  %c_cur = alloca i8, align 1
  %c_tmp = alloca i8, align 1
  %DataSize = alloca i64, align 8
  store %struct.gx_device_printer_s* %pDev, %struct.gx_device_printer_s** %pDev.addr, align 8, !tbaa !1
  store %struct.bounding* %pBox, %struct.bounding** %pBox.addr, align 8, !tbaa !1
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8, !tbaa !1
  store i8* %format, i8** %format.addr, align 8, !tbaa !1
  %0 = bitcast i32* %x to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast i32* %y to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  %3 = bitcast i32* %count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  store i32 255, i32* %count, align 4, !tbaa !7
  %4 = bitcast i32* %Xres to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pDev.addr, align 8, !tbaa !1
  %HWResolution = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %5, i32 0, i32 22
  %arrayidx = getelementptr inbounds [2 x float], [2 x float]* %HWResolution, i32 0, i64 0
  %6 = load float, float* %arrayidx, align 4, !tbaa !12
  %conv = fptosi float %6 to i32
  store i32 %conv, i32* %Xres, align 4, !tbaa !7
  %7 = bitcast i32* %LineSize to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #2
  %8 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pDev.addr, align 8, !tbaa !1
  %9 = bitcast %struct.gx_device_printer_s* %8 to %struct.gx_device_s*
  %10 = bitcast %struct.gx_device_s* %9 to %struct.gx_device_printer_s*
  %11 = bitcast %struct.gx_device_printer_s* %10 to %struct.gx_device_s*
  %call = call i32 @gx_device_raster(%struct.gx_device_s* %11, i32 0) #4
  store i32 %call, i32* %LineSize, align 4, !tbaa !7
  %12 = bitcast i8** %Buf to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #2
  %13 = bitcast [128 x i8]* %oBuf to i8*
  call void @llvm.lifetime.start(i64 128, i8* %13) #2
  call void @llvm.lifetime.start(i64 1, i8* %c_prev) #2
  call void @llvm.lifetime.start(i64 1, i8* %c_cur) #2
  call void @llvm.lifetime.start(i64 1, i8* %c_tmp) #2
  %14 = bitcast i64* %DataSize to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #2
  store i64 0, i64* %DataSize, align 8, !tbaa !5
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8, !tbaa !1
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0)) #4
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8, !tbaa !1
  %17 = load i32, i32* %Xres, align 4, !tbaa !7
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %16, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i32 0, i32 0), i32 %17) #4
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8, !tbaa !1
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i32 0, i32 0)) #4
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8, !tbaa !1
  %call4 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %19, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i32 0, i32 0)) #4
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8, !tbaa !1
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %20, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i32 0, i32 0)) #4
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8, !tbaa !1
  %22 = load %struct.bounding*, %struct.bounding** %pBox.addr, align 8, !tbaa !1
  %paper = getelementptr inbounds %struct.bounding, %struct.bounding* %22, i32 0, i32 0
  %23 = load i32, i32* %paper, align 4, !tbaa !38
  %idxprom = zext i32 %23 to i64
  %arrayidx6 = getelementptr inbounds [5 x %struct.ppi], [5 x %struct.ppi]* @PaperInfo, i32 0, i64 %idxprom
  %id = getelementptr inbounds %struct.ppi, %struct.ppi* %arrayidx6, i32 0, i32 2
  %24 = load i32, i32* %id, align 4, !tbaa !42
  %call7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %21, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i32 0, i32 0), i32 %24) #4
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8, !tbaa !1
  %call8 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %25, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0)) #4
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8, !tbaa !1
  %call9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %26, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0)) #4
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8, !tbaa !1
  %call10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %27, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0), i32 1) #4
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8, !tbaa !1
  %29 = load %struct.bounding*, %struct.bounding** %pBox.addr, align 8, !tbaa !1
  %Top = getelementptr inbounds %struct.bounding, %struct.bounding* %29, i32 0, i32 1
  %30 = load i32, i32* %Top, align 4, !tbaa !39
  %31 = load %struct.bounding*, %struct.bounding** %pBox.addr, align 8, !tbaa !1
  %Left = getelementptr inbounds %struct.bounding, %struct.bounding* %31, i32 0, i32 3
  %32 = load i32, i32* %Left, align 4, !tbaa !9
  %mul = mul nsw i32 %32, 16
  %call11 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %28, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i32 0, i32 0), i32 %30, i32 %mul) #4
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8, !tbaa !1
  %34 = load i8*, i8** %format.addr, align 8, !tbaa !1
  %35 = load %struct.bounding*, %struct.bounding** %pBox.addr, align 8, !tbaa !1
  %Right = getelementptr inbounds %struct.bounding, %struct.bounding* %35, i32 0, i32 4
  %36 = load i32, i32* %Right, align 4, !tbaa !11
  %37 = load %struct.bounding*, %struct.bounding** %pBox.addr, align 8, !tbaa !1
  %Left12 = getelementptr inbounds %struct.bounding, %struct.bounding* %37, i32 0, i32 3
  %38 = load i32, i32* %Left12, align 4, !tbaa !9
  %sub = sub nsw i32 %36, %38
  %add = add nsw i32 %sub, 1
  %39 = load i32, i32* %Xres, align 4, !tbaa !7
  %40 = load %struct.bounding*, %struct.bounding** %pBox.addr, align 8, !tbaa !1
  %Bottom = getelementptr inbounds %struct.bounding, %struct.bounding* %40, i32 0, i32 2
  %41 = load i32, i32* %Bottom, align 4, !tbaa !40
  %42 = load %struct.bounding*, %struct.bounding** %pBox.addr, align 8, !tbaa !1
  %Top13 = getelementptr inbounds %struct.bounding, %struct.bounding* %42, i32 0, i32 1
  %43 = load i32, i32* %Top13, align 4, !tbaa !39
  %sub14 = sub nsw i32 %41, %43
  %add15 = add nsw i32 %sub14, 1
  %call16 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %33, i8* %34, i32 %add, i32 %39, i32 %add15) #4
  %44 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pDev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %44, i32 0, i32 3
  %45 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !33
  %non_gc_memory = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %45, i32 0, i32 3
  %46 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory, align 8, !tbaa !34
  %non_gc_memory17 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %46, i32 0, i32 3
  %47 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory17, align 8, !tbaa !34
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %47, i32 0, i32 1
  %alloc_byte_array = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 10
  %48 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array, align 8, !tbaa !37
  %49 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pDev.addr, align 8, !tbaa !1
  %memory18 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %49, i32 0, i32 3
  %50 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory18, align 8, !tbaa !33
  %non_gc_memory19 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %50, i32 0, i32 3
  %51 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory19, align 8, !tbaa !34
  %non_gc_memory20 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %51, i32 0, i32 3
  %52 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory20, align 8, !tbaa !34
  %53 = load i32, i32* %LineSize, align 4, !tbaa !7
  %call21 = call i8* %48(%struct.gs_memory_s* %52, i32 1, i32 %53, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i32 0, i32 0)) #4
  store i8* %call21, i8** %Buf, align 8, !tbaa !1
  %54 = load %struct.bounding*, %struct.bounding** %pBox.addr, align 8, !tbaa !1
  %Top22 = getelementptr inbounds %struct.bounding, %struct.bounding* %54, i32 0, i32 1
  %55 = load i32, i32* %Top22, align 4, !tbaa !39
  store i32 %55, i32* %y, align 4, !tbaa !7
  br label %for.cond

for.cond:                                         ; preds = %for.inc.118, %entry
  %56 = load i32, i32* %y, align 4, !tbaa !7
  %57 = load %struct.bounding*, %struct.bounding** %pBox.addr, align 8, !tbaa !1
  %Bottom23 = getelementptr inbounds %struct.bounding, %struct.bounding* %57, i32 0, i32 2
  %58 = load i32, i32* %Bottom23, align 4, !tbaa !40
  %cmp = icmp sle i32 %56, %58
  br i1 %cmp, label %for.body, label %for.end.120

for.body:                                         ; preds = %for.cond
  %59 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pDev.addr, align 8, !tbaa !1
  %60 = load i32, i32* %y, align 4, !tbaa !7
  %61 = load i8*, i8** %Buf, align 8, !tbaa !1
  %62 = load i32, i32* %LineSize, align 4, !tbaa !7
  %call25 = call i32 @gdev_prn_copy_scan_lines(%struct.gx_device_printer_s* %59, i32 %60, i8* %61, i32 %62) #4
  %63 = load %struct.bounding*, %struct.bounding** %pBox.addr, align 8, !tbaa !1
  %Left26 = getelementptr inbounds %struct.bounding, %struct.bounding* %63, i32 0, i32 3
  %64 = load i32, i32* %Left26, align 4, !tbaa !9
  %mul27 = mul nsw i32 %64, 2
  store i32 %mul27, i32* %x, align 4, !tbaa !7
  br label %for.cond.28

for.cond.28:                                      ; preds = %for.inc.115, %for.body
  %65 = load i32, i32* %x, align 4, !tbaa !7
  %66 = load %struct.bounding*, %struct.bounding** %pBox.addr, align 8, !tbaa !1
  %Right29 = getelementptr inbounds %struct.bounding, %struct.bounding* %66, i32 0, i32 4
  %67 = load i32, i32* %Right29, align 4, !tbaa !11
  %mul30 = mul nsw i32 %67, 2
  %add31 = add nsw i32 %mul30, 1
  %cmp32 = icmp sle i32 %65, %add31
  br i1 %cmp32, label %for.body.34, label %for.end.117

for.body.34:                                      ; preds = %for.cond.28
  store i8 0, i8* %c_cur, align 1, !tbaa !29
  %68 = load i32, i32* %x, align 4, !tbaa !7
  %69 = load i32, i32* %LineSize, align 4, !tbaa !7
  %cmp35 = icmp slt i32 %68, %69
  br i1 %cmp35, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.34
  %70 = load i8*, i8** %Buf, align 8, !tbaa !1
  %71 = load i32, i32* %x, align 4, !tbaa !7
  %idx.ext = sext i32 %71 to i64
  %add.ptr = getelementptr inbounds i8, i8* %70, i64 %idx.ext
  %72 = load i8, i8* %add.ptr, align 1, !tbaa !29
  store i8 %72, i8* %c_tmp, align 1, !tbaa !29
  store i32 0, i32* %i, align 4, !tbaa !7
  br label %for.cond.37

for.cond.37:                                      ; preds = %for.inc, %if.then
  %73 = load i32, i32* %i, align 4, !tbaa !7
  %cmp38 = icmp slt i32 %73, 8
  br i1 %cmp38, label %for.body.40, label %for.end

for.body.40:                                      ; preds = %for.cond.37
  %74 = load i8, i8* %c_cur, align 1, !tbaa !29
  %conv41 = zext i8 %74 to i32
  %shl = shl i32 %conv41, 1
  %75 = load i8, i8* %c_tmp, align 1, !tbaa !29
  %conv42 = zext i8 %75 to i32
  %and = and i32 %conv42, 1
  %or = or i32 %shl, %and
  %conv43 = trunc i32 %or to i8
  store i8 %conv43, i8* %c_cur, align 1, !tbaa !29
  %76 = load i8, i8* %c_tmp, align 1, !tbaa !29
  %conv44 = zext i8 %76 to i32
  %shr = ashr i32 %conv44, 1
  %conv45 = trunc i32 %shr to i8
  store i8 %conv45, i8* %c_tmp, align 1, !tbaa !29
  br label %for.inc

for.inc:                                          ; preds = %for.body.40
  %77 = load i32, i32* %i, align 4, !tbaa !7
  %inc = add nsw i32 %77, 1
  store i32 %inc, i32* %i, align 4, !tbaa !7
  br label %for.cond.37

for.end:                                          ; preds = %for.cond.37
  br label %if.end

if.end:                                           ; preds = %for.end, %for.body.34
  %78 = load i32, i32* %count, align 4, !tbaa !7
  %cmp46 = icmp slt i32 %78, 0
  br i1 %cmp46, label %if.then.48, label %if.else.60

if.then.48:                                       ; preds = %if.end
  %79 = load i8, i8* %c_prev, align 1, !tbaa !29
  %conv49 = zext i8 %79 to i32
  %80 = load i8, i8* %c_cur, align 1, !tbaa !29
  %conv50 = zext i8 %80 to i32
  %cmp51 = icmp eq i32 %conv49, %conv50
  br i1 %cmp51, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then.48
  %81 = load i32, i32* %count, align 4, !tbaa !7
  %cmp53 = icmp sgt i32 %81, -127
  br i1 %cmp53, label %if.then.55, label %if.else

if.then.55:                                       ; preds = %land.lhs.true
  %82 = load i32, i32* %count, align 4, !tbaa !7
  %dec = add nsw i32 %82, -1
  store i32 %dec, i32* %count, align 4, !tbaa !7
  br label %for.inc.115

if.else:                                          ; preds = %land.lhs.true, %if.then.48
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8, !tbaa !1
  %84 = load i32, i32* %count, align 4, !tbaa !7
  %85 = load i8, i8* %c_prev, align 1, !tbaa !29
  %conv56 = zext i8 %85 to i32
  %call57 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %83, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i32 0, i32 0), i32 %84, i32 %conv56) #4
  %86 = load i64, i64* %DataSize, align 8, !tbaa !5
  %add58 = add nsw i64 %86, 2
  store i64 %add58, i64* %DataSize, align 8, !tbaa !5
  br label %if.end.59

if.end.59:                                        ; preds = %if.else
  br label %if.end.113

if.else.60:                                       ; preds = %if.end
  %87 = load i32, i32* %count, align 4, !tbaa !7
  %cmp61 = icmp eq i32 %87, 0
  br i1 %cmp61, label %if.then.63, label %if.else.75

if.then.63:                                       ; preds = %if.else.60
  %88 = load i8, i8* %c_prev, align 1, !tbaa !29
  %conv64 = zext i8 %88 to i32
  %89 = load i8, i8* %c_cur, align 1, !tbaa !29
  %conv65 = zext i8 %89 to i32
  %cmp66 = icmp eq i32 %conv64, %conv65
  br i1 %cmp66, label %if.then.68, label %if.else.70

if.then.68:                                       ; preds = %if.then.63
  %90 = load i32, i32* %count, align 4, !tbaa !7
  %dec69 = add nsw i32 %90, -1
  store i32 %dec69, i32* %count, align 4, !tbaa !7
  br label %if.end.74

if.else.70:                                       ; preds = %if.then.63
  %91 = load i32, i32* %count, align 4, !tbaa !7
  %inc71 = add nsw i32 %91, 1
  store i32 %inc71, i32* %count, align 4, !tbaa !7
  %92 = load i8, i8* %c_cur, align 1, !tbaa !29
  %arraydecay = getelementptr inbounds [128 x i8], [128 x i8]* %oBuf, i32 0, i32 0
  %93 = load i32, i32* %count, align 4, !tbaa !7
  %idx.ext72 = sext i32 %93 to i64
  %add.ptr73 = getelementptr inbounds i8, i8* %arraydecay, i64 %idx.ext72
  store i8 %92, i8* %add.ptr73, align 1, !tbaa !29
  store i8 %92, i8* %c_prev, align 1, !tbaa !29
  br label %if.end.74

if.end.74:                                        ; preds = %if.else.70, %if.then.68
  br label %for.inc.115

if.else.75:                                       ; preds = %if.else.60
  %94 = load i32, i32* %count, align 4, !tbaa !7
  %cmp76 = icmp slt i32 %94, 127
  br i1 %cmp76, label %if.then.78, label %if.else.98

if.then.78:                                       ; preds = %if.else.75
  %95 = load i8, i8* %c_prev, align 1, !tbaa !29
  %conv79 = zext i8 %95 to i32
  %96 = load i8, i8* %c_cur, align 1, !tbaa !29
  %conv80 = zext i8 %96 to i32
  %cmp81 = icmp eq i32 %conv79, %conv80
  br i1 %cmp81, label %if.then.83, label %if.else.92

if.then.83:                                       ; preds = %if.then.78
  %97 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8, !tbaa !1
  %98 = load i32, i32* %count, align 4, !tbaa !7
  %sub84 = sub nsw i32 %98, 1
  %call85 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %97, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i32 0, i32 0), i32 %sub84) #4
  %arraydecay86 = getelementptr inbounds [128 x i8], [128 x i8]* %oBuf, i32 0, i32 0
  %99 = load i32, i32* %count, align 4, !tbaa !7
  %conv87 = sext i32 %99 to i64
  %100 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8, !tbaa !1
  %call88 = call i64 @fwrite(i8* %arraydecay86, i64 1, i64 %conv87, %struct._IO_FILE* %100) #4
  %101 = load i32, i32* %count, align 4, !tbaa !7
  %add89 = add nsw i32 %101, 1
  %conv90 = sext i32 %add89 to i64
  %102 = load i64, i64* %DataSize, align 8, !tbaa !5
  %add91 = add nsw i64 %102, %conv90
  store i64 %add91, i64* %DataSize, align 8, !tbaa !5
  store i32 -1, i32* %count, align 4, !tbaa !7
  br label %if.end.97

if.else.92:                                       ; preds = %if.then.78
  %103 = load i32, i32* %count, align 4, !tbaa !7
  %inc93 = add nsw i32 %103, 1
  store i32 %inc93, i32* %count, align 4, !tbaa !7
  %104 = load i8, i8* %c_cur, align 1, !tbaa !29
  %arraydecay94 = getelementptr inbounds [128 x i8], [128 x i8]* %oBuf, i32 0, i32 0
  %105 = load i32, i32* %count, align 4, !tbaa !7
  %idx.ext95 = sext i32 %105 to i64
  %add.ptr96 = getelementptr inbounds i8, i8* %arraydecay94, i64 %idx.ext95
  store i8 %104, i8* %add.ptr96, align 1, !tbaa !29
  store i8 %104, i8* %c_prev, align 1, !tbaa !29
  br label %if.end.97

if.end.97:                                        ; preds = %if.else.92, %if.then.83
  br label %for.inc.115

if.else.98:                                       ; preds = %if.else.75
  %106 = load i32, i32* %count, align 4, !tbaa !7
  %cmp99 = icmp eq i32 %106, 127
  br i1 %cmp99, label %if.then.101, label %if.end.110

if.then.101:                                      ; preds = %if.else.98
  %107 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8, !tbaa !1
  %108 = load i32, i32* %count, align 4, !tbaa !7
  %call102 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %107, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i32 0, i32 0), i32 %108) #4
  %arraydecay103 = getelementptr inbounds [128 x i8], [128 x i8]* %oBuf, i32 0, i32 0
  %109 = load i32, i32* %count, align 4, !tbaa !7
  %add104 = add nsw i32 %109, 1
  %conv105 = sext i32 %add104 to i64
  %110 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8, !tbaa !1
  %call106 = call i64 @fwrite(i8* %arraydecay103, i64 1, i64 %conv105, %struct._IO_FILE* %110) #4
  %111 = load i32, i32* %count, align 4, !tbaa !7
  %add107 = add nsw i32 %111, 2
  %conv108 = sext i32 %add107 to i64
  %112 = load i64, i64* %DataSize, align 8, !tbaa !5
  %add109 = add nsw i64 %112, %conv108
  store i64 %add109, i64* %DataSize, align 8, !tbaa !5
  br label %if.end.110

if.end.110:                                       ; preds = %if.then.101, %if.else.98
  br label %if.end.111

if.end.111:                                       ; preds = %if.end.110
  br label %if.end.112

if.end.112:                                       ; preds = %if.end.111
  br label %if.end.113

if.end.113:                                       ; preds = %if.end.112, %if.end.59
  %113 = load i8, i8* %c_cur, align 1, !tbaa !29
  %arraydecay114 = getelementptr inbounds [128 x i8], [128 x i8]* %oBuf, i32 0, i32 0
  store i8 %113, i8* %arraydecay114, align 1, !tbaa !29
  store i8 %113, i8* %c_prev, align 1, !tbaa !29
  store i32 0, i32* %count, align 4, !tbaa !7
  br label %for.inc.115

for.inc.115:                                      ; preds = %if.end.113, %if.end.97, %if.end.74, %if.then.55
  %114 = load i32, i32* %x, align 4, !tbaa !7
  %inc116 = add nsw i32 %114, 1
  store i32 %inc116, i32* %x, align 4, !tbaa !7
  br label %for.cond.28

for.end.117:                                      ; preds = %for.cond.28
  br label %for.inc.118

for.inc.118:                                      ; preds = %for.end.117
  %115 = load i32, i32* %y, align 4, !tbaa !7
  %inc119 = add nsw i32 %115, 1
  store i32 %inc119, i32* %y, align 4, !tbaa !7
  br label %for.cond

for.end.120:                                      ; preds = %for.cond
  %116 = load i32, i32* %count, align 4, !tbaa !7
  %cmp121 = icmp slt i32 %116, 0
  br i1 %cmp121, label %if.then.123, label %if.else.127

if.then.123:                                      ; preds = %for.end.120
  %117 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8, !tbaa !1
  %118 = load i32, i32* %count, align 4, !tbaa !7
  %119 = load i8, i8* %c_prev, align 1, !tbaa !29
  %conv124 = zext i8 %119 to i32
  %call125 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %117, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i32 0, i32 0), i32 %118, i32 %conv124) #4
  %120 = load i64, i64* %DataSize, align 8, !tbaa !5
  %add126 = add nsw i64 %120, 2
  store i64 %add126, i64* %DataSize, align 8, !tbaa !5
  br label %if.end.136

if.else.127:                                      ; preds = %for.end.120
  %121 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8, !tbaa !1
  %122 = load i32, i32* %count, align 4, !tbaa !7
  %call128 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %121, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i32 0, i32 0), i32 %122) #4
  %arraydecay129 = getelementptr inbounds [128 x i8], [128 x i8]* %oBuf, i32 0, i32 0
  %123 = load i32, i32* %count, align 4, !tbaa !7
  %add130 = add nsw i32 %123, 1
  %conv131 = sext i32 %add130 to i64
  %124 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8, !tbaa !1
  %call132 = call i64 @fwrite(i8* %arraydecay129, i64 1, i64 %conv131, %struct._IO_FILE* %124) #4
  %125 = load i32, i32* %count, align 4, !tbaa !7
  %add133 = add nsw i32 %125, 2
  %conv134 = sext i32 %add133 to i64
  %126 = load i64, i64* %DataSize, align 8, !tbaa !5
  %add135 = add nsw i64 %126, %conv134
  store i64 %add135, i64* %DataSize, align 8, !tbaa !5
  br label %if.end.136

if.end.136:                                       ; preds = %if.else.127, %if.then.123
  %127 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pDev.addr, align 8, !tbaa !1
  %memory137 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %127, i32 0, i32 3
  %128 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory137, align 8, !tbaa !33
  %non_gc_memory138 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %128, i32 0, i32 3
  %129 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory138, align 8, !tbaa !34
  %non_gc_memory139 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %129, i32 0, i32 3
  %130 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory139, align 8, !tbaa !34
  %procs140 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %130, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs140, i32 0, i32 2
  %131 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !41
  %132 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pDev.addr, align 8, !tbaa !1
  %memory141 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %132, i32 0, i32 3
  %133 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory141, align 8, !tbaa !33
  %non_gc_memory142 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %133, i32 0, i32 3
  %134 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory142, align 8, !tbaa !34
  %non_gc_memory143 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %134, i32 0, i32 3
  %135 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory143, align 8, !tbaa !34
  %136 = load i8*, i8** %Buf, align 8, !tbaa !1
  call void %131(%struct.gs_memory_s* %135, i8* %136, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i32 0, i32 0)) #4
  %137 = load i64, i64* %DataSize, align 8, !tbaa !5
  %138 = bitcast i64* %DataSize to i8*
  call void @llvm.lifetime.end(i64 8, i8* %138) #2
  call void @llvm.lifetime.end(i64 1, i8* %c_tmp) #2
  call void @llvm.lifetime.end(i64 1, i8* %c_cur) #2
  call void @llvm.lifetime.end(i64 1, i8* %c_prev) #2
  %139 = bitcast [128 x i8]* %oBuf to i8*
  call void @llvm.lifetime.end(i64 128, i8* %139) #2
  %140 = bitcast i8** %Buf to i8*
  call void @llvm.lifetime.end(i64 8, i8* %140) #2
  %141 = bitcast i32* %LineSize to i8*
  call void @llvm.lifetime.end(i64 4, i8* %141) #2
  %142 = bitcast i32* %Xres to i8*
  call void @llvm.lifetime.end(i64 4, i8* %142) #2
  %143 = bitcast i32* %count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %143) #2
  %144 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %144) #2
  %145 = bitcast i32* %y to i8*
  call void @llvm.lifetime.end(i64 4, i8* %145) #2
  %146 = bitcast i32* %x to i8*
  call void @llvm.lifetime.end(i64 4, i8* %146) #2
  ret i64 %137
}

declare i32 @gs_sprintf(i8*, i8*, ...) #0

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #0

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

declare i32 @gx_device_raster(%struct.gx_device_s*, i32) #0

declare i32 @gdev_prn_copy_scan_lines(%struct.gx_device_printer_s*, i32, i8*, i32) #0

declare i64 @fwrite(i8*, i64, i64, %struct._IO_FILE*) #0

attributes #0 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nobuiltin }
attributes #5 = { nobuiltin nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"long", !3, i64 0}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !3, i64 0}
!9 = !{!10, !8, i64 12}
!10 = !{!"bounding", !3, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16}
!11 = !{!10, !8, i64 16}
!12 = !{!13, !13, i64 0}
!13 = !{!"float", !3, i64 0}
!14 = !{!15, !8, i64 836}
!15 = !{!"gx_device_printer_s", !8, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !8, i64 40, !2, i64 48, !16, i64 56, !8, i64 80, !8, i64 84, !8, i64 88, !17, i64 96, !20, i64 816, !8, i64 832, !8, i64 836, !8, i64 840, !8, i64 844, !8, i64 848, !8, i64 852, !3, i64 856, !3, i64 864, !8, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !6, i64 928, !6, i64 936, !8, i64 944, !8, i64 948, !8, i64 952, !8, i64 956, !8, i64 960, !6, i64 968, !6, i64 976, !21, i64 984, !8, i64 1052, !8, i64 1056, !22, i64 1064, !2, i64 1104, !3, i64 1112, !24, i64 1120, !25, i64 1144, !3, i64 1728, !26, i64 12968, !3, i64 13056, !8, i64 17152, !8, i64 17156, !8, i64 17160, !8, i64 17164, !8, i64 17168, !8, i64 17172, !2, i64 17176, !6, i64 17184, !2, i64 17192, !2, i64 17200, !2, i64 17208, !2, i64 17216, !2, i64 17224, !8, i64 17232, !2, i64 17240, !8, i64 17248, !8, i64 17252, !28, i64 17256, !8, i64 17288, !2, i64 17296, !25, i64 17304, !25, i64 17888}
!16 = !{!"rc_header_s", !6, i64 0, !2, i64 8, !2, i64 16}
!17 = !{!"gx_device_color_info_s", !8, i64 0, !8, i64 4, !3, i64 8, !18, i64 12, !3, i64 14, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !19, i64 32, !3, i64 40, !3, i64 44, !3, i64 108, !3, i64 176, !2, i64 688, !3, i64 696, !6, i64 704, !8, i64 712}
!18 = !{!"short", !3, i64 0}
!19 = !{!"gx_device_anti_alias_info_s", !8, i64 0, !8, i64 4}
!20 = !{!"gx_device_cached_colors_s", !6, i64 0, !6, i64 8}
!21 = !{!"gx_stroked_gradient_recognizer_s", !8, i64 0, !3, i64 4, !3, i64 36}
!22 = !{!"gdev_space_params_s", !6, i64 0, !6, i64 8, !23, i64 16, !8, i64 32, !3, i64 36}
!23 = !{!"gx_band_params_s", !8, i64 0, !8, i64 4, !6, i64 8}
!24 = !{!"gx_page_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16}
!25 = !{!"gx_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176, !2, i64 184, !2, i64 192, !2, i64 200, !2, i64 208, !2, i64 216, !2, i64 224, !2, i64 232, !2, i64 240, !2, i64 248, !2, i64 256, !2, i64 264, !2, i64 272, !2, i64 280, !2, i64 288, !2, i64 296, !2, i64 304, !2, i64 312, !2, i64 320, !2, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !2, i64 376, !2, i64 384, !2, i64 392, !2, i64 400, !2, i64 408, !2, i64 416, !2, i64 424, !2, i64 432, !2, i64 440, !2, i64 448, !2, i64 456, !2, i64 464, !2, i64 472, !2, i64 480, !2, i64 488, !2, i64 496, !2, i64 504, !2, i64 512, !2, i64 520, !2, i64 528, !2, i64 536, !2, i64 544, !2, i64 552, !2, i64 560, !2, i64 568, !2, i64 576}
!26 = !{!"gx_printer_device_procs_s", !2, i64 0, !2, i64 8, !27, i64 16, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80}
!27 = !{!"gx_device_buf_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24}
!28 = !{!"bg_print_s", !2, i64 0, !2, i64 8, !2, i64 16, !8, i64 24, !8, i64 28}
!29 = !{!3, !3, i64 0}
!30 = !{!31, !8, i64 0}
!31 = !{!"ppi", !8, i64 0, !8, i64 4, !8, i64 8}
!32 = !{!31, !8, i64 4}
!33 = !{!15, !2, i64 24}
!34 = !{!35, !2, i64 200}
!35 = !{!"gs_memory_s", !2, i64 0, !36, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!36 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!37 = !{!35, !2, i64 88}
!38 = !{!10, !3, i64 0}
!39 = !{!10, !8, i64 4}
!40 = !{!10, !8, i64 8}
!41 = !{!35, !2, i64 24}
!42 = !{!31, !8, i64 8}
