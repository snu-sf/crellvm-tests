; ModuleID = './gdevicov.bc'
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

@cov_procs = internal constant %struct.gx_device_procs_s { i32 (%struct.gx_device_s*)* @gdev_prn_open, void (%struct.gx_device_s*, %struct.gs_matrix_s*)* null, i32 (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i32, i32)* @gdev_prn_bg_output_page, i32 (%struct.gx_device_s*)* @gdev_prn_close, i64 (%struct.gx_device_s*, i16*)* null, i32 (%struct.gx_device_s*, i64, i16*)* @cmyk_8bit_map_color_rgb, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* null, i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* null, i32 (%struct.gx_device_s*, i32, i8*, i8**)* null, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @gdev_prn_get_params, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @gdev_prn_put_params, i64 (%struct.gx_device_s*, i16*)* @cmyk_8bit_map_cmyk_color, %struct.gx_xfont_procs_s* (%struct.gx_device_s*)* null, %struct.gx_device_s* (%struct.gx_device_s*)* null, i64 (%struct.gx_device_s*, i16, i16, i16, i16)* null, %struct.gx_device_s* (%struct.gx_device_s*)* @gx_page_device_get_page_device, i32 (%struct.gx_device_s*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)* null, i32 (%struct.gx_device_s*, i32, i32*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* null, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)* null, i32 (%struct.gx_device_s*, i64, i16*)* null, i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)* null, i32 (%struct.gx_device_s*, %struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_transparency_group_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gx_transparency_mask_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32)* null, i64 (%struct.gx_device_s*, i16*)* null, i32 (%struct.gx_device_s*, i64, i16*)* null, i32 (%struct.gx_device_s*, i64, %struct.gs_pattern1_instance_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* null, %struct.gs_devn_params_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i8*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)* null, void (%struct.gx_device_s*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_process_page_options_s*)* null }, align 8
@.str = private unnamed_addr constant [7 x i8] c"inkcov\00", align 1
@st_device_printer = external constant %struct.gs_memory_struct_type_s, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"DeviceCMYK\00", align 1
@gs_inkcov_device = constant { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [11240 x i8], { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* }, [4096 x i8], i32, i32, i32, i32, i32, i32, %struct._IO_FILE*, i64, i8*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s*, i32)*, %struct.gx_page_queue_s*, i32, %struct.gx_device_printer_s*, i32, i32, %struct.bg_print_s, i32, %struct.gx_saved_pages_list_s*, %struct.gx_device_procs_s, %struct.gx_device_procs_s } { i32 18472, %struct.gx_device_procs_s* @cov_procs, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), %struct.gs_memory_s* null, %struct.gs_memory_struct_type_s* @st_device_printer, i32 0, void (%struct.gx_device_s*)* null, %struct.rc_header_s zeroinitializer, i32 0, i32 0, i32 0, %struct.gx_device_color_info_s { i32 4, i32 4, i32 0, i16 32, i8 3, i32 255, i32 255, i32 256, i32 256, %struct.gx_device_anti_alias_info_s { i32 1, i32 1 }, i32 -1, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [64 x i64] zeroinitializer, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 -1, i64 0, i32 0 }, %struct.gx_device_cached_colors_s { i64 -1, i64 -1 }, i32 638, i32 825, i32 0, i32 0, i32 0, i32 0, [2 x float] [float 0x408323D700000000, float 7.920000e+02], [4 x float] zeroinitializer, i32 0, [2 x float] [float 7.500000e+01, float 7.500000e+01], [2 x float] [float 7.500000e+01, float 7.500000e+01], [2 x float] zeroinitializer, [4 x float] zeroinitializer, i64 0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, %struct.gx_stroked_gradient_recognizer_s zeroinitializer, i32 0, i32 0, %struct.gdev_space_params_s { i64 10000000, i64 4000000, %struct.gx_band_params_s zeroinitializer, i32 0, i32 0 }, %struct.cmm_dev_profile_s* null, i32 0, %struct.gx_page_device_procs_s { i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_install, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_begin_page, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* @gx_default_end_page }, %struct.gx_device_procs_s zeroinitializer, [11240 x i8] zeroinitializer, { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* } { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)* @cov_write_page, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_print_page_copies, %struct.gx_device_buf_procs_s { i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, %struct.gx_render_plane_s*, %struct.gs_memory_s*, %struct.gx_colors_usage_s*)* @gx_default_create_buf_device, i32 (%struct.gx_device_buf_space_s*, %struct.gx_device_s*, %struct.gx_render_plane_s*, i32, i32)* @gx_default_size_buf_device, i32 (%struct.gx_device_s*, i8*, i32, i8**, i32, i32, i32)* @gx_default_setup_buf_device, void (%struct.gx_device_s*)* @gx_default_destroy_buf_device }, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)* @gx_default_get_space_params, i32 (%struct.gdev_prn_start_render_params_s*)* @gx_default_start_render_thread, i32 (%struct.gx_device_printer_s*)* @gx_default_open_render_device, i32 (%struct.gx_device_printer_s*)* @gx_default_close_render_device, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_buffer_page }, [4096 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 -1, i32 0, %struct._IO_FILE* null, i64 0, i8* null, %struct.gs_memory_s* null, %struct.gs_memory_s* null, i32 (%struct.gx_device_s*, i32)* null, %struct.gx_page_queue_s* null, i32 0, %struct.gx_device_printer_s* null, i32 0, i32 0, %struct.bg_print_s zeroinitializer, i32 0, %struct.gx_saved_pages_list_s* null, %struct.gx_device_procs_s zeroinitializer, %struct.gx_device_procs_s zeroinitializer }, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"ink_cov\00", align 1
@gs_ink_cov_device = constant { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [11240 x i8], { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* }, [4096 x i8], i32, i32, i32, i32, i32, i32, %struct._IO_FILE*, i64, i8*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s*, i32)*, %struct.gx_page_queue_s*, i32, %struct.gx_device_printer_s*, i32, i32, %struct.bg_print_s, i32, %struct.gx_saved_pages_list_s*, %struct.gx_device_procs_s, %struct.gx_device_procs_s } { i32 18472, %struct.gx_device_procs_s* @cov_procs, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), %struct.gs_memory_s* null, %struct.gs_memory_struct_type_s* @st_device_printer, i32 0, void (%struct.gx_device_s*)* null, %struct.rc_header_s zeroinitializer, i32 0, i32 0, i32 0, %struct.gx_device_color_info_s { i32 4, i32 4, i32 0, i16 32, i8 3, i32 255, i32 255, i32 256, i32 256, %struct.gx_device_anti_alias_info_s { i32 1, i32 1 }, i32 -1, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [64 x i64] zeroinitializer, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 -1, i64 0, i32 0 }, %struct.gx_device_cached_colors_s { i64 -1, i64 -1 }, i32 638, i32 825, i32 0, i32 0, i32 0, i32 0, [2 x float] [float 0x408323D700000000, float 7.920000e+02], [4 x float] zeroinitializer, i32 0, [2 x float] [float 7.500000e+01, float 7.500000e+01], [2 x float] [float 7.500000e+01, float 7.500000e+01], [2 x float] zeroinitializer, [4 x float] zeroinitializer, i64 0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, %struct.gx_stroked_gradient_recognizer_s zeroinitializer, i32 0, i32 0, %struct.gdev_space_params_s { i64 10000000, i64 4000000, %struct.gx_band_params_s zeroinitializer, i32 0, i32 0 }, %struct.cmm_dev_profile_s* null, i32 0, %struct.gx_page_device_procs_s { i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_install, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_begin_page, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* @gx_default_end_page }, %struct.gx_device_procs_s zeroinitializer, [11240 x i8] zeroinitializer, { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* } { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)* @cov_write_page_ink, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_print_page_copies, %struct.gx_device_buf_procs_s { i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, %struct.gx_render_plane_s*, %struct.gs_memory_s*, %struct.gx_colors_usage_s*)* @gx_default_create_buf_device, i32 (%struct.gx_device_buf_space_s*, %struct.gx_device_s*, %struct.gx_render_plane_s*, i32, i32)* @gx_default_size_buf_device, i32 (%struct.gx_device_s*, i8*, i32, i8**, i32, i32, i32)* @gx_default_setup_buf_device, void (%struct.gx_device_s*)* @gx_default_destroy_buf_device }, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)* @gx_default_get_space_params, i32 (%struct.gdev_prn_start_render_params_s*)* @gx_default_start_render_thread, i32 (%struct.gx_device_printer_s*)* @gx_default_open_render_device, i32 (%struct.gx_device_printer_s*)* @gx_default_close_render_device, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_buffer_page }, [4096 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 -1, i32 0, %struct._IO_FILE* null, i64 0, i8* null, %struct.gs_memory_s* null, %struct.gs_memory_s* null, i32 (%struct.gx_device_s*, i32)* null, %struct.gx_page_queue_s* null, i32 0, %struct.gx_device_printer_s* null, i32 0, i32 0, %struct.bg_print_s zeroinitializer, i32 0, %struct.gx_saved_pages_list_s* null, %struct.gx_device_procs_s zeroinitializer, %struct.gx_device_procs_s zeroinitializer }, align 8
@.str.3 = private unnamed_addr constant [27 x i8] c"ink coverage plugin buffer\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"%8.5f %8.5f %8.5f %8.5f CMYK %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"ERROR\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"OK\00", align 1

