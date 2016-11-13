; ModuleID = './gdevespg.bc'
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
%struct._Bubble = type { %struct._Bubble*, %struct.gs_int_rect_s }
%struct.EpagPaperTable = type { i32, i32, i32 }
%struct.gx_device_lprn_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [11240 x i8], %struct.gx_printer_device_procs_s, [4096 x i8], i32, i32, i32, i32, i32, i32, %struct._IO_FILE*, i64, i8*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s*, i32)*, %struct.gx_page_queue_s*, i32, %struct.gx_device_printer_s*, i32, i32, %struct.bg_print_s, i32, %struct.gx_saved_pages_list_s*, %struct.gx_device_procs_s, %struct.gx_device_procs_s, void (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32, i32, i32, i32)*, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i32, i32, %struct._Bubble**, %struct._Bubble*, i32 }

@lp2000_prn_procs = internal global %struct.gx_device_procs_s { i32 (%struct.gx_device_s*)* @lp2000_open, void (%struct.gx_device_s*, %struct.gs_matrix_s*)* null, i32 (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i32, i32)* @gdev_prn_output_page, i32 (%struct.gx_device_s*)* @gdev_prn_close, i64 (%struct.gx_device_s*, i16*)* @gx_default_b_w_map_rgb_color, i32 (%struct.gx_device_s*, i64, i16*)* @gx_default_b_w_map_color_rgb, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* null, i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* null, i32 (%struct.gx_device_s*, i32, i8*, i8**)* null, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @lprn_get_params, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @lprn_put_params, i64 (%struct.gx_device_s*, i16*)* null, %struct.gx_xfont_procs_s* (%struct.gx_device_s*)* null, %struct.gx_device_s* (%struct.gx_device_s*)* null, i64 (%struct.gx_device_s*, i16, i16, i16, i16)* null, %struct.gx_device_s* (%struct.gx_device_s*)* @gx_page_device_get_page_device, i32 (%struct.gx_device_s*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)* null, i32 (%struct.gx_device_s*, i32, i32*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* null, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)* null, i32 (%struct.gx_device_s*, i64, i16*)* null, i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)* null, i32 (%struct.gx_device_s*, %struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_transparency_group_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gx_transparency_mask_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32)* null, i64 (%struct.gx_device_s*, i16*)* @gx_default_b_w_map_rgb_color, i32 (%struct.gx_device_s*, i64, i16*)* @gx_default_b_w_map_color_rgb, i32 (%struct.gx_device_s*, i64, %struct.gs_pattern1_instance_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* null, %struct.gs_devn_params_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i8*, i32)* @gdev_prn_dev_spec_op, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)* @gx_default_get_profile, void (%struct.gx_device_s*, i32)* @gx_default_set_graphics_type_tag, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_process_page_options_s*)* null }, align 8
@.str = private unnamed_addr constant [7 x i8] c"lp2000\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"DeviceGray\00", align 1
@gs_lp2000_device = global { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [11240 x i8], { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* }, [4096 x i8], i32, i32, i32, i32, i32, i32, %struct._IO_FILE*, i64, i8*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s*, i32)*, %struct.gx_page_queue_s*, i32, %struct.gx_device_printer_s*, i32, i32, %struct.bg_print_s, i32, %struct.gx_saved_pages_list_s*, %struct.gx_device_procs_s, %struct.gx_device_procs_s, void (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32, i32, i32, i32)*, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i32, i32, %struct._Bubble**, %struct._Bubble*, i32 } { i32 18576, %struct.gx_device_procs_s* @lp2000_prn_procs, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), %struct.gs_memory_s* null, %struct.gs_memory_struct_type_s* null, i32 0, void (%struct.gx_device_s*)* null, %struct.rc_header_s zeroinitializer, i32 0, i32 0, i32 0, %struct.gx_device_color_info_s { i32 1, i32 1, i32 1, i16 1, i8 0, i32 1, i32 0, i32 2, i32 1, %struct.gx_device_anti_alias_info_s { i32 1, i32 1 }, i32 -1, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [64 x i64] zeroinitializer, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 -1, i64 0, i32 0 }, %struct.gx_device_cached_colors_s { i64 -1, i64 -1 }, i32 2460, i32 3480, i32 0, i32 0, i32 0, i32 0, [2 x float] [float 0x4082733340000000, float 0x408A1999A0000000], [4 x float] zeroinitializer, i32 0, [2 x float] [float 3.000000e+02, float 3.000000e+02], [2 x float] [float 3.000000e+02, float 3.000000e+02], [2 x float] [float -0.000000e+00, float -0.000000e+00], [4 x float] zeroinitializer, i64 0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, %struct.gx_stroked_gradient_recognizer_s zeroinitializer, i32 0, i32 0, %struct.gdev_space_params_s { i64 10000000, i64 4000000, %struct.gx_band_params_s zeroinitializer, i32 0, i32 0 }, %struct.cmm_dev_profile_s* null, i32 0, %struct.gx_page_device_procs_s { i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_install, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_begin_page, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* @gx_default_end_page }, %struct.gx_device_procs_s zeroinitializer, [11240 x i8] zeroinitializer, { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* } { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)* null, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @lp2000_print_page_copies, %struct.gx_device_buf_procs_s { i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, %struct.gx_render_plane_s*, %struct.gs_memory_s*, %struct.gx_colors_usage_s*)* @gx_default_create_buf_device, i32 (%struct.gx_device_buf_space_s*, %struct.gx_device_s*, %struct.gx_render_plane_s*, i32, i32)* @gx_default_size_buf_device, i32 (%struct.gx_device_s*, i8*, i32, i8**, i32, i32, i32)* @gx_default_setup_buf_device, void (%struct.gx_device_s*)* @gx_default_destroy_buf_device }, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)* @gx_default_get_space_params, i32 (%struct.gdev_prn_start_render_params_s*)* @gx_default_start_render_thread, i32 (%struct.gx_device_printer_s*)* @gx_default_open_render_device, i32 (%struct.gx_device_printer_s*)* @gx_default_close_render_device, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_buffer_page }, [4096 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 -1, i32 0, %struct._IO_FILE* null, i64 0, i8* null, %struct.gs_memory_s* null, %struct.gs_memory_s* null, i32 (%struct.gx_device_s*, i32)* null, %struct.gx_page_queue_s* null, i32 0, %struct.gx_device_printer_s* null, i32 0, i32 0, %struct.bg_print_s zeroinitializer, i32 0, %struct.gx_saved_pages_list_s* null, %struct.gx_device_procs_s zeroinitializer, %struct.gx_device_procs_s zeroinitializer, void (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32, i32, i32, i32)* @escpage_image_out, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 256, i8* null, i8* null, i8* null, i8* null, i32 4, i32 32, %struct._Bubble** null, %struct._Bubble* null, i32 0 }, align 8
@escpage_prn_procs = internal global %struct.gx_device_procs_s { i32 (%struct.gx_device_s*)* @escpage_open, void (%struct.gx_device_s*, %struct.gs_matrix_s*)* null, i32 (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i32, i32)* @gdev_prn_output_page, i32 (%struct.gx_device_s*)* @escpage_close, i64 (%struct.gx_device_s*, i16*)* @gx_default_b_w_map_rgb_color, i32 (%struct.gx_device_s*, i64, i16*)* @gx_default_b_w_map_color_rgb, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* null, i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* null, i32 (%struct.gx_device_s*, i32, i8*, i8**)* null, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @lprn_get_params, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @lprn_put_params, i64 (%struct.gx_device_s*, i16*)* null, %struct.gx_xfont_procs_s* (%struct.gx_device_s*)* null, %struct.gx_device_s* (%struct.gx_device_s*)* null, i64 (%struct.gx_device_s*, i16, i16, i16, i16)* null, %struct.gx_device_s* (%struct.gx_device_s*)* @gx_page_device_get_page_device, i32 (%struct.gx_device_s*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)* null, i32 (%struct.gx_device_s*, i32, i32*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* null, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)* null, i32 (%struct.gx_device_s*, i64, i16*)* null, i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)* null, i32 (%struct.gx_device_s*, %struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_transparency_group_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gx_transparency_mask_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32)* null, i64 (%struct.gx_device_s*, i16*)* @gx_default_b_w_map_rgb_color, i32 (%struct.gx_device_s*, i64, i16*)* @gx_default_b_w_map_color_rgb, i32 (%struct.gx_device_s*, i64, %struct.gs_pattern1_instance_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* null, %struct.gs_devn_params_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i8*, i32)* @gdev_prn_dev_spec_op, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)* @gx_default_get_profile, void (%struct.gx_device_s*, i32)* @gx_default_set_graphics_type_tag, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_process_page_options_s*)* null }, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"escpage\00", align 1
@gs_escpage_device = global { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [11240 x i8], { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* }, [4096 x i8], i32, i32, i32, i32, i32, i32, %struct._IO_FILE*, i64, i8*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s*, i32)*, %struct.gx_page_queue_s*, i32, %struct.gx_device_printer_s*, i32, i32, %struct.bg_print_s, i32, %struct.gx_saved_pages_list_s*, %struct.gx_device_procs_s, %struct.gx_device_procs_s, void (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32, i32, i32, i32)*, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i32, i32, %struct._Bubble**, %struct._Bubble*, i32 } { i32 18576, %struct.gx_device_procs_s* @escpage_prn_procs, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), %struct.gs_memory_s* null, %struct.gs_memory_struct_type_s* null, i32 0, void (%struct.gx_device_s*)* null, %struct.rc_header_s zeroinitializer, i32 0, i32 0, i32 0, %struct.gx_device_color_info_s { i32 1, i32 1, i32 1, i16 1, i8 0, i32 1, i32 0, i32 2, i32 1, %struct.gx_device_anti_alias_info_s { i32 1, i32 1 }, i32 -1, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [64 x i64] zeroinitializer, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 -1, i64 0, i32 0 }, %struct.gx_device_cached_colors_s { i64 -1, i64 -1 }, i32 2460, i32 3480, i32 0, i32 0, i32 0, i32 0, [2 x float] [float 0x4082733340000000, float 0x408A1999A0000000], [4 x float] zeroinitializer, i32 0, [2 x float] [float 3.000000e+02, float 3.000000e+02], [2 x float] [float 3.000000e+02, float 3.000000e+02], [2 x float] [float -0.000000e+00, float -0.000000e+00], [4 x float] zeroinitializer, i64 0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, %struct.gx_stroked_gradient_recognizer_s zeroinitializer, i32 0, i32 0, %struct.gdev_space_params_s { i64 10000000, i64 4000000, %struct.gx_band_params_s zeroinitializer, i32 0, i32 0 }, %struct.cmm_dev_profile_s* null, i32 0, %struct.gx_page_device_procs_s { i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_install, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_begin_page, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* @gx_default_end_page }, %struct.gx_device_procs_s zeroinitializer, [11240 x i8] zeroinitializer, { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* } { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)* null, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @escpage_print_page_copies, %struct.gx_device_buf_procs_s { i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, %struct.gx_render_plane_s*, %struct.gs_memory_s*, %struct.gx_colors_usage_s*)* @gx_default_create_buf_device, i32 (%struct.gx_device_buf_space_s*, %struct.gx_device_s*, %struct.gx_render_plane_s*, i32, i32)* @gx_default_size_buf_device, i32 (%struct.gx_device_s*, i8*, i32, i8**, i32, i32, i32)* @gx_default_setup_buf_device, void (%struct.gx_device_s*)* @gx_default_destroy_buf_device }, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)* @gx_default_get_space_params, i32 (%struct.gdev_prn_start_render_params_s*)* @gx_default_start_render_thread, i32 (%struct.gx_device_printer_s*)* @gx_default_open_render_device, i32 (%struct.gx_device_printer_s*)* @gx_default_close_render_device, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_buffer_page }, [4096 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, %struct._IO_FILE* null, i64 0, i8* null, %struct.gs_memory_s* null, %struct.gs_memory_s* null, i32 (%struct.gx_device_s*, i32)* null, %struct.gx_page_queue_s* null, i32 0, %struct.gx_device_printer_s* null, i32 0, i32 0, %struct.bg_print_s zeroinitializer, i32 0, %struct.gx_saved_pages_list_s* null, %struct.gx_device_procs_s zeroinitializer, %struct.gx_device_procs_s zeroinitializer, void (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32, i32, i32, i32)* @escpage_image_out, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 256, i8* null, i8* null, i8* null, i8* null, i32 4, i32 32, %struct._Bubble** null, %struct._Bubble* null, i32 0 }, align 8
@.str.3 = private unnamed_addr constant [8 x i8] c"%c0dpsE\00", align 1
@epson_remote_start = internal global i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0), align 8
@.str.4 = private unnamed_addr constant [10 x i8] c"\1B\01@EJL \0D\0A\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"@EJL SELECT LANGUAGE=ESC/PAGE\0D\0A\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"@EJL SET RI=OFF\0D\0A\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"@EJL SET RI=ON\0D\0A\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"@EJL SET RS=%s\0D\0A\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"FN\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"QK\00", align 1
@.str.11 = private unnamed_addr constant [31 x i8] c"@EJL ENTER LANGUAGE=ESC/PAGE\0D\0A\00", align 1
@.str.12 = private unnamed_addr constant [34 x i8] c"lp2000_print_page_copies(CompBuf)\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"%c1dmG\00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"%c0;0;%d;%d;0rG\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"%c2owE\00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c"\0C\00", align 1
@can_inits = internal global [31 x i8] c"\1BS\1B\1BS\1C\1Bz\00\00\1DrhE\1D1mmE\1D3bcI\1D0;0iuE", align 16
@.str.17 = private unnamed_addr constant [7 x i8] c"%c1sdE\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"%c0bdE\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"%c1bdE\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"%c0sdE\00", align 1
@.str.21 = private unnamed_addr constant [13 x i8] c"%c0;%4.2fmuE\00", align 1
@.str.22 = private unnamed_addr constant [13 x i8] c"%c0;%d;%ddrE\00", align 1
@.str.23 = private unnamed_addr constant [8 x i8] c"%c%dcoO\00", align 1
@.str.24 = private unnamed_addr constant [9 x i8] c"%c0;0loE\00", align 1
@epagPaperTable = internal global [22 x %struct.EpagPaperTable] [%struct.EpagPaperTable { i32 842, i32 1190, i32 13 }, %struct.EpagPaperTable { i32 595, i32 842, i32 14 }, %struct.EpagPaperTable { i32 597, i32 842, i32 14 }, %struct.EpagPaperTable { i32 421, i32 595, i32 15 }, %struct.EpagPaperTable { i32 297, i32 421, i32 16 }, %struct.EpagPaperTable { i32 729, i32 1032, i32 24 }, %struct.EpagPaperTable { i32 516, i32 729, i32 25 }, %struct.EpagPaperTable { i32 612, i32 792, i32 30 }, %struct.EpagPaperTable { i32 396, i32 612, i32 31 }, %struct.EpagPaperTable { i32 612, i32 1008, i32 32 }, %struct.EpagPaperTable { i32 522, i32 756, i32 33 }, %struct.EpagPaperTable { i32 612, i32 936, i32 34 }, %struct.EpagPaperTable { i32 576, i32 756, i32 35 }, %struct.EpagPaperTable { i32 792, i32 1224, i32 36 }, %struct.EpagPaperTable { i32 593, i32 935, i32 37 }, %struct.EpagPaperTable { i32 284, i32 419, i32 38 }, %struct.EpagPaperTable { i32 933, i32 1369, i32 72 }, %struct.EpagPaperTable { i32 279, i32 540, i32 80 }, %struct.EpagPaperTable { i32 297, i32 684, i32 81 }, %struct.EpagPaperTable { i32 312, i32 624, i32 90 }, %struct.EpagPaperTable { i32 459, i32 649, i32 91 }, %struct.EpagPaperTable { i32 0, i32 0, i32 -1 }], align 16
@.str.25 = private unnamed_addr constant [5 x i8] c"%c%d\00", align 1
@.str.26 = private unnamed_addr constant [7 x i8] c";%d;%d\00", align 1
@.str.27 = private unnamed_addr constant [4 x i8] c"psE\00", align 1
@.str.28 = private unnamed_addr constant [8 x i8] c"%c%dpoE\00", align 1
@.str.29 = private unnamed_addr constant [11 x i8] c"%c%dY%c%dX\00", align 1
@.str.30 = private unnamed_addr constant [17 x i8] c"%c%d;%d;%d;0bi{I\00", align 1
@.str.31 = private unnamed_addr constant [7 x i8] c"%c0dmG\00", align 1
@.str.32 = private unnamed_addr constant [18 x i8] c"%c%d;%d;%d;%d;0rG\00", align 1

