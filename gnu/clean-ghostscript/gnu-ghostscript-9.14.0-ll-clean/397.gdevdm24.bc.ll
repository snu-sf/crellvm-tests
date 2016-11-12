; ModuleID = './gdevdm24.bc'
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
@.str = private unnamed_addr constant [6 x i8] c"necp6\00", align 1
@st_device_printer = external constant %struct.gs_memory_struct_type_s, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"DeviceGray\00", align 1
@gs_necp6_device = constant { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [11240 x i8], { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* }, [4096 x i8], i32, i32, i32, i32, i32, i32, %struct._IO_FILE*, i64, i8*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s*, i32)*, %struct.gx_page_queue_s*, i32, %struct.gx_device_printer_s*, i32, i32, %struct.bg_print_s, i32, %struct.gx_saved_pages_list_s*, %struct.gx_device_procs_s, %struct.gx_device_procs_s } { i32 18472, %struct.gx_device_procs_s* @prn_bg_procs, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), %struct.gs_memory_s* null, %struct.gs_memory_struct_type_s* @st_device_printer, i32 0, void (%struct.gx_device_s*)* null, %struct.rc_header_s zeroinitializer, i32 0, i32 0, i32 0, %struct.gx_device_color_info_s { i32 1, i32 1, i32 1, i16 1, i8 0, i32 1, i32 0, i32 2, i32 1, %struct.gx_device_anti_alias_info_s { i32 1, i32 1 }, i32 -1, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [64 x i64] zeroinitializer, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 -1, i64 0, i32 0 }, %struct.gx_device_cached_colors_s { i64 -1, i64 -1 }, i32 3060, i32 3960, i32 0, i32 0, i32 0, i32 0, [2 x float] [float 6.120000e+02, float 7.920000e+02], [4 x float] zeroinitializer, i32 0, [2 x float] [float 3.600000e+02, float 3.600000e+02], [2 x float] [float 3.600000e+02, float 3.600000e+02], [2 x float] zeroinitializer, [4 x float] [float 0.000000e+00, float 0.000000e+00, float 3.600000e+01, float 0.000000e+00], i64 0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, %struct.gx_stroked_gradient_recognizer_s zeroinitializer, i32 0, i32 0, %struct.gdev_space_params_s { i64 10000000, i64 4000000, %struct.gx_band_params_s zeroinitializer, i32 0, i32 0 }, %struct.cmm_dev_profile_s* null, i32 0, %struct.gx_page_device_procs_s { i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_install, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_begin_page, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* @gx_default_end_page }, %struct.gx_device_procs_s zeroinitializer, [11240 x i8] zeroinitializer, { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* } { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)* @necp6_print_page, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_print_page_copies, %struct.gx_device_buf_procs_s { i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, %struct.gx_render_plane_s*, %struct.gs_memory_s*, %struct.gx_colors_usage_s*)* @gx_default_create_buf_device, i32 (%struct.gx_device_buf_space_s*, %struct.gx_device_s*, %struct.gx_render_plane_s*, i32, i32)* @gx_default_size_buf_device, i32 (%struct.gx_device_s*, i8*, i32, i8**, i32, i32, i32)* @gx_default_setup_buf_device, void (%struct.gx_device_s*)* @gx_default_destroy_buf_device }, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)* @gx_default_get_space_params, i32 (%struct.gdev_prn_start_render_params_s*)* @gx_default_start_render_thread, i32 (%struct.gx_device_printer_s*)* @gx_default_open_render_device, i32 (%struct.gx_device_printer_s*)* @gx_default_close_render_device, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_buffer_page }, [4096 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 -1, i32 0, %struct._IO_FILE* null, i64 0, i8* null, %struct.gs_memory_s* null, %struct.gs_memory_s* null, i32 (%struct.gx_device_s*, i32)* null, %struct.gx_page_queue_s* null, i32 0, %struct.gx_device_printer_s* null, i32 0, i32 0, %struct.bg_print_s zeroinitializer, i32 0, %struct.gx_saved_pages_list_s* null, %struct.gx_device_procs_s zeroinitializer, %struct.gx_device_procs_s zeroinitializer }, align 8
@.str.2 = private unnamed_addr constant [6 x i8] c"lq850\00", align 1
@gs_lq850_device = constant { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [11240 x i8], { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* }, [4096 x i8], i32, i32, i32, i32, i32, i32, %struct._IO_FILE*, i64, i8*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s*, i32)*, %struct.gx_page_queue_s*, i32, %struct.gx_device_printer_s*, i32, i32, %struct.bg_print_s, i32, %struct.gx_saved_pages_list_s*, %struct.gx_device_procs_s, %struct.gx_device_procs_s } { i32 18472, %struct.gx_device_procs_s* @prn_bg_procs, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), %struct.gs_memory_s* null, %struct.gs_memory_struct_type_s* @st_device_printer, i32 0, void (%struct.gx_device_s*)* null, %struct.rc_header_s zeroinitializer, i32 0, i32 0, i32 0, %struct.gx_device_color_info_s { i32 1, i32 1, i32 1, i16 1, i8 0, i32 1, i32 0, i32 2, i32 1, %struct.gx_device_anti_alias_info_s { i32 1, i32 1 }, i32 -1, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [64 x i64] zeroinitializer, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 -1, i64 0, i32 0 }, %struct.gx_device_cached_colors_s { i64 -1, i64 -1 }, i32 3060, i32 3960, i32 0, i32 0, i32 0, i32 0, [2 x float] [float 6.120000e+02, float 7.920000e+02], [4 x float] zeroinitializer, i32 0, [2 x float] [float 3.600000e+02, float 3.600000e+02], [2 x float] [float 3.600000e+02, float 3.600000e+02], [2 x float] zeroinitializer, [4 x float] [float 0.000000e+00, float 0.000000e+00, float 3.600000e+01, float 0.000000e+00], i64 0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, %struct.gx_stroked_gradient_recognizer_s zeroinitializer, i32 0, i32 0, %struct.gdev_space_params_s { i64 10000000, i64 4000000, %struct.gx_band_params_s zeroinitializer, i32 0, i32 0 }, %struct.cmm_dev_profile_s* null, i32 0, %struct.gx_page_device_procs_s { i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_install, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_begin_page, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* @gx_default_end_page }, %struct.gx_device_procs_s zeroinitializer, [11240 x i8] zeroinitializer, { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* } { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)* @lq850_print_page, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_print_page_copies, %struct.gx_device_buf_procs_s { i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, %struct.gx_render_plane_s*, %struct.gs_memory_s*, %struct.gx_colors_usage_s*)* @gx_default_create_buf_device, i32 (%struct.gx_device_buf_space_s*, %struct.gx_device_s*, %struct.gx_render_plane_s*, i32, i32)* @gx_default_size_buf_device, i32 (%struct.gx_device_s*, i8*, i32, i8**, i32, i32, i32)* @gx_default_setup_buf_device, void (%struct.gx_device_s*)* @gx_default_destroy_buf_device }, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)* @gx_default_get_space_params, i32 (%struct.gdev_prn_start_render_params_s*)* @gx_default_start_render_thread, i32 (%struct.gx_device_printer_s*)* @gx_default_open_render_device, i32 (%struct.gx_device_printer_s*)* @gx_default_close_render_device, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_buffer_page }, [4096 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 -1, i32 0, %struct._IO_FILE* null, i64 0, i8* null, %struct.gs_memory_s* null, %struct.gs_memory_s* null, i32 (%struct.gx_device_s*, i32)* null, %struct.gx_page_queue_s* null, i32 0, %struct.gx_device_printer_s* null, i32 0, i32 0, %struct.bg_print_s zeroinitializer, i32 0, %struct.gx_saved_pages_list_s* null, %struct.gx_device_procs_s zeroinitializer, %struct.gx_device_procs_s zeroinitializer }, align 8
@necp6_print_page.necp6_init_string = private unnamed_addr constant [14 x i8] c"\1B@\1BP\1Bl\00\0D\1C3\01\1BQ\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"dot24_print_page (in)\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"dot24_print_page (out)\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"\1BJ\FF\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"\1BJ%c\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"\1BD%c%c\09\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"\0C\1B@\00", align 1
@lq850_print_page.lq850_init_string = private unnamed_addr constant [14 x i8] c"\1B@\1BP\1Bl\00\0D\1B+\01\1BQ\00", align 1

declare i32 @gx_default_install(%struct.gx_device_s*, %struct.gs_state_s*) #0

declare i32 @gx_default_begin_page(%struct.gx_device_s*, %struct.gs_state_s*) #0

declare i32 @gx_default_end_page(%struct.gx_device_s*, i32, %struct.gs_state_s*) #0

