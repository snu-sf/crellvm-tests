; ModuleID = './gdevadmp.bc'
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
@.str = private unnamed_addr constant [9 x i8] c"appledmp\00", align 1
@st_device_printer = external constant %struct.gs_memory_struct_type_s, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"DeviceGray\00", align 1
@gs_appledmp_device = constant { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [11240 x i8], { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* }, [4096 x i8], i32, i32, i32, i32, i32, i32, %struct._IO_FILE*, i64, i8*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s*, i32)*, %struct.gx_page_queue_s*, i32, %struct.gx_device_printer_s*, i32, i32, %struct.bg_print_s, i32, %struct.gx_saved_pages_list_s*, %struct.gx_device_procs_s, %struct.gx_device_procs_s } { i32 18472, %struct.gx_device_procs_s* @prn_bg_procs, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), %struct.gs_memory_s* null, %struct.gs_memory_struct_type_s* @st_device_printer, i32 0, void (%struct.gx_device_s*)* null, %struct.rc_header_s zeroinitializer, i32 0, i32 0, i32 0, %struct.gx_device_color_info_s { i32 1, i32 1, i32 1, i16 1, i8 0, i32 1, i32 0, i32 2, i32 1, %struct.gx_device_anti_alias_info_s { i32 1, i32 1 }, i32 -1, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [64 x i64] zeroinitializer, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 -1, i64 0, i32 0 }, %struct.gx_device_cached_colors_s { i64 -1, i64 -1 }, i32 1020, i32 792, i32 0, i32 0, i32 0, i32 0, [2 x float] [float 6.120000e+02, float 7.920000e+02], [4 x float] zeroinitializer, i32 0, [2 x float] [float 1.200000e+02, float 7.200000e+01], [2 x float] [float 1.200000e+02, float 7.200000e+01], [2 x float] zeroinitializer, [4 x float] [float 0.000000e+00, float 3.600000e+01, float 3.600000e+01, float 0.000000e+00], i64 0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, %struct.gx_stroked_gradient_recognizer_s zeroinitializer, i32 0, i32 0, %struct.gdev_space_params_s { i64 10000000, i64 4000000, %struct.gx_band_params_s zeroinitializer, i32 0, i32 0 }, %struct.cmm_dev_profile_s* null, i32 0, %struct.gx_page_device_procs_s { i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_install, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_begin_page, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* @gx_default_end_page }, %struct.gx_device_procs_s zeroinitializer, [11240 x i8] zeroinitializer, { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* } { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)* @dmp_print_page, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_print_page_copies, %struct.gx_device_buf_procs_s { i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, %struct.gx_render_plane_s*, %struct.gs_memory_s*, %struct.gx_colors_usage_s*)* @gx_default_create_buf_device, i32 (%struct.gx_device_buf_space_s*, %struct.gx_device_s*, %struct.gx_render_plane_s*, i32, i32)* @gx_default_size_buf_device, i32 (%struct.gx_device_s*, i8*, i32, i8**, i32, i32, i32)* @gx_default_setup_buf_device, void (%struct.gx_device_s*)* @gx_default_destroy_buf_device }, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)* @gx_default_get_space_params, i32 (%struct.gdev_prn_start_render_params_s*)* @gx_default_start_render_thread, i32 (%struct.gx_device_printer_s*)* @gx_default_open_render_device, i32 (%struct.gx_device_printer_s*)* @gx_default_close_render_device, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_buffer_page }, [4096 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 -1, i32 0, %struct._IO_FILE* null, i64 0, i8* null, %struct.gs_memory_s* null, %struct.gs_memory_s* null, i32 (%struct.gx_device_s*, i32)* null, %struct.gx_page_queue_s* null, i32 0, %struct.gx_device_printer_s* null, i32 0, i32 0, %struct.bg_print_s zeroinitializer, i32 0, %struct.gx_saved_pages_list_s* null, %struct.gx_device_procs_s zeroinitializer, %struct.gx_device_procs_s zeroinitializer }, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"iwlo\00", align 1
@gs_iwlo_device = constant { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [11240 x i8], { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* }, [4096 x i8], i32, i32, i32, i32, i32, i32, %struct._IO_FILE*, i64, i8*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s*, i32)*, %struct.gx_page_queue_s*, i32, %struct.gx_device_printer_s*, i32, i32, %struct.bg_print_s, i32, %struct.gx_saved_pages_list_s*, %struct.gx_device_procs_s, %struct.gx_device_procs_s } { i32 18472, %struct.gx_device_procs_s* @prn_bg_procs, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), %struct.gs_memory_s* null, %struct.gs_memory_struct_type_s* @st_device_printer, i32 0, void (%struct.gx_device_s*)* null, %struct.rc_header_s zeroinitializer, i32 0, i32 0, i32 0, %struct.gx_device_color_info_s { i32 1, i32 1, i32 1, i16 1, i8 0, i32 1, i32 0, i32 2, i32 1, %struct.gx_device_anti_alias_info_s { i32 1, i32 1 }, i32 -1, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [64 x i64] zeroinitializer, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 -1, i64 0, i32 0 }, %struct.gx_device_cached_colors_s { i64 -1, i64 -1 }, i32 1360, i32 792, i32 0, i32 0, i32 0, i32 0, [2 x float] [float 6.120000e+02, float 7.920000e+02], [4 x float] zeroinitializer, i32 0, [2 x float] [float 1.600000e+02, float 7.200000e+01], [2 x float] [float 1.600000e+02, float 7.200000e+01], [2 x float] zeroinitializer, [4 x float] [float 0.000000e+00, float 3.600000e+01, float 3.600000e+01, float 0.000000e+00], i64 0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, %struct.gx_stroked_gradient_recognizer_s zeroinitializer, i32 0, i32 0, %struct.gdev_space_params_s { i64 10000000, i64 4000000, %struct.gx_band_params_s zeroinitializer, i32 0, i32 0 }, %struct.cmm_dev_profile_s* null, i32 0, %struct.gx_page_device_procs_s { i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_install, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_begin_page, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* @gx_default_end_page }, %struct.gx_device_procs_s zeroinitializer, [11240 x i8] zeroinitializer, { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* } { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)* @dmp_print_page, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_print_page_copies, %struct.gx_device_buf_procs_s { i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, %struct.gx_render_plane_s*, %struct.gs_memory_s*, %struct.gx_colors_usage_s*)* @gx_default_create_buf_device, i32 (%struct.gx_device_buf_space_s*, %struct.gx_device_s*, %struct.gx_render_plane_s*, i32, i32)* @gx_default_size_buf_device, i32 (%struct.gx_device_s*, i8*, i32, i8**, i32, i32, i32)* @gx_default_setup_buf_device, void (%struct.gx_device_s*)* @gx_default_destroy_buf_device }, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)* @gx_default_get_space_params, i32 (%struct.gdev_prn_start_render_params_s*)* @gx_default_start_render_thread, i32 (%struct.gx_device_printer_s*)* @gx_default_open_render_device, i32 (%struct.gx_device_printer_s*)* @gx_default_close_render_device, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_buffer_page }, [4096 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 -1, i32 0, %struct._IO_FILE* null, i64 0, i8* null, %struct.gs_memory_s* null, %struct.gs_memory_s* null, i32 (%struct.gx_device_s*, i32)* null, %struct.gx_page_queue_s* null, i32 0, %struct.gx_device_printer_s* null, i32 0, i32 0, %struct.bg_print_s zeroinitializer, i32 0, %struct.gx_saved_pages_list_s* null, %struct.gx_device_procs_s zeroinitializer, %struct.gx_device_procs_s zeroinitializer }, align 8
@.str.3 = private unnamed_addr constant [5 x i8] c"iwhi\00", align 1
@gs_iwhi_device = constant { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [11240 x i8], { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* }, [4096 x i8], i32, i32, i32, i32, i32, i32, %struct._IO_FILE*, i64, i8*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s*, i32)*, %struct.gx_page_queue_s*, i32, %struct.gx_device_printer_s*, i32, i32, %struct.bg_print_s, i32, %struct.gx_saved_pages_list_s*, %struct.gx_device_procs_s, %struct.gx_device_procs_s } { i32 18472, %struct.gx_device_procs_s* @prn_bg_procs, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), %struct.gs_memory_s* null, %struct.gs_memory_struct_type_s* @st_device_printer, i32 0, void (%struct.gx_device_s*)* null, %struct.rc_header_s zeroinitializer, i32 0, i32 0, i32 0, %struct.gx_device_color_info_s { i32 1, i32 1, i32 1, i16 1, i8 0, i32 1, i32 0, i32 2, i32 1, %struct.gx_device_anti_alias_info_s { i32 1, i32 1 }, i32 -1, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [64 x i64] zeroinitializer, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 -1, i64 0, i32 0 }, %struct.gx_device_cached_colors_s { i64 -1, i64 -1 }, i32 1360, i32 1584, i32 0, i32 0, i32 0, i32 0, [2 x float] [float 6.120000e+02, float 7.920000e+02], [4 x float] zeroinitializer, i32 0, [2 x float] [float 1.600000e+02, float 1.440000e+02], [2 x float] [float 1.600000e+02, float 1.440000e+02], [2 x float] zeroinitializer, [4 x float] [float 0.000000e+00, float 3.600000e+01, float 3.600000e+01, float 0.000000e+00], i64 0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, %struct.gx_stroked_gradient_recognizer_s zeroinitializer, i32 0, i32 0, %struct.gdev_space_params_s { i64 10000000, i64 4000000, %struct.gx_band_params_s zeroinitializer, i32 0, i32 0 }, %struct.cmm_dev_profile_s* null, i32 0, %struct.gx_page_device_procs_s { i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_install, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_begin_page, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* @gx_default_end_page }, %struct.gx_device_procs_s zeroinitializer, [11240 x i8] zeroinitializer, { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* } { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)* @dmp_print_page, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_print_page_copies, %struct.gx_device_buf_procs_s { i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, %struct.gx_render_plane_s*, %struct.gs_memory_s*, %struct.gx_colors_usage_s*)* @gx_default_create_buf_device, i32 (%struct.gx_device_buf_space_s*, %struct.gx_device_s*, %struct.gx_render_plane_s*, i32, i32)* @gx_default_size_buf_device, i32 (%struct.gx_device_s*, i8*, i32, i8**, i32, i32, i32)* @gx_default_setup_buf_device, void (%struct.gx_device_s*)* @gx_default_destroy_buf_device }, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)* @gx_default_get_space_params, i32 (%struct.gdev_prn_start_render_params_s*)* @gx_default_start_render_thread, i32 (%struct.gx_device_printer_s*)* @gx_default_open_render_device, i32 (%struct.gx_device_printer_s*)* @gx_default_close_render_device, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_buffer_page }, [4096 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 -1, i32 0, %struct._IO_FILE* null, i64 0, i8* null, %struct.gs_memory_s* null, %struct.gs_memory_s* null, i32 (%struct.gx_device_s*, i32)* null, %struct.gx_page_queue_s* null, i32 0, %struct.gx_device_printer_s* null, i32 0, i32 0, %struct.bg_print_s zeroinitializer, i32 0, %struct.gx_saved_pages_list_s* null, %struct.gx_device_procs_s zeroinitializer, %struct.gx_device_procs_s zeroinitializer }, align 8
@.str.4 = private unnamed_addr constant [5 x i8] c"iwlq\00", align 1
@gs_iwlq_device = constant { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [11240 x i8], { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* }, [4096 x i8], i32, i32, i32, i32, i32, i32, %struct._IO_FILE*, i64, i8*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s*, i32)*, %struct.gx_page_queue_s*, i32, %struct.gx_device_printer_s*, i32, i32, %struct.bg_print_s, i32, %struct.gx_saved_pages_list_s*, %struct.gx_device_procs_s, %struct.gx_device_procs_s } { i32 18472, %struct.gx_device_procs_s* @prn_bg_procs, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), %struct.gs_memory_s* null, %struct.gs_memory_struct_type_s* @st_device_printer, i32 0, void (%struct.gx_device_s*)* null, %struct.rc_header_s zeroinitializer, i32 0, i32 0, i32 0, %struct.gx_device_color_info_s { i32 1, i32 1, i32 1, i16 1, i8 0, i32 1, i32 0, i32 2, i32 1, %struct.gx_device_anti_alias_info_s { i32 1, i32 1 }, i32 -1, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [64 x i64] zeroinitializer, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 -1, i64 0, i32 0 }, %struct.gx_device_cached_colors_s { i64 -1, i64 -1 }, i32 2720, i32 2376, i32 0, i32 0, i32 0, i32 0, [2 x float] [float 6.120000e+02, float 7.920000e+02], [4 x float] zeroinitializer, i32 0, [2 x float] [float 3.200000e+02, float 2.160000e+02], [2 x float] [float 3.200000e+02, float 2.160000e+02], [2 x float] zeroinitializer, [4 x float] [float 0.000000e+00, float 0.000000e+00, float 3.600000e+01, float 0.000000e+00], i64 0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, %struct.gx_stroked_gradient_recognizer_s zeroinitializer, i32 0, i32 0, %struct.gdev_space_params_s { i64 10000000, i64 4000000, %struct.gx_band_params_s zeroinitializer, i32 0, i32 0 }, %struct.cmm_dev_profile_s* null, i32 0, %struct.gx_page_device_procs_s { i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_install, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_begin_page, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* @gx_default_end_page }, %struct.gx_device_procs_s zeroinitializer, [11240 x i8] zeroinitializer, { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* } { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)* @dmp_print_page, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_print_page_copies, %struct.gx_device_buf_procs_s { i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, %struct.gx_render_plane_s*, %struct.gs_memory_s*, %struct.gx_colors_usage_s*)* @gx_default_create_buf_device, i32 (%struct.gx_device_buf_space_s*, %struct.gx_device_s*, %struct.gx_render_plane_s*, i32, i32)* @gx_default_size_buf_device, i32 (%struct.gx_device_s*, i8*, i32, i8**, i32, i32, i32)* @gx_default_setup_buf_device, void (%struct.gx_device_s*)* @gx_default_destroy_buf_device }, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)* @gx_default_get_space_params, i32 (%struct.gdev_prn_start_render_params_s*)* @gx_default_start_render_thread, i32 (%struct.gx_device_printer_s*)* @gx_default_open_render_device, i32 (%struct.gx_device_printer_s*)* @gx_default_close_render_device, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_buffer_page }, [4096 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 -1, i32 0, %struct._IO_FILE* null, i64 0, i8* null, %struct.gs_memory_s* null, %struct.gs_memory_s* null, i32 (%struct.gx_device_s*, i32)* null, %struct.gx_page_queue_s* null, i32 0, %struct.gx_device_printer_s* null, i32 0, i32 0, %struct.bg_print_s zeroinitializer, i32 0, %struct.gx_saved_pages_list_s* null, %struct.gx_device_procs_s zeroinitializer, %struct.gx_device_procs_s zeroinitializer }, align 8
@.str.5 = private unnamed_addr constant [21 x i8] c"dmp_print_page(buf1)\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"dmp_print_page(buf2)\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"dmp_print_page(prn)\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"\0D\0A\1B>\1BT16\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"\1BP\1Ba3\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"\1BP\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"\1Bq\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"\1BU%04d%c%c%c\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"\1BC%04d\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"\1BV%04d%c\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"\1BG%04d\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"\1BT01\0D\0A\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"\1BT15\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@.str.19 = private unnamed_addr constant [15 x i8] c"\1BT99\0A\0A\1Br\0A\0A\0A\0A\1Bf\00", align 1
@.str.20 = private unnamed_addr constant [12 x i8] c"\1BT16\0C\1B<\1BB\1BE\00", align 1