declare i32 @gx_default_install(%struct.gx_device_s*, %struct.gs_state_s*) #0

declare i32 @gx_default_begin_page(%struct.gx_device_s*, %struct.gs_state_s*) #0

declare i32 @gx_default_end_page(%struct.gx_device_s*, i32, %struct.gs_state_s*) #0

; Function Attrs: nounwind uwtable
define internal i32 @lp2000_print_page_copies(%struct.gx_device_printer_s* %pdev, %struct._IO_FILE* %fp, i32 %num_coipes) #1 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_printer_s*, align 8
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %num_coipes.addr = alloca i32, align 4
  %lprn = alloca %struct.gx_device_lprn_s*, align 8
  %code = alloca i32, align 4
  %bpl = alloca i32, align 4
  %maxY = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_printer_s* %pdev, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8, !tbaa !1
  store i32 %num_coipes, i32* %num_coipes.addr, align 4, !tbaa !5
  %0 = bitcast %struct.gx_device_lprn_s** %lprn to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_printer_s* %1 to %struct.gx_device_lprn_s*
  store %struct.gx_device_lprn_s* %2, %struct.gx_device_lprn_s** %lprn, align 8, !tbaa !1
  %3 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  store i32 0, i32* %code, align 4, !tbaa !5
  %4 = bitcast i32* %bpl to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %6 = bitcast %struct.gx_device_printer_s* %5 to %struct.gx_device_s*
  %call = call i32 @gx_device_raster(%struct.gx_device_s* %6, i32 0) #3
  store i32 %call, i32* %bpl, align 4, !tbaa !5
  %7 = bitcast i32* %maxY to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #2
  %8 = load %struct.gx_device_lprn_s*, %struct.gx_device_lprn_s** %lprn, align 8, !tbaa !1
  %BlockLine = getelementptr inbounds %struct.gx_device_lprn_s, %struct.gx_device_lprn_s* %8, i32 0, i32 76
  %9 = load i32, i32* %BlockLine, align 4, !tbaa !7
  %10 = load %struct.gx_device_lprn_s*, %struct.gx_device_lprn_s** %lprn, align 8, !tbaa !1
  %nBh = getelementptr inbounds %struct.gx_device_lprn_s, %struct.gx_device_lprn_s* %10, i32 0, i32 82
  %11 = load i32, i32* %nBh, align 4, !tbaa !23
  %div = sdiv i32 %9, %11
  %12 = load %struct.gx_device_lprn_s*, %struct.gx_device_lprn_s** %lprn, align 8, !tbaa !1
  %nBh1 = getelementptr inbounds %struct.gx_device_lprn_s, %struct.gx_device_lprn_s* %12, i32 0, i32 82
  %13 = load i32, i32* %nBh1, align 4, !tbaa !23
  %mul = mul nsw i32 %div, %13
  store i32 %mul, i32* %maxY, align 4, !tbaa !5
  %14 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %PageCount = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %14, i32 0, i32 26
  %15 = load i64, i64* %PageCount, align 8, !tbaa !24
  %cmp = icmp eq i64 %15, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %16 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8, !tbaa !1
  %18 = load i32, i32* %num_coipes.addr, align 4, !tbaa !5
  call void @escpage_printer_initialize(%struct.gx_device_printer_s* %16, %struct._IO_FILE* %17, i32 %18) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %19 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %19, i32 0, i32 3
  %20 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !26
  %non_gc_memory = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %20, i32 0, i32 3
  %21 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory, align 8, !tbaa !27
  %non_gc_memory2 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %21, i32 0, i32 3
  %22 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory2, align 8, !tbaa !27
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %22, i32 0, i32 1
  %alloc_byte_array = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 10
  %23 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array, align 8, !tbaa !30
  %24 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory3 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %24, i32 0, i32 3
  %25 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory3, align 8, !tbaa !26
  %non_gc_memory4 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %25, i32 0, i32 3
  %26 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory4, align 8, !tbaa !27
  %non_gc_memory5 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %26, i32 0, i32 3
  %27 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory5, align 8, !tbaa !27
  %28 = load i32, i32* %bpl, align 4, !tbaa !5
  %mul6 = mul nsw i32 %28, 3
  %div7 = sdiv i32 %mul6, 2
  %add = add nsw i32 %div7, 1
  %29 = load i32, i32* %maxY, align 4, !tbaa !5
  %call8 = call i8* %23(%struct.gs_memory_s* %27, i32 %add, i32 %29, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.12, i32 0, i32 0)) #3
  %30 = load %struct.gx_device_lprn_s*, %struct.gx_device_lprn_s** %lprn, align 8, !tbaa !1
  %CompBuf = getelementptr inbounds %struct.gx_device_lprn_s, %struct.gx_device_lprn_s* %30, i32 0, i32 79
  store i8* %call8, i8** %CompBuf, align 8, !tbaa !31
  %tobool = icmp ne i8* %call8, null
  br i1 %tobool, label %if.end.10, label %if.then.9