declare i32 @gx_default_install(%struct.gx_device_s*, %struct.gs_state_s*) #0

declare i32 @gx_default_begin_page(%struct.gx_device_s*, %struct.gs_state_s*) #0

declare i32 @gx_default_end_page(%struct.gx_device_s*, i32, %struct.gs_state_s*) #0

; Function Attrs: nounwind uwtable
define internal i32 @cov_write_page(%struct.gx_device_printer_s* %pdev, %struct._IO_FILE* %file) #1 {
entry:
  %pdev.addr = alloca %struct.gx_device_printer_s*, align 8
  %file.addr = alloca %struct._IO_FILE*, align 8
  %code = alloca i32, align 4
  %raster = alloca i32, align 4
  %height = alloca i32, align 4
  %line = alloca i8*, align 8
  %y = alloca i32, align 4
  %c_pix = alloca i64, align 8
  %m_pix = alloca i64, align 8
  %y_pix = alloca i64, align 8
  %k_pix = alloca i64, align 8
  %total_pix = alloca i64, align 8
  %row = alloca i8*, align 8
  %end = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  %c = alloca double, align 8
  %m = alloca double, align 8
  %y47 = alloca double, align 8
  %k = alloca double, align 8
  store %struct.gx_device_printer_s* %pdev, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  store %struct._IO_FILE* %file, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  store i32 0, i32* %code, align 4, !tbaa !5
  %1 = bitcast i32* %raster to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %3 = bitcast %struct.gx_device_printer_s* %2 to %struct.gx_device_s*
  %call = call i32 @gx_device_raster(%struct.gx_device_s* %3, i32 0) #3
  store i32 %call, i32* %raster, align 4, !tbaa !5
  %4 = bitcast i32* %height to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %height1 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %5, i32 0, i32 14
  %6 = load i32, i32* %height1, align 4, !tbaa !7
  store i32 %6, i32* %height, align 4, !tbaa !5
  %7 = bitcast i8** %line to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #2
  %8 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %8, i32 0, i32 3
  %9 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !23
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %9, i32 0, i32 1
  %alloc_bytes = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 7
  %10 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes, align 8, !tbaa !24
  %11 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory2 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %11, i32 0, i32 3
  %12 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory2, align 8, !tbaa !23
  %13 = load i32, i32* %raster, align 4, !tbaa !5
  %call3 = call i8* %10(%struct.gs_memory_s* %12, i32 %13, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i32 0, i32 0)) #3
  store i8* %call3, i8** %line, align 8, !tbaa !1
  %14 = bitcast i32* %y to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #2
  %15 = bitcast i64* %c_pix to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15) #2
  store i64 0, i64* %c_pix, align 8, !tbaa !27
  %16 = bitcast i64* %m_pix to i8*
  call void @llvm.lifetime.start(i64 8, i8* %16) #2
  store i64 0, i64* %m_pix, align 8, !tbaa !27
  %17 = bitcast i64* %y_pix to i8*
  call void @llvm.lifetime.start(i64 8, i8* %17) #2
  store i64 0, i64* %y_pix, align 8, !tbaa !27
  %18 = bitcast i64* %k_pix to i8*
  call void @llvm.lifetime.start(i64 8, i8* %18) #2
  store i64 0, i64* %k_pix, align 8, !tbaa !27
  %19 = bitcast i64* %total_pix to i8*
  call void @llvm.lifetime.start(i64 8, i8* %19) #2
  store i64 0, i64* %total_pix, align 8, !tbaa !27
  store i32 0, i32* %y, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc.36, %entry
  %20 = load i32, i32* %y, align 4, !tbaa !5
  %21 = load i32, i32* %height, align 4, !tbaa !5
  %cmp = icmp slt i32 %20, %21
  br i1 %cmp, label %for.body, label %for.end.38