; Function Attrs: nounwind uwtable
define internal i32 @necp6_print_page(%struct.gx_device_printer_s* %pdev, %struct._IO_FILE* %prn_stream) #1 {
entry:
  %pdev.addr = alloca %struct.gx_device_printer_s*, align 8
  %prn_stream.addr = alloca %struct._IO_FILE*, align 8
  %necp6_init_string = alloca [14 x i8], align 1
  store %struct.gx_device_printer_s* %pdev, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  store %struct._IO_FILE* %prn_stream, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %0 = bitcast [14 x i8]* %necp6_init_string to i8*
  call void @llvm.lifetime.start(i64 14, i8* %0) #2
  %1 = bitcast [14 x i8]* %necp6_init_string to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @necp6_print_page.necp6_init_string, i32 0, i32 0), i64 14, i32 1, i1 false)
  %2 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %necp6_init_string, i32 0, i32 0
  %call = call i32 @dot24_print_page(%struct.gx_device_printer_s* %2, %struct._IO_FILE* %3, i8* %arraydecay, i32 14) #5
  %4 = bitcast [14 x i8]* %necp6_init_string to i8*
  call void @llvm.lifetime.end(i64 14, i8* %4) #2
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
define internal i32 @lq850_print_page(%struct.gx_device_printer_s* %pdev, %struct._IO_FILE* %prn_stream) #1 {
entry:
  %pdev.addr = alloca %struct.gx_device_printer_s*, align 8
  %prn_stream.addr = alloca %struct._IO_FILE*, align 8
  %lq850_init_string = alloca [14 x i8], align 1
  store %struct.gx_device_printer_s* %pdev, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  store %struct._IO_FILE* %prn_stream, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %0 = bitcast [14 x i8]* %lq850_init_string to i8*
  call void @llvm.lifetime.start(i64 14, i8* %0) #2
  %1 = bitcast [14 x i8]* %lq850_init_string to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @lq850_print_page.lq850_init_string, i32 0, i32 0), i64 14, i32 1, i1 false)
  %2 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %lq850_init_string, i32 0, i32 0
  %call = call i32 @dot24_print_page(%struct.gx_device_printer_s* %2, %struct._IO_FILE* %3, i8* %arraydecay, i32 14) #5
  %4 = bitcast [14 x i8]* %lq850_init_string to i8*
  call void @llvm.lifetime.end(i64 14, i8* %4) #2
  ret i32 %call
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: nounwind uwtable
define internal i32 @dot24_print_page(%struct.gx_device_printer_s* %pdev, %struct._IO_FILE* %prn_stream, i8* %init_string, i32 %init_len) #1 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_printer_s*, align 8
  %prn_stream.addr = alloca %struct._IO_FILE*, align 8
  %init_string.addr = alloca i8*, align 8
  %init_len.addr = alloca i32, align 4
  %xres = alloca i32, align 4
  %yres = alloca i32, align 4
  %x_high = alloca i32, align 4
  %y_high = alloca i32, align 4
  %bits_per_column = alloca i32, align 4
  %line_size = alloca i32, align 4
  %in_size = alloca i32, align 4
  %in = alloca i8*, align 8
  %out_size = alloca i32, align 4
  %out = alloca i8*, align 8
  %y_passes = alloca i32, align 4
  %dots_per_space = alloca i32, align 4
  %bytes_per_space = alloca i32, align 4
  %skip = alloca i32, align 4
  %lnum = alloca i32, align 4
  %ypass = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %inp = alloca i8*, align 8
  %in_end = alloca i8*, align 8
  %out_end = alloca i8*, align 8
  %out_blk = alloca i8*, align 8
  %outp = alloca i8*, align 8
  %lcnt = alloca i32, align 4
  %zp = alloca i8*, align 8
  %tpos = alloca i32, align 4
  %newp = alloca i8*, align 8
  store %struct.gx_device_printer_s* %pdev, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  store %struct._IO_FILE* %prn_stream, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  store i8* %init_string, i8** %init_string.addr, align 8, !tbaa !1
  store i32 %init_len, i32* %init_len.addr, align 4, !tbaa !5
  %0 = bitcast i32* %xres to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %HWResolution = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %1, i32 0, i32 22
  %arrayidx = getelementptr inbounds [2 x float], [2 x float]* %HWResolution, i32 0, i64 0
  %2 = load float, float* %arrayidx, align 4, !tbaa !7
  %conv = fptosi float %2 to i32
  store i32 %conv, i32* %xres, align 4, !tbaa !5
  %3 = bitcast i32* %yres to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %HWResolution1 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %4, i32 0, i32 22
  %arrayidx2 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution1, i32 0, i64 1
  %5 = load float, float* %arrayidx2, align 4, !tbaa !7
  %conv3 = fptosi float %5 to i32
  store i32 %conv3, i32* %yres, align 4, !tbaa !5
  %6 = bitcast i32* %x_high to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = load i32, i32* %xres, align 4, !tbaa !5
  %cmp = icmp eq i32 %7, 360
  %conv4 = zext i1 %cmp to i32
  store i32 %conv4, i32* %x_high, align 4, !tbaa !5
  %8 = bitcast i32* %y_high to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #2
  %9 = load i32, i32* %yres, align 4, !tbaa !5
  %cmp5 = icmp eq i32 %9, 360
  %conv6 = zext i1 %cmp5 to i32
  store i32 %conv6, i32* %y_high, align 4, !tbaa !5
  %10 = bitcast i32* %bits_per_column to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #2
  %11 = load i32, i32* %y_high, align 4, !tbaa !5
  %tobool = icmp ne i32 %11, 0
  %cond = select i1 %tobool, i32 48, i32 24
  store i32 %cond, i32* %bits_per_column, align 4, !tbaa !5
  %12 = bitcast i32* %line_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #2
  %13 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %14 = bitcast %struct.gx_device_printer_s* %13 to %struct.gx_device_s*
  %call = call i32 @gx_device_raster(%struct.gx_device_s* %14, i32 0) #5
  store i32 %call, i32* %line_size, align 4, !tbaa !5
  %15 = bitcast i32* %in_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #2
  %16 = load i32, i32* %line_size, align 4, !tbaa !5
  %17 = load i32, i32* %bits_per_column, align 4, !tbaa !5
  %mul = mul i32 %16, %17
  store i32 %mul, i32* %in_size, align 4, !tbaa !5
  %18 = bitcast i8** %in to i8*
  call void @llvm.lifetime.start(i64 8, i8* %18) #2
  %19 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %19, i32 0, i32 3
  %20 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !9
  %non_gc_memory = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %20, i32 0, i32 3
  %21 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory, align 8, !tbaa !25
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %21, i32 0, i32 1
  %alloc_byte_array = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 10
  %22 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array, align 8, !tbaa !28
  %23 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory7 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %23, i32 0, i32 3
  %24 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory7, align 8, !tbaa !9
  %non_gc_memory8 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %24, i32 0, i32 3
  %25 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory8, align 8, !tbaa !25
  %26 = load i32, i32* %in_size, align 4, !tbaa !5
  %call9 = call i8* %22(%struct.gs_memory_s* %25, i32 %26, i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i32 0, i32 0)) #5
  store i8* %call9, i8** %in, align 8, !tbaa !1
  %27 = bitcast i32* %out_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %27) #2
  %28 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %28, i32 0, i32 13
  %29 = load i32, i32* %width, align 4, !tbaa !29
  %add = add nsw i32 %29, 7
  %and = and i32 %add, -8
  %mul10 = mul nsw i32 %and, 3
  store i32 %mul10, i32* %out_size, align 4, !tbaa !5
  %30 = bitcast i8** %out to i8*
  call void @llvm.lifetime.start(i64 8, i8* %30) #2
  %31 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory11 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %31, i32 0, i32 3
  %32 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory11, align 8, !tbaa !9
  %non_gc_memory12 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %32, i32 0, i32 3
  %33 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory12, align 8, !tbaa !25
  %procs13 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %33, i32 0, i32 1
  %alloc_byte_array14 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs13, i32 0, i32 10
  %34 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array14, align 8, !tbaa !28
  %35 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory15 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %35, i32 0, i32 3
  %36 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory15, align 8, !tbaa !9
  %non_gc_memory16 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %36, i32 0, i32 3
  %37 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory16, align 8, !tbaa !25
  %38 = load i32, i32* %out_size, align 4, !tbaa !5
  %call17 = call i8* %34(%struct.gs_memory_s* %37, i32 %38, i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i32 0, i32 0)) #5
  store i8* %call17, i8** %out, align 8, !tbaa !1
  %39 = bitcast i32* %y_passes to i8*
  call void @llvm.lifetime.start(i64 4, i8* %39) #2
  %40 = load i32, i32* %y_high, align 4, !tbaa !5
  %tobool18 = icmp ne i32 %40, 0
  %cond19 = select i1 %tobool18, i32 2, i32 1
  store i32 %cond19, i32* %y_passes, align 4, !tbaa !5
  %41 = bitcast i32* %dots_per_space to i8*
  call void @llvm.lifetime.start(i64 4, i8* %41) #2
  %42 = load i32, i32* %xres, align 4, !tbaa !5
  %div = sdiv i32 %42, 10
  store i32 %div, i32* %dots_per_space, align 4, !tbaa !5
  %43 = bitcast i32* %bytes_per_space to i8*
  call void @llvm.lifetime.start(i64 4, i8* %43) #2
  %44 = load i32, i32* %dots_per_space, align 4, !tbaa !5
  %mul20 = mul nsw i32 %44, 3
  store i32 %mul20, i32* %bytes_per_space, align 4, !tbaa !5
  %45 = bitcast i32* %skip to i8*
  call void @llvm.lifetime.start(i64 4, i8* %45) #2
  store i32 0, i32* %skip, align 4, !tbaa !5
  %46 = bitcast i32* %lnum to i8*
  call void @llvm.lifetime.start(i64 4, i8* %46) #2
  store i32 0, i32* %lnum, align 4, !tbaa !5
  %47 = bitcast i32* %ypass to i8*
  call void @llvm.lifetime.start(i64 4, i8* %47) #2
  %48 = load i8*, i8** %in, align 8, !tbaa !1
  %cmp21 = icmp eq i8* %48, null
  br i1 %cmp21, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %49 = load i8*, i8** %out, align 8, !tbaa !1
  %cmp23 = icmp eq i8* %49, null
  br i1 %cmp23, label %if.then, label %if.end.41

