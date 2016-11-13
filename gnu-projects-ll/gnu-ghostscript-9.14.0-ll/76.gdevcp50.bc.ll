; ModuleID = './gdevcp50.bc'
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
%struct.gx_device_printer_cp50 = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [11240 x i8], %struct.gx_printer_device_procs_s, [4096 x i8], i32, i32, i32, i32, i32, i32, %struct._IO_FILE*, i64, i8*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s*, i32)*, %struct.gx_page_queue_s*, i32, %struct.gx_device_printer_s*, i32, i32, %struct.bg_print_s, i32, %struct.gx_saved_pages_list_s*, %struct.gx_device_procs_s, %struct.gx_device_procs_s, i32 }

@cp50_procs = internal global %struct.gx_device_procs_s { i32 (%struct.gx_device_s*)* @gdev_prn_open, void (%struct.gx_device_s*, %struct.gs_matrix_s*)* null, i32 (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i32, i32)* @cp50_output_page, i32 (%struct.gx_device_s*)* @gdev_prn_close, i64 (%struct.gx_device_s*, i16*)* @cp50_rgb_color, i32 (%struct.gx_device_s*, i64, i16*)* @cp50_color_rgb, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* null, i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* null, i32 (%struct.gx_device_s*, i32, i8*, i8**)* null, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @gdev_prn_get_params, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @gdev_prn_put_params, i64 (%struct.gx_device_s*, i16*)* null, %struct.gx_xfont_procs_s* (%struct.gx_device_s*)* null, %struct.gx_device_s* (%struct.gx_device_s*)* null, i64 (%struct.gx_device_s*, i16, i16, i16, i16)* null, %struct.gx_device_s* (%struct.gx_device_s*)* @gx_page_device_get_page_device, i32 (%struct.gx_device_s*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)* null, i32 (%struct.gx_device_s*, i32, i32*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* null, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)* null, i32 (%struct.gx_device_s*, i64, i16*)* null, i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)* null, i32 (%struct.gx_device_s*, %struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_transparency_group_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gx_transparency_mask_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32)* null, i64 (%struct.gx_device_s*, i16*)* null, i32 (%struct.gx_device_s*, i64, i16*)* null, i32 (%struct.gx_device_s*, i64, %struct.gs_pattern1_instance_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* null, %struct.gs_devn_params_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i8*, i32)* @gdev_prn_dev_spec_op, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)* @gx_default_get_profile, void (%struct.gx_device_s*, i32)* @gx_default_set_graphics_type_tag, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_process_page_options_s*)* null }, align 8
@.str = private unnamed_addr constant [5 x i8] c"cp50\00", align 1
@st_device_printer = external constant %struct.gs_memory_struct_type_s, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"DeviceRGB\00", align 1
@gs_cp50_device = constant { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [11240 x i8], { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* }, [4096 x i8], i32, i32, i32, i32, i32, i32, %struct._IO_FILE*, i64, i8*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s*, i32)*, %struct.gx_page_queue_s*, i32, %struct.gx_device_printer_s*, i32, i32, %struct.bg_print_s, i32, %struct.gx_saved_pages_list_s*, %struct.gx_device_procs_s, %struct.gx_device_procs_s, i32 } { i32 18480, %struct.gx_device_procs_s* @cp50_procs, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), %struct.gs_memory_s* null, %struct.gs_memory_struct_type_s* @st_device_printer, i32 0, void (%struct.gx_device_s*)* null, %struct.rc_header_s zeroinitializer, i32 0, i32 0, i32 0, %struct.gx_device_color_info_s { i32 3, i32 3, i32 1, i16 24, i8 -1, i32 0, i32 255, i32 1, i32 256, %struct.gx_device_anti_alias_info_s { i32 1, i32 1 }, i32 -1, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [64 x i64] zeroinitializer, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 -1, i64 0, i32 0 }, %struct.gx_device_cached_colors_s { i64 -1, i64 -1 }, i32 601, i32 1103, i32 0, i32 0, i32 0, i32 0, [2 x float] [float 0x40718FCAC0000000, float 0x407A8AF3A0000000], [4 x float] zeroinitializer, i32 0, [2 x float] [float 1.540000e+02, float 1.870000e+02], [2 x float] [float 1.540000e+02, float 1.870000e+02], [2 x float] [float 0xC04E07AE20000000, float -1.402500e+02], [4 x float] [float 0x403C147AE0000000, float 0x40506147A0000000, float 0x403EF5C280000000, float 5.400000e+01], i64 0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, %struct.gx_stroked_gradient_recognizer_s zeroinitializer, i32 0, i32 0, %struct.gdev_space_params_s { i64 10000000, i64 4000000, %struct.gx_band_params_s zeroinitializer, i32 0, i32 0 }, %struct.cmm_dev_profile_s* null, i32 0, %struct.gx_page_device_procs_s { i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_install, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_begin_page, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* @gx_default_end_page }, %struct.gx_device_procs_s zeroinitializer, [11240 x i8] zeroinitializer, { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* } { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)* @cp50_print_page, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_print_page_copies, %struct.gx_device_buf_procs_s { i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, %struct.gx_render_plane_s*, %struct.gs_memory_s*, %struct.gx_colors_usage_s*)* @gx_default_create_buf_device, i32 (%struct.gx_device_buf_space_s*, %struct.gx_device_s*, %struct.gx_render_plane_s*, i32, i32)* @gx_default_size_buf_device, i32 (%struct.gx_device_s*, i8*, i32, i8**, i32, i32, i32)* @gx_default_setup_buf_device, void (%struct.gx_device_s*)* @gx_default_destroy_buf_device }, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)* @gx_default_get_space_params, i32 (%struct.gdev_prn_start_render_params_s*)* @gx_default_start_render_thread, i32 (%struct.gx_device_printer_s*)* @gx_default_open_render_device, i32 (%struct.gx_device_printer_s*)* @gx_default_close_render_device, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_buffer_page }, [4096 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 -1, i32 0, %struct._IO_FILE* null, i64 0, i8* null, %struct.gs_memory_s* null, %struct.gs_memory_s* null, i32 (%struct.gx_device_s*, i32)* null, %struct.gx_page_queue_s* null, i32 0, %struct.gx_device_printer_s* null, i32 0, i32 0, %struct.bg_print_s zeroinitializer, i32 0, %struct.gx_saved_pages_list_s* null, %struct.gx_device_procs_s zeroinitializer, %struct.gx_device_procs_s zeroinitializer, i32 0 }, align 8
@gs_clist_device_procs = external constant %struct.gx_device_procs_s, align 8
@.str.2 = private unnamed_addr constant [21 x i8] c"cp50_print_page(out)\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"cp50_print_page(r_plane)\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"cp50_print_page(g_plane)\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"cp50_print_page(b_plane)\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"cp50_print_page(t_plane)\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"\1BA\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"\1BF\08\01\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"\1BF\08\03\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"\1BN\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"\1BS2\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"\01\00", align 1