for.body:                                         ; preds = %for.cond
  %22 = bitcast i8** %row to i8*
  call void @llvm.lifetime.start(i64 8, i8* %22) #2
  %23 = bitcast i8** %end to i8*
  call void @llvm.lifetime.start(i64 8, i8* %23) #2
  %24 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %25 = load i32, i32* %y, align 4, !tbaa !5
  %26 = load i8*, i8** %line, align 8, !tbaa !1
  %call4 = call i32 @gdev_prn_get_bits(%struct.gx_device_printer_s* %24, i32 %25, i8* %26, i8** %row) #3
  store i32 %call4, i32* %code, align 4, !tbaa !5
  %27 = load i32, i32* %code, align 4, !tbaa !5
  %cmp5 = icmp slt i32 %27, 0
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %for.body
  %28 = load i8*, i8** %row, align 8, !tbaa !1
  %29 = load i32, i32* %raster, align 4, !tbaa !5
  %idx.ext = sext i32 %29 to i64
  %add.ptr = getelementptr inbounds i8, i8* %28, i64 %idx.ext
  store i8* %add.ptr, i8** %end, align 8, !tbaa !1
  br label %for.cond.6

for.cond.6:                                       ; preds = %for.inc, %if.end
  %30 = load i8*, i8** %row, align 8, !tbaa !1
  %31 = load i8*, i8** %end, align 8, !tbaa !1
  %cmp7 = icmp ult i8* %30, %31
  br i1 %cmp7, label %for.body.8, label %for.end

for.body.8:                                       ; preds = %for.cond.6
  %32 = load i8*, i8** %row, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %32, i64 0
  %33 = load i8, i8* %arrayidx, align 1, !tbaa !28
  %tobool = icmp ne i8 %33, 0
  %lnot = xor i1 %tobool, true
  %lnot9 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot9 to i32
  %conv = sext i32 %lnot.ext to i64
  %34 = load i64, i64* %c_pix, align 8, !tbaa !27
  %add = add i64 %34, %conv
  store i64 %add, i64* %c_pix, align 8, !tbaa !27
  %35 = load i8*, i8** %row, align 8, !tbaa !1
  %arrayidx10 = getelementptr inbounds i8, i8* %35, i64 1
  %36 = load i8, i8* %arrayidx10, align 1, !tbaa !28
  %tobool11 = icmp ne i8 %36, 0
  %lnot12 = xor i1 %tobool11, true
  %lnot14 = xor i1 %lnot12, true
  %lnot.ext15 = zext i1 %lnot14 to i32
  %conv16 = sext i32 %lnot.ext15 to i64
  %37 = load i64, i64* %m_pix, align 8, !tbaa !27
  %add17 = add i64 %37, %conv16
  store i64 %add17, i64* %m_pix, align 8, !tbaa !27
  %38 = load i8*, i8** %row, align 8, !tbaa !1
  %arrayidx18 = getelementptr inbounds i8, i8* %38, i64 2
  %39 = load i8, i8* %arrayidx18, align 1, !tbaa !28
  %tobool19 = icmp ne i8 %39, 0
  %lnot20 = xor i1 %tobool19, true
  %lnot22 = xor i1 %lnot20, true
  %lnot.ext23 = zext i1 %lnot22 to i32
  %conv24 = sext i32 %lnot.ext23 to i64
  %40 = load i64, i64* %y_pix, align 8, !tbaa !27
  %add25 = add i64 %40, %conv24
  store i64 %add25, i64* %y_pix, align 8, !tbaa !27
  %41 = load i8*, i8** %row, align 8, !tbaa !1
  %arrayidx26 = getelementptr inbounds i8, i8* %41, i64 3
  %42 = load i8, i8* %arrayidx26, align 1, !tbaa !28
  %tobool27 = icmp ne i8 %42, 0
  %lnot28 = xor i1 %tobool27, true
  %lnot30 = xor i1 %lnot28, true
  %lnot.ext31 = zext i1 %lnot30 to i32
  %conv32 = sext i32 %lnot.ext31 to i64
  %43 = load i64, i64* %k_pix, align 8, !tbaa !27
  %add33 = add i64 %43, %conv32
  store i64 %add33, i64* %k_pix, align 8, !tbaa !27
  %44 = load i64, i64* %total_pix, align 8, !tbaa !27
  %inc = add i64 %44, 1
  store i64 %inc, i64* %total_pix, align 8, !tbaa !27
  br label %for.inc