if.then.9:                                        ; preds = %if.end
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.10:                                        ; preds = %if.end
  %31 = load %struct.gx_device_lprn_s*, %struct.gx_device_lprn_s** %lprn, align 8, !tbaa !1
  %NegativePrint = getelementptr inbounds %struct.gx_device_lprn_s, %struct.gx_device_lprn_s* %31, i32 0, i32 71
  %32 = load i32, i32* %NegativePrint, align 4, !tbaa !32
  %tobool11 = icmp ne i32 %32, 0
  br i1 %tobool11, label %if.then.12, label %if.end.16

if.then.12:                                       ; preds = %if.end.10
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8, !tbaa !1
  %call13 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %33, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i32 0, i32 0), i32 29) #3
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8, !tbaa !1
  %35 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %35, i32 0, i32 13
  %36 = load i32, i32* %width, align 4, !tbaa !33
  %37 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %37, i32 0, i32 14
  %38 = load i32, i32* %height, align 4, !tbaa !34
  %call14 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %34, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i32 0, i32 0), i32 29, i32 %36, i32 %38) #3
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8, !tbaa !1
  %call15 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %39, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i32 0, i32 0), i32 29) #3
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.12, %if.end.10
  %40 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8, !tbaa !1
  %call17 = call i32 @lprn_print_image(%struct.gx_device_printer_s* %40, %struct._IO_FILE* %41) #3
  store i32 %call17, i32* %code, align 4, !tbaa !5
  %42 = load i32, i32* %code, align 4, !tbaa !5
  %cmp18 = icmp slt i32 %42, 0
  br i1 %cmp18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %if.end.16
  %43 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %43, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.20:                                        ; preds = %if.end.16
  %44 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory21 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %44, i32 0, i32 3
  %45 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory21, align 8, !tbaa !26
  %non_gc_memory22 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %45, i32 0, i32 3
  %46 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory22, align 8, !tbaa !27
  %non_gc_memory23 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %46, i32 0, i32 3
  %47 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory23, align 8, !tbaa !27
  %procs24 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %47, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs24, i32 0, i32 2
  %48 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !35
  %49 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory25 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %49, i32 0, i32 3
  %50 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory25, align 8, !tbaa !26
  %non_gc_memory26 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %50, i32 0, i32 3
  %51 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory26, align 8, !tbaa !27
  %non_gc_memory27 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %51, i32 0, i32 3
  %52 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory27, align 8, !tbaa !27
  %53 = load %struct.gx_device_lprn_s*, %struct.gx_device_lprn_s** %lprn, align 8, !tbaa !1
  %CompBuf28 = getelementptr inbounds %struct.gx_device_lprn_s, %struct.gx_device_lprn_s* %53, i32 0, i32 79
  %54 = load i8*, i8** %CompBuf28, align 8, !tbaa !31
  call void %48(%struct.gs_memory_s* %52, i8* %54, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.12, i32 0, i32 0)) #3
  %55 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %Duplex = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %55, i32 0, i32 49
  %56 = load i32, i32* %Duplex, align 4, !tbaa !36
  %tobool29 = icmp ne i32 %56, 0
  br i1 %tobool29, label %if.then.30, label %if.else