declare i32 @gx_default_install(%struct.gx_device_s*, %struct.gs_state_s*) #0

declare i32 @gx_default_begin_page(%struct.gx_device_s*, %struct.gs_state_s*) #0

declare i32 @gx_default_end_page(%struct.gx_device_s*, i32, %struct.gs_state_s*) #0

; Function Attrs: nounwind uwtable
define internal i32 @cp50_print_page(%struct.gx_device_printer_s* %pdev, %struct._IO_FILE* %prn_stream) #1 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_printer_s*, align 8
  %prn_stream.addr = alloca %struct._IO_FILE*, align 8
  %line_size = alloca i32, align 4
  %out = alloca i8*, align 8
  %r_plane = alloca i8*, align 8
  %g_plane = alloca i8*, align 8
  %b_plane = alloca i8*, align 8
  %t_plane = alloca i8*, align 8
  %lnum = alloca i32, align 4
  %last = alloca i32, align 4
  %lines = alloca i32, align 4
  %hi_lines = alloca i8, align 1
  %lo_lines = alloca i8, align 1
  %num_copies = alloca i8, align 1
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %i100 = alloca i32, align 4
  %col = alloca i32, align 4
  store %struct.gx_device_printer_s* %pdev, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  store %struct._IO_FILE* %prn_stream, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %0 = bitcast i32* %line_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_printer_s* %1 to %struct.gx_device_s*
  %3 = bitcast %struct.gx_device_s* %2 to %struct.gx_device_printer_s*
  %4 = bitcast %struct.gx_device_printer_s* %3 to %struct.gx_device_s*
  %call = call i32 @gx_device_raster(%struct.gx_device_s* %4, i32 0) #4
  store i32 %call, i32* %line_size, align 4, !tbaa !5
  %5 = bitcast i8** %out to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #2
  %6 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %6, i32 0, i32 3
  %7 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !7
  %non_gc_memory = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %7, i32 0, i32 3
  %8 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory, align 8, !tbaa !23
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %8, i32 0, i32 1
  %alloc_byte_array = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 10
  %9 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array, align 8, !tbaa !26
  %10 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory1 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %10, i32 0, i32 3
  %11 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory1, align 8, !tbaa !7
  %non_gc_memory2 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %11, i32 0, i32 3
  %12 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory2, align 8, !tbaa !23
  %13 = load i32, i32* %line_size, align 4, !tbaa !5
  %call3 = call i8* %9(%struct.gs_memory_s* %12, i32 %13, i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i32 0, i32 0)) #4
  store i8* %call3, i8** %out, align 8, !tbaa !1
  %14 = bitcast i8** %r_plane to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #2
  %15 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory4 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %15, i32 0, i32 3
  %16 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory4, align 8, !tbaa !7
  %non_gc_memory5 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %16, i32 0, i32 3
  %17 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory5, align 8, !tbaa !23
  %procs6 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %17, i32 0, i32 1
  %alloc_byte_array7 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs6, i32 0, i32 10
  %18 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array7, align 8, !tbaa !26
  %19 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory8 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %19, i32 0, i32 3
  %20 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory8, align 8, !tbaa !7
  %non_gc_memory9 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %20, i32 0, i32 3
  %21 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory9, align 8, !tbaa !23
  %call10 = call i8* %18(%struct.gs_memory_s* %21, i32 379200, i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i32 0, i32 0)) #4
  store i8* %call10, i8** %r_plane, align 8, !tbaa !1
  %22 = bitcast i8** %g_plane to i8*
  call void @llvm.lifetime.start(i64 8, i8* %22) #2
  %23 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory11 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %23, i32 0, i32 3
  %24 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory11, align 8, !tbaa !7
  %non_gc_memory12 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %24, i32 0, i32 3
  %25 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory12, align 8, !tbaa !23
  %procs13 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %25, i32 0, i32 1
  %alloc_byte_array14 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs13, i32 0, i32 10
  %26 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array14, align 8, !tbaa !26
  %27 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory15 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %27, i32 0, i32 3
  %28 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory15, align 8, !tbaa !7
  %non_gc_memory16 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %28, i32 0, i32 3
  %29 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory16, align 8, !tbaa !23
  %call17 = call i8* %26(%struct.gs_memory_s* %29, i32 379200, i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i32 0, i32 0)) #4
  store i8* %call17, i8** %g_plane, align 8, !tbaa !1
  %30 = bitcast i8** %b_plane to i8*
  call void @llvm.lifetime.start(i64 8, i8* %30) #2
  %31 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory18 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %31, i32 0, i32 3
  %32 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory18, align 8, !tbaa !7
  %non_gc_memory19 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %32, i32 0, i32 3
  %33 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory19, align 8, !tbaa !23
  %procs20 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %33, i32 0, i32 1
  %alloc_byte_array21 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs20, i32 0, i32 10
  %34 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array21, align 8, !tbaa !26
  %35 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory22 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %35, i32 0, i32 3
  %36 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory22, align 8, !tbaa !7
  %non_gc_memory23 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %36, i32 0, i32 3
  %37 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory23, align 8, !tbaa !23
  %call24 = call i8* %34(%struct.gs_memory_s* %37, i32 379200, i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i32 0, i32 0)) #4
  store i8* %call24, i8** %b_plane, align 8, !tbaa !1
  %38 = bitcast i8** %t_plane to i8*
  call void @llvm.lifetime.start(i64 8, i8* %38) #2
  %39 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory25 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %39, i32 0, i32 3
  %40 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory25, align 8, !tbaa !7
  %non_gc_memory26 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %40, i32 0, i32 3
  %41 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory26, align 8, !tbaa !23
  %procs27 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %41, i32 0, i32 1
  %alloc_byte_array28 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs27, i32 0, i32 10
  %42 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array28, align 8, !tbaa !26
  %43 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory29 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %43, i32 0, i32 3
  %44 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory29, align 8, !tbaa !7
  %non_gc_memory30 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %44, i32 0, i32 3
  %45 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory30, align 8, !tbaa !23
  %call31 = call i8* %42(%struct.gs_memory_s* %45, i32 379200, i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i32 0, i32 0)) #4
  store i8* %call31, i8** %t_plane, align 8, !tbaa !1
  %46 = bitcast i32* %lnum to i8*
  call void @llvm.lifetime.start(i64 4, i8* %46) #2
  store i32 140, i32* %lnum, align 4, !tbaa !5
  %47 = bitcast i32* %last to i8*
  call void @llvm.lifetime.start(i64 4, i8* %47) #2
  store i32 933, i32* %last, align 4, !tbaa !5
  %48 = bitcast i32* %lines to i8*
  call void @llvm.lifetime.start(i64 4, i8* %48) #2
  store i32 474, i32* %lines, align 4, !tbaa !5
  call void @llvm.lifetime.start(i64 1, i8* %hi_lines) #2
  call void @llvm.lifetime.start(i64 1, i8* %lo_lines) #2
  call void @llvm.lifetime.start(i64 1, i8* %num_copies) #2
  %49 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %49) #2
  %50 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %50) #2
  %51 = load i8*, i8** %out, align 8, !tbaa !1
  %cmp = icmp eq i8* %51, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %52 = load i8*, i8** %r_plane, align 8, !tbaa !1
  %cmp32 = icmp eq i8* %52, null
  br i1 %cmp32, label %if.then, label %lor.lhs.false.33