for.inc:                                          ; preds = %for.body.8
  %45 = load i8*, i8** %row, align 8, !tbaa !1
  %add.ptr34 = getelementptr inbounds i8, i8* %45, i64 4
  store i8* %add.ptr34, i8** %row, align 8, !tbaa !1
  br label %for.cond.6

for.end:                                          ; preds = %for.cond.6
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  %46 = bitcast i8** %end to i8*
  call void @llvm.lifetime.end(i64 8, i8* %46) #2
  %47 = bitcast i8** %row to i8*
  call void @llvm.lifetime.end(i64 8, i8* %47) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 2, label %for.end.38
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc.36

for.inc.36:                                       ; preds = %cleanup.cont
  %48 = load i32, i32* %y, align 4, !tbaa !5
  %inc37 = add nsw i32 %48, 1
  store i32 %inc37, i32* %y, align 4, !tbaa !5
  br label %for.cond

for.end.38:                                       ; preds = %cleanup, %for.cond
  %49 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %49, i32 0, i32 13
  %50 = load i32, i32* %width, align 4, !tbaa !29
  %51 = load i32, i32* %height, align 4, !tbaa !5
  %mul = mul nsw i32 %50, %51
  %conv39 = sext i32 %mul to i64
  %52 = load i64, i64* %total_pix, align 8, !tbaa !27
  %cmp40 = icmp ne i64 %conv39, %52
  br i1 %cmp40, label %if.then.42, label %if.end.43

if.then.42:                                       ; preds = %for.end.38
  store i32 1, i32* %code, align 4, !tbaa !5
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.42, %for.end.38
  %53 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory44 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %53, i32 0, i32 3
  %54 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory44, align 8, !tbaa !23
  %procs45 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %54, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs45, i32 0, i32 2
  %55 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !30
  %56 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory46 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %56, i32 0, i32 3
  %57 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory46, align 8, !tbaa !23
  %58 = load i8*, i8** %line, align 8, !tbaa !1
  call void %55(%struct.gs_memory_s* %57, i8* %58, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i32 0, i32 0)) #3
  %59 = bitcast double* %c to i8*
  call void @llvm.lifetime.start(i64 8, i8* %59) #2
  store double -1.000000e+00, double* %c, align 8, !tbaa !31
  %60 = bitcast double* %m to i8*
  call void @llvm.lifetime.start(i64 8, i8* %60) #2
  store double -1.000000e+00, double* %m, align 8, !tbaa !31
  %61 = bitcast double* %y47 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %61) #2
  store double -1.000000e+00, double* %y47, align 8, !tbaa !31
  %62 = bitcast double* %k to i8*
  call void @llvm.lifetime.start(i64 8, i8* %62) #2
  store double -1.000000e+00, double* %k, align 8, !tbaa !31
  %63 = load i32, i32* %code, align 4, !tbaa !5
  %cmp48 = icmp eq i32 %63, 0
  br i1 %cmp48, label %if.then.50, label %if.end.62

if.then.50:                                       ; preds = %if.end.43
  %64 = load i64, i64* %c_pix, align 8, !tbaa !27
  %conv51 = uitofp i64 %64 to double
  %65 = load i64, i64* %total_pix, align 8, !tbaa !27
  %conv52 = uitofp i64 %65 to double
  %div = fdiv double %conv51, %conv52
  store double %div, double* %c, align 8, !tbaa !31
  %66 = load i64, i64* %m_pix, align 8, !tbaa !27
  %conv53 = uitofp i64 %66 to double
  %67 = load i64, i64* %total_pix, align 8, !tbaa !27
  %conv54 = uitofp i64 %67 to double
  %div55 = fdiv double %conv53, %conv54
  store double %div55, double* %m, align 8, !tbaa !31
  %68 = load i64, i64* %y_pix, align 8, !tbaa !27
  %conv56 = uitofp i64 %68 to double
  %69 = load i64, i64* %total_pix, align 8, !tbaa !27
  %conv57 = uitofp i64 %69 to double
  %div58 = fdiv double %conv56, %conv57
  store double %div58, double* %y47, align 8, !tbaa !31
  %70 = load i64, i64* %k_pix, align 8, !tbaa !27
  %conv59 = uitofp i64 %70 to double
  %71 = load i64, i64* %total_pix, align 8, !tbaa !27
  %conv60 = uitofp i64 %71 to double
  %div61 = fdiv double %conv59, %conv60
  store double %div61, double* %k, align 8, !tbaa !31
  br label %if.end.62

if.end.62:                                        ; preds = %if.then.50, %if.end.43
  %72 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  %73 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory63 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %73, i32 0, i32 3
  %74 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory63, align 8, !tbaa !23
  %gs_lib_ctx = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %74, i32 0, i32 2
  %75 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx, align 8, !tbaa !33
  %fstdout = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %75, i32 0, i32 2
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** %fstdout, align 8, !tbaa !34
  %cmp64 = icmp eq %struct._IO_FILE* %72, %76
  br i1 %cmp64, label %if.then.66, label %if.else

if.then.66:                                       ; preds = %if.end.62
  %77 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory67 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %77, i32 0, i32 3
  %78 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory67, align 8, !tbaa !23
  %79 = load double, double* %c, align 8, !tbaa !31
  %80 = load double, double* %m, align 8, !tbaa !31
  %81 = load double, double* %y47, align 8, !tbaa !31
  %82 = load double, double* %k, align 8, !tbaa !31
  %83 = load i32, i32* %code, align 4, !tbaa !5
  %tobool68 = icmp ne i32 %83, 0
  %cond = select i1 %tobool68, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i32 0, i32 0)
  %call69 = call i32 (%struct.gs_memory_s*, i8*, ...) @outprintf(%struct.gs_memory_s* %78, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i32 0, i32 0), double %79, double %80, double %81, double %82, i8* %cond) #3
  br label %if.end.84