declare i32 @gx_default_install(%struct.gx_device_s*, %struct.gs_state_s*) #0

declare i32 @gx_default_begin_page(%struct.gx_device_s*, %struct.gs_state_s*) #0

declare i32 @gx_default_end_page(%struct.gx_device_s*, i32, %struct.gs_state_s*) #0

; Function Attrs: nounwind uwtable
define internal i32 @dmp_print_page(%struct.gx_device_printer_s* %pdev, %struct._IO_FILE* %prn_stream) #1 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_printer_s*, align 8
  %prn_stream.addr = alloca %struct._IO_FILE*, align 8
  %dev_type = alloca i32, align 4
  %line_size = alloca i32, align 4
  %in_size = alloca i32, align 4
  %buf1 = alloca i8*, align 8
  %buf2 = alloca i8*, align 8
  %prn = alloca i8*, align 8
  %in = alloca i8*, align 8
  %out = alloca i8*, align 8
  %lnum = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %inp = alloca i8*, align 8
  %in_end = alloca i8*, align 8
  %out_end = alloca i8*, align 8
  %lcnt = alloca i32, align 4
  %ltmp = alloca i32, align 4
  %count = alloca i32, align 4
  %passes = alloca i32, align 4
  %prn_blk = alloca i8*, align 8
  %prn_end = alloca i8*, align 8
  %prn_tmp = alloca i8*, align 8
  store %struct.gx_device_printer_s* %pdev, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  store %struct._IO_FILE* %prn_stream, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %0 = bitcast i32* %dev_type to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast i32* %line_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %3 = bitcast %struct.gx_device_printer_s* %2 to %struct.gx_device_s*
  %4 = bitcast %struct.gx_device_s* %3 to %struct.gx_device_printer_s*
  %5 = bitcast %struct.gx_device_printer_s* %4 to %struct.gx_device_s*
  %call = call i32 @gx_device_raster(%struct.gx_device_s* %5, i32 0) #4
  store i32 %call, i32* %line_size, align 4, !tbaa !5
  %6 = bitcast i32* %in_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = load i32, i32* %line_size, align 4, !tbaa !5
  %mul = mul nsw i32 %7, 8
  store i32 %mul, i32* %in_size, align 4, !tbaa !5
  %8 = bitcast i8** %buf1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #2
  %9 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %9, i32 0, i32 3
  %10 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !7
  %non_gc_memory = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %10, i32 0, i32 3
  %11 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory, align 8, !tbaa !23
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %11, i32 0, i32 1
  %alloc_byte_array = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 10
  %12 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array, align 8, !tbaa !26
  %13 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory1 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %13, i32 0, i32 3
  %14 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory1, align 8, !tbaa !7
  %non_gc_memory2 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %14, i32 0, i32 3
  %15 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory2, align 8, !tbaa !23
  %16 = load i32, i32* %in_size, align 4, !tbaa !5
  %call3 = call i8* %12(%struct.gs_memory_s* %15, i32 %16, i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i32 0, i32 0)) #4
  store i8* %call3, i8** %buf1, align 8, !tbaa !1
  %17 = bitcast i8** %buf2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %17) #2
  %18 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory4 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %18, i32 0, i32 3
  %19 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory4, align 8, !tbaa !7
  %non_gc_memory5 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %19, i32 0, i32 3
  %20 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory5, align 8, !tbaa !23
  %procs6 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %20, i32 0, i32 1
  %alloc_byte_array7 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs6, i32 0, i32 10
  %21 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array7, align 8, !tbaa !26
  %22 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory8 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %22, i32 0, i32 3
  %23 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory8, align 8, !tbaa !7
  %non_gc_memory9 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %23, i32 0, i32 3
  %24 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory9, align 8, !tbaa !23
  %25 = load i32, i32* %in_size, align 4, !tbaa !5
  %call10 = call i8* %21(%struct.gs_memory_s* %24, i32 %25, i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i32 0, i32 0)) #4
  store i8* %call10, i8** %buf2, align 8, !tbaa !1
  %26 = bitcast i8** %prn to i8*
  call void @llvm.lifetime.start(i64 8, i8* %26) #2
  %27 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory11 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %27, i32 0, i32 3
  %28 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory11, align 8, !tbaa !7
  %non_gc_memory12 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %28, i32 0, i32 3
  %29 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory12, align 8, !tbaa !23
  %procs13 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %29, i32 0, i32 1
  %alloc_byte_array14 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs13, i32 0, i32 10
  %30 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array14, align 8, !tbaa !26
  %31 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory15 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %31, i32 0, i32 3
  %32 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory15, align 8, !tbaa !7
  %non_gc_memory16 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %32, i32 0, i32 3
  %33 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory16, align 8, !tbaa !23
  %34 = load i32, i32* %in_size, align 4, !tbaa !5
  %mul17 = mul nsw i32 3, %34
  %call18 = call i8* %30(%struct.gs_memory_s* %33, i32 %mul17, i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i32 0, i32 0)) #4
  store i8* %call18, i8** %prn, align 8, !tbaa !1
  %35 = bitcast i8** %in to i8*
  call void @llvm.lifetime.start(i64 8, i8* %35) #2
  %36 = load i8*, i8** %buf1, align 8, !tbaa !1
  store i8* %36, i8** %in, align 8, !tbaa !1
  %37 = bitcast i8** %out to i8*
  call void @llvm.lifetime.start(i64 8, i8* %37) #2
  %38 = load i8*, i8** %buf2, align 8, !tbaa !1
  store i8* %38, i8** %out, align 8, !tbaa !1
  %39 = bitcast i32* %lnum to i8*
  call void @llvm.lifetime.start(i64 4, i8* %39) #2
  store i32 0, i32* %lnum, align 4, !tbaa !5
  %40 = load i8*, i8** %buf1, align 8, !tbaa !1
  %cmp = icmp eq i8* %40, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %41 = load i8*, i8** %buf2, align 8, !tbaa !1
  %cmp19 = icmp eq i8* %41, null
  br i1 %cmp19, label %if.then, label %lor.lhs.false.20