lor.lhs.false.33:                                 ; preds = %lor.lhs.false
  %53 = load i8*, i8** %g_plane, align 8, !tbaa !1
  %cmp34 = icmp eq i8* %53, null
  br i1 %cmp34, label %if.then, label %lor.lhs.false.35

lor.lhs.false.35:                                 ; preds = %lor.lhs.false.33
  %54 = load i8*, i8** %b_plane, align 8, !tbaa !1
  %cmp36 = icmp eq i8* %54, null
  br i1 %cmp36, label %if.then, label %lor.lhs.false.37

lor.lhs.false.37:                                 ; preds = %lor.lhs.false.35
  %55 = load i8*, i8** %t_plane, align 8, !tbaa !1
  %cmp38 = icmp eq i8* %55, null
  br i1 %cmp38, label %if.then, label %if.end.81

if.then:                                          ; preds = %lor.lhs.false.37, %lor.lhs.false.35, %lor.lhs.false.33, %lor.lhs.false, %entry
  %56 = load i8*, i8** %out, align 8, !tbaa !1
  %tobool = icmp ne i8* %56, null
  br i1 %tobool, label %if.then.39, label %if.end

if.then.39:                                       ; preds = %if.then
  %57 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory40 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %57, i32 0, i32 3
  %58 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory40, align 8, !tbaa !7
  %non_gc_memory41 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %58, i32 0, i32 3
  %59 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory41, align 8, !tbaa !23
  %procs42 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %59, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs42, i32 0, i32 2
  %60 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !27
  %61 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory43 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %61, i32 0, i32 3
  %62 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory43, align 8, !tbaa !7
  %non_gc_memory44 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %62, i32 0, i32 3
  %63 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory44, align 8, !tbaa !23
  %64 = load i8*, i8** %out, align 8, !tbaa !1
  call void %60(%struct.gs_memory_s* %63, i8* %64, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i32 0, i32 0)) #4
  br label %if.end

if.end:                                           ; preds = %if.then.39, %if.then
  %65 = load i8*, i8** %r_plane, align 8, !tbaa !1
  %tobool45 = icmp ne i8* %65, null
  br i1 %tobool45, label %if.then.46, label %if.end.53

if.then.46:                                       ; preds = %if.end
  %66 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory47 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %66, i32 0, i32 3
  %67 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory47, align 8, !tbaa !7
  %non_gc_memory48 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %67, i32 0, i32 3
  %68 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory48, align 8, !tbaa !23
  %procs49 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %68, i32 0, i32 1
  %free_object50 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs49, i32 0, i32 2
  %69 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object50, align 8, !tbaa !27
  %70 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory51 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %70, i32 0, i32 3
  %71 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory51, align 8, !tbaa !7
  %non_gc_memory52 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %71, i32 0, i32 3
  %72 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory52, align 8, !tbaa !23
  %73 = load i8*, i8** %r_plane, align 8, !tbaa !1
  call void %69(%struct.gs_memory_s* %72, i8* %73, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i32 0, i32 0)) #4
  br label %if.end.53

if.end.53:                                        ; preds = %if.then.46, %if.end
  %74 = load i8*, i8** %g_plane, align 8, !tbaa !1
  %tobool54 = icmp ne i8* %74, null
  br i1 %tobool54, label %if.then.55, label %if.end.62

if.then.55:                                       ; preds = %if.end.53
  %75 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory56 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %75, i32 0, i32 3
  %76 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory56, align 8, !tbaa !7
  %non_gc_memory57 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %76, i32 0, i32 3
  %77 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory57, align 8, !tbaa !23
  %procs58 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %77, i32 0, i32 1
  %free_object59 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs58, i32 0, i32 2
  %78 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object59, align 8, !tbaa !27
  %79 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory60 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %79, i32 0, i32 3
  %80 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory60, align 8, !tbaa !7
  %non_gc_memory61 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %80, i32 0, i32 3
  %81 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory61, align 8, !tbaa !23
  %82 = load i8*, i8** %g_plane, align 8, !tbaa !1
  call void %78(%struct.gs_memory_s* %81, i8* %82, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i32 0, i32 0)) #4
  br label %if.end.62

if.end.62:                                        ; preds = %if.then.55, %if.end.53
  %83 = load i8*, i8** %b_plane, align 8, !tbaa !1
  %tobool63 = icmp ne i8* %83, null
  br i1 %tobool63, label %if.then.64, label %if.end.71

if.then.64:                                       ; preds = %if.end.62
  %84 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory65 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %84, i32 0, i32 3
  %85 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory65, align 8, !tbaa !7
  %non_gc_memory66 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %85, i32 0, i32 3
  %86 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory66, align 8, !tbaa !23
  %procs67 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %86, i32 0, i32 1
  %free_object68 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs67, i32 0, i32 2
  %87 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object68, align 8, !tbaa !27
  %88 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory69 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %88, i32 0, i32 3
  %89 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory69, align 8, !tbaa !7
  %non_gc_memory70 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %89, i32 0, i32 3
  %90 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory70, align 8, !tbaa !23
  %91 = load i8*, i8** %b_plane, align 8, !tbaa !1
  call void %87(%struct.gs_memory_s* %90, i8* %91, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i32 0, i32 0)) #4
  br label %if.end.71

if.end.71:                                        ; preds = %if.then.64, %if.end.62
  %92 = load i8*, i8** %t_plane, align 8, !tbaa !1
  %tobool72 = icmp ne i8* %92, null
  br i1 %tobool72, label %if.then.73, label %if.end.80

if.then.73:                                       ; preds = %if.end.71
  %93 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory74 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %93, i32 0, i32 3
  %94 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory74, align 8, !tbaa !7
  %non_gc_memory75 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %94, i32 0, i32 3
  %95 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory75, align 8, !tbaa !23
  %procs76 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %95, i32 0, i32 1
  %free_object77 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs76, i32 0, i32 2
  %96 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object77, align 8, !tbaa !27
  %97 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory78 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %97, i32 0, i32 3
  %98 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory78, align 8, !tbaa !7
  %non_gc_memory79 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %98, i32 0, i32 3
  %99 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory79, align 8, !tbaa !23
  %100 = load i8*, i8** %t_plane, align 8, !tbaa !1
  call void %96(%struct.gs_memory_s* %99, i8* %100, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i32 0, i32 0)) #4
  br label %if.end.80