if.else:                                          ; preds = %if.end.62
  %84 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  %85 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory70 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %85, i32 0, i32 3
  %86 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory70, align 8, !tbaa !23
  %gs_lib_ctx71 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %86, i32 0, i32 2
  %87 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx71, align 8, !tbaa !33
  %fstderr = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %87, i32 0, i32 3
  %88 = load %struct._IO_FILE*, %struct._IO_FILE** %fstderr, align 8, !tbaa !36
  %cmp72 = icmp eq %struct._IO_FILE* %84, %88
  br i1 %cmp72, label %if.then.74, label %if.else.79

if.then.74:                                       ; preds = %if.else
  %89 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory75 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %89, i32 0, i32 3
  %90 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory75, align 8, !tbaa !23
  %91 = load double, double* %c, align 8, !tbaa !31
  %92 = load double, double* %m, align 8, !tbaa !31
  %93 = load double, double* %y47, align 8, !tbaa !31
  %94 = load double, double* %k, align 8, !tbaa !31
  %95 = load i32, i32* %code, align 4, !tbaa !5
  %tobool76 = icmp ne i32 %95, 0
  %cond77 = select i1 %tobool76, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i32 0, i32 0)
  %call78 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %90, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i32 0, i32 0), double %91, double %92, double %93, double %94, i8* %cond77) #3
  br label %if.end.83

if.else.79:                                       ; preds = %if.else
  %96 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  %97 = load double, double* %c, align 8, !tbaa !31
  %98 = load double, double* %m, align 8, !tbaa !31
  %99 = load double, double* %y47, align 8, !tbaa !31
  %100 = load double, double* %k, align 8, !tbaa !31
  %101 = load i32, i32* %code, align 4, !tbaa !5
  %tobool80 = icmp ne i32 %101, 0
  %cond81 = select i1 %tobool80, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i32 0, i32 0)
  %call82 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %96, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i32 0, i32 0), double %97, double %98, double %99, double %100, i8* %cond81) #3
  br label %if.end.83

if.end.83:                                        ; preds = %if.else.79, %if.then.74
  br label %if.end.84

if.end.84:                                        ; preds = %if.end.83, %if.then.66
  %102 = bitcast double* %k to i8*
  call void @llvm.lifetime.end(i64 8, i8* %102) #2
  %103 = bitcast double* %y47 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %103) #2
  %104 = bitcast double* %m to i8*
  call void @llvm.lifetime.end(i64 8, i8* %104) #2
  %105 = bitcast double* %c to i8*
  call void @llvm.lifetime.end(i64 8, i8* %105) #2
  store i32 1, i32* %cleanup.dest.slot
  %106 = bitcast i64* %total_pix to i8*
  call void @llvm.lifetime.end(i64 8, i8* %106) #2
  %107 = bitcast i64* %k_pix to i8*
  call void @llvm.lifetime.end(i64 8, i8* %107) #2
  %108 = bitcast i64* %y_pix to i8*
  call void @llvm.lifetime.end(i64 8, i8* %108) #2
  %109 = bitcast i64* %m_pix to i8*
  call void @llvm.lifetime.end(i64 8, i8* %109) #2
  %110 = bitcast i64* %c_pix to i8*
  call void @llvm.lifetime.end(i64 8, i8* %110) #2
  %111 = bitcast i32* %y to i8*
  call void @llvm.lifetime.end(i64 4, i8* %111) #2
  %112 = bitcast i8** %line to i8*
  call void @llvm.lifetime.end(i64 8, i8* %112) #2
  %113 = bitcast i32* %height to i8*
  call void @llvm.lifetime.end(i64 4, i8* %113) #2
  %114 = bitcast i32* %raster to i8*
  call void @llvm.lifetime.end(i64 4, i8* %114) #2
  %115 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %115) #2
  ret i32 0

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

; Function Attrs: nounwind uwtable
define internal i32 @cov_write_page_ink(%struct.gx_device_printer_s* %pdev, %struct._IO_FILE* %file) #1 {
entry:
  %pdev.addr = alloca %struct.gx_device_printer_s*, align 8
  %file.addr = alloca %struct._IO_FILE*, align 8
  %code = alloca i32, align 4
  %raster = alloca i32, align 4
  %height = alloca i32, align 4
  %dc_pix = alloca double, align 8
  %dm_pix = alloca double, align 8
  %dy_pix = alloca double, align 8
  %dk_pix = alloca double, align 8
  %line = alloca i8*, align 8
  %y = alloca i32, align 4
  %total_pix = alloca i64, align 8
  %row = alloca i8*, align 8
  %end = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  %c = alloca double, align 8
  %m = alloca double, align 8
  %y35 = alloca double, align 8
  %k = alloca double, align 8
  store %struct.gx_device_printer_s* %pdev, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  store %struct._IO_FILE* %file, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  store i32 0, i32* %code, align 4, !tbaa !5
  %1 = bitcast i32* %raster to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %3 = bitcast %struct.gx_device_printer_s* %2 to %struct.gx_device_s*
  %call = call i32 @gx_device_raster(%struct.gx_device_s* %3, i32 0) #3
  store i32 %call, i32* %raster, align 4, !tbaa !5
  %4 = bitcast i32* %height to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %height1 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %5, i32 0, i32 14
  %6 = load i32, i32* %height1, align 4, !tbaa !7
  store i32 %6, i32* %height, align 4, !tbaa !5
  %7 = bitcast double* %dc_pix to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #2
  store double 0.000000e+00, double* %dc_pix, align 8, !tbaa !31
  %8 = bitcast double* %dm_pix to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #2
  store double 0.000000e+00, double* %dm_pix, align 8, !tbaa !31
  %9 = bitcast double* %dy_pix to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #2
  store double 0.000000e+00, double* %dy_pix, align 8, !tbaa !31
  %10 = bitcast double* %dk_pix to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #2
  store double 0.000000e+00, double* %dk_pix, align 8, !tbaa !31
  %11 = bitcast i8** %line to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #2
  %12 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %12, i32 0, i32 3
  %13 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !23
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %13, i32 0, i32 1
  %alloc_bytes = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 7
  %14 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes, align 8, !tbaa !24
  %15 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory2 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %15, i32 0, i32 3
  %16 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory2, align 8, !tbaa !23
  %17 = load i32, i32* %raster, align 4, !tbaa !5
  %call3 = call i8* %14(%struct.gs_memory_s* %16, i32 %17, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i32 0, i32 0)) #3
  store i8* %call3, i8** %line, align 8, !tbaa !1
  %18 = bitcast i32* %y to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #2
  %19 = bitcast i64* %total_pix to i8*
  call void @llvm.lifetime.start(i64 8, i8* %19) #2
  store i64 0, i64* %total_pix, align 8, !tbaa !27
  store i32 0, i32* %y, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc.24, %entry
  %20 = load i32, i32* %y, align 4, !tbaa !5
  %21 = load i32, i32* %height, align 4, !tbaa !5
  %cmp = icmp slt i32 %20, %21
  br i1 %cmp, label %for.body, label %for.end.26