if.then:                                          ; preds = %lor.lhs.false, %entry
  %50 = load i8*, i8** %out, align 8, !tbaa !1
  %tobool25 = icmp ne i8* %50, null
  br i1 %tobool25, label %if.then.26, label %if.end

if.then.26:                                       ; preds = %if.then
  %51 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory27 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %51, i32 0, i32 3
  %52 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory27, align 8, !tbaa !9
  %non_gc_memory28 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %52, i32 0, i32 3
  %53 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory28, align 8, !tbaa !25
  %procs29 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %53, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs29, i32 0, i32 2
  %54 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !30
  %55 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory30 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %55, i32 0, i32 3
  %56 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory30, align 8, !tbaa !9
  %non_gc_memory31 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %56, i32 0, i32 3
  %57 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory31, align 8, !tbaa !25
  %58 = load i8*, i8** %out, align 8, !tbaa !1
  call void %54(%struct.gs_memory_s* %57, i8* %58, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i32 0, i32 0)) #5
  br label %if.end

if.end:                                           ; preds = %if.then.26, %if.then
  %59 = load i8*, i8** %in, align 8, !tbaa !1
  %tobool32 = icmp ne i8* %59, null
  br i1 %tobool32, label %if.then.33, label %if.end.40

if.then.33:                                       ; preds = %if.end
  %60 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory34 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %60, i32 0, i32 3
  %61 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory34, align 8, !tbaa !9
  %non_gc_memory35 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %61, i32 0, i32 3
  %62 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory35, align 8, !tbaa !25
  %procs36 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %62, i32 0, i32 1
  %free_object37 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs36, i32 0, i32 2
  %63 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object37, align 8, !tbaa !30
  %64 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory38 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %64, i32 0, i32 3
  %65 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory38, align 8, !tbaa !9
  %non_gc_memory39 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %65, i32 0, i32 3
  %66 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory39, align 8, !tbaa !25
  %67 = load i8*, i8** %in, align 8, !tbaa !1
  call void %63(%struct.gs_memory_s* %66, i8* %67, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i32 0, i32 0)) #5
  br label %if.end.40

if.end.40:                                        ; preds = %if.then.33, %if.end
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.365

if.end.41:                                        ; preds = %lor.lhs.false
  %68 = load i8*, i8** %init_string.addr, align 8, !tbaa !1
  %69 = load i32, i32* %init_len.addr, align 4, !tbaa !5
  %sub = sub nsw i32 %69, 1
  %conv42 = sext i32 %sub to i64
  %70 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call43 = call i64 @fwrite(i8* %68, i64 %conv42, i64 1, %struct._IO_FILE* %70) #5
  %71 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %width44 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %71, i32 0, i32 13
  %72 = load i32, i32* %width44, align 4, !tbaa !29
  %conv45 = sitofp i32 %72 to float
  %73 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %HWResolution46 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %73, i32 0, i32 22
  %arrayidx47 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution46, i32 0, i64 0
  %74 = load float, float* %arrayidx47, align 4, !tbaa !7
  %div48 = fdiv float %conv45, %74
  %mul49 = fmul float %div48, 1.000000e+01
  %conv50 = fptosi float %mul49 to i32
  %add51 = add nsw i32 %conv50, 2
  %75 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call52 = call i32 @fputc(i32 %add51, %struct._IO_FILE* %75) #5
  br label %while.cond

while.cond:                                       ; preds = %cleanup.cont, %cleanup, %if.end.41
  %76 = load i32, i32* %lnum, align 4, !tbaa !5
  %77 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %77, i32 0, i32 14
  %78 = load i32, i32* %height, align 4, !tbaa !31
  %cmp53 = icmp slt i32 %76, %78
  br i1 %cmp53, label %while.body, label %while.end.350

while.body:                                       ; preds = %while.cond
  %79 = bitcast i8** %inp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %79) #2
  %80 = bitcast i8** %in_end to i8*
  call void @llvm.lifetime.start(i64 8, i8* %80) #2
  %81 = bitcast i8** %out_end to i8*
  call void @llvm.lifetime.start(i64 8, i8* %81) #2
  %82 = bitcast i8** %out_blk to i8*
  call void @llvm.lifetime.start(i64 8, i8* %82) #2
  %83 = bitcast i8** %outp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %83) #2
  %84 = bitcast i32* %lcnt to i8*
  call void @llvm.lifetime.start(i64 4, i8* %84) #2
  %85 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %86 = load i32, i32* %lnum, align 4, !tbaa !5
  %87 = load i8*, i8** %in, align 8, !tbaa !1
  %88 = load i32, i32* %line_size, align 4, !tbaa !5
  %call55 = call i32 @gdev_prn_copy_scan_lines(%struct.gx_device_printer_s* %85, i32 %86, i8* %87, i32 %88) #5
  %89 = load i8*, i8** %in, align 8, !tbaa !1
  %arrayidx56 = getelementptr inbounds i8, i8* %89, i64 0
  %90 = load i8, i8* %arrayidx56, align 1, !tbaa !32
  %conv57 = zext i8 %90 to i32
  %cmp58 = icmp eq i32 %conv57, 0
  br i1 %cmp58, label %land.lhs.true, label %if.end.67

land.lhs.true:                                    ; preds = %while.body
  %91 = load i8*, i8** %in, align 8, !tbaa !1
  %92 = load i8*, i8** %in, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %92, i64 1
  %93 = load i32, i32* %line_size, align 4, !tbaa !5
  %sub60 = sub i32 %93, 1
  %conv61 = zext i32 %sub60 to i64
  %call62 = call i32 @memcmp(i8* %91, i8* %add.ptr, i64 %conv61) #6
  %tobool63 = icmp ne i32 %call62, 0
  br i1 %tobool63, label %if.end.67, label %if.then.64

if.then.64:                                       ; preds = %land.lhs.true
  %94 = load i32, i32* %lnum, align 4, !tbaa !5
  %inc = add nsw i32 %94, 1
  store i32 %inc, i32* %lnum, align 4, !tbaa !5
  %95 = load i32, i32* %y_high, align 4, !tbaa !5
  %sub65 = sub nsw i32 2, %95
  %96 = load i32, i32* %skip, align 4, !tbaa !5
  %add66 = add nsw i32 %96, %sub65
  store i32 %add66, i32* %skip, align 4, !tbaa !5
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup

if.end.67:                                        ; preds = %land.lhs.true, %while.body
  br label %while.cond.68

while.cond.68:                                    ; preds = %while.body.71, %if.end.67
  %97 = load i32, i32* %skip, align 4, !tbaa !5
  %shr = ashr i32 %97, 1
  %cmp69 = icmp sgt i32 %shr, 255
  br i1 %cmp69, label %while.body.71, label %while.end

while.body.71:                                    ; preds = %while.cond.68
  %98 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call72 = call i32 @fputs(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), %struct._IO_FILE* %98) #5
  %99 = load i32, i32* %skip, align 4, !tbaa !5
  %sub73 = sub nsw i32 %99, 510
  store i32 %sub73, i32* %skip, align 4, !tbaa !5
  br label %while.cond.68

while.end:                                        ; preds = %while.cond.68
  %100 = load i32, i32* %skip, align 4, !tbaa !5
  %tobool74 = icmp ne i32 %100, 0
  br i1 %tobool74, label %if.then.75, label %if.end.87

if.then.75:                                       ; preds = %while.end
  %101 = load i32, i32* %skip, align 4, !tbaa !5
  %shr76 = ashr i32 %101, 1
  %tobool77 = icmp ne i32 %shr76, 0
  br i1 %tobool77, label %if.then.78, label %if.end.81

if.then.78:                                       ; preds = %if.then.75
  %102 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %103 = load i32, i32* %skip, align 4, !tbaa !5
  %shr79 = ashr i32 %103, 1
  %call80 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %102, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i32 %shr79) #5
  br label %if.end.81

if.end.81:                                        ; preds = %if.then.78, %if.then.75
  %104 = load i32, i32* %skip, align 4, !tbaa !5
  %and82 = and i32 %104, 1
  %tobool83 = icmp ne i32 %and82, 0
  br i1 %tobool83, label %if.then.84, label %if.end.86

if.then.84:                                       ; preds = %if.end.81
  %105 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call85 = call i32 @fputc(i32 10, %struct._IO_FILE* %105) #5
  br label %if.end.86

if.end.86:                                        ; preds = %if.then.84, %if.end.81
  br label %if.end.87

if.end.87:                                        ; preds = %if.end.86, %while.end
  %106 = load i32, i32* %y_high, align 4, !tbaa !5
  %tobool88 = icmp ne i32 %106, 0
  br i1 %tobool88, label %if.then.89, label %if.else