lor.lhs.false.20:                                 ; preds = %lor.lhs.false
  %42 = load i8*, i8** %prn, align 8, !tbaa !1
  %cmp21 = icmp eq i8* %42, null
  br i1 %cmp21, label %if.then, label %if.end.46

if.then:                                          ; preds = %lor.lhs.false.20, %lor.lhs.false, %entry
  %43 = load i8*, i8** %buf1, align 8, !tbaa !1
  %tobool = icmp ne i8* %43, null
  br i1 %tobool, label %if.then.22, label %if.end

if.then.22:                                       ; preds = %if.then
  %44 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory23 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %44, i32 0, i32 3
  %45 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory23, align 8, !tbaa !7
  %non_gc_memory24 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %45, i32 0, i32 3
  %46 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory24, align 8, !tbaa !23
  %procs25 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %46, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs25, i32 0, i32 2
  %47 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !27
  %48 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory26 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %48, i32 0, i32 3
  %49 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory26, align 8, !tbaa !7
  %non_gc_memory27 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %49, i32 0, i32 3
  %50 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory27, align 8, !tbaa !23
  %51 = load i8*, i8** %buf1, align 8, !tbaa !1
  call void %47(%struct.gs_memory_s* %50, i8* %51, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i32 0, i32 0)) #4
  br label %if.end

if.end:                                           ; preds = %if.then.22, %if.then
  %52 = load i8*, i8** %buf2, align 8, !tbaa !1
  %tobool28 = icmp ne i8* %52, null
  br i1 %tobool28, label %if.then.29, label %if.end.36

if.then.29:                                       ; preds = %if.end
  %53 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory30 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %53, i32 0, i32 3
  %54 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory30, align 8, !tbaa !7
  %non_gc_memory31 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %54, i32 0, i32 3
  %55 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory31, align 8, !tbaa !23
  %procs32 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %55, i32 0, i32 1
  %free_object33 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs32, i32 0, i32 2
  %56 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object33, align 8, !tbaa !27
  %57 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory34 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %57, i32 0, i32 3
  %58 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory34, align 8, !tbaa !7
  %non_gc_memory35 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %58, i32 0, i32 3
  %59 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory35, align 8, !tbaa !23
  %60 = load i8*, i8** %buf2, align 8, !tbaa !1
  call void %56(%struct.gs_memory_s* %59, i8* %60, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i32 0, i32 0)) #4
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.29, %if.end
  %61 = load i8*, i8** %prn, align 8, !tbaa !1
  %tobool37 = icmp ne i8* %61, null
  br i1 %tobool37, label %if.then.38, label %if.end.45

if.then.38:                                       ; preds = %if.end.36
  %62 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory39 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %62, i32 0, i32 3
  %63 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory39, align 8, !tbaa !7
  %non_gc_memory40 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %63, i32 0, i32 3
  %64 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory40, align 8, !tbaa !23
  %procs41 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %64, i32 0, i32 1
  %free_object42 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs41, i32 0, i32 2
  %65 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object42, align 8, !tbaa !27
  %66 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory43 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %66, i32 0, i32 3
  %67 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory43, align 8, !tbaa !7
  %non_gc_memory44 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %67, i32 0, i32 3
  %68 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory44, align 8, !tbaa !23
  %69 = load i8*, i8** %prn, align 8, !tbaa !1
  call void %65(%struct.gs_memory_s* %68, i8* %69, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i32 0, i32 0)) #4
  br label %if.end.45

if.end.45:                                        ; preds = %if.then.38, %if.end.36
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.46:                                        ; preds = %lor.lhs.false.20
  %70 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %HWResolution = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %70, i32 0, i32 22
  %arrayidx = getelementptr inbounds [2 x float], [2 x float]* %HWResolution, i32 0, i64 1
  %71 = load float, float* %arrayidx, align 4, !tbaa !28
  %cmp47 = fcmp oeq float %71, 2.160000e+02
  br i1 %cmp47, label %if.then.48, label %if.else

if.then.48:                                       ; preds = %if.end.46
  store i32 4, i32* %dev_type, align 4, !tbaa !5
  br label %if.end.61

if.else:                                          ; preds = %if.end.46
  %72 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %HWResolution49 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %72, i32 0, i32 22
  %arrayidx50 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution49, i32 0, i64 1
  %73 = load float, float* %arrayidx50, align 4, !tbaa !28
  %cmp51 = fcmp oeq float %73, 1.440000e+02
  br i1 %cmp51, label %if.then.52, label %if.else.53

if.then.52:                                       ; preds = %if.else
  store i32 3, i32* %dev_type, align 4, !tbaa !5
  br label %if.end.60

if.else.53:                                       ; preds = %if.else
  %74 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %HWResolution54 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %74, i32 0, i32 22
  %arrayidx55 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution54, i32 0, i64 0
  %75 = load float, float* %arrayidx55, align 4, !tbaa !28
  %cmp56 = fcmp oeq float %75, 1.600000e+02
  br i1 %cmp56, label %if.then.57, label %if.else.58

if.then.57:                                       ; preds = %if.else.53
  store i32 2, i32* %dev_type, align 4, !tbaa !5
  br label %if.end.59

if.else.58:                                       ; preds = %if.else.53
  store i32 1, i32* %dev_type, align 4, !tbaa !5
  br label %if.end.59

if.end.59:                                        ; preds = %if.else.58, %if.then.57
  br label %if.end.60

if.end.60:                                        ; preds = %if.end.59, %if.then.52
  br label %if.end.61

if.end.61:                                        ; preds = %if.end.60, %if.then.48
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call62 = call i32 @fputs(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i32 0, i32 0), %struct._IO_FILE* %76) #4
  %77 = load i32, i32* %dev_type, align 4, !tbaa !5
  switch i32 %77, label %sw.default [
    i32 4, label %sw.bb
    i32 3, label %sw.bb.64
    i32 2, label %sw.bb.64
    i32 1, label %sw.bb.66
  ]

sw.bb:                                            ; preds = %if.end.61
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call63 = call i32 @fputs(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0), %struct._IO_FILE* %78) #4
  br label %sw.epilog