for.body:                                         ; preds = %for.cond
  %22 = bitcast i8** %row to i8*
  call void @llvm.lifetime.start(i64 8, i8* %22) #2
  %23 = bitcast i8** %end to i8*
  call void @llvm.lifetime.start(i64 8, i8* %23) #2
  %24 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %25 = load i32, i32* %y, align 4, !tbaa !5
  %26 = load i8*, i8** %line, align 8, !tbaa !1
  %call4 = call i32 @gdev_prn_get_bits(%struct.gx_device_printer_s* %24, i32 %25, i8* %26, i8** %row) #3
  store i32 %call4, i32* %code, align 4, !tbaa !5
  %27 = load i32, i32* %code, align 4, !tbaa !5
  %cmp5 = icmp slt i32 %27, 0
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %for.body
  %28 = load i8*, i8** %row, align 8, !tbaa !1
  %29 = load i32, i32* %raster, align 4, !tbaa !5
  %idx.ext = sext i32 %29 to i64
  %add.ptr = getelementptr inbounds i8, i8* %28, i64 %idx.ext
  store i8* %add.ptr, i8** %end, align 8, !tbaa !1
  br label %for.cond.6

for.cond.6:                                       ; preds = %for.inc, %if.end
  %30 = load i8*, i8** %row, align 8, !tbaa !1
  %31 = load i8*, i8** %end, align 8, !tbaa !1
  %cmp7 = icmp ult i8* %30, %31
  br i1 %cmp7, label %for.body.8, label %for.end

for.body.8:                                       ; preds = %for.cond.6
  %32 = load i8*, i8** %row, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %32, i64 0
  %33 = load i8, i8* %arrayidx, align 1, !tbaa !28
  %conv = zext i8 %33 to i32
  %conv9 = sitofp i32 %conv to double
  %34 = load double, double* %dc_pix, align 8, !tbaa !31
  %add = fadd double %34, %conv9
  store double %add, double* %dc_pix, align 8, !tbaa !31
  %35 = load i8*, i8** %row, align 8, !tbaa !1
  %arrayidx10 = getelementptr inbounds i8, i8* %35, i64 1
  %36 = load i8, i8* %arrayidx10, align 1, !tbaa !28
  %conv11 = zext i8 %36 to i32
  %conv12 = sitofp i32 %conv11 to double
  %37 = load double, double* %dm_pix, align 8, !tbaa !31
  %add13 = fadd double %37, %conv12
  store double %add13, double* %dm_pix, align 8, !tbaa !31
  %38 = load i8*, i8** %row, align 8, !tbaa !1
  %arrayidx14 = getelementptr inbounds i8, i8* %38, i64 2
  %39 = load i8, i8* %arrayidx14, align 1, !tbaa !28
  %conv15 = zext i8 %39 to i32
  %conv16 = sitofp i32 %conv15 to double
  %40 = load double, double* %dy_pix, align 8, !tbaa !31
  %add17 = fadd double %40, %conv16
  store double %add17, double* %dy_pix, align 8, !tbaa !31
  %41 = load i8*, i8** %row, align 8, !tbaa !1
  %arrayidx18 = getelementptr inbounds i8, i8* %41, i64 3
  %42 = load i8, i8* %arrayidx18, align 1, !tbaa !28
  %conv19 = zext i8 %42 to i32
  %conv20 = sitofp i32 %conv19 to double
  %43 = load double, double* %dk_pix, align 8, !tbaa !31
  %add21 = fadd double %43, %conv20
  store double %add21, double* %dk_pix, align 8, !tbaa !31
  %44 = load i64, i64* %total_pix, align 8, !tbaa !27
  %inc = add i64 %44, 1
  store i64 %inc, i64* %total_pix, align 8, !tbaa !27
  br label %for.inc

for.inc:                                          ; preds = %for.body.8
  %45 = load i8*, i8** %row, align 8, !tbaa !1
  %add.ptr22 = getelementptr inbounds i8, i8* %45, i64 4
  store i8* %add.ptr22, i8** %row, align 8, !tbaa !1
  br label %for.cond.6