if.then.89:                                       ; preds = %if.end.87
  %107 = load i8*, i8** %in, align 8, !tbaa !1
  %108 = load i32, i32* %line_size, align 4, !tbaa !5
  %idx.ext = zext i32 %108 to i64
  %add.ptr90 = getelementptr inbounds i8, i8* %107, i64 %idx.ext
  store i8* %add.ptr90, i8** %inp, align 8, !tbaa !1
  store i32 1, i32* %lcnt, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.89
  %109 = load i32, i32* %lcnt, align 4, !tbaa !5
  %cmp91 = icmp slt i32 %109, 24
  br i1 %cmp91, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %110 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %111 = load i32, i32* %lnum, align 4, !tbaa !5
  %112 = load i32, i32* %lcnt, align 4, !tbaa !5
  %mul93 = mul nsw i32 %112, 2
  %add94 = add nsw i32 %111, %mul93
  %113 = load i8*, i8** %inp, align 8, !tbaa !1
  %114 = load i32, i32* %line_size, align 4, !tbaa !5
  %call95 = call i32 @gdev_prn_copy_scan_lines(%struct.gx_device_printer_s* %110, i32 %add94, i8* %113, i32 %114) #5
  %tobool96 = icmp ne i32 %call95, 0
  br i1 %tobool96, label %if.end.102, label %if.then.97

if.then.97:                                       ; preds = %for.body
  %115 = load i8*, i8** %inp, align 8, !tbaa !1
  %116 = load i32, i32* %lcnt, align 4, !tbaa !5
  %sub98 = sub nsw i32 24, %116
  %117 = load i32, i32* %line_size, align 4, !tbaa !5
  %mul99 = mul i32 %sub98, %117
  %conv100 = zext i32 %mul99 to i64
  %call101 = call i8* @memset(i8* %115, i32 0, i64 %conv100) #7
  br label %for.end

if.end.102:                                       ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.102
  %118 = load i32, i32* %lcnt, align 4, !tbaa !5
  %inc103 = add nsw i32 %118, 1
  store i32 %inc103, i32* %lcnt, align 4, !tbaa !5
  %119 = load i32, i32* %line_size, align 4, !tbaa !5
  %120 = load i8*, i8** %inp, align 8, !tbaa !1
  %idx.ext104 = zext i32 %119 to i64
  %add.ptr105 = getelementptr inbounds i8, i8* %120, i64 %idx.ext104
  store i8* %add.ptr105, i8** %inp, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %if.then.97, %for.cond
  %121 = load i8*, i8** %in, align 8, !tbaa !1
  %122 = load i32, i32* %line_size, align 4, !tbaa !5
  %mul106 = mul i32 %122, 24
  %idx.ext107 = zext i32 %mul106 to i64
  %add.ptr108 = getelementptr inbounds i8, i8* %121, i64 %idx.ext107
  store i8* %add.ptr108, i8** %inp, align 8, !tbaa !1
  store i32 0, i32* %lcnt, align 4, !tbaa !5
  br label %for.cond.109

for.cond.109:                                     ; preds = %for.inc.124, %for.end
  %123 = load i32, i32* %lcnt, align 4, !tbaa !5
  %cmp110 = icmp slt i32 %123, 24
  br i1 %cmp110, label %for.body.112, label %for.end.128

for.body.112:                                     ; preds = %for.cond.109
  %124 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %125 = load i32, i32* %lnum, align 4, !tbaa !5
  %126 = load i32, i32* %lcnt, align 4, !tbaa !5
  %mul113 = mul nsw i32 %126, 2
  %add114 = add nsw i32 %125, %mul113
  %add115 = add nsw i32 %add114, 1
  %127 = load i8*, i8** %inp, align 8, !tbaa !1
  %128 = load i32, i32* %line_size, align 4, !tbaa !5
  %call116 = call i32 @gdev_prn_copy_scan_lines(%struct.gx_device_printer_s* %124, i32 %add115, i8* %127, i32 %128) #5
  %tobool117 = icmp ne i32 %call116, 0
  br i1 %tobool117, label %if.end.123, label %if.then.118

if.then.118:                                      ; preds = %for.body.112
  %129 = load i8*, i8** %inp, align 8, !tbaa !1
  %130 = load i32, i32* %lcnt, align 4, !tbaa !5
  %sub119 = sub nsw i32 24, %130
  %131 = load i32, i32* %line_size, align 4, !tbaa !5
  %mul120 = mul i32 %sub119, %131
  %conv121 = zext i32 %mul120 to i64
  %call122 = call i8* @memset(i8* %129, i32 0, i64 %conv121) #7
  br label %for.end.128

if.end.123:                                       ; preds = %for.body.112
  br label %for.inc.124

for.inc.124:                                      ; preds = %if.end.123
  %132 = load i32, i32* %lcnt, align 4, !tbaa !5
  %inc125 = add nsw i32 %132, 1
  store i32 %inc125, i32* %lcnt, align 4, !tbaa !5
  %133 = load i32, i32* %line_size, align 4, !tbaa !5
  %134 = load i8*, i8** %inp, align 8, !tbaa !1
  %idx.ext126 = zext i32 %133 to i64
  %add.ptr127 = getelementptr inbounds i8, i8* %134, i64 %idx.ext126
  store i8* %add.ptr127, i8** %inp, align 8, !tbaa !1
  br label %for.cond.109

for.end.128:                                      ; preds = %if.then.118, %for.cond.109
  br label %if.end.146

if.else:                                          ; preds = %if.end.87
  %135 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %136 = load i32, i32* %lnum, align 4, !tbaa !5
  %add129 = add nsw i32 %136, 1
  %137 = load i8*, i8** %in, align 8, !tbaa !1
  %138 = load i32, i32* %line_size, align 4, !tbaa !5
  %idx.ext130 = zext i32 %138 to i64
  %add.ptr131 = getelementptr inbounds i8, i8* %137, i64 %idx.ext130
  %139 = load i32, i32* %in_size, align 4, !tbaa !5
  %140 = load i32, i32* %line_size, align 4, !tbaa !5
  %sub132 = sub i32 %139, %140
  %call133 = call i32 @gdev_prn_copy_scan_lines(%struct.gx_device_printer_s* %135, i32 %add129, i8* %add.ptr131, i32 %sub132) #5
  %add134 = add nsw i32 1, %call133
  store i32 %add134, i32* %lcnt, align 4, !tbaa !5
  %141 = load i32, i32* %lcnt, align 4, !tbaa !5
  %cmp135 = icmp slt i32 %141, 24
  br i1 %cmp135, label %if.then.137, label %if.end.145

if.then.137:                                      ; preds = %if.else
  %142 = load i8*, i8** %in, align 8, !tbaa !1
  %143 = load i32, i32* %lcnt, align 4, !tbaa !5
  %144 = load i32, i32* %line_size, align 4, !tbaa !5
  %mul138 = mul i32 %143, %144
  %idx.ext139 = zext i32 %mul138 to i64
  %add.ptr140 = getelementptr inbounds i8, i8* %142, i64 %idx.ext139
  %145 = load i32, i32* %in_size, align 4, !tbaa !5
  %146 = load i32, i32* %lcnt, align 4, !tbaa !5
  %147 = load i32, i32* %line_size, align 4, !tbaa !5
  %mul141 = mul i32 %146, %147
  %sub142 = sub i32 %145, %mul141
  %conv143 = zext i32 %sub142 to i64
  %call144 = call i8* @memset(i8* %add.ptr140, i32 0, i64 %conv143) #7
  br label %if.end.145

if.end.145:                                       ; preds = %if.then.137, %if.else
  br label %if.end.146

if.end.146:                                       ; preds = %if.end.145, %for.end.128
  store i32 0, i32* %ypass, align 4, !tbaa !5
  br label %for.cond.147

for.cond.147:                                     ; preds = %for.inc.340, %if.end.146
  %148 = load i32, i32* %ypass, align 4, !tbaa !5
  %149 = load i32, i32* %y_passes, align 4, !tbaa !5
  %cmp148 = icmp slt i32 %148, %149
  br i1 %cmp148, label %for.body.150, label %for.end.342

for.body.150:                                     ; preds = %for.cond.147
  %150 = load i8*, i8** %out, align 8, !tbaa !1
  store i8* %150, i8** %out_end, align 8, !tbaa !1
  %151 = load i8*, i8** %in, align 8, !tbaa !1
  store i8* %151, i8** %inp, align 8, !tbaa !1
  %152 = load i32, i32* %ypass, align 4, !tbaa !5
  %tobool151 = icmp ne i32 %152, 0
  br i1 %tobool151, label %if.then.152, label %if.end.156

if.then.152:                                      ; preds = %for.body.150
  %153 = load i32, i32* %line_size, align 4, !tbaa !5
  %mul153 = mul i32 %153, 24
  %154 = load i8*, i8** %inp, align 8, !tbaa !1
  %idx.ext154 = zext i32 %mul153 to i64
  %add.ptr155 = getelementptr inbounds i8, i8* %154, i64 %idx.ext154
  store i8* %add.ptr155, i8** %inp, align 8, !tbaa !1
  br label %if.end.156