if.then.30:                                       ; preds = %if.end.20
  %57 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8, !tbaa !1
  %call31 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %57, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0), i32 29) #3
  br label %if.end.33

if.else:                                          ; preds = %if.end.20
  %58 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8, !tbaa !1
  %call32 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %58, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i32 0, i32 0)) #3
  br label %if.end.33

if.end.33:                                        ; preds = %if.else, %if.then.30
  %59 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %59, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.33, %if.then.19, %if.then.9
  %60 = bitcast i32* %maxY to i8*
  call void @llvm.lifetime.end(i64 4, i8* %60) #2
  %61 = bitcast i32* %bpl to i8*
  call void @llvm.lifetime.end(i64 4, i8* %61) #2
  %62 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %62) #2
  %63 = bitcast %struct.gx_device_lprn_s** %lprn to i8*
  call void @llvm.lifetime.end(i64 8, i8* %63) #2
  %64 = load i32, i32* %retval
  ret i32 %64
}

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
define internal void @escpage_image_out(%struct.gx_device_printer_s* %pdev, %struct._IO_FILE* %fp, i32 %x, i32 %y, i32 %width, i32 %height) #1 {
entry:
  %pdev.addr = alloca %struct.gx_device_printer_s*, align 8
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %lprn = alloca %struct.gx_device_lprn_s*, align 8
  %Len = alloca i32, align 4
  store %struct.gx_device_printer_s* %pdev, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8, !tbaa !1
  store i32 %x, i32* %x.addr, align 4, !tbaa !5
  store i32 %y, i32* %y.addr, align 4, !tbaa !5
  store i32 %width, i32* %width.addr, align 4, !tbaa !5
  store i32 %height, i32* %height.addr, align 4, !tbaa !5
  %0 = bitcast %struct.gx_device_lprn_s** %lprn to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_printer_s* %1 to %struct.gx_device_lprn_s*
  store %struct.gx_device_lprn_s* %2, %struct.gx_device_lprn_s** %lprn, align 8, !tbaa !1
  %3 = bitcast i32* %Len to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8, !tbaa !1
  %5 = load i32, i32* %y.addr, align 4, !tbaa !5
  %6 = load i32, i32* %x.addr, align 4, !tbaa !5
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.29, i32 0, i32 0), i32 29, i32 %5, i32 29, i32 %6) #3
  %7 = load %struct.gx_device_lprn_s*, %struct.gx_device_lprn_s** %lprn, align 8, !tbaa !1
  %TmpBuf = getelementptr inbounds %struct.gx_device_lprn_s, %struct.gx_device_lprn_s* %7, i32 0, i32 78
  %8 = load i8*, i8** %TmpBuf, align 8, !tbaa !37
  %9 = load %struct.gx_device_lprn_s*, %struct.gx_device_lprn_s** %lprn, align 8, !tbaa !1
  %CompBuf = getelementptr inbounds %struct.gx_device_lprn_s, %struct.gx_device_lprn_s* %9, i32 0, i32 79
  %10 = load i8*, i8** %CompBuf, align 8, !tbaa !31
  %11 = load i32, i32* %width.addr, align 4, !tbaa !5
  %div = sdiv i32 %11, 8
  %12 = load i32, i32* %height.addr, align 4, !tbaa !5
  %mul = mul nsw i32 %div, %12
  %call1 = call i32 @lips_mode3format_encode(i8* %8, i8* %10, i32 %mul) #3
  store i32 %call1, i32* %Len, align 4, !tbaa !5
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8, !tbaa !1
  %14 = load i32, i32* %Len, align 4, !tbaa !5
  %15 = load i32, i32* %width.addr, align 4, !tbaa !5
  %16 = load i32, i32* %height.addr, align 4, !tbaa !5
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.30, i32 0, i32 0), i32 29, i32 %14, i32 %15, i32 %16) #3
  %17 = load %struct.gx_device_lprn_s*, %struct.gx_device_lprn_s** %lprn, align 8, !tbaa !1
  %CompBuf3 = getelementptr inbounds %struct.gx_device_lprn_s, %struct.gx_device_lprn_s* %17, i32 0, i32 79
  %18 = load i8*, i8** %CompBuf3, align 8, !tbaa !31
  %19 = load i32, i32* %Len, align 4, !tbaa !5
  %conv = sext i32 %19 to i64
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8, !tbaa !1
  %call4 = call i64 @fwrite(i8* %18, i64 1, i64 %conv, %struct._IO_FILE* %20) #3
  %21 = load %struct.gx_device_lprn_s*, %struct.gx_device_lprn_s** %lprn, align 8, !tbaa !1
  %ShowBubble = getelementptr inbounds %struct.gx_device_lprn_s, %struct.gx_device_lprn_s* %21, i32 0, i32 85
  %22 = load i32, i32* %ShowBubble, align 4, !tbaa !38
  %tobool = icmp ne i32 %22, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8, !tbaa !1
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %23, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.31, i32 0, i32 0), i32 29) #3
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8, !tbaa !1
  %25 = load i32, i32* %x.addr, align 4, !tbaa !5
  %26 = load i32, i32* %y.addr, align 4, !tbaa !5
  %27 = load i32, i32* %x.addr, align 4, !tbaa !5
  %28 = load i32, i32* %width.addr, align 4, !tbaa !5
  %add = add nsw i32 %27, %28
  %29 = load i32, i32* %y.addr, align 4, !tbaa !5
  %30 = load i32, i32* %height.addr, align 4, !tbaa !5
  %add6 = add nsw i32 %29, %30
  %call7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %24, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.32, i32 0, i32 0), i32 29, i32 %25, i32 %26, i32 %add, i32 %add6) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %31 = bitcast i32* %Len to i8*
  call void @llvm.lifetime.end(i64 4, i8* %31) #2
  %32 = bitcast %struct.gx_device_lprn_s** %lprn to i8*
  call void @llvm.lifetime.end(i64 8, i8* %32) #2
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @escpage_print_page_copies(%struct.gx_device_printer_s* %pdev, %struct._IO_FILE* %fp, i32 %num_coipes) #1 {
entry:
  %pdev.addr = alloca %struct.gx_device_printer_s*, align 8
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %num_coipes.addr = alloca i32, align 4
  %lprn = alloca %struct.gx_device_lprn_s*, align 8
  %xDpi = alloca double, align 8
  store %struct.gx_device_printer_s* %pdev, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8, !tbaa !1
  store i32 %num_coipes, i32* %num_coipes.addr, align 4, !tbaa !5
  %0 = bitcast %struct.gx_device_lprn_s** %lprn to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_printer_s* %1 to %struct.gx_device_lprn_s*
  store %struct.gx_device_lprn_s* %2, %struct.gx_device_lprn_s** %lprn, align 8, !tbaa !1
  %3 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %PageCount = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %3, i32 0, i32 26
  %4 = load i64, i64* %PageCount, align 8, !tbaa !24
  %cmp = icmp eq i64 %4, 0
  br i1 %cmp, label %if.then, label %if.end.9