if.end.80:                                        ; preds = %if.then.73, %if.end.71
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.81:                                        ; preds = %lor.lhs.false.37
  %101 = load i8*, i8** %r_plane, align 8, !tbaa !1
  %call82 = call i8* @memset(i8* %101, i32 -1, i64 379200) #5
  %102 = load i8*, i8** %g_plane, align 8, !tbaa !1
  %call83 = call i8* @memset(i8* %102, i32 -1, i64 379200) #5
  %103 = load i8*, i8** %b_plane, align 8, !tbaa !1
  %call84 = call i8* @memset(i8* %103, i32 -1, i64 379200) #5
  %104 = load i8*, i8** %t_plane, align 8, !tbaa !1
  %call85 = call i8* @memset(i8* %104, i32 -1, i64 379200) #5
  %105 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call86 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %105, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i32 0, i32 0)) #4
  %106 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call87 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %106, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0)) #4
  %107 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call88 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %107, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0)) #4
  %108 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call89 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %108, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i32 0, i32 0)) #4
  %109 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %110 = bitcast %struct.gx_device_printer_s* %109 to %struct.gx_device_printer_cp50*
  %copies = getelementptr inbounds %struct.gx_device_printer_cp50, %struct.gx_device_printer_cp50* %110, i32 0, i32 68
  %111 = load i32, i32* %copies, align 4, !tbaa !28
  %and = and i32 %111, 255
  %conv = trunc i32 %and to i8
  store i8 %conv, i8* %num_copies, align 1, !tbaa !30
  %112 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call90 = call i64 @fwrite(i8* %num_copies, i64 1, i64 1, %struct._IO_FILE* %112) #4
  %113 = load i32, i32* %lines, align 4, !tbaa !5
  %shr = ashr i32 %113, 8
  %conv91 = trunc i32 %shr to i8
  store i8 %conv91, i8* %hi_lines, align 1, !tbaa !30
  %114 = load i32, i32* %lines, align 4, !tbaa !5
  %and92 = and i32 %114, 255
  %conv93 = trunc i32 %and92 to i8
  store i8 %conv93, i8* %lo_lines, align 1, !tbaa !30
  %115 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call94 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %115, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0)) #4
  %116 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call95 = call i64 @fwrite(i8* %hi_lines, i64 1, i64 1, %struct._IO_FILE* %116) #4
  %117 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call96 = call i64 @fwrite(i8* %lo_lines, i64 1, i64 1, %struct._IO_FILE* %117) #4
  %118 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call97 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %118, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i32 0, i32 0)) #4
  br label %while.cond

while.cond:                                       ; preds = %for.end, %if.end.81
  %119 = load i32, i32* %lnum, align 4, !tbaa !5
  %120 = load i32, i32* %last, align 4, !tbaa !5
  %cmp98 = icmp sle i32 %119, %120
  br i1 %cmp98, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %121 = bitcast i32* %i100 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %121) #2
  %122 = bitcast i32* %col to i8*
  call void @llvm.lifetime.start(i64 4, i8* %122) #2
  %123 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %124 = load i32, i32* %lnum, align 4, !tbaa !5
  %125 = load i8*, i8** %out, align 8, !tbaa !1
  %126 = load i32, i32* %line_size, align 4, !tbaa !5
  %call101 = call i32 @gdev_prn_copy_scan_lines(%struct.gx_device_printer_s* %123, i32 %124, i8* %125, i32 %126) #4
  store i32 0, i32* %i100, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %127 = load i32, i32* %i100, align 4, !tbaa !5
  %cmp102 = icmp slt i32 %127, 474
  br i1 %cmp102, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %128 = load i32, i32* %lnum, align 4, !tbaa !5
  %sub = sub nsw i32 %128, 140
  %mul = mul nsw i32 %sub, 474
  %129 = load i32, i32* %i100, align 4, !tbaa !5
  %add = add nsw i32 %mul, %129
  store i32 %add, i32* %col, align 4, !tbaa !5
  %130 = load i32, i32* %i100, align 4, !tbaa !5
  %mul104 = mul nsw i32 %130, 3
  %add105 = add nsw i32 %mul104, 180
  %idxprom = sext i32 %add105 to i64
  %131 = load i8*, i8** %out, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %131, i64 %idxprom
  %132 = load i8, i8* %arrayidx, align 1, !tbaa !30
  %133 = load i32, i32* %col, align 4, !tbaa !5
  %idxprom106 = sext i32 %133 to i64
  %134 = load i8*, i8** %r_plane, align 8, !tbaa !1
  %arrayidx107 = getelementptr inbounds i8, i8* %134, i64 %idxprom106
  store i8 %132, i8* %arrayidx107, align 1, !tbaa !30
  %135 = load i32, i32* %i100, align 4, !tbaa !5
  %mul108 = mul nsw i32 %135, 3
  %add109 = add nsw i32 %mul108, 1
  %add110 = add nsw i32 %add109, 180
  %idxprom111 = sext i32 %add110 to i64
  %136 = load i8*, i8** %out, align 8, !tbaa !1
  %arrayidx112 = getelementptr inbounds i8, i8* %136, i64 %idxprom111
  %137 = load i8, i8* %arrayidx112, align 1, !tbaa !30
  %138 = load i32, i32* %col, align 4, !tbaa !5
  %idxprom113 = sext i32 %138 to i64
  %139 = load i8*, i8** %g_plane, align 8, !tbaa !1
  %arrayidx114 = getelementptr inbounds i8, i8* %139, i64 %idxprom113
  store i8 %137, i8* %arrayidx114, align 1, !tbaa !30
  %140 = load i32, i32* %i100, align 4, !tbaa !5
  %mul115 = mul nsw i32 %140, 3
  %add116 = add nsw i32 %mul115, 2
  %add117 = add nsw i32 %add116, 180
  %idxprom118 = sext i32 %add117 to i64
  %141 = load i8*, i8** %out, align 8, !tbaa !1
  %arrayidx119 = getelementptr inbounds i8, i8* %141, i64 %idxprom118
  %142 = load i8, i8* %arrayidx119, align 1, !tbaa !30
  %143 = load i32, i32* %col, align 4, !tbaa !5
  %idxprom120 = sext i32 %143 to i64
  %144 = load i8*, i8** %b_plane, align 8, !tbaa !1
  %arrayidx121 = getelementptr inbounds i8, i8* %144, i64 %idxprom120
  store i8 %142, i8* %arrayidx121, align 1, !tbaa !30
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %145 = load i32, i32* %i100, align 4, !tbaa !5
  %inc = add nsw i32 %145, 1
  store i32 %inc, i32* %i100, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %146 = load i32, i32* %lnum, align 4, !tbaa !5
  %inc122 = add nsw i32 %146, 1
  store i32 %inc122, i32* %lnum, align 4, !tbaa !5
  %147 = bitcast i32* %col to i8*
  call void @llvm.lifetime.end(i64 4, i8* %147) #2
  %148 = bitcast i32* %i100 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %148) #2
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.123