if.end.156:                                       ; preds = %if.then.152, %for.body.150
  %155 = load i8*, i8** %inp, align 8, !tbaa !1
  %156 = load i32, i32* %line_size, align 4, !tbaa !5
  %idx.ext157 = zext i32 %156 to i64
  %add.ptr158 = getelementptr inbounds i8, i8* %155, i64 %idx.ext157
  store i8* %add.ptr158, i8** %in_end, align 8, !tbaa !1
  br label %for.cond.159

for.cond.159:                                     ; preds = %for.inc.171, %if.end.156
  %157 = load i8*, i8** %inp, align 8, !tbaa !1
  %158 = load i8*, i8** %in_end, align 8, !tbaa !1
  %cmp160 = icmp ult i8* %157, %158
  br i1 %cmp160, label %for.body.162, label %for.end.173

for.body.162:                                     ; preds = %for.cond.159
  %159 = load i8*, i8** %inp, align 8, !tbaa !1
  %160 = load i32, i32* %line_size, align 4, !tbaa !5
  %161 = load i8*, i8** %out_end, align 8, !tbaa !1
  call void @memflip8x8(i8* %159, i32 %160, i8* %161, i32 3) #5
  %162 = load i8*, i8** %inp, align 8, !tbaa !1
  %163 = load i32, i32* %line_size, align 4, !tbaa !5
  %mul163 = mul i32 %163, 8
  %idx.ext164 = zext i32 %mul163 to i64
  %add.ptr165 = getelementptr inbounds i8, i8* %162, i64 %idx.ext164
  %164 = load i32, i32* %line_size, align 4, !tbaa !5
  %165 = load i8*, i8** %out_end, align 8, !tbaa !1
  %add.ptr166 = getelementptr inbounds i8, i8* %165, i64 1
  call void @memflip8x8(i8* %add.ptr165, i32 %164, i8* %add.ptr166, i32 3) #5
  %166 = load i8*, i8** %inp, align 8, !tbaa !1
  %167 = load i32, i32* %line_size, align 4, !tbaa !5
  %mul167 = mul i32 %167, 16
  %idx.ext168 = zext i32 %mul167 to i64
  %add.ptr169 = getelementptr inbounds i8, i8* %166, i64 %idx.ext168
  %168 = load i32, i32* %line_size, align 4, !tbaa !5
  %169 = load i8*, i8** %out_end, align 8, !tbaa !1
  %add.ptr170 = getelementptr inbounds i8, i8* %169, i64 2
  call void @memflip8x8(i8* %add.ptr169, i32 %168, i8* %add.ptr170, i32 3) #5
  br label %for.inc.171

for.inc.171:                                      ; preds = %for.body.162
  %170 = load i8*, i8** %inp, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %170, i32 1
  store i8* %incdec.ptr, i8** %inp, align 8, !tbaa !1
  %171 = load i8*, i8** %out_end, align 8, !tbaa !1
  %add.ptr172 = getelementptr inbounds i8, i8* %171, i64 24
  store i8* %add.ptr172, i8** %out_end, align 8, !tbaa !1
  br label %for.cond.159

for.end.173:                                      ; preds = %for.cond.159
  br label %while.cond.174

while.cond.174:                                   ; preds = %while.body.192, %for.end.173
  %172 = load i8*, i8** %out_end, align 8, !tbaa !1
  %add.ptr175 = getelementptr inbounds i8, i8* %172, i64 -3
  %173 = load i8*, i8** %out, align 8, !tbaa !1
  %cmp176 = icmp uge i8* %add.ptr175, %173
  br i1 %cmp176, label %land.lhs.true.178, label %land.end

land.lhs.true.178:                                ; preds = %while.cond.174
  %174 = load i8*, i8** %out_end, align 8, !tbaa !1
  %arrayidx179 = getelementptr inbounds i8, i8* %174, i64 -1
  %175 = load i8, i8* %arrayidx179, align 1, !tbaa !32
  %conv180 = zext i8 %175 to i32
  %cmp181 = icmp eq i32 %conv180, 0
  br i1 %cmp181, label %land.lhs.true.183, label %land.end

land.lhs.true.183:                                ; preds = %land.lhs.true.178
  %176 = load i8*, i8** %out_end, align 8, !tbaa !1
  %arrayidx184 = getelementptr inbounds i8, i8* %176, i64 -2
  %177 = load i8, i8* %arrayidx184, align 1, !tbaa !32
  %conv185 = zext i8 %177 to i32
  %cmp186 = icmp eq i32 %conv185, 0
  br i1 %cmp186, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true.183
  %178 = load i8*, i8** %out_end, align 8, !tbaa !1
  %arrayidx188 = getelementptr inbounds i8, i8* %178, i64 -3
  %179 = load i8, i8* %arrayidx188, align 1, !tbaa !32
  %conv189 = zext i8 %179 to i32
  %cmp190 = icmp eq i32 %conv189, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.183, %land.lhs.true.178, %while.cond.174
  %180 = phi i1 [ false, %land.lhs.true.183 ], [ false, %land.lhs.true.178 ], [ false, %while.cond.174 ], [ %cmp190, %land.rhs ]
  br i1 %180, label %while.body.192, label %while.end.194

while.body.192:                                   ; preds = %land.end
  %181 = load i8*, i8** %out_end, align 8, !tbaa !1
  %add.ptr193 = getelementptr inbounds i8, i8* %181, i64 -3
  store i8* %add.ptr193, i8** %out_end, align 8, !tbaa !1
  br label %while.cond.174

while.end.194:                                    ; preds = %land.end
  %182 = load i8*, i8** %out, align 8, !tbaa !1
  store i8* %182, i8** %outp, align 8, !tbaa !1
  store i8* %182, i8** %out_blk, align 8, !tbaa !1
  br label %for.cond.195

for.cond.195:                                     ; preds = %if.end.316, %while.end.194
  %183 = load i8*, i8** %outp, align 8, !tbaa !1
  %184 = load i8*, i8** %out_end, align 8, !tbaa !1
  %cmp196 = icmp ult i8* %183, %184
  br i1 %cmp196, label %for.body.198, label %for.end.317

for.body.198:                                     ; preds = %for.cond.195
  %185 = load i8*, i8** %outp, align 8, !tbaa !1
  %arrayidx199 = getelementptr inbounds i8, i8* %185, i64 0
  %186 = load i8, i8* %arrayidx199, align 1, !tbaa !32
  %conv200 = zext i8 %186 to i32
  %cmp201 = icmp eq i32 %conv200, 0
  br i1 %cmp201, label %land.lhs.true.203, label %if.else.314

land.lhs.true.203:                                ; preds = %for.body.198
  %187 = load i8*, i8** %outp, align 8, !tbaa !1
  %add.ptr204 = getelementptr inbounds i8, i8* %187, i64 12
  %188 = load i8*, i8** %out_end, align 8, !tbaa !1
  %cmp205 = icmp ule i8* %add.ptr204, %188
  br i1 %cmp205, label %land.lhs.true.207, label %if.else.314

land.lhs.true.207:                                ; preds = %land.lhs.true.203
  %189 = load i8*, i8** %outp, align 8, !tbaa !1
  %arrayidx208 = getelementptr inbounds i8, i8* %189, i64 1
  %190 = load i8, i8* %arrayidx208, align 1, !tbaa !32
  %conv209 = zext i8 %190 to i32
  %cmp210 = icmp eq i32 %conv209, 0
  br i1 %cmp210, label %land.lhs.true.212, label %if.else.314

land.lhs.true.212:                                ; preds = %land.lhs.true.207
  %191 = load i8*, i8** %outp, align 8, !tbaa !1
  %arrayidx213 = getelementptr inbounds i8, i8* %191, i64 2
  %192 = load i8, i8* %arrayidx213, align 1, !tbaa !32
  %conv214 = zext i8 %192 to i32
  %cmp215 = icmp eq i32 %conv214, 0
  br i1 %cmp215, label %land.lhs.true.217, label %if.else.314

land.lhs.true.217:                                ; preds = %land.lhs.true.212
  %193 = load i8*, i8** %outp, align 8, !tbaa !1
  %arrayidx218 = getelementptr inbounds i8, i8* %193, i64 3
  %194 = load i8, i8* %arrayidx218, align 1, !tbaa !32
  %conv219 = zext i8 %194 to i32
  %cmp220 = icmp eq i32 %conv219, 0
  br i1 %cmp220, label %land.lhs.true.222, label %if.else.314

land.lhs.true.222:                                ; preds = %land.lhs.true.217
  %195 = load i8*, i8** %outp, align 8, !tbaa !1
  %arrayidx223 = getelementptr inbounds i8, i8* %195, i64 4
  %196 = load i8, i8* %arrayidx223, align 1, !tbaa !32
  %conv224 = zext i8 %196 to i32
  %cmp225 = icmp eq i32 %conv224, 0
  br i1 %cmp225, label %land.lhs.true.227, label %if.else.314

land.lhs.true.227:                                ; preds = %land.lhs.true.222
  %197 = load i8*, i8** %outp, align 8, !tbaa !1
  %arrayidx228 = getelementptr inbounds i8, i8* %197, i64 5
  %198 = load i8, i8* %arrayidx228, align 1, !tbaa !32
  %conv229 = zext i8 %198 to i32
  %cmp230 = icmp eq i32 %conv229, 0
  br i1 %cmp230, label %land.lhs.true.232, label %if.else.314