for.end:                                          ; preds = %for.cond.6
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  %46 = bitcast i8** %end to i8*
  call void @llvm.lifetime.end(i64 8, i8* %46) #2
  %47 = bitcast i8** %row to i8*
  call void @llvm.lifetime.end(i64 8, i8* %47) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 2, label %for.end.26
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc.24

for.inc.24:                                       ; preds = %cleanup.cont
  %48 = load i32, i32* %y, align 4, !tbaa !5
  %inc25 = add nsw i32 %48, 1
  store i32 %inc25, i32* %y, align 4, !tbaa !5
  br label %for.cond

for.end.26:                                       ; preds = %cleanup, %for.cond
  %49 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %49, i32 0, i32 13
  %50 = load i32, i32* %width, align 4, !tbaa !29
  %51 = load i32, i32* %height, align 4, !tbaa !5
  %mul = mul nsw i32 %50, %51
  %conv27 = sext i32 %mul to i64
  %52 = load i64, i64* %total_pix, align 8, !tbaa !27
  %cmp28 = icmp ne i64 %conv27, %52
  br i1 %cmp28, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %for.end.26
  store i32 1, i32* %code, align 4, !tbaa !5
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.30, %for.end.26
  %53 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory32 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %53, i32 0, i32 3
  %54 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory32, align 8, !tbaa !23
  %procs33 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %54, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs33, i32 0, i32 2
  %55 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !30
  %56 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory34 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %56, i32 0, i32 3
  %57 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory34, align 8, !tbaa !23
  %58 = load i8*, i8** %line, align 8, !tbaa !1
  call void %55(%struct.gs_memory_s* %57, i8* %58, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i32 0, i32 0)) #3
  %59 = bitcast double* %c to i8*
  call void @llvm.lifetime.start(i64 8, i8* %59) #2
  store double -1.000000e+00, double* %c, align 8, !tbaa !31
  %60 = bitcast double* %m to i8*
  call void @llvm.lifetime.start(i64 8, i8* %60) #2
  store double -1.000000e+00, double* %m, align 8, !tbaa !31
  %61 = bitcast double* %y35 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %61) #2
  store double -1.000000e+00, double* %y35, align 8, !tbaa !31
  %62 = bitcast double* %k to i8*
  call void @llvm.lifetime.start(i64 8, i8* %62) #2
  store double -1.000000e+00, double* %k, align 8, !tbaa !31
  %63 = load i32, i32* %code, align 4, !tbaa !5
  %cmp36 = icmp eq i32 %63, 0
  br i1 %cmp36, label %if.then.38, label %if.end.54

if.then.38:                                       ; preds = %if.end.31
  %64 = load double, double* %dc_pix, align 8, !tbaa !31
  %mul39 = fmul double %64, 1.000000e+02
  %65 = load i64, i64* %total_pix, align 8, !tbaa !27
  %mul40 = mul i64 %65, 255
  %conv41 = uitofp i64 %mul40 to double
  %div = fdiv double %mul39, %conv41
  store double %div, double* %c, align 8, !tbaa !31
  %66 = load double, double* %dm_pix, align 8, !tbaa !31
  %mul42 = fmul double %66, 1.000000e+02
  %67 = load i64, i64* %total_pix, align 8, !tbaa !27
  %mul43 = mul i64 %67, 255
  %conv44 = uitofp i64 %mul43 to double
  %div45 = fdiv double %mul42, %conv44
  store double %div45, double* %m, align 8, !tbaa !31
  %68 = load double, double* %dy_pix, align 8, !tbaa !31
  %mul46 = fmul double %68, 1.000000e+02
  %69 = load i64, i64* %total_pix, align 8, !tbaa !27
  %mul47 = mul i64 %69, 255
  %conv48 = uitofp i64 %mul47 to double
  %div49 = fdiv double %mul46, %conv48
  store double %div49, double* %y35, align 8, !tbaa !31
  %70 = load double, double* %dk_pix, align 8, !tbaa !31
  %mul50 = fmul double %70, 1.000000e+02
  %71 = load i64, i64* %total_pix, align 8, !tbaa !27
  %mul51 = mul i64 %71, 255
  %conv52 = uitofp i64 %mul51 to double
  %div53 = fdiv double %mul50, %conv52
  store double %div53, double* %k, align 8, !tbaa !31
  br label %if.end.54

if.end.54:                                        ; preds = %if.then.38, %if.end.31
  %72 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  %73 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory55 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %73, i32 0, i32 3
  %74 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory55, align 8, !tbaa !23
  %gs_lib_ctx = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %74, i32 0, i32 2
  %75 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx, align 8, !tbaa !33
  %fstdout = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %75, i32 0, i32 2
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** %fstdout, align 8, !tbaa !34
  %cmp56 = icmp eq %struct._IO_FILE* %72, %76
  br i1 %cmp56, label %if.then.58, label %if.else

if.then.58:                                       ; preds = %if.end.54
  %77 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory59 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %77, i32 0, i32 3
  %78 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory59, align 8, !tbaa !23
  %79 = load double, double* %c, align 8, !tbaa !31
  %80 = load double, double* %m, align 8, !tbaa !31
  %81 = load double, double* %y35, align 8, !tbaa !31
  %82 = load double, double* %k, align 8, !tbaa !31
  %83 = load i32, i32* %code, align 4, !tbaa !5
  %tobool = icmp ne i32 %83, 0
  %cond = select i1 %tobool, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i32 0, i32 0)
  %call60 = call i32 (%struct.gs_memory_s*, i8*, ...) @outprintf(%struct.gs_memory_s* %78, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i32 0, i32 0), double %79, double %80, double %81, double %82, i8* %cond) #3
  br label %if.end.75