for.cond.123:                                     ; preds = %for.inc.142, %while.end
  %149 = load i32, i32* %i, align 4, !tbaa !5
  %cmp124 = icmp slt i32 %149, 474
  br i1 %cmp124, label %for.body.126, label %for.end.144

for.body.126:                                     ; preds = %for.cond.123
  store i32 799, i32* %j, align 4, !tbaa !5
  br label %for.cond.127

for.cond.127:                                     ; preds = %for.inc.140, %for.body.126
  %150 = load i32, i32* %j, align 4, !tbaa !5
  %cmp128 = icmp sge i32 %150, 0
  br i1 %cmp128, label %for.body.130, label %for.end.141

for.body.130:                                     ; preds = %for.cond.127
  %151 = load i32, i32* %i, align 4, !tbaa !5
  %152 = load i32, i32* %j, align 4, !tbaa !5
  %mul131 = mul nsw i32 %152, 474
  %add132 = add nsw i32 %151, %mul131
  %idxprom133 = sext i32 %add132 to i64
  %153 = load i8*, i8** %r_plane, align 8, !tbaa !1
  %arrayidx134 = getelementptr inbounds i8, i8* %153, i64 %idxprom133
  %154 = load i8, i8* %arrayidx134, align 1, !tbaa !30
  %155 = load i32, i32* %j, align 4, !tbaa !5
  %sub135 = sub nsw i32 799, %155
  %156 = load i32, i32* %i, align 4, !tbaa !5
  %mul136 = mul nsw i32 %156, 800
  %add137 = add nsw i32 %sub135, %mul136
  %idxprom138 = sext i32 %add137 to i64
  %157 = load i8*, i8** %t_plane, align 8, !tbaa !1
  %arrayidx139 = getelementptr inbounds i8, i8* %157, i64 %idxprom138
  store i8 %154, i8* %arrayidx139, align 1, !tbaa !30
  br label %for.inc.140

for.inc.140:                                      ; preds = %for.body.130
  %158 = load i32, i32* %j, align 4, !tbaa !5
  %dec = add nsw i32 %158, -1
  store i32 %dec, i32* %j, align 4, !tbaa !5
  br label %for.cond.127

for.end.141:                                      ; preds = %for.cond.127
  br label %for.inc.142

for.inc.142:                                      ; preds = %for.end.141
  %159 = load i32, i32* %i, align 4, !tbaa !5
  %inc143 = add nsw i32 %159, 1
  store i32 %inc143, i32* %i, align 4, !tbaa !5
  br label %for.cond.123

for.end.144:                                      ; preds = %for.cond.123
  %160 = load i8*, i8** %t_plane, align 8, !tbaa !1
  %161 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call145 = call i64 @fwrite(i8* %160, i64 1, i64 379200, %struct._IO_FILE* %161) #4
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.146

for.cond.146:                                     ; preds = %for.inc.166, %for.end.144
  %162 = load i32, i32* %i, align 4, !tbaa !5
  %cmp147 = icmp slt i32 %162, 474
  br i1 %cmp147, label %for.body.149, label %for.end.168

for.body.149:                                     ; preds = %for.cond.146
  store i32 799, i32* %j, align 4, !tbaa !5
  br label %for.cond.150

for.cond.150:                                     ; preds = %for.inc.163, %for.body.149
  %163 = load i32, i32* %j, align 4, !tbaa !5
  %cmp151 = icmp sge i32 %163, 0
  br i1 %cmp151, label %for.body.153, label %for.end.165

for.body.153:                                     ; preds = %for.cond.150
  %164 = load i32, i32* %i, align 4, !tbaa !5
  %165 = load i32, i32* %j, align 4, !tbaa !5
  %mul154 = mul nsw i32 %165, 474
  %add155 = add nsw i32 %164, %mul154
  %idxprom156 = sext i32 %add155 to i64
  %166 = load i8*, i8** %g_plane, align 8, !tbaa !1
  %arrayidx157 = getelementptr inbounds i8, i8* %166, i64 %idxprom156
  %167 = load i8, i8* %arrayidx157, align 1, !tbaa !30
  %168 = load i32, i32* %j, align 4, !tbaa !5
  %sub158 = sub nsw i32 799, %168
  %169 = load i32, i32* %i, align 4, !tbaa !5
  %mul159 = mul nsw i32 %169, 800
  %add160 = add nsw i32 %sub158, %mul159
  %idxprom161 = sext i32 %add160 to i64
  %170 = load i8*, i8** %t_plane, align 8, !tbaa !1
  %arrayidx162 = getelementptr inbounds i8, i8* %170, i64 %idxprom161
  store i8 %167, i8* %arrayidx162, align 1, !tbaa !30
  br label %for.inc.163

for.inc.163:                                      ; preds = %for.body.153
  %171 = load i32, i32* %j, align 4, !tbaa !5
  %dec164 = add nsw i32 %171, -1
  store i32 %dec164, i32* %j, align 4, !tbaa !5
  br label %for.cond.150

for.end.165:                                      ; preds = %for.cond.150
  br label %for.inc.166

for.inc.166:                                      ; preds = %for.end.165
  %172 = load i32, i32* %i, align 4, !tbaa !5
  %inc167 = add nsw i32 %172, 1
  store i32 %inc167, i32* %i, align 4, !tbaa !5
  br label %for.cond.146

for.end.168:                                      ; preds = %for.cond.146
  %173 = load i8*, i8** %t_plane, align 8, !tbaa !1
  %174 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call169 = call i64 @fwrite(i8* %173, i64 1, i64 379200, %struct._IO_FILE* %174) #4
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.170

for.cond.170:                                     ; preds = %for.inc.190, %for.end.168
  %175 = load i32, i32* %i, align 4, !tbaa !5
  %cmp171 = icmp slt i32 %175, 474
  br i1 %cmp171, label %for.body.173, label %for.end.192

for.body.173:                                     ; preds = %for.cond.170
  store i32 799, i32* %j, align 4, !tbaa !5
  br label %for.cond.174

for.cond.174:                                     ; preds = %for.inc.187, %for.body.173
  %176 = load i32, i32* %j, align 4, !tbaa !5
  %cmp175 = icmp sge i32 %176, 0
  br i1 %cmp175, label %for.body.177, label %for.end.189