land.lhs.true.232:                                ; preds = %land.lhs.true.227
  %199 = load i8*, i8** %outp, align 8, !tbaa !1
  %arrayidx233 = getelementptr inbounds i8, i8* %199, i64 6
  %200 = load i8, i8* %arrayidx233, align 1, !tbaa !32
  %conv234 = zext i8 %200 to i32
  %cmp235 = icmp eq i32 %conv234, 0
  br i1 %cmp235, label %land.lhs.true.237, label %if.else.314

land.lhs.true.237:                                ; preds = %land.lhs.true.232
  %201 = load i8*, i8** %outp, align 8, !tbaa !1
  %arrayidx238 = getelementptr inbounds i8, i8* %201, i64 7
  %202 = load i8, i8* %arrayidx238, align 1, !tbaa !32
  %conv239 = zext i8 %202 to i32
  %cmp240 = icmp eq i32 %conv239, 0
  br i1 %cmp240, label %land.lhs.true.242, label %if.else.314

land.lhs.true.242:                                ; preds = %land.lhs.true.237
  %203 = load i8*, i8** %outp, align 8, !tbaa !1
  %arrayidx243 = getelementptr inbounds i8, i8* %203, i64 8
  %204 = load i8, i8* %arrayidx243, align 1, !tbaa !32
  %conv244 = zext i8 %204 to i32
  %cmp245 = icmp eq i32 %conv244, 0
  br i1 %cmp245, label %land.lhs.true.247, label %if.else.314

land.lhs.true.247:                                ; preds = %land.lhs.true.242
  %205 = load i8*, i8** %outp, align 8, !tbaa !1
  %arrayidx248 = getelementptr inbounds i8, i8* %205, i64 9
  %206 = load i8, i8* %arrayidx248, align 1, !tbaa !32
  %conv249 = zext i8 %206 to i32
  %cmp250 = icmp eq i32 %conv249, 0
  br i1 %cmp250, label %land.lhs.true.252, label %if.else.314

land.lhs.true.252:                                ; preds = %land.lhs.true.247
  %207 = load i8*, i8** %outp, align 8, !tbaa !1
  %arrayidx253 = getelementptr inbounds i8, i8* %207, i64 10
  %208 = load i8, i8* %arrayidx253, align 1, !tbaa !32
  %conv254 = zext i8 %208 to i32
  %cmp255 = icmp eq i32 %conv254, 0
  br i1 %cmp255, label %land.lhs.true.257, label %if.else.314

land.lhs.true.257:                                ; preds = %land.lhs.true.252
  %209 = load i8*, i8** %outp, align 8, !tbaa !1
  %arrayidx258 = getelementptr inbounds i8, i8* %209, i64 11
  %210 = load i8, i8* %arrayidx258, align 1, !tbaa !32
  %conv259 = zext i8 %210 to i32
  %cmp260 = icmp eq i32 %conv259, 0
  br i1 %cmp260, label %if.then.262, label %if.else.314

if.then.262:                                      ; preds = %land.lhs.true.257
  %211 = bitcast i8** %zp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %211) #2
  %212 = load i8*, i8** %outp, align 8, !tbaa !1
  store i8* %212, i8** %zp, align 8, !tbaa !1
  %213 = bitcast i32* %tpos to i8*
  call void @llvm.lifetime.start(i64 4, i8* %213) #2
  %214 = bitcast i8** %newp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %214) #2
  %215 = load i8*, i8** %outp, align 8, !tbaa !1
  %add.ptr263 = getelementptr inbounds i8, i8* %215, i64 12
  store i8* %add.ptr263, i8** %outp, align 8, !tbaa !1
  br label %while.cond.264

while.cond.264:                                   ; preds = %while.body.284, %if.then.262
  %216 = load i8*, i8** %outp, align 8, !tbaa !1
  %add.ptr265 = getelementptr inbounds i8, i8* %216, i64 3
  %217 = load i8*, i8** %out_end, align 8, !tbaa !1
  %cmp266 = icmp ule i8* %add.ptr265, %217
  br i1 %cmp266, label %land.lhs.true.268, label %land.end.283

land.lhs.true.268:                                ; preds = %while.cond.264
  %218 = load i8*, i8** %outp, align 8, !tbaa !1
  %arrayidx269 = getelementptr inbounds i8, i8* %218, i64 0
  %219 = load i8, i8* %arrayidx269, align 1, !tbaa !32
  %conv270 = zext i8 %219 to i32
  %cmp271 = icmp eq i32 %conv270, 0
  br i1 %cmp271, label %land.lhs.true.273, label %land.end.283

land.lhs.true.273:                                ; preds = %land.lhs.true.268
  %220 = load i8*, i8** %outp, align 8, !tbaa !1
  %arrayidx274 = getelementptr inbounds i8, i8* %220, i64 1
  %221 = load i8, i8* %arrayidx274, align 1, !tbaa !32
  %conv275 = zext i8 %221 to i32
  %cmp276 = icmp eq i32 %conv275, 0
  br i1 %cmp276, label %land.rhs.278, label %land.end.283

land.rhs.278:                                     ; preds = %land.lhs.true.273
  %222 = load i8*, i8** %outp, align 8, !tbaa !1
  %arrayidx279 = getelementptr inbounds i8, i8* %222, i64 2
  %223 = load i8, i8* %arrayidx279, align 1, !tbaa !32
  %conv280 = zext i8 %223 to i32
  %cmp281 = icmp eq i32 %conv280, 0
  br label %land.end.283

land.end.283:                                     ; preds = %land.rhs.278, %land.lhs.true.273, %land.lhs.true.268, %while.cond.264
  %224 = phi i1 [ false, %land.lhs.true.273 ], [ false, %land.lhs.true.268 ], [ false, %while.cond.264 ], [ %cmp281, %land.rhs.278 ]
  br i1 %224, label %while.body.284, label %while.end.286

while.body.284:                                   ; preds = %land.end.283
  %225 = load i8*, i8** %outp, align 8, !tbaa !1
  %add.ptr285 = getelementptr inbounds i8, i8* %225, i64 3
  store i8* %add.ptr285, i8** %outp, align 8, !tbaa !1
  br label %while.cond.264

while.end.286:                                    ; preds = %land.end.283
  %226 = load i8*, i8** %outp, align 8, !tbaa !1
  %227 = load i8*, i8** %out, align 8, !tbaa !1
  %sub.ptr.lhs.cast = ptrtoint i8* %226 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %227 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %228 = load i32, i32* %bytes_per_space, align 4, !tbaa !5
  %conv287 = sext i32 %228 to i64
  %div288 = sdiv i64 %sub.ptr.sub, %conv287
  %conv289 = trunc i64 %div288 to i32
  store i32 %conv289, i32* %tpos, align 4, !tbaa !5
  %229 = load i8*, i8** %out, align 8, !tbaa !1
  %230 = load i32, i32* %tpos, align 4, !tbaa !5
  %231 = load i32, i32* %bytes_per_space, align 4, !tbaa !5
  %mul290 = mul nsw i32 %230, %231
  %idx.ext291 = sext i32 %mul290 to i64
  %add.ptr292 = getelementptr inbounds i8, i8* %229, i64 %idx.ext291
  store i8* %add.ptr292, i8** %newp, align 8, !tbaa !1
  %232 = load i8*, i8** %newp, align 8, !tbaa !1
  %233 = load i8*, i8** %zp, align 8, !tbaa !1
  %add.ptr293 = getelementptr inbounds i8, i8* %233, i64 10
  %cmp294 = icmp ugt i8* %232, %add.ptr293
  br i1 %cmp294, label %if.then.296, label %if.end.313

if.then.296:                                      ; preds = %while.end.286
  %234 = load i8*, i8** %zp, align 8, !tbaa !1
  %235 = load i8*, i8** %out_blk, align 8, !tbaa !1
  %cmp297 = icmp ugt i8* %234, %235
  br i1 %cmp297, label %if.then.299, label %if.end.311

if.then.299:                                      ; preds = %if.then.296
  %236 = load i32, i32* %x_high, align 4, !tbaa !5
  %tobool300 = icmp ne i32 %236, 0
  br i1 %tobool300, label %if.then.301, label %if.end.306

if.then.301:                                      ; preds = %if.then.299
  %237 = load i8*, i8** %out_blk, align 8, !tbaa !1
  %238 = load i8*, i8** %zp, align 8, !tbaa !1
  %239 = load i8*, i8** %out_blk, align 8, !tbaa !1
  %sub.ptr.lhs.cast302 = ptrtoint i8* %238 to i64
  %sub.ptr.rhs.cast303 = ptrtoint i8* %239 to i64
  %sub.ptr.sub304 = sub i64 %sub.ptr.lhs.cast302, %sub.ptr.rhs.cast303
  %conv305 = trunc i64 %sub.ptr.sub304 to i32
  call void @dot24_improve_bitmap(i8* %237, i32 %conv305) #5
  br label %if.end.306