sw.bb.64:                                         ; preds = %if.end.61, %if.end.61
  %79 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call65 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i32 0, i32 0), %struct._IO_FILE* %79) #4
  br label %sw.epilog

sw.bb.66:                                         ; preds = %if.end.61
  br label %sw.default

sw.default:                                       ; preds = %if.end.61, %sw.bb.66
  %80 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call67 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i32 0, i32 0), %struct._IO_FILE* %80) #4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.64, %sw.bb
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog.343, %sw.epilog
  %81 = load i32, i32* %lnum, align 4, !tbaa !5
  %82 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %82, i32 0, i32 14
  %83 = load i32, i32* %height, align 4, !tbaa !30
  %cmp68 = icmp slt i32 %81, %83
  br i1 %cmp68, label %while.body, label %while.end.344

while.body:                                       ; preds = %while.cond
  %84 = bitcast i8** %inp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %84) #2
  %85 = bitcast i8** %in_end to i8*
  call void @llvm.lifetime.start(i64 8, i8* %85) #2
  %86 = bitcast i8** %out_end to i8*
  call void @llvm.lifetime.start(i64 8, i8* %86) #2
  %87 = bitcast i32* %lcnt to i8*
  call void @llvm.lifetime.start(i64 4, i8* %87) #2
  %88 = bitcast i32* %ltmp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %88) #2
  %89 = bitcast i32* %count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %89) #2
  %90 = bitcast i32* %passes to i8*
  call void @llvm.lifetime.start(i64 4, i8* %90) #2
  %91 = bitcast i8** %prn_blk to i8*
  call void @llvm.lifetime.start(i64 8, i8* %91) #2
  %92 = bitcast i8** %prn_end to i8*
  call void @llvm.lifetime.start(i64 8, i8* %92) #2
  %93 = bitcast i8** %prn_tmp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %93) #2
  %94 = load i32, i32* %dev_type, align 4, !tbaa !5
  switch i32 %94, label %sw.default.72 [
    i32 4, label %sw.bb.69
    i32 3, label %sw.bb.70
    i32 2, label %sw.bb.71
    i32 1, label %sw.bb.71
  ]

sw.bb.69:                                         ; preds = %while.body
  store i32 3, i32* %passes, align 4, !tbaa !5
  br label %sw.epilog.73

sw.bb.70:                                         ; preds = %while.body
  store i32 2, i32* %passes, align 4, !tbaa !5
  br label %sw.epilog.73

sw.bb.71:                                         ; preds = %while.body, %while.body
  br label %sw.default.72

sw.default.72:                                    ; preds = %while.body, %sw.bb.71
  store i32 1, i32* %passes, align 4, !tbaa !5
  br label %sw.epilog.73

sw.epilog.73:                                     ; preds = %sw.default.72, %sw.bb.70, %sw.bb.69
  store i32 0, i32* %count, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc.131, %sw.epilog.73
  %95 = load i32, i32* %count, align 4, !tbaa !5
  %96 = load i32, i32* %passes, align 4, !tbaa !5
  %cmp74 = icmp slt i32 %95, %96
  br i1 %cmp74, label %for.body, label %for.end.133

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %lcnt, align 4, !tbaa !5
  br label %for.cond.75

for.cond.75:                                      ; preds = %for.inc, %for.body
  %97 = load i32, i32* %lcnt, align 4, !tbaa !5
  %cmp76 = icmp slt i32 %97, 8
  br i1 %cmp76, label %for.body.77, label %for.end

for.body.77:                                      ; preds = %for.cond.75
  %98 = load i32, i32* %dev_type, align 4, !tbaa !5
  switch i32 %98, label %sw.default.84 [
    i32 4, label %sw.bb.78
    i32 3, label %sw.bb.80
    i32 2, label %sw.bb.83
    i32 1, label %sw.bb.83
  ]

sw.bb.78:                                         ; preds = %for.body.77
  %99 = load i32, i32* %lcnt, align 4, !tbaa !5
  %100 = load i32, i32* %count, align 4, !tbaa !5
  %mul79 = mul nsw i32 8, %100
  %add = add nsw i32 %99, %mul79
  store i32 %add, i32* %ltmp, align 4, !tbaa !5
  br label %sw.epilog.85

sw.bb.80:                                         ; preds = %for.body.77
  %101 = load i32, i32* %lcnt, align 4, !tbaa !5
  %mul81 = mul nsw i32 2, %101
  %102 = load i32, i32* %count, align 4, !tbaa !5
  %add82 = add nsw i32 %mul81, %102
  store i32 %add82, i32* %ltmp, align 4, !tbaa !5
  br label %sw.epilog.85

sw.bb.83:                                         ; preds = %for.body.77, %for.body.77
  br label %sw.default.84

sw.default.84:                                    ; preds = %for.body.77, %sw.bb.83
  %103 = load i32, i32* %lcnt, align 4, !tbaa !5
  store i32 %103, i32* %ltmp, align 4, !tbaa !5
  br label %sw.epilog.85

sw.epilog.85:                                     ; preds = %sw.default.84, %sw.bb.80, %sw.bb.78
  %104 = load i32, i32* %lnum, align 4, !tbaa !5
  %105 = load i32, i32* %ltmp, align 4, !tbaa !5
  %add86 = add nsw i32 %104, %105
  %106 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %height87 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %106, i32 0, i32 14
  %107 = load i32, i32* %height87, align 4, !tbaa !30
  %cmp88 = icmp sgt i32 %add86, %107
  br i1 %cmp88, label %if.then.89, label %if.else.92

if.then.89:                                       ; preds = %sw.epilog.85
  %108 = load i8*, i8** %in, align 8, !tbaa !1
  %109 = load i32, i32* %lcnt, align 4, !tbaa !5
  %110 = load i32, i32* %line_size, align 4, !tbaa !5
  %mul90 = mul nsw i32 %109, %110
  %idx.ext = sext i32 %mul90 to i64
  %add.ptr = getelementptr inbounds i8, i8* %108, i64 %idx.ext
  %111 = load i32, i32* %line_size, align 4, !tbaa !5
  %conv = sext i32 %111 to i64
  %call91 = call i8* @memset(i8* %add.ptr, i32 0, i64 %conv) #5
  br label %if.end.98

if.else.92:                                       ; preds = %sw.epilog.85
  %112 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %113 = load i32, i32* %lnum, align 4, !tbaa !5
  %114 = load i32, i32* %ltmp, align 4, !tbaa !5
  %add93 = add nsw i32 %113, %114
  %115 = load i8*, i8** %in, align 8, !tbaa !1
  %116 = load i32, i32* %line_size, align 4, !tbaa !5
  %117 = load i32, i32* %lcnt, align 4, !tbaa !5
  %sub = sub nsw i32 7, %117
  %mul94 = mul nsw i32 %116, %sub
  %idx.ext95 = sext i32 %mul94 to i64
  %add.ptr96 = getelementptr inbounds i8, i8* %115, i64 %idx.ext95
  %118 = load i32, i32* %line_size, align 4, !tbaa !5
  %call97 = call i32 @gdev_prn_copy_scan_lines(%struct.gx_device_printer_s* %112, i32 %add93, i8* %add.ptr96, i32 %118) #4
  br label %if.end.98

if.end.98:                                        ; preds = %if.else.92, %if.then.89
  br label %for.inc

for.inc:                                          ; preds = %if.end.98
  %119 = load i32, i32* %lcnt, align 4, !tbaa !5
  %inc = add nsw i32 %119, 1
  store i32 %inc, i32* %lcnt, align 4, !tbaa !5
  br label %for.cond.75

for.end:                                          ; preds = %for.cond.75
  %120 = load i8*, i8** %out, align 8, !tbaa !1
  store i8* %120, i8** %out_end, align 8, !tbaa !1
  %121 = load i8*, i8** %in, align 8, !tbaa !1
  store i8* %121, i8** %inp, align 8, !tbaa !1
  %122 = load i8*, i8** %inp, align 8, !tbaa !1
  %123 = load i32, i32* %line_size, align 4, !tbaa !5
  %idx.ext99 = sext i32 %123 to i64
  %add.ptr100 = getelementptr inbounds i8, i8* %122, i64 %idx.ext99
  store i8* %add.ptr100, i8** %in_end, align 8, !tbaa !1
  br label %for.cond.101

for.cond.101:                                     ; preds = %for.inc.105, %for.end
  %124 = load i8*, i8** %inp, align 8, !tbaa !1
  %125 = load i8*, i8** %in_end, align 8, !tbaa !1
  %cmp102 = icmp ult i8* %124, %125
  br i1 %cmp102, label %for.body.104, label %for.end.107

for.body.104:                                     ; preds = %for.cond.101
  %126 = load i8*, i8** %inp, align 8, !tbaa !1
  %127 = load i32, i32* %line_size, align 4, !tbaa !5
  %128 = load i8*, i8** %out_end, align 8, !tbaa !1
  call void @memflip8x8(i8* %126, i32 %127, i8* %128, i32 1) #4
  br label %for.inc.105