for.body.177:                                     ; preds = %for.cond.174
  %177 = load i32, i32* %i, align 4, !tbaa !5
  %178 = load i32, i32* %j, align 4, !tbaa !5
  %mul178 = mul nsw i32 %178, 474
  %add179 = add nsw i32 %177, %mul178
  %idxprom180 = sext i32 %add179 to i64
  %179 = load i8*, i8** %b_plane, align 8, !tbaa !1
  %arrayidx181 = getelementptr inbounds i8, i8* %179, i64 %idxprom180
  %180 = load i8, i8* %arrayidx181, align 1, !tbaa !30
  %181 = load i32, i32* %j, align 4, !tbaa !5
  %sub182 = sub nsw i32 799, %181
  %182 = load i32, i32* %i, align 4, !tbaa !5
  %mul183 = mul nsw i32 %182, 800
  %add184 = add nsw i32 %sub182, %mul183
  %idxprom185 = sext i32 %add184 to i64
  %183 = load i8*, i8** %t_plane, align 8, !tbaa !1
  %arrayidx186 = getelementptr inbounds i8, i8* %183, i64 %idxprom185
  store i8 %180, i8* %arrayidx186, align 1, !tbaa !30
  br label %for.inc.187

for.inc.187:                                      ; preds = %for.body.177
  %184 = load i32, i32* %j, align 4, !tbaa !5
  %dec188 = add nsw i32 %184, -1
  store i32 %dec188, i32* %j, align 4, !tbaa !5
  br label %for.cond.174

for.end.189:                                      ; preds = %for.cond.174
  br label %for.inc.190

for.inc.190:                                      ; preds = %for.end.189
  %185 = load i32, i32* %i, align 4, !tbaa !5
  %inc191 = add nsw i32 %185, 1
  store i32 %inc191, i32* %i, align 4, !tbaa !5
  br label %for.cond.170

for.end.192:                                      ; preds = %for.cond.170
  %186 = load i8*, i8** %t_plane, align 8, !tbaa !1
  %187 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call193 = call i64 @fwrite(i8* %186, i64 1, i64 379200, %struct._IO_FILE* %187) #4
  %188 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory194 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %188, i32 0, i32 3
  %189 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory194, align 8, !tbaa !7
  %non_gc_memory195 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %189, i32 0, i32 3
  %190 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory195, align 8, !tbaa !23
  %procs196 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %190, i32 0, i32 1
  %free_object197 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs196, i32 0, i32 2
  %191 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object197, align 8, !tbaa !27
  %192 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory198 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %192, i32 0, i32 3
  %193 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory198, align 8, !tbaa !7
  %non_gc_memory199 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %193, i32 0, i32 3
  %194 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory199, align 8, !tbaa !23
  %195 = load i8*, i8** %out, align 8, !tbaa !1
  call void %191(%struct.gs_memory_s* %194, i8* %195, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i32 0, i32 0)) #4
  %196 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory200 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %196, i32 0, i32 3
  %197 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory200, align 8, !tbaa !7
  %non_gc_memory201 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %197, i32 0, i32 3
  %198 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory201, align 8, !tbaa !23
  %procs202 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %198, i32 0, i32 1
  %free_object203 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs202, i32 0, i32 2
  %199 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object203, align 8, !tbaa !27
  %200 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory204 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %200, i32 0, i32 3
  %201 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory204, align 8, !tbaa !7
  %non_gc_memory205 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %201, i32 0, i32 3
  %202 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory205, align 8, !tbaa !23
  %203 = load i8*, i8** %r_plane, align 8, !tbaa !1
  call void %199(%struct.gs_memory_s* %202, i8* %203, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i32 0, i32 0)) #4
  %204 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory206 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %204, i32 0, i32 3
  %205 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory206, align 8, !tbaa !7
  %non_gc_memory207 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %205, i32 0, i32 3
  %206 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory207, align 8, !tbaa !23
  %procs208 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %206, i32 0, i32 1
  %free_object209 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs208, i32 0, i32 2
  %207 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object209, align 8, !tbaa !27
  %208 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory210 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %208, i32 0, i32 3
  %209 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory210, align 8, !tbaa !7
  %non_gc_memory211 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %209, i32 0, i32 3
  %210 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory211, align 8, !tbaa !23
  %211 = load i8*, i8** %g_plane, align 8, !tbaa !1
  call void %207(%struct.gs_memory_s* %210, i8* %211, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i32 0, i32 0)) #4
  %212 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory212 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %212, i32 0, i32 3
  %213 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory212, align 8, !tbaa !7
  %non_gc_memory213 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %213, i32 0, i32 3
  %214 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory213, align 8, !tbaa !23
  %procs214 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %214, i32 0, i32 1
  %free_object215 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs214, i32 0, i32 2
  %215 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object215, align 8, !tbaa !27
  %216 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory216 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %216, i32 0, i32 3
  %217 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory216, align 8, !tbaa !7
  %non_gc_memory217 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %217, i32 0, i32 3
  %218 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory217, align 8, !tbaa !23
  %219 = load i8*, i8** %b_plane, align 8, !tbaa !1
  call void %215(%struct.gs_memory_s* %218, i8* %219, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i32 0, i32 0)) #4
  %220 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory218 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %220, i32 0, i32 3
  %221 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory218, align 8, !tbaa !7
  %non_gc_memory219 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %221, i32 0, i32 3
  %222 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory219, align 8, !tbaa !23
  %procs220 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %222, i32 0, i32 1
  %free_object221 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs220, i32 0, i32 2
  %223 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object221, align 8, !tbaa !27
  %224 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory222 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %224, i32 0, i32 3
  %225 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory222, align 8, !tbaa !7
  %non_gc_memory223 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %225, i32 0, i32 3
  %226 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory223, align 8, !tbaa !23
  %227 = load i8*, i8** %t_plane, align 8, !tbaa !1
  call void %223(%struct.gs_memory_s* %226, i8* %227, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i32 0, i32 0)) #4
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end.192, %if.end.80
  %228 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %228) #2
  %229 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %229) #2
  call void @llvm.lifetime.end(i64 1, i8* %num_copies) #2
  call void @llvm.lifetime.end(i64 1, i8* %lo_lines) #2
  call void @llvm.lifetime.end(i64 1, i8* %hi_lines) #2
  %230 = bitcast i32* %lines to i8*
  call void @llvm.lifetime.end(i64 4, i8* %230) #2
  %231 = bitcast i32* %last to i8*
  call void @llvm.lifetime.end(i64 4, i8* %231) #2
  %232 = bitcast i32* %lnum to i8*
  call void @llvm.lifetime.end(i64 4, i8* %232) #2
  %233 = bitcast i8** %t_plane to i8*
  call void @llvm.lifetime.end(i64 8, i8* %233) #2
  %234 = bitcast i8** %b_plane to i8*
  call void @llvm.lifetime.end(i64 8, i8* %234) #2
  %235 = bitcast i8** %g_plane to i8*
  call void @llvm.lifetime.end(i64 8, i8* %235) #2
  %236 = bitcast i8** %r_plane to i8*
  call void @llvm.lifetime.end(i64 8, i8* %236) #2
  %237 = bitcast i8** %out to i8*
  call void @llvm.lifetime.end(i64 8, i8* %237) #2
  %238 = bitcast i32* %line_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %238) #2
  %239 = load i32, i32* %retval
  ret i32 %239
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
define internal i32 @cp50_output_page(%struct.gx_device_s* %pdev, i32 %num_copies, i32 %flush) #1 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_s*, align 8
  %num_copies.addr = alloca i32, align 4
  %flush.addr = alloca i32, align 4
  %code = alloca i32, align 4
  %outcode = alloca i32, align 4
  %closecode = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %pdev, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  store i32 %num_copies, i32* %num_copies.addr, align 4, !tbaa !5
  store i32 %flush, i32* %flush.addr, align 4, !tbaa !5
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast i32* %outcode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = bitcast i32* %closecode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  %3 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %call = call i32 @gdev_prn_open_printer(%struct.gx_device_s* %3, i32 1) #4
  store i32 %call, i32* %code, align 4, !tbaa !5
  %4 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %5, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = load i32, i32* %num_copies.addr, align 4, !tbaa !5
  %7 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %8 = bitcast %struct.gx_device_s* %7 to %struct.gx_device_printer_cp50*
  %copies = getelementptr inbounds %struct.gx_device_printer_cp50, %struct.gx_device_printer_cp50* %8, i32 0, i32 68
  store i32 %6, i32* %copies, align 4, !tbaa !28
  %9 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %10 = bitcast %struct.gx_device_s* %9 to %struct.gx_device_printer_s*
  %printer_procs = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %10, i32 0, i32 44
  %print_page = getelementptr inbounds %struct.gx_printer_device_procs_s, %struct.gx_printer_device_procs_s* %printer_procs, i32 0, i32 0
  %print_page1 = bitcast {}** %print_page to i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)**
  %11 = load i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)** %print_page1, align 8, !tbaa !31
  %12 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %13 = bitcast %struct.gx_device_s* %12 to %struct.gx_device_printer_s*
  %14 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %15 = bitcast %struct.gx_device_s* %14 to %struct.gx_device_printer_s*
  %file = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %15, i32 0, i32 52
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8, !tbaa !32
  %call2 = call i32 %11(%struct.gx_device_printer_s* %13, %struct._IO_FILE* %16) #4
  store i32 %call2, i32* %outcode, align 4, !tbaa !5
  %17 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %call3 = call i32 @gdev_prn_close_printer(%struct.gx_device_s* %17) #4
  store i32 %call3, i32* %closecode, align 4, !tbaa !5
  %18 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %19 = bitcast %struct.gx_device_s* %18 to %struct.gx_device_printer_s*
  %buffer_space = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %19, i32 0, i32 53
  %20 = load i64, i64* %buffer_space, align 8, !tbaa !33
  %tobool = icmp ne i64 %20, 0
  br i1 %tobool, label %if.then.4, label %if.end.6