if.end.306:                                       ; preds = %if.then.301, %if.then.299
  %240 = load i8*, i8** %out_blk, align 8, !tbaa !1
  %241 = load i8*, i8** %zp, align 8, !tbaa !1
  %242 = load i8*, i8** %out_blk, align 8, !tbaa !1
  %sub.ptr.lhs.cast307 = ptrtoint i8* %241 to i64
  %sub.ptr.rhs.cast308 = ptrtoint i8* %242 to i64
  %sub.ptr.sub309 = sub i64 %sub.ptr.lhs.cast307, %sub.ptr.rhs.cast308
  %conv310 = trunc i64 %sub.ptr.sub309 to i32
  %243 = load i32, i32* %x_high, align 4, !tbaa !5
  %244 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  call void @dot24_output_run(i8* %240, i32 %conv310, i32 %243, %struct._IO_FILE* %244) #5
  br label %if.end.311

if.end.311:                                       ; preds = %if.end.306, %if.then.296
  %245 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %246 = load i32, i32* %tpos, align 4, !tbaa !5
  %call312 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %245, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i32 0), i32 %246, i32 0) #5
  %247 = load i8*, i8** %newp, align 8, !tbaa !1
  store i8* %247, i8** %outp, align 8, !tbaa !1
  store i8* %247, i8** %out_blk, align 8, !tbaa !1
  br label %if.end.313

if.end.313:                                       ; preds = %if.end.311, %while.end.286
  %248 = bitcast i8** %newp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %248) #2
  %249 = bitcast i32* %tpos to i8*
  call void @llvm.lifetime.end(i64 4, i8* %249) #2
  %250 = bitcast i8** %zp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %250) #2
  br label %if.end.316

if.else.314:                                      ; preds = %land.lhs.true.257, %land.lhs.true.252, %land.lhs.true.247, %land.lhs.true.242, %land.lhs.true.237, %land.lhs.true.232, %land.lhs.true.227, %land.lhs.true.222, %land.lhs.true.217, %land.lhs.true.212, %land.lhs.true.207, %land.lhs.true.203, %for.body.198
  %251 = load i8*, i8** %outp, align 8, !tbaa !1
  %add.ptr315 = getelementptr inbounds i8, i8* %251, i64 3
  store i8* %add.ptr315, i8** %outp, align 8, !tbaa !1
  br label %if.end.316

if.end.316:                                       ; preds = %if.else.314, %if.end.313
  br label %for.cond.195

for.end.317:                                      ; preds = %for.cond.195
  %252 = load i8*, i8** %outp, align 8, !tbaa !1
  %253 = load i8*, i8** %out_blk, align 8, !tbaa !1
  %cmp318 = icmp ugt i8* %252, %253
  br i1 %cmp318, label %if.then.320, label %if.end.332

if.then.320:                                      ; preds = %for.end.317
  %254 = load i32, i32* %x_high, align 4, !tbaa !5
  %tobool321 = icmp ne i32 %254, 0
  br i1 %tobool321, label %if.then.322, label %if.end.327

if.then.322:                                      ; preds = %if.then.320
  %255 = load i8*, i8** %out_blk, align 8, !tbaa !1
  %256 = load i8*, i8** %outp, align 8, !tbaa !1
  %257 = load i8*, i8** %out_blk, align 8, !tbaa !1
  %sub.ptr.lhs.cast323 = ptrtoint i8* %256 to i64
  %sub.ptr.rhs.cast324 = ptrtoint i8* %257 to i64
  %sub.ptr.sub325 = sub i64 %sub.ptr.lhs.cast323, %sub.ptr.rhs.cast324
  %conv326 = trunc i64 %sub.ptr.sub325 to i32
  call void @dot24_improve_bitmap(i8* %255, i32 %conv326) #5
  br label %if.end.327

if.end.327:                                       ; preds = %if.then.322, %if.then.320
  %258 = load i8*, i8** %out_blk, align 8, !tbaa !1
  %259 = load i8*, i8** %outp, align 8, !tbaa !1
  %260 = load i8*, i8** %out_blk, align 8, !tbaa !1
  %sub.ptr.lhs.cast328 = ptrtoint i8* %259 to i64
  %sub.ptr.rhs.cast329 = ptrtoint i8* %260 to i64
  %sub.ptr.sub330 = sub i64 %sub.ptr.lhs.cast328, %sub.ptr.rhs.cast329
  %conv331 = trunc i64 %sub.ptr.sub330 to i32
  %261 = load i32, i32* %x_high, align 4, !tbaa !5
  %262 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  call void @dot24_output_run(i8* %258, i32 %conv331, i32 %261, %struct._IO_FILE* %262) #5
  br label %if.end.332

if.end.332:                                       ; preds = %if.end.327, %for.end.317
  %263 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call333 = call i32 @fputc(i32 13, %struct._IO_FILE* %263) #5
  %264 = load i32, i32* %ypass, align 4, !tbaa !5
  %265 = load i32, i32* %y_passes, align 4, !tbaa !5
  %sub334 = sub nsw i32 %265, 1
  %cmp335 = icmp slt i32 %264, %sub334
  br i1 %cmp335, label %if.then.337, label %if.end.339

if.then.337:                                      ; preds = %if.end.332
  %266 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call338 = call i32 @fputc(i32 10, %struct._IO_FILE* %266) #5
  br label %if.end.339

if.end.339:                                       ; preds = %if.then.337, %if.end.332
  br label %for.inc.340

for.inc.340:                                      ; preds = %if.end.339
  %267 = load i32, i32* %ypass, align 4, !tbaa !5
  %inc341 = add nsw i32 %267, 1
  store i32 %inc341, i32* %ypass, align 4, !tbaa !5
  br label %for.cond.147

for.end.342:                                      ; preds = %for.cond.147
  %268 = load i32, i32* %y_high, align 4, !tbaa !5
  %sub343 = sub nsw i32 48, %268
  store i32 %sub343, i32* %skip, align 4, !tbaa !5
  %269 = load i32, i32* %bits_per_column, align 4, !tbaa !5
  %270 = load i32, i32* %lnum, align 4, !tbaa !5
  %add344 = add nsw i32 %270, %269
  store i32 %add344, i32* %lnum, align 4, !tbaa !5
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end.342, %if.then.64
  %271 = bitcast i32* %lcnt to i8*
  call void @llvm.lifetime.end(i64 4, i8* %271) #2
  %272 = bitcast i8** %outp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %272) #2
  %273 = bitcast i8** %out_blk to i8*
  call void @llvm.lifetime.end(i64 8, i8* %273) #2
  %274 = bitcast i8** %out_end to i8*
  call void @llvm.lifetime.end(i64 8, i8* %274) #2
  %275 = bitcast i8** %in_end to i8*
  call void @llvm.lifetime.end(i64 8, i8* %275) #2
  %276 = bitcast i8** %inp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %276) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 2, label %while.cond
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond

while.end.350:                                    ; preds = %while.cond
  %277 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call351 = call i32 @fputs(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0), %struct._IO_FILE* %277) #5
  %278 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call352 = call i32 @fflush(%struct._IO_FILE* %278) #5
  %279 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory353 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %279, i32 0, i32 3
  %280 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory353, align 8, !tbaa !9
  %non_gc_memory354 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %280, i32 0, i32 3
  %281 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory354, align 8, !tbaa !25
  %procs355 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %281, i32 0, i32 1
  %free_object356 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs355, i32 0, i32 2
  %282 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object356, align 8, !tbaa !30
  %283 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory357 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %283, i32 0, i32 3
  %284 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory357, align 8, !tbaa !9
  %non_gc_memory358 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %284, i32 0, i32 3
  %285 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory358, align 8, !tbaa !25
  %286 = load i8*, i8** %out, align 8, !tbaa !1
  call void %282(%struct.gs_memory_s* %285, i8* %286, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i32 0, i32 0)) #5
  %287 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory359 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %287, i32 0, i32 3
  %288 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory359, align 8, !tbaa !9
  %non_gc_memory360 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %288, i32 0, i32 3
  %289 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory360, align 8, !tbaa !25
  %procs361 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %289, i32 0, i32 1
  %free_object362 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs361, i32 0, i32 2
  %290 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object362, align 8, !tbaa !30
  %291 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory363 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %291, i32 0, i32 3
  %292 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory363, align 8, !tbaa !9
  %non_gc_memory364 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %292, i32 0, i32 3
  %293 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory364, align 8, !tbaa !25
  %294 = load i8*, i8** %in, align 8, !tbaa !1
  call void %290(%struct.gs_memory_s* %293, i8* %294, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i32 0, i32 0)) #5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.365

cleanup.365:                                      ; preds = %while.end.350, %if.end.40
  %295 = bitcast i32* %ypass to i8*
  call void @llvm.lifetime.end(i64 4, i8* %295) #2
  %296 = bitcast i32* %lnum to i8*
  call void @llvm.lifetime.end(i64 4, i8* %296) #2
  %297 = bitcast i32* %skip to i8*
  call void @llvm.lifetime.end(i64 4, i8* %297) #2
  %298 = bitcast i32* %bytes_per_space to i8*
  call void @llvm.lifetime.end(i64 4, i8* %298) #2
  %299 = bitcast i32* %dots_per_space to i8*
  call void @llvm.lifetime.end(i64 4, i8* %299) #2
  %300 = bitcast i32* %y_passes to i8*
  call void @llvm.lifetime.end(i64 4, i8* %300) #2
  %301 = bitcast i8** %out to i8*
  call void @llvm.lifetime.end(i64 8, i8* %301) #2
  %302 = bitcast i32* %out_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %302) #2
  %303 = bitcast i8** %in to i8*
  call void @llvm.lifetime.end(i64 8, i8* %303) #2
  %304 = bitcast i32* %in_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %304) #2
  %305 = bitcast i32* %line_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %305) #2
  %306 = bitcast i32* %bits_per_column to i8*
  call void @llvm.lifetime.end(i64 4, i8* %306) #2
  %307 = bitcast i32* %y_high to i8*
  call void @llvm.lifetime.end(i64 4, i8* %307) #2
  %308 = bitcast i32* %x_high to i8*
  call void @llvm.lifetime.end(i64 4, i8* %308) #2
  %309 = bitcast i32* %yres to i8*
  call void @llvm.lifetime.end(i64 4, i8* %309) #2
  %310 = bitcast i32* %xres to i8*
  call void @llvm.lifetime.end(i64 4, i8* %310) #2
  %311 = load i32, i32* %retval
  ret i32 %311

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