for.inc.105:                                      ; preds = %for.body.104
  %129 = load i8*, i8** %inp, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %129, i32 1
  store i8* %incdec.ptr, i8** %inp, align 8, !tbaa !1
  %130 = load i8*, i8** %out_end, align 8, !tbaa !1
  %add.ptr106 = getelementptr inbounds i8, i8* %130, i64 8
  store i8* %add.ptr106, i8** %out_end, align 8, !tbaa !1
  br label %for.cond.101

for.end.107:                                      ; preds = %for.cond.101
  %131 = load i8*, i8** %out, align 8, !tbaa !1
  store i8* %131, i8** %out_end, align 8, !tbaa !1
  %132 = load i32, i32* %dev_type, align 4, !tbaa !5
  switch i32 %132, label %sw.default.116 [
    i32 4, label %sw.bb.108
    i32 3, label %sw.bb.111
    i32 2, label %sw.bb.115
    i32 1, label %sw.bb.115
  ]

sw.bb.108:                                        ; preds = %for.end.107
  %133 = load i8*, i8** %prn, align 8, !tbaa !1
  %134 = load i32, i32* %count, align 4, !tbaa !5
  %idx.ext109 = sext i32 %134 to i64
  %add.ptr110 = getelementptr inbounds i8, i8* %133, i64 %idx.ext109
  store i8* %add.ptr110, i8** %prn_end, align 8, !tbaa !1
  br label %sw.epilog.117

sw.bb.111:                                        ; preds = %for.end.107
  %135 = load i8*, i8** %prn, align 8, !tbaa !1
  %136 = load i32, i32* %in_size, align 4, !tbaa !5
  %137 = load i32, i32* %count, align 4, !tbaa !5
  %mul112 = mul nsw i32 %136, %137
  %idx.ext113 = sext i32 %mul112 to i64
  %add.ptr114 = getelementptr inbounds i8, i8* %135, i64 %idx.ext113
  store i8* %add.ptr114, i8** %prn_end, align 8, !tbaa !1
  br label %sw.epilog.117

sw.bb.115:                                        ; preds = %for.end.107, %for.end.107
  br label %sw.default.116

sw.default.116:                                   ; preds = %for.end.107, %sw.bb.115
  %138 = load i8*, i8** %prn, align 8, !tbaa !1
  store i8* %138, i8** %prn_end, align 8, !tbaa !1
  br label %sw.epilog.117

sw.epilog.117:                                    ; preds = %sw.default.116, %sw.bb.111, %sw.bb.108
  br label %while.cond.118

while.cond.118:                                   ; preds = %if.end.130, %sw.epilog.117
  %139 = load i8*, i8** %out_end, align 8, !tbaa !1
  %140 = load i8*, i8** %out, align 8, !tbaa !1
  %sub.ptr.lhs.cast = ptrtoint i8* %139 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %140 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv119 = trunc i64 %sub.ptr.sub to i32
  %141 = load i32, i32* %in_size, align 4, !tbaa !5
  %cmp120 = icmp slt i32 %conv119, %141
  br i1 %cmp120, label %while.body.122, label %while.end

while.body.122:                                   ; preds = %while.cond.118
  %142 = load i8*, i8** %out_end, align 8, !tbaa !1
  %incdec.ptr123 = getelementptr inbounds i8, i8* %142, i32 1
  store i8* %incdec.ptr123, i8** %out_end, align 8, !tbaa !1
  %143 = load i8, i8* %142, align 1, !tbaa !31
  %144 = load i8*, i8** %prn_end, align 8, !tbaa !1
  store i8 %143, i8* %144, align 1, !tbaa !31
  %145 = load i32, i32* %dev_type, align 4, !tbaa !5
  %cmp124 = icmp eq i32 %145, 4
  br i1 %cmp124, label %if.then.126, label %if.else.128

if.then.126:                                      ; preds = %while.body.122
  %146 = load i8*, i8** %prn_end, align 8, !tbaa !1
  %add.ptr127 = getelementptr inbounds i8, i8* %146, i64 3
  store i8* %add.ptr127, i8** %prn_end, align 8, !tbaa !1
  br label %if.end.130

if.else.128:                                      ; preds = %while.body.122
  %147 = load i8*, i8** %prn_end, align 8, !tbaa !1
  %incdec.ptr129 = getelementptr inbounds i8, i8* %147, i32 1
  store i8* %incdec.ptr129, i8** %prn_end, align 8, !tbaa !1
  br label %if.end.130

if.end.130:                                       ; preds = %if.else.128, %if.then.126
  br label %while.cond.118

while.end:                                        ; preds = %while.cond.118
  br label %for.inc.131

for.inc.131:                                      ; preds = %while.end
  %148 = load i32, i32* %count, align 4, !tbaa !5
  %inc132 = add nsw i32 %148, 1
  store i32 %inc132, i32* %count, align 4, !tbaa !5
  br label %for.cond

for.end.133:                                      ; preds = %for.cond
  %149 = load i32, i32* %dev_type, align 4, !tbaa !5
  switch i32 %149, label %sw.default.279 [
    i32 4, label %sw.bb.134
    i32 3, label %sw.bb.208
    i32 2, label %sw.bb.278
    i32 1, label %sw.bb.278
  ]

sw.bb.134:                                        ; preds = %for.end.133
  %150 = load i8*, i8** %prn, align 8, !tbaa !1
  store i8* %150, i8** %prn_blk, align 8, !tbaa !1
  %151 = load i8*, i8** %prn_blk, align 8, !tbaa !1
  %152 = load i32, i32* %in_size, align 4, !tbaa !5
  %mul135 = mul nsw i32 %152, 3
  %idx.ext136 = sext i32 %mul135 to i64
  %add.ptr137 = getelementptr inbounds i8, i8* %151, i64 %idx.ext136
  store i8* %add.ptr137, i8** %prn_end, align 8, !tbaa !1
  br label %while.cond.138

while.cond.138:                                   ; preds = %while.body.154, %sw.bb.134
  %153 = load i8*, i8** %prn_end, align 8, !tbaa !1
  %154 = load i8*, i8** %prn, align 8, !tbaa !1
  %cmp139 = icmp ugt i8* %153, %154
  br i1 %cmp139, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %while.cond.138
  %155 = load i8*, i8** %prn_end, align 8, !tbaa !1
  %arrayidx141 = getelementptr inbounds i8, i8* %155, i64 -1
  %156 = load i8, i8* %arrayidx141, align 1, !tbaa !31
  %conv142 = zext i8 %156 to i32
  %cmp143 = icmp eq i32 %conv142, 0
  br i1 %cmp143, label %land.lhs.true.145, label %land.end

land.lhs.true.145:                                ; preds = %land.lhs.true
  %157 = load i8*, i8** %prn_end, align 8, !tbaa !1
  %arrayidx146 = getelementptr inbounds i8, i8* %157, i64 -2
  %158 = load i8, i8* %arrayidx146, align 1, !tbaa !31
  %conv147 = zext i8 %158 to i32
  %cmp148 = icmp eq i32 %conv147, 0
  br i1 %cmp148, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true.145
  %159 = load i8*, i8** %prn_end, align 8, !tbaa !1
  %arrayidx150 = getelementptr inbounds i8, i8* %159, i64 -3
  %160 = load i8, i8* %arrayidx150, align 1, !tbaa !31
  %conv151 = zext i8 %160 to i32
  %cmp152 = icmp eq i32 %conv151, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.145, %land.lhs.true, %while.cond.138
  %161 = phi i1 [ false, %land.lhs.true.145 ], [ false, %land.lhs.true ], [ false, %while.cond.138 ], [ %cmp152, %land.rhs ]
  br i1 %161, label %while.body.154, label %while.end.156

while.body.154:                                   ; preds = %land.end
  %162 = load i8*, i8** %prn_end, align 8, !tbaa !1
  %add.ptr155 = getelementptr inbounds i8, i8* %162, i64 -3
  store i8* %add.ptr155, i8** %prn_end, align 8, !tbaa !1
  br label %while.cond.138

while.end.156:                                    ; preds = %land.end
  br label %while.cond.157

while.cond.157:                                   ; preds = %while.body.176, %while.end.156
  %163 = load i8*, i8** %prn_blk, align 8, !tbaa !1
  %164 = load i8*, i8** %prn_end, align 8, !tbaa !1
  %cmp158 = icmp ult i8* %163, %164
  br i1 %cmp158, label %land.lhs.true.160, label %land.end.175

land.lhs.true.160:                                ; preds = %while.cond.157
  %165 = load i8*, i8** %prn_blk, align 8, !tbaa !1
  %arrayidx161 = getelementptr inbounds i8, i8* %165, i64 0
  %166 = load i8, i8* %arrayidx161, align 1, !tbaa !31
  %conv162 = zext i8 %166 to i32
  %cmp163 = icmp eq i32 %conv162, 0
  br i1 %cmp163, label %land.lhs.true.165, label %land.end.175

land.lhs.true.165:                                ; preds = %land.lhs.true.160
  %167 = load i8*, i8** %prn_blk, align 8, !tbaa !1
  %arrayidx166 = getelementptr inbounds i8, i8* %167, i64 1
  %168 = load i8, i8* %arrayidx166, align 1, !tbaa !31
  %conv167 = zext i8 %168 to i32
  %cmp168 = icmp eq i32 %conv167, 0
  br i1 %cmp168, label %land.rhs.170, label %land.end.175