if.else:                                          ; preds = %if.end.54
  %84 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  %85 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory61 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %85, i32 0, i32 3
  %86 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory61, align 8, !tbaa !23
  %gs_lib_ctx62 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %86, i32 0, i32 2
  %87 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx62, align 8, !tbaa !33
  %fstderr = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %87, i32 0, i32 3
  %88 = load %struct._IO_FILE*, %struct._IO_FILE** %fstderr, align 8, !tbaa !36
  %cmp63 = icmp eq %struct._IO_FILE* %84, %88
  br i1 %cmp63, label %if.then.65, label %if.else.70

if.then.65:                                       ; preds = %if.else
  %89 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory66 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %89, i32 0, i32 3
  %90 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory66, align 8, !tbaa !23
  %91 = load double, double* %c, align 8, !tbaa !31
  %92 = load double, double* %m, align 8, !tbaa !31
  %93 = load double, double* %y35, align 8, !tbaa !31
  %94 = load double, double* %k, align 8, !tbaa !31
  %95 = load i32, i32* %code, align 4, !tbaa !5
  %tobool67 = icmp ne i32 %95, 0
  %cond68 = select i1 %tobool67, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i32 0, i32 0)
  %call69 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %90, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i32 0, i32 0), double %91, double %92, double %93, double %94, i8* %cond68) #3
  br label %if.end.74

if.else.70:                                       ; preds = %if.else
  %96 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  %97 = load double, double* %c, align 8, !tbaa !31
  %98 = load double, double* %m, align 8, !tbaa !31
  %99 = load double, double* %y35, align 8, !tbaa !31
  %100 = load double, double* %k, align 8, !tbaa !31
  %101 = load i32, i32* %code, align 4, !tbaa !5
  %tobool71 = icmp ne i32 %101, 0
  %cond72 = select i1 %tobool71, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i32 0, i32 0)
  %call73 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %96, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i32 0, i32 0), double %97, double %98, double %99, double %100, i8* %cond72) #3
  br label %if.end.74

if.end.74:                                        ; preds = %if.else.70, %if.then.65
  br label %if.end.75

if.end.75:                                        ; preds = %if.end.74, %if.then.58
  %102 = bitcast double* %k to i8*
  call void @llvm.lifetime.end(i64 8, i8* %102) #2
  %103 = bitcast double* %y35 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %103) #2
  %104 = bitcast double* %m to i8*
  call void @llvm.lifetime.end(i64 8, i8* %104) #2
  %105 = bitcast double* %c to i8*
  call void @llvm.lifetime.end(i64 8, i8* %105) #2
  store i32 1, i32* %cleanup.dest.slot
  %106 = bitcast i64* %total_pix to i8*
  call void @llvm.lifetime.end(i64 8, i8* %106) #2
  %107 = bitcast i32* %y to i8*
  call void @llvm.lifetime.end(i64 4, i8* %107) #2
  %108 = bitcast i8** %line to i8*
  call void @llvm.lifetime.end(i64 8, i8* %108) #2
  %109 = bitcast double* %dk_pix to i8*
  call void @llvm.lifetime.end(i64 8, i8* %109) #2
  %110 = bitcast double* %dy_pix to i8*
  call void @llvm.lifetime.end(i64 8, i8* %110) #2
  %111 = bitcast double* %dm_pix to i8*
  call void @llvm.lifetime.end(i64 8, i8* %111) #2
  %112 = bitcast double* %dc_pix to i8*
  call void @llvm.lifetime.end(i64 8, i8* %112) #2
  %113 = bitcast i32* %height to i8*
  call void @llvm.lifetime.end(i64 4, i8* %113) #2
  %114 = bitcast i32* %raster to i8*
  call void @llvm.lifetime.end(i64 4, i8* %114) #2
  %115 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %115) #2
  ret i32 0

unreachable:                                      ; preds = %cleanup
  unreachable
}

declare i32 @gdev_prn_open(%struct.gx_device_s*) #0

declare i32 @gdev_prn_bg_output_page(%struct.gx_device_s*, i32, i32) #0

declare i32 @gdev_prn_close(%struct.gx_device_s*) #0

declare i32 @cmyk_8bit_map_color_rgb(%struct.gx_device_s*, i64, i16*) #0

declare i32 @gdev_prn_get_params(%struct.gx_device_s*, %struct.gs_param_list_s*) #0

declare i32 @gdev_prn_put_params(%struct.gx_device_s*, %struct.gs_param_list_s*) #0

declare i64 @cmyk_8bit_map_cmyk_color(%struct.gx_device_s*, i16*) #0

declare %struct.gx_device_s* @gx_page_device_get_page_device(%struct.gx_device_s*) #0

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

declare i32 @gx_device_raster(%struct.gx_device_s*, i32) #0

declare i32 @gdev_prn_get_bits(%struct.gx_device_printer_s*, i32, i8*, i8**) #0

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

declare i32 @outprintf(%struct.gs_memory_s*, i8*, ...) #0

declare i32 @errprintf(%struct.gs_memory_s*, i8*, ...) #0

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #0

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
!24 = !{!25, !2, i64 64}
!25 = !{!"gs_memory_s", !2, i64 0, !26, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!26 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!27 = !{!10, !10, i64 0}
!28 = !{!3, !3, i64 0}
!29 = !{!8, !6, i64 832}
!30 = !{!25, !2, i64 24}
!31 = !{!32, !32, i64 0}
!32 = !{!"double", !3, i64 0}
!33 = !{!25, !2, i64 192}
!34 = !{!35, !2, i64 16}
!35 = !{!"gs_lib_ctx_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !6, i64 40, !6, i64 44, !6, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !10, i64 104, !2, i64 112, !2, i64 120, !6, i64 128, !2, i64 136, !6, i64 144, !6, i64 148, !3, i64 152, !2, i64 168, !6, i64 176, !2, i64 184, !6, i64 192, !2, i64 200, !2, i64 208}
!36 = !{!35, !2, i64 24}