if.then.4:                                        ; preds = %if.end
  %21 = load i32 (%struct.gx_device_s*, i32, i32)*, i32 (%struct.gx_device_s*, i32, i32)** getelementptr inbounds (%struct.gx_device_procs_s, %struct.gx_device_procs_s* @gs_clist_device_procs, i32 0, i32 3), align 8, !tbaa !34
  %22 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %23 = load i32, i32* %num_copies.addr, align 4, !tbaa !5
  %24 = load i32, i32* %flush.addr, align 4, !tbaa !5
  %call5 = call i32 %21(%struct.gx_device_s* %22, i32 %23, i32 %24) #4
  store i32 %call5, i32* %code, align 4, !tbaa !5
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.4, %if.end
  %25 = load i32, i32* %outcode, align 4, !tbaa !5
  %cmp7 = icmp slt i32 %25, 0
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end.6
  %26 = load i32, i32* %outcode, align 4, !tbaa !5
  store i32 %26, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.9:                                         ; preds = %if.end.6
  %27 = load i32, i32* %closecode, align 4, !tbaa !5
  %cmp10 = icmp slt i32 %27, 0
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end.9
  %28 = load i32, i32* %closecode, align 4, !tbaa !5
  store i32 %28, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.12:                                        ; preds = %if.end.9
  %29 = load i32, i32* %code, align 4, !tbaa !5
  %cmp13 = icmp slt i32 %29, 0
  br i1 %cmp13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.end.12
  %30 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %30, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.15:                                        ; preds = %if.end.12
  %31 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %32 = load i32, i32* %num_copies.addr, align 4, !tbaa !5
  %33 = load i32, i32* %flush.addr, align 4, !tbaa !5
  %call16 = call i32 @gx_finish_output_page(%struct.gx_device_s* %31, i32 %32, i32 %33) #4
  store i32 %call16, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.15, %if.then.14, %if.then.11, %if.then.8, %if.then
  %34 = bitcast i32* %closecode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %34) #2
  %35 = bitcast i32* %outcode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %35) #2
  %36 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %36) #2
  %37 = load i32, i32* %retval
  ret i32 %37
}

declare i32 @gdev_prn_close(%struct.gx_device_s*) #0

; Function Attrs: nounwind uwtable
define internal i64 @cp50_rgb_color(%struct.gx_device_s* %dev, i16* %cv) #1 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %cv.addr = alloca i16*, align 8
  %red = alloca i16, align 2
  %green = alloca i16, align 2
  %blue = alloca i16, align 2
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i16* %cv, i16** %cv.addr, align 8, !tbaa !1
  %0 = bitcast i16* %red to i8*
  call void @llvm.lifetime.start(i64 2, i8* %0) #2
  %1 = bitcast i16* %green to i8*
  call void @llvm.lifetime.start(i64 2, i8* %1) #2
  %2 = bitcast i16* %blue to i8*
  call void @llvm.lifetime.start(i64 2, i8* %2) #2
  %3 = load i16*, i16** %cv.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %3, i64 0
  %4 = load i16, i16* %arrayidx, align 2, !tbaa !35
  store i16 %4, i16* %red, align 2, !tbaa !35
  %5 = load i16*, i16** %cv.addr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds i16, i16* %5, i64 1
  %6 = load i16, i16* %arrayidx1, align 2, !tbaa !35
  store i16 %6, i16* %green, align 2, !tbaa !35
  %7 = load i16*, i16** %cv.addr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds i16, i16* %7, i64 2
  %8 = load i16, i16* %arrayidx2, align 2, !tbaa !35
  store i16 %8, i16* %blue, align 2, !tbaa !35
  %9 = load i16, i16* %red, align 2, !tbaa !35
  %conv = zext i16 %9 to i32
  %mul = mul i32 %conv, 65281
  %add = add i32 %mul, 8388608
  %shr = lshr i32 %add, 24
  %conv3 = trunc i32 %shr to i16
  %conv4 = zext i16 %conv3 to i64
  %shl = shl i64 %conv4, 16
  %10 = load i16, i16* %green, align 2, !tbaa !35
  %conv5 = zext i16 %10 to i32
  %mul6 = mul i32 %conv5, 65281
  %add7 = add i32 %mul6, 8388608
  %shr8 = lshr i32 %add7, 24
  %conv9 = trunc i32 %shr8 to i16
  %conv10 = zext i16 %conv9 to i32
  %shl11 = shl i32 %conv10, 8
  %conv12 = zext i32 %shl11 to i64
  %add13 = add i64 %shl, %conv12
  %11 = load i16, i16* %blue, align 2, !tbaa !35
  %conv14 = zext i16 %11 to i32
  %mul15 = mul i32 %conv14, 65281
  %add16 = add i32 %mul15, 8388608
  %shr17 = lshr i32 %add16, 24
  %conv18 = trunc i32 %shr17 to i16
  %conv19 = zext i16 %conv18 to i64
  %add20 = add i64 %add13, %conv19
  %12 = bitcast i16* %blue to i8*
  call void @llvm.lifetime.end(i64 2, i8* %12) #2
  %13 = bitcast i16* %green to i8*
  call void @llvm.lifetime.end(i64 2, i8* %13) #2
  %14 = bitcast i16* %red to i8*
  call void @llvm.lifetime.end(i64 2, i8* %14) #2
  ret i64 %add20
}