land.rhs.170:                                     ; preds = %land.lhs.true.165
  %169 = load i8*, i8** %prn_blk, align 8, !tbaa !1
  %arrayidx171 = getelementptr inbounds i8, i8* %169, i64 2
  %170 = load i8, i8* %arrayidx171, align 1, !tbaa !31
  %conv172 = zext i8 %170 to i32
  %cmp173 = icmp eq i32 %conv172, 0
  br label %land.end.175

land.end.175:                                     ; preds = %land.rhs.170, %land.lhs.true.165, %land.lhs.true.160, %while.cond.157
  %171 = phi i1 [ false, %land.lhs.true.165 ], [ false, %land.lhs.true.160 ], [ false, %while.cond.157 ], [ %cmp173, %land.rhs.170 ]
  br i1 %171, label %while.body.176, label %while.end.178

while.body.176:                                   ; preds = %land.end.175
  %172 = load i8*, i8** %prn_blk, align 8, !tbaa !1
  %add.ptr177 = getelementptr inbounds i8, i8* %172, i64 3
  store i8* %add.ptr177, i8** %prn_blk, align 8, !tbaa !1
  br label %while.cond.157

while.end.178:                                    ; preds = %land.end.175
  %173 = load i8*, i8** %prn_end, align 8, !tbaa !1
  %174 = load i8*, i8** %prn_blk, align 8, !tbaa !1
  %cmp179 = icmp ne i8* %173, %174
  br i1 %cmp179, label %if.then.181, label %if.end.207

if.then.181:                                      ; preds = %while.end.178
  %175 = load i8*, i8** %prn_blk, align 8, !tbaa !1
  %176 = load i8*, i8** %prn, align 8, !tbaa !1
  %sub.ptr.lhs.cast182 = ptrtoint i8* %175 to i64
  %sub.ptr.rhs.cast183 = ptrtoint i8* %176 to i64
  %sub.ptr.sub184 = sub i64 %sub.ptr.lhs.cast182, %sub.ptr.rhs.cast183
  %cmp185 = icmp sgt i64 %sub.ptr.sub184, 7
  br i1 %cmp185, label %if.then.187, label %if.else.193

if.then.187:                                      ; preds = %if.then.181
  %177 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %178 = load i8*, i8** %prn_blk, align 8, !tbaa !1
  %179 = load i8*, i8** %prn, align 8, !tbaa !1
  %sub.ptr.lhs.cast188 = ptrtoint i8* %178 to i64
  %sub.ptr.rhs.cast189 = ptrtoint i8* %179 to i64
  %sub.ptr.sub190 = sub i64 %sub.ptr.lhs.cast188, %sub.ptr.rhs.cast189
  %div = sdiv i64 %sub.ptr.sub190, 3
  %conv191 = trunc i64 %div to i32
  %call192 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %177, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i32 0, i32 0), i32 %conv191, i32 0, i32 0, i32 0) #4
  br label %if.end.194

if.else.193:                                      ; preds = %if.then.181
  %180 = load i8*, i8** %prn, align 8, !tbaa !1
  store i8* %180, i8** %prn_blk, align 8, !tbaa !1
  br label %if.end.194

if.end.194:                                       ; preds = %if.else.193, %if.then.187
  %181 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %182 = load i8*, i8** %prn_end, align 8, !tbaa !1
  %183 = load i8*, i8** %prn_blk, align 8, !tbaa !1
  %sub.ptr.lhs.cast195 = ptrtoint i8* %182 to i64
  %sub.ptr.rhs.cast196 = ptrtoint i8* %183 to i64
  %sub.ptr.sub197 = sub i64 %sub.ptr.lhs.cast195, %sub.ptr.rhs.cast196
  %div198 = sdiv i64 %sub.ptr.sub197, 3
  %conv199 = trunc i64 %div198 to i32
  %call200 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %181, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i32 0, i32 0), i32 %conv199) #4
  %184 = load i8*, i8** %prn_blk, align 8, !tbaa !1
  %185 = load i8*, i8** %prn_end, align 8, !tbaa !1
  %186 = load i8*, i8** %prn_blk, align 8, !tbaa !1
  %sub.ptr.lhs.cast201 = ptrtoint i8* %185 to i64
  %sub.ptr.rhs.cast202 = ptrtoint i8* %186 to i64
  %sub.ptr.sub203 = sub i64 %sub.ptr.lhs.cast201, %sub.ptr.rhs.cast202
  %conv204 = trunc i64 %sub.ptr.sub203 to i32
  %conv205 = sext i32 %conv204 to i64
  %187 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call206 = call i64 @fwrite(i8* %184, i64 1, i64 %conv205, %struct._IO_FILE* %187) #4
  br label %if.end.207

if.end.207:                                       ; preds = %if.end.194, %while.end.178
  br label %sw.epilog.334

sw.bb.208:                                        ; preds = %for.end.133
  store i32 0, i32* %count, align 4, !tbaa !5
  br label %for.cond.209

for.cond.209:                                     ; preds = %for.inc.274, %sw.bb.208
  %188 = load i32, i32* %count, align 4, !tbaa !5
  %cmp210 = icmp slt i32 %188, 2
  br i1 %cmp210, label %for.body.212, label %for.end.276

for.body.212:                                     ; preds = %for.cond.209
  %189 = load i8*, i8** %prn, align 8, !tbaa !1
  %190 = load i32, i32* %in_size, align 4, !tbaa !5
  %191 = load i32, i32* %count, align 4, !tbaa !5
  %mul213 = mul nsw i32 %190, %191
  %idx.ext214 = sext i32 %mul213 to i64
  %add.ptr215 = getelementptr inbounds i8, i8* %189, i64 %idx.ext214
  store i8* %add.ptr215, i8** %prn_tmp, align 8, !tbaa !1
  store i8* %add.ptr215, i8** %prn_blk, align 8, !tbaa !1
  %192 = load i8*, i8** %prn_blk, align 8, !tbaa !1
  %193 = load i32, i32* %in_size, align 4, !tbaa !5
  %idx.ext216 = sext i32 %193 to i64
  %add.ptr217 = getelementptr inbounds i8, i8* %192, i64 %idx.ext216
  store i8* %add.ptr217, i8** %prn_end, align 8, !tbaa !1
  br label %while.cond.218

while.cond.218:                                   ; preds = %while.body.227, %for.body.212
  %194 = load i8*, i8** %prn_end, align 8, !tbaa !1
  %195 = load i8*, i8** %prn_blk, align 8, !tbaa !1
  %cmp219 = icmp ugt i8* %194, %195
  br i1 %cmp219, label %land.rhs.221, label %land.end.226

land.rhs.221:                                     ; preds = %while.cond.218
  %196 = load i8*, i8** %prn_end, align 8, !tbaa !1
  %arrayidx222 = getelementptr inbounds i8, i8* %196, i64 -1
  %197 = load i8, i8* %arrayidx222, align 1, !tbaa !31
  %conv223 = zext i8 %197 to i32
  %cmp224 = icmp eq i32 %conv223, 0
  br label %land.end.226

land.end.226:                                     ; preds = %land.rhs.221, %while.cond.218
  %198 = phi i1 [ false, %while.cond.218 ], [ %cmp224, %land.rhs.221 ]
  br i1 %198, label %while.body.227, label %while.end.229

while.body.227:                                   ; preds = %land.end.226
  %199 = load i8*, i8** %prn_end, align 8, !tbaa !1
  %incdec.ptr228 = getelementptr inbounds i8, i8* %199, i32 -1
  store i8* %incdec.ptr228, i8** %prn_end, align 8, !tbaa !1
  br label %while.cond.218

while.end.229:                                    ; preds = %land.end.226
  br label %while.cond.230

while.cond.230:                                   ; preds = %while.body.239, %while.end.229
  %200 = load i8*, i8** %prn_blk, align 8, !tbaa !1
  %201 = load i8*, i8** %prn_end, align 8, !tbaa !1
  %cmp231 = icmp ult i8* %200, %201
  br i1 %cmp231, label %land.rhs.233, label %land.end.238

land.rhs.233:                                     ; preds = %while.cond.230
  %202 = load i8*, i8** %prn_blk, align 8, !tbaa !1
  %arrayidx234 = getelementptr inbounds i8, i8* %202, i64 0
  %203 = load i8, i8* %arrayidx234, align 1, !tbaa !31
  %conv235 = zext i8 %203 to i32
  %cmp236 = icmp eq i32 %conv235, 0
  br label %land.end.238

land.end.238:                                     ; preds = %land.rhs.233, %while.cond.230
  %204 = phi i1 [ false, %while.cond.230 ], [ %cmp236, %land.rhs.233 ]
  br i1 %204, label %while.body.239, label %while.end.241

while.body.239:                                   ; preds = %land.end.238
  %205 = load i8*, i8** %prn_blk, align 8, !tbaa !1
  %incdec.ptr240 = getelementptr inbounds i8, i8* %205, i32 1
  store i8* %incdec.ptr240, i8** %prn_blk, align 8, !tbaa !1
  br label %while.cond.230

while.end.241:                                    ; preds = %land.end.238
  %206 = load i8*, i8** %prn_end, align 8, !tbaa !1
  %207 = load i8*, i8** %prn_blk, align 8, !tbaa !1
  %cmp242 = icmp ne i8* %206, %207
  br i1 %cmp242, label %if.then.244, label %if.end.269