declare i32 @gx_device_raster(%struct.gx_device_s*, i32) #0

declare i64 @fwrite(i8*, i64, i64, %struct._IO_FILE*) #0

declare i32 @fputc(i32, %struct._IO_FILE*) #0

declare i32 @gdev_prn_copy_scan_lines(%struct.gx_device_printer_s*, i32, i8*, i32) #0

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8*, i8*, i64) #3

declare i32 @fputs(i8*, %struct._IO_FILE*) #0

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #0

; Function Attrs: nounwind
declare i8* @memset(i8*, i32, i64) #4

declare void @memflip8x8(i8*, i32, i8*, i32) #0

; Function Attrs: nounwind uwtable
define internal void @dot24_improve_bitmap(i8* %data, i32 %count) #1 {
entry:
  %data.addr = alloca i8*, align 8
  %count.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %p = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i32 %count, i32* %count.addr, align 4, !tbaa !5
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #2
  %2 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 6
  store i8* %add.ptr, i8** %p, align 8, !tbaa !1
  store i32 6, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %i, align 4, !tbaa !5
  %4 = load i32, i32* %count.addr, align 4, !tbaa !5
  %cmp = icmp slt i32 %3, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %5, i64 0
  %6 = load i8, i8* %arrayidx, align 1, !tbaa !32
  %conv = zext i8 %6 to i32
  %neg = xor i32 %conv, -1
  %7 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds i8, i8* %7, i64 -3
  %8 = load i8, i8* %arrayidx1, align 1, !tbaa !32
  %conv2 = zext i8 %8 to i32
  %and = and i32 %neg, %conv2
  %neg3 = xor i32 %and, -1
  %9 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx4 = getelementptr inbounds i8, i8* %9, i64 -6
  %10 = load i8, i8* %arrayidx4, align 1, !tbaa !32
  %conv5 = zext i8 %10 to i32
  %and6 = and i32 %conv5, %neg3
  %conv7 = trunc i32 %and6 to i8
  store i8 %conv7, i8* %arrayidx4, align 1, !tbaa !32
  %11 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx8 = getelementptr inbounds i8, i8* %11, i64 1
  %12 = load i8, i8* %arrayidx8, align 1, !tbaa !32
  %conv9 = zext i8 %12 to i32
  %neg10 = xor i32 %conv9, -1
  %13 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx11 = getelementptr inbounds i8, i8* %13, i64 -2
  %14 = load i8, i8* %arrayidx11, align 1, !tbaa !32
  %conv12 = zext i8 %14 to i32
  %and13 = and i32 %neg10, %conv12
  %neg14 = xor i32 %and13, -1
  %15 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx15 = getelementptr inbounds i8, i8* %15, i64 -5
  %16 = load i8, i8* %arrayidx15, align 1, !tbaa !32
  %conv16 = zext i8 %16 to i32
  %and17 = and i32 %conv16, %neg14
  %conv18 = trunc i32 %and17 to i8
  store i8 %conv18, i8* %arrayidx15, align 1, !tbaa !32
  %17 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx19 = getelementptr inbounds i8, i8* %17, i64 2
  %18 = load i8, i8* %arrayidx19, align 1, !tbaa !32
  %conv20 = zext i8 %18 to i32
  %neg21 = xor i32 %conv20, -1
  %19 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx22 = getelementptr inbounds i8, i8* %19, i64 -1
  %20 = load i8, i8* %arrayidx22, align 1, !tbaa !32
  %conv23 = zext i8 %20 to i32
  %and24 = and i32 %neg21, %conv23
  %neg25 = xor i32 %and24, -1
  %21 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx26 = getelementptr inbounds i8, i8* %21, i64 -4
  %22 = load i8, i8* %arrayidx26, align 1, !tbaa !32
  %conv27 = zext i8 %22 to i32
  %and28 = and i32 %conv27, %neg25
  %conv29 = trunc i32 %and28 to i8
  store i8 %conv29, i8* %arrayidx26, align 1, !tbaa !32
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %23 = load i32, i32* %i, align 4, !tbaa !5
  %add = add nsw i32 %23, 3
  store i32 %add, i32* %i, align 4, !tbaa !5
  %24 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr30 = getelementptr inbounds i8, i8* %24, i64 3
  store i8* %add.ptr30, i8** %p, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %25 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx31 = getelementptr inbounds i8, i8* %25, i64 -3
  %26 = load i8, i8* %arrayidx31, align 1, !tbaa !32
  %conv32 = zext i8 %26 to i32
  %neg33 = xor i32 %conv32, -1
  %27 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx34 = getelementptr inbounds i8, i8* %27, i64 -6
  %28 = load i8, i8* %arrayidx34, align 1, !tbaa !32
  %conv35 = zext i8 %28 to i32
  %and36 = and i32 %conv35, %neg33
  %conv37 = trunc i32 %and36 to i8
  store i8 %conv37, i8* %arrayidx34, align 1, !tbaa !32
  %29 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx38 = getelementptr inbounds i8, i8* %29, i64 -2
  %30 = load i8, i8* %arrayidx38, align 1, !tbaa !32
  %conv39 = zext i8 %30 to i32
  %neg40 = xor i32 %conv39, -1
  %31 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx41 = getelementptr inbounds i8, i8* %31, i64 -5
  %32 = load i8, i8* %arrayidx41, align 1, !tbaa !32
  %conv42 = zext i8 %32 to i32
  %and43 = and i32 %conv42, %neg40
  %conv44 = trunc i32 %and43 to i8
  store i8 %conv44, i8* %arrayidx41, align 1, !tbaa !32
  %33 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx45 = getelementptr inbounds i8, i8* %33, i64 -1
  %34 = load i8, i8* %arrayidx45, align 1, !tbaa !32
  %conv46 = zext i8 %34 to i32
  %neg47 = xor i32 %conv46, -1
  %35 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx48 = getelementptr inbounds i8, i8* %35, i64 -4
  %36 = load i8, i8* %arrayidx48, align 1, !tbaa !32
  %conv49 = zext i8 %36 to i32
  %and50 = and i32 %conv49, %neg47
  %conv51 = trunc i32 %and50 to i8
  store i8 %conv51, i8* %arrayidx48, align 1, !tbaa !32
  %37 = bitcast i8** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %37) #2
  %38 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %38) #2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @dot24_output_run(i8* %data, i32 %count, i32 %x_high, %struct._IO_FILE* %prn_stream) #1 {
entry:
  %data.addr = alloca i8*, align 8
  %count.addr = alloca i32, align 4
  %x_high.addr = alloca i32, align 4
  %prn_stream.addr = alloca %struct._IO_FILE*, align 8
  %xcount = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i32 %count, i32* %count.addr, align 4, !tbaa !5
  store i32 %x_high, i32* %x_high.addr, align 4, !tbaa !5
  store %struct._IO_FILE* %prn_stream, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %0 = bitcast i32* %xcount to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load i32, i32* %count.addr, align 4, !tbaa !5
  %div = sdiv i32 %1, 3
  store i32 %div, i32* %xcount, align 4, !tbaa !5
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call = call i32 @fputc(i32 27, %struct._IO_FILE* %2) #5
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call1 = call i32 @fputc(i32 42, %struct._IO_FILE* %3) #5
  %4 = load i32, i32* %x_high.addr, align 4, !tbaa !5
  %tobool = icmp ne i32 %4, 0
  %cond = select i1 %tobool, i32 40, i32 39
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call2 = call i32 @fputc(i32 %cond, %struct._IO_FILE* %5) #5
  %6 = load i32, i32* %xcount, align 4, !tbaa !5
  %and = and i32 %6, 255
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call3 = call i32 @fputc(i32 %and, %struct._IO_FILE* %7) #5
  %8 = load i32, i32* %xcount, align 4, !tbaa !5
  %shr = ashr i32 %8, 8
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call4 = call i32 @fputc(i32 %shr, %struct._IO_FILE* %9) #5
  %10 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %11 = load i32, i32* %count.addr, align 4, !tbaa !5
  %conv = sext i32 %11 to i64
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call5 = call i64 @fwrite(i8* %10, i64 1, i64 %conv, %struct._IO_FILE* %12) #5
  %13 = bitcast i32* %xcount to i8*
  call void @llvm.lifetime.end(i64 4, i8* %13) #2
  ret void
}

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
!30 = !{!26, !2, i64 24}
!31 = !{!10, !6, i64 836}
!32 = !{!3, !3, i64 0}