if.then:                                          ; preds = %entry
  %5 = bitcast double* %xDpi to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #2
  %6 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %HWResolution = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %6, i32 0, i32 22
  %arrayidx = getelementptr inbounds [2 x float], [2 x float]* %HWResolution, i32 0, i64 0
  %7 = load float, float* %arrayidx, align 4, !tbaa !39
  %conv = fpext float %7 to double
  store double %conv, double* %xDpi, align 8, !tbaa !41
  %8 = load i8*, i8** @epson_remote_start, align 8, !tbaa !1
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8, !tbaa !1
  %call = call i32 @fputs(i8* %8, %struct._IO_FILE* %9) #3
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8, !tbaa !1
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i32 0, i32 0)) #3
  %11 = load %struct.gx_device_lprn_s*, %struct.gx_device_lprn_s** %lprn, align 8, !tbaa !1
  %RITOff = getelementptr inbounds %struct.gx_device_lprn_s, %struct.gx_device_lprn_s* %11, i32 0, i32 73
  %12 = load i32, i32* %RITOff, align 4, !tbaa !43
  %tobool = icmp ne i32 %12, 0
  br i1 %tobool, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.then
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8, !tbaa !1
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i32 0, i32 0)) #3
  br label %if.end

if.else:                                          ; preds = %if.then
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8, !tbaa !1
  %call4 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %14, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i32 0, i32 0)) #3
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.2
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8, !tbaa !1
  %16 = load double, double* %xDpi, align 8, !tbaa !41
  %cmp5 = fcmp ogt double %16, 3.000000e+02
  %cond = select i1 %cmp5, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i32 0, i32 0)
  %call7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i32 0, i32 0), i8* %cond) #3
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8, !tbaa !1
  %call8 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %17, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.11, i32 0, i32 0)) #3
  %18 = bitcast double* %xDpi to i8*
  call void @llvm.lifetime.end(i64 8, i8* %18) #2
  br label %if.end.9

if.end.9:                                         ; preds = %if.end, %entry
  %19 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8, !tbaa !1
  %21 = load i32, i32* %num_coipes.addr, align 4, !tbaa !5
  %call10 = call i32 @lp2000_print_page_copies(%struct.gx_device_printer_s* %19, %struct._IO_FILE* %20, i32 %21) #3
  %22 = bitcast %struct.gx_device_lprn_s** %lprn to i8*
  call void @llvm.lifetime.end(i64 8, i8* %22) #2
  ret i32 %call10
}

; Function Attrs: nounwind uwtable
define internal i32 @lp2000_open(%struct.gx_device_s* %pdev) #1 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_s*, align 8
  %xdpi = alloca i32, align 4
  %ydpi = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %pdev, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %0 = bitcast i32* %xdpi to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %HWResolution = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %1, i32 0, i32 22
  %arrayidx = getelementptr inbounds [2 x float], [2 x float]* %HWResolution, i32 0, i64 0
  %2 = load float, float* %arrayidx, align 4, !tbaa !39
  %conv = fptosi float %2 to i32
  store i32 %conv, i32* %xdpi, align 4, !tbaa !5
  %3 = bitcast i32* %ydpi to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %HWResolution1 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %4, i32 0, i32 22
  %arrayidx2 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution1, i32 0, i64 1
  %5 = load float, float* %arrayidx2, align 4, !tbaa !39
  %conv3 = fptosi float %5 to i32
  store i32 %conv3, i32* %ydpi, align 4, !tbaa !5
  %6 = load i32, i32* %xdpi, align 4, !tbaa !5
  %7 = load i32, i32* %ydpi, align 4, !tbaa !5
  %cmp = icmp ne i32 %6, %7
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = load i32, i32* %xdpi, align 4, !tbaa !5
  %cmp5 = icmp slt i32 %8, 60
  br i1 %cmp5, label %if.then.9, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %9 = load i32, i32* %xdpi, align 4, !tbaa !5
  %cmp7 = icmp sgt i32 %9, 300
  br i1 %cmp7, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %lor.lhs.false, %if.end
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.10:                                        ; preds = %lor.lhs.false
  %10 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %call = call i32 @gdev_prn_open(%struct.gx_device_s* %10) #3
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.10, %if.then.9, %if.then
  %11 = bitcast i32* %ydpi to i8*
  call void @llvm.lifetime.end(i64 4, i8* %11) #2
  %12 = bitcast i32* %xdpi to i8*
  call void @llvm.lifetime.end(i64 4, i8* %12) #2
  %13 = load i32, i32* %retval
  ret i32 %13
}

declare i32 @gdev_prn_output_page(%struct.gx_device_s*, i32, i32) #0

declare i32 @gdev_prn_close(%struct.gx_device_s*) #0

declare i64 @gx_default_b_w_map_rgb_color(%struct.gx_device_s*, i16*) #0

declare i32 @gx_default_b_w_map_color_rgb(%struct.gx_device_s*, i64, i16*) #0

declare i32 @lprn_get_params(%struct.gx_device_s*, %struct.gs_param_list_s*) #0

declare i32 @lprn_put_params(%struct.gx_device_s*, %struct.gs_param_list_s*) #0

declare %struct.gx_device_s* @gx_page_device_get_page_device(%struct.gx_device_s*) #0

declare i32 @gdev_prn_dev_spec_op(%struct.gx_device_s*, i32, i8*, i32) #0

declare i32 @gx_default_get_profile(%struct.gx_device_s*, %struct.cmm_dev_profile_s**) #0

declare void @gx_default_set_graphics_type_tag(%struct.gx_device_s*, i32) #0

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

declare i32 @gdev_prn_open(%struct.gx_device_s*) #0

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define internal i32 @escpage_open(%struct.gx_device_s* %pdev) #1 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_s*, align 8
  %xdpi = alloca i32, align 4
  %ydpi = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %pdev, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %0 = bitcast i32* %xdpi to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %HWResolution = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %1, i32 0, i32 22
  %arrayidx = getelementptr inbounds [2 x float], [2 x float]* %HWResolution, i32 0, i64 0
  %2 = load float, float* %arrayidx, align 4, !tbaa !39
  %conv = fptosi float %2 to i32
  store i32 %conv, i32* %xdpi, align 4, !tbaa !5
  %3 = bitcast i32* %ydpi to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %HWResolution1 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %4, i32 0, i32 22
  %arrayidx2 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution1, i32 0, i64 1
  %5 = load float, float* %arrayidx2, align 4, !tbaa !39
  %conv3 = fptosi float %5 to i32
  store i32 %conv3, i32* %ydpi, align 4, !tbaa !5
  %6 = load i32, i32* %xdpi, align 4, !tbaa !5
  %7 = load i32, i32* %ydpi, align 4, !tbaa !5
  %cmp = icmp ne i32 %6, %7
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = load i32, i32* %xdpi, align 4, !tbaa !5
  %cmp5 = icmp slt i32 %8, 60
  br i1 %cmp5, label %if.then.9, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %9 = load i32, i32* %xdpi, align 4, !tbaa !5
  %cmp7 = icmp sgt i32 %9, 600
  br i1 %cmp7, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %lor.lhs.false, %if.end
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.10:                                        ; preds = %lor.lhs.false
  %10 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %call = call i32 @gdev_prn_open(%struct.gx_device_s* %10) #3
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.10, %if.then.9, %if.then
  %11 = bitcast i32* %ydpi to i8*
  call void @llvm.lifetime.end(i64 4, i8* %11) #2
  %12 = bitcast i32* %xdpi to i8*
  call void @llvm.lifetime.end(i64 4, i8* %12) #2
  %13 = load i32, i32* %retval
  ret i32 %13
}