; Function Attrs: nounwind uwtable
define internal i32 @cp50_color_rgb(%struct.gx_device_s* %dev, i64 %color, i16* %prgb) #1 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %color.addr = alloca i64, align 8
  %prgb.addr = alloca i16*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i64 %color, i64* %color.addr, align 8, !tbaa !36
  store i16* %prgb, i16** %prgb.addr, align 8, !tbaa !1
  %0 = load i64, i64* %color.addr, align 8, !tbaa !36
  %and = and i64 %0, 255
  %shl = shl i64 %and, 8
  %1 = load i64, i64* %color.addr, align 8, !tbaa !36
  %and1 = and i64 %1, 255
  %shr = lshr i64 %and1, 0
  %add = add i64 %shl, %shr
  %conv = trunc i64 %add to i16
  %2 = load i16*, i16** %prgb.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %2, i64 2
  store i16 %conv, i16* %arrayidx, align 2, !tbaa !35
  %3 = load i64, i64* %color.addr, align 8, !tbaa !36
  %shr2 = lshr i64 %3, 8
  %and3 = and i64 %shr2, 255
  %shl4 = shl i64 %and3, 8
  %4 = load i64, i64* %color.addr, align 8, !tbaa !36
  %shr5 = lshr i64 %4, 8
  %and6 = and i64 %shr5, 255
  %shr7 = lshr i64 %and6, 0
  %add8 = add i64 %shl4, %shr7
  %conv9 = trunc i64 %add8 to i16
  %5 = load i16*, i16** %prgb.addr, align 8, !tbaa !1
  %arrayidx10 = getelementptr inbounds i16, i16* %5, i64 1
  store i16 %conv9, i16* %arrayidx10, align 2, !tbaa !35
  %6 = load i64, i64* %color.addr, align 8, !tbaa !36
  %shr11 = lshr i64 %6, 16
  %shl12 = shl i64 %shr11, 8
  %7 = load i64, i64* %color.addr, align 8, !tbaa !36
  %shr13 = lshr i64 %7, 16
  %shr14 = lshr i64 %shr13, 0
  %add15 = add i64 %shl12, %shr14
  %conv16 = trunc i64 %add15 to i16
  %8 = load i16*, i16** %prgb.addr, align 8, !tbaa !1
  %arrayidx17 = getelementptr inbounds i16, i16* %8, i64 0
  store i16 %conv16, i16* %arrayidx17, align 2, !tbaa !35
  ret i32 0
}

declare i32 @gdev_prn_get_params(%struct.gx_device_s*, %struct.gs_param_list_s*) #0

declare i32 @gdev_prn_put_params(%struct.gx_device_s*, %struct.gs_param_list_s*) #0

declare %struct.gx_device_s* @gx_page_device_get_page_device(%struct.gx_device_s*) #0

declare i32 @gdev_prn_dev_spec_op(%struct.gx_device_s*, i32, i8*, i32) #0

declare i32 @gx_default_get_profile(%struct.gx_device_s*, %struct.cmm_dev_profile_s**) #0

declare void @gx_default_set_graphics_type_tag(%struct.gx_device_s*, i32) #0

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

declare i32 @gdev_prn_open_printer(%struct.gx_device_s*, i32) #0

declare i32 @gdev_prn_close_printer(%struct.gx_device_s*) #0

declare i32 @gx_finish_output_page(%struct.gx_device_s*, i32, i32) #0

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

declare i32 @gx_device_raster(%struct.gx_device_s*, i32) #0

; Function Attrs: nounwind
declare i8* @memset(i8*, i32, i64) #3

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #0

declare i64 @fwrite(i8*, i64, i64, %struct._IO_FILE*) #0

declare i32 @gdev_prn_copy_scan_lines(%struct.gx_device_printer_s*, i32, i8*, i32) #0

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
!28 = !{!29, !6, i64 18472}
!29 = !{!"gx_device_printer_cp50", !6, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !6, i64 40, !2, i64 48, !9, i64 56, !6, i64 80, !6, i64 84, !6, i64 88, !11, i64 96, !14, i64 816, !6, i64 832, !6, i64 836, !6, i64 840, !6, i64 844, !6, i64 848, !6, i64 852, !3, i64 856, !3, i64 864, !6, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !10, i64 928, !10, i64 936, !6, i64 944, !6, i64 948, !6, i64 952, !6, i64 956, !6, i64 960, !10, i64 968, !10, i64 976, !15, i64 984, !6, i64 1052, !6, i64 1056, !16, i64 1064, !2, i64 1104, !3, i64 1112, !18, i64 1120, !19, i64 1144, !3, i64 1728, !20, i64 12968, !3, i64 13056, !6, i64 17152, !6, i64 17156, !6, i64 17160, !6, i64 17164, !6, i64 17168, !6, i64 17172, !2, i64 17176, !10, i64 17184, !2, i64 17192, !2, i64 17200, !2, i64 17208, !2, i64 17216, !2, i64 17224, !6, i64 17232, !2, i64 17240, !6, i64 17248, !6, i64 17252, !22, i64 17256, !6, i64 17288, !2, i64 17296, !19, i64 17304, !19, i64 17888, !6, i64 18472}
!30 = !{!3, !3, i64 0}
!31 = !{!8, !2, i64 12968}
!32 = !{!8, !2, i64 17176}
!33 = !{!8, !10, i64 17184}
!34 = !{!19, !2, i64 24}
!35 = !{!12, !12, i64 0}
!36 = !{!10, !10, i64 0}