if.then.244:                                      ; preds = %while.end.241
  %208 = load i8*, i8** %prn_blk, align 8, !tbaa !1
  %209 = load i8*, i8** %prn_tmp, align 8, !tbaa !1
  %sub.ptr.lhs.cast245 = ptrtoint i8* %208 to i64
  %sub.ptr.rhs.cast246 = ptrtoint i8* %209 to i64
  %sub.ptr.sub247 = sub i64 %sub.ptr.lhs.cast245, %sub.ptr.rhs.cast246
  %cmp248 = icmp sgt i64 %sub.ptr.sub247, 7
  br i1 %cmp248, label %if.then.250, label %if.else.256

if.then.250:                                      ; preds = %if.then.244
  %210 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %211 = load i8*, i8** %prn_blk, align 8, !tbaa !1
  %212 = load i8*, i8** %prn_tmp, align 8, !tbaa !1
  %sub.ptr.lhs.cast251 = ptrtoint i8* %211 to i64
  %sub.ptr.rhs.cast252 = ptrtoint i8* %212 to i64
  %sub.ptr.sub253 = sub i64 %sub.ptr.lhs.cast251, %sub.ptr.rhs.cast252
  %conv254 = trunc i64 %sub.ptr.sub253 to i32
  %call255 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %210, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i32 0, i32 0), i32 %conv254, i32 0) #4
  br label %if.end.257

if.else.256:                                      ; preds = %if.then.244
  %213 = load i8*, i8** %prn_tmp, align 8, !tbaa !1
  store i8* %213, i8** %prn_blk, align 8, !tbaa !1
  br label %if.end.257

if.end.257:                                       ; preds = %if.else.256, %if.then.250
  %214 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %215 = load i8*, i8** %prn_end, align 8, !tbaa !1
  %216 = load i8*, i8** %prn_blk, align 8, !tbaa !1
  %sub.ptr.lhs.cast258 = ptrtoint i8* %215 to i64
  %sub.ptr.rhs.cast259 = ptrtoint i8* %216 to i64
  %sub.ptr.sub260 = sub i64 %sub.ptr.lhs.cast258, %sub.ptr.rhs.cast259
  %conv261 = trunc i64 %sub.ptr.sub260 to i32
  %call262 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %214, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i32 0, i32 0), i32 %conv261) #4
  %217 = load i8*, i8** %prn_blk, align 8, !tbaa !1
  %218 = load i8*, i8** %prn_end, align 8, !tbaa !1
  %219 = load i8*, i8** %prn_blk, align 8, !tbaa !1
  %sub.ptr.lhs.cast263 = ptrtoint i8* %218 to i64
  %sub.ptr.rhs.cast264 = ptrtoint i8* %219 to i64
  %sub.ptr.sub265 = sub i64 %sub.ptr.lhs.cast263, %sub.ptr.rhs.cast264
  %conv266 = trunc i64 %sub.ptr.sub265 to i32
  %conv267 = sext i32 %conv266 to i64
  %220 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call268 = call i64 @fwrite(i8* %217, i64 1, i64 %conv267, %struct._IO_FILE* %220) #4
  br label %if.end.269

if.end.269:                                       ; preds = %if.end.257, %while.end.241
  %221 = load i32, i32* %count, align 4, !tbaa !5
  %tobool270 = icmp ne i32 %221, 0
  br i1 %tobool270, label %if.end.273, label %if.then.271

if.then.271:                                      ; preds = %if.end.269
  %222 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call272 = call i32 @fputs(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i32 0, i32 0), %struct._IO_FILE* %222) #4
  br label %if.end.273

if.end.273:                                       ; preds = %if.then.271, %if.end.269
  br label %for.inc.274

for.inc.274:                                      ; preds = %if.end.273
  %223 = load i32, i32* %count, align 4, !tbaa !5
  %inc275 = add nsw i32 %223, 1
  store i32 %inc275, i32* %count, align 4, !tbaa !5
  br label %for.cond.209

for.end.276:                                      ; preds = %for.cond.209
  %224 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call277 = call i32 @fputs(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i32 0, i32 0), %struct._IO_FILE* %224) #4
  br label %sw.epilog.334

sw.bb.278:                                        ; preds = %for.end.133, %for.end.133
  br label %sw.default.279

sw.default.279:                                   ; preds = %for.end.133, %sw.bb.278
  %225 = load i8*, i8** %prn, align 8, !tbaa !1
  store i8* %225, i8** %prn_blk, align 8, !tbaa !1
  %226 = load i8*, i8** %prn_blk, align 8, !tbaa !1
  %227 = load i32, i32* %in_size, align 4, !tbaa !5
  %idx.ext280 = sext i32 %227 to i64
  %add.ptr281 = getelementptr inbounds i8, i8* %226, i64 %idx.ext280
  store i8* %add.ptr281, i8** %prn_end, align 8, !tbaa !1
  br label %while.cond.282

while.cond.282:                                   ; preds = %while.body.291, %sw.default.279
  %228 = load i8*, i8** %prn_end, align 8, !tbaa !1
  %229 = load i8*, i8** %prn_blk, align 8, !tbaa !1
  %cmp283 = icmp ugt i8* %228, %229
  br i1 %cmp283, label %land.rhs.285, label %land.end.290

land.rhs.285:                                     ; preds = %while.cond.282
  %230 = load i8*, i8** %prn_end, align 8, !tbaa !1
  %arrayidx286 = getelementptr inbounds i8, i8* %230, i64 -1
  %231 = load i8, i8* %arrayidx286, align 1, !tbaa !31
  %conv287 = zext i8 %231 to i32
  %cmp288 = icmp eq i32 %conv287, 0
  br label %land.end.290

land.end.290:                                     ; preds = %land.rhs.285, %while.cond.282
  %232 = phi i1 [ false, %while.cond.282 ], [ %cmp288, %land.rhs.285 ]
  br i1 %232, label %while.body.291, label %while.end.293

while.body.291:                                   ; preds = %land.end.290
  %233 = load i8*, i8** %prn_end, align 8, !tbaa !1
  %incdec.ptr292 = getelementptr inbounds i8, i8* %233, i32 -1
  store i8* %incdec.ptr292, i8** %prn_end, align 8, !tbaa !1
  br label %while.cond.282

while.end.293:                                    ; preds = %land.end.290
  br label %while.cond.294

while.cond.294:                                   ; preds = %while.body.303, %while.end.293
  %234 = load i8*, i8** %prn_blk, align 8, !tbaa !1
  %235 = load i8*, i8** %prn_end, align 8, !tbaa !1
  %cmp295 = icmp ult i8* %234, %235
  br i1 %cmp295, label %land.rhs.297, label %land.end.302

land.rhs.297:                                     ; preds = %while.cond.294
  %236 = load i8*, i8** %prn_blk, align 8, !tbaa !1
  %arrayidx298 = getelementptr inbounds i8, i8* %236, i64 0
  %237 = load i8, i8* %arrayidx298, align 1, !tbaa !31
  %conv299 = zext i8 %237 to i32
  %cmp300 = icmp eq i32 %conv299, 0
  br label %land.end.302

land.end.302:                                     ; preds = %land.rhs.297, %while.cond.294
  %238 = phi i1 [ false, %while.cond.294 ], [ %cmp300, %land.rhs.297 ]
  br i1 %238, label %while.body.303, label %while.end.305

while.body.303:                                   ; preds = %land.end.302
  %239 = load i8*, i8** %prn_blk, align 8, !tbaa !1
  %incdec.ptr304 = getelementptr inbounds i8, i8* %239, i32 1
  store i8* %incdec.ptr304, i8** %prn_blk, align 8, !tbaa !1
  br label %while.cond.294

while.end.305:                                    ; preds = %land.end.302
  %240 = load i8*, i8** %prn_end, align 8, !tbaa !1
  %241 = load i8*, i8** %prn_blk, align 8, !tbaa !1
  %cmp306 = icmp ne i8* %240, %241
  br i1 %cmp306, label %if.then.308, label %if.end.333

if.then.308:                                      ; preds = %while.end.305
  %242 = load i8*, i8** %prn_blk, align 8, !tbaa !1
  %243 = load i8*, i8** %prn, align 8, !tbaa !1
  %sub.ptr.lhs.cast309 = ptrtoint i8* %242 to i64
  %sub.ptr.rhs.cast310 = ptrtoint i8* %243 to i64
  %sub.ptr.sub311 = sub i64 %sub.ptr.lhs.cast309, %sub.ptr.rhs.cast310
  %cmp312 = icmp sgt i64 %sub.ptr.sub311, 7
  br i1 %cmp312, label %if.then.314, label %if.else.320

if.then.314:                                      ; preds = %if.then.308
  %244 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %245 = load i8*, i8** %prn_blk, align 8, !tbaa !1
  %246 = load i8*, i8** %prn, align 8, !tbaa !1
  %sub.ptr.lhs.cast315 = ptrtoint i8* %245 to i64
  %sub.ptr.rhs.cast316 = ptrtoint i8* %246 to i64
  %sub.ptr.sub317 = sub i64 %sub.ptr.lhs.cast315, %sub.ptr.rhs.cast316
  %conv318 = trunc i64 %sub.ptr.sub317 to i32
  %call319 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %244, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i32 0, i32 0), i32 %conv318, i32 0) #4
  br label %if.end.321