; Function Attrs: nounwind uwtable
define internal i32 @escpage_close(%struct.gx_device_s* %pdev) #1 {
entry:
  %pdev.addr = alloca %struct.gx_device_s*, align 8
  store %struct.gx_device_s* %pdev, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %0 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %call = call i32 @gdev_prn_open_printer(%struct.gx_device_s* %0, i32 1) #3
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_printer_s*
  %Duplex = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %2, i32 0, i32 49
  %3 = load i32, i32* %Duplex, align 4, !tbaa !36
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %4 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %PageCount = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %4, i32 0, i32 26
  %5 = load i64, i64* %PageCount, align 8, !tbaa !44
  %and = and i64 %5, 1
  %tobool1 = icmp ne i64 %and, 0
  br i1 %tobool1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %6 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %7 = bitcast %struct.gx_device_s* %6 to %struct.gx_device_printer_s*
  %file = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %7, i32 0, i32 52
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8, !tbaa !46
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0), i32 29) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %9 = load i8*, i8** @epson_remote_start, align 8, !tbaa !1
  %10 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %11 = bitcast %struct.gx_device_s* %10 to %struct.gx_device_printer_s*
  %file3 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %11, i32 0, i32 52
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %file3, align 8, !tbaa !46
  %call4 = call i32 @fputs(i8* %9, %struct._IO_FILE* %12) #3
  %13 = load i8*, i8** @epson_remote_start, align 8, !tbaa !1
  %14 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %15 = bitcast %struct.gx_device_s* %14 to %struct.gx_device_printer_s*
  %file5 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %15, i32 0, i32 52
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %file5, align 8, !tbaa !46
  %call6 = call i32 @fputs(i8* %13, %struct._IO_FILE* %16) #3
  %17 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %call7 = call i32 @gdev_prn_close(%struct.gx_device_s* %17) #3
  ret i32 %call7
}

declare i32 @gdev_prn_open_printer(%struct.gx_device_s*, i32) #0

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #0

declare i32 @fputs(i8*, %struct._IO_FILE*) #0

declare i32 @gx_device_raster(%struct.gx_device_s*, i32) #0

; Function Attrs: nounwind uwtable
define internal void @escpage_printer_initialize(%struct.gx_device_printer_s* %pdev, %struct._IO_FILE* %fp, i32 %copies) #1 {
entry:
  %pdev.addr = alloca %struct.gx_device_printer_s*, align 8
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %copies.addr = alloca i32, align 4
  %lprn = alloca %struct.gx_device_lprn_s*, align 8
  %xDpi = alloca double, align 8
  %yDpi = alloca double, align 8
  store %struct.gx_device_printer_s* %pdev, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8, !tbaa !1
  store i32 %copies, i32* %copies.addr, align 4, !tbaa !5
  %0 = bitcast %struct.gx_device_lprn_s** %lprn to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_printer_s* %1 to %struct.gx_device_lprn_s*
  store %struct.gx_device_lprn_s* %2, %struct.gx_device_lprn_s** %lprn, align 8, !tbaa !1
  %3 = bitcast double* %xDpi to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = bitcast double* %yDpi to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #2
  %5 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %HWResolution = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %5, i32 0, i32 22
  %arrayidx = getelementptr inbounds [2 x float], [2 x float]* %HWResolution, i32 0, i64 0
  %6 = load float, float* %arrayidx, align 4, !tbaa !39
  %conv = fpext float %6 to double
  store double %conv, double* %xDpi, align 8, !tbaa !41
  %7 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %HWResolution1 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %7, i32 0, i32 22
  %arrayidx2 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution1, i32 0, i64 1
  %8 = load float, float* %arrayidx2, align 4, !tbaa !39
  %conv3 = fpext float %8 to double
  store double %conv3, double* %yDpi, align 8, !tbaa !41
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8, !tbaa !1
  %call = call i64 @fwrite(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @can_inits, i32 0, i32 0), i64 31, i64 1, %struct._IO_FILE* %9) #3
  %10 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %Duplex_set = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %10, i32 0, i32 50
  %11 = load i32, i32* %Duplex_set, align 4, !tbaa !47
  %cmp = icmp sgt i32 %11, 0
  br i1 %cmp, label %if.then, label %if.end.15

if.then:                                          ; preds = %entry
  %12 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %Duplex = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %12, i32 0, i32 49
  %13 = load i32, i32* %Duplex, align 4, !tbaa !36
  %tobool = icmp ne i32 %13, 0
  br i1 %tobool, label %if.then.5, label %if.else.12

if.then.5:                                        ; preds = %if.then
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8, !tbaa !1
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %14, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i32 0, i32 0), i32 29) #3
  %15 = load %struct.gx_device_lprn_s*, %struct.gx_device_lprn_s** %lprn, align 8, !tbaa !1
  %Tumble = getelementptr inbounds %struct.gx_device_lprn_s, %struct.gx_device_lprn_s* %15, i32 0, i32 72
  %16 = load i32, i32* %Tumble, align 4, !tbaa !48
  %cmp7 = icmp eq i32 %16, 0
  br i1 %cmp7, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %if.then.5
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8, !tbaa !1
  %call10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %17, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i32 0, i32 0), i32 29) #3
  br label %if.end

if.else:                                          ; preds = %if.then.5
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8, !tbaa !1
  %call11 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i32 0, i32 0), i32 29) #3
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.9
  br label %if.end.14

if.else.12:                                       ; preds = %if.then
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8, !tbaa !1
  %call13 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %19, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i32 0, i32 0), i32 29) #3
  br label %if.end.14

if.end.14:                                        ; preds = %if.else.12, %if.end
  br label %if.end.15

if.end.15:                                        ; preds = %if.end.14, %entry
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8, !tbaa !1
  %21 = load double, double* %xDpi, align 8, !tbaa !41
  %div = fdiv double 7.200000e+01, %21
  %call16 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %20, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.21, i32 0, i32 0), i32 29, double %div) #3
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8, !tbaa !1
  %23 = load double, double* %xDpi, align 8, !tbaa !41
  %add = fadd double %23, 5.000000e-01
  %conv17 = fptosi double %add to i32
  %24 = load double, double* %yDpi, align 8, !tbaa !41
  %add18 = fadd double %24, 5.000000e-01
  %conv19 = fptosi double %add18 to i32
  %call20 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %22, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.22, i32 0, i32 0), i32 29, i32 %conv17, i32 %conv19) #3
  %25 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8, !tbaa !1
  call void @escpage_paper_set(%struct.gx_device_printer_s* %25, %struct._IO_FILE* %26) #3
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8, !tbaa !1
  %28 = load i32, i32* %copies.addr, align 4, !tbaa !5
  %cmp21 = icmp slt i32 %28, 256
  br i1 %cmp21, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.15
  %29 = load i32, i32* %copies.addr, align 4, !tbaa !5
  br label %cond.end

cond.false:                                       ; preds = %if.end.15
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %29, %cond.true ], [ 255, %cond.false ]
  %call23 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %27, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.23, i32 0, i32 0), i32 29, i32 %cond) #3
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8, !tbaa !1
  %call24 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %30, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.24, i32 0, i32 0), i32 29) #3
  %31 = bitcast double* %yDpi to i8*
  call void @llvm.lifetime.end(i64 8, i8* %31) #2
  %32 = bitcast double* %xDpi to i8*
  call void @llvm.lifetime.end(i64 8, i8* %32) #2
  %33 = bitcast %struct.gx_device_lprn_s** %lprn to i8*
  call void @llvm.lifetime.end(i64 8, i8* %33) #2
  ret void
}

declare i32 @lprn_print_image(%struct.gx_device_printer_s*, %struct._IO_FILE*) #0

declare i64 @fwrite(i8*, i64, i64, %struct._IO_FILE*) #0

; Function Attrs: nounwind uwtable
define internal void @escpage_paper_set(%struct.gx_device_printer_s* %pdev, %struct._IO_FILE* %fp) #1 {
entry:
  %pdev.addr = alloca %struct.gx_device_printer_s*, align 8
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %w = alloca i32, align 4
  %h = alloca i32, align 4
  %wp = alloca i32, align 4
  %hp = alloca i32, align 4
  %bLandscape = alloca i32, align 4
  %pt = alloca %struct.EpagPaperTable*, align 8
  store %struct.gx_device_printer_s* %pdev, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8, !tbaa !1
  %0 = bitcast i32* %width to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast i32* %height to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = bitcast i32* %w to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  %3 = bitcast i32* %h to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = bitcast i32* %wp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = bitcast i32* %hp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  %6 = bitcast i32* %bLandscape to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = bitcast %struct.EpagPaperTable** %pt to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #2
  %8 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %MediaSize = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %8, i32 0, i32 19
  %arrayidx = getelementptr inbounds [2 x float], [2 x float]* %MediaSize, i32 0, i64 0
  %9 = load float, float* %arrayidx, align 4, !tbaa !39
  %conv = fptosi float %9 to i32
  store i32 %conv, i32* %width, align 4, !tbaa !5
  %10 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %MediaSize1 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %10, i32 0, i32 19
  %arrayidx2 = getelementptr inbounds [2 x float], [2 x float]* %MediaSize1, i32 0, i64 1
  %11 = load float, float* %arrayidx2, align 4, !tbaa !39
  %conv3 = fptosi float %11 to i32
  store i32 %conv3, i32* %height, align 4, !tbaa !5
  %12 = load i32, i32* %width, align 4, !tbaa !5
  %13 = load i32, i32* %height, align 4, !tbaa !5
  %cmp = icmp slt i32 %12, %13
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, i32* %bLandscape, align 4, !tbaa !5
  %14 = load i32, i32* %width, align 4, !tbaa !5
  store i32 %14, i32* %w, align 4, !tbaa !5
  %15 = load i32, i32* %height, align 4, !tbaa !5
  store i32 %15, i32* %h, align 4, !tbaa !5
  %16 = load i32, i32* %width, align 4, !tbaa !5
  %conv5 = sitofp i32 %16 to double
  %div = fdiv double %conv5, 7.200000e+01
  %17 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %HWResolution = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %17, i32 0, i32 22
  %arrayidx6 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution, i32 0, i64 0
  %18 = load float, float* %arrayidx6, align 4, !tbaa !39
  %conv7 = fpext float %18 to double
  %mul = fmul double %div, %conv7
  %conv8 = fptosi double %mul to i32
  store i32 %conv8, i32* %wp, align 4, !tbaa !5
  %19 = load i32, i32* %height, align 4, !tbaa !5
  %conv9 = sitofp i32 %19 to double
  %div10 = fdiv double %conv9, 7.200000e+01
  %20 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %HWResolution11 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %20, i32 0, i32 22
  %arrayidx12 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution11, i32 0, i64 1
  %21 = load float, float* %arrayidx12, align 4, !tbaa !39
  %conv13 = fpext float %21 to double
  %mul14 = fmul double %div10, %conv13
  %conv15 = fptosi double %mul14 to i32
  store i32 %conv15, i32* %hp, align 4, !tbaa !5
  br label %if.end

if.else:                                          ; preds = %entry
  store i32 1, i32* %bLandscape, align 4, !tbaa !5
  %22 = load i32, i32* %height, align 4, !tbaa !5
  store i32 %22, i32* %w, align 4, !tbaa !5
  %23 = load i32, i32* %width, align 4, !tbaa !5
  store i32 %23, i32* %h, align 4, !tbaa !5
  %24 = load i32, i32* %height, align 4, !tbaa !5
  %conv16 = sitofp i32 %24 to double
  %div17 = fdiv double %conv16, 7.200000e+01
  %25 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %HWResolution18 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %25, i32 0, i32 22
  %arrayidx19 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution18, i32 0, i64 1
  %26 = load float, float* %arrayidx19, align 4, !tbaa !39
  %conv20 = fpext float %26 to double
  %mul21 = fmul double %div17, %conv20
  %conv22 = fptosi double %mul21 to i32
  store i32 %conv22, i32* %wp, align 4, !tbaa !5
  %27 = load i32, i32* %width, align 4, !tbaa !5
  %conv23 = sitofp i32 %27 to double
  %div24 = fdiv double %conv23, 7.200000e+01
  %28 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %HWResolution25 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %28, i32 0, i32 22
  %arrayidx26 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution25, i32 0, i64 0
  %29 = load float, float* %arrayidx26, align 4, !tbaa !39
  %conv27 = fpext float %29 to double
  %mul28 = fmul double %div24, %conv27
  %conv29 = fptosi double %mul28 to i32
  store i32 %conv29, i32* %hp, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  store %struct.EpagPaperTable* getelementptr inbounds ([22 x %struct.EpagPaperTable], [22 x %struct.EpagPaperTable]* @epagPaperTable, i32 0, i32 0), %struct.EpagPaperTable** %pt, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %30 = load %struct.EpagPaperTable*, %struct.EpagPaperTable** %pt, align 8, !tbaa !1
  %escpage = getelementptr inbounds %struct.EpagPaperTable, %struct.EpagPaperTable* %30, i32 0, i32 2
  %31 = load i32, i32* %escpage, align 4, !tbaa !49
  %cmp30 = icmp sgt i32 %31, 0
  br i1 %cmp30, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %32 = load %struct.EpagPaperTable*, %struct.EpagPaperTable** %pt, align 8, !tbaa !1
  %width32 = getelementptr inbounds %struct.EpagPaperTable, %struct.EpagPaperTable* %32, i32 0, i32 0
  %33 = load i32, i32* %width32, align 4, !tbaa !51
  %34 = load i32, i32* %w, align 4, !tbaa !5
  %cmp33 = icmp eq i32 %33, %34
  br i1 %cmp33, label %land.lhs.true, label %if.end.39

land.lhs.true:                                    ; preds = %for.body
  %35 = load %struct.EpagPaperTable*, %struct.EpagPaperTable** %pt, align 8, !tbaa !1
  %height35 = getelementptr inbounds %struct.EpagPaperTable, %struct.EpagPaperTable* %35, i32 0, i32 1
  %36 = load i32, i32* %height35, align 4, !tbaa !52
  %37 = load i32, i32* %h, align 4, !tbaa !5
  %cmp36 = icmp eq i32 %36, %37
  br i1 %cmp36, label %if.then.38, label %if.end.39

if.then.38:                                       ; preds = %land.lhs.true
  br label %for.end