if.else.320:                                      ; preds = %if.then.308
  %247 = load i8*, i8** %prn, align 8, !tbaa !1
  store i8* %247, i8** %prn_blk, align 8, !tbaa !1
  br label %if.end.321

if.end.321:                                       ; preds = %if.else.320, %if.then.314
  %248 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %249 = load i8*, i8** %prn_end, align 8, !tbaa !1
  %250 = load i8*, i8** %prn_blk, align 8, !tbaa !1
  %sub.ptr.lhs.cast322 = ptrtoint i8* %249 to i64
  %sub.ptr.rhs.cast323 = ptrtoint i8* %250 to i64
  %sub.ptr.sub324 = sub i64 %sub.ptr.lhs.cast322, %sub.ptr.rhs.cast323
  %conv325 = trunc i64 %sub.ptr.sub324 to i32
  %call326 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %248, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i32 0, i32 0), i32 %conv325) #4
  %251 = load i8*, i8** %prn_blk, align 8, !tbaa !1
  %252 = load i8*, i8** %prn_end, align 8, !tbaa !1
  %253 = load i8*, i8** %prn_blk, align 8, !tbaa !1
  %sub.ptr.lhs.cast327 = ptrtoint i8* %252 to i64
  %sub.ptr.rhs.cast328 = ptrtoint i8* %253 to i64
  %sub.ptr.sub329 = sub i64 %sub.ptr.lhs.cast327, %sub.ptr.rhs.cast328
  %conv330 = trunc i64 %sub.ptr.sub329 to i32
  %conv331 = sext i32 %conv330 to i64
  %254 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call332 = call i64 @fwrite(i8* %251, i64 1, i64 %conv331, %struct._IO_FILE* %254) #4
  br label %if.end.333

if.end.333:                                       ; preds = %if.end.321, %while.end.305
  br label %sw.epilog.334

sw.epilog.334:                                    ; preds = %if.end.333, %for.end.276, %if.end.207
  %255 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call335 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i32 0, i32 0), %struct._IO_FILE* %255) #4
  %256 = load i32, i32* %dev_type, align 4, !tbaa !5
  switch i32 %256, label %sw.default.341 [
    i32 4, label %sw.bb.336
    i32 3, label %sw.bb.338
    i32 2, label %sw.bb.340
    i32 1, label %sw.bb.340
  ]

sw.bb.336:                                        ; preds = %sw.epilog.334
  %257 = load i32, i32* %lnum, align 4, !tbaa !5
  %add337 = add nsw i32 %257, 24
  store i32 %add337, i32* %lnum, align 4, !tbaa !5
  br label %sw.epilog.343

sw.bb.338:                                        ; preds = %sw.epilog.334
  %258 = load i32, i32* %lnum, align 4, !tbaa !5
  %add339 = add nsw i32 %258, 16
  store i32 %add339, i32* %lnum, align 4, !tbaa !5
  br label %sw.epilog.343

sw.bb.340:                                        ; preds = %sw.epilog.334, %sw.epilog.334
  br label %sw.default.341

sw.default.341:                                   ; preds = %sw.epilog.334, %sw.bb.340
  %259 = load i32, i32* %lnum, align 4, !tbaa !5
  %add342 = add nsw i32 %259, 8
  store i32 %add342, i32* %lnum, align 4, !tbaa !5
  br label %sw.epilog.343

sw.epilog.343:                                    ; preds = %sw.default.341, %sw.bb.338, %sw.bb.336
  %260 = bitcast i8** %prn_tmp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %260) #2
  %261 = bitcast i8** %prn_end to i8*
  call void @llvm.lifetime.end(i64 8, i8* %261) #2
  %262 = bitcast i8** %prn_blk to i8*
  call void @llvm.lifetime.end(i64 8, i8* %262) #2
  %263 = bitcast i32* %passes to i8*
  call void @llvm.lifetime.end(i64 4, i8* %263) #2
  %264 = bitcast i32* %count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %264) #2
  %265 = bitcast i32* %ltmp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %265) #2
  %266 = bitcast i32* %lcnt to i8*
  call void @llvm.lifetime.end(i64 4, i8* %266) #2
  %267 = bitcast i8** %out_end to i8*
  call void @llvm.lifetime.end(i64 8, i8* %267) #2
  %268 = bitcast i8** %in_end to i8*
  call void @llvm.lifetime.end(i64 8, i8* %268) #2
  %269 = bitcast i8** %inp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %269) #2
  br label %while.cond

while.end.344:                                    ; preds = %while.cond
  %270 = load i32, i32* %dev_type, align 4, !tbaa !5
  %cmp345 = icmp eq i32 %270, 1
  br i1 %cmp345, label %if.end.349, label %if.then.347

if.then.347:                                      ; preds = %while.end.344
  %271 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call348 = call i32 @fputs(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i32 0, i32 0), %struct._IO_FILE* %271) #4
  br label %if.end.349

if.end.349:                                       ; preds = %if.then.347, %while.end.344
  %272 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call350 = call i32 @fputs(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.20, i32 0, i32 0), %struct._IO_FILE* %272) #4
  %273 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call351 = call i32 @fflush(%struct._IO_FILE* %273) #4
  %274 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory352 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %274, i32 0, i32 3
  %275 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory352, align 8, !tbaa !7
  %non_gc_memory353 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %275, i32 0, i32 3
  %276 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory353, align 8, !tbaa !23
  %procs354 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %276, i32 0, i32 1
  %free_object355 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs354, i32 0, i32 2
  %277 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object355, align 8, !tbaa !27
  %278 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory356 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %278, i32 0, i32 3
  %279 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory356, align 8, !tbaa !7
  %non_gc_memory357 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %279, i32 0, i32 3
  %280 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory357, align 8, !tbaa !23
  %281 = load i8*, i8** %prn, align 8, !tbaa !1
  call void %277(%struct.gs_memory_s* %280, i8* %281, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i32 0, i32 0)) #4
  %282 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory358 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %282, i32 0, i32 3
  %283 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory358, align 8, !tbaa !7
  %non_gc_memory359 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %283, i32 0, i32 3
  %284 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory359, align 8, !tbaa !23
  %procs360 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %284, i32 0, i32 1
  %free_object361 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs360, i32 0, i32 2
  %285 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object361, align 8, !tbaa !27
  %286 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory362 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %286, i32 0, i32 3
  %287 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory362, align 8, !tbaa !7
  %non_gc_memory363 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %287, i32 0, i32 3
  %288 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory363, align 8, !tbaa !23
  %289 = load i8*, i8** %buf2, align 8, !tbaa !1
  call void %285(%struct.gs_memory_s* %288, i8* %289, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i32 0, i32 0)) #4
  %290 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory364 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %290, i32 0, i32 3
  %291 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory364, align 8, !tbaa !7
  %non_gc_memory365 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %291, i32 0, i32 3
  %292 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory365, align 8, !tbaa !23
  %procs366 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %292, i32 0, i32 1
  %free_object367 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs366, i32 0, i32 2
  %293 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object367, align 8, !tbaa !27
  %294 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory368 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %294, i32 0, i32 3
  %295 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory368, align 8, !tbaa !7
  %non_gc_memory369 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %295, i32 0, i32 3
  %296 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory369, align 8, !tbaa !23
  %297 = load i8*, i8** %buf1, align 8, !tbaa !1
  call void %293(%struct.gs_memory_s* %296, i8* %297, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i32 0, i32 0)) #4
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.349, %if.end.45
  %298 = bitcast i32* %lnum to i8*
  call void @llvm.lifetime.end(i64 4, i8* %298) #2
  %299 = bitcast i8** %out to i8*
  call void @llvm.lifetime.end(i64 8, i8* %299) #2
  %300 = bitcast i8** %in to i8*
  call void @llvm.lifetime.end(i64 8, i8* %300) #2
  %301 = bitcast i8** %prn to i8*
  call void @llvm.lifetime.end(i64 8, i8* %301) #2
  %302 = bitcast i8** %buf2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %302) #2
  %303 = bitcast i8** %buf1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %303) #2
  %304 = bitcast i32* %in_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %304) #2
  %305 = bitcast i32* %line_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %305) #2
  %306 = bitcast i32* %dev_type to i8*
  call void @llvm.lifetime.end(i64 4, i8* %306) #2
  %307 = load i32, i32* %retval
  ret i32 %307
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

declare i32 @fputs(i8*, %struct._IO_FILE*) #0

; Function Attrs: nounwind
declare i8* @memset(i8*, i32, i64) #3

declare i32 @gdev_prn_copy_scan_lines(%struct.gx_device_printer_s*, i32, i8*, i32) #0

declare void @memflip8x8(i8*, i32, i8*, i32) #0

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #0

declare i64 @fwrite(i8*, i64, i64, %struct._IO_FILE*) #0

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

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
!7 = !{!8, !2, i64 24}
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
!23 = !{!24, !2, i64 200}
!24 = !{!"gs_memory_s", !2, i64 0, !25, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!25 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!26 = !{!24, !2, i64 88}
!27 = !{!24, !2, i64 24}
!28 = !{!29, !29, i64 0}
!29 = !{!"float", !3, i64 0}
!30 = !{!8, !6, i64 836}
!31 = !{!3, !3, i64 0}