if.end.39:                                        ; preds = %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.39
  %38 = load %struct.EpagPaperTable*, %struct.EpagPaperTable** %pt, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds %struct.EpagPaperTable, %struct.EpagPaperTable* %38, i32 1
  store %struct.EpagPaperTable* %incdec.ptr, %struct.EpagPaperTable** %pt, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %if.then.38, %for.cond
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8, !tbaa !1
  %40 = load %struct.EpagPaperTable*, %struct.EpagPaperTable** %pt, align 8, !tbaa !1
  %escpage40 = getelementptr inbounds %struct.EpagPaperTable, %struct.EpagPaperTable* %40, i32 0, i32 2
  %41 = load i32, i32* %escpage40, align 4, !tbaa !49
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %39, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i32 0, i32 0), i32 29, i32 %41) #3
  %42 = load %struct.EpagPaperTable*, %struct.EpagPaperTable** %pt, align 8, !tbaa !1
  %escpage41 = getelementptr inbounds %struct.EpagPaperTable, %struct.EpagPaperTable* %42, i32 0, i32 2
  %43 = load i32, i32* %escpage41, align 4, !tbaa !49
  %cmp42 = icmp slt i32 %43, 0
  br i1 %cmp42, label %if.then.44, label %if.end.46

if.then.44:                                       ; preds = %for.end
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8, !tbaa !1
  %45 = load i32, i32* %wp, align 4, !tbaa !5
  %46 = load i32, i32* %hp, align 4, !tbaa !5
  %call45 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %44, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i32 0, i32 0), i32 %45, i32 %46) #3
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.44, %for.end
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8, !tbaa !1
  %call47 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %47, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.27, i32 0, i32 0)) #3
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8, !tbaa !1
  %49 = load i32, i32* %bLandscape, align 4, !tbaa !5
  %call48 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %48, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.28, i32 0, i32 0), i32 29, i32 %49) #3
  %50 = bitcast %struct.EpagPaperTable** %pt to i8*
  call void @llvm.lifetime.end(i64 8, i8* %50) #2
  %51 = bitcast i32* %bLandscape to i8*
  call void @llvm.lifetime.end(i64 4, i8* %51) #2
  %52 = bitcast i32* %hp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %52) #2
  %53 = bitcast i32* %wp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %53) #2
  %54 = bitcast i32* %h to i8*
  call void @llvm.lifetime.end(i64 4, i8* %54) #2
  %55 = bitcast i32* %w to i8*
  call void @llvm.lifetime.end(i64 4, i8* %55) #2
  %56 = bitcast i32* %height to i8*
  call void @llvm.lifetime.end(i64 4, i8* %56) #2
  %57 = bitcast i32* %width to i8*
  call void @llvm.lifetime.end(i64 4, i8* %57) #2
  ret void
}

declare i32 @lips_mode3format_encode(i8*, i8*, i32) #0

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
!7 = !{!8, !6, i64 18508}
!8 = !{!"gx_device_lprn_s", !6, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !6, i64 40, !2, i64 48, !9, i64 56, !6, i64 80, !6, i64 84, !6, i64 88, !11, i64 96, !14, i64 816, !6, i64 832, !6, i64 836, !6, i64 840, !6, i64 844, !6, i64 848, !6, i64 852, !3, i64 856, !3, i64 864, !6, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !10, i64 928, !10, i64 936, !6, i64 944, !6, i64 948, !6, i64 952, !6, i64 956, !6, i64 960, !10, i64 968, !10, i64 976, !15, i64 984, !6, i64 1052, !6, i64 1056, !16, i64 1064, !2, i64 1104, !3, i64 1112, !18, i64 1120, !19, i64 1144, !3, i64 1728, !20, i64 12968, !3, i64 13056, !6, i64 17152, !6, i64 17156, !6, i64 17160, !6, i64 17164, !6, i64 17168, !6, i64 17172, !2, i64 17176, !10, i64 17184, !2, i64 17192, !2, i64 17200, !2, i64 17208, !2, i64 17216, !2, i64 17224, !6, i64 17232, !2, i64 17240, !6, i64 17248, !6, i64 17252, !22, i64 17256, !6, i64 17288, !2, i64 17296, !19, i64 17304, !19, i64 17888, !2, i64 18472, !6, i64 18480, !6, i64 18484, !6, i64 18488, !6, i64 18492, !6, i64 18496, !6, i64 18500, !6, i64 18504, !6, i64 18508, !2, i64 18512, !2, i64 18520, !2, i64 18528, !2, i64 18536, !6, i64 18544, !6, i64 18548, !2, i64 18552, !2, i64 18560, !6, i64 18568}
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
!23 = !{!8, !6, i64 18548}
!24 = !{!25, !10, i64 928}
!25 = !{!"gx_device_printer_s", !6, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !6, i64 40, !2, i64 48, !9, i64 56, !6, i64 80, !6, i64 84, !6, i64 88, !11, i64 96, !14, i64 816, !6, i64 832, !6, i64 836, !6, i64 840, !6, i64 844, !6, i64 848, !6, i64 852, !3, i64 856, !3, i64 864, !6, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !10, i64 928, !10, i64 936, !6, i64 944, !6, i64 948, !6, i64 952, !6, i64 956, !6, i64 960, !10, i64 968, !10, i64 976, !15, i64 984, !6, i64 1052, !6, i64 1056, !16, i64 1064, !2, i64 1104, !3, i64 1112, !18, i64 1120, !19, i64 1144, !3, i64 1728, !20, i64 12968, !3, i64 13056, !6, i64 17152, !6, i64 17156, !6, i64 17160, !6, i64 17164, !6, i64 17168, !6, i64 17172, !2, i64 17176, !10, i64 17184, !2, i64 17192, !2, i64 17200, !2, i64 17208, !2, i64 17216, !2, i64 17224, !6, i64 17232, !2, i64 17240, !6, i64 17248, !6, i64 17252, !22, i64 17256, !6, i64 17288, !2, i64 17296, !19, i64 17304, !19, i64 17888}
!26 = !{!25, !2, i64 24}
!27 = !{!28, !2, i64 200}
!28 = !{!"gs_memory_s", !2, i64 0, !29, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!29 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!30 = !{!28, !2, i64 88}
!31 = !{!8, !2, i64 18528}
!32 = !{!8, !6, i64 18488}
!33 = !{!25, !6, i64 832}
!34 = !{!25, !6, i64 836}
!35 = !{!28, !2, i64 24}
!36 = !{!25, !6, i64 17164}
!37 = !{!8, !2, i64 18520}
!38 = !{!8, !6, i64 18568}
!39 = !{!40, !40, i64 0}
!40 = !{!"float", !3, i64 0}
!41 = !{!42, !42, i64 0}
!42 = !{!"double", !3, i64 0}
!43 = !{!8, !6, i64 18496}
!44 = !{!45, !10, i64 928}
!45 = !{!"gx_device_s", !6, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !6, i64 40, !2, i64 48, !9, i64 56, !6, i64 80, !6, i64 84, !6, i64 88, !11, i64 96, !14, i64 816, !6, i64 832, !6, i64 836, !6, i64 840, !6, i64 844, !6, i64 848, !6, i64 852, !3, i64 856, !3, i64 864, !6, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !10, i64 928, !10, i64 936, !6, i64 944, !6, i64 948, !6, i64 952, !6, i64 956, !6, i64 960, !10, i64 968, !10, i64 976, !15, i64 984, !6, i64 1052, !6, i64 1056, !16, i64 1064, !2, i64 1104, !3, i64 1112, !18, i64 1120, !19, i64 1144}
!46 = !{!25, !2, i64 17176}
!47 = !{!25, !6, i64 17168}
!48 = !{!8, !6, i64 18492}
!49 = !{!50, !6, i64 8}
!50 = !{!"", !6, i64 0, !6, i64 4, !6, i64 8}
!51 = !{!50, !6, i64 0}
!52 = !{!50, !6, i64 4}
